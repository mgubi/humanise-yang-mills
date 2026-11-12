<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../index.tm><ym-nav-sep><hlink|The
  theorem|public-statement.tm><ym-nav-sep><hlink|Proof
  outline|outline.tm><ym-nav-sep><hlink|Unit
  plan|unit-plan.tm><ym-nav-sep><hlink|Blueprint|index.tm><ym-nav-sep><hlink|Manuscript|../manuscript/index.tm><ym-nav-sep><ym-nav-here|Glossary><ym-nav-sep><hlink|Notation|../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../source/audit.tm><ym-nav-sep><hlink|Literature|external-map.tm><ym-nav-sep><hlink|Proof
  standard|../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../CONTRIBUTING.tm>>

  <ym-title|Shared mathematical notation><label|shared-mathematical-notation>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Gauge group and
    spacetime> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Finite Wilson
    lattice and limits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Internal
    construction and extraction> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Hierarchy,
    phases, and fields> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Reserved
    distinctions and open questions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Evidence and
    maintenance> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>
  </table-of-contents>

  <strong|Status:> author draft for <hlink|issue
  #10|https://github.com/hairer/humanise-yang-mills/issues/10>; independent
  correspondence and editorial review pending. This is the notation contract
  for proof units and chapters at imported OpenAI-YM revision
  <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>. The <hlink|public
  statement ledger|public-statement.tm> determines theorem scope. Symbols
  here are prose conventions, not a renaming of formal declarations or an
  assertion that two source structures are definitionally equal.

  The entries use targeted inspection of the cited Lean definitions, not an
  interpretation inferred from names. Scott Armstrong's <hlink|glossary at
  commit <verbatim|8f3c7cc>|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/glossary.md>
  supplied navigation and some mathematical terminology; its
  <verbatim|certain>, <verbatim|probable>, and <verbatim|tentative> labels
  are not this project's review status. Credit that project when reusing its
  source clustering or declaration descriptions. Do not copy a nickname or
  suggested physical interpretation without checking the definition and the
  hypotheses of the consuming theorem.

  Use the symbols in the <strong|Prose notation> column when an entry is in
  scope. A unit may choose a local alternative only with the conversion
  required by <hlink|the notation protocol|../docs/notation.tm>. A symbol
  outside this table is local to the unit until a dedicated glossary task
  accepts it.

  <section|Gauge group and spacetime><label|gauge-group-and-spacetime>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Prose
  notation>>|<cell|<strong|Meaning and space>>|<cell|<strong|Source
  correspondence and convention>>>|<row|<cell|<verbatim|G \<subset\>
  U(r_G)>>|<cell|A closed matrix subgroup in a fixed unitary representation
  of complex dimension <verbatim|r_G = n+1>; this is the gauge-group input,
  not its Lie algebra.>|<cell|<verbatim|YangMills.GaugeGroup>,
  <verbatim|Lean/PublicTheory.lean:25\U34>; internal <verbatim|YM.Gauge>,
  <verbatim|Lean/YM/Gauge/MatrixGroup.lean:20\U26>.
  <verbatim|YangMills.GaugeGroup.core> projects the public group to the
  internal one, and <verbatim|YangMills.GaugeGroup.coreSimple> transports the
  stated simplicity hypothesis (<verbatim|Lean/WilsonBridge.lean:9\U18>). The
  representation is part of the formal data.>>|<row|<cell|<verbatim|\<frak-g\>
  = Lie(G)>>|<cell|The <strong|real> Lie algebra of matrices whose
  real-parameter exponentials remain in <verbatim|G>.>|<cell|<verbatim|YangMills.GaugeGroup.lieAlgebra>,
  <verbatim|Lean/PublicTheory.lean:25\U34>;
  <verbatim|YangMills.GaugeGroup.IsSimple>, <verbatim|:37\U45>, requires
  nonabelian bracket and no proper nonzero real Lie ideal. Internal
  <verbatim|YM.Gauge.Simple> is in <verbatim|Lean/YM/Gauge/Lie.lean:178\U182>.
  <verbatim|r_G> and <verbatim|dim\<bbb-R\> \<frak-g\>> are different
  quantities.>>|<row|<cell|<verbatim|E\<#2084\>>, <verbatim|x=(\\mathbf
  x,t)>>|<cell|Four-dimensional Euclidean coordinate space, with three
  spatial coordinates first and the time coordinate last.>|<cell|Public
  <verbatim|YangMills.Spacetime>, <verbatim|Lean/PublicTheory.lean:51\U68>;
  internal <verbatim|YM.E4>, <verbatim|Lean/YM/Space/Configurations.lean:24>.
  Euclidean distance is used for positions and test
  functions.>>|<row|<cell|<verbatim|\\overline V_+>>|<cell|Closed Minkowski
  forward cone on the same coordinate vector space:
  <verbatim|\<\|\|\>\\mathbf x\<\|\|\> \<leq\> t>; Minkowski square has sign
  <verbatim|t\<twosuperior\>\<minus\>\<\|\|\>\\mathbf
  x\<\|\|\>\<twosuperior\>>.>|<cell|<verbatim|YangMills.forwardCone>,
  <verbatim|Lean/PublicTheory.lean:62\U68>. The Wightman spectrum condition
  places spectral support in this closed cone; it does not supply a positive
  mass gap.>>|<row|<cell|<verbatim|\\mathscr S(E\<#2084\>;\\mathbb
  C)>>|<cell|Complex Schwartz test functions on four-dimensional Euclidean
  coordinates; product tests retain their stated
  factors.>|<cell|<verbatim|YangMills.TestFunction>,
  <verbatim|Lean/PublicTheory.lean:70>; source-specific smooth compact tests
  are identified separately where used. Do not silently substitute one test
  space for the other.>>>>>

  <section|Finite Wilson lattice and limits><label|finite-wilson-lattice-and-limits>

  For a public Wilson family write <verbatim|\\mathcal W>. For an internal
  construction family write <verbatim|\\mathcal C>; its public projection is
  <verbatim|\\mathcal W(\\mathcal C)>. Both are bound as <verbatim|C> in
  different Lean declarations, but they carry different fields. This
  distinction is mandatory at a chapter handoff.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Prose
  notation>>|<cell|<strong|Meaning and space>>|<cell|<strong|Source
  correspondence and convention>>>|<row|<cell|<verbatim|\\mathcal
  W>>|<cell|Public Wilson family: period and denominator sequences, bare
  coefficient, invariant probability Haar measure, token type, and insertion
  map.>|<cell|<verbatim|YangMills.WilsonFamily>,
  <verbatim|Lean/PublicWilson.lean:35\U46>. <verbatim|YangMills.wilsonFamily>
  projects an internal family through <verbatim|Lean/WilsonBridge.lean:20\U30>;
  an arbitrary internal family is not automatically a proved public theorem
  witness.>>|<row|<cell|<verbatim|P_p>, <verbatim|D_N>,
  <verbatim|a_N=D_N^{-1}>>|<cell|<verbatim|P_p=period(p)> is the physical
  linear period in the chosen length units; <verbatim|D_N=denominator(N)> and
  <verbatim|a_N> is mesh spacing. Both positive-integer value sequences are
  strictly increasing.>|<cell|<verbatim|YangMills.WilsonFamily.period>,
  <verbatim|YangMills.WilsonFamily.denominator>,
  <verbatim|YangMills.WilsonFamily.mesh>,
  <verbatim|Lean/PublicWilson.lean:35\U52>. The finite torus has
  <verbatim|\\ell_{N,p}=P_pD_N=P_p/a_N> sites per axis, not
  <verbatim|P_pa_N>; the suitability box has half-width <verbatim|P_p/2>
  (<verbatim|:75\U77>).>>|<row|<cell|<verbatim|\\Lambda_{N,p}>>|<cell|Four-dimensional
  periodic site set <verbatim|(\\mathbb Z/\\ell_{N,p}\\mathbb Z)^4>; a link
  configuration assigns an element of <verbatim|G> to each site and oriented
  axis.>|<cell|<verbatim|YangMills.Site>, <verbatim|YangMills.Configuration>,
  <verbatim|Lean/PublicWilson.lean:10\U13>. A site's physical coordinate uses
  <verbatim|a_N> times the symmetric <verbatim|ZMod.valMinAbs> representative
  (<verbatim|:49\U52>).>>|<row|<cell|<verbatim|\\beta_{N,p}>,
  <verbatim|\\mu_{N,p}^{\\mathcal W}>>|<cell|Bare plaquette-action
  coefficient and normalized Wilson law on link
  configurations.>|<cell|<verbatim|YangMills.WilsonFamily.beta>,
  <verbatim|YangMills.wilsonEnergy>, <verbatim|YangMills.wilsonLaw>,
  <verbatim|Lean/PublicWilson.lean:20\U46>. The law is product Haar weighted
  by <verbatim|\\exp(-\\beta_{N,p}\\,\\mathrm{wilsonEnergy})> and normalized
  by its partition integral. Do not use <verbatim|\\mu> for the phase measure
  in the same chapter.>>|<row|<cell|<verbatim|v\<in\>\\mathcal V_{\\mathcal
  W}>, <verbatim|O_{N,p}(v,z;U)>>|<cell|A public insertion token and its
  complex-valued local lattice observable at site <verbatim|z> in
  configuration <verbatim|U>.>|<cell|<verbatim|YangMills.WilsonFamily.Token>,
  <verbatim|YangMills.WilsonFamily.insertion>,
  <verbatim|Lean/PublicWilson.lean:35\U46>.
  <verbatim|YangMills.WilsonRegularity.localSupport>,
  <verbatim|Lean/ChallengeSpec.lean:11\U22>, gives one finite offset stencil
  <strong|per token>, uniform in <verbatim|N,p,z>.>>|<row|<cell|<verbatim|W_{N,p}(\\mathbf
  v,\\mathbf z)>>|<cell|Finite moment: Wilson-law integral of the product of
  the chosen insertions.>|<cell|<verbatim|YangMills.WilsonFamily.finiteMoment>,
  <verbatim|Lean/PublicWilson.lean:54\U57>. The smeared <verbatim|n>-point
  moment includes <verbatim|a_N^{4n}> (<verbatim|:79\U81>).>>|<row|<cell|<verbatim|s_{\\mathcal
  W}\<gtr\>0>>|<cell|Positive asymptotic running slope in
  <verbatim|\\beta_{N,p}/\\log(a_N^{-1})\<rightarrow\>s_{\\mathcal W}> as
  <verbatim|N\<rightarrow\>\<infty\>>, uniformly in
  <verbatim|p>.>|<cell|<verbatim|YangMills.WilsonRegularity.running>,
  <verbatim|Lean/ChallengeSpec.lean:11\U22>. It is <strong|not> the positive
  block-kernel penalty <verbatim|b> quantified in
  <verbatim|YangMills.constructed>, nor automatically
  <verbatim|b\<#2080\>(G)>.>>|<row|<cell|<verbatim|\\varrho>,
  <verbatim|\\sigma>>|<cell|A requested strictly increasing public
  volume-index sequence and a strictly increasing refinement. The theorem
  uses one <verbatim|\\mathcal W> before <verbatim|\\varrho>, then may choose
  <verbatim|\\sigma> and a hierarchy depending on
  <verbatim|\\varrho>.>|<cell|<verbatim|YangMills.JointExistence>,
  <verbatim|Lean/ChallengeSpec.lean:186\U188>; source binders are
  <verbatim|p,q>. Reserve plain <verbatim|\\pi> for the circle
  constant.>>|<row|<cell|<verbatim|\\lim_{k\<rightarrow\>\<infty\>}\\lim_{N\<rightarrow\>\<infty\>}>>|<cell|Public
  separated-test limit: for each suitable fixed volume row a full mesh limit
  exists, then rows along <verbatim|\\varrho\\circ\\sigma> tend to the
  unselected correlation integral.>|<cell|<verbatim|YangMills.WilsonFamily.Converges>,
  <verbatim|Lean/PublicWilson.lean:75\U90>. The precise statement also
  requires eventual suitability of the test support; this is not an arbitrary
  diagonal or unique volume limit.>>>>>

  <section|Internal construction and extraction><label|internal-construction-and-extraction>

  The internal notation records witnesses needed to build the public family
  and hierarchy. The source often uses <verbatim|C,S,F,L,Q,M,X> as local
  binders. The font changes below prevent collisions with Wilson families,
  field spaces, and OPE geometry constants in prose.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Prose
  notation>>|<cell|<strong|Meaning and space>>|<cell|<strong|Source
  correspondence and convention>>>|<row|<cell|<verbatim|\\mathcal
  C>>|<cell|Internal <verbatim|YM.Family G>: RG path/history, holonomy data,
  graded frames/labels, local sections, reference cutoffs, and
  transfers.>|<cell|<verbatim|YM.Family>,
  <verbatim|Lean/YM/Source/Construction.lean:24\U31>. <verbatim|\\mathcal
  C\\,\\mathrm{Makes}> is an <strong|additional predicate>
  (<verbatim|:44\U62>), not part of the type of every family. The public
  bridge is <verbatim|YangMills.wilsonFamily>.>>|<row|<cell|<verbatim|\\lambda_{\\rm
  ker}\<gtr\>0>>|<cell|Positive blocking-kernel penalty, chosen before the
  construction family in the detailed theorem.>|<cell|<verbatim|YangMills.constructed>,
  <verbatim|Lean/Construction.lean:15\U31>, source binder <verbatim|b>;
  <verbatim|YM.Nonperturbative.existence> uses the same penalty parameter.
  Keep it distinct from running slope and
  coupling.>>|<row|<cell|<verbatim|\\mathcal L_d>,
  <verbatim|F_d>>|<cell|Reference label space of bounded polynomial-jet grade
  <verbatim|d>, and the later quotient field space of the correlation
  table.>|<cell|<verbatim|YM.Labels.Label>,
  <verbatim|Lean/YM/Labels/Polynomial.lean:103\U120>;
  <verbatim|YM.Table.Field>, <verbatim|Lean/YM/Euclid/Null.lean:74>. Grade
  bounds jet height; it is not asserted to be a canonical scaling dimension.
  A chosen coefficient vector <verbatim|\\mathcal C.label\\ d> also needs its
  frame map before identification with a field.>>|<row|<cell|<verbatim|\\mathfrak
  o=(\\kappa,\\tau)>>|<cell|Internal extraction order: a strictly increasing
  mesh-index sequence <verbatim|\\kappa> and a strictly increasing
  period-index sequence <verbatim|\\tau>; physical volume varies with the
  period. A refinement composes each component with a further
  subsequence.>|<cell|<verbatim|YM.Extraction.Sequence>,
  <verbatim|YM.Extraction.Order>, <verbatim|YM.Extraction.Order.refine>,
  <verbatim|Lean/YM/Extraction/Orders.lean:20\U47,60\U64>. The public theorem
  retains the full mesh sequence; do not identify a general internal
  <verbatim|\\tau> with its public request <verbatim|\\varrho>. In the
  explicit public assembly bridge, the internal order is built from the full
  mesh sequence and that request.>>|<row|<cell|<verbatim|\\mathrm{late}_{\\mathfrak
  o}>>|<cell|Eventuality with period-index threshold outermost and a
  mesh-index threshold that may depend on the period index:
  <verbatim|\<forall\>\<#1DA0\> k, \<forall\>\<#1DA0\>
  j>.>|<cell|<verbatim|YM.Extraction.Order.late>,
  <verbatim|Lean/YM/Extraction/Orders.lean:47>; its ordered limit is mesh
  first, then period. <verbatim|YM.Extraction.Order.fuse> is a filter on
  <verbatim|\\mathbb N^2> (<verbatim|Lean/YM/Extraction/Inherited.lean:27>);
  use its name explicitly rather than treating it as any diagonal
  limit.>>|<row|<cell|<verbatim|S>>|<cell|Internal Euclidean correlation
  table: multilinear moments indexed by arity, grade tuple and
  positions.>|<cell|<verbatim|YM.Table>, <verbatim|Lean/YM/Euclid/Table.lean:51\U69>.
  It is total as formal data, but values on coincident configurations are not
  thereby physical contact limits; separated smoothness uses
  <verbatim|YM.conf>.>>|<row|<cell|<verbatim|\\mathsf F>, <verbatim|\\mathcal
  A>>|<cell|Internal final package and every-character reconstruction
  package, respectively.>|<cell|<verbatim|YM.Spec.Final>,
  <verbatim|Lean/YM/Spec/Closed.lean:64\U73>;
  <verbatim|YM.EveryPhase.Almanac>, <verbatim|Lean/YM/EveryPhase/Pack.lean:117\U132>.
  They are constructed witnesses, not synonyms for the public
  <verbatim|Hierarchy.Properties> record.>>|<row|<cell|<verbatim|Q>,
  <verbatim|\\mathcal D>>|<cell|Internal OPE reader and contact-device
  package.>|<cell|<verbatim|YM.OPE.Orbits.Reader>,
  <verbatim|Lean/YM/OPE/Orbits/Cuts.lean:17\U24>;
  <verbatim|YM.Contacts.Devices>, <verbatim|Lean/YM/Contacts/Tomography.lean:16\U26>.
  Qualify the reader: <verbatim|YM.Contacts.Harvest.Reader> is a different
  type. <verbatim|\\mathcal D> avoids collision with the public OPE room
  constant <verbatim|M>.>>|<row|<cell|<verbatim|X=(U_k,\\zeta_k,r_k)>>|<cell|A
  selected short-distance scaling witness with grade-indexed spin/frame
  changes, positive factors and radii decreasing to
  zero.>|<cell|<verbatim|YM.Climb.Scaling>,
  <verbatim|Lean/YM/Climb/Cells.lean:24\U32>; the source calls the positive
  factor <verbatim|xi>. Its <verbatim|r_k> is not the Wilson mesh
  <verbatim|a_N>, and no universal scaling sequence is asserted.>>>>>

  <section|Hierarchy, phases, and fields><label|hierarchy-phases-and-fields>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Prose
  notation>>|<cell|<strong|Meaning and space>>|<cell|<strong|Source
  correspondence and convention>>>|<row|<cell|<verbatim|\\mathcal
  T>>|<cell|Public hierarchy: correlation, selected reconstructed Wightman
  theory, character/phase data, OPE coefficients and centered trace field on
  one Wilson family.>|<cell|<verbatim|YangMills.Hierarchy>,
  <verbatim|Lean/ChallengeSpec.lean:24\U48>. Its four <verbatim|Properties>
  are Wilson convergence, reconstruction, OPE, and the trace nonfreeness test
  (<verbatim|:177\U182>); contacts are additional detailed-construction
  data.>>|<row|<cell|<verbatim|\\mathscr H>,
  <verbatim|\\Omega>>|<cell|Hilbert space and normalized cyclic vacuum of the
  selected Wightman theory.>|<cell|<verbatim|YangMills.WightmanTheory>,
  <verbatim|Lean/PublicTheory.lean:255\U312>. <verbatim|\\mathcal T> denotes
  the whole hierarchy, never merely its Hilbert
  space.>>|<row|<cell|<verbatim|\\Xi>, <verbatim|\\xi\<in\>\\Xi>,
  <verbatim|\\xi_*>, <verbatim|\\nu_{\\rm ph}>>|<cell|Compact character
  parameter space, a character, the selected character, and the character
  measure; <verbatim|Hierarchy.Reconstructed.normalized> makes that measure a
  probability measure and its mixture field relates phase
  correlations.>|<cell|<verbatim|YangMills.Hierarchy.Character>,
  <verbatim|YangMills.Hierarchy.selected>,
  <verbatim|YangMills.Hierarchy.phaseMeasure>,
  <verbatim|Lean/ChallengeSpec.lean:24\U48,117\U143>; internal character
  algebra appears in <verbatim|YM.Phase.Mixture.Resolution>,
  <verbatim|Lean/YM/Phase/Mixture.lean:65\U85>. \PPhase\Q is this formal
  character parameter; do not infer thermodynamic purity without a further
  theorem.>>|<row|<cell|<verbatim|\\mathcal S^{\\xi}>, <verbatim|\\mathcal
  S^{\\rm mix}>>|<cell|Euclidean correlations with <verbatim|some \<xi\>>,
  and the distinct <verbatim|none> (unselected) correlation, linked by the
  phase-mixture identity.>|<cell|<verbatim|YangMills.Hierarchy.correlation>,
  <verbatim|Lean/ChallengeSpec.lean:40\U48>;
  <verbatim|YangMills.Hierarchy.Reconstructed.mixture>, <verbatim|:117\U143>.
  These calligraphic correlation symbols differ from the internal table
  <verbatim|S>. The identity is a property to establish, not a definitional
  identification of <verbatim|none> with an omitted
  argument.>>|<row|<cell|<verbatim|F_d>, <verbatim|a=(d,\\phi)>,
  <verbatim|w(\\mathbf a)>>|<cell|Grade-<verbatim|d> finite-dimensional
  complex normed field space in a public hierarchy; a tag consisting of a
  grade and field; sum of the grades in a finite word. In the constructed
  hierarchy, <verbatim|F_d> is the quotient field space of the correlation
  table.>|<cell|<verbatim|YangMills.Hierarchy.Field>,
  <verbatim|YangMills.Hierarchy.Tag>, <verbatim|YangMills.Hierarchy.weight>,
  <verbatim|Lean/ChallengeSpec.lean:28\U63>; <verbatim|YangMills.hierarchy>,
  <verbatim|Lean/HierarchyBridge.lean:27\U45>; <verbatim|YM.Table.Field>,
  <verbatim|Lean/YM/Euclid/Null.lean:74\U82>; internal
  <verbatim|YM.OPE.Orbits.weight>, <verbatim|Lean/YM/OPE/Orbits/Rent.lean:17\U18>.
  The constructed public/internal field identification is not a reason to
  equate reference labels and quotient fields.>>|<row|<cell|<verbatim|c_{\\mathbf
  a,j,i}(\\mathbf x;o)>, <verbatim|\\Phi_{j,i}>>|<cell|OPE coefficient for a
  cluster, degree <verbatim|j>, channel <verbatim|i>, positions and center;
  and its local actor field.>|<cell|<verbatim|YangMills.Hierarchy.coefficient>,
  <verbatim|YangMills.Hierarchy.actor>, <verbatim|YangMills.Hierarchy.Channel>,
  <verbatim|Lean/ChallengeSpec.lean:43\U80>. Coefficients have no phase
  argument; for fixed labels and truncation, the remainder is uniform over
  admissible positions and characters. Do not infer one radius threshold
  uniform over all degrees/channels.>>|<row|<cell|<verbatim|\\Theta>,
  <verbatim|C_{\\Theta}(r)>>|<cell|Public centered grade-four trace-test
  field and its selected-phase two-point function at time-axis points
  <verbatim|\\pm r/2>.>|<cell|<verbatim|YangMills.Hierarchy.centeredTrace>,
  <verbatim|YangMills.Hierarchy.traceTwo>,
  <verbatim|Lean/ChallengeSpec.lean:48,145\U175>. The test has
  <verbatim|r^8\\log^2(r^{-1})C_{\\Theta}(r)\<rightarrow\>3\\dim_{\\mathbb
  R}\\mathfrak g/\\pi^4> and excludes specified <strong|finite> Wick
  profiles. Physical stress-trace identification is a further
  detailed-construction statement, not a stronger public mass-gap claim.>>>>>

  <section|Reserved distinctions and open
  questions><label|reserved-distinctions-and-open-questions>

  <\itemize-minus>
    <item><verbatim|n> may mean matrix representation parameter
    (<verbatim|r_G=n+1>) or correlation arity in the source. Prose uses
    <verbatim|r_G> for representation dimension and <verbatim|m> for arity
    when both occur. <verbatim|d> is grade; <verbatim|\\dim_{\\mathbb
    R}\\mathfrak g> is color dimension. These are not interchangeable.

    <item><verbatim|p> is reused in source files for a period index, an
    extraction order, and other parameters. Prose uses <verbatim|p> only
    locally after declaring its type; the public requested volume sequence is
    <verbatim|\\varrho>, while a general internal order is
    <verbatim|\\mathfrak o=(\\kappa,\\tau)>. Equate <verbatim|\\tau> with
    <verbatim|\\varrho> only at the specific bridge that constructs that
    order.

    <item><verbatim|\\pi> without adornment is the numerical constant.
    <verbatim|P_p> is a physical linear period, <verbatim|\\ell_{N,p}> a
    lattice site count, and <verbatim|a_N> a spacing. Do not call all three
    \Pvolume.\Q

    <item><verbatim|\\nu_{\\rm ph}> is a character measure;
    <verbatim|\\mu_{N,p}^{\\mathcal W}> is a Wilson measure.
    <verbatim|\\mathcal S^{\\rm mix}> is a correlation, not a measure.

    <item><verbatim|Q> denotes <verbatim|YM.OPE.Orbits.Reader> only after
    qualification; the public hierarchy's OPE data may be discussed through
    <verbatim|\\mathcal T>. The other <verbatim|Reader> types in contact
    namespaces require their own local notation.

    <item>Source-specific numerical parameters and the many RG norm packages
    are intentionally <strong|not> assigned global symbols here. Their
    mathematical types and order of choice must be audited in the relevant
    proof-unit issue before a notation entry is added. Scott's glossary
    contains probable/tentative readings in those areas; they are leads, not
    accepted conventions.

    <item>The public/internal bridges for gauge group and Wilson family are
    inspected above. The precise projection of <verbatim|\\mathsf F,\\mathcal
    A,Q,\\mathcal D,X> to public hierarchy fields is explained by the
    applicable bridge/assembly proof unit; this glossary does not assert a
    fieldwise equivalence not checked in that unit.
  </itemize-minus>

  <section|Evidence and maintenance><label|evidence-and-maintenance>

  Read the merged <hlink|statement audit|public-statement.tm>, the pinned
  external glossary sections for the main theorem and Parts I, II, IV, V and
  VII, and targeted source definitions listed in the tables. Two separate
  read-only agent inspections of public and internal Lean definitions
  reported source locations and caveats; the public inspection corrected an
  initial conflation of physical period with lattice site count by checking
  the placement and suitability definitions in
  <verbatim|Lean/PublicWilson.lean:35\U90>. Commands included targeted
  <verbatim|rg>, <verbatim|nl -ba>, <verbatim|sed>, and <verbatim|gh api>
  retrieval of the external glossary. No Lean build or proof command was run
  for this notation task; issue #2 supplies the pinned build/axiom evidence,
  not a notation review. The structural checker result and final diff check
  will be recorded in the PR.

  Only a dedicated issue may change this shared table. The author of a proof
  unit records any local alias and conversion in its \PDefinitions and
  notation\Q section; integrators check the crosswalk under <hlink|the
  notation protocol|../docs/notation.tm>. Material changes to an accepted
  meaning require tracing affected units and renewed review rather than
  updating another reviewer's fingerprint.
</body>

<\initial>
  <\collection>
    <associate|html-title|Shared mathematical notation \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-3|<tuple|3|5>>
    <associate|auto-4|<tuple|4|7>>
    <associate|auto-5|<tuple|5|8>>
    <associate|auto-6|<tuple|6|8>>
    <associate|evidence-and-maintenance|<tuple|6|8>>
    <associate|finite-wilson-lattice-and-limits|<tuple|2|3>>
    <associate|gauge-group-and-spacetime|<tuple|1|2>>
    <associate|hierarchy-phases-and-fields|<tuple|4|7>>
    <associate|internal-construction-and-extraction|<tuple|3|5>>
    <associate|reserved-distinctions-and-open-questions|<tuple|5|8>>
    <associate|shared-mathematical-notation|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Gauge
      group and spacetime> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Finite
      Wilson lattice and limits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Internal
      construction and extraction> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Hierarchy,
      phases, and fields> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Reserved
      distinctions and open questions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Evidence
      and maintenance> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>