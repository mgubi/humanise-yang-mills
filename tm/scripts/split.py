#!/usr/bin/env python3
"""Split the HTML page of a large LaTeX document into a contents page and
one page per top-level section ("chapter").

    split.py META.json PAGE.html

META.json is written by tex_prep.py ("split", "chapters": the top-level
sections and the bibliography, with their page names and labels). The
document is imported, typeset and exported whole, so every number (sections,
theorems, equations, citations) is the one of the whole document; the
exported page is then cut at its top-level headings (<h2>, all at the top
level of <body>):

  * PAGE.html becomes the contents page: everything before the first section
    (navigation bar, title, front matter), with the table of contents in the
    page (not as the side panel), its entries linking to the chapter pages;
  * PAGE/<n>-<slug>.html, one per section, and PAGE/references.html for the
    bibliography: the navigation bar, a chapter bar (contents, previous,
    next) at the top and at the bottom, the table of contents as the side
    panel, the section;
  * every link to an anchor of the document ("#label", "#auto-12",
    "#bib-key") points to the page holding it; the other relative links of a
    chapter page get one "../" more.

Checks (each stops the build): the sections of the page are those of the
LaTeX source (count, numbers, every label of a section on its page), and
every anchor id is on exactly one page. Any old PAGE/*.html is removed
first (prep.py makes sure no Markdown page lives there).
"""
import html, json, os, re, sys

META, PAGE = sys.argv[1], sys.argv[2]
meta = json.load(open(META, encoding='utf-8'))
chapters = meta['chapters']
stem = PAGE[:-5]
base = os.path.basename(stem)
# (surrogateescape: bytes that are not UTF-8, Cork text in formulas, are
# kept as they are for corkfix.py)
s = open(PAGE, encoding='utf-8', errors='surrogateescape').read()


def fail(msg):
    raise SystemExit(f'split: {PAGE}: {msg}')


b = re.search(r'<body[^>]*>', s)
e = s.rfind('</body>')
if not b or e < 0:
    fail('no <body>')
head, body, tail = s[:b.end()], s[b.end():e], s[e:]
starts = [m.start() for m in re.finditer(r'<h2\b', body)]
if len(starts) != len(chapters):
    fail(f'{len(starts)} top-level headings in the HTML, {len(chapters)} sections in the LaTeX source')
front = body[:starts[0]]
pieces = [body[a:z] for a, z in zip(starts, starts[1:] + [len(body)])]
# the bottom unit bar or anything after the bibliography would be in the
# last piece: nothing is expected there but the bibliography itself

ID = re.compile(r'\b(?:id|name)="([^"]+)"')


def text(h):
    return ' '.join(html.unescape(re.sub(r'<[^>]+>', ' ', h)).split())


# the chapters against the LaTeX source
for c, p in zip(chapters, pieces):
    h2 = text(p[:p.find('</h2>')])
    if c['number'] is not None and not re.match(rf'{c["number"]}\D', h2):
        fail(f'heading "{h2[:60]}" is not section {c["number"]}')
    ids = set(ID.findall(p))
    lost = [l for l in c['labels'] if l not in ids]
    if lost:
        fail(f'labels of section "{c["title"]}" not on its page: ' + ', '.join(lost[:10]))
    c['heading'] = h2

# the table of contents (the max-toc block of max-html) in the front matter
toc = re.search(r'<div class="max-toc">.*?\n    </div>\n', front, re.S)
if not toc:
    fail('no table of contents (max-toc) before the first section')
toc_html = toc.group(0)
nav = re.search(r'<div class="ym-nav">.*?</div>\n', front, re.S)
toggle = re.match(r'\s*<div class="toggle".*?</div>\n', front, re.S)

# where every anchor is: page names relative to the folder of PAGE
files = [base + '/' + c['file'] + '.html' for c in chapters]
where = {}
for name, part in [(base + '.html', front.replace(toc_html, ''))] + list(zip(files, pieces)):
    for i in ID.findall(part):
        if i in where and where[i] != name:
            fail(f'anchor {i} on two pages')
        where[i] = name


def relink(part, page):
    """the links of a part of the document, as seen from page (a name
    relative to the folder of PAGE)"""
    depth = page.count('/')

    def frag(m):
        f = html.unescape(m.group(2))
        tgt = where.get(f)
        if tgt is None or tgt == page:
            return m.group(0)                       # same page, or unknown (left broken)
        rel = os.path.relpath(tgt, os.path.dirname(page) or '.')
        return f'{m.group(1)}{rel}#{m.group(2)}"'

    def other(m):
        u = m.group(2)
        if depth == 0 or re.match(r'^(?:[a-zA-Z][a-zA-Z0-9+.-]*:|/|#)', u):
            return m.group(0)
        return f'{m.group(1)}{"../" * depth}{u}"'
    part = re.sub(r'(\b(?:href|src)=")([^"]*)"', other, part)
    return re.sub(r'(\bhref=")#([^"]*)"', frag, part)


def chapter_bar(i):
    up = f'<a href="../{base}.html">Contents</a>'
    prev = (f'<a href="{chapters[i - 1]["file"]}.html">&larr; {html.escape(chapters[i - 1]["heading"])}</a>'
            if i > 0 else '')
    nxt = (f'<a href="{chapters[i + 1]["file"]}.html">{html.escape(chapters[i + 1]["heading"])} &rarr;</a>'
           if i + 1 < len(chapters) else '')
    return (f'\n    <div class="ym-chapter-nav"><span class="ym-chapter-prev">{prev}</span>'
            f'<span class="ym-chapter-up">{up}</span><span class="ym-chapter-next">{nxt}</span></div>\n')


def contents():
    """the table of contents in the page: one link per entry (the page
    numbers of the typeset document dropped)"""
    out = ['\n    <div class="ym-contents">\n      <h2 class="ym-contents-title">Contents</h2>\n']
    for m in re.finditer(r'<p([^>]*)>(.*?)</p>', toc_html, re.S):
        inner = m.group(2)
        a = re.search(r'<a href="#([^"]*)">', inner)
        if not a:
            continue
        label = inner.split('<span style="margin-left: 5mm">')[0]
        major = '<b>' in label
        label = re.sub(r'</?b>', '', label).strip()
        tgt = where.get(html.unescape(a.group(1)))
        if tgt is None:
            fail(f'table of contents entry without its heading: {a.group(1)}')
        out.append(f'      <p class="ym-toc-{1 if major else 2}"><a href="{tgt}#{a.group(1)}">{label}</a></p>\n')
    out.append('    </div>\n')
    return ''.join(out)


title = re.search(r'<title>(.*?)</title>', head, re.S)
os.makedirs(stem, exist_ok=True)
for f in os.listdir(stem):
    if f.endswith('.html'):
        os.remove(os.path.join(stem, f))
sizes = []
for i, (c, p, name) in enumerate(zip(chapters, pieces, files)):
    h = head
    if title:
        h = h.replace(title.group(0), f'<title>{html.escape(c["heading"])} &ndash; {title.group(1).strip()}</title>')
    top = (toggle.group(0) if toggle else '') + (nav.group(0) if nav else '')
    # in the navigation bar, the document itself is a link to its contents
    top = re.sub(r'<font class="ym-here">(.*?)</font>', lambda m: f'<a href="{base}.html">{m.group(1)}</a>', top)
    bar = chapter_bar(i)
    page_html = (h + relink(top, name) + bar + relink(toc_html, name) + relink(p, name) + bar + tail)
    open(os.path.join(os.path.dirname(stem), name), 'w', encoding='utf-8', errors='surrogateescape').write(page_html)
    sizes.append((len(page_html.encode(errors='surrogateescape')), name))
front = front.replace(toc_html, contents())
main = head + relink(front, base + '.html') + tail
open(PAGE, 'w', encoding='utf-8', errors='surrogateescape').write(main)
sizes.append((len(main.encode(errors='surrogateescape')), base + '.html'))
sizes.sort()
print(f'split: {base}.html: contents page and {len(chapters)} chapter pages; '
      f'largest {sizes[-1][1]} ({sizes[-1][0] // 1024} kB), smallest {sizes[0][1]} ({sizes[0][0] // 1024} kB)')
