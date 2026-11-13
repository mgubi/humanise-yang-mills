<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../outline.tm><ym-nav-sep><hlink|Unit
  plan|../../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../index.tm><ym-nav-sep><hlink|Manuscript|../../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> YM-000033|../YM-000033/correspondence.tm>|<ym-nav-here|YM-000034:
  Trace branch moment limits and weighted washout
  (draft)><ym-nav-sep><hlink|HANDOFF|HANDOFF.tm><ym-nav-sep><hlink|validation|validation.tm>|>

  <ym-title|Branch moments and trace washout: source
  correspondence><label|branch-moments-and-trace-washout-source-correspondence>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Notation and
    inputs> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <with|par-left|1tab|Source endpoint hypothesis ledger
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2>>

    <with|par-left|1tab|Exact incoming receipts and their status
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Crosswalk>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Literature and
    editorial decisions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Unresolved
    obligations and validation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>
  </table-of-contents>

  <\itemize-minus>
    <item>Issue: <hlink|https://github.com/hairer/humanise-yang-mills/issues/34|https://github.com/hairer/humanise-yang-mills/issues/34>;
    unit YM-000034.

    <item>Status: draft; formal independent acceptance remains pending.

    <item>Manuscript: <hlink|branch moments|https://github.com/hairer/humanise-yang-mills/blob/main/manuscript/existence/trace-branch-moments.tex>,
    propositions <verbatim|prop:ex-branch-moments> and
    <verbatim|prop:ex-branch-washout>.

    <item>Pinned imported source: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>;
    original extraction checkpoint <verbatim|660cada6a037210475f3f5873fdce8c4f627240c>;
    public candidate base <verbatim|d3bb3ded6a7145087456df1f4eab886dc5f622c7>.

    <item>Contributor: TrishenGunaratnam, with Codex agent assistance. Scott
    Armstrong's informalization map is credited in the parent project; it is
    navigation, not proof evidence.

    <item>Dependency: YM-000026 is a draft and has no independent acceptance.
    This unit is not integrated into its manuscript assembly; parent owns
    integration.
  </itemize-minus>

  <section|Notation and inputs><label|notation-and-inputs>

  The proof uses the same selected table, standard table, tickets,
  ultrafilter and chart across the three branches. The separation ultrafilter
  is used at each fixed original scale before the original scale tends to
  infinity. The chart sequence is indexed by <verbatim|i>, with <verbatim|k_i
  = Stern V i>, and tends to infinity by <verbatim|Gondola.growth> and
  <verbatim|Sstar>. The coefficient-limit sequence is composed with
  <verbatim|k_i>; no diagonal selection of new histories is made.

  <subsection|Source endpoint hypothesis ledger><label|source-endpoint-hypothesis-ledger>

  The following lists the hypotheses actually included by
  <verbatim|YM.Trace.Shelves.nearing_h> in <verbatim|Pear.lean> (its
  surrounding file also declares variables not included in the theorem). All
  parameters refer to one family <verbatim|C : Family G>, one extraction
  order <verbatim|F>, one ultrafilter <verbatim|\<b-cal-L\>> on
  <verbatim|\<bbb-N\> \<times\> \<bbb-N\>>, one selected arch <verbatim|Z>,
  one interacting table <verbatim|S>, one scaling <verbatim|J>, and one
  selection <verbatim|V>; they are not independently reselected by branch or
  scale.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Included
  input>>|<cell|<strong|Exact source binding and
  role>>>|<row|<cell|Construction and group>|<cell|<verbatim|P : C.Makes> and
  <verbatim|h : G.Simple>, where <verbatim|G> is the source's closed subgroup
  of a finite unitary group and <verbatim|Simple> means nonabelian with no
  proper real Lie ideals.>>|<row|<cell|Extraction and
  transport>|<cell|<verbatim|hb : (\<b-cal-L\> : Filter (\<bbb-N\> \<times\>
  \<bbb-N\>)) \<leq\> F.fuse> and <verbatim|hz : steep \<b-cal-L\> Z>. They
  bind the fixed-scale separation limits and the arch transport to the
  extraction filter.>>|<row|<cell|Specialized history>|<cell|<verbatim|ht :
  Scrim C W u \<psi\> \<varphi\> \<delta\> (fly C.path.levels) r D>, with the
  source's same <verbatim|W,u,\<psi\>,\<varphi\>,\<delta\>,r,D> and
  specifically the <verbatim|fly> parameter; no arbitrary <verbatim|\<zeta\>>
  is substituted.>>|<row|<cell|Branch recording>|<cell|<verbatim|hu : Grant C
  (\<b-cal-L\> : Filter (\<bbb-N\> \<times\> \<bbb-N\>)) t> and
  <verbatim|h\<tau\> : Rod t B (\<b-cal-L\> : Filter (\<bbb-N\> \<times\>
  \<bbb-N\>)) P'> for any <verbatim|B : Bend>; the same tickets <verbatim|t>,
  filter and <verbatim|P'> occur throughout that branch. Separate
  applications for the three <verbatim|B> use the same selected construction
  data.>>|<row|<cell|Selected chart>|<cell|<verbatim|H : (Cells.standard
  C).Hierarchy>, <verbatim|H' : S.Hierarchy>, and <verbatim|hq : Gondola F H
  J \<b-cal-L\> V Y> for <verbatim|Y : \<forall\> d i, (Cells.standard
  C).Field d \<rightarrow\>L[\<bbb-C\>] C.label d>. The source's cofinal
  selected scale is <verbatim|Stern V>; its grade-four cutoff is eventually
  met.>>|<row|<cell|Moment convergence>|<cell|<verbatim|hZ : Tendsto (Moment4
  Z J V) atTop (\<b-cal-N\> (Hill4 C))>. This is an explicit endpoint input,
  not a consequence of <verbatim|Gondola> alone.>>>>>

  <verbatim|muteP> includes all the preceding inputs and additionally
  <verbatim|hc : CellHyp C F>, <verbatim|HF : F.PointLimits C S>, <verbatim|K
  : Stock.Tabs C.path.levels>, <verbatim|\<theta\> : PostT C.path.levels>,
  <verbatim|hT : supportQ C.path.levels>, and <verbatim|hM : Sceptre C W>,
  with the same <verbatim|W> used in <verbatim|ht>. It then quantifies over
  every fixed <verbatim|p : \<bbb-N\>> and requires <verbatim|B \<neq\> some
  true>. The trace estimate is for the exact <verbatim|P'> and selected
  <verbatim|Stern V> in the common data. It does not require the surrounding
  <verbatim|Moonlit>, <verbatim|Spun>, <verbatim|Prosper>, orientation or
  derivative variables merely because they appear earlier in the file. The
  <verbatim|Thin> call uses the added hypotheses for the two raw fast traces;
  <verbatim|Vigor> uses the moment convergence, chart, cofinality and
  centeredness.

  For clarity, <verbatim|YM.Trace.Terrace.supportQ>
  (<verbatim|Terrace/Virtu.lean>) is the eventual lower bound
  <verbatim|4\<leq\>supportExponent(k)>; it is an independent source
  hypothesis in <verbatim|muteP> and the purchase producer, not the
  grade-four label cutoff. <verbatim|YM.Stock.Tabs>
  (<verbatim|Lean/YM/Overlay/Prior.lean>) includes the squared-cover growth
  bound and a separate eventual cheapness condition for every positive
  tolerance. The opening argument above uses the growth field, while the
  complete stock hypothesis remains in the source endpoint.

  The specialized <verbatim|Scrim> in the endpoint is more than a choice of
  positive price. In <verbatim|YM.MergeProof.Scrim>
  (<verbatim|Lean/YM/MergeProof/Biscuit.lean>), it contains the selected
  <verbatim|Geyser> cost bundle; <verbatim|r_i\<geq\>1>; positivity of
  <verbatim|\<zeta\>_{d,i}> for <verbatim|i\<geq\>ref(d)>; the step
  inequality <verbatim|\<varphi\>_i L_i^(d+1)
  \<zeta\>_{d,i}\<leq\>\<zeta\>_{d,i+1}> at those levels; and, for each
  admissible transition and finite volume, a <verbatim|Tones> witness for the
  same local section and gauge door. Here the endpoint specializes
  <verbatim|\<zeta\>> to <verbatim|fly>. These fields are not established by
  the finite-dimensional trace argument; in particular the step inequality is
  used in the upstream rooted-price propagation.

  The source producer <verbatim|YM.Trace.Terrace.unveil> has a separate
  hypothesis boundary: <verbatim|hZ : steep \<b-cal-L\> Z>, <verbatim|H :
  C.Makes>, <verbatim|hb : (\<b-cal-L\> : Filter (\<bbb-N\> \<times\>
  \<bbb-N\>)) \<leq\> F.fuse>, <verbatim|h : S.Hierarchy>, <verbatim|ht :
  StarPath F a X h \<b-cal-L\>>, <verbatim|hq : Gondola F a X \<b-cal-L\> V
  Y>, <verbatim|K : Sceptre C W>, <verbatim|\<theta\> : PostT C.path.levels>,
  <verbatim|hG : G.Simple>, and derivative structures <verbatim|hJ :
  J.Derivatives S>, <verbatim|hP : P.Derivatives (Cells.standard C)> for
  their respective <verbatim|DiffPlan>s. Here <verbatim|a> is the standard
  hierarchy and <verbatim|X> the same scaling that becomes <verbatim|J> in
  <verbatim|Pear>; the roles of the local letters <verbatim|H>, <verbatim|J>,
  <verbatim|P>, and <verbatim|K> differ from the endpoint letters.
  <verbatim|unveil> does not use the nearby declared <verbatim|Scrim> as an
  extra hypothesis. Its lift and expectation suppliers are recorded below.
  The explicitly retained endpoint input <verbatim|hZ> and this producer's
  hypotheses are not to be conflated.

  The standard-table input in the manuscript is the exact one-point statement
  from <verbatim|YM.StressFlux.oneStress_formula>,
  <verbatim|Lean/YM/Push/STRESS_FLUX/FreeTests.lean>: for the material tensor
  with coefficient vector <verbatim|w : Fin 4 \<rightarrow\> \<bbb-R\>>, its
  one-point function at every one-point configuration is <verbatim|w 0> on
  the diagonal and zero off the diagonal.
  <verbatim|YM.Further.PhysicalPeriodLimitF933.expectation_is>,
  <verbatim|Lean/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean>,
  identifies that one-point function with the standard field expectation.
  Since the material vectors here have leading coefficient zero, centering
  fixes every entry. This is a free-table fact; it is not the trace-limit
  conclusion and does not use an external anomaly theorem.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Manuscript>>|<cell|<strong|Source
  object and conversion>>>|<row|<cell|Branches
  <verbatim|0,-,+>>|<cell|<verbatim|YM.Trace.Slate.Bend = Option Bool>,
  respectively <verbatim|none>, <verbatim|some false>, <verbatim|some true>;
  <verbatim|rally> chooses <verbatim|Meld> for none and <verbatim|Plint> for
  the Boolean branches. <verbatim|Rod> is the common ticket/ultrafilter
  recording for tensor and flux components.>>|<row|<cell|<verbatim|w^b>,
  <verbatim|(0,w^b)>>|<cell|<verbatim|YM.Trace.Slate.BornZ>: <verbatim|none =
  -[1,-1/4,1]>, <verbatim|some false = [0,0,1]>, <verbatim|some true =
  [0,1/4,0]>; definitions in <verbatim|Slate/April.lean> and
  <verbatim|Margin/Mallet.lean>. The leading zero is the unit
  coefficient.>>|<row|<cell|<verbatim|E_4>, <verbatim|\<b-cal-F\>_4^int>,
  <verbatim|\<b-cal-F\>_4^0>, <verbatim|\<pi\>>,
  <verbatim|\<pi\>_0>>|<cell|<verbatim|C.label 4>, <verbatim|S.Field 4>,
  <verbatim|(Cells.standard C).Field 4>, <verbatim|S.project 4>,
  <verbatim|(Cells.standard C).project 4>, respectively. Label polynomials
  are identified with this coefficient space using <verbatim|(C.labels.level
  4).coords>.>>|<row|<cell|<verbatim|x^b_k>, <verbatim|R>,
  <verbatim|t^b_k>>|<cell|<verbatim|(P'.T a b).x k>,
  <verbatim|YM.Trace.Slate.OrbitT> (<verbatim|Plot (Prism _)>), and
  <verbatim|YM.Trace.Shelves.baron>; the two entries are symmetrized by
  <verbatim|inter>. Projection intertwines the finite symmetry
  averages.>>|<row|<cell|<verbatim|B_k>, <verbatim|\<omega\>_i>,
  <verbatim|V_{k,c}>, <verbatim|U_i>>|<cell|<verbatim|YM.Trace.Terrace.swale
  Z 4 k>, <verbatim|crown Z J (Stern V) 4 i>, <verbatim|Vault S Z 4 k c>,
  <verbatim|J.U i 4>. The arch coupling in the crown is <verbatim|Z.\<beta\>
  k>, not the clock <verbatim|hatBeta k>.>>|<row|<cell|<verbatim|M_i>,
  <verbatim|M_\<infty\>>, <verbatim|P_i>>|<cell|<verbatim|Moment4 Z J V i>,
  <verbatim|Hill4 C>, and <verbatim|Hero J V Z 4 i> respectively.
  <verbatim|Hill4> is standard centering composed with standard projection.
  <verbatim|Phase4> applies <verbatim|Hero>
  componentwise.>>|<row|<cell|Centering and its unit
  law>|<cell|<verbatim|YM.Next.UVStress.expectation>, <verbatim|centering>,
  <verbatim|value_center>, <verbatim|mean_unit>, <verbatim|centers_field>
  (<verbatim|Lean/YM/Next/UV_STRESS/Tensor.lean>). The unit expectation is
  one under the table's <verbatim|Basic> laws, which are supplied by the
  relevant hierarchy.>>|<row|<cell|<verbatim|O>>|<cell|<verbatim|YM.Trace.Over.OScale
  C.book = fromPol (Bel C.book) (square4 G)>; <verbatim|square4 = (1/4)
  \<big-sum\>_{i,j} pair i j i j> with ordered
  sums.>>|<row|<cell|<verbatim|s_k>, <verbatim|hat\<beta\>_k>,
  fast>|<cell|<verbatim|C.S.scale k>, <verbatim|C.path.levels.clock.hatBeta
  k>, and <verbatim|YM.Trace.Pull.Fast C.S>; fast means <verbatim|O(exp(a
  s_k))> for some <verbatim|a\<less\>0>. <verbatim|YM.Trace.Pull.Calms C.S 0>
  is subexponential in the displayed sense.>>>>>

  <subsection|Exact incoming receipts and their
  status><label|exact-incoming-receipts-and-their-status>

  <\enumerate>
    <item><strong|Coefficient:> for each branch and common <verbatim|Rod>,
    <verbatim|Shine4 Z L k \<rightarrow\> BillC (C.labels.level 4) (BornZ b)>
    as <verbatim|k \<rightarrow\> \<infty\>>. This is the first component of
    <verbatim|YM.Trace.Slate.tiara> in <verbatim|Lean/YM/TraceExtension/Slate/Limit.lean>.
    <verbatim|Slate.article> constructs coefficient witnesses: Boolean
    branches have exact <verbatim|azure> coefficients; the principal
    coefficients approach <verbatim|-tribe> uniformly as the inverse coupling
    tends to infinity. <verbatim|roofs> controls the
    recorded-to-finite-volume coefficient error by <verbatim|AgeK(-1/4)> and
    <verbatim|shipping> is the fixed-scale ultrafilter limit. The existing
    <verbatim|trace-weighted-estimates.tex> uses the same reference pair and
    explains the weighted reference-price application; its evidence records
    unresolved local pricing/funded-cover inputs. It does not turn the input
    into an independent acceptance.

    The expanded section gives the direct norm/ultrafilter derivation of the
    first component from <verbatim|article>, <verbatim|roofs> and
    <verbatim|shipping>. The loss estimate is reduced componentwise to the
    purchase bias by <verbatim|YM.Trace.Slate.rift> and <verbatim|tally>
    (<verbatim|Lean/YM/TraceExtension/Slate/Ven.lean>): the core projection
    contracts the coordinate supremum norm, which is bounded by
    <verbatim|coeffSize>; the threshold inverse cancels the
    <verbatim|threshold\<twosuperior\>> in <verbatim|Bill.bias>, and
    <verbatim|YM.Trace.Margin.pricedU> (<verbatim|Lean/YM/TraceExtension/Margin/Card.lean>)
    identifies the purchased readout with <verbatim|threshold\<twosuperior\>>
    times the local coefficient. The weighted-readout definition and
    <verbatim|YM.Trace.nbase> (<verbatim|Lean/YM/TraceExtension/Quince/Nadir.lean>)
    explain the factor two in the exponent at every non-scalar coordinate;
    <verbatim|YM.Trace.Margin.vacancy> and <verbatim|card_zero> (in the same
    <verbatim|Margin/Card.lean>) identify the scalar coordinate with the
    zero-jet reading and then with the zero identity value. The required
    zero-jet reading, regularity, nonwrapping and pricing hypotheses remain
    inputs. It also spells out the actual principal-witness mechanism of
    <verbatim|YM.Trace.Slate.autumn> and <verbatim|pages>
    (<verbatim|Slate/April.lean>): <verbatim|YM.Trace.Margin.arch_p>
    (<verbatim|Margin/Bevel.lean>) supplies the unsymmetrized coefficient
    convergence along every admissible path with both coupling and side
    diverging; <verbatim|YM.Trace.Margin.Walt.truth>
    (<verbatim|Margin/Corner.lean>) binds the symmetrized coefficient to the
    same witness; the material coefficient map is injective
    (<verbatim|YM.Trace.Slate.Jure>, using the canonical free stress basis),
    so a fixed left inverse gives witness convergence. Negating the eventual
    uniform bound chooses a sequence with coupling at least its index, while
    the <verbatim|20*(high t+10)\<less\>side> condition and
    <verbatim|Work.E01.radiusB_tendsto> force side divergence.
    <verbatim|YM.Trace.Margin.Ponting> (<verbatim|Margin/Bald.lean>) supplies
    principal witness existence under its <verbatim|Scraps>, nonwrapping,
    order, size and simplicity hypotheses; <verbatim|YM.Trace.Margin.astra>
    (<verbatim|Margin/White.lean>) supplies the exact Boolean branch
    coefficients. The manuscript now spells out its grade-four mechanism: the
    curvature is zero at the identity, the half-Hessian of a curvature pair
    is the product of its two first variations, and the nonwrapping affine
    jet test reads those variations as the appropriate curvature components.
    Finite sums and the signed-symmetry invariance give the two coefficient
    triples without taking a limit. The local Hessian and jet-reading inputs
    and witness construction remain source prerequisites; the text does not
    claim to prove their cost/funding estimates.

    <item><strong|Moment map:> <verbatim|YM.Trace.Terrace.unveil> in
    <verbatim|Lean/YM/TraceExtension/Terrace/Calendar.lean> proves
    <verbatim|Moment4 Z J V \<rightarrow\> Hill4 C>, under its
    <verbatim|Makes>, simple-gauge, steep arch, <verbatim|StarPath>,
    <verbatim|Gondola>, derivative and selected construction hypotheses. The
    proof forms <verbatim|v_i = prize_i \<circ\> Y_{4,i} \<circ\> \<pi\>_0 +
    (id-core) \<rightarrow\> id>, shows <verbatim|Moment4_i v_i
    \<rightarrow\> Hill4> using <verbatim|charge_ret>, eventual chart-unit
    preservation, the scalar complement, and <verbatim|center_expect>, and
    uses finite-dimensional inversion. The expanded manuscript derives
    grade-four reference projection injectivity from the canonical low-grade
    invariant decomposition and affine Maxwell shells:
    <verbatim|YM.Trace.Terrace.immune4>, <verbatim|sane4> and
    <verbatim|royal4> (<verbatim|Terrace/Insert.lean>),
    <verbatim|YM.Trace.shell_affine> (<verbatim|Foundation/Caps.lean>),
    <verbatim|YM.StressFlux.low> (<verbatim|Push/STRESS_FLUX/Low.lean>) and
    the standard-table free-kernel/equation-ideal identification
    <verbatim|YM.Further.CorrectedLift.freeKernel>
    (<verbatim|Further/CORRECTED_LIFT_COEFFICIENTS/Basis.lean>) and
    <verbatim|YM.Push.CutoffProjectors.equation_iff>
    (<verbatim|Push/CUTOFF_PROJECTORS/Equations.lean>). The shared
    <verbatim|trace-free-rank.tex> contains the low-grade decomposition and
    color-invariance proof and is now a fingerprinted manuscript dependency;
    the latter is reused, not duplicated. The section also derives the final
    <verbatim|short_jig> normalized summit-lift limit from its two-scale
    estimates: <verbatim|YM.Trace.Terrace.sky_tip>
    (<verbatim|Terrace/Gondola.lean>) and <verbatim|floss>
    (<verbatim|Terrace/Path.lean>) give the vane-level lift,
    <verbatim|YM.Trace.Terrace.evening> (<verbatim|Terrace/Bang.lean>) bounds
    its relative change between vane and summit, and
    <verbatim|YM.Trace.Terrace.Barry> (<verbatim|Terrace/Bang.lean>) gives
    the effective-coupling ratio. It spells out the
    boundedness/relative-error argument and the normalization ratio. The
    manuscript now also derives the arch-to-clock ratio from the
    finite-volume running bound via the fixed-scale ultrafilter limit, using
    <verbatim|YM.Trace.Terrace.Merr> and <verbatim|gamut>
    (<verbatim|Terrace/Dusk.lean>); the running estimate remains an input. It
    derives the hatted summit-clock ratio from the clock identity
    <verbatim|stamps>, the eventual gap bound <verbatim|back_gate>, and
    <verbatim|Gate_calm> composed with clock divergence <verbatim|hrate>,
    exactly as in <verbatim|Barry>; the manuscript now derives the gap bound
    from the first-crossing summit, <verbatim|PostT.bloom> and the clock
    identity, following <verbatim|YM.Trace.Terrace.back_gate>
    (<verbatim|Terrace/Lyre.lean>); the first-crossing and block-size
    schedule hypotheses remain inputs. It also proves the elementary gate
    asymptotic directly from <verbatim|Gate(x)=(log x)^48>
    (<verbatim|YM.Trace.Terrace.Gate>, <verbatim|Lean/YM/TraceExtension/Terrace/Base.lean>),
    using <verbatim|log x\<leq\>96*x^(1/96)> for <verbatim|x\<geq\>1>. The
    local lift bound and interval comparison remain source-produced inputs.
    The manuscript reduces expectation convergence to selected-chart
    one-point correlation convergence: <verbatim|YM.Next.UVStress.onepoint>
    and <verbatim|center_expect> (<verbatim|Lean/YM/Next/UV_STRESS/Limit.lean>)
    use the zero-order one-point instance of
    <verbatim|YM.Next.UVStress.travels_jet>; one-point chart convergence,
    derivative structures, table hierarchies and eventual unit transport
    remain upstream inputs. Parent <verbatim|trace-scribe-producer.tex>
    explicitly lists the endpoint operator convergence as an incoming
    producer boundary; we did not find an existing standalone reconstruction
    of <verbatim|unveil> at this checkpoint. This unit gives the detailed
    finite-dimensional bridge without claiming the underlying quantitative
    chart construction.

    <item><strong|Localized-recording inputs and derived fast traces:>
    <verbatim|YM.Trace.Shelves.trace_sf> and <verbatim|trace_bs> in
    <verbatim|Lean/YM/TraceExtension/Shelves/Picnic.lean> prove the fast
    unaveraged projected trace statements. The expanded manuscript now proves
    their common finite-test transfer and the source's derivative telescoping
    argument rather than assuming either raw fast trace. It derives the
    needed <verbatim|Book>-type recording inequalities from explicit rooted
    actual-minus-local price and fixed-scale point-limit inputs using the
    argument of <verbatim|YM.Trace.Pull.from_center>; the rooted price, local
    label limits, and input existence are retained assumptions. It also
    explains the grade-three scalar-unit calculation and finite
    separated-test detection. Other retained inputs are exact normalized
    finite-volume difference and trace identities and linearity of the
    finite-volume insertion functional. The precise quantified estimates and
    orders of <verbatim|k>, displacement, and the fixed separation
    ultrafilter are displayed in <verbatim|subsec:ex-branch-fast-trace>. The
    source constructs the recordings via <verbatim|YM.Trace.Slate.Trespass>,
    using a <verbatim|Loan> and <verbatim|Credible> insertion, the same
    <verbatim|Makes>, <verbatim|Stock.Tabs>, <verbatim|CellHyp>, point limits
    and hierarchy; <verbatim|YM.Trace.Shelves.microphone> produces the
    required common grade-three/grade-four recordings for the current and
    difference. Its source supplies <verbatim|Book> under <verbatim|Jade>
    bounds. The finite-volume exact zero is
    <verbatim|YM.Trace.Margin.Plint_thin>; the principal identity is
    <verbatim|YM.Trace.Turret.cones>; <verbatim|YM.Trace.Shelves.beacon_h>
    proves the normalized forward-difference relation and
    <verbatim|YM.Trace.Shelves.fade_w> supplies finite-sum linearity.
    <verbatim|YM.Trace.Shelves.lent>, <verbatim|YM.Trace.Pull.response_fast>,
    and <verbatim|YM.Trace.Pull.sampling> provide the source's
    moving-detector, scalar low-grade, and length selection strategy, whose
    substantive estimates are now written explicitly. Existing parent
    Crown/Eve/weighted chapters prove parts of the relevant local estimates
    but do not establish all <verbatim|Trespass>/<verbatim|Jade> rooted
    inputs; those remain upstream draft obligations here. The derived fast
    traces are stronger than unweighted limiting tracelessness and are not
    the final weighted conclusion.

    <item><strong|Transport growth:> <verbatim|YM.Trace.Shelves.simG>,
    <verbatim|hawker>, <verbatim|cine> in
    <verbatim|Lean/YM/TraceExtension/Shelves/Route.lean> give
    <verbatim|\<\|\|\>swale_k v\<\|\|\> \<leq\> \<beta\>\<#302\>_k
    exp(columnLogs_k) (extra+1) \<\|\|\>v\<\|\|\>> eventually, and show both
    factors have subexponential growth on <verbatim|C.S>. The
    <verbatim|Makes>, steep arch, separation filter, reference cutoff and
    finite-volume column calibration are retained. The manuscript now derives
    the arch operator bound by taking the fixed-scale ultrafilter limit of
    the calibrated finite-volume transport for each label, then taking the
    operator supremum; this follows the passage in
    <verbatim|YM.Trace.Shelves.simG> and does not assert an infinite common
    large set. The manuscript reuses the existing accumulated-column estimate
    in <verbatim|manuscript/existence/ope-filtration.tex>, Section
    <verbatim|ex-column-subpower> (source
    <verbatim|YM.Work.D01.columnLogs_le>), and now derives subexponential
    clock and column growth from it. That shared proof is a fingerprinted
    manuscript dependency, not a duplicate proof unit. The
    all-natural-exponent result follows from these receipts and moment-map
    boundedness rather than assuming <verbatim|muteP>.
  </enumerate>

  <section|Crosswalk><label|crosswalk>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Step>>|<cell|<strong|Fully
  qualified declarations>>|<cell|<strong|Pinned path>>>|<row|<cell|Branch
  labels, principal piecewise correction, two finite-volume corrections,
  material tensor>|<cell|<verbatim|YM.Trace.Slate.Bend>,
  <verbatim|YM.Trace.Slate.rally>, <verbatim|YM.Trace.Slate.Rod>;
  <verbatim|YM.Trace.Zn.Meld>, <verbatim|YM.Trace.Zn.rim>,
  <verbatim|YM.Pressure.radiusB>; <verbatim|YM.Trace.Turret.paceX>,
  <verbatim|YM.Trace.Turret.mine>, <verbatim|YM.Trace.Turret.pluck>,
  <verbatim|YM.Trace.Turret.pluckD>, <verbatim|YM.Trace.Turret.cones>;
  <verbatim|YM.Trace.Margin.Toca>, <verbatim|YM.Trace.Margin.Plint>,
  <verbatim|YM.Trace.Margin.azure>; <verbatim|YM.Trace.Slate.BornZ>,
  <verbatim|YM.Trace.Slate.BillC>; <verbatim|YM.StressFlux.stress>,
  <verbatim|YM.StressFlux.material>>|<cell|<verbatim|Lean/YM/TraceExtension/Slate/{Pave,April}.lean>,
  <verbatim|Lean/YM/TraceExtension/Zn/{Setup,Have}.lean>,
  <verbatim|Lean/YM/Pressure/Seeds.lean>,
  <verbatim|Lean/YM/TraceExtension/Turret/Mark.lean>,
  <verbatim|Lean/YM/TraceExtension/Margin/Mallet.lean>,
  <verbatim|Lean/YM/Push/STRESS_FLUX/{Polynomial,Lift}.lean>>>|<row|<cell|Symmetrization,
  finite averaging, centered tensors>|<cell|<verbatim|YM.Trace.Shelves.inter>,
  <verbatim|YM.Trace.Shelves.press>, <verbatim|YM.Trace.Shelves.baron>,
  <verbatim|YM.Trace.Shelves.stitch_k>; <verbatim|YM.Trace.Terrace.Glade.Plot>,
  <verbatim|YM.Trace.Slate.OrbitT>>|<cell|<verbatim|Lean/YM/TraceExtension/Shelves/Tonic.lean>,
  <verbatim|Lean/YM/TraceExtension/Terrace/Turf.lean>,
  <verbatim|Lean/YM/TraceExtension/Slate/Club.lean>>>|<row|<cell|Coefficient
  and moment inputs>|<cell|<verbatim|YM.Trace.Slate.tiara>,
  <verbatim|YM.Trace.Slate.article>, <verbatim|YM.Trace.Slate.roofs>,
  <verbatim|YM.Trace.Slate.shipping>; <verbatim|YM.Trace.Terrace.Moment4>,
  <verbatim|YM.Trace.Terrace.Hill4>, <verbatim|YM.Trace.Terrace.unveil>>|<cell|<verbatim|Lean/YM/TraceExtension/Slate/{Limit,Spite}.lean>,
  <verbatim|Lean/YM/TraceExtension/Terrace/Calendar.lean>>>|<row|<cell|Vane-to-summit
  lift and normalization>|<cell|<verbatim|YM.Trace.Terrace.sky_tip>,
  <verbatim|YM.Trace.Terrace.floss>, <verbatim|YM.Trace.Terrace.stair_link>,
  <verbatim|YM.Trace.Terrace.short_jig>, <verbatim|YM.Trace.Terrace.evening>,
  <verbatim|YM.Trace.Terrace.Barry>, <verbatim|YM.Trace.Terrace.royal4>>|<cell|<verbatim|Lean/YM/TraceExtension/Terrace/{Gondola,Path,Bang,Insert}.lean>>>|<row|<cell|Chart
  identity and finite-array limit>|<cell|<verbatim|YM.Trace.Shelves.heroicB>,
  <verbatim|YM.Trace.Shelves.chartB>, <verbatim|YM.Trace.Shelves.Courtis>,
  <verbatim|YM.Trace.Shelves.MaterialSym>,
  <verbatim|YM.Trace.Shelves.nearing_h>; <verbatim|YM.StressFlux.oneStress_formula>>|<cell|<verbatim|Lean/YM/TraceExtension/Shelves/{Route,Pear}.lean>,
  <verbatim|Lean/YM/Push/STRESS_FLUX/FreeTests.lean>>>|<row|<cell|Trace
  formulas>|<cell|<verbatim|YM.Trace.square4>,
  <verbatim|YM.Trace.mechanical_trace>; <verbatim|YM.Trace.Over.OScale>,
  <verbatim|YM.Trace.Over.sum_delta>>|<cell|<verbatim|Lean/YM/TraceExtension/Foundation/Dilate.lean>,
  <verbatim|Lean/YM/TraceExtension/Chart/Stage.lean>>>|<row|<cell|Fast trace
  and transfer>|<cell|<verbatim|YM.Trace.Shelves.trace_sf>,
  <verbatim|YM.Trace.Shelves.trace_bs>, <verbatim|YM.Trace.Shelves.Thin>,
  <verbatim|YM.Trace.Shelves.simG>, <verbatim|YM.Trace.Shelves.cine>,
  <verbatim|YM.Trace.Shelves.Vigor>, <verbatim|YM.Trace.Shelves.muteP>>|<cell|<verbatim|Lean/YM/TraceExtension/Shelves/{Picnic,Dream,Route,Mori,Pear}.lean>>>|<row|<cell|Localized
  recording, native root price and derivative
  telescoping>|<cell|<verbatim|YM.Trace.Pull.Book>,
  <verbatim|YM.Trace.Pull.from_center>, <verbatim|YM.Trace.Pull.sails>,
  <verbatim|YM.Trace.Pull.sampling>, <verbatim|YM.Trace.Pull.response_fast>;
  <verbatim|YM.Next.UVStress.Watch.planted>;
  <verbatim|YM.Trace.Slate.Trespass>; <verbatim|YM.Trace.Terrace.Bill.root>,
  <verbatim|YM.Trace.Terrace.nativeC>, <verbatim|YM.Trace.Terrace.tranquil>,
  <verbatim|YM.Trace.Terrace.passing>, <verbatim|YM.Trace.Terrace.recordsBook>;
  <verbatim|YM.Bid.gainChart>; <verbatim|YM.Trace.Shelves.plans>,
  <verbatim|YM.Trace.Shelves.fumes>, <verbatim|YM.Trace.Shelves.bake_sum>,
  <verbatim|YM.Trace.Shelves.bake_zero>, <verbatim|YM.Trace.Shelves.microphone>,
  <verbatim|YM.Trace.Shelves.lent>, <verbatim|YM.Trace.Shelves.beacon_h>,
  <verbatim|YM.Trace.Shelves.fade_w>>|<cell|<verbatim|Lean/YM/TraceExtension/Anchor/{Book,PriceTest,Bleed,Range}.lean>,
  <verbatim|Lean/YM/Next/UV_STRESS/Annulus.lean>,
  <verbatim|Lean/YM/TraceExtension/Slate/Cost.lean>,
  <verbatim|Lean/YM/TraceExtension/Terrace/{Casa,Annual,CabinBook}.lean>,
  <verbatim|Lean/YM/Bid/Loan.lean>, <verbatim|Lean/YM/TraceExtension/Shelves/{Final,Picnic,Fame,Height,Wilt}.lean>>>|<row|<cell|Grade-three
  unit and separating tests>|<cell|<verbatim|YM.Trace.nbase>,
  <verbatim|YM.StressFlux.linear_invariant>,
  <verbatim|YM.Trace.Shelves.front_low> (private),
  <verbatim|YM.Next.UVStress.observes>, <verbatim|YM.Trace.Pull.scale_faithful>>|<cell|<verbatim|Lean/YM/TraceExtension/Quince/Nadir.lean>,
  <verbatim|Lean/YM/Push/STRESS_FLUX/Color.lean>,
  <verbatim|Lean/YM/TraceExtension/Shelves/Height.lean>,
  <verbatim|Lean/YM/Next/UV_STRESS/Shell.lean>,
  <verbatim|Lean/YM/TraceExtension/Anchor/Range.lean>>>>>>

  The linked <verbatim|Lean/YM/TraceExtension/Shelves/Sapphire.lean> was also
  inspected. It imports <verbatim|Shelves.Pear>, rather than supplying
  <verbatim|nearing_h> or <verbatim|muteP>; its main
  <verbatim|YM.Trace.Shelves.careers> conclusion is the subsequent grade-five
  divergence comparison and additionally uses orientation,
  <verbatim|Prosper>, and <verbatim|Spun>. Those hypotheses and that
  conclusion are outside this bounded grade-four moment/trace unit, so they
  are not added to either endpoint ledger. The later grade-five material is
  not silently treated as proved here.

  <verbatim|Thin> uses finite tensor averaging, symmetry of the diagonal and
  the centered field trace to transport the two <verbatim|Fast> inputs.
  <verbatim|Vigor> uses the representative of a centered field,
  <verbatim|cine>, eventual cofinal cutoff, and the operator limit;
  <verbatim|muteP> instantiates it with the diagonal sum and proves centering
  fixes that sum. These are grouped by mathematical purpose. The source's
  Boolean exclusion is <verbatim|b \<neq\> some true>, hence includes both
  the principal and false branches. The source concludes every <verbatim|p :
  \<bbb-N\>>, not only <verbatim|p=1>.

  The field-limit proposition now states the eventual signed-motion and
  real-structure equivariance of <verbatim|B_k> separately from coefficient
  convergence, moment convergence, the chart identity and projection
  equivariance. The latter is <verbatim|YM.Trace.Shelves.Ard_image>
  (<verbatim|Shelves/Tonic.lean>). It is supplied for the selected arch by
  the finite-volume covariance and ultrafilter passage in
  <verbatim|YM.Trace.Terrace.move_anchor> and <verbatim|move_anchor_star>
  (<verbatim|Terrace/Bang.lean>) and <verbatim|YM.Trace.Slate.core_acts> and
  <verbatim|stomp> (<verbatim|Slate/Club.lean>), under their source
  hypotheses including the common <verbatim|Scrim>; it is not a logical
  consequence of the two limiting receipts alone.

  The material-tensor invariance used in the coefficient passage is spelled
  out by contracting the signed-permutation action on each curvature pair and
  reindexing the summed axes; real coefficients are fixed by the involution.
  This corresponds to <verbatim|YM.StressFlux.pair_real>,
  <verbatim|stress_tensor>, <verbatim|stress_real>, and
  <verbatim|YM.Trace.Slate.Crown0> (<verbatim|Lean/YM/Push/STRESS_FLUX/Polynomial.lean>,
  <verbatim|Lean/YM/TraceExtension/Slate/April.lean>). It applies to each
  fixed real coefficient triple, including the two exact correction triples.

  For the same local principal witness, the manuscript now records the exact
  trace-plane constraint <verbatim|w\<#2081\>+4w\<#2082\>=0>. Under the
  current and difference <verbatim|Jade> certificates,
  <verbatim|YM.Trace.Margin.zero_club> makes the sum of the local diagonal
  coefficients zero and <verbatim|glaze> preserves this under the tensor
  average (<verbatim|Margin/Pillar.lean>).
  <verbatim|YM.Trace.mechanical_trace> and
  <verbatim|YM.Trace.Margin.square_alive> then give the constraint;
  <verbatim|honestW> packages the same step through <verbatim|rho_vector>.
  This is a local coefficient identity, not the fast estimate on the recorded
  field trace, which still requires the separate recording argument.

  The author also derives the raw-trace bound <verbatim|O((1+s_k)^5
  exp(-s_k/8))> from the displayed fixed-<verbatim|h,j> native price. For
  finitely many separating tests and insertions, the fixed-scale price and
  the point-limit tolerance <verbatim|a_k=exp(-s_k)> give recording errors
  <verbatim|O((1+s_k)^4 exp(-s_k/8))>. Choosing
  <verbatim|n_k=ceil(exp(s_k)/(1+s_k))> makes the telescoping interval tend
  to zero while its reciprocal is at most <verbatim|1+s_k>, giving the fifth
  polynomial factor. No rate of continuity of the moving detectors is needed.
  Thus both principal and false raw traces are also
  <verbatim|O(exp(-\<kappa\> s_k))> for every
  <verbatim|0\<less\>\<kappa\>\<less\>1/8>. For fixed natural <verbatim|p>,
  combining that raw bound with <verbatim|\<\|\|\>B_k\<\|\|\>\<leq\>C
  \<beta\>\<#302\>_k exp(\<ell\>_k)> and bounded moment maps gives the
  weighted chart bound <verbatim|O((1+s_(k_i))^(p+6)
  exp(\<ell\>_(k_i)-s_(k_i)/8))>. Since <verbatim|\<ell\>_k=o(s_k)>, this
  implies <verbatim|O(exp(-\<kappa\> s_(k_i)))> for every
  <verbatim|0\<less\>\<kappa\>\<less\>1/8>. These are author-derived
  conditional strengthenings of the source's qualitative <verbatim|Fast> and
  <verbatim|muteP> results, not quoted source rates; they require the
  displayed rooted price and point-limit inputs for all required insertions
  and are unreviewed.

  The polynomial power uses the actual affine clock
  <verbatim|YM.RG.Calendar.hatBeta = bar + slopeConstant * schedule.scale>
  (<verbatim|Lean/YM/RG/History.lean>), with the fixed <verbatim|bar> and
  slope absorbed into constants. In <verbatim|YM.Trace.Terrace.tranquil>
  (<verbatim|Terrace/Annual.lean>), the comparison indices are fixed and the
  native price is factored as <verbatim|exp(-s_k/8) \<beta\>\<#302\>_k^4>
  times a constant depending on those indices.
  <verbatim|YM.Trace.Terrace.recordsBook> (<verbatim|Terrace/CabinBook.lean>)
  makes that fixed comparison-scale choice separately for each lower test
  scale; taking a maximum over finitely many tests is therefore legitimate.
  This audit does not turn a test-dependent ultrafilter-large set into a
  single set uniform over infinitely many displacements: the argument only
  intersects finitely many sets for each fixed <verbatim|k>.

  The local trace identities and the <verbatim|roofs> coefficient-loss bound
  also yield the author's derived estimate <verbatim|\<\|\|\>tr
  W\<#1D47\>_k\<\|\|\>\<leq\>4\<\|\|\>R\<\|\|\> \<delta\>_k> for
  <verbatim|b=0,->: trace the finite symmetry-averaged coefficient
  comparison, use exact local trace zero, and take the fixed-scale
  separation-ultrafilter limit. Since <verbatim|\<beta\>\<#302\>_k^p
  \<delta\>_k\<rightarrow\>\<infty\>> for fixed <verbatim|p\<gtr\>0>, this
  upper bound alone does not imply weighted washout. The manuscript keeps the
  faster recorded-field estimate as a separate input-derived result. This
  rate comparison is an elementary corollary, not an additional conclusion
  attributed to <verbatim|muteP>.

  The manuscript also gives a direct injectivity calculation for the
  three-weight material map: an antisymmetric curvature jet supported on the
  <verbatim|01> plane separates the two diagonal weights, and one supported
  on the <verbatim|02> and <verbatim|12> planes separates the off-diagonal
  weight. This is an elementary evaluation of the displayed label formula; it
  does not replace the source's general stress classification. The affine
  Maxwell realization and grade-four reference projection remain the
  assumptions needed when transferring the calculation to fields.

  The manuscript's nonvanishing of the true-branch limit is an elementary
  corollary, not an extra conclusion attributed to <verbatim|muteP>.
  <verbatim|YM.Trace.Margin.square_alive>
  (<verbatim|Lean/YM/TraceExtension/Margin/Pillar.lean>) proves the
  unprojected square label is nonzero; the manuscript instead evaluates it on
  a constant-curvature affine Maxwell jet and uses the grade-four reference
  projection's injectivity from <verbatim|YM.Trace.Terrace.sane4>
  (<verbatim|Terrace/Insert.lean>). As <verbatim|nearing_h> gives trace
  convergence to four times that nonzero field and the selected hatted clock
  diverges, the norm of the true trace multiplied by its fixed positive
  powers diverges. The same injectivity of the material coefficient map
  (<verbatim|YM.Trace.Slate.Jure>) and the reference projection show
  <verbatim|M(w\<#1D47\>)\<neq\>0> for all three branches, including
  <verbatim|M(w\<#207B\>)> despite its zero trace. These are corollaries
  under the same chart and reference-table assumptions.

  The grade-four part of principal witness existence is now reduced to its
  local conditions: <verbatim|YM.Trace.Turret.spirit>
  (<verbatim|Turret/Mark.lean>) expresses antisymmetry as a finite sum of
  forward differences; <verbatim|YM.Trace.Margin.TW> and <verbatim|cheer>
  (<verbatim|Margin/Pillar.lean>) show that their grade-four local
  projections vanish and distribute over sums, under the indicated
  <verbatim|Jade> current/difference certificates, nonwrapping of
  <verbatim|tempQ> at the origin, side length at least <verbatim|40>, Taylor
  order at least <verbatim|4>, and simplicity. The proof uses
  <verbatim|YM.Trace.Kits.steer0> and <verbatim|YM.Trace.Kits.shine_r>
  (<verbatim|Lean/YM/TraceExtension/Pi/Flux.lean>) to identify the Hessians
  on original and translated affine tests. The first-variation and
  gauge-direction steps are <verbatim|YM.Trace.Lamp.dyed_hold> and
  <verbatim|dyed_beam> (<verbatim|Lean/YM/TraceExtension/Lamp/Aura.lean>),
  with the nonwrapping local realization in <verbatim|YM.Trace.Kits.cellar>
  (<verbatim|Lean/YM/TraceExtension/Pi/Bound.lean>). In particular the
  stationary-point condition is part of this argument; gauge invariance alone
  is not being used as a general Hessian-kernel assertion. The source proves
  the Hessian of the difference vanishes on the degree-zero affine test
  directions paired with themselves; it does not assert that the full lattice
  Hessian is zero. The difference also has zero identity value, so
  <verbatim|YM.Trace.Kits.vista4> gives zero grade-four jet readings.
  <verbatim|YM.Trace.Margin.wings> (<verbatim|Margin/Motion.lean>) combines
  the resulting symmetry and zero scalar coordinate with the canonical real
  signed-covariant stress classification to obtain the same three-weight
  material representation after averaging. This proves the grade-four witness
  mechanism without claiming the extra grade-five <verbatim|Walt.tempo>
  conclusion or constructing the local certificates.
  <verbatim|YM.Trace.Margin.Ponting> additionally proves a grade-five
  relation, not needed here, and the trace relation recorded above.

  The source-level producer of the retained step certificate is
  <verbatim|YM.PhysicalNext.Repeat.Quince.attain>
  (<verbatim|Lean/YM/TraceExtension/Terrace/Earn.lean>). Its exact family is
  the <verbatim|Family.mk> built from <verbatim|Issue.trail Z>, <verbatim|hol
  G>, <verbatim|Labels.frames G>, <verbatim|localSection G>, and the indexed
  stage/transfer data. Its hypotheses are <verbatim|Nest X Z>,
  <verbatim|G.Simple>, <verbatim|Skill b (bear W)>, <verbatim|Ordeal A.B.a>,
  and <verbatim|C.Makes>; it concludes <verbatim|YM.Trace.Terrace.Sceptre C
  W>. The step field is eventually in the period parameter and then uniform
  for all larger volumes and labels, whereas <verbatim|Sceptre.bias> is a
  separate sharp-read obligation. This unit uses the step field and records
  the bias field because it also feeds the root purchase. It does not assert
  <verbatim|attain> for an arbitrary family or re-prove the underlying
  <verbatim|rideE>/<verbatim|ascend> quantitative construction.

  The scalar closure inside <verbatim|YM.PhysicalNext.Repeat.Quince.attain>
  can be checked against the existing canonical local recurrence in
  <verbatim|manuscript/existence/trace-price-recurrence.tex>, especially
  <verbatim|eq:ex-lattice-price-one-step>; it is not a new proof unit. In the
  source\<#2019\>s notation, for nonnegative later core size <verbatim|z>,
  earlier core size <verbatim|y\<leq\>U L^d z>, and weighted later core size
  at most <verbatim|L^d z>, put <verbatim|P=B U L^d+K L^d+r U\<gtr\>0>,
  <verbatim|g=2(1+U)/cameo>, and choose <verbatim|\<varepsilon\>=(g/2)/P>.
  The selected local inequality bounds the mismatch by <verbatim|s(z+U
  z)+\<varepsilon\>(B y+K*weighted+r U z)>;
  <verbatim|s=bear/cameo\<leq\>1/cameo> makes the first term at most
  <verbatim|(g/2)z>, and the size estimates make the second at most
  <verbatim|\<varepsilon\> P z=(g/2)z>. Thus their sum is at most <verbatim|g
  z>, with the same finite-volume columns and threshold ratio supplied by the
  selected local receipt. This arithmetic does not prove <verbatim|rideE>,
  the payment hypotheses, or the <verbatim|Sceptre.bias> sharp-read field.
  The recurrence chapter is a conditional upstream draft and its assumptions
  and review status remain in force.

  The relative vane-to-summit comparison is now reduced to its actual
  per-step budget. <verbatim|YM.Trace.Terrace.rounder>
  (<verbatim|Lean/YM/TraceExtension/Terrace/Look.lean>) bounds each
  <verbatim|gearK(j)> by <verbatim|part(m)/(2*(summit(m)-m))> on the
  interval; <verbatim|YM.Trace.Terrace.readStep>
  (<verbatim|Terrace/Knob.lean>) supplies the relative one-step difference
  from the same <verbatim|Sceptre>, and grade-four <verbatim|even_grade>
  supplies the needed homogeneity. The manuscript now derives its factor
  four: the <verbatim|Sceptre.step> input compares the earlier column to the
  scaled later one and bounds the threshold ratio by two;
  <verbatim|core_scale> identifies the scaled core, so division by the
  squared thresholds gives <verbatim|4*gear> times the later normalized core.
  The finite backward induction is <verbatim|YM.Trace.Terrace.casc>; the
  manuscript gives the factor-two argument, then passes fixed endpoints
  through the separation filter as in <verbatim|spine_pitch> and
  <verbatim|evening>. The manuscript additionally derives
  <verbatim|rounder>\<#2019\>s numerical budget from the gate gap, unit lower
  bound for scale increments, <verbatim|PostT.share> column bound,
  monotonicity of <verbatim|cameo>, and domination of powers of <verbatim|log
  \<beta\>> by <verbatim|exp((log log \<beta\>)^2/10)>. It retains the
  source\<#2019\>s actual <verbatim|Sceptre> one-step comparison and the
  selected clock, block and column hypotheses; it does not infer those from
  moment convergence or replace their selected history.

  The vane-level lift reduction now follows
  <verbatim|YM.Trace.Terrace.scores_core>, <verbatim|mintage> and
  <verbatim|via_step> (<verbatim|Lean/YM/TraceExtension/Terrace/Turn.lean>),
  then <verbatim|sky_tip> (<verbatim|Terrace/Gondola.lean>).
  <verbatim|YM.Next.Rank.Price.awake> is the <verbatim|a_m^(-4)>-normalized
  column map. The exact retained local inputs are
  <verbatim|YM.Next.Rank.Price.Tested.unit> and <verbatim|Tested.score>
  (<verbatim|Lean/YM/Next/RANK/Matrices.lean>),
  <verbatim|YM.Next.Rank.East.InvoiceSky>
  (<verbatim|TraceExtension/Prom/Orion/Eupho.lean>), and the finite-volume
  lift/scaling identity; <verbatim|Tested.score> gives the factor-two
  comparison by the triangle inequality. Subtracting the reference-unit
  component removes the scalar coordinate before applying the relative error.
  The required non-scalar grade-four homogeneity for every label is
  <verbatim|YM.Trace.Terrace.even_grade> (<verbatim|Lean/YM/TraceExtension/Terrace/Knob.lean>)
  under simplicity. The lift identity produces the exact factor
  <verbatim|\<beta\>_(m,u)*\<theta\>_m\<twosuperior\>*h\<#2074\>>, and
  multiplying by the spine normalization <verbatim|\<theta\>_m^(-2)*a_m\<#2074\>>
  yields <verbatim|\<beta\>_(m,u)*(a_m*h)\<#2074\>>. The manuscript passes
  this bound using the selected lift and coupling limits and
  <verbatim|steep.terms> for the transported moving lift. It does not require
  a limit of the auxiliary finite-volume tested chart or claim production of
  the chart or invoice.

  The principal coefficient passage now unfolds
  <verbatim|YM.Trace.Margin.conceive> and <verbatim|arch_p>
  (<verbatim|Margin/Bevel.lean>): <verbatim|Sight.ox.bill> contributes
  <verbatim|shock(t)=t^-100>, and <verbatim|sense> together with
  <verbatim|fee_in> bounds the modification error by
  <verbatim|16*calorie(t)=16*t^-30>. The latter expands the Hessian in
  lattice coordinates: <verbatim|ballad_bound> gives <verbatim|4(1+r)^2> for
  each direction, the pair contributes <verbatim|16(1+max(r_i,r_j))^4>, and
  the nonnegative exponential weight in the <verbatim|Estate> cost dominates
  that polynomial factor. <verbatim|YM.Trace.Kits.testify_lim> and
  <verbatim|peg> (<verbatim|Pi/Born.lean>) compare the elementary
  second-derivative probes with the canonical stencil, using finite
  test-direction expansion; <verbatim|YM.Trace.Kits.vista4>
  (<verbatim|Pi/Cut.lean>) is the grade-four jet-reading identity, including
  the identity-value term, which is zero for these observables. The
  finite-dimensional separating-jet argument in <verbatim|Margin.hi_cast>
  then gives coefficient convergence. The manuscript retains these local
  bounds and the applicable jet/stencil identities as inputs and does not
  assert their full source constructions.

  The expanded recording section now also explains the finite-dimensional
  label selection in <verbatim|YM.Trace.Terrace.recordsC>
  (<verbatim|Terrace/CabinBook.lean>). <verbatim|Bill.norms> and
  <verbatim|Bill.bias> bound the purchased readout plus its difference from
  the actual column image; <verbatim|YM.Trace.Terrace.majesty> and
  <verbatim|annual> (<verbatim|Terrace/Annual.lean>) use
  <verbatim|AgeK(-1/4)\<leq\>1>, the threshold bound and
  <verbatim|at_current> to obtain <verbatim|\<\|\|\>v(k,u)\<\|\|\>\<leq\>2*outward
  C d k>. <verbatim|YM.Next.Rank.Price.at_current>
  (<verbatim|Lean/YM/Next/RANK/Matrices.lean>) obtains the inverse bound by
  induction from the identity at <verbatim|ref(d)> and the calibrated
  one-step factors, extending the product back to zero using factors at least
  one. <verbatim|waters> identifies this radius as
  <verbatim|exp(columnLogs(k)+d*S.scale(k))>. For each fixed large
  <verbatim|k>, the selected labels lie on an ultrafilter-large set in a
  compact finite-dimensional ball, so <verbatim|crewing> gives a limit
  <verbatim|x(k)>; it is selected before tests, and its radius may depend on
  <verbatim|k>. The radius bound yields <verbatim|\<\|\|\>x(k)\<\|\|\>=O(exp((d+\<varepsilon\>)*s_k))>
  for every <verbatim|\<varepsilon\>\<gtr\>0>, matching the
  grade-<verbatim|d> <verbatim|Calms> bound; it is not a claim that the
  labels are subexponential. The manuscript proves this compactness step
  while retaining the actual finite-volume <verbatim|Bill> purchase and
  column estimates. It does not interchange this fixed-<verbatim|k> limit
  with the later scale limit. The manuscript also derives the point limit for
  these moving labels from the fixed-label point limits by expanding in a
  fixed finite basis and passing the coordinate products through the same
  ultrafilter; this is the finite-dimensional moving-label step of
  <verbatim|YM.Trace.Pull.evaluates> (<verbatim|Lean/YM/TraceExtension/Anchor/Table.lean>).
  This construction produces a particular history; when a history is already
  fixed, its original <verbatim|TravelsC.lands> labels and limit must be
  retained. Compactness alone does not identify a new selection with a
  pre-existing history.

  The upstream inputs to the rooted spectator and point-limit step have
  additional quantifier content. <verbatim|YM.Cells.CellHyp>
  (<verbatim|Lean/YM/Cells/Packing.lean>) requires a finite-volume seam at
  every <verbatim|(N,p)> and, for each grade <verbatim|d> and each
  <verbatim|\<varepsilon\>,R\<gtr\>0>, one <verbatim|m\<#2080\>\<geq\>ref(d)>
  and one constant <verbatim|A\<geq\>0> such that for every
  <verbatim|m\<geq\>m\<#2080\>> and every <verbatim|\<eta\>\<gtr\>0>,
  eventually on the ordered late filter all labels of norm at most
  <verbatim|R> and all roots have interior local representatives with root
  test at most <verbatim|A*a_m^(-d-\<varepsilon\>)+\<eta\>>. The constant
  <verbatim|A> is independent of <verbatim|m>; this is not a pointwise
  fixed-label estimate. For a fixed watch and lower level <verbatim|h>,
  <verbatim|YM.Trace.Pull.sails> obtains a separate nonnegative spectator
  constant <verbatim|A> and bounds the product by <verbatim|A^n>; its radius
  condition is <verbatim|\|\<ell\> a_k\| \<leq\> a_h/8>, with the bound
  uniform in allowed <verbatim|k>, axis and displacement on its eventual set.
  It chooses a finer level <verbatim|j'\<geq\>h+1> with
  <verbatim|24*a_j'\<less\>a_h> at which <verbatim|YM.Next.UVStress.grows>
  (<verbatim|Next/UV_STRESS/Tiles.lean>) supplies one common bound for the
  finitely many spectator tokens and frames. Its proof applies
  <verbatim|CellHyp.centered> with <verbatim|\<varepsilon\>=1>, radius
  <verbatim|\<\|\|\>v\<\|\|\>+1> and error <verbatim|\<eta\>=1>, obtaining a
  fixed-level bound <verbatim|A_v*a_j'^(-d-1)+1> for each token, and sums
  over the finite token/frame family. <verbatim|sails> then uses the
  one-third cell margin <verbatim|YM.MergeProof.Ribbons.buffer>
  (<verbatim|MergeProof/West/News.lean>), injectivity for large periods
  <verbatim|YM.Next.UVStress.sparse> (<verbatim|Next/UV_STRESS/Tiles.lean>),
  and the interior representative supplied by
  <verbatim|YM.Extraction.Lease.alive> (<verbatim|Lane/Lease.lean>). The
  geometric allowance for displacement plus three fine widths is below
  <verbatim|a_h/4>. This spectator <verbatim|A> is not asserted to be the
  same constant as in <verbatim|CellHyp>.
  <verbatim|YM.Extraction.Order.PointLimits>
  (<verbatim|Lean/YM/Extraction/Limits.lean>) asserts existence of one family
  of intermediate tables <verbatim|P_p>: the mesh approximations are locally
  uniform on compact cyclic configurations at each fixed period, and the
  selected period tables converge locally uniformly to the same final table
  on compact generic configurations. This nested mesh-then-period statement
  is stronger than merely postulating a numerical limit for each test, and it
  supplies the fixed-scale evaluation used here without exchanging limits.
  Neither hypothesis is derived in this unit.

  The scalar term in the chart identity has the exact mesh normalization
  recorded in the manuscript. <verbatim|YM.Trace.Terrace.move_anchor_unit>
  (<verbatim|Terrace/Bang.lean>) sends the reference unit label to
  <verbatim|a_k^4 e\<#2080\>>; consequently the inverse arch sends
  <verbatim|e\<#2080\>> to <verbatim|a_k^(-4)> times that reference unit.
  <verbatim|YM.Trace.Terrace.king_unit> and <verbatim|cash_pinc>
  (<verbatim|Terrace/Insert.lean>) identify its projection with the field
  unit and show centering removes it. The claim applies at and above the
  grade-four reference cutoff.

  The finite detector explanation follows
  <verbatim|YM.Next.UVStress.observes> (<verbatim|Lean/YM/Next/UV_STRESS/Shell.lean>):
  <verbatim|meets_grid> approximates a generic configuration,
  <verbatim|raised> subtracts the first grid address and uses token
  representatives for the spectators, and translation covariance and
  continuity carry the evaluations back to the original configuration. Field
  separation is an independent table-hierarchy input. Finite dimensionality
  is used only after this separating family has been obtained.

  For the low-grade unit step, <verbatim|YM.Trace.Shelves.front_low>
  (<verbatim|Lean/YM/TraceExtension/Shelves/Height.lean>) uses
  <verbatim|nbase> to show a representative in grade below four is scalar and
  then uses the table unit convention. At grade <verbatim|d>, the projection
  of the scalar coordinate label is <verbatim|a_ref(d)^(-d)> times the field
  unit; the positive mesh makes this factor nonzero. The manuscript needs
  only the resulting one-dimensional span, not equality of the unscaled
  scalar label and the unit.

  The exact local prerequisite for the principal trace-current step is
  <verbatim|YM.Trace.Margin.Jade> (<verbatim|Lean/YM/TraceExtension/Margin/Bald.lean>):
  <verbatim|holds> is translation covariance (<verbatim|Bounce>) of the
  selected localized current, <verbatim|pace> is the actual root
  <verbatim|Cubc> certificate for the current, and <verbatim|heart> is the
  corresponding certificate for its forward difference.
  <verbatim|YM.Trace.Shelves.microphone> (<verbatim|Shelves/Fame.lean>) uses
  these separately to buy the grade-three current and grade-four difference
  recordings through <verbatim|YM.Trace.Slate.bank>, then invokes
  <verbatim|Trespass> on each and the forward identity in
  <verbatim|YM.Trace.Shelves.beacon_h>. Its grade-four label is selected for
  that current and direction; it need not equal any pre-existing diagonal
  tensor label. The principal finite-volume trace identity is transferred
  between these independently recorded labels by the finite-sum correlation
  comparison (<verbatim|YM.Trace.Shelves.bake_sum>), all along the same
  filter. This is the distinction reproduced by the manuscript\<#2019\>s
  separate <verbatim|v_{d,k}>, <verbatim|w_{d,k}> and <verbatim|x^0_k(a,a)>.
  The selected <verbatim|Grant> supplies this <verbatim|Jade> directly
  through <verbatim|WorthB.sea.flames>; construction of that grant and its
  quantitative funding remain upstream inputs.

  The <verbatim|Jade> data are themselves fields of the common ticket, not
  free choices for each detector. <verbatim|YM.Trace.Margin.Grant>
  (<verbatim|Margin/Stand.lean>) states the order explicitly: eventually in
  scale, then on a large set of separation parameters, the ticket has
  <verbatim|WorthB>; <verbatim|WorthB.sea> contains <verbatim|Scraps>, whose
  <verbatim|flames> and <verbatim|floors> supply the current and
  antisymmetry-current <verbatim|Jade> certificates on that same set. The
  source producer <verbatim|YM.Trace.Margin.shred>
  (<verbatim|Margin/Bald.lean>) proves <verbatim|Scraps> eventually in the
  inverse coupling under a stage collar, <verbatim|Age>, <verbatim|Sight> and
  the explicit side condition <verbatim|20*(high(t)+10)\<less\>side>.
  <verbatim|YM.Trace.Margin.taxes> (<verbatim|Margin/Ansel.lean>) places this
  result and purchase readiness in <verbatim|WorthB>, while
  <verbatim|YM.Trace.Margin.agenda> (<verbatim|Margin/Stand.lean>) selects
  tickets for its specialized <verbatim|Family.mk> under
  <verbatim|YM.PhysicalNext.Repeat.Legato.Bandage>,
  <verbatim|YM.PhysicalNext.Repeat.Graces.Nest>,
  <verbatim|YM.Trace.Perfect.Vigil>, <verbatim|YM.Trace.Margin.Acclaim>,
  <verbatim|supportQ> and <verbatim|G.Simple>, with both coordinate
  projections of the separation filter tending to infinity. Those producer
  hypotheses and their quantitative prerequisites are not established anew in
  this unit.

  Inside <verbatim|shred>, <verbatim|YM.Trace.Zn.sense>
  (<verbatim|Zn/Largish.lean>) converts <verbatim|Sight> into local
  <verbatim|Bond> estimates for the tensor, current, antisymmetry current and
  divergence, with the current bounds at radius <verbatim|puff(x)>. The
  collar-backed <verbatim|YM.Trace.Weir.shimmer> and <verbatim|cast_shape>
  (<verbatim|Weir/Amen.lean>, <verbatim|Weir/Broad.lean>) turn the needed
  local regularity and bounded-support estimates into <verbatim|Cubc>
  certificates; the forward-difference certificate uses the
  <verbatim|Bond.suffix> estimate and the inclusion
  <verbatim|puff(x)+5\<leq\>high(x)>. The numerical comparison is explicit:
  <verbatim|thinM(x)/wideM(x)=exp(-(3/200)(log log x)^2)\<rightarrow\>0>, so
  any fixed finite sum or multiple of the former is eventually below the
  latter. These are the mechanisms by which the selected <verbatim|Scraps>
  input supplies both parts of each <verbatim|Jade>; the collar,
  <verbatim|Age>, <verbatim|Sight>, side and local estimates remain
  prerequisites.

  The retained purchase antecedent can be checked without substituting a
  different observable. For each eventual scale <verbatim|k>, on the same
  separation-ultrafilter-large set, <verbatim|YM.Trace.Slate.bank> obtains
  <verbatim|YM.Trace.Shunt.AtomD> for the actual grade-<verbatim|d> insertion
  and its <verbatim|Triple> readout using the selected
  <verbatim|WorthB.earnings> field when <verbatim|d\<leq\>5>. In
  <verbatim|Lean/YM/TraceExtension/Shunt/Post.lean>, <verbatim|AtomD.shape>
  is the source <verbatim|Format> condition at the root,
  <verbatim|AtomD.charge> requires a single <verbatim|a> with
  <verbatim|coeffSize(X.x)+a\<leq\>q> and <verbatim|X.remBound 0 R (sqrt t)
  a>, and <verbatim|AtomD.pays> requires a response <verbatim|f> satisfying
  both <verbatim|YM.MergeProof.Attainment R.p 0 f e> and the exact equality
  of its hooked profile with the forced profile. <verbatim|AtomD.birth> is
  the identity <verbatim|X.density 0 T R U = (R.eval U : \<bbb-C\>)*g U> for
  every configuration <verbatim|U>. The <verbatim|Attainment> condition in
  <verbatim|Lean/YM/MergeProof/Flavor.lean> requires local attachment for
  each support, every nonzero response support to contain the root, and
  nonnegative uniform response bounds whose reserved masses satisfy the
  source sum budget <verbatim|e>. In this use <verbatim|t> is the same
  representation\<#2019\>s forced allowance,
  <verbatim|q=grantS(\<beta\>\<#302\>_k)> and
  <verbatim|e=\<beta\>\<#302\>_k>; <verbatim|grantS(x)=thetaP(x)^2*exp((log
  log x)^2/6)> with <verbatim|thetaP(x)=(sqrt x)^(-1)*exp((log log x)^2)>.
  The realization of these conditions and compatibility with the same tickets
  and finite-volume representation remain assumptions supplied by the
  selected construction, not consequences of compactness or the later field
  limit.

  The scalar part of the purchase budget is now checked explicitly:
  <verbatim|YM.Trace.Shunt.grantS> (<verbatim|Shunt/Cavity.lean>) equals
  <verbatim|x^(-1) exp((13/6)(log log x)^2)> for <verbatim|x\<gtr\>1>, using
  <verbatim|YM.Trace.Swift.thetaP> (<verbatim|Swift/Happiness.lean>). Taking
  <verbatim|y=log x> and <verbatim|log y\<leq\>4*y^(1/4)> makes the exponent
  at most <verbatim|-y/2> eventually, so the budget is at most
  <verbatim|x^(-1/2)> and tends to zero. Together with the nonnegative
  <verbatim|AtomD.charge> remainder, this explains the unit coefficient
  bound; the actual <verbatim|AtomD> certificate and remaining purchase
  inequalities are not derived by this calculation. Compare
  <verbatim|YM.Trace.Terrace.book_pay> (<verbatim|Terrace/Virtu.lean>).

  The scalar bias budget in <verbatim|YM.Trace.Terrace.bias_pay> can likewise
  be seen directly. Write <verbatim|L=log log x>, <verbatim|c> for the
  selected column count, and <verbatim|\<theta\>> for the threshold. The
  source identities give <verbatim|grantS(x)=\<theta\>\<twosuperior\>
  exp(L\<twosuperior\>/6)> and <verbatim|cameo=exp(L\<twosuperior\>/2)>. Thus
  the preceding bias price is <verbatim|\<theta\>\<twosuperior\>\<centerdot\>4(1+c)
  exp(-L\<twosuperior\>/3)>. The selected <verbatim|PostT.share> bound gives
  <verbatim|c\<leq\>log x>; consequently <verbatim|4(1+c)\<leq\>exp(L\<twosuperior\>/12)>
  eventually, because the logarithm of its left side grows only linearly in
  <verbatim|L>. The price is therefore at most
  <verbatim|\<theta\>\<twosuperior\> exp(-L\<twosuperior\>/4)>, the loss used
  in the manuscript. This checks the scalar budget comparison, not the
  <verbatim|riches> purchase theorem or the selected <verbatim|PostT> and
  atom hypotheses.

  The support condition's role in the same purchase is also explicit.
  <verbatim|YM.Trace.Terrace.Meltdown> (<verbatim|Terrace/Virtu.lean>) proves
  <verbatim|Melts 1> at <verbatim|a=c=x\<#207B\>\<onesuperior\>> and forced
  allowance <verbatim|b=exp(-exp((log log x)\<twosuperior\>/5))>. In
  <verbatim|YM.MergeProof.Accent.Melts> (<verbatim|Soot/Basin.lean>), the
  remaining smallness parameter is <verbatim|t=b+r\<sqrt\>b+a+rc>, with
  <verbatim|r=siteFactor(radiusB(x))>; its volume multiplier is
  <verbatim|(2*radiusB(x)+1)^4>. The radius and <verbatim|siteFactor> grow at
  most polynomially in <verbatim|log x>, while <verbatim|b> and
  <verbatim|\<sqrt\>b> decay faster than every inverse power of <verbatim|x>.
  Hence the volume multiplier times <verbatim|t> tends to zero and
  <verbatim|exp(t)-1> tends to zero; positivity, <verbatim|a\<leq\>1>, and
  the eventual support-exponent bound complete this numerical certificate.
  This is only the <verbatim|Melts> part of the root purchase, not a proof of
  the other <verbatim|riches> hypotheses.

  The sharp-read premise left open here is not merely invertibility of a
  single column. <verbatim|YM.MergeProof.Accent.SharpRead>
  (<verbatim|Lean/YM/TraceExtension/Soot/Skein.lean>) quantifies over every
  admissible duet from the reference level to <verbatim|k> and every
  <verbatim|w\<geq\>0>; if the duet is <verbatim|Woke> at cost <verbatim|w>
  and all its point values vanish, it bounds
  <verbatim|cameo(k)*coeffSize(voice(k))> by <verbatim|4*(1+columns(k))*w>.
  <verbatim|Sceptre.bias> supplies that statement eventually in the period
  parameter, uniformly for all later volumes at each fixed <verbatim|k>. The
  scalar estimates do not establish this uniform zero-point-test implication.

  The other scalar gates in the <verbatim|riches> specialization also follow
  from the displayed budgets. At clock <verbatim|x\<geq\>1>, its choices are
  <verbatim|B=x\<threesuperior\>>, <verbatim|e=x>,
  <verbatim|v'=x\<#207B\>\<onesuperior\>>, and
  <verbatim|\<zeta\>=fly(d,k)=x^(-\<nu\>_d)> with
  <verbatim|\<nu\>_d\<geq\>4>. Hence <verbatim|e\<zeta\>=x^(1-\<nu\>_d)\<leq\>x\<twosuperior\>=v'B>.
  With <verbatim|q=grantS(x)\<leq\>1> eventually and <verbatim|c\<leq\>log
  x>, one also has <verbatim|4(1+c)q\<leq\>4(1+log
  x)\<leq\>x\<threesuperior\>> eventually. These bounds account for the
  numerical <verbatim|hD> and <verbatim|hx> premises of
  <verbatim|YM.MergeProof.Accent.riches>; they do not supply the atom
  response, the sharp read, or the transport costs.

  The two numerical receipts do come from one purchased label in the source.
  <verbatim|YM.MergeProof.Accent.riches> (<verbatim|Lean/YM/TraceExtension/Soot/Coffer.lean>)
  first chooses a single label <verbatim|b> and proves its sharp-read
  coefficient error; for that same <verbatim|b> it then proves the rooted
  observable bound uniformly over the allowed opened lower scales and
  windows. <verbatim|YM.Trace.Terrace.purchasing>
  (<verbatim|Terrace/Casa.lean>) specializes its inputs to the actual atom
  and packages the readout norm, bias and rooted bound as one
  <verbatim|Bill>. Its <verbatim|Melts>, <verbatim|SharpRead>,
  <verbatim|Scrim>, <verbatim|Buff>, stock and scale conditions are
  substantial upstream prerequisites. The scalar asymptotics above verify
  only the budget inequalities used in this specialization, not the
  construction of that shared label.

  The opened comparison scale has a concrete stock criterion.
  <verbatim|YM.Stock.Tabs.opens> (<verbatim|Lean/YM/Overlay/Prior.lean>) at
  parameter <verbatim|1> means <verbatim|h\<leq\>j> and
  <verbatim|coverSize(j)^2\<leq\>a_h/a_j>. <verbatim|Tabs.mayOpen> proves
  existence because the stock bound on squared cover sizes and the block-size
  lower bound imply <verbatim|a_(j+1)*coverSize(j+1)^2\<leq\>(2/3)*a_j*coverSize(j)^2>;
  <verbatim|Tabs.open_later> proves persistence.
  <verbatim|YM.Trace.Terrace.basin> and <verbatim|tracks>
  (<verbatim|Terrace/Stanza.lean>) select an open scale, and
  <verbatim|recordsBook> takes its maximum with <verbatim|ref(d)>. The stock
  bounds themselves remain hypotheses.

  The expanded rooted-price calculation retains the actual <verbatim|nativeC>
  formula, not a newly postulated exponential price. With <verbatim|h>
  (source <verbatim|i>) and <verbatim|j> fixed, <verbatim|\<\|\|\>alto C.path
  j d\<\|\|\> = a_j^{-d}>, <verbatim|gainChart C.path k j =
  exp((s_k-s_j)/8)>, and <verbatim|nativeC> algebraically equals
  <verbatim|2*stakes C h j*a_j^{-d}/fly(levels,d,j) * \<beta\>\<#302\>_k^4 *
  exp(-(s_k-s_j)/8)>. <verbatim|YM.MergeProof.Accent.stakes>
  (<verbatim|MergeProof/Strudel.lean>) is
  <verbatim|exp((a_h/a_j)^4*treasury_j+5)>, while
  <verbatim|YM.PhysicalNext.Repeat.Legato.Bandage.fly>
  (<verbatim|MergeProof/Stove.lean>) is <verbatim|\<beta\>\<#302\>_j^(-winter
  G d)> with <verbatim|YM.MergeProof.winter> equal to the reference-frame
  degree bound plus four (<verbatim|MergeProof/Tender.lean>). The treasury is
  the source quantity in <verbatim|YM.Vac.treasury>
  (<verbatim|Lean/YM/Vac/Treasury.lean>). All are fixed at this step;
  <verbatim|CalmsK> and the affine clock make the varying price fast. The
  manuscript now derives the actual containing-window bound from
  <verbatim|YM.Trace.Weir.Sliver> (<verbatim|Lean/YM/TraceExtension/Terrace/Ell.lean>):
  <verbatim|canvasR=Cleft(x,wheelQ(x))>, <verbatim|townD=2*coast(x,TileNo)>,
  with <verbatim|wheelQ=radiusB^60+1100>,
  <verbatim|Cleft=high+10+wheelQ*(4*radiusB+2)+2*radiusB>, and
  <verbatim|coast=(TileNo+wheelQ)*(4*radiusB+2)+10*radiusB>. These
  definitions are in <verbatim|Weir/Oolong.lean>,
  <verbatim|Terrace/{Toil,Heli,Tolls}.lean>, and
  <verbatim|Weir/Nursery.lean>. Their polynomial growth in
  <verbatim|radiusB=ceil(log\<twosuperior\> x)> gives
  <verbatim|Sliver(x)=O((1+log x)^122)=o(x^4)>.
  <verbatim|YM.Trace.Slate.Trespass> (<verbatim|Slate/Cost.lean>) chooses
  this radius and uses <verbatim|YM.Trace.Weir.lumen> for the actual interior
  certificate. The local regularity neighborhood is the tower of radius
  <verbatim|high(x)+1> (<verbatim|YM.Trace.Wicket.tempQ>,
  <verbatim|Wicket/Taps.lean>), which is contained in the chosen window
  because <verbatim|Sliver(x)\<geq\>high(x)+18>; symmetry, measurability,
  local dependence and the pointwise size bound in that certificate still
  depend on selected <verbatim|Credible> local regularity. <verbatim|passing>
  combines <verbatim|a_k R_k\<rightarrow\>0> with <verbatim|tail_zero> to
  establish <verbatim|2*(a_k R_k+tail_k)\<less\>a_h>. The manuscript now
  derives <verbatim|tail_zero> using the actual definition
  <verbatim|tail_k=30*a_k*(J_k+5)>, the mesh contraction by at least three
  and <verbatim|J_(k+1)\<leq\>J_k+1>; the resulting factor is at most
  <verbatim|2/3>. These are <verbatim|YM.Push.GridApprox.tail>,
  <verbatim|tail_next>, and <verbatim|tail_zero> in
  <verbatim|Lean/YM/Push/GRID_APPROXIMATION/Geometry.lean>. In
  <verbatim|recordsBook>, <verbatim|Stock.Tabs> chooses the open lower scale
  <verbatim|j=max(basin h,ref d)> and the <verbatim|Bill.root> field supplies
  the root-test bound on the same interior insertion and history. The
  manuscript combines that purchased bound with the separated spectator
  estimate <verbatim|YM.Trace.Pull.sails> (<verbatim|Anchor/PriceTest.lean>)
  and finite-volume correlation linearity to derive the actual-minus-local
  correlation estimate. It proves the scalar decay and geometric room
  implication but retains the <verbatim|Bill> purchase, current localization,
  spectator bound, and selected tail/point-limit inputs. It does not claim
  that the earlier <verbatim|tends_price> estimate on a <em|varying>
  basin/summit supplies the fixed-<verbatim|j> <verbatim|tranquil> bound.

  The group hypothesis is exactly <verbatim|YM.Gauge.Simple>
  (<verbatim|Lean/YM/Gauge/Lie.lean>): the real Lie algebra has a nonzero
  bracket and every real Lie ideal is zero or the whole algebra.
  <verbatim|YM.Gauge> (<verbatim|Gauge/MatrixGroup.lean>) supplies a closed
  subgroup of a finite-dimensional unitary group; it does not impose
  connectedness of that subgroup.

  <section|Literature and editorial decisions><label|literature-and-editorial-decisions>

  Searched <verbatim|blueprint/background/> for
  trace/moment/finite-dimensional results; no matched source supplies the
  selected-history chart and fast-transfer statements. A focused search found
  Cappelli\UGuida\UMagnoli, <em|Exact Consequences of the Trace Anomaly in
  Four Dimensions> (<hlink|https://arxiv.org/abs/hep-th/0103237|https://arxiv.org/abs/hep-th/0103237>),
  about general quantum trace Ward identities, not this source's
  finite-volume branch or its rate. Its abstract was checked; it is not
  invoked as a proof or asserted to have matching hypotheses. The elementary
  material-trace formula and continuous evaluation are proved directly in the
  manuscript, with the source's ordered-sum normalization. The downstream
  <verbatim|trace-scribe-producer.tex> contains a short conditional assembly;
  integration should replace or cross-reference its duplicated sketch rather
  than preserve two authoritative proofs. Shared chapter and metadata edits
  are outside this claim.

  For that integration, the assembly's <verbatim|L_i>,
  <verbatim|\<Omega\>_i>, <verbatim|\<Delta\>_i> correspond to branches
  <verbatim|0>, <verbatim|->, <verbatim|+>, and its <verbatim|z_i> is
  <verbatim|\<beta\>\<#302\>_{k_i}>. Its <verbatim|q_i> denotes the selected
  effective coupling <verbatim|\<beta\>_Z(k_i)>, whereas this section's
  <verbatim|\<varpi\>_i=\<beta\>_Z(m_i)r_i^4> is a vane-level crown and its
  <verbatim|\<omega\>_i=\<beta\>_Z(k_i)r_i^4> is the summit crown. The
  assembly's coefficient space <verbatim|\<b-cal-L\>_4> corresponds to
  <verbatim|E_4>, and its target <verbatim|\<b-cal-F\>_4> in the phase
  formula is this section's standard field space <verbatim|\<b-cal-F\>_4^0>
  (not the interacting <verbatim|\<b-cal-F\>_4^int>). The assembly's tensor
  map <verbatim|\<cal-P\>_i> applies this section's field map
  <verbatim|\<#1D5AF\>_i> entrywise; its ordered array <verbatim|W_i^Q> is to
  be matched with <verbatim|W^{\<nu\>_Q}_{k_i}> using the same
  branch-specific recording. Both <verbatim|W^{\<nu\>_Q}_{k_i}> and the arch
  entering <verbatim|\<#1D5AC\>_i> use fixed-scale separation-ultrafilter
  limits, so the assembly wording \Pfinite-volume\Q should not be read as a
  single raw finite-volume map. These identifications require the same
  selected history, actual <verbatim|Rod> record and chart; no second
  selection is implied. The local vane and summit crowns were renamed
  <verbatim|\<varpi\>_i> and <verbatim|\<omega\>_i> to avoid collisions with
  the assembly's effective-coupling <verbatim|q_i>, correction-coefficient
  vector <verbatim|c_i>, and <verbatim|trace-bill-prices.tex>'s gain
  <verbatim|\<gamma\>_i>.

  Integration question for the parent: <verbatim|manuscript/existence/trace-scribe-producer.tex>
  calls <verbatim|\<cal-O\>> the \Pdistinguished unit field\Q near the start
  of the section. Here and in the pinned source
  <verbatim|YM.Trace.Over.OScale>, <verbatim|\<cal-O\>> is the projection of
  the ordered curvature-square label, not the vacuum unit <verbatim|1>: its
  standard-table expectation is zero (it is a diagonal entry of the true
  material tensor with leading coefficient zero), whereas the unit's
  expectation is one. It is also nonzero by the argument above. If \Punit\Q
  was intended to mean a normalization convention rather than the
  multiplicative unit, the assembly should say so explicitly; the parent owns
  that wording and no shared file was edited here.

  <section|Unresolved obligations and validation><label|unresolved-obligations-and-validation>

  <\itemize-minus>
    <item>The displayed coefficient, grade-four chart,
    localized-recording/low-grade detection and arch-growth receipts have
    upstream source producers, with hypotheses and gaps above. The manuscript
    now proves the <verbatim|lent>-type telescoping and raw trace transfer
    from those recording inputs. Their complete selected-run production has
    not been established independently in this unit: in particular, no fresh
    quantitative closure of <verbatim|Trespass>/<verbatim|Jade> or of
    <verbatim|unveil>'s chart inputs is claimed.

    <item>The repository\<#2019\>s imported <hlink|axiom
    evidence|../../../source/evidence/axioms-3456e5e.tm> reports that its 17
    named release roots use <verbatim|propext>, <verbatim|Classical.choice>
    and <verbatim|Quot.sound>, with no <verbatim|sorryAx> or project-defined
    axiom in those reported root closures. It also reports an archive-wide
    direct declaration scan of 249,713 <verbatim|YM> declarations with zero
    direct <verbatim|sorryAx> uses and zero project axioms; this
    supplementary scan is not a transitive audit of every declaration. The
    same evidence records a deliberate <verbatim|sorry> in the separate
    reference declaration at <verbatim|Lean/Challenge.lean:5>; the
    solution-root verifier reports do not include that placeholder. That
    earlier evidence used a checksum-verified prebuilt artifact and is not a
    fresh audit of this unit\<#2019\>s declarations. The named release-root
    list is not an individual transitive axiom report for
    <verbatim|YM.Trace.Shelves.nearing_h>, <verbatim|muteP>, or
    <verbatim|chartB>; individual axiom lists have not been measured here.

    <item>The imported reachability inventory gives additional, conditional
    replay evidence for all three target declarations.
    <verbatim|Lean/verification/declaration-usage.tsv> records
    <verbatim|chartB \<rightarrow\> nearing_h \<rightarrow\>
    YM.Trace.Over.blossoms> and <verbatim|muteP \<rightarrow\>
    YM.Trace.Over.blossoms>; the recorded witness chains continue to
    <verbatim|YM.Nonperturbative.continuum_with_position_tests>. The local
    TSV SHA-256 is <verbatim|1f16d6cbf7cd650c7edccd08f95967ce92cd7e36ec68cfdd081621aec126c5e9>,
    matching the checked-in digest in <hlink|the regenerated-usage
    evidence|../../../source/evidence/usage-3456e5e.tm>, which reports that
    the declaration, status, root and parent columns reproduce from the
    pinned compiled artifact. The imported verifier traversed the same
    constant-dependency mechanism from the same root list and reports kernel
    replay of the resulting 100,168 project declarations. Thus, assuming that
    imported evidence and artifact correspondence, these target declarations
    lie within the previously replayed closure. The verifier recursively
    rejects project axioms and checks that external-boundary axioms are among
    <verbatim|propext>, <verbatim|Classical.choice> and
    <verbatim|Quot.sound>; this supplies an inherited upper bound on their
    axiom dependencies in that archived environment. It does not establish
    which of those three each target actually uses. Both conclusions are
    inferences from the archived inventory and replay, not a new run, an
    individual <verbatim|#print axioms> result, or a verification of their
    hypotheses and mathematical interpretation.

    <item>Exact source-to-prose correspondence, normalization, every upstream
    hypothesis, and mathematical proof require independent review. No
    independent approval is recorded.

    <item>Lean build and axiom audit: <strong|unrun>. The pinned toolchain is
    <verbatim|leanprover/lean4:v4.32.0>; the available checking environment
    has only <verbatim|v4.35.0> and no matching dependency/build cache. No
    replacement toolchain or dependency download was attempted. Inspected
    Lean text is not a kernel replay. The full existence theorem and physical
    stress construction remain outside scope.
  </itemize-minus>

  <ym-unit-nav|<hlink|\<leftarrow\> YM-000033|../YM-000033/correspondence.tm>|<ym-nav-here|YM-000034:
  Trace branch moment limits and weighted washout
  (draft)><ym-nav-sep><hlink|HANDOFF|HANDOFF.tm><ym-nav-sep><hlink|validation|validation.tm>|>
</body>

<\initial>
  <\collection>
    <associate|html-title|Branch moments and trace washout: source
    correspondence \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1.1|2>>
    <associate|auto-3|<tuple|1.2|5>>
    <associate|auto-4|<tuple|2|8>>
    <associate|auto-5|<tuple|3|17>>
    <associate|auto-6|<tuple|4|17>>
    <associate|branch-moments-and-trace-washout-source-correspondence|<tuple|?|1>>
    <associate|crosswalk|<tuple|2|8>>
    <associate|exact-incoming-receipts-and-their-status|<tuple|1.2|5>>
    <associate|literature-and-editorial-decisions|<tuple|3|17>>
    <associate|notation-and-inputs|<tuple|1|1>>
    <associate|source-endpoint-hypothesis-ledger|<tuple|1.1|2>>
    <associate|unresolved-obligations-and-validation|<tuple|4|17>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Notation
      and inputs> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Source endpoint hypothesis ledger
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|Exact incoming receipts and their status
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Crosswalk>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Literature
      and editorial decisions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Unresolved
      obligations and validation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>