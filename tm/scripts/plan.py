#!/usr/bin/env python3
"""Incremental builds: decide what to rebuild, and record what was built.

    plan.py plan   STATE TMDIR MDDIR MODE FULL TOOLS... -> OUTDIR
    plan.py record STATE TMDIR MDDIR MODE CONVERTED EXPORTED BROKEN TOOLS...

The record (tm/.build-state.json, written only after a successful build)
holds, for every page:
  in        fingerprint of everything the .tm is made from: the page as
            patched by prep.py (so link targets resolved against the other
            pages are included) and the navigation data the page uses; for
            a LaTeX document (e.g. manuscript/existence.tm), the output of
            tex_prep.py (the flattened source, i.e. the document with every
            \\input file, its metadata, its bibliography database), so that
            editing a chapter rebuilds only the documents that input it;
  tm        hash of the installed .tm;
  html      hash of the installed .html, and html_from the hash of the .tm
            it was exported from;
  conv_tools, html_tools  the hashes of the tools of the stages that made
            the .tm (STAGES: "md" or "latex") and the .html ("html");
plus the hashes of the tools by stage (tools_hash; TeXmacs identified by
its version, in every stage but "build"), the page list, the git HEAD (for
information) and the links found broken in the site.

A page is converted again when its fingerprint changed, its .tm is missing
or was edited, or the tools of its conversion stage changed; it is exported
again when it was converted, its .html is missing, edited, or older than
its .tm, or the tools of the html stage changed. Everything is rebuilt when
there is no record, the "build" tools changed (build.sh, plan.py), the set of
pages changed, or --full is given.
Content hashes are used rather than `git diff`: they see uncommitted and
untracked edits, renames and hand edits of the outputs alike.
"""
import hashlib, json, os, subprocess, sys

VERSION = 3


def sha(data):
    return hashlib.sha256(data).hexdigest()


def file_sha(path):
    try:
        return sha(open(path, 'rb').read())
    except OSError:
        return None


# The tools, by the stage of the build they take part in. Each page records
# the hash of the stages that made it (conv: "md" for a Markdown page, "latex"
# for a LaTeX document; "html" for its export), so that a change of a tool
# rebuilds only what it can change. "build" (the driver and this file, and
# any file of scripts/ or resources/ not listed here) rebuilds everything.
# tmio.scm is used by every stage. When unsure, a file goes into more stages.
STAGES = {
    'md': ['scripts/prep.py', 'scripts/post.py', 'scripts/stree.py', 'scripts/tmio.scm',
           'ym-outline.ts'],
    'latex': ['scripts/prep.py', 'scripts/tex_prep.py', 'scripts/tex_post.py', 'scripts/post.py',
              'scripts/stree.py', 'scripts/figures.py', 'scripts/tmio.scm', 'ym-outline.ts',
              'ym-manuscript.ts'],
    'html': ['scripts/tmio.scm', 'scripts/corkfix.py', 'scripts/stamp.py', 'scripts/linkcheck.py',
             'scripts/labelcheck.py', 'scripts/normalize_ids.py', 'resources/', '<max-html>'],
    'build': ['build.sh', 'scripts/plan.py'],
}


def texmacs_id(tm_bin):
    """TeXmacs by its version, not by its path: on macOS CFBundleShortVersionString
    and CFBundleVersion of the application's Info.plist; otherwise the output of
    `TEXMACS_BIN --version`; else the name, size and date of the file"""
    m = tm_bin.find('.app/Contents/MacOS/')
    if m >= 0:
        import plistlib
        try:
            info = plistlib.load(open(tm_bin[:m + 4] + '/Contents/Info.plist', 'rb'))
            return 'macos %s %s' % (info.get('CFBundleShortVersionString'), info.get('CFBundleVersion'))
        except (OSError, ValueError):
            pass
    try:
        out = subprocess.run([tm_bin, '--version'], capture_output=True, text=True, timeout=120,
                             env=dict(os.environ, QT_QPA_PLATFORM='offscreen'))
        v = ' '.join(out.stdout.split())
        if out.returncode == 0 and 'version' in v.lower():
            return 'version ' + v
    except (OSError, subprocess.SubprocessError):
        pass
    st = os.stat(tm_bin)
    return f'file {os.path.basename(tm_bin)} {st.st_size} {int(st.st_mtime)}'


def tools_hash(here, tm_bin, max_html):
    """{stage: hash} (JSON) of the tools of each stage, TeXmacs included in
    every stage but "build" """
    files = [os.path.join(here, f) for f in ('build.sh', 'ym-outline.ts', 'ym-manuscript.ts')]
    for d in ('resources', 'scripts'):
        for root, ds, fs in os.walk(os.path.join(here, d)):
            ds[:] = sorted(x for x in ds if x != '__pycache__')
            files += [os.path.join(root, f) for f in sorted(fs) if not f.endswith('.pyc')]
    mh = []
    for root, ds, fs in os.walk(max_html, followlinks=True):
        ds.sort()
        mh += [os.path.join(root, f) for f in sorted(fs)]
    hashes = {s: hashlib.sha256() for s in STAGES}
    tm = texmacs_id(tm_bin)
    for s in ('md', 'latex', 'html'):
        hashes[s].update(tm.encode() + b'\0')
    for f in files:
        rel = os.path.relpath(f, here)
        entry = rel.encode() + b'\0' + (file_sha(f) or '-').encode()
        stages = [s for s, fs in STAGES.items()
                  if any(rel == x or (x.endswith('/') and rel.startswith(x)) for x in fs)]
        for s in stages or ['build']:
            hashes[s].update(entry)
    for f in mh:
        hashes['html'].update(os.path.relpath(f, max_html).encode() + b'\0' + (file_sha(f) or '-').encode())
    hashes['build'].update(str(VERSION).encode())
    return json.dumps({s: h.hexdigest() for s, h in hashes.items()}, sort_keys=True)


def fingerprints(mddir):
    """per page: patched Markdown + the parts of pages.json post.py uses"""
    data = json.load(open(os.path.join(mddir, 'pages.json'), encoding='utf-8'))
    pages = data['pages']
    latex = data.get('latex', {})
    page_set = sorted(list(pages) + list(latex))
    units_ctx = json.dumps(data['units'], sort_keys=True)
    latex_ctx = json.dumps(latex, sort_keys=True)
    out = {}
    for p, meta in pages.items():
        md = open(os.path.join(mddir, p[:-3] + '.md'), 'rb').read()
        ctx = {'page': p, 'pages': page_set, 'meta': meta}
        if p.startswith('blueprint/units/'):
            ctx['units'] = units_ctx
        if os.path.basename(p) == 'index.tm':
            ctx['latex'] = latex_ctx       # the links to the LaTeX documents
        out[p] = sha(md + b'\0' + json.dumps(ctx, sort_keys=True).encode())
    # the LaTeX documents (tex_prep.py output in tex/<page without .tm>/:
    # the flattened source, its metadata and the bibliography database)
    for p, info in latex.items():
        tex = os.path.join(mddir, 'tex', p[:-3])
        if not os.path.exists(os.path.join(tex, 'doc.tex')):
            raise SystemExit(f'plan: no output of tex_prep.py for {p}')
        h = hashlib.sha256()
        for f in ('doc.tex', 'meta.json', 'references.bib'):
            h.update(f.encode() + b'\0' + (file_sha(os.path.join(tex, f)) or '-').encode())
        ctx = {'page': p, 'pages': page_set, 'info': info}
        if p.startswith('blueprint/units/'):
            ctx['units'] = units_ctx
        out[p] = sha(h.hexdigest().encode() + json.dumps(ctx, sort_keys=True).encode())
    return out


def load_state(path):
    try:
        st = json.load(open(path, encoding='utf-8'))
        return st if st.get('version') == VERSION else None
    except (OSError, ValueError):
        return None


def existing_pages(tmdir):
    out = []
    for root, ds, fs in os.walk(tmdir):
        rel = os.path.relpath(root, tmdir)
        if rel.split(os.sep)[0] in ('html', 'scripts', 'resources'):
            continue
        out += [os.path.normpath(os.path.join(rel, f)) for f in fs if f.endswith('.tm')]
    return sorted(out)


def html_of(p):
    return 'html/' + p[:-3] + '.html'


def conv_stage(mddir):
    """page -> the stage that converts it ("md" or "latex")"""
    latex = json.load(open(os.path.join(mddir, 'pages.json'), encoding='utf-8')).get('latex', {})
    return lambda p: 'latex' if p in latex else 'md'


def plan(state_path, tmdir, mddir, mode, full, tools, outdir):
    tools = json.loads(tools)
    stage = conv_stage(mddir)
    st = load_state(state_path)
    if mode == 'html':
        pages = sorted(st['pages']) if st else existing_pages(tmdir)
        fps = None
    else:
        fps = fingerprints(mddir)
        pages = sorted(fps)
    reason = None
    if full:
        reason = '--full given'
    elif st is None:
        reason = ('no record of a previous build (tm/.build-state.json)' if not os.path.exists(state_path)
                  else 'the record (tm/.build-state.json) is of an older format')
    elif st['tools'].get('build') != tools['build']:
        reason = 'the driver changed (tm/build.sh, tm/scripts/plan.py, or a file of tm/scripts or tm/resources of no stage)'
    elif sorted(st['pages']) != pages:
        old, new = set(st['pages']), set(pages)
        reason = 'the set of pages changed (added: %s; removed: %s)' % (
            ', '.join(sorted(new - old)) or '-', ', '.join(sorted(old - new)) or '-')
    conv, exp, why = [], [], {}
    if reason:
        conv = [] if mode == 'html' else list(pages)
        exp = [] if mode == 'tm' else list(pages)
    else:
        for p in pages:
            old = st['pages'][p]
            tm_now = file_sha(os.path.join(tmdir, p))
            if mode != 'html':
                if fps[p] != old.get('in'):
                    conv.append(p); why[p] = 'source changed'
                elif tm_now is None or tm_now != old.get('tm'):
                    conv.append(p); why[p] = '.tm missing or edited'
                elif old.get('conv_tools') != tools[stage(p)]:
                    conv.append(p); why[p] = f'tools of the {stage(p)} stage changed (or TeXmacs)'
            if mode != 'tm':
                html_now = file_sha(os.path.join(tmdir, html_of(p)))
                if p in conv:
                    exp.append(p)
                elif html_now is None or html_now != old.get('html'):
                    exp.append(p); why.setdefault(p, '.html missing or edited')
                elif old.get('html_from') != tm_now:
                    exp.append(p); why.setdefault(p, '.html older than its .tm')
                elif old.get('html_tools') != tools['html']:
                    exp.append(p); why.setdefault(p, 'tools of the html stage changed (or TeXmacs)')
    kind = 'full' if reason else ('incremental' if conv or exp else 'none')
    os.makedirs(outdir, exist_ok=True)
    open(os.path.join(outdir, 'kind'), 'w').write(kind + '\n')
    open(os.path.join(outdir, 'convert.lst'), 'w').write(''.join(p + '\n' for p in conv))
    open(os.path.join(outdir, 'export.lst'), 'w').write(''.join(p + '\n' for p in exp))
    open(os.path.join(outdir, 'pages.lst'), 'w').write(''.join(p + '\n' for p in pages))
    if kind == 'full':
        print(f'build: full rebuild: {reason}')
    elif kind == 'none':
        print('build: up to date, nothing to rebuild')
    else:
        print(f'build: incremental: {len(conv)} page(s) to convert, {len(exp)} to export')
        for p in sorted(set(conv) | set(exp)):
            print(f'build:   {p}: {why.get(p, "")}')


def record(state_path, tmdir, mddir, mode, converted, exported, broken, tools, repo):
    tools = json.loads(tools)
    stage = conv_stage(mddir)
    st = load_state(state_path) or {}
    old_pages = st.get('pages', {})
    fps = fingerprints(mddir) if mode != 'html' else None
    pages = sorted(fps) if fps is not None else sorted(old_pages)
    conv = set(open(converted).read().split())
    exp = set(open(exported).read().split())
    new = {}
    for p in pages:
        o = dict(old_pages.get(p, {}))
        if fps is not None:
            o['in'] = fps[p]
        o['tm'] = file_sha(os.path.join(tmdir, p))
        if p in conv:
            o['conv_tools'] = tools[stage(p)]
        if p in exp:
            o['html'] = file_sha(os.path.join(tmdir, html_of(p)))
            o['html_from'] = o['tm']
            o['html_tools'] = tools['html']
        elif p in conv and mode != 'tm':
            raise SystemExit(f'record: {p} converted but not exported')
        new[p] = o
    try:
        head = subprocess.check_output(['git', '-C', repo, 'rev-parse', 'HEAD'], text=True).strip()
    except Exception:
        head = None
    out = {'version': VERSION, 'head': head, 'tools': tools, 'pages': new,
           'broken_links': json.load(open(broken)) if broken != '-' else st.get('broken_links', [])}
    tmp = state_path + '.tmp'
    json.dump(out, open(tmp, 'w', encoding='utf-8'), indent=1, sort_keys=True)
    os.replace(tmp, state_path)


if __name__ == '__main__':
    cmd = sys.argv[1]
    if cmd == 'tools':
        print(tools_hash(*sys.argv[2:5]))
    elif cmd == 'plan':
        plan(*sys.argv[2:6], sys.argv[6] == '1', sys.argv[7], sys.argv[8])
    elif cmd == 'record':
        record(*sys.argv[2:11])
    else:
        raise SystemExit('usage: plan.py tools|plan|record ...')
