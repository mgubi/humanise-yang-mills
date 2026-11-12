<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../index.tm><ym-nav-sep><hlink|The
  theorem|../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../blueprint/index.tm><ym-nav-sep><ym-nav-here|Manuscript><ym-nav-sep><hlink|Glossary|../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../source/audit.tm><ym-nav-sep><hlink|Literature|../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../CONTRIBUTING.tm>>

  <ym-title|Mathematical manuscript><label|mathematical-manuscript>

  <ym-manuscript-link|<hlink|Read the manuscript (HTML version, converted
  from the LaTeX source)|main.tm>>

  LaTeX is the authoritative mathematical text from the first draft onward.
  Write sections here as soon as their local statements and input interfaces
  are precise. A completed blueprint and fully proved prerequisites are not
  required before writing. State outstanding inputs exactly and track their
  status in the linked blueprint unit; never conceal a missing argument.

  <verbatim|main.tex> assembles section files with <verbatim|\\input>.
  <verbatim|preamble.tex> defines shared notation and theorem environments;
  <verbatim|references.bib> holds conventional references. The
  running-coefficient pilot is the first section, owned by
  <hlink|YM-000022|../blueprint/units/YM-000022/correspondence.tm>. Its
  blueprint contains correspondence and review evidence, not a second version
  of the proof.

  <section|Build and inspect><label|build-and-inspect>

  From the repository root, with a TeX distribution providing latexmk and
  BibTeX:

  <\shell-code>
    mkdir -p manuscript/build

    cd manuscript

    latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=build
    main.tex
  </shell-code>

  The result is <verbatim|manuscript/build/main.pdf>. Build products are
  ignored by Git. Inspect the rendered pages after changes; resolve missing
  references and layout warnings before submission. CI builds the manuscript
  as well as checking metadata.

  <section|Writing and review><label|writing-and-review>

  Use ordinary mathematical language, conventional references and the shared
  <hlink|notation contract|../docs/notation.tm>. Give complete arguments for
  substantive steps not supplied by checked references. Check every cited
  result's hypotheses. Keep Lean identifiers, audit logs, and source
  crosswalks in the blueprint.

  Create a section from <verbatim|templates/proof-unit/section.tex>; place
  its <verbatim|unit.json> and <verbatim|correspondence.md> in the canonical
  blueprint directory. List the section and all local mathematical support
  files in <verbatim|unit.json>'s <verbatim|manuscript> array, including
  nested inputs, macros and bibliography. Shared support-file edits
  invalidate every listed dependent unit's review fingerprint. Claim
  shared-file edits explicitly; adding a section also needs a bounded edit to
  <verbatim|main.tex>.

  Draft status is visible in the assembled manuscript; inclusion does not
  imply acceptance. Independent mathematical and Lean-correspondence reviews
  remain necessary. Integration checks notation, interfaces and the full
  chain of inputs; it improves the existing LaTeX rather than translating a
  separate Markdown proof.
</body>

<\initial>
  <\collection>
    <associate|html-title|Mathematical manuscript \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|build-and-inspect|<tuple|1|1>>
    <associate|mathematical-manuscript|<tuple|?|1>>
    <associate|writing-and-review|<tuple|2|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Build
      and inspect> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Writing
      and review> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>