#!/usr/bin/env python3
"""Prepare one LaTeX document for the TeXmacs import.

    tex_prep.py REPO SRC OUTDIR

SRC is a LaTeX document of REPO (a .tex file with \\begin{document},
relative to REPO, e.g. manuscript/existence.tex). Reads it and every file
it \\inputs (never modifies them) and writes OUTDIR/doc.tex: one flat
LaTeX file in which the constructions the LaTeX importer of TeXmacs does
not understand are replaced, uniformly, by plain LaTeX or by marker
commands (\\tmXXX) that tex_post.py turns into native TeXmacs. Also writes
OUTDIR/meta.json (title, theorem declarations, displays, labels, ...),
OUTDIR/inputs.txt, the files read (for the incremental build), and
OUTDIR/references.bib if the document has a \\bibliography.

\\input{f} and \\bibliography{f} are looked for in the folder of SRC, then
in manuscript/ (SEARCH): the wrappers of the proof units
(blueprint/units/*/evidence/wrapper.tex) input the preamble and chapters of
manuscript/, which LaTeX finds through TEXINPUTS.

Patches:
  * \\input{f}: inlined (recursively);
  * \\today: the date of the last commit touching the files read (so that
    the output does not change from day to day);
  * theorem declarations (\\newtheorem, \\theoremstyle) and
    \\numberwithin{equation}{section}: recorded in meta.json, from which
    tex_post.py writes the TeXmacs environments with the same counters and
    numbering;
  * a \\makeatletter block that only sets the layout of the table of
    contents (\\l@section, \\@pnumwidth, \\@tocrmarg, ...): dropped;
  * \\setcounter{tocdepth}{n}: marker \\tmtocdepth{n} (tex_post.py);
  * \\let\\S\\section \\let\\section\\subsection ... \\let\\section\\S
    (the sections of an \\input demoted): \\section -> \\subsection there;
  * gathered alone in an equation or in \\[ \\]: gather (number on the last
    row) or gather*;
  * "[" after whitespace following \\begin{aligned}/{gathered}: \\lbrack
    (text, not the optional position argument);
  * \\paragraph{T}\\label{L}, \\subparagraph{T}\\label{L}: L gets the
    number LaTeX gives it, that of the enclosing (sub(sub))section
    (\\tmitemlabel{L}{n});
  * a \\label in a \\notag row of a numbered display: moved to the next
    numbered row (where LaTeX puts it);
  * longtable: a table float with a tabular (repeated headers dropped);
    displayed formulas in its cells become inline displays, one per line;
    \\begingroup, \\endgroup, \\setlength, \\raggedright dropped;
  * pagination-only commands (samepage, \\pagebreak, \\nopagebreak,
    \\clearpage, \\newpage, \\needspace, \\displaybreak, ...): dropped;
  * list options ([label=...], [leftmargin=...]): dropped (the importer
    drops the whole list otherwise); \\item[x.] keeps its label;
  * optional titles of theorem-like environments and proofs: markers
    \\tmdueto{...} and \\tmproofof{...} (the importer keeps "[...]" as text);
  * \\textup{...} -> its argument; \\operatorname*{x} -> \\operatorname{x}
    (the importer reads the star as a factor; limits are then set beside);
  * user macros whose name begins with \\path, \\verb, \\url or \\href
    (e.g. \\pathaction, read by the importer as \\path + verbatim): renamed
    \\tmrenameNAME, renamed back by tex_post.py.
A document whose flattened source is over SPLIT_BYTES (500 kB) is
published as a contents page and one page per top-level \\section
(meta.json "split", "chapters": the sections, their page names and labels;
build.sh, split.py).
Numbering that the conversion does not reproduce (any other \\makeatletter
block, \\numberwithin, \\setcounter, \\renewcommand{\\the...}, a theorem
numbered within anything but section, ...) stops the build: wrong numbers
must not be published silently.

References (\\ref, \\eqref, \\hyperref[...]) to labels that the document
does not define are a problem of the source, not of the conversion (the
wrappers of the proof units include only some chapters): they are listed
in meta.json ("undefined_refs") and printed as warnings; build.sh then does
not count the links they give as conversion errors.
"""
import json, os, re, subprocess, sys

REPO, SRC, OUT = sys.argv[1], sys.argv[2], sys.argv[3]
# book or report class: \chapter is the top level (set by main())
CHAPTERS = False
# where \input and \bibliography files are looked for
SEARCH = [os.path.dirname(SRC), 'manuscript']
inputs = []


def find(rel, ext):
    """the file \\input{rel} (or \\bibliography{rel}) of SRC: in the folder of
    SRC, then in manuscript/"""
    name = rel if rel.endswith(ext) else rel + ext
    for d in SEARCH:
        path = os.path.normpath(os.path.join(REPO, d, name))
        if os.path.isfile(path):
            return path
    raise SystemExit(f'tex_prep: {SRC}: {name} not found in ' + ', '.join(d or '.' for d in SEARCH))


def if_file_exists(s):
    r"""\IfFileExists{f}{yes}{no}: yes if f is found (in the folder of SRC, then
    in manuscript/, as \input), else no"""
    out, i = [], 0
    pat = re.compile(r'\\IfFileExists\s*\{([^{}]*)\}\s*\{')
    while True:
        m = pat.search(s, i)
        if not m:
            out.append(s[i:])
            return ''.join(out)
        j = balanced(s, m.end() - 1)
        k = re.match(r'\s*\{', s[j:])
        if not k:
            raise SystemExit(r'tex_prep: \IfFileExists without its third argument')
        e = balanced(s, j + k.end() - 1)
        exists = any(os.path.isfile(os.path.join(REPO, d, m.group(1))) for d in SEARCH)
        out.append(s[i:m.start()])
        out.append(s[m.end():j - 1] if exists else s[j + k.end():e - 1])
        i = e


def read(path):
    inputs.append(os.path.relpath(path, REPO))
    s = open(path, encoding='utf-8').read()
    # drop comments (but not \%)
    s = re.sub(r'(?<!\\)%.*', '', s)
    if r'\IfFileExists' in s:
        s = if_file_exists(s)
    return re.sub(r'\\input\{([^}]*)\}', lambda m: read(find(m.group(1), '.tex')), s)


def commit_date():
    try:
        out = subprocess.check_output(
            ['git', '-C', REPO, 'log', '-1', '--format=%cd', '--date=format:%B %d, %Y',
             '--'] + sorted(set(inputs)), text=True).strip()
        if out:
            return re.sub(r' 0(\d),', r' \1,', out)
    except Exception:
        pass
    return 'undated'


def balanced(s, i):
    """s[i] == '{': index after the matching '}'"""
    depth = 0
    for j in range(i, len(s)):
        if s[j] == '{' and s[j - 1] != '\\':
            depth += 1
        elif s[j] == '}' and s[j - 1] != '\\':
            depth -= 1
            if depth == 0:
                return j + 1
    raise SystemExit('tex_prep: unbalanced braces')


def strip_braced(s, name):
    """\\name{...} dropped (balanced braces)"""
    out, i = [], 0
    pat = re.compile(r'\\' + name + r'\s*\{')
    while True:
        m = pat.search(s, i)
        if not m:
            out.append(s[i:])
            return ''.join(out)
        out.append(s[i:m.start()])
        i = balanced(s, m.end() - 1)


def strip_command(s, name):
    """\\name{x} -> x"""
    out, i = [], 0
    pat = re.compile(r'\\' + name + r'\s*\{')
    while True:
        m = pat.search(s, i)
        if not m:
            out.append(s[i:])
            return ''.join(out)
        j = balanced(s, m.end() - 1)
        out.append(s[i:m.start()])
        out.append(s[m.end():j - 1])
        i = j


def numbering(s):
    """the theorem environments of the preamble, in order, with their
    counters; anything else that changes numbers stops the build"""
    theorems, errors = [], []
    style = 'plain'
    pre = s.split(r'\begin{document}')[0]
    decl = re.compile(r'\\theoremstyle\{([^}]*)\}|\\newtheorem(\*?)\{([^}]*)\}(?:\[([^\]]*)\])?'
                      r'\{((?:[^{}]|\{[^{}]*\})*)\}(?:\[([^\]]*)\])?')
    for m in decl.finditer(pre):
        if m.group(1) is not None:
            style = m.group(1)
            if style not in ('plain', 'definition', 'remark'):
                errors.append(m.group(0))
            continue
        star, env, shared, name, within = m.group(2, 3, 4, 5, 6)
        known = {t['env']: t for t in theorems}
        if star and (shared or within):
            errors.append(m.group(0))
        if shared and (shared not in known or known[shared]['numbered'] is False):
            errors.append(m.group(0) + '  (shares the counter of an unknown environment)')
        if within and within not in ('section',) + (('chapter',) if CHAPTERS else ()):
            errors.append(m.group(0) + '  (numbered within ' + within + ')')
        root = known[shared]['counter'] if shared in known else env
        theorems.append({'env': env, 'name': latex_text(name), 'style': style,
                         'numbered': not star, 'counter': root,
                         'within': within or (known[shared]['within'] if shared in known else '')})
    if re.search(r'\\makeatletter', s):
        errors.append(r'\makeatletter block')
    allowed = [r'\\setcounter\{tocdepth\}\{\d\}', r'\\newtheorem', r'\\theoremstyle',
               r'\\numberwithin\{equation\}\{section\}']
    if CHAPTERS:
        # book, report: equations within chapters (the default of the
        # class), the number of the next chapter (tex_post.py)
        allowed += [r'\\numberwithin\{equation\}\{chapter\}', r'\\setcounter\{chapter\}\{\d+\}']
    # a theorem with a counter of its own, not reset by sections (Theorem A,
    # B of a main theorem): its number format, \renewcommand{\theX}{\Alph{X}}
    # in the preamble, and \setcounter{X}{N} anywhere (tex_post.py)
    own = [t['env'] for t in theorems if t['numbered'] and t['counter'] == t['env'] and not t['within']]
    for t in theorems:
        if t['env'] in own:
            f = re.search(r'\\renewcommand\*?\{\\the' + t['env'] + r'\}\{\\(Alph|alph|Roman|roman|arabic)\{'
                          + t['env'] + r'\}\}', pre)
            if f:
                t['format'] = f.group(1)
                allowed.append(re.escape(f.group(0)))
            allowed.append(r'\\setcounter\{' + t['env'] + r'\}\{\d+\}')
    for m in re.finditer(r'\\(?:renewcommand\*?\{\\the[A-Za-z]+\}|setcounter|addtocounter|stepcounter|'
                         r'numberwithin|counterwithin\*?|counterwithout\*?|@addtoreset|appendix\b|'
                         r'newcounter|swapnumbers)[^\n]*', s):
        if not any(re.match(a, m.group(0)) for a in allowed):
            errors.append(m.group(0))
    if errors:
        raise SystemExit('tex_prep: numbering of the manuscript not recognised (adapt tex_prep.py, '
                         'tex_post.py and ym-manuscript.ts):\n  ' + '\n  '.join(errors))
    return theorems


# Pagination only (an HTML page has no page breaks). The importer keeps
# \begin{samepage} as an undefined block, whose whole content (statements,
# labels) the HTML export then drops.
PAGINATION = [r'\\begin\{samepage\}', r'\\end\{samepage\}',
              r'\\(?:no)?pagebreak(?:\[[0-4]\])?', r'\\(?:no)?linebreak(?:\[[0-4]\])?',
              r'\\clearpage\b', r'\\cleardoublepage\b', r'\\newpage\b',
              r'\\[Nn]eedspace\*?\{[^{}]*\}', r'\\enlargethispage\*?\{[^{}]*\}',
              r'\\allowdisplaybreaks(?:\[[0-4]\])?', r'\\displaybreak(?:\[[0-4]\])?',
              r'\\(?:small|med|big)break\b', r'\\filbreak\b', r'\\goodbreak\b',
              # placeins: floats are not floating in HTML
              r'\\FloatBarrier\b',
              # multiple columns (an HTML page has one; multicols itself
              # is treated as a group in groups())
              # hyperref anchors without text (the HTML has its own)
              r'\\phantomsection\b',
              r'\\raggedcolumns\b', r'\\columnbreak\b', r'\\interlinepenalty\s*=?\s*-?\d+']


def pagination(s):
    body_start = s.find(r'\begin{document}')
    pre, body = (s[:body_start], s[body_start:]) if body_start >= 0 else ('', s)
    for p in PAGINATION:
        body = re.sub(p, '', body)
    return pre + body


def labels(s):
    """every \\label of the document body, in order"""
    body = s[s.find(r'\begin{document}'):]
    return re.findall(r'\\(?:label|tmitemlabel)\{([^{}]*)\}', body)


def longtables(s):
    def table(m):
        spec, body = m.group(1), m.group(2)
        spec = spec.replace('@{}', '')
        cap = ''
        c = re.search(r'\\caption\{', body)
        if c:
            j = balanced(body, c.end() - 1)
            cap = body[c.start():j]
            lab = re.match(r'\s*\\label\{[^}]*\}', body[j:])
            if lab:
                cap += lab.group(0).strip()
                j += lab.end()
            body = body[:c.start()] + body[j:]
            body = re.sub(r'^\s*\\\\', '', body)
        if r'\endfirsthead' in body:
            head, rest = body.split(r'\endfirsthead', 1)
            rest = rest.split(r'\endfoot', 1)[1] if r'\endfoot' in rest else rest.split(r'\endhead', 1)[-1]
            body = head + rest
        body = re.sub(r'\\\\\[[^\]]*\]', r'\\\\', body)
        # displays inside p{} cells break the importer (the cell is split
        # and the formula leaves math mode): one inline display per row
        def inline(d):
            rows = [r.strip() for r in re.split(r'\\\\(?:\[[^\]]*\])?', d.group(2)) if r.strip()]
            return ''.join(r'\newline $\displaystyle ' + r.replace('&', '') + '$' for r in rows) + r'\newline '
        body = re.sub(r'\\begin\{(gather\*|align\*|equation\*|multline\*)\}(.*?)\\end\{\1\}', inline, body, flags=re.S)
        return ('\\begin{table}[h]\n' + cap + '\n\\begin{tabular}{' + spec + '}' + body +
                '\\end{tabular}\n\\end{table}')
    s = re.sub(r'\\begin\{longtable\}\{((?:[^{}]|\{[^{}]*\{[^{}]*\}[^{}]*\}|\{[^{}]*\})*)\}(.*?)\\end\{longtable\}',
               table, s, flags=re.S)
    for cmd in (r'\begingroup', r'\endgroup', r'\raggedright'):
        s = s.replace(cmd, '')
    s = re.sub(r'\\setlength\{\\tabcolsep\}\{[^}]*\}', '', s)
    return s


# LaTeX commands the importer treats specially when they begin a longer
# control word (\pathaction is read as \path + verbatim argument)
PREFIXES = ('path', 'verb', 'url', 'href')


def rename_macros(s):
    """user macros that begin with such a command get the prefix tmrename,
    removed again by tex_post.py"""
    names = set(re.findall(r'\\(?:newcommand|renewcommand|DeclareMathOperator\*?)\{\\([A-Za-z]+)\}', s))
    for n in sorted(names):
        if n.startswith(PREFIXES) and n not in PREFIXES:
            s = re.sub(r'\\' + n + r'(?![A-Za-z])', lambda m: '\\tmrename' + n, s)
    return s


def display_rows(s):
    """for every numbered multi-line display (align, multline, gather,
    eqnarray; starred forms excepted), in order: which rows carry a number.
    The importer numbers every row of an align, \\notag rows included, and
    every row of a multline; tex_post.py corrects that."""
    out = []
    for m in re.finditer(r'\\begin\{(align|multline|gather|eqnarray)\}(.*?)\\end\{\1\}', s, re.S):
        env, body = m.group(1), m.group(2)
        # split rows at \\ outside braces and inner environments
        rows, depth, env_depth, cur, i = [], 0, 0, [], 0
        while i < len(body):
            if body.startswith('\\begin{', i):
                env_depth += 1
            elif body.startswith('\\end{', i):
                env_depth -= 1
            c = body[i]
            if c == '{':
                depth += 1
            elif c == '}':
                depth -= 1
            if body.startswith('\\\\', i) and depth == 0 and env_depth == 0:
                rows.append(''.join(cur)); cur = []; i += 2
                continue
            cur.append(c); i += 1
        if ''.join(cur).strip():
            rows.append(''.join(cur))
        if env == 'multline':
            nums = [False] * (len(rows) - 1) + [True]
        else:
            nums = [not re.search(r'\\(notag|nonumber)\b', r) for r in rows]
        out.append({'env': env, 'numbered': nums})
    return out


def titles(s, envs):
    """\\begin{lemma}[Title] -> \\begin{lemma}\\tmdueto{Title} (the importer
    keeps "[Title]" as text); \\begin{proof}[Title] -> \\tmproofof{Title}"""
    out, i = [], 0
    pat = re.compile(r'\\begin\{(' + '|'.join(map(re.escape, envs)) + r')\}\s*\[')
    while True:
        m = pat.search(s, i)
        if not m:
            out.append(s[i:])
            return ''.join(out)
        j, depth = m.end(), 0
        while True:                      # the matching ] outside braces
            c = s[j]
            if c == '{':
                depth += 1
            elif c == '}':
                depth -= 1
            elif c == ']' and depth == 0:
                break
            j += 1
        marker = 'tmproofof' if m.group(1) == 'proof' else 'tmdueto'
        out.append(s[i:m.start()] + '\\begin{' + m.group(1) + '}\\' + marker + '{' + s[m.end():j] + '}')
        i = j + 1


def latex_text(t):
    """the text of a LaTeX title: line breaks -> ': ', commands dropped
    (as in prep.py)"""
    t = re.sub(r'\\\\(\[[^\]]*\])?\s*', ': ', t)
    t = re.sub(r'\\([_&%#$])', r'\1', t)
    t = re.sub(r'\\[a-zA-Z]+\s*', '', t).replace('{', '').replace('}', '')
    return re.sub(r'\s+', ' ', t.replace('---', '\u2014').replace('--', '\u2013').replace('~', ' ')).strip()


# --- ported from the pipeline of yang-mills-informalization (tm/scripts/tex_prep.py)

# TikZ pictures: rendered to SVG by figures.py (standalone LaTeX + dvisvgm),
# included as images. The importer cannot read them (latex_preview).
FIG_PACKAGES = r"""\documentclass[11pt,dvisvgm]{standalone}
\usepackage{amsmath,amssymb,mathtools}
\usepackage{xcolor}
\usepackage{tikz}
"""



def definitions(pre):
    r"""macro definitions of the preamble (\newcommand, \DeclareMathOperator,
    ... with balanced braces), \usetikzlibrary and \definecolor: what a
    figure may use. Counter formats (\renewcommand{\the...}) are left out."""
    out = []
    for m in re.finditer(r'\\(?:(?:re|provide)?newcommand\*?|DeclareMathOperator\*?|usetikzlibrary|definecolor|tikzset)(?![A-Za-z])', pre):
        i = m.end()
        # arguments: {..} and [..] groups, balanced
        while True:
            while i < len(pre) and pre[i] in ' \t':
                i += 1
            if i < len(pre) and pre[i] == '{':
                i = balanced(pre, i)
            elif i < len(pre) and pre[i] == '[':
                i = pre.index(']', i) + 1
            else:
                break
        d = pre[m.start():i]
        if not re.match(r'\\renewcommand\*?\{\\the', d):
            out.append(d)
    return '\n'.join(out)


def figures(s, pre):
    r"""\begin{tikzpicture}...\end{tikzpicture} -> \tmfigure{N}; the sources
    (standalone documents, \ref still unresolved) go to meta.json. A picture
    alone in a displayed formula becomes a centred block (an image cannot be
    part of a MathJax formula); one inside other mathematics stops the build."""
    head = FIG_PACKAGES + definitions(pre) + '\n\\begin{document}\n'
    figs = []

    def rep(m):
        figs.append(head + m.group(0) + '\n\\end{document}\n')
        return r'\tmfigure{%d}' % len(figs)
    s = re.sub(r'\\begin\{tikzpicture\}.*?\\end\{tikzpicture\}', rep, s, flags=re.S)
    s = re.sub(r'\\begin\{(equation\*?|displaymath)\}\s*(\\tmfigure\{\d+\})\s*\\end\{\1\}',
               r'\\begin{center}\2\\end{center}', s)
    s = re.sub(r'\\\[\s*(\\tmfigure\{\d+\})\s*\\\]', r'\\begin{center}\1\\end{center}', s)
    for m in re.finditer(r'\\tmfigure\{\d+\}', s):
        if in_math(s, m.start()):
            raise SystemExit('tex_prep: a TikZ picture inside a formula: ' + s[max(0, m.start() - 80):m.end()])
    return s, figs


def in_math(s, pos):
    r"""is pos inside $...$ or a display environment (rough: enough for the
    check of figures)"""
    before = s[:pos]
    if len(re.findall(r'(?<!\\)\$', before)) % 2:
        return True
    opens = [m for m in re.finditer(r'\\(begin|end)\{(equation|align|gather|multline|eqnarray|displaymath)\*?\}', before)]
    return bool(opens) and opens[-1].group(1) == 'begin'


def equation_alias(s):
    """\\equationalias{X} right after a display: X is one more label of the
    display's (last) number, i.e. a \\label{X} inside it. Anywhere else it
    stops the build."""
    s = re.sub(r'\\end\{(equation|align|gather|multline|eqnarray)(\*?)\}(\s*)\\equationalias\{([^{}]*)\}',
               lambda m: '\\label{%s}\\end{%s%s}%s' % (m.group(4), m.group(1), m.group(2), m.group(3)), s)
    rest = re.findall(r'\\equationalias\{[^{}]*\}', s)
    if rest:
        raise SystemExit('tex_prep: \\equationalias not right after a display: ' + ', '.join(rest))
    return s


def short_captions(s):
    r"""\caption[short]{long}: the importer makes it a caption* that stays in
    the body of the figure; keep the long caption (also in the list of
    figures, as for the short titles of chapters)"""
    return re.sub(r'\\caption\[[^\[\]{}]*(?:\{[^{}]*\}[^\[\]{}]*)*\]\{', r'\\caption{', s)


def contents_lines(s):
    r"""\section*{X}\addcontentsline{toc}{section}{X}: TeXmacs adds unnumbered
    sections to the table of contents by itself, drop the line; any other
    \addcontentsline stops the build"""
    s = re.sub(r'(\\(?:sub)*section\*\{[^{}]*\}(?:\s*\\label\{[^{}]*\})?)\s*\\addcontentsline\{toc\}\{(?:sub)*section\}\{[^{}]*\}',
               r'\1', s)
    # (book class: \chapter*{X}\addcontentsline{toc}{chapter}{X})
    s = re.sub(r'(\\chapter\*\{[^{}]*\}(?:\s*\\label\{[^{}]*\})?)\s*\\addcontentsline\{toc\}\{chapter\}\{[^{}]*\}',
               r'\1', s)
    # \addcontentsline{toc}{..}{List of figures}\listoffigures: TeXmacs's
    # list of figures is a section of its own, drop the line
    s = re.sub(r'\\addcontentsline\{toc\}\{(?:chapter|(?:sub)*section)\}\{[^{}]*\}(\s*\\listof(?:figures|tables)\b)',
               r'\1', s)
    m = re.search(r'\\addcontentsline\{[^\n]*', s)
    if m:
        raise SystemExit('tex_prep: \\addcontentsline not after a starred section: ' + m.group(0))
    return s


def bibliography_group(s):
    r"""{\small \bibliography{...}}: the importer attaches \bibliographystyle
    only to a bibliography outside a group"""
    return re.sub(r'\{\s*\\(?:small|footnotesize|scriptsize|normalsize)\s*(\\bibliography\{[^{}]*\})\s*\}', r'\1', s)


def roman(n, upper=False):
    out = ''
    for v, r in ((1000, 'm'), (900, 'cm'), (500, 'd'), (400, 'cd'), (100, 'c'), (90, 'xc'),
                 (50, 'l'), (40, 'xl'), (10, 'x'), (9, 'ix'), (5, 'v'), (4, 'iv'), (1, 'i')):
        while n >= v:
            out += r; n -= v
    return out.upper() if upper else out


def counter_text(fmt, n):
    """an enumitem template (\roman*, \arabic*, ...) for item n"""
    reps = {r'\roman*': roman(n), r'\Roman*': roman(n, True), r'\arabic*': str(n),
            r'\alph*': chr(96 + n) if 0 < n < 27 else str(n), r'\Alph*': chr(64 + n) if 0 < n < 27 else str(n)}
    for k, v in reps.items():
        fmt = fmt.replace(k, v)
    return fmt


def split_options(o):
    out, depth, cur = [], 0, ''
    for c in o:
        if c == '{':
            depth += 1
        elif c == '}':
            depth -= 1
        if c == ',' and depth == 0:
            out.append(cur); cur = ''
        else:
            cur += c
    return out + [cur]


def list_labels(s):
    r"""enumerate[label=..., ref=..., start=...] (enumitem): the importer
    drops the options, so the items would be numbered 1., 2., ... and refer
    to 1, 2, ...: every item gets its LaTeX label (\item[(ii)]), and a
    \label in the item text (not inside an inner environment) the LaTeX
    reference text, as \tmitemlabel{key}{text} (tex_post.py). Innermost
    lists first."""
    pat = re.compile(r'\\begin\{enumerate\}\[([^\[\]]*(?:\[[^\[\]]*\][^\[\]]*)*)\]')
    while True:
        # an enumerate with options that contains no other enumerate with options
        m = None
        for c in pat.finditer(s):
            end = s.find(r'\end{enumerate}', c.end())
            inner = s[c.end():end]
            if r'\begin{enumerate}' not in inner:
                m = c
                break
        if m is None:
            # an enumerate with options around plain ones: take the outermost
            m = pat.search(s)
            if m is None:
                return s
        opts = {}
        for o in split_options(m.group(1)):
            k, _, v = o.partition('=')
            opts[k.strip()] = v.strip()
        # the body: up to the matching \end{enumerate}
        depth, i = 1, m.end()
        for e in re.finditer(r'\\(begin|end)\{enumerate\}', s[m.end():]):
            depth += 1 if e.group(1) == 'begin' else -1
            if depth == 0:
                j = m.end() + e.start()
                break
        else:
            raise SystemExit('tex_prep: unbalanced enumerate')
        body = s[m.end():j]
        label = opts.get('label')
        if not label:
            s = s[:m.start()] + r'\begin{enumerate}' + body + s[j:]
            continue
        label = re.sub(r'\\textup\{((?:[^{}]|\{[^{}]*\})*)\}', r'\1', label)
        ref = re.sub(r'\\textup\{((?:[^{}]|\{[^{}]*\})*)\}', r'\1', opts.get('ref', label))
        n = int(opts.get('start', '1') or 1) - 1
        # items of this list: \item at depth 0 (inner environments skipped)
        out, k, depth = [], 0, 0
        toks = list(re.finditer(r'\\begin\{[^}]*\}|\\end\{[^}]*\}|\\item\b(\[[^\]]*\])?|\\label\{([^{}]*)\}', body))
        cur_ref = None
        for t in toks:
            out.append(body[k:t.start()]); k = t.end()
            x = t.group(0)
            if x.startswith(r'\begin'):
                depth += 1; out.append(x)
            elif x.startswith(r'\end'):
                depth -= 1; out.append(x)
            elif x.startswith(r'\item') and depth == 0:
                n += 1
                if t.group(1):
                    cur_ref = None
                    out.append(x)
                else:
                    cur_ref = counter_text(ref, n)
                    out.append(r'\item[' + counter_text(label, n) + ']')
            elif x.startswith(r'\label') and depth == 0 and cur_ref is not None:
                out.append(r'\tmitemlabel{' + t.group(2) + '}{' + cur_ref + '}')
            else:
                out.append(x)
        out.append(body[k:])
        s = s[:m.start()] + r'\begin{enumerate}' + ''.join(out) + s[j:]


def tags(s):
    r"""\tag{T} in an equation -> marker \tmtag{T} (math, without $):
    tex_post.py gives the equation the number T without counting it.
    \tag anywhere else stops the build."""
    def rep(m):
        body = m.group(2)
        t = re.search(r'\\tag\{((?:[^{}]|\{[^{}]*\})*)\}', body)
        if not t:
            return m.group(0)
        tag = t.group(1).strip()
        if tag.startswith('$') and tag.endswith('$'):
            tag = tag[1:-1]
        return '\\begin{equation}' + body[:t.start()] + body[t.end():] + '\\tmtag{' + tag + '}\\end{equation}'
    # (equation* too: \tag numbers it)
    s = re.sub(r'\\begin\{equation(\*?)\}(.*?)\\end\{equation\1\}', rep, s, flags=re.S)
    m = re.search(r'\\tag\*?\{', s)
    if m:
        raise SystemExit('tex_prep: \\tag outside an equation: ' + s[max(0, m.start() - 80):m.start() + 40])
    return s


def groups(s):
    r"""multicols is treated as a group. The importer ignores
    \begingroup/\endgroup, so a font size set inside one would run to the end
    of the document (and swallow the bibliography): sizes and paragraph
    spacing inside a group are dropped with the group (an HTML page keeps its
    own sizes)."""
    body_start = s.find(r'\begin{document}')
    pre, body = (s[:body_start], s[body_start:]) if body_start >= 0 else ('', s)
    body = re.sub(r'\\begin\{multicols\*?\}\{\d+\}', r'\\begingroup ', body)
    body = re.sub(r'\\end\{multicols\*?\}', r'\\endgroup ', body)
    def group(m):
        g = re.sub(r'\\(?:tiny|scriptsize|footnotesize|small|normalsize|large|Large)\b\s*', '', m.group(1))
        g = re.sub(r'\\setlength\{?\\(?:parindent|parskip|itemsep|columnsep)\}?\{[^{}]*\}\s*', '', g)
        return g
    body = re.sub(r'\\begingroup\b(.*?)\\endgroup\b', group, body, flags=re.S)
    if re.search(r'\\(?:begingroup|endgroup)\b', body):
        raise SystemExit('tex_prep: nested or unbalanced \\begingroup/\\endgroup')
    return pre + body


# a \makeatletter block that only sets the layout of the table of contents
# (dotted lines, widths of the numbers): an HTML table of contents has none
TOC_LAYOUT = [r'\\renewcommand\*?\s*\{?\\l@(?:part|chapter|(?:sub)*section|(?:sub)?paragraph|figure|table)\}?'
              r'\s*\{\\@dottedtocline\{\d\}\{[0-9.]+(?:em|pt|mm|cm|in)\}\{[0-9.]+(?:em|pt|mm|cm|in)\}\}',
              r'\\renewcommand\*?\s*\{?\\@(?:pnumwidth|tocrmarg|dotsep)\}?\s*\{[0-9.]+(?:em|pt|mm|cm|in)?\}',
              # \equationalias{X} (handled by equation_alias): one more label of
              # the number of the display before it
              r'\\providecommand\{\\equationalias\}\[1\]\{\\protected@write\\@auxout\{\}\{\\string\\newlabel\{#1\}'
              r'\{\{\\theequation\}\{\\thepage\}\{\}\{equation\.\\theHequation\}\{\}\}\}\}']


def makeat(s):
    def block(m):
        rest = m.group(1)
        for k in TOC_LAYOUT:
            rest = re.sub(k, '', rest)
        # anything else stays, and numbering() stops the build
        return '' if not rest.strip() else m.group(0)
    return re.sub(r'\\makeatletter(.*?)\\makeatother', block, s, flags=re.S)


def book_matter(s):
    r"""book class: \frontmatter, \mainmatter, \backmatter dropped; a \chapter
    before \mainmatter or after \backmatter is unnumbered (\chapter*), as
    in LaTeX. Returns the text and the number of top-level headings
    (\chapter, \chapter*) before \mainmatter: they stay on the contents
    page of a document split into chapters."""
    body_start = s.find(r'\begin{document}')
    pre, body = s[:body_start], s[body_start:]
    marks = [(m.start(), m.group(1)) for m in re.finditer(r'\\(frontmatter|mainmatter|backmatter)\b', body)]
    if not marks:
        return s, 0
    out, last, mode, front = [], 0, 'main', 0
    for pos, kind in marks + [(len(body), 'end')]:
        part = body[last:pos]
        if mode in ('front', 'back'):
            part = re.sub(r'\\chapter(?![A-Za-z*])', r'\\chapter*', part)
        if mode == 'front':
            # (a list of figures or tables is a chapter heading of its own)
            front += len(re.findall(r'\\chapter(?![A-Za-z])|\\listof(?:figures|tables)\b', part))
        out.append(part)
        if kind != 'end':
            mode = {'frontmatter': 'front', 'mainmatter': 'main', 'backmatter': 'back'}[kind]
            last = pos + len(kind) + 1
    return pre + ''.join(out), front


def tocdepth(s):
    r"""\setcounter{tocdepth}{n} -> \tmtocdepth{n} (tex_post.py: the entries
    of the table of contents below that level are left out)"""
    return re.sub(r'\\setcounter\{tocdepth\}\{(\d)\}', r'\\tmtocdepth{\1}', s)


def demoted_sections(s):
    r"""\let\Saved\section \let\section\subsection ... \let\section\Saved:
    the \section commands in between (an \input chapter) are subsections;
    any other \let of a sectioning command stops the build"""
    lvl = ['section', 'subsection', 'subsubsection', 'paragraph', 'subparagraph']
    pat = re.compile(r'\\let\s*\\([A-Za-z]+)\s*\\section\s*\\let\s*\\section\s*\\(subsection|subsubsection)\b'
                     r'(.*?)\\let\s*\\section\s*\\\1\b', re.S)

    def rep(m):
        body = m.group(3)
        if re.search(r'\\let\s*\\(?:' + '|'.join(lvl) + r')\b', body):
            raise SystemExit(r'tex_prep: nested \let of sectioning commands')
        return re.sub(r'\\section(?![A-Za-z])', lambda _: '\\' + m.group(2), body)
    s = pat.sub(rep, s)
    bad = re.search(r'\\let\s*\\[A-Za-z]+\s*\\(?:' + '|'.join(lvl) + r')(?![A-Za-z])|'
                    r'\\let\s*\\(?:' + '|'.join(lvl) + r')(?![A-Za-z])', s)
    if bad:
        raise SystemExit(r'tex_prep: \let of a sectioning command not recognised: ' + s[bad.start():bad.start() + 80])
    return s


def gathered(s):
    r"""gathered alone in a display (the importer does not know it):
    \begin{equation}\label{X}\begin{gathered} rows \end{gathered}\end{equation}
    -> gather with the number (and the label) on the last row (beside it
    instead of centred); in \[ \] or equation* -> gather*. Any other use of
    gathered stops the build."""
    def rows_of(body):
        return [r for r in re.split(r'\\\\', body.strip()) if r.strip()]

    def rep(m):
        star, label, body = m.group(1), (m.group(2) or '') + (m.group(4) or ''), m.group(3)
        rows = rows_of(body)
        if star:
            return '\\begin{gather*}' + '\\\\'.join(rows) + label + '\\end{gather*}'
        return ('\\begin{gather}' + '\\\\'.join(r + '\\notag' for r in rows[:-1])
                + ('\\\\' if len(rows) > 1 else '') + rows[-1] + label + '\\end{gather}')
    s = re.sub(r'\\begin\{equation(\*?)\}\s*(\\label\{[^{}]*\})?\s*\\begin\{gathered\}((?:(?!\\end\{gathered\}).)*)'
               r'\\end\{gathered\}\s*(\\label\{[^{}]*\})?\s*\\end\{equation\1\}', rep, s, flags=re.S)
    s = re.sub(r'\\\[\s*\\begin\{gathered\}((?:(?!\\end\{gathered\}).)*)\\end\{gathered\}\s*\\\]',
               lambda m: '\\begin{gather*}' + '\\\\'.join(rows_of(m.group(1))) + '\\end{gather*}', s, flags=re.S)
    if r'\begin{gathered}' in s:
        i = s.index(r'\begin{gathered}')
        raise SystemExit('tex_prep: gathered not alone in a display: ' + s[max(0, i - 120):i + 40])
    return s


def paragraph_labels(s):
    r"""\paragraph{T}\label{L}, \subparagraph{T}\label{L}: paragraphs are
    not numbered (secnumdepth 3), so in LaTeX L refers to the enclosing
    (sub(sub))section; TeXmacs would give the paragraph's own counter. L
    gets that number (\tmitemlabel{L}{n}), counted here: sections through
    the document, subsections within sections, subsubsections within
    subsections; the starred forms count nothing. (Other numbering is
    refused by numbering().)"""
    if CHAPTERS and re.search(r'\\(?:sub)?paragraph\*?\{(?:[^{}]|\{[^{}]*\})*\}\s*(?:\\phantomsection\s*)?\\label', s):
        raise SystemExit(r'tex_prep: \paragraph\label in a book: numbers not implemented')
    sec = sub = subsub = 0
    out, k = [], 0
    for m in re.finditer(r'\\(section|subsection|subsubsection)(\*?)\{|'
                         r'\\(?:sub)?paragraph\*?\{((?:[^{}]|\{[^{}]*\})*)\}(\s*(?:\\phantomsection\s*)?)\\label\{([^{}]*)\}', s):
        if m.group(1) and not m.group(2):
            if m.group(1) == 'section':
                sec, sub, subsub = sec + 1, 0, 0
            elif m.group(1) == 'subsection':
                sub, subsub = sub + 1, 0
            else:
                subsub += 1
        elif m.group(5) is not None:
            num = '.'.join(str(n) for n in (sec, sub, subsub)[:3 if subsub else 2 if sub else 1])
            out.append(s[k:m.start()])
            out.append(m.group(0)[:m.group(0).rindex('\\label')] + r'\tmitemlabel{' + m.group(5) + '}{' + num + '}')
            k = m.end()
    out.append(s[k:])
    return ''.join(out)


def split_rows(body):
    """rows of a display (at \\\\ outside braces and inner environments) and
    the separators"""
    rows, seps, depth, env_depth, cur, i = [], [], 0, 0, [], 0
    while i < len(body):
        if body.startswith('\\begin{', i):
            env_depth += 1
        elif body.startswith('\\end{', i):
            env_depth -= 1
        c = body[i]
        if c == '{' and body[i - 1:i] != '\\':
            depth += 1
        elif c == '}' and body[i - 1:i] != '\\':
            depth -= 1
        if body.startswith('\\\\', i) and depth == 0 and env_depth == 0:
            sep = re.match(r'\\\\(\[[^\]]*\])?', body[i:]).group(0)
            rows.append(''.join(cur)); seps.append(sep); cur = []; i += len(sep)
            continue
        cur.append(c); i += 1
    rows.append(''.join(cur))
    return rows, seps


def notag_labels(s):
    r"""a \label in a \notag row of a numbered align/gather/eqnarray (or in
    any but the last row of a multline) refers, in LaTeX, to the next
    numbered row: move it there (TeXmacs would bind it to the number before
    the display)"""
    def rep(m):
        env, body = m.group(1), m.group(2)
        rows, seps = split_rows(body)
        if env == 'multline':   # only the last row carries the number
            numbered = [False] * (len(rows) - 1) + [True]
        else:
            numbered = [not re.search(r'\\(notag|nonumber)\b', r) and r.strip() != '' for r in rows]
        pending = []
        for r in range(len(rows)):
            if not numbered[r]:
                labs = re.findall(r'\\label\{[^{}]*\}', rows[r])
                if labs:
                    pending += labs
                    rows[r] = re.sub(r'\\label\{[^{}]*\}', '', rows[r])
            elif pending:
                rows[r] = rows[r] + ''.join(pending); pending = []
        if pending:
            nums = [r for r in range(len(rows)) if numbered[r]]
            if not nums:
                raise SystemExit('tex_prep: \\label in an unnumbered display: ' + ''.join(pending))
            rows[nums[-1]] += ''.join(pending)
        out = rows[0]
        for sep, r in zip(seps, rows[1:]):
            out += sep + r
        return '\\begin{%s}%s\\end{%s}' % (env, out, env)
    return re.sub(r'\\begin\{(align|gather|eqnarray|multline)\}(.*?)\\end\{\1\}', rep, s, flags=re.S)


def references(s):
    """the labels referred to by \\ref, \\eqref, \\autoref, \\pageref,
    \\hyperref[...]"""
    body = s[s.find(r'\begin{document}'):]
    out = re.findall(r'\\(?:ref|eqref|autoref|pageref|cref|Cref)\*?\{([^{}]*)\}', body)
    out += re.findall(r'\\hyperref\[([^\]]*)\]', body)
    return [x.strip() for r in out for x in r.split(',')]


def bibliography(s):
    r"""\bibliography{a,b}: the databases, concatenated into OUT/references.bib"""
    m = re.findall(r'\\bibliography\{([^{}]*)\}', s)
    if len(m) > 1:
        raise SystemExit(r'tex_prep: more than one \bibliography')
    if not m:
        return
    data = []
    for name in m[0].split(','):
        path = find(name.strip(), '.bib')
        inputs.append(os.path.relpath(path, REPO))
        data.append(open(path, encoding='utf-8').read())
    open(os.path.join(OUT, 'references.bib'), 'w', encoding='utf-8').write('\n'.join(data))


# documents whose flattened source is larger are split into chapter pages
SPLIT_BYTES = 500000


def slug(t):
    t = re.sub(r'[^a-z0-9]+', '-', t.lower()).strip('-')
    if len(t) > 50:
        t = t[:50].rsplit('-', 1)[0]
    return t or 'section'


def chapters(s, bib, skip=0):
    r"""the top-level sections of the body (\section, \section*) and the
    bibliography, in order: number (None for \section*), title, the name of
    its page (<n>-<slug>, or <slug>; "references" for the bibliography) and
    the labels defined in it. (Labels before the first section stay on the
    contents page.)"""
    body = s[s.find(r'\begin{document}'):]
    out, n = [], 0
    top = 'chapter' if CHAPTERS else 'section'
    # (in a book, a list of figures or tables is a front-matter chapter heading)
    lists = r'|\\listof(?:figures|tables)\b' if CHAPTERS else ''
    heads = list(re.finditer(r'\\' + top + r'(\*?)\s*\{|\\tmsetcounter\{' + top + r'\}\{(\d+)\}' + lists, body))
    seen = 0
    for m in heads:
        if m.group(2) is not None:         # \setcounter{chapter}{N}
            n = int(m.group(2))
            continue
        seen += 1
        if seen <= skip:                   # front matter: on the contents page
            continue
        if m.group(0).startswith('\\listof'):
            raise SystemExit('tex_prep: a list of figures or tables outside the front matter')
        title = latex_text(body[m.end():balanced(body, m.end() - 1) - 1])
        if m.group(1):
            name = slug(title)
            out.append({'number': None, 'title': title, 'file': name, 'start': m.start()})
        else:
            n += 1
            out.append({'number': n, 'title': title, 'file': f'{n}-{slug(title)}', 'start': m.start()})
    if bib:
        out.append({'number': None, 'title': 'References', 'file': 'references',
                    'start': body.find(r'\bibliography{')})
    for i, c in enumerate(out):
        end = out[i + 1]['start'] if i + 1 < len(out) else len(body)
        c['labels'] = re.findall(r'\\(?:label|tmitemlabel)\{([^{}]*)\}', body[c['start']:end])
        del c['start']
    names = [c['file'] for c in out]
    if len(set(names)) != len(names):
        raise SystemExit('tex_prep: two top-level sections give the same page name: ' + ', '.join(names))
    return out


def main():
    s = read(os.path.join(REPO, SRC))
    if r'\begin{document}' not in s:
        raise SystemExit(f'tex_prep: {SRC} has no \\begin{{document}}')
    pre = s.split(r'\begin{document}')[0]
    title = re.search(r'\\title\{((?:[^{}]|\{[^{}]*\})*)\}', pre)
    meta = {'source': SRC, 'title': latex_text(title.group(1)) if title else None, 'preamble': pre}
    global CHAPTERS
    cls = re.search(r'\\documentclass\s*(?:\[[^\]]*\])?\s*\{([^{}]*)\}', pre)
    meta['class'] = cls.group(1) if cls else 'article'
    CHAPTERS = meta['class'] in ('book', 'report')
    if CHAPTERS:
        s, meta['front_headings'] = book_matter(s)
        # \hypersetup in the body (PDF page anchors) dropped; short titles of
        # sectioning commands dropped (the importer keeps "[...]" as text)
        b = s.find(r'\begin{document}')
        s = s[:b] + strip_braced(s[b:], 'hypersetup')
        s = re.sub(r'(\\(?:chapter|section|subsection|subsubsection)\*?)\[[^\[\]]*\]\s*\{', r'\1{', s)
    s, meta['figures'] = figures(s, pre)
    s = makeat(s)
    s = tocdepth(s)
    s = rename_macros(s)
    s = s.replace(r'\today', commit_date())
    meta['theorems'] = numbering(s)
    for t in meta['theorems']:
        if 'format' in t:   # (tex_post.py sets the format)
            s = re.sub(r'\\renewcommand\*?\{\\the' + t['env'] + r'\}\{\\' + t['format'] + r'\{' + t['env'] + r'\}\}', '', s)
        # \setcounter{X}{N}: marker, an assignment of the counter (tex_post.py)
        s = re.sub(r'\\setcounter\{' + re.escape(t['env']) + r'\}\{(\d+)\}',
                   lambda m, e=t['env']: '\\tmsetcounter{%s}{%s}' % (e, m.group(1)), s)
    # \\numberwithin{equation}{section} (the only one numbering() lets
    # through): equations numbered section.n, reset with the section
    meta['equations_within'] = 'section' if re.search(r'\\numberwithin\{equation\}\{section\}', pre) else ''
    if CHAPTERS and not meta['equations_within']:
        meta['equations_within'] = 'chapter'     # the default of book and report
        # \setcounter{chapter}{N}: the next chapter is N+1 (tex_post.py)
        s = re.sub(r'\\setcounter\{chapter\}\{(\d+)\}', r'\\tmsetcounter{chapter}{\1}', s)
    if re.search(r'\\numberwithin', s.split(r'\begin{document}', 1)[1]):
        raise SystemExit(r'tex_prep: \numberwithin in the body of the document')
    s = equation_alias(s)
    s = demoted_sections(s)
    s = gathered(s)
    s = notag_labels(s)
    s = tags(s)
    s = list_labels(s)
    s = paragraph_labels(s)
    s = contents_lines(s)
    s = short_captions(s)
    s = bibliography_group(s)
    s = groups(s)
    s = longtables(s)
    # \begin{aligned} followed by whitespace and "[": amsmath reads an
    # optional position argument only right after the \begin, so "[...]"
    # there is text (e.g. a coefficient [z_1z_2]H); the importer skips the
    # whitespace and takes it as the argument, a malformed aligned that
    # stops the HTML export. \lbrack keeps the LaTeX meaning.
    s = re.sub(r'(\\begin\{(?:aligned|gathered)\})(\s+)\[', r'\1\2\\lbrack ', s)
    s = pagination(s)
    s = re.sub(r'(\\begin\{(?:enumerate|itemize|description)\})\[[^\]]*\]', r'\1', s)
    s = titles(s, [t['env'] for t in meta['theorems']] + ['proof'])
    s = strip_command(s, 'textup')
    # \operatorname*{argmin}: the importer reads the star as a factor
    s = s.replace(r'\operatorname*{', r'\operatorname{')
    os.makedirs(OUT, exist_ok=True)
    open(os.path.join(OUT, 'doc.tex'), 'w', encoding='utf-8').write(s)
    meta['displays'] = display_rows(s)
    meta['labels'] = labels(s)
    dup = sorted({l for l in meta['labels'] if meta['labels'].count(l) > 1})
    if dup:
        raise SystemExit(f'tex_prep: {SRC}: labels defined twice: ' + ', '.join(dup))
    defined = set(meta['labels'])
    meta['undefined_refs'] = sorted({r for r in references(s) if r not in defined})
    for r in meta['undefined_refs']:
        print(f'tex_prep: warning: {SRC}: reference to a label the document does not define: {r}')
    bibliography(s)
    meta['bibliography'] = os.path.exists(os.path.join(OUT, 'references.bib'))
    meta['chapters'] = chapters(s, meta['bibliography'], meta.get('front_headings', 0))
    meta['split_heading'] = 'h1' if CHAPTERS else 'h2'
    # a large document is published as one page per top-level section
    # (build.sh, split.py): its contents page and its chapters
    meta['split'] = len(s.encode()) > SPLIT_BYTES and len(meta['chapters']) >= 2
    json.dump(meta, open(os.path.join(OUT, 'meta.json'), 'w', encoding='utf-8'), ensure_ascii=False)
    open(os.path.join(OUT, 'inputs.txt'), 'w').write(''.join(f + '\n' for f in sorted(set(inputs))))
    print(f'tex_prep: {SRC}: {len(set(inputs))} files, {len(s.splitlines())} lines')


main()
