<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../outline.tm><ym-nav-sep><hlink|Unit
  plan|../../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../index.tm><ym-nav-sep><hlink|Manuscript|../../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> YM-000033|../YM-000033/correspondence.tm>|<hlink|YM-000034:
  Trace branch moment limits and weighted washout
  (draft)|correspondence.tm><ym-nav-sep><hlink|HANDOFF|HANDOFF.tm><ym-nav-sep><ym-nav-here|validation>|>

  <ym-title|Validation of the draft public
  candidate><label|validation-of-the-draft-public-candidate>

  <section|Snapshot and scope><label|snapshot-and-scope>

  <\itemize-minus>
    <item>Target base: <verbatim|d3bb3ded6a7145087456df1f4eab886dc5f622c7> on
    <verbatim|codex/existence-monograph>.

    <item>Source pin: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>.

    <item>The owned mathematical section is byte-identical to the
    independently agent-reviewed author draft. The complete tracked
    <verbatim|Lean/> tree is identical between that author snapshot and this
    target base.

    <item>The public package contains the section, unit metadata,
    correspondence, this validation record, the integration handoff and a
    reproducible wrapper. Formal review approvals remain null.
  </itemize-minus>

  <section|Commands actually run><label|commands-actually-run>

  <\enumerate>
    <item><verbatim|python3 scripts/check_blueprint.py> \V passed, 3 units.

    <item><verbatim|TEXINPUTS=manuscript//: latexmk -pdf
    -interaction=nonstopmode -halt-on-error -outdir=../build-public34
    blueprint/units/YM-000034/evidence/wrapper.tex> \V produced a 24-page
    PDF.

    <item><verbatim|pdftoppm -f 11 -singlefile -scale-to 1300 -png
    wrapper.pdf page11> and the corresponding command for page 24 \V
    succeeded; rendered pages inspected.
  </enumerate>

  The 24-page wrapper has two undefined external labels,
  <verbatim|eq:ope-match-distance> and <verbatim|eq:ope-match-norm>, in the
  unchanged OPE-filtration support. Both labels are supplied by
  <verbatim|manuscript/existence/ope-grid.tex> in the full assembly. No
  overflow is reported. Parent rendered and inspected pages 11 and 24; these
  changed-section pages have readable formulas and intact margins.

  <section|Limits><label|limits>

  No fresh pinned-toolchain Lean elaboration,
  <verbatim|#check>/<verbatim|#print axioms> replay or kernel replay was run
  for this public candidate. The required Lean 4.32.0 environment/cache was
  unavailable locally; an unrelated installed version is not substituted.
  Textual source inspection and recorded import/axiom findings in
  <verbatim|correspondence.md> are evidence with those limits, not a claim of
  fresh kernel verification. The separately owned source audit in #37 is not
  represented as completed here.

  The wrapper validates this local section with its declared support; it does
  not build or accept the full existence argument. The retained quantitative
  inputs remain explicit draft obligations. Independent responsible human
  mathematical and Lean-correspondence acceptance is still required.

  <ym-unit-nav|<hlink|\<leftarrow\> YM-000033|../YM-000033/correspondence.tm>|<hlink|YM-000034:
  Trace branch moment limits and weighted washout
  (draft)|correspondence.tm><ym-nav-sep><hlink|HANDOFF|HANDOFF.tm><ym-nav-sep><ym-nav-here|validation>|>
</body>

<\initial>
  <\collection>
    <associate|html-title|Validation of the draft public candidate \U
    Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|1>>
    <associate|commands-actually-run|<tuple|2|1>>
    <associate|limits|<tuple|3|1>>
    <associate|snapshot-and-scope|<tuple|1|1>>
    <associate|validation-of-the-draft-public-candidate|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Snapshot
      and scope> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Commands
      actually run> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Limits>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>