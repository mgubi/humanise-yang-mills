<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Chapter 5: Gaussian and stationary-background
  audit><label|chapter-5-gaussian-and-stationary-background-audit>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Literature
    checked before drafting> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Exact portions
    checked> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Source-specific
    uniform kernel closure: what the candidates really establish>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Stationary
    backgrounds: source matching> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Editorial and
    integration notes> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Independent
    review and revisions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Continuation:
    checks closed and exposition added> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <with|par-left|1tab|Exact accumulated noise and history closure
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|Transport and its regular continuation
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|Positive curvature defect
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|Actual stationary action supplier and exact remaining
    interface <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <with|par-left|1tab|Additional literature
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>>
  </table-of-contents>

  Draft: ../chapters/05-gaussian.tex. Status: expanded chapter with proved
  finite-history curvature closure, exact transport and positive-defect
  construction. Stationary theorem is proved for explicit incoming
  path-budget, local-coordinate and tree-comparison hypotheses. Upper-cutoff
  convergence remains outside the chapter. The initial audit notes below are
  retained as the verification trail; the continuation section records which
  pending checks were closed. Bibliography additions are in
  gaussian-bibliography.bib for central merge.

  <section|Literature checked before drafting><label|literature-checked-before-drafting>

  <\itemize-minus>
    <item>Baªaban, Feldman, Knörrer, Trubowitz, <em|The Algebra of Block Spin
    Renormalization Group Transformations>, arXiv:1609.00966 (2016): primary
    full text <hlink|https://arxiv.org/html/1609.00966v1|https://arxiv.org/html/1609.00966v1>
    inspected, especially Proposition 4 and subsequent covariance algebra.
    The draft uses its standard quadratic specialization; no original claim
    is made for Gaussian completion, conditioning, or Schur complements.

    <item>Baªaban, <em|Propagators and renormalization transformations for
    lattice gauge theories. I>, CMP95 (1984)17\U40, DOI10.1007/BF01215753:
    publisher metadata checked. Cited as historical/methodological reference,
    not as a verified theorem supplying this manuscript's exact block map.

    <item>Baªaban, <em|The variational problem and background fields in
    renormalization group method for lattice gauge theories>, CMP102
    (1985)277\U309, DOI10.1007/BF01229381: metadata confirmed; direct
    publisher full text unavailable. Cited for origin of method, not for a
    hypothesis-matched result.

    <item>Rudin, <em|Principles of Mathematical Analysis>, Theorem9.28,
    already centrally registered, supplies standard real implicit-function
    theorem. The draft's quantitative stationary proposition is a routine
    contraction formulation, not a new proof of the theorem.
  </itemize-minus>

  <section|Exact portions checked><label|exact-portions-checked>

  <\enumerate>
    <item>Lattice counting scalar product: forward differences have symbols
    q_mu=exp(ip_mu)-1; lambda=sum q_mu(-p)q_mu(p) is nonnegative on real
    momenta. On p\<neq\>0, wedge/contraction gives Hodge decomposition. On
    p=0 constant one-forms remain after gradients are removed. A tree/gauge
    quotient alone does not justify a massless Gaussian probability law.
    Draft treats Schur identities for semidefinite K separately from
    normalized Gaussian assertions.

    <item>Schur identity: A=K_f+b Q<em|Q, W=A^-1 bQ>,
    K_c=bI-b\<twosuperior\>QA^-1Q*. Then K_fW=Q<em|K_c and QW=I-b^-1K_c.
    Expanding the quadratic gives exact completion; determinant normalization
    has fine dimension and prescribed counting measure.
    K_c^-1=b^-1I+QK_f^-1Q> requires strictly positive K_f.

    <item>Alias coefficient: Fourier transform uses no factor, inverse uses
    volume^-1. Fine-to-coarse transform coefficient is L^-4 times connector
    multiplier L r_L; covariance divides by coarse volume and multiplies by
    fine volume, yielding L^-2. Checked independently in pure Python against
    the real-space rail operator on fine6^4/coarse2^4, L=3, covariance
    (lambda+0.7)^-1, every coarse Fourier mode. Maximum discrepancy 1.11e-16.
    An initial NumPy check could not run because NumPy is absent; no packages
    installed.

    <item>Gauge quotient: minimizing diagonal precision over scalar gradients
    gives equation(ch05:quotient). H0 equals inverse of c_mu c_nu sum
    \|q\|\<twosuperior\>/c. This is valid away from zero; it does not by
    itself prove any analytic extension.

    <item>Pole cancellation: with c=A/lambda_M+G, B=A+lambda_M G, A_mu=F r_M
    r_M(-), identity q_mu(p)q_mu(-p)F=M\<twosuperior\>q_mu(p/M)q_mu(-p/M)A_mu
    gives sum J_mu/A_mu=lambda_M/F. Subtracting sum J_mu lambda_M G_mu/(A_mu
    B_mu) yields sum J_mu/B_mu=lambda_M h, hence H0_mu nu=1/(hB_mu B_nu).
    Zero-free factors must be supplied independently. At zero, F=A=1 implies
    H0=I.

    <item>Curvature metric modification: H^-1=H0^-1+zeta(d2H0^-1)*(d2H0^-1).
    Multiplication by H0d1 yields d1 because d2d1=0, so Hd1=H0d1. This
    verifies exact-action preservation; it does not verify positive
    interscale defect.

    <item>Stationary proposition: closed y-ball radius r_y maps into radius
    r_y/2 under y-H_*^-1F; contraction\<leqslant\>1/4. Inverse at
    graph\<leqslant\>(4/3)J by Neumann estimate. Holomorphic hypotheses are
    explicit. Martin's real smooth assumptions alone only yield C^(N-1), not
    complex analyticity on a uniform neighborhood.
  </enumerate>

  <section|Source-specific uniform kernel closure: what the candidates really
  establish><label|source-specific-uniform-kernel-closure-what-the-candidates-really-establish>

  Scott/part2/B-section.tex lines182\U335, label lem:B2, gives the free
  covariance recursion, curvature metric, transfer identities, positive
  defect and convergence claims. Its proof is compressed.
  Martin/existence/free-kernel-components.tex supplies considerably more
  detail and must not be described as absent.

  The important source translation is:

  <\itemize-minus>
    <item>source S_v(p/M)S_v(-p/M) = draft F;

    <item>source ell_(v,mu) = draft A_mu;

    <item>source G_(v,mu) = draft G_mu;

    <item>source b_(v,mu) = draft B_mu;

    <item>source beta_v = draft h (not physical inverse coupling beta);

    <item>source d_M = draft lambda_M.
  </itemize-minus>

  Martin's lem:ex-lattice-train-component-bounds, lines241\U365, gives a
  candidate proof of uniformly bounded reciprocal factors:

  <\itemize-minus>
    <item>A stage may stay fixed or drop by one; block ratios\<geqslant\>3.
    Cumulative additional box filters have geometric mass ratios. The added
    exponent4 plus inherited8/3 is\<leqslant\>8, yielding bounds independent
    of the history length. This specific inequality is valid.

    <item>Alias filter bound is C Gamma_M(l)^(-j), with Gamma the product of
    one-dimensional alias weights. Squaring gives summability; sum Gamma^-2
    \<leqslant\>81 since sum over integers(1+\|n\|)^-2\<less\>3.

    <item>A single propagated noise contribution has an inverse-square total
    dilation factor. The asserted bookkeeping recurrence T_new=1+L^-2 T_old
    implies T\<leqslant\>2 for L\<geqslant\>3. Its numerical induction is
    valid. <strong|Still to check:> exact equality between the source
    noise-list definition and the successive covariance recursions, including
    changes of smoothing order and identification of each inherited filter.

    <item>Nonzero alias denominator has real lower bound c g(l)^2 and complex
    upper bound C g(l)^2. Uniform continuation after dividing out this
    numerical weight gives a reciprocal bound C g(l)^-2. <strong|Still to
    check:> the centered representative convention and strip domains across
    every alias, especially near the torus seam; the one-dimensional
    lem:ex-lattice-rail-alias-decay lines97\U157 and denominator definitions
    lines190\U240 are candidate suppliers.

    <item>B_mu=A_mu+lambda_M G_mu has a positive real lower bound because
    A_mu\<gtr\>0 and G_mu\<geqslant\>0. B_mu is uniformly bounded above.

    <item>The exact identity lambda_M h=sum J_mu/B_mu gives
    h\<geqslant\>low\<twosuperior\>/(C_B high\<twosuperior\>) on the
    punctured real cube, with h(0)=1. This implication is correct and removes
    a potential circularity: h's lower bound is derived from B's bounds
    before inverting h.

    <item>Holomorphic upper bounds and positive real floors permit successive
    shrinkage of a common strip, first for F,A, then B, then h. Uniform
    Cauchy neighborhoods around the full real momentum region must be
    retained. A pointwise compactness argument for each fixed history would
    not suffice.
  </itemize-minus>

  Later source results are separately required:

  <\itemize-minus>
    <item>lem:ex-lattice-port-denominator-weights lines367\U393 and
    lem:ex-lattice-tail-notch-weights398\U423 control two-scale transport
    denominators and sums.

    <item>lem:ex-lattice-primal-entrywise-bound427\U468 uses a principal
    denominator sa=m0 m(-0)sum b0+sh. Its stated real positivity follows from
    positive principal factors and h\<geqslant\>0, conditional on the
    preceding definitions. Translation to the stationary fine field and its
    differentiated spatial kernel is not checked by this audit.

    <item>prop:ex-lattice-wire-entrywise-bound473\U500 proves entrywise alias
    decay for a dual transfer conditional on its branch formulas elsewhere.
    Neither the branch formulas nor the positive three-form defect has been
    independently verified here.

    <item>Scott's cutoff convergence needs convergence of the actual
    history/filter sequence, not merely compactness of bounded analytic
    symbols.
  </itemize-minus>

  <section|Stationary backgrounds: source
  matching><label|stationary-backgrounds-source-matching>

  Scott/part2/B-section.tex lines333 onward defines tree coordinates and
  action; lem:B3 begins409. Its proof expressly allows the analytic
  implicit-function neighborhood to depend on period. Therefore finite-volume
  analyticity should not be substituted for a uniform analytic radius.

  Martin/existence/uniform-stationary-chart.tex:

  <\itemize-minus>
    <item>lines8\U71 states rooted local derivatives, a real positive Hessian
    gap, obtains uniform real inverse bounds using exponential locality;

    <item>lines73\U136 constructs a uniform real contraction ball and uniform
    first derivative;

    <item>lines138\U202 permits polynomial auxiliary-volume costs only
    afterwards.
  </itemize-minus>

  The real smooth argument matches the real version of the draft proposition.
  Its local derivative estimate is an explicit input, tied to a one-step
  geometry with coarse side\<gtr\>1, fine side\<geqslant\>100R_macro, odd
  block ratio\<geqslant\>3, stage\<geqslant\>4 and branch compatibility.
  These must be supplied for the actual action. It is not enough to cite the
  conditional argument.

  Martin/existence/weighted-stationary-inverses.tex lines13\U65 explicitly
  addresses nonholomorphic weights by holomorphic replacements at real
  anchors. The operator continuation mechanism is sound. The draft states it
  conditionally rather than silently differentiating weights involving Re(p).
  Lines67\U143 give scalar/gauge-completed inverse candidates; later quotient
  estimate starts line145. Full quotient-to-axial inverse matching remains to
  be checked before exporting the actual stationary theorem.

  <section|Editorial and integration notes><label|editorial-and-integration-notes>

  <\itemize-minus>
    <item>No claim about disjoint local sectors is used. In particular
    disjoint exclusion sets Y need not make every flag's read support
    disjoint.

    <item>Color covariance is scalar for the displayed auxiliary free family;
    the Lie algebra metric remains that of Chapter1.

    <item>M in the pole-cancellation section is total dilation and is
    explicitly distinguished from the previous averaging operator; final
    revision could rename the averaging operator if registry requires.

    <item>Full global compilation deliberately not run. Central integrator
    must merge audit/gaussian-bibliography.bib and include05-gaussian.tex.

    <item>No proof of Yang\UMills existence is claimed by this chapter.
    Pending source checks are limitations of this draft/audit, not
    declarations that the supplied manuscripts have global gaps.
  </itemize-minus>

  <section|Independent review and revisions><label|independent-review-and-revisions>

  The foundations agent independently checked Schur/conditioning, alias
  normalization, and pole cancellation. Added its requested explicit
  normalization a=sqrt(beta) A_f and v=sqrt(beta) V, and explicit bounded
  coordinate multiplicity in the stationary derivative example. Added Lebl,
  author-hosted Tasty Bits of Several Complex Variables, Theorem1.3.8
  (<hlink|https://www.jirka.org/scv/scv.pdf|https://www.jirka.org/scv/scv.pdf>),
  verified through primary author source before citation of analytic implicit
  regularity.

  <section|Continuation: checks closed and exposition
  added><label|continuation-checks-closed-and-exposition-added>

  <subsection|Exact accumulated noise and history
  closure><label|exact-accumulated-noise-and-history-closure>

  The previously pending noise-list/recurrence match is now checked directly,
  rather than accepted from the source terminology. For ratios L_1,...,L_n,
  M_h=product through h, the noise introduced at h propagates through suffix
  h+1,...,n with total ratio D=M_n/M_h. Its feed is D^-2 times the alias sum
  of the squared suffix directional filter. Centered box and rail composition
  identities show that successive alias sums equal this single total-ratio
  sum, after decomposing a residue modulo a product. The noise introduced at
  n contributes1. Every suffix has final smoothing order j_n, so its feed
  bound is C_j D^-2, and sum_h D^-2\<leqslant\>sum_r3^-2r=9/8. This closes
  the previously unverified identification without using the desired
  covariance conclusion as an assumption.

  Source matching: Martin/existence/kernel-transport-identities.tex
  lines58\U87 explicitly supplies the same residue decomposition and
  prefix-list match. Martin/existence/free-kernel-components.tex
  lines241\U365 supplies individual bounds. Draft ch05:history-prop now
  derives them from a concrete history indexed by ratios and orders.

  Checked all-history filter identity: f(theta)=w_(M_n)(theta)^(j_n) product
  over drops h of w_(M_h)(theta). The extra products use geometrically
  increasing M_h and therefore bounded sum M_h/M_n. This prevents exponential
  loss in the history length. Real principal factors are positive because the
  real enlarged cube can be chosen with \|p_mu\|\<less\>pi+eta\<less\>2pi.
  Nonzero alias denominators have scaled real lower bound c(1+max\|z\|)^2 and
  a complex perturbation bounded by C eta(1+max\|z\|)+C eta\<twosuperior\>,
  uniformly over M. This closes the centered alias/seam issue for the local
  analytic cube. Periodic gluing is done only for the full curvature symbol,
  by alias permutation on real overlaps and analytic continuation. Individual
  principal/nonprincipal decompositions need not be periodic.

  <subsection|Transport and its regular continuation><label|transport-and-its-regular-continuation>

  Source: Martin/existence/kernel-transport-identities.tex, entire file,
  especially eq:transport-A, eq:transport-T, eq:transport-principal-wire and
  eq:transport-installed-identities. Draft ch05:transports now defines the
  actual rescaled columns.

  Checked identities R_l A_l=F_1,l* R, delta_1* T_l=F_1,l* d_1*, T_l H
  d_1=H_l delta_1 A_l, sum F_1,l A_l=I-b^-1R directly with RD=I-cx* and
  DR=I-xpi. The complementary term y_l F_2,l*(I-Hd_1Dd_1*) is retained;
  deleting it would invalidate the off-exact curvature transport needed
  later.

  Principal two-form cancellation uses Z_mu=1-s u_mu/B_mu, so 1-Z_mu
  Z_nu=s(z_mu+z_nu-s z_mu z_nu). This produces the displayed regular formula
  for T_0. Principal one-form cancellation gives
  m_0^-1(u_mu/B_mu-alpha_nonprincipal/(s alpha)), with s
  alpha=\|m_0\|\<twosuperior\> sum B_0,mu+s alpha_nonprincipal. Its positive
  real lower bound precedes reciprocal continuation. The ratio
  y_0=\|m_0\|\<twosuperior\> rho/rho_0 is regular because
  rho=s\<twosuperior\>h_c and rho_0=s\<twosuperior\>h_f in the scaled
  convention.

  Nonprincipal transport bounds follow from a factor Gamma^-j from m_l and
  scaled nonzero denominators. A rescaled exterior symbol costs g(l); the
  covariance costs g(l)^-2, so the one-form and leading two-form factors
  retain at least Gamma^-j. The complementary two-form term has additional
  squared filter decay. The source's detailed bookkeeping in
  free-kernel-components.tex427\U500 agrees with these factors.

  Physical normalizations were rechecked: actual one-form and two-form alias
  sums have prefactors L^-1 and L^-2; counting adjoints introduce L^4 across
  a block. A fine derivative contributes L^-1 delta. This reproduces T*
  d1,f=d1,c Q, not an incorrectly normalized transpose.

  Source free-kernel-estimates.tex lines110\U222 supplies exactly the
  coefficient/difference step: order-r fine differences cost L^-r g(l)^r;
  summability holds for j-r\<geqslant\>2. Exponential phase tracks
  centered-residue carries. Draft explains the boundary shift instead of
  treating residue differences as differences within a fixed block.

  <subsection|Positive curvature defect><label|positive-curvature-defect>

  Source: Martin/existence/curvature-horizon-producer.tex, especially
  eq:curvature-double-lift, eq:curvature-charge-lift and
  eq:curvature-paid-factor. Read in full. The lifting mechanism is a
  quantitative version of Koszul exactness, verified against Stacks Tag062F
  before exposition; the draft gives the extra coefficient estimate needed
  here rather than presenting algebraic exactness as new.

  The one-sided lift is valid on exponentially summable infinite-lattice
  rows, not just a single finite period. Dividing each monomial difference by
  exp(ip_a)-1 costs its integer length and is bounded after reducing
  exponential width. Four coordinate eliminations preserve any original power
  of L. For a two-sided cycle E, choose d2<em|W=E, lift Wd1=d3>T, note T d0=0
  by injectivity at the top degree, then write T=X d1 and replace W by
  W-d3<em|X. This makes W a right cycle and yields E=d2>C d2. Symmetrization
  gives a self-adjoint C.

  The transport identities imply Z_0 H_c d1=0 exactly. The resulting two
  lifts give Z_0=(d2 B_c)* C (d2 B_c), S d2 B_c=d2,f B_f T. Bound C=O(1),
  S*S=O(L^-2) retains the L^4 fine-residue sum: fixed entries are L^-2 for T
  and L^-3 for its fine derivative. No dimension-independent operator bound
  is inferred by dropping that residue multiplicity.

  Amendment algebra then gives ch05:positive-defect. Choose
  zeta_c\<geqslant\>\|\|C\|\|+2 and L\<twosuperior\>\<geqslant\>zeta_f C1.
  This yields R0\<geqslant\>I and positive D_c*R0D_c. The coarse modification
  constants can be fixed for the two allowed incoming stages before the ratio
  floors. This is a genuine source-supported completion, not an assumption
  that the defect is positive.

  <subsection|Actual stationary action supplier and exact remaining
  interface><label|actual-stationary-action-supplier-and-exact-remaining-interface>

  Source selected-history-limits.tex169\U190 supplies the previously missing
  rooted derivative argument: differentiated path words select polynomially
  many positions, visiting all prescribed anchors; split the exponential path
  budget to pay distances, positions and root summation. Draft now states a
  concrete sufficient per-root path coefficient norm and proves uniform local
  complex derivative estimates for the uncut action on a smaller ball. Local
  coordinate maps must have fixed-radius analytic extensions. Smooth cutoffs
  are excluded from this analytic assertion.

  Source path-attachment-producer.tex130\U235 supplies the deterministic
  forest comparison and Hessian identification. The concrete remaining lemma
  to transfer into the nonlinear action specification is:

  For the installed predictor Q, every allowed tree-coordinate variation v on
  every sufficiently large admissible period obeys
  \|\|v\|\|\<twosuperior\>\<leqslant\>B_L\|\|d1v\|\|\<twosuperior\>+C_L\|\|Qv\|\|\<twosuperior\>,
  with B_L,C_L depending only on the fixed geometry (and with the local path
  descriptions equal on a common neighborhood). The source obtains B_L,C_L by
  an edge/root-path comparison, patch-offset cardinalities, and predictor
  residuals for crossing edges. Its preliminary planted comparison uses
  predictorCut,C0,D0 and branch compatibility; these must match Chapter4's
  selected predictor and Chapter2's permitted trees. The chapter retains this
  precise deterministic comparison as an incoming hypothesis, not a generic
  missing analyticity lemma.

  Once that comparison is supplied, the gap is min(epsilon,b)/(1+B_L+C_L).
  The path derivative bounds and weighted inverse argument then yield the
  uniform analytic stationary branch, tangent identification, and reduced
  Hessian. Uniformity is in period at fixed block ratio; it is not falsely
  upgraded to a ratio-independent Euclidean tree gap.

  Upper-cutoff convergence of a chosen infinite history remains separate.
  Uniform boundedness of all finite histories does not prove convergence.
  This chapter now says precisely that.

  <subsection|Additional literature><label|additional-literature>

  Before adding the transport/exterior exposition, checked original author
  arXiv record for Baªaban\UFeldman\UKnörrer\UTrubowitz, Bloch Theory for
  Periodic Block Spin Transformations, arXiv:1609.00964, and Stacks Project's
  original regular-sequence exactness statement
  <hlink|https://stacks.math.columbia.edu/tag/062F|https://stacks.math.columbia.edu/tag/062F>.
  Both entries added to audit/gaussian-bibliography.bib. No claim that these
  sources prove this manuscript's positive-defect constants.
</body>

<\initial>
  <\collection>
    <associate|html-title|Chapter 5: Gaussian and stationary-background audit
    \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|actual-stationary-action-supplier-and-exact-remaining-interface|<tuple|7.4|7>>
    <associate|additional-literature|<tuple|7.5|7>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|7.3|6>>
    <associate|auto-11|<tuple|7.4|7>>
    <associate|auto-12|<tuple|7.5|7>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|3>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|5|4>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|7.1|5>>
    <associate|auto-9|<tuple|7.2|6>>
    <associate|chapter-5-gaussian-and-stationary-background-audit|<tuple|?|1>>
    <associate|continuation-checks-closed-and-exposition-added|<tuple|7|5>>
    <associate|editorial-and-integration-notes|<tuple|5|4>>
    <associate|exact-accumulated-noise-and-history-closure|<tuple|7.1|5>>
    <associate|exact-portions-checked|<tuple|2|2>>
    <associate|independent-review-and-revisions|<tuple|6|5>>
    <associate|literature-checked-before-drafting|<tuple|1|1>>
    <associate|positive-curvature-defect|<tuple|7.3|6>>
    <associate|source-specific-uniform-kernel-closure-what-the-candidates-really-establish|<tuple|3|3>>
    <associate|stationary-backgrounds-source-matching|<tuple|4|4>>
    <associate|transport-and-its-regular-continuation|<tuple|7.2|6>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Literature
      checked before drafting> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Exact
      portions checked> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Source-specific
      uniform kernel closure: what the candidates really establish>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Stationary
      backgrounds: source matching> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Editorial
      and integration notes> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Independent
      review and revisions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Continuation:
      checks closed and exposition added>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Exact accumulated noise and history closure
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|Transport and its regular continuation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|Positive curvature defect
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|Actual stationary action supplier and exact
      remaining interface <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|Additional literature
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>
    </associate>
  </collection>
</auxiliary>