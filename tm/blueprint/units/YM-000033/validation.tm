<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../outline.tm><ym-nav-sep><hlink|Unit
  plan|../../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../index.tm><ym-nav-sep><hlink|Manuscript|../../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> YM-000026|../YM-000026/correspondence.tm>|<hlink|YM-000033:
  Selected trace sensor and weighted Ward limit
  (draft)|correspondence.tm><ym-nav-sep><hlink|HANDOFF|HANDOFF.tm><ym-nav-sep><ym-nav-here|validation>|<hlink|YM-000034
  \<rightarrow\>|../YM-000034/correspondence.tm>>

  <ym-title|Validation of the draft public
  candidate><label|validation-of-the-draft-public-candidate>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Snapshot and
    scope> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Commands
    actually run> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Limits>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2026-11-13
    author revision (issue #33)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>
  </table-of-contents>

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
    -interaction=nonstopmode -halt-on-error -outdir=../build-public33
    blueprint/units/YM-000033/evidence/wrapper.tex> \V produced a 18-page
    PDF.

    <item><verbatim|pdftoppm -f 11 -singlefile -scale-to 1300 -png
    wrapper.pdf page11> and the corresponding command for page 18 \V
    succeeded; rendered pages inspected.
  </enumerate>

  The 18-page wrapper has no undefined references. Its inherited
  receiver-lemma paragraph has a 5.3389pt overfull box; the changed section
  has no reported overflow. Parent rendered and inspected pages 11 and 18.

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

  <section|2026-11-13 author revision (issue
  #33)><label|2026-11-13-author-revision-issue-33>

  <\itemize-minus>
    <item>Isolated checkout <verbatim|/private/tmp/ym-issue33-revision-20261113>,
    branch <verbatim|codex/issue-33-revision-20261113>; upstream branch
    fetched at <verbatim|84a6a9371caddd2f9967b9d6924e156ec097610e>. Source
    pin unchanged; <verbatim|HEAD:Lean> at the basis is
    <verbatim|328ad19b404d2db2a578319ea3e4eba4b27e34ef>.

    <item>Read the live claim, original PR #71 and mathematics/Lean review
    reports #126 with corrected R2 in #127, and the source declarations and
    their immediate inputs listed in the revised correspondence.

    <item><verbatim|python3 scripts/check_blueprint.py> passed: 4 units, no
    Lean or mathematics verified. <verbatim|git diff --check> passed during
    authoring. The final fingerprint and final staged whitespace results are
    recorded in the candidate handoff.

    <item>From <verbatim|manuscript/>, <verbatim|pdflatex
    -interaction=nonstopmode -halt-on-error -jobname=issue33
    -output-directory=/private/tmp/ym-issue33-tex
    ../blueprint/units/YM-000033/evidence/wrapper.tex> was run repeatedly;
    the final two passes exited zero, 21 pages. <verbatim|pdftoppm> rendered
    pages 14\U20; the initial render and final render of pages 19\U21 were
    inspected. A stranded lemma heading was corrected and checked. There is
    an inherited 5.3389pt overfull box in the unchanged receiver support
    chapter. The final log reports only the documented external references
    <verbatim|prop:ex-lattice-charge-bounds> (twice) and
    <verbatim|prop:ex-trace-mission-price-transfer> (once); their definitions
    exist in <verbatim|trace-local-charge.tex> and
    <verbatim|trace-mission-price.tex>, outside the wrapper.

    <item>Two attempted Python edits ran with <verbatim|manuscript/> as cwd
    while using a repository-relative path and failed with
    <verbatim|FileNotFoundError>; each was rerun successfully at repository
    root. The shell continued to a TeX build after those errors. A
    <verbatim|pdftotext> layout attempt failed because the command is
    unavailable; rendering and visual inspection used <verbatim|pdftoppm>
    instead.

    <item>No fresh Lean elaboration, target axiom print or kernel replay was
    run. The wrapper does not establish the full manuscript or the upstream
    chart, response, priced-mission and common-data producers. The
    pre-revision independent review and its fingerprint are not carried to
    changed content.

    <item>Revision unit fingerprint from <verbatim|python3
    scripts/check_blueprint.py --fingerprint YM-000033>:
    <verbatim|ad3b82466a1b69b610548e1af518251def5ac1cd4a6bc5757a91b3cc46cba4aa>.
    This fingerprints the revised correspondence and the five manuscript
    paths listed in <verbatim|unit.json>; the two prior review reports and
    null approvals are unchanged and do not certify the new fingerprint.
  </itemize-minus>

  <ym-unit-nav|<hlink|\<leftarrow\> YM-000026|../YM-000026/correspondence.tm>|<hlink|YM-000033:
  Selected trace sensor and weighted Ward limit
  (draft)|correspondence.tm><ym-nav-sep><hlink|HANDOFF|HANDOFF.tm><ym-nav-sep><ym-nav-here|validation>|<hlink|YM-000034
  \<rightarrow\>|../YM-000034/correspondence.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|Validation of the draft public candidate \U
    Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|2026-11-13-author-revision-issue-33|<tuple|4|2>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|2>>
    <associate|commands-actually-run|<tuple|2|1>>
    <associate|limits|<tuple|3|2>>
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

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2026-11-13
      author revision (issue #33)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>