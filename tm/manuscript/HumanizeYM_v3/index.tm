<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../index.tm><ym-nav-sep><hlink|Monograph|../existence.tm><ym-nav-sep><hlink|Glossary|../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../source/audit.tm><ym-nav-sep><hlink|Literature|../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../CONTRIBUTING.tm>>

  <ym-title|Monograph project><label|monograph-project>

  <\ym-manuscript-link>
    <strong|Read the LaTeX documents of this folder (HTML versions, converted
    from the source):>

    <\itemize>
      <item><hlink|Four-dimensional Yang\UMills theory: A constructive
      approach (monograph.tex)|monograph.tm>
    </itemize>
  </ym-manuscript-link>

  Start with <hlink|the master blueprint|BLUEPRINT.tm>. Its chapter
  specifications, shared notation and source packets are intended to let a
  writer work on one chapter without rereading the other manuscripts.

  The supplied sources are preserved unchanged. Work in this directory is an
  editorial and mathematical reconstruction of those sources, not an
  independent certification of their full existence theorem. The chapter
  audits distinguish checked arguments, imported standard results, and
  source-specific obligations still to be matched.

  <section|Working files><label|working-files>

  <\itemize-minus>
    <item><verbatim|BLUEPRINT.md>: reading order, page allocation,
    dependencies and writing assignments.

    <item><verbatim|PROGRESS.md>: current drafting status and precise
    continuation priorities.

    <item><verbatim|blueprint/editorial-contract.md>: mathematical and
    editorial rules for every writer.

    <item><verbatim|blueprint/notation.md>: shared symbols and source-to-book
    translation.

    <item><verbatim|blueprint/foundations-chapters.md>,
    <verbatim|uv-chapters.md>, <verbatim|continuum-chapters.md>: detailed
    chapter specifications and bounded reading packets.

    <item><verbatim|blueprint/*-audit.md>: source comparisons and unresolved
    hypothesis matching.

    <item><verbatim|blueprint/source-index.json> and
    <verbatim|source-index.md>: all headings and labels in 312 supplied LaTeX
    files, with snapshot line numbers and file hashes in the JSON.

    <item><verbatim|blueprint/scott-trish-comparison.md>: comparison locating
    the substantive differences between the two similar manuscripts.

    <item><verbatim|chapters/>: book text and included proof fragments.

    <item><verbatim|figures/>: editable TikZ illustrations, each included
    from the chapter that discusses it.

    <item><verbatim|audit/>: chapter-specific source checks and independent
    mathematical reviews.

    <item><verbatim|monograph.tex>, <verbatim|preamble.tex>,
    <verbatim|references.bib>: standalone LaTeX build.
  </itemize-minus>

  Find a source assertion without reading the entire manuscript:

  <\shell-code>
    python3 Output/tools/source_excerpt.py prop:restart-actual-closure
    --context 180
  </shell-code>

  From this directory, build the book with:

  <\shell-code>
    python3 tools/check_draft.py

    python3 tools/collect_references.py

    latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=build
    monograph.tex
  </shell-code>

  The most recently reviewed draft PDF is copied to <verbatim|monograph.pdf>;
  build logs and rendered review images stay in <verbatim|build/>. The
  current source covers all nineteen planned chapters, including the
  current-transfer and arbitrary-radius estimates. The illustrated PDF is 280
  pages. Its linked list of figures is on page x. Pages i\Uii state the main
  theorem and point to the proofs of its parts. Consult
  <verbatim|PROGRESS.md> for the final review record and the scope of the
  claims.
</body>

<\initial>
  <\collection>
    <associate|html-title|Monograph project \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|monograph-project|<tuple|?|1>>
    <associate|working-files|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Working
      files> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>