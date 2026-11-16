#!/usr/bin/env python3
"""Rewrite one imported LaTeX document into a native TeXmacs document.

    tex_post.py PAGES_JSON TEXDIR RAW.scm OUT.scm PAGE

RAW.scm is the stree of the TeXmacs import of TEXDIR/doc.tex (written by
tex_prep.py); OUT.scm is the document PAGE (e.g. manuscript/existence.tm)
as an stree.

  * style <tuple|article|british|ym-outline|ym-manuscript> (ym-manuscript.ts:
    numbered sections, equations numbered through the document as in the
    article class, the site's navigation through ym-outline);
  * preamble: the user macros as imported (kept as macros), with
    \\DeclareMathOperator names upright and bare brackets in macro bodies
    made into around; the theorem declarations as imported are replaced by
    environments with the counters of the LaTeX source (meta['theorems'] of
    tex_prep.py: shared counters, numbering within sections, starred
    environments, theorem styles);
  * title from \\title (the importer loses it), empty abstract dropped;
  * table column widths p{x\\textwidth} (mis-parsed by the importer) set as
    exact widths, header rule;
  * \\bibliography: a TeXmacs bibliography with a TeXmacs bibliography
    style (no BibTeX program needed), from the database NAME.bib, NAME the
    name of the page (build.sh copies TEXDIR/references.bib there: one copy
    per document);
  * markers of tex_prep.py: \\tmitemlabel{L}{n} -> a label with the text n,
    \\tmtocdepth{n} -> the entries of the table of contents below level n
    left out (as LaTeX; without it, paragraphs are left out as in the
    article class);
  * \\iint (an undefined tag in the import) -> <big|iint>;
    \\hyperref[L]{text} (hyperref*) -> a link to the label L;
  * table lengths <plus|1fn|2pt> (a row raised with \\\\[2pt]) as one length;
  * <le>, <ge>, <leq>, <geq> -> <leqslant>, <geqslant> (house convention);
  * the navigation bar of the site on top (and the bar of the proof unit,
    for a document in a unit's folder).
"""
import json, os, re, sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import stree
import post

PAGES_JSON, TEXDIR, RAW, OUT, PAGE = sys.argv[1:6]
post.load(PAGES_JSON)
meta = json.load(open(os.path.join(TEXDIR, 'meta.json'), encoding='utf-8'))
warnings = []

# the bibliography database of the page: PAGE without .tm, next to it
BIBNAME = os.path.basename(PAGE)[:-3]
# sectioning levels of LaTeX (for \\tmtocdepth)
TOC_LEVELS = ['section', 'subsection', 'subsubsection', 'paragraph', 'subparagraph']

# big operators the importer does not know (it makes them tags without
# arguments)
BIG_OPS = {'iint', 'iiint', 'iiiint', 'oiint', 'oiiint'}

SYMS = {'<le>': '<leqslant>', '<ge>': '<geqslant>', '<leq>': '<leqslant>', '<geq>': '<geqslant>'}
SYM_RE = re.compile('|'.join(re.escape(k) for k in SYMS))
# BibTeX styles -> the TeXmacs implementations (no bibtex binary in CI)
# (TeXmacs ships tm-plain, tm-abbrv, tm-alpha, tm-unsrt, tm-acm, tm-ieeetr,
# tm-siam, tm-elsart-num, tm-abstract; no AMS style: amsplain, numeric and
# sorted by author, is closest to tm-plain, amsalpha to tm-alpha)
BIBSTYLES = {'plain': 'tm-plain', 'abbrv': 'tm-abbrv', 'alpha': 'tm-alpha', 'unsrt': 'tm-unsrt',
             'acm': 'tm-acm', 'ieeetr': 'tm-ieeetr', 'siam': 'tm-siam',
             'amsplain': 'tm-plain', 'amsalpha': 'tm-alpha'}


def is_node(x, *labels):
    return isinstance(x, list) and (not labels or x[0] in labels)


def strings(x, f):
    if isinstance(x, str):
        return f(x)
    if x[0] in ('verbatim', 'label', 'reference', 'eqref', 'hlink', 'slink', 'cite'):
        return x
    return [x[0]] + [strings(k, f) for k in x[1:]]


def pair_brackets(x):
    """'...(' X ')...' inside a concat -> <around|(|X|)> (macro bodies such
    as m_{ref}(#1), k^{(#1)}, which the importer leaves bare)"""
    if not isinstance(x, list):
        return x
    x = [x[0]] + [pair_brackets(k) for k in x[1:]]
    if x[0] != 'concat':
        return x
    kids = x[1:]
    for i, k in enumerate(kids):
        if isinstance(k, str) and k.endswith('('):
            for j in range(i + 1, len(kids)):
                if isinstance(kids[j], str) and kids[j].startswith(')'):
                    inner = kids[i + 1:j]
                    body = inner[0] if len(inner) == 1 else ['concat'] + inner
                    new = kids[:i] + ([k[:-1]] if k[:-1] else []) + [['around', '(', body, ')']] + \
                        ([kids[j][1:]] if kids[j][1:] else []) + kids[j + 1:]
                    return pair_brackets(['concat'] + new) if len(new) > 1 else new[0]
    return x


RENDER = {'plain': 'render-theorem', 'definition': 'render-remark', 'remark': 'render-remark'}


def theorem_setup():
    """TeXmacs environments for the \\newtheorem declarations: one counter
    group per LaTeX counter, shared by the environments declared with
    [counter]; numbers prefixed by the section and reset with it for
    [section]; ym-section-resets is called by section-clean (ym-manuscript.ts)"""
    out, resets = [], []
    for t in meta.get('theorems', []):
        env, name, render = t['env'], post.cork(t['name']), RENDER[t['style']]
        if not t['numbered']:
            out.append(['assign', env, ['macro', 'body', [render, name, ['arg', 'body']]]])
            continue
        g = t['counter'] + '-env'
        if t['counter'] == env:
            nr = ['concat', ['the-section'], '.', ['arg', 'nr']] if t['within'] == 'section' else ['arg', 'nr']
            out += [['new-counter-group', g], ['group-common-counter', g],
                    ['assign', 'display-' + g, ['macro', 'nr', nr]]]
            if t['within'] == 'section':
                resets.append(['reset-counter', g])
        out.append(['new-env', env, name, g, render])
    if meta.get('equations_within') == 'section':
        # \\numberwithin{equation}{section}
        out.append(['assign', 'display-equation', ['macro', 'nr', ['concat', ['the-section'], '.', ['arg', 'nr']]]])
        resets.append(['reset-equation'])
    if resets:
        out.append(['assign', 'ym-section-resets',
                    ['macro', resets[0] if len(resets) == 1 else ['concat'] + resets]])
    return out


def preamble(doc, extra=()):
    """the hide-preamble: keep the user macros, replace the theorem setup"""
    setup = theorem_setup() + list(extra)
    for p in doc[1:]:
        if is_node(p, 'hide-preamble'):
            kept = []
            for a in p[1][1:]:
                if is_node(a, 'new-theorem', 'new-remark', 'new-definition'):
                    continue                    # theorem_setup()
                if is_node(a, 'assign') and isinstance(a[1], str) and a[1].startswith('tmrename'):
                    a[1] = a[1][len('tmrename'):]
                if is_node(a, 'assign') and is_node(a[2], 'macro'):
                    body = a[2][-1]
                    # \DeclareMathOperator{\tr}{tr} is imported as <macro|tr>
                    if isinstance(body, str) and re.match(r'^[A-Za-z]+$', body) and \
                            re.search(r'\\DeclareMathOperator\*?\{\\' + re.escape(a[1]) + r'\}',
                                      meta['preamble']):
                        a[2][-1] = ['math-up', body]
                    else:
                        a[2][-1] = pair_brackets(body)
                kept.append(a)
            p[1][1:] = setup + kept or ['']
            return
    if setup:
        doc.insert(1, ['hide-preamble', ['document'] + setup])


def tables(x):
    """p{0.24\\textwidth} columns: the importer writes one garbled
    cell-width; set each column's exact width as a fraction of the line"""
    if not isinstance(x, list):
        return
    if x[0] == 'tformat':
        bad = [k for k in x[1:] if is_node(k, 'cwith') and k[5] == 'cell-width' and 'tex-text-width' in k[6]]
        if bad:
            widths = re.findall(r'([0-9.]+)tex-text-width', bad[0][6])
            keep = [k for k in x[1:-1] if not (is_node(k, 'cwith') and k[3] == '1' and k[4] == '1'
                                                and k[5] in ('cell-width', 'cell-hmode', 'cell-hyphen'))]
            new = [['twith', 'table-width', '1par'], ['twith', 'table-hmode', 'exact']]
            for i, w in enumerate(widths, 1):
                c = str(i)
                new += [['cwith', '1', '-1', c, c, 'cell-width', f'{w}par'],
                        ['cwith', '1', '-1', c, c, 'cell-hmode', 'exact'],
                        ['cwith', '1', '-1', c, c, 'cell-hyphen', 't']]
            x[1:-1] = keep + new
    for k in x[1:]:
        tables(k)


def strip_eqnum(x):
    if isinstance(x, list):
        n = len(x)
        x[1:] = [strip_eqnum(k) for k in x[1:] if k != ['eq-number']]
        if x[0] == 'concat' and len(x) == 2:
            return x[1]
        if len(x) == 1 and n > 1:
            # (a cell whose only content was the number: an empty cell, not
            # a cell without children, which stops the HTML export)
            return '' if x[0] == 'concat' else [x[0], '']
    return x


def has_eqnum(x):
    return isinstance(x, list) and (x == ['eq-number'] or any(has_eqnum(k) for k in x[1:]))


def display_numbers(doc):
    """numbers of the rows of align/multline/... as in the LaTeX source
    (meta['displays'] from tex_prep.py, in document order)"""
    expected = list(meta.get('displays', []))
    found = []

    def walk(x):
        if isinstance(x, list):
            if x[0] in ('align', 'multline', 'gather', 'eqnarray'):
                found.append(x)
            for k in x[1:]:
                walk(k)
    walk(doc)
    if len(found) != len(expected):
        raise SystemExit(f'tex_post: {len(found)} numbered displays in the import, '
                         f'{len(expected)} in the LaTeX source')
    for node, exp in zip(found, expected):
        tables_ = []

        def rows(x):
            if isinstance(x, list):
                if x[0] == 'table':
                    tables_.append(x)
                    return
                for k in x[1:]:
                    rows(k)
        rows(node)
        table = tables_[0]
        rs = [r for r in table[1:] if is_node(r, 'row')]
        if len(rs) != len(exp['numbered']):
            raise SystemExit(f'tex_post: {exp["env"]} with {len(rs)} rows, '
                             f'{len(exp["numbered"])} in the LaTeX source')
        for r, numbered in zip(rs, exp['numbered']):
            if not numbered and has_eqnum(r):
                r[1:] = [strip_eqnum(c) for c in r[1:]]
            elif numbered and not has_eqnum(r):
                last = r[-1]
                body = last[1]
                last[1] = ['concat'] + (body[1:] if is_node(body, 'concat') else [body]) + [['eq-number']]


OPERATOR_MACROS = set()   # user macros that expand to an operator name


def operator_macros(doc):
    for p in doc[1:]:
        if is_node(p, 'hide-preamble'):
            for a in p[1][1:]:
                if is_node(a, 'assign') and is_node(a[2], 'macro'):
                    b = a[2][-1]
                    if is_node(b, 'concat'):
                        b = b[1]
                    if is_node(b, 'math-up'):
                        OPERATOR_MACROS.add(a[1])


def is_op(x):
    return is_node(x, 'math-up') or (is_node(x) and len(x) == 1 and x[0] in OPERATOR_MACROS)


def operator_spacing(x, in_math=False):
    """\\operatorname{Re}\\tr u: LaTeX puts a thin space after an operator
    name followed by another operator or an ordinary symbol; TeXmacs and the
    MathJax export (\\text{Re}\\text{tr}u) do not. Insert <space|0.17em>."""
    if not isinstance(x, list):
        return x
    m = in_math or x[0] in ('math', 'equation', 'equation*', 'align', 'align*', 'gather',
                            'gather*', 'multline', 'multline*', 'eqnarray', 'eqnarray*')
    if x[0] in ('text', 'verbatim', 'label', 'reference', 'hlink', 'slink'):
        return x
    x = [x[0]] + [operator_spacing(k, m) for k in x[1:]]
    if x[0] != 'concat' or not m:
        return x
    kids = x[1:]
    space_after = set()
    for i, k in enumerate(kids):
        if not is_op(k):
            continue
        j = i + 1
        while j < len(kids) and is_node(kids[j], 'rsub', 'rsup'):
            j += 1                      # scripts of the operator
        if j < len(kids):
            nxt = kids[j]
            ordinary = is_op(nxt) or (
                isinstance(nxt, str)
                and re.match(r'^([A-Za-z0-9]|<[a-zA-Z-]+>)', nxt)
                and not re.match(r'^<(less|gtr|leqslant|geqslant|in|nin|to|cdot|ldots|cdots|mapsto|'
                                 r'subset|subseteq|ne|neq|assign|times|circ|equiv|sim|longrightarrow|rightarrow)>', nxt))
            if ordinary:
                space_after.add(j - 1)
    out = []
    for i, k in enumerate(kids):
        out.append(k)
        if i in space_after:
            out.append(['space', '0.17em'])
    return ['concat'] + out


THEOREMS = tuple(t['env'] for t in meta.get('theorems', []))


def first_par(env):
    """the first paragraph node of an environment body, and its holder"""
    body = env[1]
    if is_node(body, 'document'):
        return body, 1
    return env, 1


def titles(x):
    """<tmdueto|T> at the start of a theorem -> <dueto|T>; a proof starting
    with <tmproofof|T> -> <render-proof|T|body>"""
    if not isinstance(x, list):
        return x
    x = [x[0]] + [titles(k) for k in x[1:]]
    if x[0] in THEOREMS + ('proof',) and len(x) == 2:
        holder, k = first_par(x)
        par = holder[k]
        head = par[1] if is_node(par, 'concat') else par
        if is_node(head, 'tmdueto', 'tmproofof'):
            items = list(par[2:]) if is_node(par, 'concat') else []
            if items and isinstance(items[0], str):
                items[0] = items[0].lstrip()
                if not items[0]:
                    items = items[1:]
            if head[0] == 'tmdueto':
                holder[k] = ['concat', ['dueto', head[1]]] + items
            else:
                holder[k] = items[0] if len(items) == 1 else (['concat'] + items if items else '')
                if holder[k] == '' and is_node(holder, 'document') and len(holder) > 2:
                    del holder[k]               # the title was the whole first line
                return ['render-proof', head[1], x[1]]
    return x


# lengths in pt (11pt document: 1fn = 11pt)
PT = {'pt': 1.0, 'fn': 11.0, 'em': 11.0, 'mm': 72.27 / 25.4, 'cm': 72.27 / 2.54, 'in': 72.27}


def cell_length(v):
    """<plus|1fn|2pt> as the value of a cwith (the importer writes it for
    a row raised with \\\\[2pt]): one length, since the HTML export of
    tables accepts only plain lengths (it stops with a Scheme error)"""
    if not is_node(v, 'plus') or not all(isinstance(a, str) for a in v[1:]):
        raise SystemExit(f'tex_post: unsupported table length {v}')
    parts = [re.fullmatch(r'(-?[0-9.]+)([a-z]+)', a) for a in v[1:]]
    if not all(parts) or not all(m.group(2) in PT for m in parts):
        raise SystemExit(f'tex_post: unsupported table length {v}')
    units = {m.group(2) for m in parts}
    if len(units) == 1:
        return f'{sum(float(m.group(1)) for m in parts):g}{units.pop()}'
    return f'{sum(float(m.group(1)) * PT[m.group(2)] for m in parts):g}pt'


def toc_depth(doc):
    """<tmtocdepth|n> (\\setcounter{tocdepth}{n}) dropped; the levels below n
    (default 3, as in the article class) get no entry in the table of
    contents. Returns the assignments for the preamble."""
    found = []

    def strip(x):
        if not isinstance(x, list):
            return x
        if x[0] == 'tmtocdepth':
            found.append(x[1] if isinstance(x[1], str) else stree.text_of(x[1]))
            return None
        return [x[0]] + [k for k in (strip(y) for y in x[1:]) if k is not None]
    doc[:] = strip(doc)
    depth = int(found[-1]) if found else 3
    return [['assign', lvl + '-toc', ['macro', 'name', '']] for lvl in TOC_LEVELS[depth:]]


UPRIGHT_WORDS = re.compile(r'([A-Za-z]+(?:[ .][A-Za-z]+)*)')


def upright(x):
    """the words of x as math-up, symbols and scripts as mathematics"""
    if isinstance(x, str):
        parts = [p for p in re.split(r'(<[^<>]+>)', x) if p]
        out = []
        for p in parts:
            if p.startswith('<'):
                out.append(p)
            else:
                out += [['math-up', q] if UPRIGHT_WORDS.fullmatch(q) else q
                        for q in UPRIGHT_WORDS.split(p) if q]
        return out[0] if len(out) == 1 else ['concat'] + out
    if x[0] == 'concat':
        out = []
        for k in x[1:]:
            u = upright(k)
            out += u[1:] if is_node(u, 'concat') else [u]
        return out[0] if len(out) == 1 else ['concat'] + out
    if x[0] in ('rsub', 'rsup', 'lsub', 'lsup', 'around', 'around*', 'frac', 'sqrt'):
        return [x[0]] + [upright(k) for k in x[1:]]
    return x


def rewrite(x):
    """markers, renamed macros, bibliography, <le> etc."""
    if isinstance(x, list) and x[0].startswith('tmrename'):
        x = [x[0][len('tmrename'):]] + x[1:]
    if isinstance(x, str):
        return SYM_RE.sub(lambda m: SYMS[m.group(0)], x)
    if x[0] == 'bibliography' and len(x) >= 4:
        style = x[2] if isinstance(x[2], str) else ''
        x = list(x)
        if style not in BIBSTYLES and not style.startswith('tm-'):
            raise SystemExit(f'tex_post: no TeXmacs bibliography style for \\bibliographystyle{{{style}}}; '
                             'add it to BIBSTYLES')
        x[2] = BIBSTYLES.get(style, style)
        x[3] = BIBNAME
    if x[0] == 'cwith' and len(x) == 7 and not isinstance(x[6], str):
        return x[:6] + [cell_length(x[6])]
    if len(x) == 1 and x[0] in BIG_OPS:
        # \\iint, unknown to the importer: a big operator
        return ['big', x[0]]
    if x[0] == 'hyperref*' and len(x) == 3 and isinstance(x[1], str):
        # \\hyperref[label]{text}: a link to the label
        return ['hlink', rewrite(x[2]), '#' + x[1]]
    if x[0] == 'tmitemlabel' and len(x) == 3 and isinstance(x[1], str):
        # \\paragraph{..}\\label{L}: the LaTeX reference text (tex_prep.py)
        return ['with', 'the-label', x[2] if isinstance(x[2], str) else stree.text_of(x[2]), ['label', x[1]]]
    if (x[0] == 'math-up' and len(x) == 2 and not (isinstance(x[1], str) and '<' not in x[1])) or \
            (x[0] == 'with' and len(x) == 4 and x[1:3] == ['math-font-family', 'rm']):
        # upright text in a formula that the MathJax export writes wrongly:
        # {\rm it,\boldsymbol D} (a symbol inside: \text{it,\boldsymbol{D}}),
        # {\rm healthy(Y_i)} (a script inside: \text{healthy(Y_{\textrm{i}})}),
        # \mathrm{metric.strip}, \mathrm{bed\ denominator} (imported as
        # <with|math-font-family|rm|..>: \textrm{\operatorname{metric}...});
        # keep the words upright (math-up) and the rest as mathematics
        return rewrite(upright(x[-1]))
    if x[0] in ('verbatim', 'label', 'reference', 'eqref', 'hlink', 'slink', 'cite'):
        return x
    return [x[0]] + [rewrite(k) for k in x[1:]]


def main():
    t = stree.load(RAW)
    body = [k for k in t[1:] if is_node(k, 'body')][0]
    doc = body[1]
    preamble(doc, toc_depth(doc))
    kids = []
    for p in doc[1:]:
        if is_node(p, 'doc-data'):
            if not any(is_node(k, 'doc-title') for k in p[1:]) and meta.get('title'):
                p.insert(1, ['doc-title', post.cork(meta['title'])])
        if is_node(p, 'abstract-data') and stree.text_of(p).strip() == '':
            continue
        kids.append(p)
    doc[1:] = kids
    if not meta.get('title'):
        # no \\title (the wrappers of the proof units): the name of the page
        title = post.data.get('latex', {}).get(PAGE, {}).get('title') or meta['source']
        doc.insert(2 if is_node(doc[1], 'hide-preamble') else 1, ['doc-data', ['doc-title', post.cork(title)]])
        meta['title'] = title
    doc = rewrite(doc)
    doc = titles(doc)
    operator_macros(doc)
    doc = operator_spacing(doc)
    display_numbers(doc)
    tables(doc)
    top = [post.nav_bar(PAGE)]
    ub = post.unit_bar(PAGE)
    if ub:
        top.append(ub)
        doc.append(ub)
    doc[1:2] = [doc[1]] + top if is_node(doc[1], 'hide-preamble') else top + [doc[1]]
    title = meta.get('title') or os.path.basename(meta['source'])
    tree = ['document', ['TeXmacs', '2.1.5'],
            ['style', ['tuple', 'article', 'british', 'ym-outline', 'ym-manuscript']],
            ['body', doc],
            ['initial', ['collection',
                         ['associate', 'html-title',
                          post.cork(title) + ' \x15 Humanise Yang\x15Mills']]]]
    # the bibliography must survive the import
    def has(x, tag):
        return isinstance(x, list) and (x[0] == tag or any(has(k, tag) for k in x[1:]))
    if meta.get('bibliography') and not has(doc, 'bibliography'):
        raise SystemExit(f'tex_post: {PAGE}: the \\bibliography of the source was lost in the import')
    for marker in ('tmitemlabel', 'tmtocdepth', 'tmdueto', 'tmproofof'):
        if has(doc, marker):
            raise SystemExit(f'tex_post: {PAGE}: marker {marker} left in the document')
    stree.dump(tree, OUT)
    for w in warnings:
        print('tex_post: warning:', w)
    print(f'tex_post: {PAGE}')


main()
