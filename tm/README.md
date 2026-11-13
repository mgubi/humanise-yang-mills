# TeXmacs version of the documentation

This folder holds a GNU TeXmacs version of the Markdown pages of the
repository and of the LaTeX manuscript, and an HTML site exported from it.
The pages are found automatically: every `*.md` tracked in git (or
untracked and not ignored), except under `tm/`, `.github/` (issue and pull
request templates, task drafts), `Lean/` (the imported formalisation;
links to its files go to GitHub) and `blueprint/units/*/handoff/` (the
agents' working files of each proof unit: ledgers, hashes, validation
notes; links to them go to GitHub too). A new page is picked up by the next build
without any change here. The LaTeX manuscript (`manuscript/main.tex` and
its `\input` files) becomes one more document, `manuscript/main.tm`. The
Markdown and LaTeX files are the source: everything here except the
scripts, the styles and this file is generated, and the build only reads the
sources.

This folder and `.github/workflows/texmacs-site.yml` live on the branch
`texmacs-site` of the fork `mgubi/humanise-yang-mills`, which follows
`hairer/humanise-yang-mills` (`main`); the site is published on the branch
`gh-pages` of the fork (GitHub Pages).

## Regenerate

```sh
tm/build.sh            # Markdown -> .tm -> HTML, only what changed
tm/build.sh --no-html  # Markdown -> .tm only
tm/build.sh --html     # HTML only, from the .tm files in tm/
tm/build.sh --full     # rebuild everything (combines with the two above)
tm/publish.sh          # copy tm/html/ to gh-pages and push (--dry-run: do not push)
```

Then open `tm/html/index.html`. A full build takes about 35 seconds, a
build after editing one page about 8 seconds, and a build with nothing to do
a fraction of a second. Builds are reproducible.

Requirements:
- TeXmacs Upsilon, Qt port (`TeXmacs Upsilon Qt.app` or `TeXmacs
  Upsilon.app`, looked for in `/Applications`, `~/Applications` and
  `~/Downloads`; or set `TEXMACS_BIN`, e.g. to the `AppRun` of the Linux
  AppImage). The Markdown importer exists only in Upsilon.
- The `max-html` plugin (default `~/.TeXmacs/plugins/max-html`, or set
  `MAX_HTML_DIR`; it comes from `plugins/max-html` of
  `mgubi/mgubi.github.io`); its stylesheet and script are copied next to
  the pages.
- Python 3.

TeXmacs runs headless with a private home folder, in a temporary folder
that is deleted afterwards (keep it with `YM_BUILD_DIR=dir`). The generated
files are installed only if every step succeeds.

### Incremental builds

After every successful build, `scripts/plan.py` writes
`tm/.build-state.json` (git-ignored): for every page a fingerprint of what
its `.tm` is made from (the page as patched by `prep.py`, with every link
resolved against the other pages, plus the navigation data it uses) and the
hashes of the installed `.tm` and `.html`. Everything is rebuilt when there
is no record, with `--full`, when the set of pages changed, or when the
tools changed (`tm/scripts/`, `tm/resources/`, the styles, `tm/build.sh`,
`max-html`, the TeXmacs binary); otherwise only the pages whose fingerprint
changed or whose output is missing or was edited. Content hashes, not
`git diff`, decide: they also see uncommitted edits. The pages of a proof
unit also depend on the list of units (`blueprint/units/*/unit.json`).

After an incremental build the links of the whole site are checked; a
broken link that the last full build did not have triggers a full rebuild.
Broken links that a full build also gives come from the Markdown and are
printed as a warning.

## Continuous integration

`.github/workflows/texmacs-site.yml` (on `texmacs-site`, the default branch
of the fork) runs every hour, on every push to `texmacs-site` and by hand
(input `force`). It merges `main` of `hairer/humanise-yang-mills` into
`texmacs-site`; if the result is the commit the published site was built
from (`.source-commit` on `gh-pages`) it stops. Otherwise it installs
TeXmacs Upsilon (the Linux AppImage of the release `upsilon-latest` of
`mgubi/texmacs`, extracted; `libEGL` and friends from conda-forge) and
`max-html`, runs `tm/build.sh --full`, commits the regenerated documents to
`texmacs-site` and publishes `tm/html` with `tm/publish.sh`. The home page
names the upstream revision it was built from, with a link to the commit
(`scripts/stamp.py`).

The workflows of the upstream repository (`blueprint.yml`,
`sync-lean-source.yml`) come with every merge but must not run on the fork:
`sync-lean-source.yml` runs every half hour with write access. They are
disabled in the fork's Actions settings (`gh workflow disable`), not
deleted, so that merges from upstream do not conflict. When upstream changes
them, GitHub refuses to let the default `GITHUB_TOKEN` push the merge (it
may not update workflow files) and the run fails at "Commit regenerated
documents"; a repository secret `SITE_PUSH_TOKEN` (a token with the
`workflow` scope), if set, is used for the pushes instead.

## Layout

| path | what |
|---|---|
| `build.sh` | the driver |
| `publish.sh` | copies `html/` to `gh-pages` and pushes |
| `ym-outline.ts` | the style package (navigation bars, page title, HTML renderings, MathJax configuration); uses `max-html` |
| `ym-manuscript.ts` | the manuscript's package, after `ym-outline`: numbered sections, equations through the document, MathJax `\hyperref` |
| `resources/ym-outline.css` | additions to `max-html.css` for the site |
| `scripts/prep.py` | step 1: patched copy of the Markdown (links, anchors, placeholders), the list of proof units |
| `scripts/tmio.scm` | TeXmacs side: import, writing the `.tm`, tag check, typesetting and HTML export |
| `scripts/post.py`, `scripts/stree.py` | step 3: rewrite of the imported trees into native TeXmacs, navigation |
| `scripts/tex_prep.py`, `scripts/tex_post.py` | the manuscript: LaTeX patches before the import, native rewrite after it |
| `scripts/corkfix.py` | text inside formulas written in UTF-8 in the HTML (see below) |
| `scripts/normalize_ids.py` | reproducible link ids in the saved documents |
| `scripts/plan.py` | incremental builds: what to rebuild, and the record `.build-state.json` |
| `scripts/linkcheck.py` | links and anchors of the whole site |
| `scripts/labelcheck.py` | every `\label` of the manuscript has its anchor in the HTML |
| `scripts/stamp.py` | the revision note on the home page |
| `index.tm`, `CONTRIBUTING.tm`, `blueprint/*.tm`, `docs/*.tm`, `source/*.tm`, … | generated documents (every `README.md` becomes `index.tm`) |
| `manuscript/main.tm` | generated: the LaTeX manuscript |
| `*/ym-outline.ts`, `*/ym-manuscript.ts` | generated copies of the styles in every subfolder (TeXmacs does not resolve `../../ym-outline` in the style tuple); edit only the ones in `tm/` |
| `html/` | generated site (not committed; published on `gh-pages`) |

## Navigation

Every page starts with a bar of links to the entry points of the project
(Home, The theorem = `blueprint/public-statement`, Proof outline, Unit
plan, Blueprint, Manuscript, Glossary, Notation, Source audit, Literature =
`blueprint/external-map`, Proof standard, Contributing; `NAV` in
`post.py`); a page missing from the repository is left out. The pages of a
proof unit (`blueprint/units/<ID>/…`) have, at the top and at the bottom,
the previous and next unit (in the order of their identifiers), the unit's
identifier, title and status (from its `unit.json`), and links to its other
pages (correspondence, proof, evidence). Pages with four sections or more
get a table of contents.

## The manuscript

- `tex_prep.py` writes one flat LaTeX file (all `\input`s inlined) and
  patches what the LaTeX importer of TeXmacs does not understand (see
  mgubi/texmacs#869): optional titles of theorems and proofs become
  markers (then `<dueto|…>` and `render-proof`), `longtable` a table with a
  `tabular`, list options are dropped, pagination-only commands are dropped
  (the HTML export drops the content of an undefined block such as
  `samepage`), `\textup` and `\operatorname*` simplified, macros named
  `\path…`, `\url…` renamed for the import, `\today` replaced by the date of
  the last commit to `manuscript/`.
- It records the theorem declarations (`\theoremstyle`, `\newtheorem`), from
  which `tex_post.py` writes TeXmacs environments with the same counters in
  the preamble of the document: one counter per LaTeX counter, shared by
  the environments declared with `[counter]`, numbers `section.n` and reset
  with the section for `[section]`, unnumbered environments for
  `\newtheorem*`, `plain` → `render-theorem`, `definition`/`remark` →
  `render-remark`. Equations are numbered through the document, as in the
  article class.
- Numbering that this does not reproduce stops the build: `\numberwithin`,
  `\counterwithin`, `\setcounter` (other than `tocdepth`),
  `\renewcommand{\the…}`, `\appendix`, `\newcounter`, `\makeatletter`, a
  theorem numbered within anything but `section`, an unknown theorem style.
  Adapt `tex_prep.py`, `tex_post.py` and `ym-manuscript.ts` when that
  happens. Checked against `latexmk` on 12 November 2026: section 1,
  equation (1), Propositions 1.1 and 1.2.
- The bibliography is generated by TeXmacs from `references.bib` with a
  TeXmacs style (`plain` → `tm-plain`, …; an unknown style stops the build);
  no BibTeX program is needed. `\cite[Proposition~2.2.6]{lebl}` keeps its
  note. A bibliography that cannot be generated stops the build.
- Every `\label` must have its anchor in the HTML page (`labelcheck.py`),
  a label defined twice stops `tex_prep.py`, an undefined tag in the
  manuscript stops the build, and so do broken links inside the manuscript;
  in all these cases the build is not recorded, so CI neither commits nor
  publishes.
- `manuscript/README.md` is a page too (`manuscript/index`), with a link to
  the manuscript.

## Conversion problems and their fixes

All fixes are made by the scripts, uniformly; nothing is edited by hand.

| problem | fix |
|---|---|
| Links to `.md` pages | `prep.py`: rewritten to `.tm` (HTML: `.html`); `README.md` → `index` |
| Links to headings (`#licence`): the importer makes no anchors | `prep.py`: `<a id="slug">` after each heading (GitHub slugs) |
| Links to `Lean/…`, `unit.json`, `.tex`, `scripts/`, `LICENSE` | `prep.py`: links to the repository on GitHub (`YM_REPO_URL`, `YM_REPO_BRANCH`) |
| Placeholders such as `<issue URL>` in `templates/` are read as HTML tags and dropped (on GitHub too) | `prep.py`: written ⟨issue URL⟩ (not in code, not HTML tags, not autolinks, not in formulas) |
| Text inside a formula (`\text{(§II, …)}`) exported in the internal Cork encoding, not UTF-8 | `corkfix.py`: bytes that are not UTF-8 read as Cork and rewritten (mgubi/texmacs#869, item 11) |
| `<rightarrow>`, `<alpha>` … in text inside a formula exported as `{\rightarrow}` inside `\text{}`, shown literally by MathJax (mgubi/texmacs#869, item 12) | `post.py` warns; none at present |
| Tabs in fenced code (console output) kept as unparsed source (`md-source`) | `prep.py`: expanded to spaces (tab stops of 8) |
| The importer keeps the Markdown source next to the parsed text (`md-source`, …) | `post.py`: unwrapped; HTML comments dropped |
| `<details><summary>` (raw HTML) | `post.py`: `ym-details` (a collapsible `<details>` in HTML) |
| Code fences with a language | `post.py`: the code block is kept, the language dropped (the `mermaid` diagram of the README is shown as code) |
| Formulas split into math and text, `\mathrm{two words}`, `aligned` outside math | `post.py`: joined; `math-up` or `text`; put into `equation*` |
| `\le`, `\ge` | `post.py`: `<leqslant>`, `<geqslant>` (house convention) |
| Headings: `#` would be a numbered section | `#` → page title (`ym-title`), `##` → section, … ; no automatic numbers |
| Link ids in tables of contents made from memory addresses | `normalize_ids.py`: renumbered in order of appearance |

## Known residual issues

- Broken in the source: `blueprint/units/YM-000022/evidence/pilot-provenance.md`
  links to `glossary.md#-gauge-group-and-spacetime` (the anchor is
  `#gauge-group-and-spacetime`); reported by the build as a warning.
- Mermaid diagrams are shown as their source.
- MathJax is loaded from jsdelivr: the site needs a network connection for
  the formulas.
