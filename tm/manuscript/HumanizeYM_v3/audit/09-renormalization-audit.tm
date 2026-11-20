<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Chapter 9 audit: nonlinear renormalization><label|chapter-9-audit-nonlinear-renormalization>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Current
    integration status, 19 November> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Continuation:
    quantitative stationary remainder> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Literature
    before proof> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Section/source
    map and verification scope> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Checked
    identities and quantitative deductions>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <with|par-left|1tab|Gaussian normalization and supports
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|Degree gain <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|Low terms and auxiliary periods
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|Subtraction and path reset
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|Exact-cover regrouping
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|Scalar selection and continuity
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <with|par-left|1tab|Wilson start <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Truncation
    uniformity: corrected audit interpretation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Exact remaining
    analytical inputs, not global-gap claims>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Checks
    performed> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-15><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Independent
    review and corrections incorporated> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-16><vspace|0.5fn>
  </table-of-contents>

  <section|Current integration status, 19
  November><label|current-integration-status-19-november>

  The actual predictor/Hessian and transport estimates in Chapters4\U5,
  primitive common-law and extracted-energy bounds in Chapter6, and weighted
  determinant/classical matching in Chapter7 have now been expanded and
  independently reviewed. Chapter9 has the actual retained
  stationary-integral argument and inherited same-law comparison. The
  one-step theorem is now formulated with finite adjacent-pair input
  contracts, a positive represented density, and an actual-period embedding
  restriction. The preparatory ratio choice includes the incoming activity
  size; the joint product cites the concrete bounded-jet route. See
  final-integration-06-07-09.md and chapter-09-stationary-independent-review.md.
  Historical remaining-input lists below document the earlier draft, not
  current unresolved claims. The remaining multiscale task is fixed-input
  cutoff stability and actual marked propagation, being written in
  Chapters10\U11.

  <section|Continuation: quantitative stationary
  remainder><label|continuation-quantitative-stationary-remainder>

  The new included file <verbatim|09-stationary-remainder.tex> replaces the
  shorthand two-cumulant justification by the detailed route in Martin's
  <verbatim|truncated-stationary-log.tex>,
  <verbatim|stationary-exterior-receipt.tex>, and
  <verbatim|pure-action-small-field.tex> (all read in full). It retains the
  moving Hessian, the truncated mass at zero inverse-coupling parameter,
  parity, the exact interior normalization, exterior value bounds, relative
  derivatives of the positive full integral, and the two distinct
  classical/quantum Taylor cancellations.

  The auxiliary estimate now uses the larger logarithmic coordinate ball
  <verbatim|h=beta_hat^(-7/16)>, on which the sufficient terms have exponents
  <verbatim|-23/16>, <verbatim|-19/16>, and <verbatim|-21/16>. This proves
  the required <verbatim|-23/20> estimate with a <verbatim|3/80> reserve once
  the explicitly listed stationary and actual-sector inputs hold. It does not
  claim the stronger <verbatim|-3/2+o(1)> estimate stated in the earlier
  draft. The actual small-field chart and normalized directions fit in this
  larger ball because their losses are polynomial in the support radius and
  their size is <verbatim|beta_hat^(-1/2+o(1))>.

  For the standard method, checked Wong's original publisher record for
  <em|Asymptotic Approximations of Integrals>, SIAM2001, corrected reprint
  of1989, DOI10.1137/1.9780898719260, ChapterII (Laplace's method). It is
  cited for that method, not as a theorem supplying growing-dimension
  uniformity or the actual lattice cutoff. The specific uniform application
  is established in the text. The displayed exact truncated Gaussian
  normalization and parity were independently checked algebraically.

  The source's retained-region proof uses an actual empty-defect sector
  expansion and a same-normalization overhead comparison. These are not
  consequences of a general Gaussian majorant alone. The current text instead
  proves the needed retained-region cutoff directly for the folded auxiliary
  fields: their coordinate cycles retrace paths and hence have identity
  holonomy; pullback axial gauge gives small logarithms; the actual curvature
  transport has a pre-ratio fine-row norm C_j L^-2; its nonlinear error is
  polynomial(B) times t_c\<twosuperior\>. Choosing the ratio, then the
  coupling threshold, leaves a strict fine-cutoff margin. The stationary
  fluctuation ball and a microscopic coarse neighborhood fit in that margin.
  Foundations independently validated the geometric and transport steps; the
  full integrated lemma is undergoing independent review. This avoids
  assuming an empty-defect expansion to prove the improved remainder. The
  positive exterior energy and normalization accounting from Martin are
  retained.

  Files: ../chapters/09-renormalization.tex and
  renormalization-bibliography.bib. No global compilation performed. This is
  a substantive one-step chapter with an explicit conditional theorem, not an
  unconditional assertion that all analytical estimates of the supplied
  manuscripts have been independently verified.

  <section|Literature before proof><label|literature-before-proof>

  The standard connected expansion is cited through Chapter8 and its verified
  Kotecký\UPreiss/Ueltschi theorem, rather than reproved. Degree inflation
  and geometric tails are adaptations of that theorem with the stronger
  Chapter8 rooted estimate. The model-specific exact identities are checked
  directly against the supplied sources. Ward-identity local quadratic
  subtraction is the specialization of Chapter7's previously researched
  curvature argument. Wilson initialization uses the Wilson action already
  cited centrally.

  For historical attribution, verified Baªaban, Convergent renormalization
  expansions for lattice gauge theories, CMP119(1988)243\U285,
  DOI10.1007/BF01217741, against the author's Rutgers institutional record:
  <hlink|https://www.researchwithrutgers.org/en/publications/convergent-renormalization-expansions-for-lattice-gauge-theories/|https://www.researchwithrutgers.org/en/publications/convergent-renormalization-expansions-for-lattice-gauge-theories/>
  Its abstract describes preservation of complete effective-density forms,
  including large-field domains. Cited only as methodological origin, not as
  a ready-made theorem for this manuscript's masks/averaging map. Full proof
  was not audited.

  <section|Section/source map and verification
  scope><label|sectionsource-map-and-verification-scope>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Monograph
  section>>|<cell|<strong|Source material>>|<cell|<strong|What is established
  in this draft>>>|<row|<cell|ch09:integral>|<cell|Scott D68\U205, Martin
  gaussian-reassembly.tex13\U85,201\U307>|<cell|Exact change-of-measure
  scalar accounting, two distinct connectivity operations, dependency-support
  conditions for Gaussian/Haar/tag independence, exact-cover reconstruction
  conditional on actual sector chart hypotheses>>|<row|<cell|ch09:improvement>|<cell|Scott
  D206\U326,366\U425; Martin high-degree-cluster-prices.tex121\U241>|<cell|Degree
  inflation arithmetic, anchored inherited L^-5 times L^4 count,
  finite-difference localization, explicit same-integral remainder required
  for low terms>>|<row|<cell|ch09:preparatory>|<cell|Scott
  lem:D-preliminary432\U459>|<cell|Quantitative preparatory identity with
  distinct anchored regular/support-hit large-field norms, exact scalar sign
  and order of choices>>|<row|<cell|ch09:subtraction>|<cell|Scott D474\U526;
  Martin physical-reset-reorganization.tex47\U225>|<cell|Local constant-curl
  projection, Ward/color reduction, masked identity, norm conversion, scalar
  isotropy>>|<row|<cell|ch09:path-reset>|<cell|Martin
  physical-reset-reorganization.tex227\U409; Scott
  D528\U568>|<cell|Channel-by-channel replacement, cubic/quartic correction,
  exact global sign, distinct regular and logarithmic
  costs>>|<row|<cell|ch09:fusion>|<cell|Martin soft-log-fusion.tex25\U162;
  Scott D538\U560>|<cell|Weight-preserving finite-selection bijection with
  all inventory/extra tests, weighted connected bound and spare large-field
  exponential>>|<row|<cell|ch09:continuity>|<cell|Martin
  coupling-reset-selection.tex1\U155; physical-reset-reorganization.tex475\U621;
  Scott D642\U755>|<cell|Actual coupling/vacuum identification, positive
  separating field, no scalar-test replacement for full density identity,
  subsequence domination continuity>>|<row|<cell|ch09:wilson>|<cell|Scott
  D757\U828; Martin wilson-startup-construction.tex (candidate
  detail)>|<cell|Exact residual energy split, normalized fifth-order regular
  estimate, unique component cover and energy/counting
  bound>>|<row|<cell|ch09:step>|<cell|Scott lem:D2 at843; preceding exact
  assembly>|<cell|Explicit conditional RG implication, uniform error given
  one-loop input, restriction compatibility, no unsupported parameter
  analyticity>>>>>

  <section|Checked identities and quantitative
  deductions><label|checked-identities-and-quantitative-deductions>

  <subsection|Gaussian normalization and supports><label|gaussian-normalization-and-supports>

  The active/dummy coordinate multiplier is (2pi)^(-(D-n_act q)/2) g^(n_act
  q)c_H^(n_act) =(2pi)^(-D/2)m^(N_free) exp(-(N_free-n_act)log m), m=c_H(2pi
  g\<twosuperior\>)^(q/2). This is an exact scalar equality. The source's
  b=sqrt(2pi) has been eliminated to avoid collision with the monograph's
  block penalty b.

  The actual sector finite-range covariance is not asserted equal to the
  inverse of the affine precision. Its density correction remains among
  factors. Complete integration dependence regions include covariance-range
  halos, Haar variables and tag coordinates. Independence holds only for
  disjoint such regions. Exclusion supports Y used by exact covers are
  separate; their disjointness does not imply that all flag dependence is
  disjoint.

  First connectivity integrates elementary products whose dependence regions
  overlap. Second connectivity is the logarithmic cluster graph on the
  resulting polymer labels, allowing repetitions. Model-specific same-law
  estimates enter before both sums. No product of separate L1 estimates is
  used.

  <subsection|Degree gain><label|degree-gain>

  Each elementary factor has a majorant at most bfrak^-7/16 after a subpower
  loss. Inflating each by h=bfrak^3/8 leaves the smallness parameter
  bfrak^-1/16. A cluster with total elementary degree\<geqslant\>3 gains
  h^-3, while the inflated total rooted mass is P h bfrak^-7/16. Hence
  exponent -19/16, relaxed to -23/20 with reserve3/80. These are elementary
  degrees across polymer occurrences, not merely a count of cluster vertices.
  Checked with exact rational arithmetic.

  The inherited regular term's principal local weight begins at5 after gauge
  removal and zero affine Hessian. Summation over L^4 fine anchors leaves
  L^-1. This uses actual radial-gauge interpolation derivative estimates; the
  draft expressly conditions the full estimate on these, rather than deriving
  a theorem from engineering dimensions alone. For
  d\<threesuperior\>\<geqslant\>L, the replacement 1\<leqslant\>L^-5(1+d)^15
  is valid, so support tails can be controlled at the same rate.

  <subsection|Low terms and auxiliary periods><label|low-terms-and-auxiliary-periods>

  Fourth-difference weights are (-1)^i binom(4,i)/(16*24). Tested exact
  rational identities: applying these weights to (2i)^k gives0 for k\<less\>4
  and1 for k=4. Reflection localization requires the finite local formula and
  all relevant cubes to embed in the parent torus, and the ordinary local
  expressions to coincide on the reflected configurations. Indicators produce
  a separate correction vanishing on its small-field support.

  The actual low-factor analytic estimate is not obtained just by this
  finite-difference identity. The required bound is explicitly
  ch09:aux-input: P[bfrak^-3/2+bfrak t_m^5+bfrak^-1
  t_m+t_m\<threesuperior\>+exp(-cB)]. At fixed ratio and comparable
  neighboring reference couplings all power terms are bfrak^-3/2+o(1). The
  remaining one-/two-factor cumulants must be those of the same sector
  integral and same stationary graph used in classical/determinant matching.

  <subsection|Subtraction and path reset><label|subtraction-and-path-reset>

  The local split is h_Xf=f(1)+h_o Q_f-zeta_f+h_ZR_f, R_f=f-f(1)-Q_f,
  zeta_f=(1-h_Z)(f(1)+h_oQ_f-h_Xf). Checked separately on h_Z=1 and0. No mask
  derivatives.

  Color invariance gives Df(1)=0; the second Ward identity then annihilates
  local gradients without additional gauge-orbit second derivative. On
  nonwrapping supports zero-curl affine potentials are gradients of quadratic
  site fields, allowing constant-curl projection. Schur's lemma identifies
  the color bilinear form. Hypercubic symmetry kills orientation
  off-diagonals and makes diagonal sums equal Delta. Projection bounds give
  t\<twosuperior\>\|Delta\|\<leqslant\>C H_pre. This precedes any scalar
  reset.

  Channel identity: (alpha+Delta)L_d+h_Y Delta a_d(Q_d-P_d) =alpha h_Y
  a_dP_d+Delta a_dh_oQ_d+J_d, where J_d is the displayed
  complement-of-small-field discrepancy. At h_Y=1 it follows from L=aP; at
  h_Y=0 it is its definition. Subtracting high-degree atoms gives
  (alpha+Delta)K+F=alpha Q+Delta C+J. Substitution in the early density
  yields exp(+sum zeta+J), not its negative, and vacuum scalar tau-volume^-1
  sum f_i(1).

  Regular costs involve H_pre and \|alpha\|t\<threesuperior\>. Logarithmic
  costs may involve \|alpha\|t, because the clipped energy on a large-field
  field need only be linear in t. Both are accounted for in ch09:reset-cost.
  The reset error bound H_pre/t\<twosuperior\> tends to zero as
  beta_hat^-1/10/Mcut\<twosuperior\>.

  <subsection|Exact-cover regrouping><label|exact-cover-regrouping>

  A selected logarithmic correction is nonzero only if its exclusion support
  contains a large-field site. Exact coverage assigns that site to an old
  large-field inventory, so each connected component contains an old
  large-field label. Connected components and flattening are inverse,
  retaining the component inventory equality and conjunction of all old extra
  tests. This proof uses no Gaussian independence and no division by a
  possibly zero activity or gas.

  After keeping exp(-kappa) from one large-field label per component, the
  rooted bound sums remaining connected selections. The site norm is a
  containing-site norm, not an anchored norm. A strict attachment margin is
  retained for continuity.

  <subsection|Scalar selection and continuity><label|scalar-selection-and-continuity>

  The output arrays are fixed when the trial coupling d is varied. The two
  evaluations give an affine equation f(d)=(d-Delta)K(U_*). This identifies
  the scalar from the previously proved full-field identity; it does not
  claim two tests prove density equality. The alternating-link separating
  field uses an even period, has all plaquettes small, and has
  energy\<geqslant\>c volume t\<twosuperior\> by the positive direct
  coefficient and cubic/quartic smallness.

  Parameter changes hold physical coordinates fixed. Gaussian score
  derivatives act on the density, not on arbitrary measurable large-field
  functions. Weighted continuity after regrouping is established via a
  summably convergent subsequence of input differences and the strict
  attachment margin; no unproved common envelope on a whole neighborhood is
  assumed.

  <subsection|Wilson start><label|wilson-start>

  For a small plaquette the residual energy is h k+(1-h)(1-cdir)W-chi_rel k,
  with0\<leqslant\>k\<leqslant\>(1-cdir)W. It is nonnegative for every
  allowed h,chi_rel, including nearby flagged configurations. The algebraic
  energy split was checked numerically for all four h,chi_rel choices and
  representative W,k; the symbolic cancellation is displayed in the chapter.
  A relaxed test can fail even when that plaquette and its vertices are
  small, because its neighborhood is larger. The draft retains the resulting
  residual k-chi_rel k instead of setting it to zero.

  For a large plaquette the residual is W-clin t
  chord\<geqslant\>chord\<twosuperior\>/4. Component counting uses radius2B
  overlap inventories, no assumption that every possible exact cover is a
  connected-component cover: only this particular initialization's indicators
  force that unique nonzero selection.

  <section|Truncation uniformity: corrected audit
  interpretation><label|truncation-uniformity-corrected-audit-interpretation>

  An initial concern that Scott's compact-coupling truncation claimed too
  much has been withdrawn after reading D351. The selected low-order terms
  expressly contain no incoming activities; they depend only on the
  prescribed path, coupling and fixed labels. Hence weighted continuity on
  the compact coupling band does give a uniform truncation for all inputs
  with those frozen data. Terms depending on incoming activities were
  separated and estimated by inherited/marked-factor bounds. The chapter now
  states this stronger valid conclusion. Compactness along an arbitrary
  activity curve alone would give only a curve-specific truncation, but that
  is not the source's actual low-order construction. This audit does not
  claim a source gap here.

  <section|Exact remaining analytical inputs, not global-gap
  claims><label|exact-remaining-analytical-inputs-not-global-gap-claims>

  <\enumerate>
    <item>Chapter6 has now proved the signed branch comparison for aligned
    flat quadratic/path data (ch06:predictor-comparison, ch06:signed-input).
    The RG chapter therefore no longer lists that comparison as an extra
    unexplained assumption.

    <item>The chosen sector precision/local inverse and protected variable
    changes must satisfy ch06:majorant-form/ch06:quadratic-control jointly
    for the complete factor collection, with the actual masks giving
    ch06:tail-event and all cutoff likelihood amplitudes counted. This is the
    exact missing premise for ch09:joint-input in the present draft.
    Candidate source: Scott lem:B-D2 and Martin gaussian-reassembly plus the
    actual protected-coordinate/annular bound suppliers named in Chapter6's
    audit.

    <item>The inherited principal and comparison estimates of Scott
    lem:D-inherited must be tied to the installed interpolation and the
    precise fine/coarse normalized derivative spaces. The explicit
    L^-5/support-tail calculation is included; actual nonlinear
    reconstruction differences remain an input.

    <item>The one- and two-factor auxiliary remainder ch09:aux-input must
    follow from the actual stationary action, Haar/determinant, and common
    Gaussian law with all flat/classical/quadratic subtractions. Scott
    D401\U425 asserts it and gives the cumulant mechanism. Chapter7's
    conditional trace comparison and integrand estimates, and the
    common-sector inputs of Chapter6, remain to be checked on that same data.

    <item>Chapter7's one-loop slope and inherited loop weighted bound remain
    conditional on their explicit actual-kernel inputs. No replacement by a
    formal continuum coefficient has been made here.

    <item>A fixed low-order truncation can be chosen on the full coupling
    band for the prescribed path/labels, and the constructed representations
    retain restriction compatibility. Uniform all-order parameter analyticity
    is not established by continuity; Chapter10 must supply its actual
    analytic coefficient estimates separately.
  </enumerate>

  These are current exposition/verification boundaries. Martin supplies
  numerous candidate detailed constructions; none of the above is asserted to
  be a global logical gap across all manuscripts merely because the present
  chapter has not yet matched them.

  <section|Checks performed><label|checks-performed>

  All chapter reference labels in09 resolve against current chapter sources.
  Fractional degree gains, fourth-difference normalization and Wilson
  small-plaquette algebra checked by a small pure-Python calculation. No
  additional dependencies installed and no global LaTeX build run. Parent
  integrates and compiles.

  <section|Independent review and corrections
  incorporated><label|independent-review-and-corrections-incorporated>

  The continuum agent's independent review is saved in
  ch09-independent-review.md. It confirmed the exact
  subtraction/channel/reset signs and the large-field regrouping
  bijection/bound. Implemented its three requests:

  <\itemize-minus>
    <item>Added q_(m+1)\<geqslant\>q_m\<geqslant\>6 and
    varpi_(m+1)\<geqslant\>varpi_m\<geqslant\>2 at chapter start and in the
    final theorem's hypotheses. Chapter4's weaker general density definition
    alone is insufficient for the affine test bound and the fifth-weight
    inherited estimate.

    <item>Added exact G_x and L_x formulas ch09:localization, including the
    y-dependent reflected center x\<minus\>ytilde in L_x, and the explicit
    global translation reindexing. The pointwise identity is for the
    recentered sum, not G_x itself. The earlier compressed account could
    incorrectly suggest that an unshifted reflected sum had class-constant
    values on an arbitrary nonconstant field.

    <item>Specified0\<less\>c_dir\<leqslant\>1 for the finest row
    sqrt(1\<minus\>c_dir), and stated oddness of the curvature coordinate
    map/inverse and evenness of Wilson energy to explain the absence of odd
    Taylor terms.
  </itemize-minus>

  Also updated remaining-input language after Chapter6 closed the signed
  predictor comparison for aligned quadratic/path data. The actual sector
  derivative/protected-score and mask hypotheses remain explicit.

  Fold correction: the localization map now explicitly uses Martin's
  coordinate folding pi_w(q)=min(qbar,2w-qbar) and recentering x-pi_w(y). An
  arbitrary integer representative y cannot replace the folded base point in
  that identity. The global translation reindexing remains exact for each
  fixed auxiliary site.
</body>

<\initial>
  <\collection>
    <associate|html-title|Chapter 9 audit: nonlinear renormalization \U
    Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|5.5|5>>
    <associate|auto-11|<tuple|5.6|5>>
    <associate|auto-12|<tuple|5.7|5>>
    <associate|auto-13|<tuple|6|6>>
    <associate|auto-14|<tuple|7|6>>
    <associate|auto-15|<tuple|8|7>>
    <associate|auto-16|<tuple|9|7>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|3>>
    <associate|auto-5|<tuple|5|4>>
    <associate|auto-6|<tuple|5.1|4>>
    <associate|auto-7|<tuple|5.2|4>>
    <associate|auto-8|<tuple|5.3|4>>
    <associate|auto-9|<tuple|5.4|4>>
    <associate|chapter-9-audit-nonlinear-renormalization|<tuple|?|1>>
    <associate|checked-identities-and-quantitative-deductions|<tuple|5|4>>
    <associate|checks-performed|<tuple|8|7>>
    <associate|continuation-quantitative-stationary-remainder|<tuple|2|1>>
    <associate|current-integration-status-19-november|<tuple|1|1>>
    <associate|degree-gain|<tuple|5.2|4>>
    <associate|exact-cover-regrouping|<tuple|5.5|5>>
    <associate|exact-remaining-analytical-inputs-not-global-gap-claims|<tuple|7|6>>
    <associate|gaussian-normalization-and-supports|<tuple|5.1|4>>
    <associate|independent-review-and-corrections-incorporated|<tuple|9|7>>
    <associate|literature-before-proof|<tuple|3|2>>
    <associate|low-terms-and-auxiliary-periods|<tuple|5.3|4>>
    <associate|scalar-selection-and-continuity|<tuple|5.6|5>>
    <associate|sectionsource-map-and-verification-scope|<tuple|4|3>>
    <associate|subtraction-and-path-reset|<tuple|5.4|4>>
    <associate|truncation-uniformity-corrected-audit-interpretation|<tuple|6|6>>
    <associate|wilson-start|<tuple|5.7|5>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Current
      integration status, 19 November> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Continuation:
      quantitative stationary remainder> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Literature
      before proof> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Section/source
      map and verification scope> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Checked
      identities and quantitative deductions>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Gaussian normalization and supports
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|Degree gain
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|Low terms and auxiliary periods
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|Subtraction and path reset
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|Exact-cover regrouping
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|Scalar selection and continuity
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|Wilson start
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Truncation
      uniformity: corrected audit interpretation>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Exact
      remaining analytical inputs, not global-gap claims>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Checks
      performed> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Independent
      review and corrections incorporated>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>