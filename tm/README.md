# TeXmacs version of the documentation

This folder holds a GNU TeXmacs version of the Markdown pages and of the
LaTeX documents of the repository, and an HTML site exported from it.
The pages are found automatically: every `*.md` tracked in git (or
untracked and not ignored), except under `tm/`, `.github/` (issue and pull
request templates, task drafts), `Lean/` (the imported formalisation;
links to its files go to GitHub) and `blueprint/units/*/handoff/` (the
agents' working files of each proof unit: ledgers, hashes, validation
notes; links to them go to GitHub too). A new page is picked up by the next build
without any change here. Every LaTeX document, i.e. every `.tex` file (tracked,
or untracked and not ignored) outside `tm/` that contains
`\begin{document}`, becomes one more document at the same path:
`manuscript/existence.tex` (the monograph, 250 chapters) → `manuscript/existence.tm`,
`manuscript/main.tex` → `manuscript/main.tm`, and the evidence wrappers of
proof units `blueprint/units/<ID>/evidence/wrapper.tex` →
`…/wrapper.tm`. The other `.tex` files (chapters, `preamble.tex`,
templates) are not pages; links to them go to GitHub. The
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

Then open `tm/html/index.html`. A full build takes about 8 minutes locally
(of which `manuscript/existence.tex`: about 25 s to import, 85 s to typeset
and export), a build after editing one Markdown page about 10 seconds,
after editing one chapter of the monograph about 2 minutes, and a build with
nothing to do about a second. Builds are reproducible.

Requirements:
- TeXmacs Upsilon, Qt port (`TeXmacs Upsilon Qt.app`, looked for in
  `/Applications`, `~/Applications` and `~/Downloads`, and only then
  `TeXmacs Upsilon.app` in the same places: only the Qt port honours
  `QT_QPA_PLATFORM=offscreen`, the other build opens windows; or set
  `TEXMACS_BIN`, e.g. to the `AppRun` of the Linux AppImage). The Markdown importer exists only in Upsilon.
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
resolved against the other pages, plus the navigation data it uses; for a
LaTeX document, its flattened source as written by `tex_prep.py`, so that
editing a chapter rebuilds only the documents that `\input` it), the
hashes of the installed `.tm` and `.html`, and the hashes of the tools of
the stages that made them. The tools are split by stage (`STAGES` in
`plan.py`):

| stage | tools | a change… |
|---|---|---|
| `md` | `prep.py`, `post.py`, `stree.py`, `tmio.scm`, `ym-outline.ts` | converts and exports the Markdown pages again |
| `latex` | `tex_prep.py`, `tex_post.py`, `prep.py`, `post.py`, `stree.py`, `figures.py`, `tmio.scm`, `ym-outline.ts`, `ym-manuscript.ts` | converts and exports the LaTeX documents again |
| `html` | `tmio.scm`, `corkfix.py`, `stamp.py`, `linkcheck.py`, `labelcheck.py`, `normalize_ids.py`, `resources/`, `max-html` | exports every page again |
| `build` | `build.sh`, `plan.py`, any other file of `scripts/` or `resources/` | rebuilds everything |

TeXmacs counts in the three first stages, identified by its version (on
macOS `CFBundleShortVersionString` and `CFBundleVersion` of the
application, otherwise `TEXMACS_BIN --version`), not by its path: two
installations of the same version are interchangeable. Everything is
rebuilt when there is no record (or one of an older format), with `--full`,
when the set of pages changed, or when the `build` tools changed;
otherwise only the pages whose fingerprint or tools changed, or whose
output is missing or was edited. Content hashes, not `git diff`, decide:
they also see uncommitted edits. The pages of a proof unit also depend on
the list of units (`blueprint/units/*/unit.json`).

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
| `ym-manuscript.ts` | the package of the LaTeX documents, after `ym-outline`: numbered sections, equations through the document, MathJax `\hyperref` |
| `resources/ym-outline.css` | additions to `max-html.css` for the site |
| `scripts/prep.py` | step 1: patched copy of the Markdown (links, anchors, placeholders), the list of proof units and of the LaTeX documents |
| `scripts/tmio.scm` | TeXmacs side: import, writing the `.tm`, tag check, typesetting and HTML export |
| `scripts/post.py`, `scripts/stree.py` | step 3: rewrite of the imported trees into native TeXmacs, navigation |
| `scripts/tex_prep.py`, `scripts/tex_post.py` | the LaTeX documents: LaTeX patches before the import, native rewrite after it (one run per document) |
| `scripts/corkfix.py` | text inside formulas written in UTF-8 in the HTML (see below) |
| `scripts/normalize_ids.py` | reproducible link ids in the saved documents |
| `scripts/plan.py` | incremental builds: what to rebuild, and the record `.build-state.json` |
| `scripts/linkcheck.py` | links and anchors of the whole site |
| `scripts/labelcheck.py` | every `\label` of a LaTeX document has its anchor in its HTML page |
| `scripts/stamp.py` | the revision note on the home page |
| `index.tm`, `CONTRIBUTING.tm`, `blueprint/*.tm`, `docs/*.tm`, `source/*.tm`, … | generated documents (every `README.md` becomes `index.tm`) |
| `manuscript/existence.tm`, `manuscript/main.tm`, `blueprint/units/*/evidence/wrapper.tm` | generated: the LaTeX documents |
| `*/ym-outline.ts`, `*/ym-manuscript.ts` | generated copies of the styles in every subfolder (TeXmacs does not resolve `../../ym-outline` in the style tuple); edit only the ones in `tm/` |
| `html/` | generated site (not committed; published on `gh-pages`) |

## Navigation

Every page starts with a bar of links to the entry points of the project
(Home, The theorem = `blueprint/public-statement`, Proof outline, Unit
plan, Blueprint, Manuscript = `manuscript/README.md`, Monograph =
`manuscript/existence.tex`, Glossary, Notation, Source audit, Literature =
`blueprint/external-map`, Proof standard, Contributing; `NAV` in
`post.py`); a page missing from the repository is left out. The pages of a
proof unit (`blueprint/units/<ID>/…`) have, at the top and at the bottom,
the previous and next unit (in the order of their identifiers), the unit's
identifier, title and status (from its `unit.json`), and links to its other
pages (correspondence, proof, evidence, and its LaTeX documents such as
`evidence/wrapper`). Pages with four sections or more
get a table of contents. The home page lists every LaTeX document, and the
README of a folder (`manuscript/README.md`) those of its folder.

## The LaTeX documents

- `tex_prep.py` writes, for each document, one flat LaTeX file (all `\input`s
  inlined) into `md/tex/<page>/doc.tex` of the build folder, with its
  metadata `meta.json` and its bibliography database `references.bib`.
  `\input{f}` and `\bibliography{f}` are looked for in the folder of the
  document, then in `manuscript/`: the wrappers of the proof units input
  `preamble` and `existence/…`, which LaTeX finds when it is run from
  `manuscript/` (as the units' validation notes do).
- It patches what the LaTeX importer of TeXmacs does not understand (see
  mgubi/texmacs#869): optional titles of theorems and proofs become
  markers (then `<dueto|…>` and `render-proof`), `gathered` alone in a
  display becomes `gather`/`gather*`, `[` after `\begin{aligned}` becomes
  `\lbrack`, `longtable` a table with a `tabular`, list options are
  dropped, pagination-only commands are dropped (the HTML export drops the
  content of an undefined block such as `samepage`), `\textup` and
  `\operatorname*` simplified, macros named `\path…`, `\url…` renamed for
  the import, `\today` replaced by the date of the last commit to the files
  read. The sections of an `\input` demoted with `\let\section\subsection`
  (the running-coupling pilot inside the monograph) become subsections.
- It records the theorem declarations (`\theoremstyle`, `\newtheorem`), from
  which `tex_post.py` writes TeXmacs environments with the same counters in
  the preamble of the document: one counter per LaTeX counter, shared by
  the environments declared with `[counter]`, numbers `section.n` and reset
  with the section for `[section]`, unnumbered environments for
  `\newtheorem*`, `plain` → `render-theorem`, `definition`/`remark` →
  `render-remark`. Equations are numbered through the document, as in the
  article class. A `\label` after `\paragraph` or `\subparagraph` gets the
  number of the enclosing (sub(sub))section, as in LaTeX; a `\label` in a
  `\notag` row goes to the next numbered row. `\setcounter{tocdepth}{n}`
  is honoured by the table of contents (default 3, as in the article class).
- Numbering that this does not reproduce stops the build: `\numberwithin`,
  `\counterwithin`, `\setcounter` (other than `tocdepth`),
  `\renewcommand{\the…}`, `\appendix`, `\newcounter`, a `\makeatletter`
  block (other than one that only sets the layout of the table of
  contents: `\l@section`, `\@pnumwidth`, `\@tocrmarg`, as in the monograph),
  a theorem numbered within anything but `section`, an unknown theorem
  style. Adapt `tex_prep.py`, `tex_post.py` and `ym-manuscript.ts` when that
  happens. Checked against `latexmk` on 16 November 2026: the numbers of all
  2353 labels of `manuscript/existence.tex` (sections, theorems sharing the
  `proposition` counter, equations, paragraphs) as referenced in the HTML
  agree with the `.aux` file.
- The bibliography is generated by TeXmacs from the document's database
  (copied next to the page as `<page>.bib`, one copy per document) with a
  TeXmacs style (`plain` → `tm-plain`, `alpha` → `tm-alpha`, …; an unknown
  style stops the build); no BibTeX program is needed.
  `\cite[Proposition~2.2.6]{lebl}` keeps its note. A bibliography that cannot
  be generated or that the import lost stops the build.
- Checks, per document; each failure stops the build, which is then not
  recorded, so CI neither commits nor publishes: an undefined tag; a
  `\label` without its anchor in the HTML page (`labelcheck.py`); a label
  defined twice (`tex_prep.py`); a broken link inside the page. Except: a
  `\ref` to a label that the document's LaTeX source does not define is a
  problem of the source (LaTeX prints ?? too), reported as a warning by
  `tex_prep.py` and by the link check. The wrapper of YM-000033 has 13 such
  references (its comment expects two).
- `manuscript/README.md` is a page too (`manuscript/index`), with links to
  the documents of `manuscript/`.

## Conversion problems and their fixes

All fixes are made by the scripts, uniformly; nothing is edited by hand.

| problem | fix |
|---|---|
| Links to `.md` pages | `prep.py`: rewritten to `.tm` (HTML: `.html`); `README.md` → `index` |
| Links to headings (`#licence`): the importer makes no anchors | `prep.py`: `<a id="slug">` after each heading (GitHub slugs) |
| Links to a LaTeX document (`existence.tex`) | `prep.py`: rewritten to its page (`existence.tm`, HTML: `existence.html`) |
| Links to `Lean/…`, `unit.json`, other `.tex` (chapters), `scripts/`, `LICENSE` | `prep.py`: links to the repository on GitHub (`YM_REPO_URL`, `YM_REPO_BRANCH`) |
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
| LaTeX: `gathered` (unknown to the importer) | `tex_prep.py`: `gather` (number on the last row) or `gather*` |
| LaTeX: `\iint` imported as an undefined tag; `\hyperref[L]{text}` as `hyperref*` | `tex_post.py`: `<big|iint>`; a link to `#L` |
| LaTeX: `{\rm healthy(Y_i)}`, `\mathrm{metric.strip}`, `\mathrm{bed\ denominator}` exported to MathJax as `\text{…_{\textrm{i}}}` or `\textrm{\operatorname{…}}` (errors) | `tex_post.py`: the words as `math-up`, scripts and symbols as mathematics |
| LaTeX: a `\notag` cell holding only the equation number became a cell without children, which stops the HTML export (no file written) | `tex_post.py`: an empty cell |
| Link ids in tables of contents made from memory addresses | `normalize_ids.py`: renumbered in order of appearance |

## Known residual issues

- LaTeX bibliography labels: `tm-alpha` gives `MVV25` where BibTeX's `alpha`
  gives `MKVV25` (a hyphenated surname, Munthe-Kaas), and orders the two
  `Bał85` entries by title with the leading "The" (`d`/`e` swapped).
- The evidence wrappers of YM-000033 and YM-000034 use `\mathscr` (in
  `trace-free-rank.tex`) without `mathrsfs`; LaTeX stops there, the
  conversion does not.

- Broken in the source: `blueprint/units/YM-000022/evidence/pilot-provenance.md`
  links to `glossary.md#-gauge-group-and-spacetime` (the anchor is
  `#gauge-group-and-spacetime`); reported by the build as a warning.
- Mermaid diagrams are shown as their source.
- MathJax is loaded from jsdelivr: the site needs a network connection for
  the formulas.
