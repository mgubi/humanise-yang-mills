<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../index.tm><ym-nav-sep><hlink|Manuscript|../../../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../../glossary.tm><ym-nav-sep><hlink|Notation|../../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../../CONTRIBUTING.tm>>

  <ym-unit-nav||<hlink|YM-000022: Logarithmic asymptotics of the running
  inverse coefficient (draft)|../correspondence.tm><ym-nav-sep><hlink|evidence|../evidence/index.tm><ym-nav-sep><hlink|proof|../proof.tm>|<hlink|YM-000026
  \<rightarrow\>|../../YM-000026/correspondence.tm>>

  <ym-title|Review of a proof unit><label|review-of-a-proof-unit>

  <\itemize-minus>
    <item>Unit: YM-000022, <verbatim|blueprint/units/YM-000022/>

    <item>Role: Lean correspondence

    <item>Human reviewer: mgubi (no acceptance recorded; see the last
    section)

    <item>Agent assistance: Claude Code (Claude Fable 5.2) carried out the
    inspection and wrote this report. One subagent fetched a web page for the
    mathematical review; none was used for this role.

    <item>Content SHA-256: <verbatim|367b5982bb56035d3f0cbf81641d1f0564c27a48169707b9aa64a5cf3c0b0aa2>
    (<verbatim|python3 scripts/check_blueprint.py --fingerprint YM-000022> at
    main <verbatim|fa70509>)

    <item>Manuscript files and labels: <verbatim|manuscript/pilots/running-coupling.tex>
    (<verbatim|sec:running-coefficient>, <verbatim|eq:running>,
    <verbatim|prop:uniform-extraction>, <verbatim|prop:running-asymptotic>),
    <verbatim|manuscript/preamble.tex>, <verbatim|manuscript/references.bib>.
    The section has no <verbatim|\\input>; <verbatim|manuscript/main.tex>
    inputs only the preamble, this section and the bibliography. The list in
    <verbatim|unit.json> is complete.

    <item>Source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>

    <item>Review task and PR: <hlink|issue
    #22|https://github.com/hairer/humanise-yang-mills/issues/22>, claim
    <hlink|https://github.com/hairer/humanise-yang-mills/issues/22#issuecomment-6817176547|https://github.com/hairer/humanise-yang-mills/issues/22#issuecomment-6817176547>

    <item>Outcome: changes requested (two additions to the crosswalk, one
    clarification). No mismatch was found between the stated results and the
    source.
  </itemize-minus>

  I am not an author of this unit. This is an agent-assisted review; it is
  not a human acceptance.

  <section|Findings and evidence><label|findings-and-evidence>

  Evidence levels: <strong|[E]> elaborated by me at the pinned revision;
  <strong|[S]> source text read.

  <subsection|Statements><label|statements>

  <\enumerate>
    <item><strong|<verbatim|prop:uniform-extraction> matches
    <verbatim|YM.Pert.Asymptotics.zeroUp_bound> [E].> The elaborated type is:
    for <verbatim|C : YM.Family G> with <verbatim|C.Makes> and <verbatim|0
    \<less\> \<varepsilon\>>, eventually in <verbatim|m>, for all <verbatim|N
    p : \<bbb-N\>> with <verbatim|m \<leq\> N>, <verbatim|\|C.path.\<beta\> N
    p m / C.S.scale m - 2 * b0 G\| \<less\> \<varepsilon\>>. The text's
    proposition is stated for abstract <verbatim|s_m>, <verbatim|A>,
    <verbatim|c> and so is more general; specialised to <verbatim|A = bar>,
    <verbatim|c = 2 b_0(G)> it is this statement. The Lean statement has no
    simplicity hypothesis, as the correspondence says.

    <item><strong|<verbatim|prop:running-asymptotic> matches
    <verbatim|YM.Pert.Asymptotics.comparison> [E].> Hypotheses
    <verbatim|C.Makes>, <verbatim|G.Simple>, and
    <verbatim|\<forall\>\<#1DA0\> i, i \<leq\> N i>; <verbatim|k : \<bbb-N\>
    \<rightarrow\> \<bbb-N\>> is unconstrained; conclusion <verbatim|Tendsto
    (fun i =\<gtr\> regulatorRun C (N i) (k i) i * \<sqrt\>(Real.log (C.S.a
    i)\<#207B\>\<onesuperior\>)) atTop (\<b-cal-N\> (\<sqrt\>(2 * b0
    G))\<#207B\>\<onesuperior\>)>. The text's limit <verbatim|1/\<sqrt\>(2
    b_0(G))> and its quantifiers agree.

    <item><strong|<verbatim|regulatorRun> is total [E]:> <verbatim|fun C N p
    m =\<gtr\> (\<sqrt\>(C.path.\<beta\> N p m))\<#207B\>\<onesuperior\>>, no
    hypotheses. The correspondence's remark on the totalised square root and
    inverse is accurate, and the text's "positive tail" reading is enough for
    a <verbatim|Tendsto> statement.

    <item><strong|<verbatim|b0> and <verbatim|b0_normalizes> [E]:>
    <verbatim|b0 G = 11 * G.casimir / (48 * \<pi\>^2)> and <verbatim|2 * b0 G
    = G.slopeConstant>, with <verbatim|slopeConstant = 11 * G.casimir / (24 *
    \<pi\>^2)>.
  </enumerate>

  <subsection|The input <verbatim|eq:running>><label|the-input-eqrunning>

  <\enumerate>
    <assign|item-nr|4><item><strong|<verbatim|eq:running> is
    <verbatim|YM.RG.History.Running> for <verbatim|C.path> [E].>
    <verbatim|Running A := \<forall\> \<varepsilon\> \<gtr\> 0,
    \<forall\>\<#1DA0\> m, \<forall\> N p, m \<leq\> N \<rightarrow\>
    \|A.\<beta\> N p m - A.levels.clock.hatBeta m\| \<leq\> \<varepsilon\> *
    A.S.scale m>, with <verbatim|hatBeta m = bar + G.slopeConstant *
    schedule.scale m>. It is reached by <verbatim|YM.Family.Makes.wilson>
    then <verbatim|YM.RG.History.Selected.running>, as stated.

    <item><strong|Hidden identification checked [E].> <verbatim|Running>
    measures the error against <verbatim|A.S.scale> while <verbatim|hatBeta>
    uses <verbatim|clock.schedule.scale>, and the theorems use
    <verbatim|C.S.scale>. All three are the same schedule by unfolding:
    <verbatim|Family.S C = C.path.levels.S> and <verbatim|Levels.S s =
    s.clock.schedule> are reducible abbreviations, and <verbatim|example
    \<ldots\> : C.path.levels.clock.hatBeta m = C.path.levels.clock.bar +
    G.slopeConstant * C.S.scale m := rfl> elaborates. So the single
    <verbatim|s_m> of the text is faithful.

    <item><strong|Spacing and scale [E].> <verbatim|Schedule.a S m =
    ((S.denominator m : \<bbb-N\>) : \<bbb-R\>)\<#207B\>\<onesuperior\>>,
    <verbatim|Schedule.scale S m = Real.log (S.a m)\<#207B\>\<onesuperior\>>
    (by <verbatim|rfl>), <verbatim|denominator 0 = 1>, <verbatim|denominator
    (k+1) = denominator k * block k> [S, <verbatim|Lean/YM/Lattice/Scale.lean:39\U41>],
    and <verbatim|Schedule.block_large : \<forall\> m, 3 \<leq\> block m>.
    This is the text's <verbatim|a_m = (\<big-prod\>_{j\<less\>m} B_j)^{-1}>
    with integer <verbatim|B_j \<geq\> 3>. Lean also requires each
    <verbatim|B_j> odd; the text does not use this.

    <item><strong|Indices [E].> <verbatim|History.\<beta\> A N p m = (A.rep N
    p m).beta>, where <verbatim|A.rep N p m : Rep G (levels.S.side m p)> and
    <verbatim|side m p = period p * denominator m>. So <verbatim|m> indexes
    the lattice of spacing <verbatim|a_m>, <verbatim|N> the starting level
    and <verbatim|p> the period, as in the text. The function is defined for
    all <verbatim|N, p, m>; only <verbatim|m \<leq\> N> is constrained, which
    is what the text uses.
  </enumerate>

  <subsection|Gauge data and the constant><label|gauge-data-and-the-constant>

  <\enumerate>
    <assign|item-nr|8><item><strong|Group and Lie algebra [E].>
    <verbatim|YM.Gauge> is a natural number <verbatim|n> and a closed
    subgroup of <verbatim|Matrix.unitaryGroup (Fin (n+1)) \<bbb-C\>>;
    <verbatim|repDim = n + 1>. <verbatim|G.lie> is the real subspace of
    matrices <verbatim|X> with <verbatim|exp(tX)> in the group for every real
    <verbatim|t> (<verbatim|YM.Gauge.Generates>). <verbatim|G.Simple> says
    some pair in <verbatim|G.lie> does not commute and every real subspace of
    <verbatim|G.lie> stable under brackets with <verbatim|G.lie> is
    <verbatim|\<bot\>> or <verbatim|G.lie>. The opening sentence of the
    section is a faithful reading, with <verbatim|r_G = n + 1>.

    <item><strong|Casimir normalisation [E].> <verbatim|casimir =
    (-\<big-sum\> i, trace (ad (b i) \<circ\> ad (b i))) / lieDim>, with
    <verbatim|b> the standard basis of <verbatim|Color = EuclideanSpace
    \<bbb-R\> (Fin lieDim)> and <verbatim|ad c d = projectColor (colorMat c *
    colorMat d - colorMat d * colorMat c)>. <verbatim|YM.Gauge.trace_color>
    gives <verbatim|-(colorMat c * colorMat d).trace.re = repDim *
    \<llangle\>c, d\<rrangle\>>, so the matrices <verbatim|colorMat (b i)>
    are orthonormal for <verbatim|\<langle\>X,Y\<rangle\> = -r_G^{-1} Re
    tr(XY)>. The text's formula for <verbatim|C_\<frak-g\>> is this
    definition transported along the linear isomorphism <verbatim|colorIso>,
    which preserves traces of endomorphisms. I did not inspect which inner
    product on matrices defines <verbatim|orthogonalProjectionOnto> in
    <verbatim|projectColor>; on brackets of elements of <verbatim|G.lie> the
    projection should be the identity, but I did not look for the declaration
    that proves closure under brackets.

    <item><strong|Positivity is proved differently in the text than in Lean
    [S].> <verbatim|YM.Gauge.casimir_pos>
    (<verbatim|Lean/YM/Gauge/Casimir.lean:160\U172>) picks a non-central
    <verbatim|x>, shows <verbatim|-trace (ad x * ad x) \<gtr\> 0>, and then
    uses <verbatim|trace_adjoint h>, which needs the full simplicity
    hypothesis, to convert this into positivity of the constant. The text
    instead sums <verbatim|\<\|\|\>[e_j, e_\<ell\>]\<\|\|\>\<twosuperior\>>
    over a basis and uses only noncommutativity. The text's route is a
    reorganised argument in the sense of <verbatim|docs/proof-standard.md>
    item 5 and is checked in the mathematical review, not by the formal
    source.
  </enumerate>

  <subsection|Crosswalk table and evidence><label|crosswalk-table-and-evidence>

  <\enumerate>
    <assign|item-nr|11><item>The fully qualified names in the table all exist
    and are at or near the stated lines [E, S].
    <verbatim|YM.Schedule.divergent> starts at <verbatim|Scale.lean:117> and
    its proof runs past the stated end line 120; this is immaterial.

    <item>The unit's <verbatim|evidence/lean-inspection.txt> agrees line for
    line with my own output for the same commands [E].
    <verbatim|evidence/check_sources.py> rerun on this checkout reproduces
    <verbatim|evidence/source-checksums.txt> exactly, and the seven files are
    byte-identical to my separate pinned checkout.

    <item>Axioms [E]: <verbatim|b0_normalizes>, <verbatim|zeroUp_bound>,
    <verbatim|comparison> each report <verbatim|[propext, Classical.choice,
    Quot.sound]>.
  </enumerate>

  <subsection|Commands run><label|commands-run>

  From a separate checkout of the pinned source (commit <verbatim|1dba6965>,
  which is the pinned revision plus CI and <verbatim|.gitignore> files; the
  seven source files above were compared with <verbatim|cmp> against
  <verbatim|Lean/> in this repository), toolchain
  <verbatim|leanprover/lean4:v4.32.0>, existing build artifacts, no rebuild:

  <\shell-code>
    lake env lean c1.lean \ \ # exit 0: #print/#check of the five owned
    declarations, Running, Calendar, hatBeta,

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ # History, \<beta\>,
    Selected, Family, Family.S, Makes, Schedule, a, scale, a_pos, divergent,

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ # Gauge, Simple, Color,
    colorIso, trace_color, ad, casimir, slopeConstant(_pos), axioms

    lake env lean c2.lean \ \ # exit 0: denominator, Side, side, Levels(.S),
    History.S, Rep, GaugeU, lie, Alg,

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ # ColorIndex, lieDim,
    repDim, colorScale, colorMat, projectColor, casimir_pos; three rfl
    examples

    lake env lean c3.lean \ \ # exit 0: Wilson.bare, Rep.eval, block_large,
    Generates, Mat, dimPos

    python3 blueprint/units/YM-000022/evidence/check_sources.py \<less\>this
    worktree\<gtr\> \| diff - \<ldots\>/source-checksums.txt \ \ # no
    difference

    python3 scripts/check_blueprint.py --fingerprint YM-000022
  </shell-code>

  The scratch files are not committed. No <verbatim|lake build> and no kernel
  replay were run.

  <section|Required changes and remaining
  uncertainty><label|required-changes-and-remaining-uncertainty>

  <\enumerate>
    <item><strong|Add the source of the closing remark.> "At
    <verbatim|N(i)=i> the coefficient is the bare lattice action coefficient"
    rests on <verbatim|YM.RG.History.Selected.starts>: <verbatim|(A.rep N p
    N).v = 0 \<wedge\> (A.rep N p N).eval = YM.Wilson.bare (A.\<beta\> N p
    N)>, with <verbatim|Wilson.bare \<beta\> U = exp(-\<beta\> *
    Wilson.energy U)> [E]. Neither declaration is in the crosswalk. I did not
    inspect <verbatim|Wilson.energy> or <verbatim|Rep.eval>, so whether "bare
    lattice action coefficient" needs a normalisation caveat is open.

    <item><strong|Add the declarations behind the text's own divergence
    argument.> The text proves <verbatim|s_m \<geq\> m log 3> from the
    product formula and <verbatim|B_j \<geq\> 3>. The table cites
    <verbatim|Schedule.a>, <verbatim|a_pos>, <verbatim|scale>,
    <verbatim|divergent> but not <verbatim|YM.Schedule.denominator> or
    <verbatim|YM.Schedule.block_large>, which carry these two facts.
    <verbatim|YM.Gauge.lie> / <verbatim|YM.Gauge.Generates> and
    <verbatim|YM.Gauge.repDim> would similarly anchor the opening sentence.

    <item><strong|Say that the positivity argument is not the Lean one>
    (finding 11). The correspondence currently says simplicity "is used here
    solely through <verbatim|slopeConstant_pos>" and that the section
    "supplies its elementary positivity argument explicitly"; it should state
    that this argument replaces, and does not paraphrase,
    <verbatim|casimir_pos>.
  </enumerate>

  Not checked: the definitions of <verbatim|A.Conv>, <verbatim|A.Transfer>,
  <verbatim|Calendar.Fits>, <verbatim|BlockControl> and the other fields of
  <verbatim|Family.Makes> (not used by this unit); <verbatim|Wilson.energy>;
  the inner product on <verbatim|G.Mat>; anything about how
  <verbatim|Family.Makes> is produced. The running estimate remains an
  unproved input of the unit, as the unit says.

  <section|Acceptance><label|acceptance>

  Not recorded. This report is agent-assisted evidence for a human reviewer.
  Any edit made in response changes the content fingerprint and needs a
  renewed check.

  <ym-unit-nav||<hlink|YM-000022: Logarithmic asymptotics of the running
  inverse coefficient (draft)|../correspondence.tm><ym-nav-sep><hlink|evidence|../evidence/index.tm><ym-nav-sep><hlink|proof|../proof.tm>|<hlink|YM-000026
  \<rightarrow\>|../../YM-000026/correspondence.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|Review of a proof unit \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|acceptance|<tuple|3|4>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|2>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-5|<tuple|1.4|3>>
    <associate|auto-6|<tuple|1.5|3>>
    <associate|auto-7|<tuple|2|4>>
    <associate|auto-8|<tuple|3|4>>
    <associate|commands-run|<tuple|1.5|3>>
    <associate|crosswalk-table-and-evidence|<tuple|1.4|3>>
    <associate|findings-and-evidence|<tuple|1|1>>
    <associate|gauge-data-and-the-constant|<tuple|1.3|2>>
    <associate|required-changes-and-remaining-uncertainty|<tuple|2|4>>
    <associate|review-of-a-proof-unit|<tuple|?|1>>
    <associate|statements|<tuple|1.1|1>>
    <associate|the-input-eqrunning|<tuple|1.2|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Findings
      and evidence> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Statements
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|The input
      <with|font-family|<quote|tt>|language|<quote|verbatim>|eq:running>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|Gauge data and the constant
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|Crosswalk table and evidence
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|Commands run
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Required
      changes and remaining uncertainty> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Acceptance>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>