#!/usr/bin/env python3
"""Repair text inside formulas in exported HTML pages.

    corkfix.py PAGE.html ...

The MathJax export of TeXmacs writes the text of <text|...> inside a formula
(\\text{...}) byte for byte from the internal Cork encoding, without
converting it to UTF-8: `\\text{(§II, p. 284)}` becomes `\\text{(\\x9fII, p.
284)}`, which is not UTF-8 (browsers show a replacement character). Every
byte that is not part of a valid UTF-8 sequence is read as a Cork character
and written in UTF-8. Valid UTF-8 is left alone, so the script is
idempotent. (Characters outside Cork, <#XXXX>, are dropped by the exporter
altogether; post.py warns about them.)
"""
import sys

# Cork (T1) 0x80-0xBF; 0xC0-0xFF is Latin-1 except 0xD7, 0xDF, 0xF7, 0xFF
CORK_HI = ('ĂĄĆČĎĚĘĞĹĽŁŃŇŊŐŔ' 'ŘŚŠŞŤŢŰŮŸŹŽŻĲİđ§'
           'ăąćčďěęğĺľłńňŋőŕ' 'řśšşťţűůÿźžżĳ¡¿£')
CORK = {0x80 + i: c for i, c in enumerate(CORK_HI)}
for b in range(0xC0, 0x100):
    CORK[b] = chr(b)
CORK.update({0xD7: 'Œ', 0xDF: 'SS', 0xF7: 'œ', 0xFF: 'ß'})


def fix(data):
    out, i, n = [], 0, 0
    while i < len(data):
        try:
            out.append(data[i:].decode('utf-8'))
            break
        except UnicodeDecodeError as e:
            out.append(data[i:i + e.start].decode('utf-8'))
            bad = data[i + e.start]
            out.append(CORK.get(bad, '�'))
            n += 1
            i += e.start + 1
    return ''.join(out), n


total = 0
for path in sys.argv[1:]:
    data = open(path, 'rb').read()
    text, n = fix(data)
    if n:
        open(path, 'w', encoding='utf-8').write(text)
        print(f'corkfix: {path.rsplit("/html/", 1)[-1]}: {n} Cork characters in formulas written in UTF-8')
        total += n
