<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Continuum and identification: chapter
  instructions><label|continuum-and-identification-chapter-instructions>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Final chapter
    numbering> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Placement and
    page budget> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Common author
    instructions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|C1. The free
    Maxwell comparison theory (20 pages)>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <with|par-left|1tab|Current placement supplement
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|C2. Continuum
    correlations and local fields (20 pages)>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|C3. Reflection
    spaces, Ward identities and Euclidean symmetry (34 pages)>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|C4.
    Decomposition into phases (18 pages)>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|C5.
    Relativistic reconstruction in every phase (28 pages)>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|C6. The trace
    law and its consequences (24 pages)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|C7. Operator
    products and extensions across diagonals (30 pages)>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|C8. Assembly
    and scope (6 pages)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Final
    implemented trace proof> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13><vspace|0.5fn>
  </table-of-contents>

  This is a writing specification, not a certification that the manuscripts
  prove all imported estimates. Stable chapter IDs C1\UC8 are used so the
  editor can interleave C1 with the ultraviolet chapters. The source root is
  the workspace <verbatim|/Users/hairer/Yang Mills>; all source paths below
  are relative to that root. LaTeX labels are the durable locator; line
  ranges refer to the supplied files on 18 November 2026. Read the listed
  ranges, not the whole manuscript. Consult <verbatim|continuum-audit.md>
  before promoting an input to a theorem.

  <section|Final chapter numbering><label|final-chapter-numbering>

  The consolidated book assigns C1 to Chapter 3 (after foundations, before UV
  Chapters 4\U12), and C2\UC8 to Chapters 13\U19 respectively. The stable IDs
  below remain useful for source audits.

  <section|Placement and page budget><label|placement-and-page-budget>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|3|3|cell-halign|r>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|ID>>|<cell|<strong|Title>>|<cell|<strong|Pages>>|<cell|<strong|Required
  predecessors>>>|<row|<cell|C1>|<cell|The free Maxwell comparison
  theory>|<cell|20>|<cell|Lattice/Lie algebra conventions; finite-dimensional
  local polynomial spaces>>|<row|<cell|C2>|<cell|Continuum correlations and
  local fields>|<cell|20>|<cell|C1; full fixed-volume limit, volume-uniform
  difference bounds and corrected insertion
  estimates>>|<row|<cell|C3>|<cell|Reflection spaces, Ward identities and
  Euclidean symmetry>|<cell|34>|<cell|C1\UC2; lattice stress and annular
  estimates>>|<row|<cell|C4>|<cell|Decomposition into
  phases>|<cell|18>|<cell|C2\UC3; bounded lattice approximants and corrected
  detector moments>>|<row|<cell|C5>|<cell|Relativistic reconstruction in
  every phase>|<cell|28>|<cell|C3\UC4>>|<row|<cell|C6>|<cell|The trace law
  and its consequences>|<cell|24>|<cell|C1\UC5; moving-radius and
  trace-normalization estimates>>|<row|<cell|C7>|<cell|Operator products and
  extensions across diagonals>|<cell|30>|<cell|C2\UC4; full marked RG
  replacement estimates>>|<row|<cell|C8>|<cell|Assembly and scope of the
  construction>|<cell|6>|<cell|All preceding
  chapters>>|<row|<cell|>|<cell|Total>|<cell|180>|<cell|>>>>>

  C1 must precede the ultraviolet rank/detector argument if that argument
  uses strict positivity of the free polynomial Gram matrix. The rest of the
  free comparison cannot be moved there: comparison with the interacting
  theory uses C2. C3 deliberately puts coordinate reflection spaces before
  rotations, and rotations before phase decomposition. C7's repeated-word
  estimate is extracted into C2, without its OPE machinery. C7 itself may
  precede C5 if the editor prefers; it must not be used to justify the
  earlier slab bounds. Leading lattice running belongs in the ultraviolet
  chapter, not C6. The original Outline parts are subjects, not a topological
  ordering.

  <section|Common author instructions><label|common-author-instructions>

  Use the central notation registry. In this specification, <verbatim|a_N> is
  the spacing, <verbatim|R_p> the physical period (source <verbatim|L_p>),
  <verbatim|L> a block ratio, <verbatim|b\<gtr\>0> the block penalty, and
  <verbatim|beta> an inverse coupling. Time is coordinate 4, not the
  zero-based time coordinate 3 occurring in some outline descriptions. Use
  <verbatim|V_d> for polynomial insertion labels of scaling dimension at most
  d, <verbatim|N_d(S)> for correlation-null labels, <verbatim|F_d=V_d/N_d(S)>
  for fields, and <verbatim|F_d^0> for free fields. Do not identify different
  filtration levels without the inclusion map <verbatim|iota_{d,e}>. Write
  <verbatim|theta> for antilinear reflected words and reserve capital
  <verbatim|Theta> for the centered trace. Use <verbatim|B_h(w)> for the slab
  insertion operator (thickness h), avoiding the degree index d as a
  thickness. Use <verbatim|Xi> for phase space and <verbatim|xi> for a phase.
  The registry uses <verbatim|M_d^Max>, <verbatim|S^Max> for the free spaces
  and correlations; the shorthand <verbatim|F_d^0>, <verbatim|S^0> in the
  contracts below denotes those same objects. In typeset prose use the
  registry names. A superscript 0 in these contracts denotes the free
  reference, not a zero-energy projection.

  Every output below must be stated with its hypotheses, quantifier order,
  constant dependence and choice of underlying family. A chapter writer may
  use an earlier output as a theorem only after its status is certified in
  the proof ledger; otherwise write an explicitly conditional result. Each
  chapter should open with a half-page inventory of imported objects and
  definitions. Remind the reader of any construction-specific notation after
  3\U4 pages without use. Omit formal-code package names from prose.
  Introduce any useful auxiliary notion by its mathematical content, not by
  translating its metaphor literally.

  <section|C1. The free Maxwell comparison theory (20
  pages)><label|c1-the-free-maxwell-comparison-theory-20-pages>

  <strong|Purpose.> Supply a concrete reference space and finite detecting
  correlations before using them to control ranks of interacting fields. This
  chapter is independent of construction of the interacting limit.

  <strong|Sections.> (1) Gaussian curvature covariance and Wick polynomials
  (4 pp). Fix the Green function <verbatim|Gamma(x)=1/(4 pi^2 \|x\|^2)> and
  derive the curvature covariance from the declared sign convention for
  derivatives in its two arguments. Define on-shell Taylor jets by
  <verbatim|dF=delta F=0>; Taylor coefficients include factorials. Curvature
  has scaling dimension 2 and each derivative adds 1. (2) Polynomial quotient
  and reflection positivity (5 pp). Explain why covariance null relations
  require quotienting by Maxwell equations; distinguish gauge-invariant jet
  polynomials from all polynomials. Use Gaussian/Wick theory by reference.
  Retain the particular Kelvin-transform calculation that makes the finite
  jet Gram form strictly positive. (3) Finite detecting families (4 pp). Turn
  nondegeneracy into a finite family of correlation functionals, specifying
  whether a row is a singleton or pair. Constants and the unit are included.
  (4) Degree-four tensors and their divergences (3 pp). Give the finite
  bases, the divergence matrix and its rank, rather than reproducing repeated
  component computations. Separate the scalar constant from centered tensors.
  (5) Stress flux and finite Ward tests (4 pp). Fix the exact normalization
  using a unit-mass mollifier and explain how derivatives of probes are
  handled. State the bounded-degree external detector and internal-symmetry
  test needed in C3.

  <strong|Inputs.> Compact matrix group and the declared trace inner product;
  finite jet representation, conjugation and signed coordinate permutations.
  Only the free Gaussian covariance is imported analytically. No phase,
  interacting Ward identity or rotation theorem is assumed.

  <strong|Outputs.> C1.a: a Euclidean free correlation family <verbatim|S^0>,
  field spaces <verbatim|F_d^0>, units, injective inclusions, derivative maps
  and O(4) actions; strict reflected positivity for each nonzero on-shell
  polynomial. C1.b: for every finite degree d, finitely many separated test
  rows give an injective linear map from <verbatim|F_d^0> to a
  finite-dimensional coordinate space. C1.c: the centered real hypercubic
  degree-four symmetric tensors have the stated three-dimensional candidate
  space; divergence has rank two and a one-dimensional kernel generated by
  the Maxwell stress. C1.d: the normalized free stress has translation and
  rotation Ward fluxes with the stated common nonzero coefficient. Finite
  vector-map tests detect exactly scalar multiples of the derivative action;
  finite internal tests eliminate the bracket defect. Keep the exact
  domain/degree cutoffs from the source statements; do not enlarge them to
  arbitrary maps.

  <strong|Read first.> <verbatim|Scott/Outline/units/VII-1.md> ŸŸ1\U4,
  <verbatim|VII-3.md> ŸŸ1\U4, <verbatim|VI-2.md> free portions;
  <verbatim|Scott/part2/G-section.tex:15\U222>, labels <verbatim|lem:G1.1>,
  <verbatim|lem:G-detection>, <verbatim|lem:G1-vector>,
  <verbatim|lem:G1-internal>; compare the same labels in Trish (its
  explanatory additions are useful). Detailed calculations:
  <verbatim|Martin/existence/all-grade-free-detectors.tex>, labels
  <verbatim|eq:ex-lattice-positive-pivot>,
  <verbatim|eq:ex-lattice-wick-norm>, <verbatim|thm:ex-lattice-all-grade-free-detector>;
  <verbatim|free-maxwell-ward-flux.tex:1\U329>, especially
  <verbatim|eq:maxwell-coordinate-charge>,
  <verbatim|eq:maxwell-polynomial-ward>; <verbatim|physical-ward-free-classification.tex:12\U430>,
  especially <verbatim|thm:free-uniform-detection>,
  <verbatim|thm:free-quiet-classification>.

  <strong|Checks.> Strict positivity on the correct on-shell quotient is
  essential; Gaussian positivity alone does not prove it. Check the
  normalization of ordered antisymmetric indices and all factors of two
  before quoting the stress coefficient. The source's degree-four basis size
  22 concerns a particular basis, not the dimension of all possible
  tensor/field spaces. Literature search is still required for the precise
  Kelvin/detector argument; do not label it new without that search.

  <subsection|Current placement supplement><label|current-placement-supplement>

  The implemented Chapter 13 includes additional local estimates so that the
  later logical flow is forward. After C2's quotient and repeated-word
  sections, use <verbatim|13-sharp-bounds.tex> (Scott J's sharp separated
  bounds), <verbatim|13-bounded-approximations.tex> (Scott E-bounded-real and
  Martin actual-phase-grid-approximants), <verbatim|18-graded-quotient.tex>
  (Scott J17\U150), and <verbatim|18-lattice-products.tex> (Scott J211\U414
  plus the mixed part of J415\U455). Keep the complete marked density through
  grouping and subtraction. Preserve every original square-zero variable
  until full-group coefficient extraction; grouping supports is not an
  algebra homomorphism.

  The local cluster output is a field chosen by fixed probe functionals
  before its exterior spectator, with coefficient degree-i bound
  <verbatim|r^(i\<minus\>W\<minus\>epsilon)> and mixed residual bound
  <verbatim|r^(D+1\<minus\>W\<minus\>epsilon)>. For Chapter 14 use W=d+4,
  D=d+1\<minus\>kappa and shell factor r^(3+kappa): the error is
  r^(1\<minus\>epsilon). This avoids a separate annular supplier and uses no
  phase or Ward theorem. Chapter 18's <verbatim|18-raw-replacement.tex> adds
  the compression-algebra/all-copy conclusion after phases exist. A
  finite-state coefficient estimate alone does not supply that conclusion;
  use the replica-independent rooted estimate.

  <section|C2. Continuum correlations and local fields (20
  pages)><label|c2-continuum-correlations-and-local-fields-20-pages>

  <strong|Sections.> (1) Ordered limits and compactness (3 pp). Start
  directly from full fixed-volume kernels; diagonalize only in volume for
  correlations. (2) Separating cells and vanishing errors (3 pp). Explain the
  translated-cell placement bound and why a small chessboard seminorm
  suffices against fixed spectators. (3) Correlation-null fields and
  finite-dimensional representatives (6 pp). Distinguish extraction of
  coefficient projections from extraction of kernels. Prove equality of the
  null space and the limiting projection kernel by both rank inequalities.
  (4) Differential calculus and Euclidean properties (4 pp). Summation by
  parts, inclusion and derivative maps, reality, signed symmetries and
  reflection positivity; do not assert O(4) yet. (5) Repeated reflected
  insertions (4 pp). Establish the all-length bound used for slabs before
  introducing phase algebra.

  <strong|Inputs.> For each p, smooth fixed-volume kernels <verbatim|M_{p,v}>
  on configurations distinct modulo <verbatim|R_p Z^4>, and full-N
  convergence with all fixed finite difference stencils. Uniform-in-p bounds
  on every derivative on fixed separated compacts; cutoff thresholds may
  depend on p for fixed-volume convergence. Uniform centered chessboard
  estimates. Bounded corrected projections <verbatim|Pi_{d,N,p}>, null
  approximations with subpolynomial coordinate growth, compatible
  inclusion/difference approximants, actual free-detector comparisons, and an
  upper bound on projection rank. Each must concern the same Wilson family.
  The repeated-word input must be uniform in copy number after the
  appropriate nth-root estimate.

  <strong|Outputs.> C2.a: for every prescribed increasing volume sequence
  p(k), one refinement gives <verbatim|M_{p(q(k)),v}-\<gtr\>S_n(v;.)> in
  <verbatim|C^infinity_loc(Conf_n)>, simultaneously for all arities, degrees
  and labels; all separated smearings have the ordered full-N then volume
  limit. C2.b: <verbatim|N_d(S)=ker Pi_d>, <verbatim|dim F_d=dim F_d^0>,
  injective compatible inclusions and commuting derivative maps satisfying
  <verbatim|S(...,partial_mu A(x),...)=partial_{x_mu}S(...,A(x),...)>. C2.c:
  normalization, reality, permutation and translation symmetries, hypercubic
  covariance, point and joint-test reflection positivity, and polynomial
  separated bounds for every derivative. C2.d: for bounded label degree/norm,
  an r-buffered word w of n insertions has repeated reflected-word moments
  bounded by <verbatim|B_v A^(4m)> for all repetitions m, with
  <verbatim|A=C^n(n/r)^(kappa n)> and constants independent of slab width, n
  and volume (dependence on bounded degree/norm is allowed).

  <strong|Read first.> <verbatim|Scott/part2/F-infinite-volume.tex:7\U216>,
  especially <verbatim|lem:F1>, <verbatim|lem:F-represent>,
  <verbatim|lem:F2>, <verbatim|lem:F3>, <verbatim|lem:F4>;
  <verbatim|Trish/part2/F-infinite-volume.tex:7\U14> and corresponding
  labels. Outline IV.1 ŸŸ1\U4 plus VII.4 step 7 (the early repeated-word
  argument). For detailed alternatives: <verbatim|Martin/existence/limits.tex:34\U434>,
  <verbatim|prop:ex-limits-extraction>, <verbatim|prop:ex-limits-euclidean>,
  <verbatim|rem:ex-limits-fullmesh>; <verbatim|smooth-limits.tex>,
  <verbatim|ex-smooth-grid-limit>; <verbatim|phase-fields.tex:133\U288> and
  <verbatim|736ff>, <verbatim|prop:phase-field-inclusions>,
  <verbatim|prop:phase-field-derivatives>.

  <strong|Checks.> <verbatim|Conf_n> means distinct points, not different in
  every coordinate. Distinct modulo the period is a third domain. Auxiliary
  coefficient subsequences do not reinstate a mesh subsequence in the
  observable conclusion. The entire chapter's application to the selected
  family retains the UV obligations explicitly recorded in Trish; see audit
  C-A1 and its Martin closure candidates. Their implemented hypothesis
  matching is recorded in the final chapter audits and
  <verbatim|PROGRESS.md>; the earlier audit warnings remain useful checks
  when changing the construction. Arzelà\UAscoli, diagonalization and
  summation by parts are standard and should occupy little space.

  <section|C3. Reflection spaces, Ward identities and Euclidean symmetry (34
  pages)><label|c3-reflection-spaces-ward-identities-and-euclidean-symmetry-34-pages>

  <strong|Sections.> (1) Reflection Hilbert spaces and translations (4 pp).
  Construct for every coordinate axis; give the heat semigroup and transverse
  translations, spectral measures and the ground projection without requiring
  rotation covariance. (2) Bounded slab insertions and norm derivatives (3
  pp). Deduce from C2.d by the power argument. (3) Interacting/free
  comparison and conserved stress (6 pp). Import precise lattice comparison
  and annular bounds; remove coordinate-coincidence strips; correct
  comparison maps to preserve inclusions; transfer rank and construct the
  real conserved tensor line. (4) Coordinate spectral estimates and angular
  flux (8 pp). Treat off-diagonal reflection signs and diagonal conservation
  separately. Include a minimal local Taylor extension for this estimate
  here, before the OPE chapter. (5) Global Ward identities (5 pp). Collinear
  identity, proportionality of translation charge to derivatives, positive
  Gram kernels giving analyticity, propagation by moving extreme points. (6)
  Lie brackets, rotation action and normalization (8 pp). Eliminate internal
  defects, construct exact intertwiners, integrate the action and
  normalize/average the tensor. Briefly state the induced Lorentz label
  representation for C5.

  <strong|Inputs.> C1\UC2; actual, same-family uniform small-radius lattice
  comparisons in the norm of tests bounded in supremum norm, and annular
  annihilator estimates including derivatives. Corrected fields and all-copy
  lattice approximants are required for spectral sign arguments. State these
  as analytic assumptions unless the UV ledger proves them. The free finite
  detector and vector/internal Ward tests must be available independently of
  this chapter.

  <strong|Outputs.> C3.a: OS spaces <verbatim|H_mu^OS>,
  <verbatim|E_mu(t)=exp(-tH_mu)> and <verbatim|B_h(w)> satisfying
  concatenation, adjoint and norm-smooth derivative laws and
  <verbatim|\|\|B_h(w)\|\|\<less\>=C^n(n/r)^(kappa n)>. C3.b: for every
  finite bounds (arity n, degree d, derivative order j, window R), some
  common comparison sequence and isomorphisms
  <verbatim|U_{k,e}:F_e^0-\<gtr\>F_e> yield convergence of rescaled
  correlations through order j on separated windows; maps eventually preserve
  units, reality, hypercubic symmetries and inclusions. Do not claim one
  sequence works for every bound unless an explicit diagonal theorem is
  supplied. C3.c: O(4) acts compatibly on <verbatim|F_d>, derivatives
  transform as vectors, all mixed correlations are covariant, and a symmetric
  real conserved stress <verbatim|T_{mu nu}> is normalized by local
  translation/rotation Ward identities. C3.d: label boosts integrate with the
  same inclusions, reality and star conventions, for C5.

  <strong|Read first.> <verbatim|Scott/part2/G-section.tex:223\U834>:
  <verbatim|lem:G-lattice>, <verbatim|lem:G-annular>, <verbatim|lem:G2.1>,
  <verbatim|cor:G-smooth>, <verbatim|lem:G2.2>, <verbatim|lem:G2.3>,
  <verbatim|lem:H1.1>, <verbatim|lem:H-coordinate-signs>,
  <verbatim|lem:H-G3>, <verbatim|lem:G-collinear-flux>,
  <verbatim|lem:G-analytic>, <verbatim|lem:G3.1\U3>. Outline VI.1, VI.2;
  extract V.1.1\U3 here. <verbatim|Martin/existence/reflection.tex>
  (<verbatim|ex-euclidean-semigroup>); <verbatim|slab-regularity.tex>
  (<verbatim|ex-smooth-slabs>); <verbatim|physical-ward-stress-cone.tex:1\U88>
  for the early symmetric Taylor extension and all remaining sections for
  diagonal estimates; <verbatim|physical-ward-propagation.tex>,
  <verbatim|thm:ward-global-propagation>,
  <verbatim|lem:ward-local-response-laws>,
  <verbatim|prop:ward-readout-limits>, <verbatim|lem:ward-brackets>;
  <verbatim|physical-angular-actions.tex:31\U304> for normalization and exact
  intertwiners. Trish G adds hypotheses and clarifies that initial
  configurations lie on coordinate axes.

  <strong|Checks.> A smooth function with zero jets need not vanish nearby:
  positivity/analyticity must precede continuation. No rotation or cone
  spectrum may be used in the coordinate-space flux estimate that establishes
  rotations. The local two-point Taylor extension is auxiliary and need not
  be positive; it is not the final contact extension. Conservation fixes a
  line, not its sign or scale. Cite OS for standard reflection
  reconstruction, not as a substitute for the construction-specific spectral
  and flux work. Verify whether Fröhlich\UOsterwalder\USeiler (1983) covers
  the exact continuation step before adapting its proof.

  <section|C4. Decomposition into phases (18
  pages)><label|c4-decomposition-into-phases-18-pages>

  <strong|Sections.> (1) Ground-space compression and separated clusters (4
  pp). Prove spatial translations fix the ground space using rotations
  already obtained. (2) The commutative C*-algebra and its spectrum (3 pp).
  Character decomposition, compact metric spectrum and full-support vacuum
  measure by standard Gelfand/Riesz theory. (3) Reflection, Ward laws and
  common field spaces in every phase (7 pp). Explain operator identities
  before applying characters, and detector-moment estimates for equality of
  null spaces. (4) Almost-everywhere vacuum uniqueness and uniform slabs (4
  pp). Keep exceptional phases until C5.

  <strong|Inputs.> C2\UC3 plus bounded lattice approximants and quantitative
  corrected detector moments for the same table. These are stronger than the
  bare Euclidean hierarchy. Needed limits: cutoff limits with copy
  number/approximation fixed, large translations, copy number to infinity,
  then approximation error to zero.

  <strong|Outputs.> C4.a: a separable commutative unital algebra A on the
  mixed ground space, cyclic/separating vacuum, compact metric
  <verbatim|Xi=Spec A>, full-support probability nu, and continuous
  evaluations <verbatim|S^xi(w)=xi(M(w))>, with <verbatim|S(w)=integral
  S^xi(w) dnu>. C4.b: every phase has the C2 hierarchy, C3 symmetries/Ward
  identities and exactly the same null labels; all phase slab bounds are
  bounded by the mixed slab bound. C4.c: a single full-measure subset has
  one-dimensional OS ground space; choose and retain one <verbatim|xi_*>
  there. At this stage do not assert uniqueness in all phases or that nu is a
  point mass.

  <strong|Read first.> <verbatim|Scott/part2/H-section.tex:20\U185>,
  <verbatim|lem:H1.2>, <verbatim|lem:H-roots>, <verbatim|lem:H1.3>,
  <verbatim|cor:H-phase-slabs>; compare Trish H's expanded Gram and
  null-space discussion. Outline V.1.4\U9.
  <verbatim|Martin/existence/phases.tex:109ff>, <verbatim|ex-ground-spatial>,
  <verbatim|ex-cluster-train>, <verbatim|ex-ground-commutative>;
  <verbatim|phase-selection.tex:1\U178>, <verbatim|ex-character-measure>,
  <verbatim|ex-phase-horizon>, <verbatim|ex-pure-ground>;
  <verbatim|phase-fields.tex:1\U132>, <verbatim|ex-character-moments>,
  <verbatim|ex-no-new-null>; <verbatim|phase-ward-inheritance.tex> for Ward
  transport.

  <strong|Checks.> Compression of a concatenation is not generally product of
  compressions; retain the genuine positive Gram operator before character
  evaluation. Full support upgrades continuous inequalities, not arbitrary
  almost-everywhere statements. Null-space equality requires quantitative
  free detector comparisons, not abstract decomposition. Cite standard
  commutative C*-theory and prove only these special transfer arguments.

  <section|C5. Relativistic reconstruction in every phase (28
  pages)><label|c5-relativistic-reconstruction-in-every-phase-28-pages>

  <strong|Sections.> (1) Complex-time correlation functions from slabs (4
  pp). Width independence and polynomial height-gap bounds. (2) Tempered
  boundary values, covariance and spectrum (6 pp). State the analytic
  boundary theorem with exact growth hypotheses; check them uniformly in xi.
  (3) Locality from adjacent spacelike exchange (4 pp). Lorentz tube,
  imaginary boosts, agreement on a totally real Euclidean slice, joint
  boundary distributions. (4) Fields on a common invariant domain and OS
  comparison (5 pp). Independent-height Gram limits and faithful labels; show
  the OS isometry is onto. (5) No exceptional phases (5 pp). Locality gives
  low-energy shell bound, then heat decay; full-support continuity upgrades
  vacuum uniqueness. (6) Weak commutant and stress charges (4 pp). State
  domain and support conditions precisely.

  <strong|Inputs.> C3's O(4)/Lorentz label action and slabs, C4's phase
  family, null equality, uniform bounds and almost-everywhere vacuum
  uniqueness. No Euclidean collision extension is used.

  <strong|Outputs.> For every xi: a Hilbert space H_xi, dense invariant word
  domain D_xi, vacuum Omega_xi, strongly continuous unitary Poincaré action,
  jointly tempered Wightman correlations W_n^xi, local operator-valued fields
  with adjoint/covariance laws and positive-cone spectrum; nonzero field
  labels remain nonzero. W_n^xi on joint Schwartz tests varies continuously
  in xi and averages to the mixed boundary distribution. OS and relativistic
  Hilbert spaces are unitarily identified. For every fixed compactly
  supported finite sum of field words A, constants independent of xi give
  <verbatim|mu_{A Omega_xi}{0\<less\>E\<less\>=u}\<less\>=M_A u^2>
  (0\<less\>u\<less\>=1) and vacuum-subtracted heat pairing
  \<less\>=<verbatim|M'_A s^-2> (s\<gtr\>=1). Every vacuum is unique and the
  weak commutant is scalar. Continued stress obeys the local charge
  commutator for tests whose spatial cutoff derivative is spacelike separated
  from the local field support.

  <strong|Read first.> <verbatim|Scott/part2/H-section.tex:187\U368>, labels
  <verbatim|lem:H2.1>, <verbatim|lem:H-locality>, <verbatim|lem:H-fields>,
  <verbatim|lem:H2.2>, <verbatim|lem:H2.3>, <verbatim|lem:H-irreducible>,
  <verbatim|lem:H2.4>. Outline V.2 and V.3.
  <verbatim|Martin/existence/complex-heat.tex>,
  <verbatim|analytic-boundary.tex>, <verbatim|fourier-support.tex>,
  <verbatim|full-tube.tex>, <verbatim|locality.tex>;
  <verbatim|reconstruction.tex:34\U180>, <verbatim|input:word-boundary>,
  <verbatim|lem:cold-vectors>, <verbatim|prop:word-fields>,
  <verbatim|prop:word-locality>; <verbatim|phase-selection.tex:201ff>,
  <verbatim|lem:phase-uniform-low-energy>,
  <verbatim|thm:ex-every-character-vacuum>;
  <verbatim|physical-ward-analytic-continuation.tex> for stress jumps. These
  files are secondary reading, opened only for the assigned section.

  <strong|Literature and checks.> Osterwalder\USchrader I and II are the
  original reconstruction sources; II corrects growth/boundary issues. Verify
  applicability rather than saying reflection positivity alone implies
  reconstruction. The manuscript uses direct slab polynomial bounds instead
  of simply assuming their growth axiom. Cite general tube/boundary and
  reconstruction arguments where applicable; retain their hypothesis
  verification, uniformity in xi, OS surjectivity and no-exceptional-phase
  argument. The low-energy estimate is polynomial and does not imply a mass
  gap. The a.e.-to-everywhere step applies to continuous vacuum-subtracted
  heat pairings, not continuity of spectral projections.

  <section|C6. The trace law and its consequences (24
  pages)><label|c6-the-trace-law-and-its-consequences-24-pages>

  <strong|Sections.> (1) Centered trace and positive spectral measure (3 pp).
  Fix <verbatim|Theta=trace T-\<less\>trace T\<gtr\>_{xi_*} 1> as an operator
  identity and define <verbatim|G_Theta(r)>. (2) Prescribed radii and
  finite-dimensional normalization (5 pp). Moving windows must cover all
  small radii; state two-neighbouring-scale and comparison norm bounds. (3)
  The regulated dilation Ward coefficient (6 pp). Keep the precise
  same-family regulator identity and distinguish it from a formal
  beta-function argument. (4) Moving fields, rounding and the all-radius
  limit (6 pp). Give error rates strong enough for logarithmic amplification.
  (5) Exact exclusion statement (4 pp). Finite power-log profiles and
  spectral countertests; optional Maxwell-Fock comparison in a short remark
  only.

  <strong|Inputs.> C1\UC5; leading inverse-coupling law already proved
  upstream; same-family finite-cutoff trace coefficient, stress
  normalization, rank comparison, arbitrary-radius approximation and
  quantitative stability of the trace functional. A leading free scaling
  sequence alone is insufficient.

  <strong|Outputs.> <verbatim|r^8 log^2(1/r) G_Theta(r) -\<gtr\> 3
  dim_R(g)/pi^4\<gtr\>0> as r decreases to zero, in the retained selected
  phase. The positive spectral measure is compatible with this Euclidean
  two-point function and the Wightman pairing. Every finite linear
  combination of products of the precisely defined free mass-shell Laplace
  kernels differs from <verbatim|G_Theta> somewhere in every
  <verbatim|(0,delta)>. State the corresponding compact Fourier-support
  countertest only if the exact class is defined. Do not infer exclusion of
  all generalized free fields, all infinite Wick expansions, or all Gaussian
  theories from this two-point statement.

  <strong|Read first.> <verbatim|Scott/part2/I-section.tex:15\U553>,
  <verbatim|lem:I1.1>, <verbatim|lem:I1.2>, <verbatim|lem:I-radii>,
  <verbatim|def:I-current>, <verbatim|lem:I-regulator>,
  <verbatim|lem:I-stability>, <verbatim|lem:I1.3>, <verbatim|lem:I2.1>,
  <verbatim|lem:I2.2>; Outline VII.2, VII.6 and the later rigidity/profile
  parts of VII.3. <verbatim|Martin/existence/trace-asymptotic.tex:17\U432>,
  <verbatim|lem:trace-normalized-stress>, <verbatim|input:trace-scales>,
  <verbatim|prop:trace-scale-supplier>, <verbatim|lem:trace-moving-correlation>,
  <verbatim|thm:trace-asymptotic>; <verbatim|trace-spectrum.tex:25\U262>;
  <verbatim|trace-profiles.tex>; <verbatim|trace-local-rate-selection.tex>,
  <verbatim|prop:ex-lattice-selected-local-budget>. Use Trish's corresponding
  trace sections to check retained assumptions.

  <strong|Checks.> Convergence along one selected radius sequence does not
  yield an all-radius law. Fixed-field convergence does not automatically
  permit moving stress labels with growing coefficients. Track the
  <verbatim|log(1/r)^2> amplification explicitly. Literature:
  Collins\UDuncan\UJoglekar gives the trace/dilatation anomaly in gauge
  theory, not this nonperturbative all-radius estimate. Cite it as provenance
  and verify any normalization transferred from it.

  <section|C7. Operator products and extensions across diagonals (30
  pages)><label|c7-operator-products-and-extensions-across-diagonals-30-pages>

  <strong|Sections.> (1) Finite correlation projections and one compatible
  prescription (5 pp). Define detecting probes and finite-dimensional left
  inverses, then remove lower degrees recursively and average symmetries. (2)
  Lattice cluster replacement and quantitative estimates (7 pp). Explain
  marked grouping, support enlargement and the one remainder bound; import
  only previously proved marked RG estimates. (3) Phase-uniform continuum OPE
  (5 pp). Bounds in the compression algebra first, then character evaluation.
  Derivative induction removes grid restrictions. (4) Nested clusters (3 pp).
  State a finite-tree version with an example; avoid all implementation
  variants. (5) Extensions across collision diagonals (7 pp). Define normal
  coordinates, coherent Taylor projections, sector/partition induction and
  local order. (6) Dependence on prescription and scope (3 pp).

  <strong|Inputs.> C2's corrected field filtration and quantitative quotient
  estimates, C3 rotations, C4 compression algebra and full-support measure,
  and the actual all-marker RG replacement theorem, including the stronger
  anchored support estimate and restart used in Trish. Constants must permit
  bounded derivative orders and finite trees. C5 is not needed to define
  Euclidean contact extensions.

  <strong|Outputs.> For a fixed compatible prescription, coefficients depend
  on the cluster and its center, not spectator fields or xi. For each fixed
  degree truncation D, degree list A, permitted separated geometry, bounded
  spectators and epsilon\<gtr\>0, at sufficiently small cluster radius r,
  <verbatim|\|C_j\|\<less\>=C r^(j-sum deg A-epsilon)> and the tested
  remainder is \<less\>=<verbatim|C r^(D+1-sum deg A-epsilon)>, uniformly
  over xi and the mixture. State explicitly which scaled cluster/spectator
  compact sets determine C and the threshold. A finite nested-tree estimate
  is optional if needed for contacts. Each separated phase correlation has
  the specified finite-order distribution extension across diagonals, defined
  by the fixed Taylor subtraction prescription. No infinite-D series
  convergence, uniqueness, contact positivity or contact Ward identities are
  asserted.

  <strong|Read first.> <verbatim|Scott/part2/J-section.tex:1\U859>; labels
  <verbatim|def:D31\U38>, <verbatim|lem:J1.1>, <verbatim|lem:J-marked-costs>,
  <verbatim|lem:J-lattice>, <verbatim|lem:J-power-separated>,
  <verbatim|lem:J1.2>, <verbatim|lem:J1.4\U5>, <verbatim|lem:J2.1\U3>. Read
  <verbatim|Trish/part2/J-section.tex:20\U24> before using any of them.
  Outline VII.4. <verbatim|Martin/existence/ope-prescription.tex:1\U169>,
  <verbatim|prop:ope-prescription>; <verbatim|ope-filtration.tex>,
  <verbatim|prop:ope-local-trial-comparison>; <verbatim|ope-grouping.tex>;
  <verbatim|ope-cutoff.tex>, <verbatim|prop:ope-match-assembly>;
  <verbatim|ope-estimates.tex:33\U176>, <verbatim|input:ope-raw-estimates>,
  <verbatim|thm:ope-quantitative>; <verbatim|ope-grouping-algebra.tex> and
  <verbatim|ope-phase-prices.tex> only as needed for algebra-norm passage.

  <strong|Literature and checks.> Wilson (1969) for OPE; Fröb\UHolland for
  the rigorous all-order perturbative Yang\UMills OPE, which is not a
  substitute for these nonperturbative uniform estimates.
  Brunetti\UFredenhagen Ÿ5 supplies the general distribution-extension
  framework; cite its result and prove only the specialized coherent
  multiple-diagonal estimates not covered. The estimate on one radial
  diagonal is insufficient for partial collisions. State the normal dimension
  <verbatim|q_h=4(\|h\|-1)> and check the shell exponent after subtraction.
  The source prescription uses <verbatim|L_h=max(0,d_h+1-q_h)> with
  <verbatim|d_h=sum_{i in h}d_i>; read whether L_h counts retained Taylor
  degree or order of vanishing before copying it.

  <section|C8. Assembly and scope (6 pages)><label|c8-assembly-and-scope-6-pages>

  Give one precise theorem and a proof that is a short dependency table.
  Choose <verbatim|(G,b)> first and one Wilson family second, before any
  prescribed volume subsequence. For each volume sequence choose one
  refinement and attach S, F_d, Xi, nu, the selected xi_*, reconstructed
  theories, stress and OPE/contact prescription to those same data. Auxiliary
  coefficient/radius selections must not change the family. The full inner
  mesh limit is an independent earlier theorem, not a consequence of diagonal
  extraction. Separate the public existence statement (some positive
  logarithmic slope) from the strengthened normalized construction statement.

  Read <verbatim|Scott/part1/03-main-theorem.tex>,
  <verbatim|07-deduction.tex>, <verbatim|08-correspondence.tex>; Outline
  VIII.1 ŸŸ1\U4; <verbatim|Martin/existence/assembly.tex:173ff>, especially
  <verbatim|ex-joint-input>, <verbatim|ex-conditional-existence>,
  <verbatim|thm:ex-construction-assembly>. Retain its distinction between a
  conditional assembly lemma and actual discharge of the construction input.
  State explicitly: no mass gap, uniqueness of phase or infinite-volume
  limit, independence of block penalty, simultaneous
  continuum/infinite-volume limit, phasewise lattice realization, or positive
  canonical contact extension follows. If any proof-ledger input remains
  open, this chapter states a conditional theorem and identifies its exact
  dependencies. An input flagged by Trish is not automatically globally
  unproved: check Martin's later same-family closure suppliers before
  assigning its status.

  <section|Final implemented trace proof><label|final-implemented-trace-proof>

  Chapter17 now includes <verbatim|17-variable-windows.tex> and
  <verbatim|17-marked-trace-rates.tex>. The former uses actual unequal-stage
  covariance telescoping and pre-ratio column products, with post-ratio
  constants confined to delayed errors. The latter proves low-moment
  preservation through the pole-cancelled nonprincipal aliases of the smooth
  response, whose box filter has order j. Compare the actual response by its
  fine gauge correction, then compare source evaluations under the same
  conditional law: the normalized Gaussian fluctuation costs g/t=H^(-1). With
  source norm H^(theta_j+o(1)), theta_j\<rightarrow\>0, this yields the
  sufficient H^(-1/2) coefficient error. Do not replace that argument by a
  false implication from scaling dimension to field degree.

  Bounded sources: Martin <verbatim|kernel-transport-identities.tex:155\U193>,
  <verbatim|heading-history-handoff.tex:10\U90>,
  <verbatim|trace-row-jet-estimates.tex:161\U278>,
  <verbatim|trace-regular-atom.tex:274\U379>,
  <verbatim|trace-local-rate-selection.tex:173\U207>. The complete source
  matching and review scopes are in <verbatim|audit/ch17-marked-rates.md>,
  <verbatim|audit/ch17-score-independent-review.md> and
  <verbatim|audit/chapter-17-spatial-moments-review.md>. The final assembly
  uses this proved estimate; older conditional checkpoints in audits are
  superseded by their resolution sections.
</body>

<\initial>
  <\collection>
    <associate|html-title|Continuum and identification: chapter instructions
    \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|9|8>>
    <associate|auto-11|<tuple|10|9>>
    <associate|auto-12|<tuple|11|10>>
    <associate|auto-13|<tuple|12|10>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|3>>
    <associate|auto-5|<tuple|4.1|4>>
    <associate|auto-6|<tuple|5|4>>
    <associate|auto-7|<tuple|6|5>>
    <associate|auto-8|<tuple|7|6>>
    <associate|auto-9|<tuple|8|7>>
    <associate|c1-the-free-maxwell-comparison-theory-20-pages|<tuple|4|3>>
    <associate|c2-continuum-correlations-and-local-fields-20-pages|<tuple|5|4>>
    <associate|c3-reflection-spaces-ward-identities-and-euclidean-symmetry-34-pages|<tuple|6|5>>
    <associate|c4-decomposition-into-phases-18-pages|<tuple|7|6>>
    <associate|c5-relativistic-reconstruction-in-every-phase-28-pages|<tuple|8|7>>
    <associate|c6-the-trace-law-and-its-consequences-24-pages|<tuple|9|8>>
    <associate|c7-operator-products-and-extensions-across-diagonals-30-pages|<tuple|10|9>>
    <associate|c8-assembly-and-scope-6-pages|<tuple|11|10>>
    <associate|common-author-instructions|<tuple|3|2>>
    <associate|continuum-and-identification-chapter-instructions|<tuple|?|1>>
    <associate|current-placement-supplement|<tuple|4.1|4>>
    <associate|final-chapter-numbering|<tuple|1|1>>
    <associate|final-implemented-trace-proof|<tuple|12|10>>
    <associate|placement-and-page-budget|<tuple|2|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Final
      chapter numbering> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Placement
      and page budget> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Common
      author instructions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|C1.
      The free Maxwell comparison theory (20 pages)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Current placement supplement
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|C2.
      Continuum correlations and local fields (20 pages)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|C3.
      Reflection spaces, Ward identities and Euclidean symmetry (34 pages)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|C4.
      Decomposition into phases (18 pages)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|C5.
      Relativistic reconstruction in every phase (28 pages)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|C6.
      The trace law and its consequences (24 pages)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|C7.
      Operator products and extensions across diagonals (30 pages)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|C8.
      Assembly and scope (6 pages)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Final
      implemented trace proof> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>