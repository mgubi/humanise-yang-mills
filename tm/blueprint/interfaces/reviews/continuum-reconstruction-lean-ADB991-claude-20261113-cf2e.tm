<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../outline.tm><ym-nav-sep><hlink|Unit
  plan|../../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../index.tm><ym-nav-sep><hlink|Manuscript|../../../manuscript/index.tm><ym-nav-sep><hlink|Monograph|../../../manuscript/existence.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Renewed review of the N1 response: construction-to-reconstruction
  note (#160, PR #244)><label|renewed-review-of-the-n1-response-construction-to-reconstruction-note-160-pr-244>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Method and
    limits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Check of each
    new statement> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Optional
    points> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Checks run>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Handoff>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>
  </table-of-contents>

  <\itemize-minus>
    <item>Reviewed file: <verbatim|blueprint/interfaces/continuum-reconstruction.md>
    at draft PR #244, head <verbatim|dcb24ba3e0c5b2b7e211365481ca14d131e88a32>.

    <item>Content SHA-256: <verbatim|5213d9dd0a1f1cfdc64da5319b8bc55a9c027386317eadb52e409d59e192e822>.
    This matches the hash in the author handoff
    (<hlink|https://github.com/hairer/humanise-yang-mills/issues/160#issuecomment-6863764244|https://github.com/hairer/humanise-yang-mills/issues/160#issuecomment-6863764244>).

    <item>Delta reviewed: <verbatim|6097bd5..dcb24ba>, one commit ("docs:
    classify reconstruction quotient facts accurately"), 2 lines changed,
    both in the fifteen-clause table (rows <verbatim|injective> and
    <verbatim|represents>). At <verbatim|6097bd5> the note had SHA-256
    <verbatim|3df158a0\<ldots\>a238c9>, the version reviewed in #246.

    <item>Base: <verbatim|codex/existence-monograph> @
    <verbatim|69b2631f7a3d3c4176ca0084d8607cb9d8d124a2>. Against the base, PR
    #244 still changes only this one file.

    <item>Source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>
    (<verbatim|Lean/>). <verbatim|git diff --quiet 69b2631 dcb24ba -- Lean>
    reports no change.

    <item>Role: Lean correspondence, renewed, limited to the delta.

    <item>Human reviewer: ADB991. No acceptance is recorded.

    <item>Agent assistance: Claude Code (Anthropic), running as a scheduled
    agent on behalf of ADB991 (session <verbatim|ADB991-claude-20261113-cf2e>),
    did the inspection and wrote this report. ADB991 had not read it before
    it was submitted. No subagents were used.

    <item>Review task: <hlink|issue #160|https://github.com/hairer/humanise-yang-mills/issues/160>,
    claim <hlink|https://github.com/hairer/humanise-yang-mills/issues/160#issuecomment-6864323021|https://github.com/hairer/humanise-yang-mills/issues/160#issuecomment-6864323021>.

    <item>Independence: ADB991 wrote reviews #228 and #246, which requested
    these changes. It did not write the note (#18, #170) or the author
    responses (#244).

    <item>Outcome: <strong|N1 resolved. No change required.> The rest of the
    note is unchanged since #246, so that review's findings on R1\UR5 still
    apply to this version.
  </itemize-minus>

  <section|Method and limits><label|method-and-limits>

  Evidence level: source text read at the pin, including binders and
  <verbatim|variable> scopes. <strong|Nothing was elaborated.> Mathlib is
  unreachable from this sandbox, so <verbatim|lake> cannot build
  dependencies. Files read: <verbatim|Lean/YM/Euclid/Null.lean> 1\U105 and
  its section structure (<verbatim|variable>, <verbatim|section>,
  <verbatim|end> lines); <verbatim|Lean/YM/Euclid/Union.lean> 1\U32.

  <section|Check of each new statement><label|check-of-each-new-statement>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Statement
  in the new cells>>|<cell|<strong|Source>>|<cell|<strong|Verdict>>>|<row|<cell|For
  every table, <verbatim|S.Field d = L.Ref d \<#29F8\> S.null
  d>>|<cell|<verbatim|abbrev Field (d : \<bbb-N\>) := L.Ref d \<#29F8\>
  S.null d> (Null.lean 74), in <verbatim|namespace Table> under
  <verbatim|variable (S : Table L)> only (Null.lean 28\U29). The first extra
  hypothesis, <verbatim|H : S.RealSpin>, enters at line 112, after all the
  declarations used here.>|<cell|Accurate.>>|<row|<cell|<verbatim|null> is
  the kernel of <verbatim|replies>>|<cell|<verbatim|def null (d : \<bbb-N\>)
  := LinearMap.ker (S.replies d)> (Null.lean 34); <verbatim|replies> pairs a
  label with every separated exterior word (Null.lean 31\U32, structure
  <verbatim|Exterior> 22\U26).>|<cell|Accurate.>>|<row|<cell|The induced
  response map <verbatim|S.spectra d> is injective
  (<verbatim|S.faithfully>)>|<cell|<verbatim|spectra d := (S.null d).liftQ
  (S.replies d) le_rfl> (93); <verbatim|faithfully d : Injective (S.spectra
  d)>, by <verbatim|ker_liftQ_eq_bot> (97\U98).>|<cell|Accurate.>>|<row|<cell|Its
  codomain restriction <verbatim|S.pin d> remains
  injective>|<cell|<verbatim|pin d := (S.spectra d).codRestrict
  S.observations \<ldots\>> (Union.lean 26\U27); <verbatim|pin_inj> from
  <verbatim|S.faithfully> (29\U30), under <verbatim|variable (S : Table L)>
  only (20\U21).>|<cell|Accurate.>>|<row|<cell|<verbatim|S.project d> is the
  surjective quotient map>|<cell|<verbatim|abbrev project (d : \<bbb-N\>) :=
  (S.null d).mkQ> (75); <verbatim|onto d : Surjective (S.project d)>
  (84).>|<cell|Accurate.>>|<row|<cell|<verbatim|S.representative d> is a
  chosen linear section, <verbatim|S.project d (S.representative d v) = v> by
  <verbatim|S.rep>>|<cell|<verbatim|representative d : S.Field d
  \<rightarrow\>\<#2097\>[\<bbb-C\>] L.Ref d>, the <verbatim|choose> of
  <verbatim|exists_rightInverse_of_surjective> (87\U88); <verbatim|rep>
  (90\U91) is the stated identity.>|<cell|Accurate. "Chosen" is right: the
  section is a noncanonical choice, which does not matter for the
  clause.>>|<row|<cell|"a quotient fact, not an additional analytic input"
  (both rows)>|<cell|No hypothesis on the table beyond <verbatim|S : Table L>
  is used.>|<cell|Accurate.>>>>>

  The <verbatim|acts> row still separately requires the nonzero grade-zero
  unit (<verbatim|S.alive>) and the faithful realization, and the
  <verbatim|covers> row the derivative plan. The new wording does not blur
  these, which was the concern behind N1.

  <section|Optional points><label|optional-points>

  N2 and N3 of #246 (optional wording) are not addressed in this delta. They
  stay optional.

  <section|Checks run><label|checks-run>

  <\itemize-minus>
    <item><verbatim|git diff --stat 6097bd5 dcb24ba>: one file, 2 insertions,
    2 deletions.

    <item><verbatim|git diff --name-only 69b2631 dcb24ba>: only
    <verbatim|blueprint/interfaces/continuum-reconstruction.md>.

    <item><verbatim|git diff --quiet 69b2631 dcb24ba -- Lean>: no change.

    <item><verbatim|sha256sum> of the note at <verbatim|dcb24ba>:
    <verbatim|5213d9dd\<ldots\>e192e822>, which matches the handoff.

    <item><verbatim|python3 scripts/check_blueprint.py> and <verbatim|python3
    -m unittest discover -s tests> on this report branch (results in the PR
    body).

    <item>Not run: Lean elaboration and <verbatim|#print axioms> (Mathlib
    unreachable); no LaTeX, since the delta is Markdown only.
  </itemize-minus>

  <section|Handoff><label|handoff>

  With N1 resolved, the correspondence review of this note (#228, #246, this
  report) has no open required change. The note can go to human acceptance.
  This is an agent-assisted review, not an acceptance.
</body>

<\initial>
  <\collection>
    <associate|html-title|Renewed review of the N1 response:
    construction-to-reconstruction note (#160, PR #244) \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|3>>
    <associate|auto-4|<tuple|4|3>>
    <associate|auto-5|<tuple|5|3>>
    <associate|check-of-each-new-statement|<tuple|2|2>>
    <associate|checks-run|<tuple|4|3>>
    <associate|handoff|<tuple|5|3>>
    <associate|method-and-limits|<tuple|1|1>>
    <associate|optional-points|<tuple|3|3>>
    <associate|renewed-review-of-the-n1-response-construction-to-reconstruction-note-160-pr-244|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Method
      and limits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Check
      of each new statement> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Optional
      points> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Checks
      run> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Handoff>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>