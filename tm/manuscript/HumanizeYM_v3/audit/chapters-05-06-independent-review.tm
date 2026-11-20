<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Independent review of Chapters
  5\U6><label|independent-review-of-chapters-56>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Actionable
    correction> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Chapter5
    checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <with|par-left|1tab|Finite histories and common analytic curvature metric
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <with|par-left|1tab|Transports and L factors
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>>

    <with|par-left|1tab|Two-sided Koszul lift
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|Positive defect and residue count
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Chapter6
    checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <with|par-left|1tab|Scalar energy implication
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|Actual Gaussian and windows
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|Correlated tails and common majorant
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Overall
    conclusion> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>
  </table-of-contents>

  Integration follow-up: the false continuity wording for the clip was
  corrected, and the explicit two-sided lift chain was added to Chapter 5
  before the integrated build of 19 November 2026. Chapter 6 was subsequently
  strengthened by the actual predictor comparison; see
  <verbatim|chapter-06.md> for that later verification.

  Reviewed snapshot: <verbatim|chapters/05-gaussian.tex> and
  <verbatim|chapters/06-large-fields.tex>, 2026-11-19. Scope: new
  finite-history, transport, curvature-defect, scalar energy, window,
  common-majorant and correlated-tail arguments. No author chapter was
  edited. This is an independent algebra/scaling review, not a verification
  of every upstream selected-data supplier.

  <section|Actionable correction><label|actionable-correction>

  <strong|Chapter6, line101:> \PThe clip is the continuous quadratic/linear
  function\Q is false for <verbatim|ch04:clip>. The two branches are c_dir
  r\<twosuperior\>/2 for r\<less\>=t and c_lin tr for r\<gtr\>t,
  with16c_lin\<less\>c_dir; the downward jump is explicitly documented in
  Chapter4. Delete \Pcontinuous\Q (or replace it by \Ppiecewise
  quadratic/linear\Q). The energy inequalities actually use the displayed
  discontinuous clip, so this correction does not require changing those
  inequalities. Keeping \Pcontinuous\Q would suggest a different action with
  different intermediate-range bounds.

  No other definite mathematical error was found in the reviewed arguments.

  <section|Chapter5 checks><label|chapter5-checks>

  <subsection|Finite histories and common analytic curvature
  metric><label|finite-histories-and-common-analytic-curvature-metric>

  <\itemize-minus>
    <item>Alias normalization L^-2 is consistent with counting scalar
    products: the averaging symbol contributes L, Fourier subsampling L^-4,
    and covariance volume ratio L^4.

    <item>Accumulated filter formula <verbatim|ch05:history-filter> has the
    correct prefix M_h at each smoothing-order drop. For two steps it reduces
    to w_(L1L2)^j2 times w_L1^(j0-j1) w_(L1L2)^(j1-j2), as required by direct
    composition.

    <item>Noise introduced at h is propagated only through suffix h+1,...,n,
    with covariance prefactor D^-2. Sum over suffixes is geometric because
    ratios\<gtr\>=3. The principal h=n term equals1.

    <item>Uniformity in final smoothing order rather than initial smoothing
    order is legitimate: extra box factors occur at geometrically increasing
    prefix sizes, and their principal logarithmic deviations sum like sum
    M_h/M_n, rather than multiplying a fixed lower bound an unbounded number
    of times.

    <item>The reciprocal-bound argument avoids circularity. First bound G and
    the positive real F,A_mu,B_mu; obtain reciprocals by complex
    perturbation; then deduce the real lower bound for h from
    sum\|q_mu\|\<twosuperior\>/B_mu divided by lambda_M, and finally its
    complex reciprocal. The pole cancellation is exact. Uniformity here is
    boundedness, not convergence of histories, which the chapter states
    correctly.
  </itemize-minus>

  <subsection|Transports and L factors><label|transports-and-l-factors>

  <\itemize-minus>
    <item>Quotient identities R=D^-1\<minus\>rho^-1D^-1xx<em|D^-1 and
    DR=I\<minus\>x pi imply the four identities
    <verbatim|ch05:transport-identities> when combined with
    F_(r+1,l)delta_r=d_r F_(r,l). In particular d1>(I\<minus\>C)=0 and
    (I\<minus\>C)H d1=0, so the complementary term is compatible with both
    intertwining equations.

    <item>Restoring counting adjoints: a coarse-to-fine field reconstructed
    with L^-1 sum_l A_l has full fine Fourier coefficient L\<threesuperior\>
    A_l times the coarse coefficient. The corresponding two-form map has
    coefficient L\<twosuperior\> T_l. Its adjoint therefore has coarse
    Fourier factor L^-2 sum_l T_l*, and d_f=delta/L gives L^-3 d_c sum_l
    F1,l, exactly d_c Q. The physical identities have no missing L power.

    <item>A fine difference multiplies an alias by
    q(theta_l)=O(L^-1(1+\|l\|)); with Gamma(l)^-j, summation remains uniform
    for derivative order r\<less\>=j\<minus\>2. Taking Fourier coefficients
    after the alias sum is important because individual columns need not be
    periodic. The text keeps the block-boundary phases.

    <item>The principal cancellation formulas use s=lambda_(M_c), for which
    D0=L^-2 c_f(p/L) has the same denominator as D. This accounts for the
    otherwise easy-to-miss L\<twosuperior\> factor.
  </itemize-minus>

  <subsection|Two-sided Koszul lift><label|two-sided-koszul-lift>

  The asserted two-sided factorization is valid, but its brief paragraph
  would benefit from the following four-line proof in the monograph
  (editorial recommendation, not a counterexample). I checked the
  construction against Martin <verbatim|existence/curvature-horizon-producer.tex:81\U101>:

  <\enumerate>
    <item>Left lift d2<em|W=E. Then V=W d1 satisfies d2>V=0, so lift d3*T=V.

    <item>Since d3<em|T d0=V d0=0 and the top Koszul differential d3> on
    four-forms has trivial analytic kernel, T d0=0. Equivalently its next
    left lift would take values in zero five-form space.

    <item>Right lift X d1=T and set W'=W\<minus\>d3<em|X. Then W'd1=0 and
    d2>W'=E.

    <item>Right lift C d2=W', then symmetrize C. This gives E=d2*C d2 with
    the same reduced-strip bounds.
  </enumerate>

  All adjoints mean coefficient transposition with momentum reversal; it
  preserves exponential norms. The proof acts on infinite-lattice
  coefficients and only then periodizes, avoiding finite-torus zero-mode
  obstructions.

  <subsection|Positive defect and residue
  count><label|positive-defect-and-residue-count>

  <\itemize-minus>
    <item>From TH_c d1,c=H_f d1,f W and T<em|d1,f=d1,c Q, the identity Z0 H_c
    d1,c=0 follows exactly using QW=I\<minus\>b^-1 d1,c>H_c d1,c.

    <item>The one-sided lift is applied separately to each fine residue. It
    does not sum over output residues. Thus fixed-residue T and B_fT bounds
    O(L^-2) give O(1) for their coarse Gram sum; one fine difference yields
    O(L^-3), and the Gram sum of lifted S is L^4 L^-6=O(L^-2).

    <item>Modified inverses are Btilde=B+zeta B d2<em|d2 B. The identity d2 B
    Btilde^-1=(I+zeta d2 B d2>)^-1d2 gives precisely the D_c factors in
    <verbatim|ch05:positive-defect>.

    <item>C0+zeta_c I\<minus\>zeta_f S*S\<gtr\>=I under zeta_c\<gtr\>=C0'+2
    and L\<twosuperior\>\<gtr\>=zeta_f C1. Uniform boundedness of D_c^-1
    transfers this to strict positivity on all three-forms. No projection
    onto a momentum-dependent subspace is used.

    <item>Source-specific transport-column bounds are compressed in the
    exposition. Their explicit principal cancellation plus the earlier alias
    estimates make a credible route, but this review did not independently
    rederive every entry of the nonprincipal transport bound from original
    manuscript component formulas.
  </itemize-minus>

  <section|Chapter6 checks><label|chapter6-checks>

  <subsection|Scalar energy implication><label|scalar-energy-implication>

  <\itemize-minus>
    <item>Summing the six defined terms cancels every cross term and every
    transported square exactly. Localizing before cancellation correctly
    leaves E_L,E_D as signed terms.

    <item>The coarse path term cancels in E_c because the relaxed test is an
    indicator: chi_rel\<twosuperior\>=chi_rel. This would fail if it were
    silently replaced by a smooth function between0 and1; the current
    Chapter4 definition is an indicator.

    <item>The intermediate coarse range contributes c_dir,c t_c r/4. Since
    t_f\<less\>=2t_c and a\<less\>=c_dir,c/64, this is at least4a
    t_f\<twosuperior\> per plaquette, enough for at most four assigned coarse
    sites.

    <item>Fine and mismatch energy reserves can support one a
    t_f\<twosuperior\> charge per test, the additional a t_f t_hi charge for
    D, and the signed linear excess after choosing L and then W large. The
    displayed bounds leave this slack.

    <item>Remaining D-losses have ratio O(B^4 t_f/t_hi) to the reserved
    energy, tending to0. Small coarse losses have ratio O(B^4
    t_c^4/t_f\<twosuperior\>), also tending to0. The final a/2 constant
    follows.

    <item>These conclusions remain conditional on the explicit local signed
    comparison. The chapter does not incorrectly derive the actual nonabelian
    path comparison from the flat Fourier algebra.
  </itemize-minus>

  <subsection|Actual Gaussian and windows><label|actual-gaussian-and-windows>

  <\itemize-minus>
    <item>A principal compression preserves the gap and weighted Schur bound,
    so the inverse column comparison is uniform. Its residual is zero inside
    the column window and exponentially small outside because the window
    contains a fixed multiple of B around the root. Row/column summation
    after reducing the exponent preserves the small factor.

    <item>Symmetrizing P makes Gamma positive for large B by closeness to
    A^-1, not by symmetry alone.

    <item>m=\<minus\>P<em|f has residual A m+f=A(A^-1\<minus\>P>)f, so the
    stated mean/forcing estimates have the correct orientation.

    <item>In the exact change u=m+g z, the scalar is (2pi
    g\<twosuperior\>)^(n/2)(det Gamma)^(1/2)exp(\<minus\>beta Q(m)); the
    linear residual is \<minus\>g^-1(A m+f); the quadratic residual is
    (Gamma^-1\<minus\>A)/2. Signs and powers agree.

    <item>The Gaussian used is conditional on frozen Haar variables. The
    derivative density uses the inverse of the marginal covariance block, not
    a block of the full precision. Those distinctions are correct.
  </itemize-minus>

  <subsection|Correlated tails and common
  majorant><label|correlated-tails-and-common-majorant>

  <\itemize-minus>
    <item>For a distinct witness set J, summing sign choices and using
    exponential Markov at parameter1 gives2^\|J\| exp((M/2\<minus\>T)\|J\|).
    Since r/Q\<less\>=\|J\|\<less\>=r, T\<gtr\>=M/2+HQ gives2^r
    exp(\<minus\>Hr). The N^r witness assignments produce(2N
    exp(\<minus\>H))^r. No independence is used or needed.

    <item>T proportional to exp((log log beta)^2) dominates Q H when Q is
    polynomial in B and H=O(log beta)+O(log N), at fixed L. Thus beta^(-2tau
    r) is available for distinct addresses. Repetitions are rightly counted
    once.

    <item>For the doubled majorant, the covariance tilt is2K. The
    bound\|\|Gamma^(1/2)K Gamma^(1/2)\|\|\<less\>=1/8 leaves norm\<less\>=1/4
    and bounds the inverse tilt. The determinant logarithm and linear shift
    cost O(tr Ktilde+\|Gamma^(1/2)eta\|\<twosuperior\>), hence exp(C sum
    lambda_i).

    <item>Cauchy\USchwarz then takes the square root of beta^(-2tau r),
    yielding exactly beta^(-tau r). Polynomial moments under the tilted laws
    are explicit assumptions; they are not inferred from separate factor
    estimates. The common quadratic bound applies to the sum of all
    corrections, which is essential.

    <item>Per-selected-test energy beta t_f\<twosuperior\> is comparable to
    (M_f^cut)\<twosuperior\>. Both stated loss classes are little-o of it:
    logarithmic polynomials are dominated by exp(2(log log beta)^2), while
    the cubic-action loss ratio is B^d t_f\<rightarrow\>0. No unexplained
    global volume normalization is absorbed.
  </itemize-minus>

  <section|Overall conclusion><label|overall-conclusion>

  The reviewed algebraic implications and scale factors are consistent.
  Correct the false continuity statement. For self-contained exposition,
  expand the two-sided lift by the short chain above. The source-specific
  sector gap, common coordinate change, mask-vanishing, and aggregate
  quadratic bound remain explicit hypotheses, as they should; this review
  does not close those model-specific interfaces.
</body>

<\initial>
  <\collection>
    <associate|html-title|Independent review of Chapters 5\U6 \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|actionable-correction|<tuple|1|1>>
    <associate|actual-gaussian-and-windows|<tuple|3.2|4>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|3.3|4>>
    <associate|auto-11|<tuple|4|5>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|2.1|1>>
    <associate|auto-4|<tuple|2.2|2>>
    <associate|auto-5|<tuple|2.3|2>>
    <associate|auto-6|<tuple|2.4|3>>
    <associate|auto-7|<tuple|3|3>>
    <associate|auto-8|<tuple|3.1|3>>
    <associate|auto-9|<tuple|3.2|4>>
    <associate|chapter5-checks|<tuple|2|1>>
    <associate|chapter6-checks|<tuple|3|3>>
    <associate|correlated-tails-and-common-majorant|<tuple|3.3|4>>
    <associate|finite-histories-and-common-analytic-curvature-metric|<tuple|2.1|1>>
    <associate|independent-review-of-chapters-56|<tuple|?|1>>
    <associate|overall-conclusion|<tuple|4|5>>
    <associate|positive-defect-and-residue-count|<tuple|2.4|3>>
    <associate|scalar-energy-implication|<tuple|3.1|3>>
    <associate|transports-and-l-factors|<tuple|2.2|2>>
    <associate|two-sided-koszul-lift|<tuple|2.3|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Actionable
      correction> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Chapter5
      checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Finite histories and common analytic
      curvature metric <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|Transports and L factors
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|Two-sided Koszul lift
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|Positive defect and residue count
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Chapter6
      checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Scalar energy implication
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|Actual Gaussian and windows
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|Correlated tails and common majorant
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Overall
      conclusion> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>