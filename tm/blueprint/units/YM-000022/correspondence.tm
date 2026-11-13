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
  exposition/integration; GPT-6 Luna for bounded Lean extraction. Human
  contributor mgubi and GPT-6 Astra (Codex) supplied the bounded author
  revision responding to PR #32; see <hlink|the revision
  record|revisions/mgubi-astra-22-repair-20261113/index.tm>. See <hlink|issue
  #22|https://github.com/hairer/humanise-yang-mills/issues/22>. The
  provisional VII.5/CP-03 decomposition is credited to <hlink|Scott
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

  Hall, <em|An Elementary Introduction to Groups and Representations>,
  <hlink|arXiv:math-ph/0005032v1|https://arxiv.org/pdf/math-ph/0005032v1>, 31
  May 2000, Chapter 3, Definition 3.13 (p. 36) and Theorem 3.16 (pp. 40\U41),
  supplies the matrix Lie algebra definition and its real vector-space and
  commutator closure properties. Chapter 2, Definition 2.2 (p. 9), requires a
  subgroup closed in the general linear group; the manuscript checks this for
  the closed subgroup of the unitary group. The definition uses all real
  exponential parameters, exactly as <verbatim|YM.Gauge.Generates> and
  <verbatim|YM.Gauge.lie> do. The opening paragraph now cites these results
  directly; see the <hlink|Hall follow-up
  record|revisions/mgubi-astra-22-hall-20261113/index.tm> for the inspected
  version, verification and bibliography impact.

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
  declaration>>|<cell|<strong|Source path and location>>>|<row|<cell|Product
  formula and block lower bound used in the prose divergence
  proof>|<cell|<verbatim|YM.Schedule.denominator>,
  <verbatim|YM.Schedule.block_large>>|<cell|<verbatim|Lean/YM/Lattice/Scale.lean:29\U41>>>|<row|<cell|Spacing
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
  <verbatim|Lean/YM/RG/History.lean:229\U240>>>|<row|<cell|Initial
  coefficient is the bare Wilson action coefficient>|<cell|<verbatim|YM.RG.History.Selected.starts>,
  <verbatim|YM.RG.Rep.eval>, <verbatim|YM.Wilson.bare>,
  <verbatim|YM.Wilson.energy>, <verbatim|YM.Gauge.price>>|<cell|<verbatim|Lean/YM/RG/History.lean:174\U179,237>;
  <verbatim|Lean/YM/Wilson/Law.lean:29,58>;
  <verbatim|Lean/YM/Gauge/MatrixGroup.lean:112>>>|<row|<cell|Matrix
  representation and its positive dimension>|<cell|<verbatim|YM.Gauge>,
  <verbatim|YM.Gauge.repDim>, <verbatim|YM.Gauge.dimPos>>|<cell|<verbatim|Lean/YM/Gauge/MatrixGroup.lean:23\U26,73\U75>>>|<row|<cell|Real
  Lie algebra, skew-Hermitian generators, and bracket
  closure>|<cell|<verbatim|YM.Gauge.Generates>, <verbatim|YM.Gauge.lie>,
  <verbatim|YM.Gauge.generates_skew>, <verbatim|YM.Gauge.bracket_mem>>|<cell|<verbatim|Lean/YM/Gauge/Lie.lean:26,42\U44,126\U134,159\U176>>>|<row|<cell|Color
  normalization and the Casimir formula>|<cell|<verbatim|YM.Gauge.Color>,
  <verbatim|YM.Gauge.colorIso>, <verbatim|YM.Gauge.trace_color>,
  <verbatim|YM.Gauge.ad>, <verbatim|YM.Gauge.casimir>>|<cell|<verbatim|Lean/YM/Gauge/Colors.lean:42\U78,136\U149,179\U182>>>|<row|<cell|Transport
  of the commutator to color coordinates>|<cell|<verbatim|YM.Gauge.frobInner>,
  <verbatim|YM.Gauge.projectColor>, <verbatim|YM.Gauge.colorMat_project_self>,
  <verbatim|YM.Gauge.colorMat_ad>>|<cell|<verbatim|Lean/YM/Gauge/Colors.lean:25\U38,96\U105,152\U154>>>|<row|<cell|Nonabelian
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
  <verbatim|comparison> additionally assumes <verbatim|G.Simple> and obtains
  positivity through <verbatim|YM.Gauge.slopeConstant_pos>. Its input
  <verbatim|YM.Gauge.casimir_pos> (<verbatim|Lean/YM/Gauge/Casimir.lean:160\U172>)
  uses <verbatim|YM.Gauge.trace_adjoint> (<verbatim|Lean/YM/Gauge/Casimir.lean:140\U158>),
  which uses full simplicity to identify an invariant bilinear form with a
  scalar multiple of the color inner product. The manuscript instead gives a
  reorganized positivity proof: sum the squared commutator norms over an
  orthonormal basis and use noncommutativity. This replaces, rather than
  paraphrases, <verbatim|casimir_pos>; it needs only the nonabelian clause,
  although the section retains the source's full simplicity hypothesis. The
  new positive-definiteness and basis-independence calculations are author
  arguments requiring renewed mathematical review. Neither the construction
  hypothesis nor the simplicity predicate is redefined to mean only the
  consequence used here.

  For the closing bare-coefficient remark, <verbatim|hc.wilson.starts N p>
  identifies <verbatim|(C.path.rep N p N).eval> exactly with
  <verbatim|YM.Wilson.bare (C.path.\<beta\> N p N)>. The latter is the
  unnormalized density <verbatim|exp(-\<beta\> * energy U)>, where
  <verbatim|energy> is the sum of <verbatim|G.price> over lattice faces and
  <verbatim|G.price u = 1 - Re tr(G.mat u) / G.repDim>. Thus \Pbare lattice
  action coefficient\Q means the multiplier of this specific energy.
  <verbatim|Rep.eval> is a full represented density (an exponential times an
  activity gas), not itself an action or a coupling. The equality in
  <verbatim|starts>, rather than a general simplification of
  <verbatim|Rep.eval>, justifies the remark. No conventional physical
  coupling normalization or matching theorem is asserted.

  For the opening Casimir formula, <verbatim|trace_color> makes
  <verbatim|colorIso> an isometry from color coordinates to the Lie algebra
  with the manuscript's normalized inner product. <verbatim|colorMat_ad>,
  using <verbatim|bracket_mem> and <verbatim|colorMat_project_self>,
  transports the adjoint operator to the actual matrix commutator; hence
  traces of the conjugate endomorphisms agree. The local <verbatim|frobInner>
  instance defining the projection is the unnormalized real Frobenius inner
  product; <verbatim|colorIso> rescales by <verbatim|sqrt(repDim)>. These
  facts support the formula without treating the projection as an extra Lie
  bracket.

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
  and schedule arguments inherited from the earlier LaTeX pilot. The reports
  in <verbatim|reviews/lean-mgubi.md> and
  <verbatim|reviews/mathematics-mgubi.md> concern the earlier fingerprint
  <verbatim|367b5982bb56035d3f0cbf81641d1f0564c27a48169707b9aa64a5cf3c0b0aa2>;
  they remain unchanged historical evidence and do not review this revision.
  The independent reports in <hlink|PR #113|https://github.com/hairer/humanise-yang-mills/pull/113>
  reviewed the subsequent fingerprint <verbatim|37a404dea24a3001c320680e4b25334e619d6865178c86e3d85993bb4000168f>.
  Their required Hall definition/citation addition is addressed by the
  follow-up under <hlink|issue #114|https://github.com/hairer/humanise-yang-mills/issues/114>,
  which changes the fingerprint again and requires renewed independent
  review. Both approvals remain null. No mathematical gap in the conditional
  scalar argument is presently identified.

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
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|5|5>>
    <associate|correspondence-with-lean|<tuple|3|2>>
    <associate|inputs-and-notation|<tuple|1|2>>
    <associate|literature-and-editorial-treatment|<tuple|2|2>>
    <associate|open-obligations-and-review-status|<tuple|4|4>>
    <associate|verification-evidence|<tuple|5|5>>
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