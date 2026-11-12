#!/usr/bin/env python3
"""Prepare the Markdown sources for the TeXmacs import (step 1 of build.sh).

    prep.py REPO OUTDIR

Reads the Markdown collection of REPO (every *.md that git tracks or would
track, i.e. untracked but not ignored, except under tm/) (never modifies it) and writes a
patched copy of every page to OUTDIR, at the path of its TeXmacs document
(README.md -> index.md, so that the HTML export gives index.html), together
with OUTDIR/manifest.tsv (source, target) and OUTDIR/pages.json (titles and
navigation data for post.py).

Patches (all uniform, all on a temporary copy):
  * links to other pages of the collection: `x.md#frag` -> `x.tm#frag`
    (README.md -> index.tm), relative paths unchanged since the tree is
    mirrored;
  * links to folders with a converted README (blueprint/, docs/, ...)
    -> its index.tm;
  * links to other files of the repository (Lean/, unit.json, LICENSE,
    manuscript/*.tex, scripts/): absolute links to the repository on GitHub;
  * placeholders such as `<issue URL>` (in templates/), which are not HTML
    tags but would be read as such and dropped: written <issue URL> with
    angle brackets U+27E8/U+27E9;
  * every ATX heading gets the anchor GitHub gives it (its slug), as an
    `<a id="..."></a>` that the importer turns into a TeXmacs label, so that
    links such as `summary.md#the-strategy` resolve.
"""
import json, os, re, subprocess, sys

REPO = os.path.abspath(sys.argv[1])
OUT = os.path.abspath(sys.argv[2])

# Markdown files that are not pages: this folder, GitHub's own files
# (issue and pull-request templates, task drafts) and the documentation of
# the imported Lean source. The LaTeX manuscript itself is converted by
# tex_prep.py / tex_post.py into manuscript/main.tm
EXCLUDE = ('tm/', '.github/', 'Lean/')
MANUSCRIPT = 'manuscript/main.tex'


def collection():
    """every Markdown file tracked in git (or untracked and not ignored),
    except under EXCLUDE; the main
    pages first, then in path order"""
    try:
        # tracked files, and untracked ones that are not ignored
        files = subprocess.check_output(['git', '-C', REPO, 'ls-files', '--cached', '--others',
                                         '--exclude-standard', '*.md'], text=True).split()
    except Exception:   # not a git checkout: walk the tree
        files = []
        for d, ds, fs in os.walk(REPO):
            ds[:] = [x for x in ds if not x.startswith('.')]
            files += [os.path.relpath(os.path.join(d, f), REPO) for f in fs if f.endswith('.md')]
    files = [f for f in files if not f.startswith(EXCLUDE) and
             os.path.exists(os.path.join(REPO, f))]
    return sorted(set(files), key=lambda f: (f.count('/'), f != 'README.md' and not f.endswith('/README.md'), f))


def target_of(src):
    """README.md -> index.md in every folder (data/README.md -> data/index.md)"""
    d, b = os.path.split(src)
    if b == 'README.md':
        b = 'index.md'
    return os.path.join(d, b) if d else b


def repo_url():
    url = os.environ.get('YM_REPO_URL')
    if not url:
        try:
            url = subprocess.check_output(['git', '-C', REPO, 'remote', 'get-url', 'origin'],
                                          text=True).strip()
        except Exception:
            url = 'https://github.com/hairer/humanise-yang-mills'
    url = re.sub(r'^git@github\.com:', 'https://github.com/', url)
    url = re.sub(r'\.git$', '', url)
    branch = os.environ.get('YM_REPO_BRANCH', 'main')
    return url, branch


def slugify(text):
    """GitHub's heading anchor: strip markup, lowercase, keep letters,
    digits, '-', '_' and spaces, spaces -> '-'."""
    t = re.sub(r'\[([^\]]*)\]\([^)]*\)', r'\1', text)   # links -> their text
    t = re.sub(r'<[^>]+>', '', t)                       # inline html
    t = t.replace('`', '').replace('*', '').strip().lower()
    t = re.sub(r'[^\w\- ]', '', t)
    return t.replace(' ', '-')


FENCE = re.compile(r'^\s*(```|~~~)')
HEAD = re.compile(r'^(#{1,6})\s+(.*?)\s*#*\s*$')
LINK = re.compile(r'(\]\()([^)\s]+)(\))')
TITLE_CLEAN = re.compile(r'[*`]')


HTML_TAGS = {'a', 'abbr', 'b', 'blockquote', 'br', 'code', 'dd', 'del', 'details', 'div', 'dl',
             'dt', 'em', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'hr', 'i', 'img', 'ins', 'kbd',
             'li', 'mark', 'ol', 'p', 'picture', 'pre', 'q', 's', 'samp', 'small', 'source',
             'span', 'strong', 'sub', 'summary', 'sup', 'table', 'tbody', 'td', 'th', 'thead',
             'tr', 'tt', 'u', 'ul', 'var'}
PLACEHOLDER = re.compile(r'<([A-Za-z][^<>`$\\=]*)>')   # not in formulas: x<y and z>w
PLACED = []
INLINE_CODE = re.compile(r'(`+)(?:.|\n)*?(?<!`)\1(?!`)')


def placeholders(text):
    """<words> that is neither an HTML tag nor an autolink -> \u27e8words\u27e9,
    outside code"""
    def fix(m):
        inner = m.group(1)
        first = re.match(r'[A-Za-z][A-Za-z0-9-]*', inner).group(0)
        if (first.lower() in HTML_TAGS and (len(first) == len(inner) or inner[len(first)] in ' /\n\t'))\
                or re.match(r'^[a-zA-Z][a-zA-Z0-9+.-]*:', inner) or re.match(r'^[^ @]+@[^ @]+$', inner):
            return m.group(0)
        PLACED.append(inner)
        return '\u27e8' + inner + '\u27e9'

    def outside_code(chunk):
        out, i = [], 0
        for m in INLINE_CODE.finditer(chunk):
            out.append(PLACEHOLDER.sub(fix, chunk[i:m.start()]))
            out.append(m.group(0))
            i = m.end()
        out.append(PLACEHOLDER.sub(fix, chunk[i:]))
        return ''.join(out)
    out, chunk, fenced = [], [], False
    for line in text.split('\n'):
        if FENCE.match(line):
            if not fenced:
                out.append(outside_code('\n'.join(chunk))); chunk = []
            fenced = not fenced
            out.append(line)
        elif fenced:
            out.append(line)
        else:
            chunk.append(line)
    if chunk:
        out.append(outside_code('\n'.join(chunk)))
    return '\n'.join(out)


def anchors_of(text):
    """the anchors a page has: GitHub heading slugs and <a id="...">"""
    out, seen, fenced = set(), {}, False
    for line in text.split('\n'):
        if FENCE.match(line):
            fenced = not fenced
            continue
        if fenced:
            continue
        out.update(re.findall(r'<a id="([^"]+)"', line))
        h = HEAD.match(line)
        if h:
            slug = slugify(h.group(2))
            n = seen.get(slug, 0)
            seen[slug] = n + 1
            out.add(f'{slug}-{n}' if n else slug)
    return out



def main():
    pages = collection()
    known = {p: target_of(p) for p in pages}
    anchors = {p: anchors_of(open(os.path.join(REPO, p), encoding='utf-8').read()) for p in pages}
    url, branch = repo_url()
    os.makedirs(OUT, exist_ok=True)
    meta = {}
    stats = {'md-links': 0, 'repo-links': 0, 'anchors': 0, 'unresolved': [], 'placeholders': []}
    for src in pages:
        n = len(PLACED)
        text = placeholders(open(os.path.join(REPO, src), encoding='utf-8').read())
        if len(PLACED) > n:
            stats['placeholders'].append(f'{src}: {len(PLACED) - n}')
        sdir = os.path.dirname(src)

        def relink(m):
            target = m.group(2)
            if re.match(r'^[a-z][a-z0-9+.-]*:', target) or target.startswith('#'):
                return m.group(0)
            path, hsh, frag = target.partition('#')
            full = os.path.normpath(os.path.join(sdir, path))
            if path.endswith('/') or os.path.isdir(os.path.join(REPO, full)):
                readme = os.path.normpath(os.path.join(full, 'README.md'))
                if readme in known:
                    full = readme
            if full in known:
                stats['md-links'] += 1
                if frag and frag not in anchors[full]:
                    stats['unresolved'].append(f'{src}: {target} (no such anchor)')
                new = os.path.relpath(known[full], sdir or '.')
                new = new[:-3] + '.tm'
                return m.group(1) + new + hsh + frag + m.group(3)
            if os.path.exists(os.path.join(REPO, full)) and not full.startswith('..'):
                stats['repo-links'] += 1
                kind = 'tree' if os.path.isdir(os.path.join(REPO, full)) else 'blob'
                return m.group(1) + f'{url}/{kind}/{branch}/{full}' + hsh + frag + m.group(3)
            if path.endswith('.md') or '/' in path:
                stats['unresolved'].append(f'{src}: {target}')
            return m.group(0)

        out, fenced, seen, title, heads = [], False, {}, None, []
        for line in text.split('\n'):
            if FENCE.match(line):
                fenced = not fenced
                out.append(line)
                continue
            if fenced:
                out.append(line)
                continue
            line = LINK.sub(relink, line)
            h = HEAD.match(line)
            if h:
                slug = slugify(h.group(2))
                n = seen.get(slug, 0)
                seen[slug] = n + 1
                if n:
                    slug = f'{slug}-{n}'
                if title is None and len(h.group(1)) == 1:
                    title = TITLE_CLEAN.sub('', h.group(2))
                heads.append((len(h.group(1)), slug))
                stats['anchors'] += 1
                line = f'{h.group(1)} {h.group(2)} <a id="{slug}"></a>'
            out.append(line)
        dst = known[src]
        os.makedirs(os.path.join(OUT, os.path.dirname(dst)), exist_ok=True)
        open(os.path.join(OUT, dst), 'w', encoding='utf-8').write('\n'.join(out))
        meta[dst[:-3] + '.tm'] = {'source': src, 'title': title or src, 'headings': heads}

    # navigation data: the proof units, from blueprint/units/<ID>/unit.json
    # (in the order of their identifiers), with their pages
    units = []
    udir = os.path.join(REPO, 'blueprint/units')
    for uid in sorted(os.listdir(udir)) if os.path.isdir(udir) else []:
        uj = os.path.join(udir, uid, 'unit.json')
        if not os.path.exists(uj):
            continue
        try:
            d = json.load(open(uj, encoding='utf-8'))
        except ValueError:
            print(f'prep: warning: {os.path.relpath(uj, REPO)} is not valid JSON')
            d = {}
        prefix = f'blueprint/units/{uid}/'
        files = sorted(f for f in meta if f.startswith(prefix))
        main = prefix + 'correspondence.tm' if prefix + 'correspondence.tm' in meta else \
            (files[0] if files else None)
        if main:
            units.append({'unit': d.get('id', uid), 'title': d.get('title', uid),
                          'status': d.get('status', ''), 'file': main, 'pages': files})

    manuscript = 'manuscript/main.tm' if os.path.exists(os.path.join(REPO, MANUSCRIPT)) else None
    json.dump({'pages': meta, 'units': units, 'repo': url, 'branch': branch,
               'manuscript': manuscript},
              open(os.path.join(OUT, 'pages.json'), 'w', encoding='utf-8'), indent=1,
              ensure_ascii=False)
    with open(os.path.join(OUT, 'manifest.tsv'), 'w') as f:
        for p in pages:
            f.write(f'{p}\t{known[p]}\n')
    print(f"prep: {len(pages)} pages, {stats['md-links']} page links, "
          f"{stats['repo-links']} repository links, {stats['anchors']} heading anchors")
    if stats['placeholders']:
        print('prep: placeholders <...> written with angle brackets:', ', '.join(stats['placeholders']))
    for u in stats['unresolved']:
        print('prep: unresolved link', u)


main()
