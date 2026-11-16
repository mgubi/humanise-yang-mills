#!/usr/bin/env python3
"""Every \\label of a LaTeX document must become an anchor of its HTML page.

    labelcheck.py META.json PAGE.html [CHAPTER.html ...]

For a document split into chapter pages (split.py), the anchor must be on
exactly one of the pages given.

META.json is written by tex_prep.py ("labels": the \\label keys of the
document body). Exits with status 1, naming the labels without an element
id="label" in PAGE.html, whether or not anything refers to them: a lost
label means lost content (an undefined block whose body the exporter drops)
or a lost equation number.
"""
import json, sys
from html.parser import HTMLParser


class Ids(HTMLParser):
    def __init__(self):
        super().__init__()
        self.ids = set()

    def handle_starttag(self, tag, attrs):
        for k, v in attrs:
            if k in ('id', 'name') and v:
                self.ids.add(v)


labels = json.load(open(sys.argv[1], encoding='utf-8')).get('labels', [])
count = {}
for page in sys.argv[2:]:
    p = Ids()
    p.feed(open(page, encoding='utf-8').read())
    for i in p.ids:
        count[i] = count.get(i, 0) + 1
missing = [l for l in labels if l not in count]
twice = [l for l in labels if count.get(l, 0) > 1]
print(f'labels: {len(labels)} in the LaTeX source, {len(labels) - len(missing)} anchors in the HTML'
      + (f' ({len(sys.argv) - 2} pages)' if len(sys.argv) > 3 else ''))
if missing or twice:
    if missing:
        print('error: labels of the LaTeX source without an anchor in the HTML:', file=sys.stderr)
        for l in missing:
            print('  ' + l, file=sys.stderr)
    if twice:
        print('error: labels with an anchor on more than one page:', file=sys.stderr)
        for l in twice:
            print('  ' + l, file=sys.stderr)
    sys.exit(1)
