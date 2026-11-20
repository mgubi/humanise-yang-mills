<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Independent review of Chapter
  9><label|independent-review-of-chapter-9>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Actionable
    findings> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <with|par-left|1tab|1. State spatial-weight and derivative-order
    hypotheses <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2>>

    <with|par-left|1tab|2. Reflected localization needs the shifted
    evaluations <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <with|par-left|1tab|3. Specify the finest direct coefficient
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Exact algebra
    checked> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Fusion checks>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Scalar reset
    and continuity checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Wilson
    initialization checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Hidden forward
    assumptions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>
  </table-of-contents>

  Snapshot reviewed: <verbatim|chapters/09-renormalization.tex>, 2026-11-19,
  while author was doing terminology integration. No chapter edits were made.
  Scope: exact subtraction/replacement/fusion, scalar normalization,
  continuity, Wilson initialization, and hidden interface assumptions.

  <section|Actionable findings><label|actionable-findings>

  <subsection|1. State spatial-weight and derivative-order
  hypotheses><label|1-state-spatial-weight-and-derivative-order-hypotheses>

  At the local subtraction estimate (around line429), the assertion
  <verbatim|t\<twosuperior\>\|q_f(q,r)\|\<less\>=3a_f> uses the affine
  directions A_b(y)=xi_o(y)^a T. Chapter4's seminorm allows directions only
  of size t(1+dist)^varpi, and its stated range is arbitrary varpi\<gtr\>=0.
  A support-independent affine test bound requires at least varpi\<gtr\>=1.
  With varpi\<less\>1 it incurs a support-diameter factor; it cannot be
  bounded by the displayed fixed constant.

  Moreover the inherited L^-5 argument uses more than q\<gtr\>=2. Scott
  <verbatim|part2/D-section.tex>, inherited discussion around lines260\U279,
  explicitly requires incoming varpi\<gtr\>=outgoing varpi\<gtr\>=2 and
  q\<gtr\>=6. Add these chosen-stage conditions at Chapter9's start and
  one-step statement (or explicitly retain the appropriate support and
  derivative hypotheses). Since Chapter4 deliberately permits a general
  class, these requirements should not be left implicit in \Pchoose the stage
  constants.\Q

  <subsection|2. Reflected localization needs the shifted
  evaluations><label|2-reflected-localization-needs-the-shifted-evaluations>

  Around lines277\U305, the claim that reflected local summands have the same
  value within an interior class is not true for a generic nonconstant
  configuration reflected once about x. The source uses two different
  evaluation arrangements:

  <\itemize-minus>
    <item>the bounded auxiliary sum defining G_x evaluates on V_(i,x);

    <item>the pointwise discrepancy L_x evaluates its y summand on
    V_(i,x\<minus\>ytilde), so auxiliary site y corresponds to the same
    physical site x.
  </itemize-minus>

  Only the second arrangement has the class-constant property needed for the
  fourth finite difference. Summing over x and translation reindexing relates
  it to the first. See Scott <verbatim|eq:D-five-weights>,
  <verbatim|eq:D-mask-localization> and proof of
  <verbatim|lem:D-localization> (around lines350\U395).

  Add those definitions and the reindexing step. Alternatively identify the
  localization result as another explicit input. Merely saying \Pextend by
  reflection\Q does not prove the claimed local reconstruction. The binomial
  weights themselves are correct: sum(-1)^i binom(4,i)i^4=4!, with leading
  multiplicity2^4.

  <subsection|3. Specify the finest direct
  coefficient><label|3-specify-the-finest-direct-coefficient>

  Wilson initialization chooses sqrt(1\<minus\>c_dir), so requires
  0\<less\>c_dir\<less\>=1 (usually strictly below1). Chapter4 only
  states16c_lin\<less\>c_dir. The matched metric identity elsewhere forces
  this bound for a selected metric, but initialization should explicitly
  choose it rather than use an undefined real square root for the general
  Chapter4 parameter range.

  A useful accompanying sentence: F(e^X) is odd under
  X\<rightarrow\>\<minus\>X, its local inverse is odd, and W(u^-1)=W(u).
  Hence W(e^{psi(Y)}) is even, so its missing cubic Taylor term really is
  zero. This is a short justification, not an additional substantive
  assumption.

  <section|Exact algebra checked><label|exact-algebra-checked>

  <\itemize-minus>
    <item><verbatim|ch09:subtract-identity> is correct on both h_Z=1 and
    h_Z=0. Enlargement includes X and the clover neighborhood; on h_Z=1 the
    smaller masks are1. The regular remainder has the intended flat
    value/affine-Hessian normalization on nonwrapping supports.

    <item><verbatim|ch09:channel> is correct separately on the two health
    domains. On h_Y=1 it reduces to alpha aP+Delta aQ; on h_Y=0 its
    correction J supplies the difference exactly.

    <item>The signs in <verbatim|ch09:path-identity> and
    <verbatim|ch09:before-fusion> are consistent: replacing alpha Q+Delta C
    by (alpha+Delta)K+F\<minus\>J produces the positive exponent of J and
    zeta, and E=masked R+F. The cubic/quartic regular terms must have sign
    \<minus\>(alpha+Delta), as written.

    <item>No division by a possibly signed or zero exact-cover gas occurs.
  </itemize-minus>

  <section|Fusion checks><label|fusion-checks>

  <\itemize-minus>
    <item>In a nonzero logarithmic selection each log support contains a bad
    site. Exact coverage places that site in a preliminary inventory whose
    exclusion support intersects the log support. Thus every connected
    component has a large-field vertex.

    <item>Taking connected components and flattening are inverse operations
    when preliminary supports are disjoint, new supports are their unions
    with log supports, inventories are unions, and all inherited tests are
    retained. Extra flag-read overlap does not affect this combinatorial
    bijection.

    <item>The sum bound is compatible with the stated spare exponent. A
    support has at most h c(Z) sites with h=(2B+1)^4. The positive
    rooted-tree recursion uses attachment sum\<less\>=h gamma c(Z); if h
    gamma\<less\>=1, the input weight exp((sigma+1)c) absorbs it. Rooting
    through a fixed site gives a bound\<less\>=gamma,
    hence\<less\>=exp(gamma)\<minus\>1. Retaining exp(\<minus\>kappa) from
    one large-field label per component is valid.

    <item>The proposition's opening exact identity for countably many labels
    also uses absolute summability of the preliminary gas. This is supplied
    by the preceding early bounds; it would be helpful to include that
    hypothesis if the proposition is meant to stand alone. It is not a
    missing assumption in its present application.
  </itemize-minus>

  <section|Scalar reset and continuity checks><label|scalar-reset-and-continuity-checks>

  <\itemize-minus>
    <item>The reset beta=beta'+alpha+Delta and scalar
    tau\<minus\>\|Lambda\|^-1 sum f_i(1) follow directly. At the flat field
    all path terms, regular remainders and logarithmic discrepancies vanish,
    and the only cover is empty. Thus the intrinsic flat logarithm agrees.

    <item>Delta bound is H_pre/t\<twosuperior\> = O(beta_ref^-1/10
    (M_cut)^-2); its exponent is correct.

    <item>The intrinsic test has f(d)=(d\<minus\>Delta)K(U_<em|), with the
    displayed sign of log(H(1)/H(U_>)). It is valid because the full identity
    has already been proved and U_* is small-field. It cannot serve as a
    substitute for that identity; the text explicitly says so.

    <item>Gaussian Radon\UNikodym ratio and score signs are correct. Holding
    physical coordinates fixed avoids differentiating merely measurable link
    activities. Domination must include the actual means/matrices, which is
    acknowledged as common-law input.

    <item>Fixed-curve compactness gives uniform weighted truncation; it does
    not give a common truncation over arbitrary same-label families. The
    draft correctly restricts this statement.

    <item>The summable-subsequence argument for weighted output continuity is
    sound: continuity in weighted input norms gives a subsequence with
    summable discrepancies, the strict margin admits the envelope, and
    domination yields a convergent further subsequence of every allegedly bad
    sequence.

    <item>At fixed volume, the exact-cover telescoping bound follows by
    dropping eligibility restrictions and summing the positive product
    envelope. It does not require positivity of individual activities.
  </itemize-minus>

  <section|Wilson initialization checks><label|wilson-initialization-checks>

  Conditional on 0\<less\>c_dir\<less\>=1, the residual-energy formula is
  algebraically correct in all cases:

  <\itemize-minus>
    <item>chord\<gtr\>t: health and relaxed masks vanish and W\<minus\>c_lin
    t chord is the residual;

    <item>chord\<less\>=t with h_p=0: L plus residual equals W because the
    row term cancels;

    <item>chord\<less\>=t with h_p=1: T4+R=W\<minus\>\|F\|\<twosuperior\>/2,
    so again the displayed equality holds, even if the relaxed test fails due
    to a nearby bad plaquette.
  </itemize-minus>

  The residual is nonnegative using \|F\|\<less\>=chord and
  W=chord\<twosuperior\>/2. For chord\<gtr\>t, c_lin\<less\>=1/16 gives at
  least t\<twosuperior\>/4. The bound d_I\<gtr\>=c t\<twosuperior\>\|I\|
  follows from a bad plaquette per bad site and at most four vertices per
  plaquette. Components formed by overlapping radius2B neighborhoods give
  unique compatible exact cover; every positive row-test failure has a
  witness in that component. The connected-inventory count can be paid by
  beta t\<twosuperior\>~(M_cut)\<twosuperior\>. The regular exponent beta t5
  / epsilon_reg=beta_ref^-2/5(M_cut)^5 is correct.

  <section|Hidden forward assumptions><label|hidden-forward-assumptions>

  The chapter properly leaves these model-specific estimates conditional:
  common sector product bounds, inherited interpolation comparison, low-order
  same-integral remainder, selected determinant comparison, and the output
  coupling-band margin. None follows merely from the standard one-loop
  coefficient or from selecting a scale schedule. The
  preparation-to-localization step needs the correction in finding2 before it
  can be counted as proved rather than an extra input.

  <ym-title|Integration follow-up><label|integration-follow-up>

  The chapter author incorporated the three review corrections before the
  integrated build of 19 November 2026: monotone derivative/spatial-weight
  requirements, the recentered reflected-evaluation formulas and translation
  reindexing, and the top-scale bound <verbatim|0\<less\>c_dir\<less\>=1>.
  The review below records the earlier snapshot and should not be read as a
  list of still-open editorial fixes. The analytic assumptions recorded in
  the chapter remain open where explicitly stated.
</body>

<\initial>
  <\collection>
    <associate|html-title|Independent review of Chapter 9 \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-state-spatial-weight-and-derivative-order-hypotheses|<tuple|1.1|1>>
    <associate|2-reflected-localization-needs-the-shifted-evaluations|<tuple|1.2|1>>
    <associate|3-specify-the-finest-direct-coefficient|<tuple|1.3|2>>
    <associate|actionable-findings|<tuple|1|1>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-5|<tuple|2|2>>
    <associate|auto-6|<tuple|3|2>>
    <associate|auto-7|<tuple|4|3>>
    <associate|auto-8|<tuple|5|3>>
    <associate|auto-9|<tuple|6|4>>
    <associate|exact-algebra-checked|<tuple|2|2>>
    <associate|fusion-checks|<tuple|3|2>>
    <associate|hidden-forward-assumptions|<tuple|6|4>>
    <associate|independent-review-of-chapter-9|<tuple|?|1>>
    <associate|integration-follow-up|<tuple|6|4>>
    <associate|scalar-reset-and-continuity-checks|<tuple|4|3>>
    <associate|wilson-initialization-checks|<tuple|5|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Actionable
      findings> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1. State spatial-weight and
      derivative-order hypotheses <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|2. Reflected localization needs the shifted
      evaluations <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|3. Specify the finest direct coefficient
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Exact
      algebra checked> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Fusion
      checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Scalar
      reset and continuity checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Wilson
      initialization checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Hidden
      forward assumptions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>