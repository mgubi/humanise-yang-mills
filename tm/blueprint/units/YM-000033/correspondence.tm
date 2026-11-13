<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../outline.tm><ym-nav-sep><hlink|Unit
  plan|../../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../index.tm><ym-nav-sep><hlink|Manuscript|../../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> YM-000026|../YM-000026/correspondence.tm>|<ym-nav-here|YM-000033:
  Selected trace sensor and weighted Ward limit
  (draft)><ym-nav-sep><hlink|HANDOFF|HANDOFF.tm><ym-nav-sep><hlink|validation|validation.tm>|<hlink|YM-000034
  \<rightarrow\>|../YM-000034/correspondence.tm>>

  <ym-title|Selected trace sensor: source
  correspondence><label|selected-trace-sensor-source-correspondence>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Input contract
    and notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Formal
    hypothesis crosswalk> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Quantifier
    checkpoints> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Correspondence
    and proof boundaries> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Literature and
    editorial decisions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Outstanding
    obligations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Revision
    response to independent review #126, corrected by #127>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>
  </table-of-contents>

  <\itemize-minus>
    <item>Issue: <hlink|https://github.com/hairer/humanise-yang-mills/issues/33|https://github.com/hairer/humanise-yang-mills/issues/33>;
    unit YM-000033.

    <item>Status: draft; formal independent acceptance remains pending.

    <item>Authoritative text: <verbatim|manuscript/existence/trace-prosper-sensor.tex>,
    Proposition <verbatim|prop:trace-prosper-sensor>; it invokes the existing
    receiver and scalar-medium proofs in <verbatim|manuscript/existence/trace-weighted-estimates.tex>,
    and the separately conditional priced-mission lemma in
    <verbatim|manuscript/existence/trace-small-means.tex>.

    <item>Original extraction checkpoint:
    <verbatim|660cada6a037210475f3f5873fdce8c4f627240c>; public candidate
    base: <verbatim|d3bb3ded6a7145087456df1f4eab886dc5f622c7>; imported Lean
    revision <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>.

    <item>Contributor: TrishenGunaratnam; drafting and source inspection
    assisted by Codex. Scott Armstrong's informalization map is credited by
    the parent checkpoint as navigation, not evidence.
  </itemize-minus>

  <section|Input contract and notation><label|input-contract-and-notation>

  The selected-chart input <verbatim|eq:trace-sensor-chart> spells out the
  componentwise terminal identity and odd-vector core identity used in
  <verbatim|YM.Trace.Terrace.lensP>, alongside its limiting section. The
  manuscript derives the array-level real covariance and the eventual
  right-inverse identity from intertwining of the selected lift and arch maps
  and the same odd-core cancellation as <verbatim|lensP>. It also derives
  pointwise transported-lift convergence from the initial price and the
  derived transport estimate. Both are derived from separate finite-volume
  receipts and their ultrafilter limits; the arch-scale ratio is derived from
  the clock inputs. These primitive receipts are upstream inputs, not sensor
  conclusions. The limiting section is the componentwise grade-five
  <verbatim|ladder>; the source's <verbatim|lensP> supplies its right-inverse
  identity and the eventual common-tail chart properties. The source supplies
  this chart under the parameters in <verbatim|springs>: <verbatim|hZ : steep
  \<b-cal-L\> Z>, <verbatim|H : C.Makes>, <verbatim|hb : (\<b-cal-L\> :
  Filter (\<bbb-N\> \<times\> \<bbb-N\>)) \<leq\> F.fuse>, <verbatim|hr :
  Scrim C W u \<psi\> \<varphi\> \<delta\> \<zeta\> r D>, <verbatim|hq :
  Gondola F a X \<b-cal-L\> V Y>, <verbatim|K : Sceptre C W>,
  <verbatim|\<theta\> : PostT C.path.levels>, <verbatim|hG : G.Simple>, and
  <verbatim|hp : Spun Z X V a s>. These are structured assumptions, not
  asserted to follow just from the abstract identities in the manuscript.
  <verbatim|Gondola.growth> is the selected-level divergence;
  <verbatim|Gondola.terminal> supplies eventual grade-five lift convergence
  along the fixed ultrafilter and <verbatim|X.U i 5 z = S.project 5 (Y 5 i
  z)> for every field <verbatim|z>. <verbatim|Spun.starts> identifies the
  sensor on a common tail, component by component, with the normalized Vault
  map. <verbatim|YM.Trace.Terrace.vspin> and <verbatim|cruise> make each
  <verbatim|Y 5 i h_\<alpha\>> odd under total inversion; <verbatim|gateW>
  transports oddness through <verbatim|Z.M>, and <verbatim|nights> proves the
  core fixes that odd vector. The source's finite-volume/scale chart
  production has not been independently audited in this unit; the above is
  the precise interface consumed.

  The second input <verbatim|eq:trace-sensor-marked> is <strong|exactly> the
  three extra arguments of <verbatim|springs>, for an arbitrary sequence
  <verbatim|v>: convergence to <verbatim|Stem5>, <verbatim|hueK(A)(Stern V i)
  \<bullet\> s i (v i) \<rightarrow\> 0>, and <verbatim|hueK(A)(Stern V i) *
  Lease (U#) hG (v i) \<rightarrow\> 0>. There is no requirement that
  <verbatim|v> be the medium or that the resulting functionals converge in
  the statement of <verbatim|Prosper>. The special medium is one later
  supplier, not a restriction on <verbatim|springs>. Pointwise inequalities
  in <verbatim|Prosper.vote> have one eventual index uniform over vectors;
  the weighted bound has a tail that may depend on the positive epsilon. Both
  are preserved.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Manuscript
  notation>>|<cell|<strong|Pinned source definition /
  conversion>>>|<row|<cell|<verbatim|G.Simple>>|<cell|<verbatim|YM.Gauge.Simple>
  in <verbatim|Lean/YM/Gauge/Lie.lean> asserts noncommuting Lie algebra
  elements and absence of proper nonzero real Lie ideals. <verbatim|YM.Gauge>
  is a closed subgroup of a fixed finite-dimensional unitary group
  (<verbatim|Lean/YM/Gauge/MatrixGroup.lean>); no stronger connectedness
  assumption is inserted.>>|<row|<cell|<verbatim|E>,
  <verbatim|H>>|<cell|<verbatim|Bowl (C.labels.level 5)>, <verbatim|TableOne
  a.spin>: real subspaces of axis-indexed grade-five coefficients and fields
  with reality and signed-vector covariance;
  <verbatim|YM.StressFlux.vectors>, <verbatim|Lean/YM/Push/STRESS_FLUX/Counts.lean>.
  Norms are the inherited finite-dimensional
  norms.>>|<row|<cell|<verbatim|\<#1D5B5\>>, <verbatim|\<b-cal-F\>>,
  <verbatim|S\<#2085\>>, <verbatim|Col_j(\<omega\>)>>|<cell|The local
  grade-five complex coefficient space <verbatim|C.label 5>, reference field
  <verbatim|(Cells.standard C).Field 5> (not automatically the public
  quotient <verbatim|F_5>), selected interacting field <verbatim|S.Field 5>
  (not the shared mixed correlation <verbatim|\<cal-S\>^mix>), and
  finite-volume <verbatim|YM.Trace.Terrace.Cturn C 5 j N \<nu\>>,
  respectively. The <verbatim|Col> notation is local to this section and is
  distinct from the shared construction family <verbatim|\<cal-C\>>;
  <verbatim|\<nu\>> is the period index, distinct from the reference
  coefficient <verbatim|p>, the shared character measure
  <verbatim|\<nu\>_ph>, and the locally scoped Green-function constant
  <verbatim|\<nu\>=(4\<pi\>\<twosuperior\>)\<#207B\>\<onesuperior\>> in
  <verbatim|trace-free-rank.tex>.>>|<row|<cell|<verbatim|core>,
  <verbatim|Dil_t>, <verbatim|Pos_t>, <verbatim|Block_j>>|<cell|The
  unit-coordinate deletion <verbatim|YM.Labels.Frame.core>, factor-degree
  dilation <verbatim|YM.Labels.Frame.scaled>, position-degree weight
  <verbatim|YM.Next.Rank.Price.weightTag>, and block transport
  <verbatim|YM.Bid.vowel>; see <verbatim|Lean/YM/Labels/Reference.lean>,
  <verbatim|Lean/YM/Next/RANK/Matrices.lean>, and
  <verbatim|Lean/YM/Bid/Loan.lean>. These local operator names avoid the
  shared OPE reader <verbatim|Q>, contact package <verbatim|\<cal-D\>>,
  Wilson family <verbatim|\<cal-W\>>, and token-space
  notation.>>|<row|<cell|<verbatim|\<chi\>>, <verbatim|\<#1D5AB\>_i>,
  <verbatim|\<#1D5B1\>_i>>|<cell|<verbatim|\<chi\>> is the positive scalar
  running rate at the currently fixed initial level, and
  <verbatim|\<#1D5AB\>_i, \<#1D5B1\>_i> are the normalized initial/postlevel
  coefficient vectors used only in the convergence calculation. The latter
  are distinct from the block sizes <verbatim|L_j> and the shared label space
  <verbatim|\<b-cal-L\>_d>.>>|<row|<cell|<verbatim|f>,
  <verbatim|x>>|<cell|<verbatim|YM.Trace.Terrace.Vbase a.spin>,
  <verbatim|Stem5 (C.labels.level 5)>, <verbatim|Lean/YM/TraceExtension/Terrace/Vector.lean>.
  <verbatim|plate> identifies <verbatim|E> with <verbatim|RawOne G>,
  <verbatim|Vbase> is the componentwise reference projection, and
  <verbatim|Stem5> is the inverse image of the equation-of-motion vector.
  <verbatim|Stem5_kernel> and <verbatim|Stem5_alive> require
  <verbatim|G.Simple>.>>|<row|<cell|<verbatim|\<rho\>>,
  <verbatim|J\<#207D\>\<onesuperior\>\<#207E\>>,
  <verbatim|J\<#207D\>\<twosuperior\>\<#207E\>>,
  <verbatim|J\<#207D\>\<threesuperior\>\<#207E\>>>|<cell|<verbatim|YM.Trace.Terrace.Lease
  (C.labels.level 5) hG = YM.Trace.rho hG \<circ\> plate>,
  <verbatim|Lease.lean> and <verbatim|Lean/YM/TraceExtension/Foundation/Dilate.lean>.
  <verbatim|YM.Trace.momentum1>, <verbatim|.momentum2>, <verbatim|.basisV>,
  <verbatim|Lean/YM/TraceExtension/Foundation/Caps.lean>, and
  <verbatim|YM.StressFlux.eom>, <verbatim|Lean/YM/Push/STRESS_FLUX/Polynomial.lean>,
  give the three displayed raw vectors. Their source membership proofs are
  <verbatim|YM.Trace.momentum1_mem>, <verbatim|YM.Trace.momentum2_mem>
  (<verbatim|Caps.lean>), and <verbatim|YM.StressFlux.eom_rows>
  (<verbatim|Lean/YM/Push/STRESS_FLUX/Counts.lean>); the prose gives the
  color and signed-covariance argument, <verbatim|YM.Trace.bareVector_coords>
  and <verbatim|.bareCoordinates> establish the stated unique coordinates,
  <verbatim|rho_vector> gives <verbatim|\<minus\>4(w\<#2080\>+4w\<#2081\>)>,
  <verbatim|YM.Trace.mechanical_trace> gives the trace normalization by
  <verbatim|YM.Trace.square4 = \<b-cal-I\>/4>, <verbatim|euler> gives the
  stress-divergence coordinates via the Bianchi identity, and
  <verbatim|eom_vector_raw> identifies the displayed coordinates of
  <verbatim|J\<#207D\>\<threesuperior\>\<#207E\>>. The manuscript expands the
  divergence and trace calculations. <verbatim|Lease_alive> supplies
  <verbatim|\<rho\>(x)=0>; this equality is informative but not needed for
  the abstract receiver argument.>>|<row|<cell|<verbatim|j\<#2080\>>,
  <verbatim|k_i>, <verbatim|n_i>, <verbatim|\<beta\>\<#302\>>>|<cell|<verbatim|C.ref
  5>, <verbatim|(V i).k>, <verbatim|Stern V i = summit A ((V i).k)>,
  <verbatim|A.clock.hatBeta>; <verbatim|A=C.path.levels>. The first postlevel
  is defined by <verbatim|YM.Trace.Terrace.summit> in <verbatim|Base.lean>
  via the first natural <verbatim|n\<gtr\>j> with <verbatim|Gate (hatBeta j)
  \<leq\> A.S.scale n \<minus\> A.S.scale j>, <verbatim|Gate z=(log z)^48>.
  <verbatim|Sstar> and <verbatim|Gondola.growth> yield
  <verbatim|n_i\<rightarrow\>\<infty\>>; <verbatim|A.fits.delayed> is the
  explicit <verbatim|hatBeta j\<gtr\>1> condition that makes both logarithms
  real; <verbatim|hrate> uses <verbatim|A.S.divergent> and
  <verbatim|Gauge.slopeConstant_pos hG>.>>|<row|<cell|<verbatim|\<ell\>_j>,
  <verbatim|L_j>, <verbatim|\<gamma\>>, <verbatim|b_j> and clock
  inputs>|<cell|<verbatim|A.S.scale j>, <verbatim|(A.S.block j).val>,
  <verbatim|G.slopeConstant>, <verbatim|Z.\<beta\> j>.
  <verbatim|YM.Trace.Terrace.qNext> gives the logarithmic increment and
  <verbatim|PostT.bloom> the block upper bound (<verbatim|Lyre.lean>,
  <verbatim|Base.lean>). <verbatim|Merr> gives the arbitrary-\<varepsilon\>
  relative-to-scale arch error and <verbatim|measured> positivity
  (<verbatim|Dusk.lean>). The written minimal-overshoot argument follows
  <verbatim|back_gate> (<verbatim|Lyre.lean>), and the final ratio passage
  follows <verbatim|gamut> and <verbatim|Barry> (<verbatim|Dusk.lean>,
  <verbatim|Bang.lean>). The finite-volume source of <verbatim|Merr> and the
  selected <verbatim|PostT> receipt remain upstream
  inputs.>>|<row|<cell|<verbatim|\<frak-a\>_i>>|<cell|<verbatim|hueK A (Stern
  V i)=AgeK A (1/5) (Stern V i)=exp((1/5)(log(log
  \<beta\>\<#302\>_{n_i}))\<twosuperior\>)>; <verbatim|Lease.lean>,
  <verbatim|Look.lean>, <verbatim|Lean/YM/TraceExtension/Zn/Have.lean>.
  <verbatim|Zn.wake> gives positivity and <verbatim|Zn.awe> with
  <verbatim|hrate>, <verbatim|Sstar>, <verbatim|growth> gives
  divergence.>>|<row|<cell|<verbatim|P>, <verbatim|X_i>,
  <verbatim|Y_i>>|<cell|<verbatim|S.project 5>, <verbatim|X.U i 5>,
  <verbatim|Y 5 i>; the identity <verbatim|P Y_i = X_i> is
  <verbatim|Gondola.terminal 5> on a tail, and <verbatim|X_i> is the chosen
  grade-five linear equivalence.>>|<row|<cell|<verbatim|M_i>,
  <verbatim|\<vartheta\>_j>, <verbatim|t_i>, <verbatim|core>, <verbatim|b_n>,
  <verbatim|r_i>, <verbatim|c_i>>|<cell|<verbatim|Z.M 5 n_i>,
  <verbatim|(A.budget j).threshold>, <verbatim|(A.budget n_i).threshold>,
  <verbatim|(C.labels.level 5).core>, <verbatim|Z.\<beta\> n>, <verbatim|X.r
  i>, <verbatim|crown Z X (Stern V) 5 i = b_{n_i} r_i^5>; see
  <verbatim|Bang.lean>, <verbatim|Path.lean>, <verbatim|Insert.lean>.
  <verbatim|swale = t_i^{-2} core M_i>, <verbatim|Vault = P (c_i
  t_i\<twosuperior\> M_i^{-1})>, and <verbatim|prize = c_i^{-1} swale>.
  <verbatim|\<vartheta\>_j> is a positive real threshold, distinct from the
  period subsequence <verbatim|\<tau\>> reserved in the shared glossary. The
  source uses these identities on the appropriate graded/covariant arrays;
  <verbatim|core> need not be the identity on arbitrary
  coefficients.>>|<row|<cell|<verbatim|s_i>, <verbatim|U>, <verbatim|u_i>,
  <verbatim|v_i>>|<cell|<verbatim|s i>, <verbatim|U> and <verbatim|t i>
  chosen in <verbatim|lensP>, and the arbitrary argument <verbatim|v i> in
  <verbatim|springs>, respectively. <verbatim|Spun.starts> and the private
  predicate in the proof of <verbatim|lensP> give the displayed chart
  formulas on an eventual common tail. <verbatim|section5> supplies
  <verbatim|U>; <verbatim|arrive_t> supplies pointwise convergence. The prose
  derives the former from the invariant Hermitian form and the free-null
  orthogonal complement: its <verbatim|K> is exactly
  <verbatim|(Cells.standard C).null 5>, the kernel of the reference quotient
  projection. The quotient and its map are <verbatim|YM.Table.Field> and
  <verbatim|YM.Table.project> (<verbatim|Lean/YM/Euclid/Null.lean>);
  <verbatim|YM.Further.CorrectedLift.freeKernel> identifies this free null
  with the equation subspace (<verbatim|Lean/YM/Further/CORRECTED_LIFT_COEFFICIENTS/Basis.lean>).
  <verbatim|YM.Push.CutoffProjectors.pair_formula> defines the stated
  signed-orbit inner product, while <verbatim|retain_mem> and
  <verbatim|removed> show that <verbatim|retain K> is the unique
  representative in the associated normal complement of the same quotient
  class (<verbatim|Lean/YM/Push/CUTOFF_PROJECTORS/Frame.lean>). The equation
  <verbatim|YM.Further.CorrectedLift.ladder_on> identifies that
  representative with the source ladder on each projected coefficient;
  <verbatim|ladder_reads>, <verbatim|ladder_spin>, and <verbatim|ladder_conj>
  give the projection, signed and reality identities
  (<verbatim|Lean/YM/Further/CORRECTED_LIFT_COEFFICIENTS/Basis.lean>). This
  identifies the particular section used by the finite-volume lift, rather
  than an arbitrary equivariant section.>>|<row|<cell|<verbatim|W_j>,
  <verbatim|D_i>, <verbatim|\<eta\>_i>, <verbatim|\<delta\>_i>>|<cell|<verbatim|swale
  Z 5 j = threshold_j\<#207B\>\<twosuperior\> \<bullet\> core \<circ\> Z.M 5
  j>; <verbatim|D_i = Z.\<beta\> ((V i).k) * (X.r i)^5>; <verbatim|AgeK A
  (\<minus\>1/2) ((V i).k)>; and <verbatim|part A ((V i).k) = AgeK A
  (\<minus\>2/5) ((V i).k)>. The coordinate norm
  <verbatim|\|\<centerdot\>\|\<#2081\>> is <verbatim|Frame.coeffSize>. For
  each component, the first inequality is <verbatim|YM.Trace.Terrace.sky_tip>
  (<verbatim|Gondola.lean>) applied to the odd grade-five lifted field, with
  <verbatim|core(ladder)=ladder>; the second is <verbatim|nightsE>
  (<verbatim|Bang.lean>) at the initial and summit levels; the derived
  arch-scale ratio corresponds to <verbatim|Barry> (<verbatim|Bang.lean>).
  <verbatim|floss>, <verbatim|stair_link>, and <verbatim|arrive_t>
  (<verbatim|Path.lean>) perform the same normalization, relative-error and
  scale-ratio passage. The prose proves this passage and the clock-to-ratio
  step; it does not claim to construct the tested/calibration, raw residual
  or primitive clock receipts.>>|<row|<cell|<verbatim|z_j(\<omega\>)>,
  <verbatim|z\<#303\>_j(\<omega\>)>, <verbatim|g_j>, <verbatim|C_j> and the
  one-step inputs>|<cell|<verbatim|YM.Trace.Terrace.spine C 5 j N p (Y 5 i
  h_\<alpha\>)> (<verbatim|Knob.lean>) and <verbatim|YM.Trace.Terrace.Cturn C
  5 j N p (Y 5 i h_\<alpha\>)> (<verbatim|Knell.lean>), with
  <verbatim|\<omega\>=(N,\<nu\>)> (the Lean period argument is
  <verbatim|p=\<nu\>>) and the same input label at every level;
  <verbatim|gear A j> and <verbatim|(A.params j).columns> are <verbatim|g_j>
  and <verbatim|C_j>; <verbatim|YM.Trace.Terrace.cameo_age>
  (<verbatim|Look.lean>) identifies the denominator <verbatim|cameo A (j+1)>
  with <verbatim|A_{1/2}(j+1)>. The raw residual and threshold ratio are the
  exact <verbatim|YM.Trace.Terrace.Sceptre.step> receipt
  (<verbatim|Knell.lean>), eventually in period <verbatim|p> uniformly in
  <verbatim|N> above the level and in the terminal label. The manuscript
  derives the common large set on each fixed finite interval from these tails
  and the two coordinate-tail consequences <verbatim|link_period> and
  <verbatim|link_mesh> of fuse domination. The prose derives grade-five
  dilation coordinatewise from <verbatim|Bid.vowel>
  (<verbatim|Lean/YM/Bid/Loan.lean>), <verbatim|Frame.scaled>
  (<verbatim|Lean/YM/Labels/Reference.lean>), the transported odd-grade
  receipt and the reference-frame bidegree classification. The manuscript now
  derives that classification from positive factor degree, minimum jet weight
  two, the degree-five bound and the previously proved vanishing of invariant
  linear forms; inversion parity comes from the jet weights. The exact source
  results are <verbatim|YM.Trace.nbase> (<verbatim|Lean/YM/TraceExtension/Quince/Nadir.lean>)
  and <verbatim|YM.Trace.basis_turn>/<verbatim|sign_rows>
  (<verbatim|Lean/YM/TraceExtension/Quince/Platt.lean>). This matches
  <verbatim|core_scale>; the normalized one-step estimate is
  <verbatim|readStep>, and <verbatim|night_space>/<verbatim|night_grade>
  supply its grade premise (<verbatim|Knob.lean>). The written factor four is
  the actual threshold-ratio square. <verbatim|YM.Trace.Terrace.rounder>
  (<verbatim|Look.lean>) bounds <verbatim|gearK=4*gear> by <verbatim|part A
  k_i / (2*(n_i-k_i))>; the manuscript gives the clock, column-budget and
  <verbatim|AgeK(1/10)> comparison establishing this price bound. The private
  helper <verbatim|casc> and <verbatim|YM.Trace.Terrace.spine_pitch>
  (<verbatim|Look.lean>) prove the finite backward-induction estimate, and
  <verbatim|topPitch> plus <verbatim|nightsE> (<verbatim|Bang.lean>) pass to
  the selected ultrafilter limit. The raw residual, grade/symmetry, threshold
  and column-budget receipts and ultrafilter convergence remain inputs. In
  particular, the ultrafilter-late condition <verbatim|N \<geq\> n_i> comes
  from the fixed fuse domination; it is not a claim of a tail uniform over
  all <verbatim|i>.>>|<row|<cell|<verbatim|Z_i(\<omega\>)>,
  <verbatim|B_i(\<omega\>)> and finite initial-price
  receipt>|<cell|<verbatim|spine C 5 k_i N p (heightV V i 5 (N,p)
  h_\<alpha\>)> and <verbatim|C.path.\<beta\> N p k_i * (X.r i)^5>,
  respectively. The displayed finite-volume bound is the <verbatim|via_step>
  application in <verbatim|YM.Trace.Terrace.sky_tip>
  (<verbatim|Gondola.lean>), under the selected
  <verbatim|InvoiceSky>/<verbatim|Vane.checked> receipts and the required
  grade of the ladder. <verbatim|Gondola.terminal> gives the selected
  finite-volume lift limit. The manuscript states the joint transport receipt
  <verbatim|steep.terms> (<verbatim|Dusk.lean>), applies it to that varying
  lift for the initial price and to the constant terminal label for each
  fixed intermediate level, and uses continuity of the core and
  <verbatim|steep.mintS> to derive the required coefficient and scalar
  limits; this is the passage packaged by <verbatim|topPitch>
  (<verbatim|Bang.lean>). The text proves the centered tested-map bound,
  normalized <verbatim|via_step> algebra and closed-inequality passage for
  each fixed <verbatim|i>; it does not construct the tested/calibration
  receipts or the selected finite-volume inputs.>>|<row|<cell|<verbatim|\<#1D5A0\>>,
  <verbatim|\<#1D5B3\>>, <verbatim|\<lambda\>_i>, <verbatim|d_{k_i}>,
  <verbatim|\<sigma\>_i> and tested/calibration
  inputs>|<cell|<verbatim|YM.Next.Rank.Price.awake> is <verbatim|\<#1D5A0\>>,
  the tested finite-volume map <verbatim|T> is <verbatim|\<#1D5B3\>>,
  <verbatim|heightV V i 5 (N,p) h_\<alpha\> = YM.Next.Rank.East.ladd C
  \<sigma\>_i k_i N p 5 T (YM.Further.CorrectedLift.ladder C 5 h_\<alpha\>)>
  for <verbatim|i\<geq\>5>, with <verbatim|T=(V i).R N p
  \<langle\>5,5\<less\>i+1\<rangle\>>, <verbatim|C.S.a k_i>, and
  <verbatim|Next.Rank.Station.mag A (V i).b k_i>. For <verbatim|i\<less\>5>,
  <verbatim|heightV> is defined as zero; the manuscript uses the identity
  only on the eventual tail. <verbatim|YM.Overlay.beta_positive>
  (<verbatim|Lean/YM/Overlay/Engine.lean>) gives
  <verbatim|\<beta\>_i(\<omega\>)\<gtr\>0> when <verbatim|k_i\<leq\>N>, a set
  in the fixed ultrafilter; no positivity outside that set is asserted. The
  local spacing <verbatim|d_{k_i}> is the RG-level schedule spacing, not
  automatically the public mesh <verbatim|a_N>; the finite running value
  <verbatim|\<beta\>_i(\<omega\>)=C.path.\<beta\> N \<nu\> k_i> is not the
  bare coefficient <verbatim|\<beta\>_{N,\<nu\>}> unless a separate relation
  is established. This lift identity uses <verbatim|YM.MergeProof.East.wok>
  (<verbatim|Lean/YM/MergeProof/East/Pint.lean>) and the
  <verbatim|Vane.wheel> definition (<verbatim|Lean/YM/TraceExtension/Prom/Zoom/Boats.lean>);
  the period variable <verbatim|p> is not the reference-section label. The
  two test bounds are <verbatim|Tested.score>
  (<verbatim|Lean/YM/Next/RANK/Matrices.lean>) and <verbatim|InvoiceSky>
  (<verbatim|Lean/YM/TraceExtension/Prom/Orion/Eupho.lean>);
  <verbatim|YM.Trace.Terrace.dollar> (<verbatim|Turn.lean>) identifies the
  latter's <verbatim|Perch.bill (\<minus\>1/2)> with <verbatim|\<eta\>_i>.
  The unit values are <verbatim|Tested.unit> and <verbatim|awake>'s unit
  identity. <verbatim|YM.Trace.Terrace.Gondola.season> identifies
  <verbatim|r_i> with <verbatim|Vane.wheel.r>; the definitions
  <verbatim|YM.MergeProof.East.wok> and <verbatim|YM.Next.Rank.Station.gap>
  (<verbatim|Lean/YM/Next/RANK/Station.lean>) then give
  <verbatim|r_i=d_{k_i}\<sigma\>_i>, with positivity from
  <verbatim|YM.Next.Rank.Station.mag_pos> and the lattice-spacing positivity.
  The manuscript derives invertibility of the tested map from
  <verbatim|Tested.score> and injectivity of <verbatim|awake>
  (<verbatim|nib_faithful> and nonzero scale), defines the finite-volume lift
  by the inverse-map formula <verbatim|YM.Next.Rank.East.ladd>, and obtains
  the calibration equation <verbatim|YM.Next.Rank.East.poured>
  (<verbatim|Lean/YM/MergeProof/East/Ladle.lean>), with
  <verbatim|shrink=(sqrt \<beta\>)\<#207B\>\<onesuperior\>/threshold>; the
  fixed grade-five coefficient scaling follows from
  <verbatim|YM.Trace.Terrace.night_grade> and <verbatim|YM.Trace.nbase>, and
  <verbatim|YM.Trace.Terrace.mintage> performs the displayed inverse-scaling
  conversion (<verbatim|Turn.lean>). <verbatim|via_step> is its normalized
  consequence. The written centering/cost calculation follows
  <verbatim|scores_core> and the algebraic conversion in <verbatim|via_step>;
  it does not prove the tested-map estimates or construct the selected family
  and its lift limit.>>>>>

  <section|Formal hypothesis crosswalk><label|formal-hypothesis-crosswalk>

  The following records the inspected fields that feed this draft; it does
  not replace the full structured assumptions in
  <verbatim|YM.Trace.Terrace.springs> or claim their production. All paths
  refer to the pinned source revision above.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Formal
  assumption>>|<cell|<strong|Field or consequence used
  here>>>|<row|<cell|<verbatim|YM.Family.Makes>
  (<verbatim|Lean/YM/Source/Construction.lean>)>|<cell|<verbatim|wilson>
  supplies the selected running-scale estimates; <verbatim|calibrated>
  supplies the finite-volume based maps, linearity, unit and comparison
  bounds used for <verbatim|Cturn> and <verbatim|awake>. The additional
  <verbatim|sections>, <verbatim|stages>, <verbatim|places>, and
  <verbatim|priced> fields remain part of the formal <verbatim|Makes>
  hypothesis; the simplified prose does not claim to construct or eliminate
  them.>>|<row|<cell|<verbatim|YM.Trace.Terrace.steep>
  (<verbatim|Lean/YM/TraceExtension/Terrace/Dusk.lean>)>|<cell|<verbatim|mintS>
  is scalar convergence at each fixed level, while <verbatim|terms> handles
  convergence with a <strong|varying> input label at each fixed admissible
  level; these are distinct from uniformity over the selected
  index.>>|<row|<cell|<verbatim|YM.Trace.Terrace.Gondola>
  (<verbatim|Lean/YM/TraceExtension/Terrace/Gondola.lean>)>|<cell|<verbatim|growth>
  gives divergence of initial levels; <verbatim|season> supplies the checked
  finite-volume family and common radius; <verbatim|terminal> gives, for each
  fixed degree and eventually in the selected index, lift convergence and
  projection identity for every reference field. The checked
  <verbatim|TimberSky> structure also contains <verbatim|high>,
  <verbatim|early>, <verbatim|plate>, and <verbatim|fares>; <verbatim|early>
  supplies the reference-level bound and <verbatim|fares> supplies lift
  symmetries used by <verbatim|cruise>. <verbatim|YM.MergeProof.East.TimberSky.rate>
  (<verbatim|Lean/YM/TraceExtension/Prom/Zoom/Boats.lean>) supplies
  <verbatim|YM.MergeProof.East.Charting> (<verbatim|Lean/YM/MergeProof/East/Plume.lean>)
  and <verbatim|YM.Next.Rank.East.InvoiceSky>: the former includes
  <verbatim|YM.Next.Rank.Price.Tested> and signed equivariance, and the
  latter gives the relative-price hypothesis for every period and every
  finite volume with <verbatim|N\<gtr\>k_i>.>>|<row|<cell|<verbatim|YM.MergeProof.Scrim>
  (<verbatim|Lean/YM/MergeProof/Biscuit.lean>)>|<cell|Its <verbatim|costs>
  field supplies the transport symmetry via
  <verbatim|YM.Trace.Terrace.guarded>; <verbatim|back>, <verbatim|grows>,
  <verbatim|jump>, and <verbatim|listens> are also present in the formal
  structure. The prose does not claim that symmetry alone constructs a
  <verbatim|Scrim>.>>|<row|<cell|<verbatim|YM.Trace.Terrace.Sceptre>
  (<verbatim|Lean/YM/TraceExtension/Terrace/Knell.lean>)>|<cell|<verbatim|step>
  quantifies over every degree up to five and each admissible initial level,
  then eventually over periods, uniformly over later volume and terminal
  label; it supplies the threshold and residual estimates. The separate
  <verbatim|bias> field is still part of the formal structure, not a
  conclusion of <verbatim|step>.>>|<row|<cell|<verbatim|YM.Trace.Terrace.PostT>
  (<verbatim|Lean/YM/TraceExtension/Terrace/Base.lean>)>|<cell|<verbatim|bloom>
  bounds block size and <verbatim|share> bounds the real column budget.
  <verbatim|cropK>, <verbatim|purse>, and <verbatim|jig> are additional
  formal fields; the simplified clock estimates in the manuscript do not
  assert the full structure.>>|<row|<cell|<verbatim|YM.Trace.Terrace.Spun>
  (<verbatim|Lean/YM/TraceExtension/Terrace/Prism.lean>)>|<cell|<verbatim|starts>
  identifies each sensor component on one eventual tail uniformly in the
  covariant array and component; it is a chart hypothesis, separate from the
  marked-vector limits.>>>>>

  <section|Quantifier checkpoints><label|quantifier-checkpoints>

  The tails below are distinct; none asserts convergence uniformly in the
  selected index.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Manuscript
  use>>|<cell|<strong|Quantifier and source boundary>>>|<row|<cell|Selected
  chart and lift>|<cell|<verbatim|Spun.starts> gives one eventual tail in
  <verbatim|i> for every input array and component. At degree five,
  <verbatim|Gondola.terminal> gives an eventual tail in <verbatim|i> on which
  the projection identity holds for every reference field and the
  finite-volume lift map converges along the fixed ultrafilter. The
  signed/reality intertwining is supplied separately by <verbatim|cruise> and
  <verbatim|move_anchor>/<verbatim|move_anchor_star>.>>|<row|<cell|Finite
  initial price>|<cell|Fix a sufficiently large <verbatim|i>, then a
  reference field component. <verbatim|TimberSky.rate> gives the tested and
  invoice receipts for every period and every <verbatim|N\<gtr\>k_i>;
  <verbatim|link_mesh> makes this a large set. <verbatim|steep.terms> applies
  at the fixed level <verbatim|k_i> to the varying finite-volume lift, and
  <verbatim|mintS> gives the scalar limit. The limit in volume is taken
  before <verbatim|i\<rightarrow\>\<infty\>>.>>|<row|<cell|Finite transport
  interval>|<cell|For each fixed level <verbatim|j\<geq\>C.ref 5>,
  <verbatim|Sceptre.step> supplies a period tail uniform over
  <verbatim|N\<gtr\>j> and the input label. Only after fixing <verbatim|i> is
  the finite intersection over <verbatim|k_i\<leq\>j\<less\>n_i> taken,
  together with <verbatim|N\<geq\>n_i>. This gives a common large set for
  that <verbatim|i>, not a threshold uniform in
  <verbatim|i>.>>|<row|<cell|Lift convergence>|<cell|The estimates apply to
  each fixed reference array and component. The component set and the domain
  are finite-dimensional, so pointwise convergence on a basis yields
  operator-norm convergence; no uniform convergence in <verbatim|i> is
  assumed from the ultrafilter.>>|<row|<cell|Marked input and receiver
  output>|<cell|<verbatim|springs> takes an arbitrary marked sequence with
  three separately quantified limits. <verbatim|Prosper.vote> supplies one
  eventual bound uniform over target vectors, and for each positive error a
  possibly different eventual tail uniform over source vectors.>>>>>

  <section|Correspondence and proof boundaries><label|correspondence-and-proof-boundaries>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Step>>|<cell|<strong|Source
  evidence at the pinned revision>>>|<row|<cell|Sensor statement and
  weight>|<cell|<verbatim|YM.Trace.Terrace.Prosper>, <verbatim|.hueK>,
  <verbatim|.Lease>, <verbatim|.springs>,
  <verbatim|Lean/YM/TraceExtension/Terrace/Lease.lean>.
  <verbatim|Prosper.alpha> is operator convergence; <verbatim|vote> has
  real-linear functionals on <verbatim|H> with eventual bound and
  epsilon-uniform weighted defect.>>|<row|<cell|Covariant spaces, section,
  kernel, Ward normalization>|<cell|<verbatim|YM.Trace.Terrace.plate>,
  <verbatim|.Vbase>, <verbatim|.Stem5>, <verbatim|.Stem5_kernel>,
  <verbatim|.Stem5_alive>, <verbatim|.section5>,
  <verbatim|Lean/YM/TraceExtension/Terrace/Vector.lean>;
  <verbatim|YM.Trace.rho>, <verbatim|.rho_vector>, <verbatim|.rho_eom>,
  <verbatim|Lean/YM/TraceExtension/Foundation/Dilate.lean>.>>|<row|<cell|Selected
  chart>|<cell|<verbatim|YM.Trace.Terrace.Spun>, <verbatim|.lensP>,
  <verbatim|.fisc>, <verbatim|Lean/YM/TraceExtension/Terrace/Prism.lean>;
  <verbatim|YM.Trace.Terrace.crown>, <verbatim|.prize>, <verbatim|.arrive_t>,
  <verbatim|Lean/YM/TraceExtension/Terrace/Path.lean>; <verbatim|.swale> in
  <verbatim|Bang.lean> and <verbatim|.Vault> in <verbatim|Insert.lean>. The
  proof of <verbatim|lensP> uses terminal projection, signed/reality
  symmetry, positive normalization, and convergence of transported lifts.
  This unit cites their output as a draft dependency, not as independently
  verified chart production.>>|<row|<cell|Limit of sensor
  maps>|<cell|<verbatim|YM.Trace.Terrace.fitV>, <verbatim|.plumage>,
  <verbatim|.scout>, <verbatim|Lean/YM/TraceExtension/Terrace/Delta.lean>;
  <verbatim|springs> converts the positively diverging weighted marked-field
  limit to the unweighted one and applies <verbatim|scout>. The manuscript
  spells out the decomposition and triangular repair.>>|<row|<cell|Weighted
  receiver>|<cell|<verbatim|YM.Trace.Terrace.permute>, <verbatim|.spend>,
  <verbatim|.expenses>, <verbatim|Delta.lean>. The previously written Lemma
  <verbatim|lem:ex-lattice-trace-weighted-price> proves the same
  finite-dimensional result. The manuscript applies it after proving
  <verbatim|s_i\<rightarrow\>f> and checks both weighted limits. Source
  functionals are real-linear; finite dimensionality makes the continuous
  formulation equivalent.>>|<row|<cell|Special medium
  producer>|<cell|<verbatim|YM.Trace.Slate.medium> and <verbatim|.canal>,
  <verbatim|Lean/YM/TraceExtension/Slate/Phantom.lean>; <verbatim|.aspiring>,
  <verbatim|.legacy>, <verbatim|.rungs>, <verbatim|Lean/YM/TraceExtension/Slate/Garnet.lean>.
  The manuscript denotes the transported chosen and reference responses by
  <verbatim|\<#1D596\>_j> and <verbatim|\<#1D5D0\>_j>, distinct from the
  postlevel function <verbatim|q(j)> and the finite-volume coefficient
  <verbatim|z\<#303\>_j>. For the same selected postlevels the medium is
  <verbatim|Z.\<beta\>(n_i)\<#207B\>\<onesuperior\> \<bullet\> Shine5 Z X n_i
  \<minus\> Shine5 Z L.Z n_i>. <verbatim|aspiring> supplies its limit and
  weighted Ward limit; its <verbatim|taxA> is <verbatim|AgeK(1/5)> by
  <verbatim|YM.Trace.Slate.taxA> in <verbatim|Lean/YM/TraceExtension/Slate/Spite.lean>,
  hence equals <verbatim|hueK>. <verbatim|legacy> with <verbatim|p=1>
  supplies <verbatim|\<beta\>\<#302\>_{n_i} \<bullet\> s_i(medium
  n_i)\<rightarrow\>0>; <verbatim|rungs> uses eventual
  <verbatim|\<frak-a\>_i\<leq\>\<beta\>\<#302\>_{n_i}> to apply
  <verbatim|springs>. The scalar medium argument and the priced-mission
  detector lemma are already written in parent chapters; the new section
  invokes both with their displayed conditions and proves only the last
  age-weight comparison. The finite-volume mission, price and detector
  producers remain dependencies; see <verbatim|blueprint/units/YM-000026/trace-weighted-estimates-evidence.md>
  and <verbatim|trace-small-means-evidence.md>.>>>>>

  <section|Literature and editorial decisions><label|literature-and-editorial-decisions>

  Searched <verbatim|blueprint/background/> and relevant
  <verbatim|Bots/notes/> for trace, receiver, finite-dimensional perturbation
  and Ward results; no accepted matching external receiver theorem was
  located. Checked M. Winklmeier, <em|Functional Analysis>, Theorem 2.10, p.
  29, <hlink|https://math.uniandes.edu.co/~mwinklme/teaching/FuncAna/FA-lecture_notes.pdf|https://math.uniandes.edu.co/~mwinklme/teaching/FuncAna/FA-lecture_notes.pdf>
  : on a Banach space <verbatim|\|\|T\|\|\<less\>1> makes
  <verbatim|id\<minus\>T> invertible by the Neumann series with inverse norm
  bounded by <verbatim|(1\<minus\>\|\|T\|\|)\<#207B\>\<onesuperior\>>.
  Finite-dimensional <verbatim|E> is Banach, and the manuscript applies it to
  <verbatim|T=id\<minus\>T_i> after norm convergence; the specific
  rank-one/weighted argument is the existing proved manuscript lemma, not a
  claim that this reference proves it. No extra bibliography dependency is
  needed for the elementary geometric-series step, whose application is
  explicit. This unit groups the source's finite-basis continuity,
  decomposition, triangular repair, and operator-norm extraction by
  mathematical purpose.

  The three displayed curvature-jet tests give evaluation rows
  <verbatim|(0,2,0)>, <verbatim|(1,2,0)>, <verbatim|(1,2,1)> on the raw
  vectors <verbatim|momentum1>, <verbatim|momentum2>, <verbatim|eom>. Their
  derivative jets obey the cyclic Bianchi identity, and the displayed
  polynomial potential realizes them. Together with the parent free-rank
  upper bound three, they prove the raw basis used in
  <verbatim|bareCoordinates>; these tests are a reorganization, not a
  verbatim transcription of the source's <verbatim|test_m> and
  <verbatim|test_n>.

  The <hlink|notation protocol|../../../docs/notation.tm> and <hlink|shared
  glossary|../../glossary.tm> govern integration. Here
  <verbatim|\<frak-a\>_i> is the <verbatim|1/5> age at the postlevel; it is
  distinct from the shared mesh <verbatim|a_N> and the parent chapter's local
  field dilation <verbatim|a_i>. The chart normalization <verbatim|c_i> is
  distinct from <verbatim|\<frak-a\>_i> and <verbatim|b_n>. No shared
  glossary edit is made. The parent manuscript already owns the receiver
  proof, the free rank, and the scalar medium argument; they are cited rather
  than duplicated.

  <section|Outstanding obligations><label|outstanding-obligations>

  The conclusion is conditional on the displayed exact chart and
  marked-vector inputs; the existence of the inputs in the full selected run,
  the detailed source crosswalk, and the full upstream dependency chain
  require independent correspondence and mathematical review. In particular
  the <verbatim|legacy> field estimate uses the mission,
  finite-cover/local-price, derivative and probe hypotheses and is not
  implied by scalar Ward cancellation. A limited lexical scan of locally
  available imported modules found one textual <verbatim|admit> match: the
  field of the conditional structure <verbatim|YM.Further.RootedInteractingRemainder.Appointment>
  (<verbatim|Lean/YM/Further/ROOTED_INTERACTING_REMAINDER/Station.lean>), not
  an <verbatim|admit> tactic. Import reachability does not establish that
  <verbatim|springs> depends on this structure, and the scan cannot inspect
  missing external imports or prove absence of placeholders. No fresh Lean
  build or target-specific elaborated-type/kernel/axiom replay has been
  performed, and internal agent checks do not establish responsible
  independent human acceptance. This is not a proof of the whole existence
  theorem. Actual local checks are recorded in <verbatim|validation.md>.

  <section|Revision response to independent review #126, corrected by
  #127><label|revision-response-to-independent-review-126-corrected-by-127>

  Revision basis <verbatim|84a6a9371caddd2f9967b9d6924e156ec097610e> on
  <verbatim|codex/existence-monograph>; session
  <verbatim|TrishenGunaratnam-terra-issue33-revision-20261113>. The
  2026-11-13 mathematics and correspondence reports remain read-only; their
  fingerprint belongs to the earlier content and is not renewed here.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Review
  item>>|<cell|<strong|Revision and correspondence
  boundary>>>|<row|<cell|R1>|<cell|Immediately before
  <verbatim|prop:trace-prosper-sensor>, (S1)\U(S7) state the selected clock,
  chart, shared fused filter and joint limits, tested-map and lift receipts,
  one-step quantifiers, budget/oddness, and arbitrary marked-vector limits.
  The derived statements now have labels <verbatim|lem:trace-sensor-arch-ratio>,
  <verbatim|lem:trace-sensor-initial-price>,
  <verbatim|lem:trace-sensor-transport-price>, and
  <verbatim|lem:trace-sensor-lift-limit>, each with its argument. The
  initial, transport and lift lemmas consume (S1)\U(S6), not the marked input
  (S7). The finite-volume bound and transport price are proved from the
  displayed primitive receipts, not introduced as new sensor
  assumptions.>>|<row|<cell|R2>|<cell|The one-factor invariant argument cites
  <verbatim|sec:ex-lattice-trace-free-rank>; #127 corrects the earlier claim
  that it was missing. No support chapter is
  edited.>>|<row|<cell|R3>|<cell|<verbatim|\<#1D5A0\>,\<#1D5B3\> : V
  \<rightarrow\> V> are explicitly complex-linear endomorphisms of the finite
  grade-five coefficient space. At the pinned source,
  <verbatim|YM.Next.Rank.Price.Tested> takes an endomorphism of
  <verbatim|C.label d> (<verbatim|Lean/YM/Next/RANK/Matrices.lean>), and
  <verbatim|awake> maps <verbatim|C.label d> to itself. Finite-dimensional
  injectivity implies bijectivity.>>|<row|<cell|R4>|<cell|The selected
  ultrafilter is explicitly required to refine the fused-order filter; the
  source condition is <verbatim|hb : (\<b-cal-L\> : Filter (\<bbb-N\>
  \<times\> \<bbb-N\>)) \<leq\> F.fuse> in
  <verbatim|Lean/YM/TraceExtension/Terrace/Lease.lean>. The proof uses its
  coordinate-tail consequences, with the fixed-i finite intersection kept
  separate.>>|<row|<cell|R5>|<cell|The local wrapper deliberately omits
  <verbatim|trace-local-charge.tex> and <verbatim|trace-mission-price.tex>;
  it documents the corresponding external labels
  <verbatim|prop:ex-lattice-charge-bounds> and
  <verbatim|prop:ex-trace-mission-price-transfer>. Their definitions were
  located in those files; no fictitious label or support-file edit is used.
  The wrapper is not the full integration build.>>>>>

  Source was re-read at <verbatim|YM.Trace.Terrace.Prosper> and
  <verbatim|.springs> in <verbatim|Lean/YM/TraceExtension/Terrace/Lease.lean>,
  <verbatim|.lensP> and <verbatim|Spun.starts> in
  <verbatim|Terrace/Prism.lean>, <verbatim|.scout> and <verbatim|.expenses>
  in <verbatim|Terrace/Delta.lean>, <verbatim|Sceptre.step> in
  <verbatim|Terrace/Knell.lean>, and <verbatim|PostT> in
  <verbatim|Terrace/Base.lean>. <verbatim|Sceptre.step> quantifies over each
  <verbatim|d \<leq\> 5> and fixed admissible <verbatim|m>, then an eventual
  period tail, uniformly over every <verbatim|N \<gtr\> m> and label. The
  prose specializes to degree five. <verbatim|Prosper.vote>'s eventual
  receiver bound is uniform in every target vector; its weighted estimate is
  for each positive error followed by an eventual tail uniform in every
  source vector. Neither the source's structured upstream assumptions nor the
  later medium producer are claimed to follow solely from this revision's
  display.

  <ym-unit-nav|<hlink|\<leftarrow\> YM-000026|../YM-000026/correspondence.tm>|<ym-nav-here|YM-000033:
  Selected trace sensor and weighted Ward limit
  (draft)><ym-nav-sep><hlink|HANDOFF|HANDOFF.tm><ym-nav-sep><hlink|validation|validation.tm>|<hlink|YM-000034
  \<rightarrow\>|../YM-000034/correspondence.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|Selected trace sensor: source correspondence \U
    Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|4>>
    <associate|auto-3|<tuple|3|6>>
    <associate|auto-4|<tuple|4|7>>
    <associate|auto-5|<tuple|5|8>>
    <associate|auto-6|<tuple|6|8>>
    <associate|auto-7|<tuple|7|8>>
    <associate|correspondence-and-proof-boundaries|<tuple|4|7>>
    <associate|formal-hypothesis-crosswalk|<tuple|2|4>>
    <associate|input-contract-and-notation|<tuple|1|1>>
    <associate|literature-and-editorial-decisions|<tuple|5|8>>
    <associate|outstanding-obligations|<tuple|6|8>>
    <associate|quantifier-checkpoints|<tuple|3|6>>
    <associate|revision-response-to-independent-review-126-corrected-by-127|<tuple|7|8>>
    <associate|selected-trace-sensor-source-correspondence|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Input
      contract and notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Formal
      hypothesis crosswalk> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Quantifier
      checkpoints> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Correspondence
      and proof boundaries> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Literature
      and editorial decisions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Outstanding
      obligations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Revision
      response to independent review #126, corrected by #127>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>