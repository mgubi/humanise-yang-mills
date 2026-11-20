<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Chapter 6 audit: large fields and one common Gaussian
  law><label|chapter-6-audit-large-fields-and-one-common-gaussian-law>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Proven/exact
    content in this draft> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Exact source
    map> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Exact remaining
    assertions, with quantifiers> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <with|par-left|1tab|1. Signed comparison: nonlinear branch obligation
    discharged <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>>

    <with|par-left|1tab|2. Actual local tree and matrix/forcing estimates
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|3. Same-law coordinate change and common majorant
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4. Same-mask local vanishing
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|5. Normalization and dependence needed downstream
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Literature
    check> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Independent
    review already completed> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Stationary
    Hessian implication checked after the branch proof>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>
  </table-of-contents>

  File: <verbatim|chapters/06-large-fields.tex>. Status: substantive partial
  chapter, with explicit conditional implications. It does <strong|not>
  certify Scott D1/D2 for the full chosen trajectory. No global files or
  compilation changed by this agent.

  <section|Proven/exact content in this draft><label|provenexact-content-in-this-draft>

  <\itemize-minus>
    <item>Exact six-term identity (<verbatim|ch06:global-energy>) with
    <strong|actual truncated transported adjoints>, not flat adjoints. It is
    a global identity; the local sum near a selection is treated separately.

    <item>Fine/mismatch/coarse energy bounds, including counting witnesses
    for dropped relaxed-test path rows. These assume the stated path
    row/column norms and compatible clip coefficients.

    <item><verbatim|ch06:energy>: complete scalar absorption proof from the
    now-verified quantitative signed comparison, in the order fixed
    stage/path data \<rightarrow\> L \<rightarrow\> W \<rightarrow\>
    reference-coupling threshold. The threshold is uniform in the torus and
    sector. No small fields are deleted.

    <item><verbatim|ch06:predictor-comparison>: first-power synchronization
    bound for minimizing frames, eligible axial frames, and both exact
    predictor branches of Chapter4. Supplies the pre-L macro comparison and
    period multiplicity. The rooted predictor derivative is explicitly the
    straight average plus a gradient. <verbatim|ch06:signed-input> is now a
    proposition proved for compatible aligned flat/path rows, rather than an
    additional nonlinear assumption.

    <item>Actual coercivity transfer: the precise local tree inequality and
    finite-patch derivative comparison imply the actual selected-row gap,
    with a proof by squared local sums and bounded stencil multiplicity. This
    makes clear which geometric input still needs matching.

    <item><verbatim|ch06:windows>: uniform local inverse-column construction
    from an actual matrix gap and exponential Schur bounds; proof covers
    every principal compression, finite-range covariance positivity, and
    fixed-order derivatives with fixed windows.

    <item><verbatim|ch06:gaussian-identity>: exact affine normalization for
    arbitrary positive reference covariance, arbitrary mean, beta scaling,
    and the retained linear/quadratic density corrections. Haar and scalar
    normalization are not discarded.

    <item><verbatim|ch06:protected-change>: exact physical-link-preserving
    change in a protected log chart; no claim that this formula alone
    constructs its global extension.

    <item><verbatim|ch06:joint-tails>: elementary Gaussian exponential Markov
    + witness-counting argument, with distinct addresses and correlated
    coordinates. This is not a new Gaussian tail theorem; the source-specific
    content is the address/witness multiplicity and application scale.

    <item><verbatim|ch06:common-majorant>: precise consequence of a
    common-product quadratic-exponential bound and same-mask local vanishing.
    Assumptions explicitly include polynomial moment control under the tilted
    Gaussian. Products of marginal norms are never used.
  </itemize-minus>

  <section|Exact source map><label|exact-source-map>

  Scott <verbatim|part2/B-section.tex>:

  <\itemize-minus>
    <item><verbatim|subsec:B-energy> lines760ff: six rows, selected tests,
    very-large tests, affected anchors.

    <item><verbatim|lem:B-D1>842ff: direct bounds; source proof Step2 gives
    the signed affected comparison and pre-L excess constant, Step3 common
    gauge and subtraction of the flat identities, Step4 scalar absorption.

    <item><verbatim|subsec:B-sector>964ff: actual retained affine rows and
    distinct sector/local inverse windows; <verbatim|eq:B-window> defines
    P,Gamma,m.

    <item><verbatim|lem:B-windows>1009ff: claimed gap/derivative/mean
    estimates; the chapter isolates actual-data inputs instead of inferring
    them from a flat Hessian.

    <item><verbatim|lem:B-D2>1157ff: local integration target. We have not
    imported its whole conclusion as a theorem.
  </itemize-minus>

  Martin <verbatim|existence/>:

  <\itemize-minus>
    <item><verbatim|seed-energy.tex>, especially189\U325: explicit scalar
    assembly from signed/local geometric inputs. It does not by itself prove
    every signed input.

    <item><verbatim|seed-hit-comparison.tex>: actual route multiplicity,
    constant part vs excess part; the excess constant is fixed before L,W.

    <item><verbatim|seed-unhit-comparison.tex>: subtract the four exact flat
    identities before bounding nonlinear errors; actual rooted predictor
    differs from straight average by an exact gradient.

    <item><verbatim|seed-tree-patch.tex>: <verbatim|eq:tree-shell>,
    <verbatim|eq:tree-common-gauge>; tree comparison and common gauge on the
    same field/tree/tags. The stated source trees have root path
    length\<leqslant\>4L; any extension to other trees requires tracking the
    route constant. The monograph requires the local inequality explicitly,
    rather than claiming it for arbitrary unverified trees.

    <item><verbatim|sector-gram.tex>: <verbatim|eq:sector-local-linear>66ff
    is the local tree inequality. Its main matrix is <strong|transported
    flat> and selected by anchor, so cannot substitute for the actual matrix.

    <item><verbatim|actual-global-row-prices.tex>:
    <verbatim|prop:actual-global-row-prices>~106ff; actual stencil-selected
    derivative matrix. Lines139\U248 give impulse/Schur bounds and a separate
    actual coercivity proof by fixed-patch continuity + local tree
    inequality. Lines260\U306 principal inverse columns; lines308ff affine
    sources. This is a serious candidate supplier, not absent mathematics:
    the remaining work is matching all of its construction data and
    hypotheses to the chapter's Scott pair and differentiated family.

    <item><verbatim|actual-local-compiler-handoff.tex>: matrix/support
    hypothesis handoff52ff, determinants112ff, interval uniformity225ff,
    <verbatim|lem:actual-neutral-warning>257ff. Its final statement is not
    permission to drop the underlying same-field response/mask assumptions.

    <item><verbatim|gaussian-moment-prices.tex>: fixed-degree moments and
    derivative-density ratios; the source key <verbatim|IsserlisProof> is a
    <strong|2025 proof>, not the original paper.

    <item><verbatim|gaussian-warnings.tex>1\U90: correlated Chernoff/crowding
    argument; later local mask vanishing is a separate assertion.

    <item><verbatim|warning-safety.tex>: selected affine rows and mean25ff,
    minimizing branches92ff, three comparison errors140ff, threshold
    choice200ff.

    <item><verbatim|actual-palette-warning.tex>: actual-response53ff,
    all-matched family149ff, local mask170ff,
    <verbatim|prop:actual-palette-condition>229ff, combined matrix/mask257ff.
    Proposition229 explicitly assumes disjoint-region branch geometry, local
    branch estimates, chart/interface bounds, and response bounds on the
    <strong|same> field/forest/tags/store. The combined section begins a
    comparison between auxiliary and actual means; they must not be
    identified.

    <item><verbatim|actual-harvested-owner-energy.tex>: same-path/clip energy
    and normalized integration handoff; its final envelope needs the
    preceding same-data bounds.
  </itemize-minus>

  <section|Exact remaining assertions, with
  quantifiers><label|exact-remaining-assertions-with-quantifiers>

  Fix the group and trace metric, one stage j, incoming/outgoing path
  families and coefficients, penalty b, predictor patches/branch rules, tree
  family, orientation normalization, log chart and cutoff profile. Fix L and
  W in the order prescribed by the energy argument. The following statements
  must hold for all sufficiently large reference coupling x,
  <strong|uniformly over> every coarse period n\<geqslant\>100(B(x)+1), every
  admissible actual coupling beta in [hatbeta_f/2,2hatbeta_f], every
  consistent selection/sector, every allowed tree and positive-mass tag,
  every allowed coarse configuration, and every frozen field Y. Cutoff tests,
  selected rows, windows and coordinate sets remain fixed when
  differentiating. Constants can depend on fixed j,L,W,k,q, but not the
  subsequent choices. The exceptions where a constant must be fixed before
  L,W are stated below.

  <subsection|1. Signed comparison: nonlinear branch obligation
  discharged><label|1-signed-comparison-nonlinear-branch-obligation-discharged>

  The actual route comparison is now proved as
  <verbatim|ch06:predictor-comparison>, matching Chapter4 exactly: normalized
  minimizing frames on the loop-test branch; eligible axial frames otherwise;
  weighted nearest-group-point predictor below its minimum-cost cutoff; an
  actual connector otherwise. The lower probability of a fallback connector
  never enters the chord estimate. The normalization is
  chi\<twosuperior\>/2=w, matching Martin's squared-chord cost.

  The proof gives <verbatim|r_c(p) \<less\>= sum_boundary(p)n_e + C_j L^-2
  sum_q m_y(q)r_f(q)>, with the excess C_j and <verbatim|sup_q sum_y
  m_y(q)\<less\>=K_j> fixed before L. It uses a uniform first-power frame
  synchronization lemma, not a square-root Jensen bound. The affected
  estimate follows by absolute row/column summation exactly as in
  <verbatim|seed-hit-comparison.tex>.

  The common gauge is now constructed with the actual tree slice. Rooted tree
  path lengths need only a fixed-L bound\<leqslant\>L\<#2074\>\<minus\>1
  here; this constant is NOT used in the pre-L excess estimate. The actual
  predictor derivative is obtained by differentiating Chapter4 connectors:
  <verbatim|Q a = A a + Hbar_y(a)-Hbar_(y+mu)(a)>, hence differs from the
  straight average by a coarse gradient. The gradient vanishes under curl.
  Fixed-patch smoothness follows from the nondegenerate minimizing-frame
  equation, and only second derivatives are needed for this Taylor estimate.

  <verbatim|ch06:signed-input> is now a proposition, conditional on the
  explicit <strong|remaining path-data input>: for the same fine/coarse
  stages and actual selected path coefficients, the uncut curvature row maps
  and flat square-completion maps satisfy <verbatim|Mf* Mf+Mn* Mn+N* N=I> and
  <verbatim|Mf*Xf_lin+Mn*Z_lin=Xc_lin>; their path coefficients are aligned
  under displacement/orientation grouping, absolutely exponentially summable
  with a common positive rate, and their transported row/column sums have the
  stated pre-L bounds <verbatim|(CL^-2,CL\<twosuperior\>)> for Phi and
  <verbatim|(C,C)> for the other maps. A stationary kernel with unrelated
  coefficients does not supply this. Production of these aligned path data
  remains Chapter5/7 work. Given them, the chapter now proves both signed
  inequalities and the large coarse-plaquette count; no extra nonlinear
  signed comparison is assumed.

  <subsection|2. Actual local tree and matrix/forcing
  estimates><label|2-actual-local-tree-and-matrixforcing-estimates>

  The geometric proof now supplies <verbatim|ch06:tree-control> by
  differentiation for the exact permitted trees and actual predictor
  derivative, and the finite-patch branch is smooth near identity. Verify
  that the selected row coordinates of the intended sector are precisely
  these zero-extended forest directions and same actual plaquette/predictor
  derivatives; then the common-gauge comparison and absorption in the chapter
  give the actual gap. The remaining work is this coordinate identification
  and the higher-order/source estimates below, not a missing deterministic
  branch comparison. In addition, for A=D<em|D, f=D>b_Y of
  <strong|stencil-selected actual retained affine rows>, need constants
  c,C,tau\<gtr\>0 such that

  <\itemize-minus>
    <item><verbatim|c I \<less\>= A \<less\>= C I>, and weighted absolute row
    AND column sums of A bounded by C at rate tau;

    <item>for any prescribed k,q, coarse derivative directions of
    size\<leqslant\>t_c(1+dist(o,e))^q obey <verbatim|\|D^r A_{ii'}\|
    \<less\>= C_k exp(-tau dist(i,i')) (1+dist(o,i))^(qr)> for
    0\<leqslant\>r\<leqslant\>k (or the equivalent ordered multilinear
    weighted norm);

    <item>the affine source/forcing satisfies <verbatim|\|D^r f_Y(i)\|
    \<less\>= C_k t_f (1+dist(o,i))^(qr)> on the same family.
  </itemize-minus>

  Fixed coordinate multiplicity per anchor includes L\<#2074\>
  residues/colors/orientations. A precision bound for an anchor-selected
  transported-flat matrix is insufficient. The actual source can involve
  frozen coordinates: 'arbitrary Y' is only meaningful on the sector
  constraints supporting those affine rows, and must retain those
  constraints.

  The chapter derives the inverse/window bounds and <verbatim|D^r m=O(t_f
  weight)>, <verbatim|D^r[g^-1(Am+f)]=O(exp(-cB)weight)> from these inputs.
  Principal inverse and Gaussian marginal inverse are distinguished.

  <subsection|3. Same-law coordinate change and common
  majorant><label|3-same-law-coordinate-change-and-common-majorant>

  For every finite union I of factor dependence regions, construct a smooth
  invertible extension of <verbatim|ch06:protected-change> agreeing with it
  on the nested protected chart. Prove all required ordered derivatives of
  its Jacobian, the marginal covariance Gamma_I, affine shift, Haar
  densities, tags and smooth factors are bounded under the <strong|one> law
  <verbatim|dY dgamma_{Gamma(Y)}>. The product's fixed-order derivative must
  have <verbatim|ch06:majorant-form>, with

  <verbatim|\|\|Gamma^1/2 K Gamma^1/2\|\| \<less\>=1/8> and
  <verbatim|tr(Gamma^1/2 K Gamma^1/2)+\|Gamma^1/2 eta\|\<twosuperior\>
  \<less\>= C sum lambda_i>,

  where K and eta are the sums for the whole product, not individual
  unrelated local estimates. Polynomial moments under the corresponding
  doubled-exponent tilted Gaussian must be controlled by a fixed polynomial
  in (1+s), with declared coupling factor. For a power beta^-tau per address
  one may use polynomial/subpower coupling factors; stronger requested
  large-field norms need their exact advertised functions verified, not
  inferred from a power estimate.

  <subsection|4. Same-mask local vanishing><label|4-same-mask-local-vanishing>

  Each distinct actual cutoff remainder/address w in that product must vanish
  whenever all relevant coordinates within2B of w satisfy
  <verbatim|\|z_i\|\<less\>xi t_f/(2g)>, with xi\<gtr\>0 uniform over the
  same configurations/branches/Y/beta interval. Include fine-plaquette and
  predictor cutoffs, frame/predictor likelihoods, inventory/interface and
  chart factors. A small-field bound for an auxiliary centered background
  does not establish this for the actual mean m_Y without a comparison.
  Address and coordinate multiplicities per coarse anchor must be bounded and
  include all tag types. This is the exact missing input to apply the proved
  joint-tail lemma.

  <subsection|5. Normalization and dependence needed
  downstream><label|5-normalization-and-dependence-needed-downstream>

  Keep <verbatim|(2 pi g\<twosuperior\>)^(n/2) det(Gamma)^(1/2) exp(-beta
  Q_Y(m))>, all chart indicators/Haar Jacobians, and both residual exponents.
  A claimed per-test suppression must exhibit the assignment of its
  logarithmic normalization losses to tests; an extensive vacuum scalar
  cannot be discarded or silently absorbed.

  An activity's exclusion support controls the cover sum only. All
  statistical factorization and connected graphs must use full dependence
  regions. Conditional Gaussian factorization requires cross covariance zero;
  after Haar mixing it additionally requires the relevant frozen
  variables/law to factor. Neither fact follows from disjoint exclusion
  supports.

  <section|Literature check><label|literature-check>

  <\itemize-minus>
    <item>Original Gaussian moments: Leon Isserlis, <em|On a formula for the
    product-moment coefficient of any order of a normal frequency
    distribution in any number of variables>,
    Biometrika12(1\U2),134\U139(1918), DOI10.1093/biomet/12.1-2.134. Primary
    OUP metadata verified at <hlink|https://academic.oup.com/biomet/article-abstract/12/1-2/134/193428|https://academic.oup.com/biomet/article-abstract/12/1-2/134/193428>
    . Chapter cites key <verbatim|Isserlis1918>; parent added bibliography
    entry. Formula is cited, not reproved. A search result purporting to be
    an original-paper mirror at University of Cincinnati was actually a
    lecture-note compilation; it was not relied upon as the original.

    <item>Window decay uses the weighted-conjugation argument already exposed
    in Chapter5. Historically this is the Combes\UThomas method; no
    unsupported citation is used as a theorem about these exact selected
    matrices. Standard inverse differentiation, logdet differentiation and
    elementary finite Gaussian completion are not presented as original
    results.

    <item>No original literature located for the exact six-term nonlinear
    row/mask bookkeeping. Its retained short proofs and hypotheses are
    source-specific; no novelty claim made.
  </itemize-minus>

  <section|Independent review already completed><label|independent-review-already-completed>

  <verbatim|chapter-05-independent-review.md> records the
  Schur/Fourier/zero-mode review. UV agent confirmed the two requested
  corrections were made: beta-rescaled fluctuation variables/covariance and
  bounded total coordinate multiplicity. Chessboard original-source match was
  completed in <verbatim|chapters-01-02.md> and
  <verbatim|foundations-literature.md> using FILS Theorem4.1; no power-of-two
  cell-count restriction remains.

  <section|Stationary Hessian implication checked after the branch
  proof><label|stationary-hessian-implication-checked-after-the-branch-proof>

  <verbatim|path-attachment-producer.tex>130\U235 uses the identical
  tree/macro/predictor comparison. Its squared sum gives
  <verbatim|\|\|v\|\|\<twosuperior\> \<less\>= C_L(\|\|d_f
  v\|\|\<twosuperior\>+\|\|Q v\|\|\<twosuperior\>)> in physical counting
  coordinates. Together with an actual fine-action Hessian floor a\<gtr\>0
  and penalty b\<gtr\>0 this supplies a period-uniform vertical Hessian gap.
  For Chapter5 one must identify <verbatim|e(0,v)> (the forest-lift
  derivative) with the zero-extended forest direction and use the same
  predictor Q. The statement does not prove a period-uniform analytic radius
  or all higher derivative row/column bounds merely from finite-volume IFT.
  Parent notified; relocation of the deterministic tree argument earlier in
  the final exposition is an integration decision.
</body>

<\initial>
  <\collection>
    <associate|html-title|Chapter 6 audit: large fields and one common
    Gaussian law \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-signed-comparison-nonlinear-branch-obligation-discharged|<tuple|3.1|4>>
    <associate|2-actual-local-tree-and-matrixforcing-estimates|<tuple|3.2|4>>
    <associate|3-same-law-coordinate-change-and-common-majorant|<tuple|3.3|5>>
    <associate|4-same-mask-local-vanishing|<tuple|3.4|5>>
    <associate|5-normalization-and-dependence-needed-downstream|<tuple|3.5|5>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|5|6>>
    <associate|auto-11|<tuple|6|6>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|3>>
    <associate|auto-4|<tuple|3.1|4>>
    <associate|auto-5|<tuple|3.2|4>>
    <associate|auto-6|<tuple|3.3|5>>
    <associate|auto-7|<tuple|3.4|5>>
    <associate|auto-8|<tuple|3.5|5>>
    <associate|auto-9|<tuple|4|6>>
    <associate|chapter-6-audit-large-fields-and-one-common-gaussian-law|<tuple|?|1>>
    <associate|exact-remaining-assertions-with-quantifiers|<tuple|3|3>>
    <associate|exact-source-map|<tuple|2|2>>
    <associate|independent-review-already-completed|<tuple|5|6>>
    <associate|literature-check|<tuple|4|6>>
    <associate|provenexact-content-in-this-draft|<tuple|1|1>>
    <associate|stationary-hessian-implication-checked-after-the-branch-proof|<tuple|6|6>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Proven/exact
      content in this draft> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Exact
      source map> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Exact
      remaining assertions, with quantifiers>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1. Signed comparison: nonlinear branch
      obligation discharged <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|2. Actual local tree and matrix/forcing
      estimates <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|3. Same-law coordinate change and common
      majorant <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4. Same-mask local vanishing
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|5. Normalization and dependence needed
      downstream <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Literature
      check> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Independent
      review already completed> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Stationary
      Hessian implication checked after the branch proof>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>