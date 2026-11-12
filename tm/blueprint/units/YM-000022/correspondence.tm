<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../outline.tm><ym-nav-sep><hlink|Unit
  plan|../../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../index.tm><ym-nav-sep><hlink|Manuscript|../../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-unit-nav||<ym-nav-here|YM-000022: Logarithmic asymptotics of the
  running inverse coefficient (draft)><ym-nav-sep><hlink|evidence|evidence/index.tm><ym-nav-sep><hlink|proof|proof.tm>|<hlink|YM-000026
  \<rightarrow\>|../YM-000026/correspondence.tm>>

  <ym-title|YM-000022: running-coefficient
  asymptotic><label|ym-000022-running-coefficient-asymptotic>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Inputs and
    notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Literature and
    editorial treatment> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Correspondence
    with Lean> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Open
    obligations and review status> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Verification
    evidence> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>
  </table-of-contents>

  <strong|Draft; independent mathematical and Lean-correspondence reviews
  pending.> The authoritative mathematical text is <hlink|the LaTeX
  section|https://github.com/hairer/humanise-yang-mills/blob/main/manuscript/pilots/running-coupling.tex>,
  labels <verbatim|sec:running-coefficient>,
  <verbatim|prop:uniform-extraction>, and <verbatim|prop:running-asymptotic>.
  There is no separate Markdown proof.

  Human contributor: hairer. Agent assistance: Codex for
  exposition/integration; GPT-6 Luna for bounded Lean extraction. See
  <hlink|issue #22|https://github.com/hairer/humanise-yang-mills/issues/22>.
  The provisional VII.5/CP-03 decomposition is credited to <hlink|Scott
  Armstrong's informalization project|https://github.com/scottnarmstrong/yang-mills-informalization>.

  <section|Inputs and notation><label|inputs-and-notation>

  The section follows the shared <hlink|glossary|../../glossary.tm> and
  <hlink|notation contract|../../../docs/notation.tm>: <math|N> is the
  starting lattice level, <math|p> the period index, <math|m> the observed
  stage, and <math|s<rsub|m>=log <around|(|a<rsub|m><rsup|-1>|)>>. Its sole
  outstanding mathematical input is the uniform running estimate
  <verbatim|eq:running>, supplied by the projection chain
  <verbatim|hc.wilson.running> (qualified declarations listed below). The
  construction of the family and that estimate are outside this unit. No
  canonical prerequisite unit currently owns the estimate, so
  <verbatim|depends_on> is empty; this does not mean that the proof is
  independent of the input.

  The existing LaTeX pilot also proves scale divergence from
  <math|B<rsub|j>\<geqslant\>3> and Casimir positivity by the invariant-trace
  calculation. These elementary arguments are retained in the consolidated
  section, replacing the corresponding imported inputs in the former Markdown
  exposition. They require independent review along with the rest of the
  section; no review approvals were carried forward.

  <section|Literature and editorial treatment><label|literature-and-editorial-treatment>

  Lebl, <em|Basic Analysis I>, author-maintained HTML Ÿ2.2, Propositions
  2.2.5(iv) and 2.2.6, inspected on 11 November 2026, supplies the reciprocal
  and square-root limit rules. The section explicitly checks positivity and
  restricts to a tail. The detailed search and source evidence are in
  <hlink|the evidence record|evidence/index.tm>. The earlier pilot's upstream
  Baªaban lead remains unverified and is not used to justify the running
  estimate. Formal filter/arithmetic helpers implement the uniform estimate
  and limit steps; they do not need separate prose units.

  <section|Correspondence with Lean><label|correspondence-with-lean>

  All source references in this section use revision
  <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>. Fully qualified names
  identify interfaces; line numbers are supplementary. The exact types and
  axiom reports for the owned declarations are retained in <hlink|the Lean
  inspection output|https://github.com/hairer/humanise-yang-mills/blob/main/blueprint/units/YM-000022/evidence/lean-inspection.txt>.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Mathematical
  datum or step>>|<cell|<strong|Fully qualified
  declaration>>|<cell|<strong|Source path and location>>>|<row|<cell|Spacing
  <math|a<rsub|m>>, its positivity, <math|s<rsub|m>=log
  <around|(|a<rsub|m><rsup|-1>|)>>, and divergence>|<cell|<verbatim|YM.Schedule.a>,
  <verbatim|YM.Schedule.a_pos>, <verbatim|YM.Schedule.scale>,
  <verbatim|YM.Schedule.divergent>>|<cell|<verbatim|Lean/YM/Lattice/Scale.lean:99\U120>>>|<row|<cell|The
  family's schedule and scalar coefficients>|<cell|<verbatim|YM.Family.S>,
  <verbatim|YM.RG.History.\<beta\>>>|<cell|<verbatim|Lean/YM/Source/Construction.lean:32\U35>;
  <verbatim|Lean/YM/RG/History.lean:210\U211>>>|<row|<cell|Fixed
  <math|<wide|\<beta\>|\<bar\>>=C.<math-up|path>.<math-up|levels>.<math-up|clock>.<math-up|bar>>
  and reference value <math|<wide|\<beta\>|\<bar\>>+c*s<rsub|m>>>|<cell|<verbatim|YM.RG.Calendar.bar>,
  <verbatim|YM.RG.Calendar.hatBeta>>|<cell|<verbatim|Lean/YM/RG/History.lean:64\U79>>>|<row|<cell|Running
  input (<verbatim|eq:running>), supplied by the construction
  hypothesis>|<cell|<verbatim|YM.Family.Makes.wilson>,
  <verbatim|YM.RG.History.Selected.running>,
  <verbatim|YM.RG.History.Running>>|<cell|<verbatim|Lean/YM/Source/Construction.lean:44\U45>;
  <verbatim|Lean/YM/RG/History.lean:229\U240>>>|<row|<cell|Color
  normalization and the Casimir formula>|<cell|<verbatim|YM.Gauge.Color>,
  <verbatim|YM.Gauge.colorIso>, <verbatim|YM.Gauge.trace_color>,
  <verbatim|YM.Gauge.ad>, <verbatim|YM.Gauge.casimir>>|<cell|<verbatim|Lean/YM/Gauge/Colors.lean:42\U78,136\U149,179\U182>>>|<row|<cell|Nonabelian
  real Lie-algebra simplicity>|<cell|<verbatim|YM.Gauge.Simple>>|<cell|<verbatim|Lean/YM/Gauge/Lie.lean:178\U182>>>|<row|<cell|<math|c=11<math-up|cas><around|(|G|)>/<around|(|24*\<pi\><rsup|2>|)>\<gtr\>0>
  under simplicity>|<cell|<verbatim|YM.Gauge.slopeConstant>,
  <verbatim|YM.Gauge.slopeConstant_pos>>|<cell|<verbatim|Lean/YM/Gauge/Colors.lean:184>;
  <verbatim|Lean/YM/Gauge/Casimir.lean:174\U176>>>|<row|<cell|<math|b<rsub|0>>
  and <math|c=2*b<rsub|0>>>|<cell|<verbatim|YM.Pert.Asymptotics.b0>,
  <verbatim|YM.Pert.Asymptotics.b0_normalizes>>|<cell|<verbatim|Lean/YM/Pert/Asymptotics/RawAxis.lean:13\U14>>>|<row|<cell|Uniform
  extraction proposition>|<cell|<verbatim|YM.Pert.Asymptotics.zeroUp_bound>>|<cell|<verbatim|Lean/YM/Pert/Asymptotics/RawAxis.lean:15\U30>>>|<row|<cell|Numerical
  inverse square root>|<cell|<verbatim|YM.Pert.Asymptotics.regulatorRun>>|<cell|<verbatim|Lean/YM/Pert/Asymptotics/RawAxis.lean:35>>>|<row|<cell|Sequence
  substitution and logarithmic limit>|<cell|<verbatim|YM.Pert.Asymptotics.comparison>>|<cell|<verbatim|Lean/YM/Pert/Asymptotics/RawAxis.lean:36\U48>>>>>>

  The uniform extraction proposition weakens the construction's hypotheses to
  the exact numerical interfaces used. The source's
  <verbatim|Calendar.bar_pos> requires a positive intercept, while extraction
  works for any fixed real intercept. The source's <verbatim|zeroUp_bound>
  needs <verbatim|C.Makes> but no simplicity assumption;
  <verbatim|comparison> additionally assumes <verbatim|G.Simple>. The latter
  is used here solely through <verbatim|YM.Gauge.slopeConstant_pos>; the
  section supplies its elementary positivity argument explicitly. Neither the
  construction hypothesis nor the simplicity predicate is redefined to mean
  only the consequence used here.

  Lean defines <verbatim|Real.sqrt> and inversion on every real input,
  including negative arguments and zero. The definition of
  <verbatim|regulatorRun> has no hypotheses, as its elaborated type confirms.
  Our ordinary positive-tail definition agrees with that totalized expression
  eventually, which suffices for the exact conclusion of
  <verbatim|comparison>. There is no assertion here that all finite-prefix
  terms are positive. The introductory source comment expressly limits the
  interpretation to the numerical proxy.

  <section|Open obligations and review status><label|open-obligations-and-review-status>

  The construction and its uniform running estimate require accepted
  exposition or a checked reference before global integration can be
  complete. The numerical proxy is not identified with a coupling defined by
  physical observables. Independent correspondence and mathematical review
  remain outstanding. The unit is draft, including the elementary positivity
  and schedule arguments inherited from the earlier LaTeX pilot. No
  mathematical gap in the conditional scalar argument is presently
  identified.

  <section|Verification evidence><label|verification-evidence>

  <hlink|Original source and axiom inspection|evidence/index.tm>,
  <hlink|earlier pilot record|evidence/pilot-provenance.tm>, and <hlink|LaTeX
  migration checks|evidence/latex-migration.tm> distinguish the commands run
  at each stage. The metadata lists the section, shared preamble and
  bibliography so changes to any of them invalidate its review fingerprint.

  <ym-unit-nav||<ym-nav-here|YM-000022: Logarithmic asymptotics of the
  running inverse coefficient (draft)><ym-nav-sep><hlink|evidence|evidence/index.tm><ym-nav-sep><hlink|proof|proof.tm>|<hlink|YM-000026
  \<rightarrow\>|../YM-000026/correspondence.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|YM-000022: running-coefficient asymptotic \U
    Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|3>>
    <associate|auto-5|<tuple|5|3>>
    <associate|correspondence-with-lean|<tuple|3|2>>
    <associate|inputs-and-notation|<tuple|1|1>>
    <associate|literature-and-editorial-treatment|<tuple|2|1>>
    <associate|open-obligations-and-review-status|<tuple|4|3>>
    <associate|verification-evidence|<tuple|5|3>>
    <associate|ym-000022-running-coefficient-asymptotic|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Inputs
      and notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Literature
      and editorial treatment> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Correspondence
      with Lean> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Open
      obligations and review status> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Verification
      evidence> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>