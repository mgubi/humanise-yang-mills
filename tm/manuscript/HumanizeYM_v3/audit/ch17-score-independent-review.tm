<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Independent review: kernel score and marked trace
  rates><label|independent-review-kernel-score-and-marked-trace-rates>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Checked
    portions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Still requiring
    a precise supplier at this review checkpoint>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Stronger source
    supplier found and matched> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Final reread of
    integrated repair> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>
  </table-of-contents>

  Reviewed the initial and revised <verbatim|17-marked-trace-rates.tex>
  against the exact kernel in Chapter4, bounded pointwise-jet conditional
  estimate in Chapter6, and the marked graph/moment bounds in Chapter11.

  <section|Checked portions><label|checked-portions>

  <\itemize-minus>
    <item>q_gamma=Z_gamma^-1 exp(-gamma w), with u-independent normalization
    and smooth compact-group w, gives \|D^r q_gamma\|\<less\>=C_r(1+gamma)^r
    q_gamma. The original fine density and Borel frame eligibility tests are
    untouched by coarse differentiation.

    <item>The exact identity div_V(FY)=integral (divY k + D_Vk[Y]) f is
    valid. It is a density-valued source; dividing by F does not show
    locality. Original fine spectator coefficients can be retained as f_A(U),
    since the V integral of div_V(Yk) vanishes pointwise in U. All generated
    joint modes must remain in its subsequent expansion.

    <item>Absolute score bounds are suitable for failed-test contributions
    with retained exponential energy/Gaussian suppression; they do not
    preserve a small ordinary regular bound by themselves.

    <item>Author added the necessary ordinary normalized-integral
    cancellation: include determinants, Jacobians, and V-dependent
    normalizations before differentiation; use the already differentiated
    smooth regular action norm. One extra derivative reserve is required. The
    dependence region must be the full rooted connected component, including
    any connected distant failures.

    <item>Author added bounded coefficientwise covariant completion before
    truncation, rather than assuming uniform bounds for a growing-dimensional
    jet section. Controlled field jets through order four imply that
    cancelling the complete classical current identity leaves a
    fifth-field-order remainder with normalized cost beta
    t^5/t\<twosuperior\>=beta^-1/2 H\<threesuperior\>. This supplies the
    desired power gain for that particular remainder.
  </itemize-minus>

  <section|Still requiring a precise supplier at this review
  checkpoint><label|still-requiring-a-precise-supplier-at-this-review-checkpoint>

  Vanishing radial/engineering jets through degree five does not by itself
  increase field degree or supply another factor t. A bilinear term with
  sufficiently many spatial differences has zero such jet but is still
  O(t\<twosuperior\>) on arbitrary small-field links. Chapter11's screened
  polynomial-moment attenuation yields C_d/L+o_beta(1) for a general such
  remainder, not beta^-1/10. Consequently the low-field-order spatial
  remainder in the loop/Jacobian source cannot yet be assigned the displayed
  beta^-1/10 H^C bound solely by the quoted radial cancellation.

  Possible resolutions need to be proved on the same actual source: exact
  low-moment preservation under its linear transfer; a controlled longer
  attenuation window with coefficient drift bounded; or a direct estimate
  identifying these low-field spatial terms as already multiplied by a
  negative coupling power. The ordinary score identity and the classical
  fifth-order estimate alone do not establish this last step.

  This is a review checkpoint, not an assertion that the supplied manuscripts
  lack a repair. Parent and author were notified of the exact missing
  implication.

  Potential refinement discussed with author: a bilinear fine scalar
  remainder R of total momentum order\<gtr\>=4, transported exactly as
  I(K0R), retains zero degree\<less\>=3 momentum jet. Principal/principal
  aliases preserve order; mixed aliases have transverse order2, the other
  Ward factor order1, and K0 order2; two nonprincipal aliases have order4
  even when cancelling. Thus such a term could be retained in Sigma with
  rho=0 instead of falsely estimated as norm-small. The remaining
  source-match is essential: derivatives of the predictor/frame maps and
  stationary substitution, and internal Gaussian contractions in the kernel
  score, must first be separated from this exact bilinear transport.
  Averaging the original current anchor alone does not establish the required
  scalar-source decomposition.

  <section|Stronger source supplier found and
  matched><label|stronger-source-supplier-found-and-matched>

  The previous checkpoint's missing polynomial-response condition has a
  source-specific repair. <verbatim|heading-history-handoff.tex>10\U90 proves
  exact polynomial transport for degree\<less\>j. This is stronger than the
  O(p\<twosuperior\>) nonprincipal alias estimate previously used for the
  current defect.

  The exact matching is:

  <\itemize-minus>
    <item>Chapter5 <verbatim|actual-tangent> defines W_s to be its already
    constructed straight-average transport.

    <item>Chapter5 defines m_l=w_L(theta_l)^j.

    <item>Martin <verbatim|kernel-transport-identities.tex>155\U193 rewrites
    the nonprincipal one-form alias as A_l=B_l+diag(g_l)x_l sigma. Both B_l
    and g_l contain conjugate m_l, while the remaining factors are analytic
    at p=0 with nonzero denominators. Thus all derivatives below j of every
    nonprincipal alias vanish.

    <item><verbatim|heading-history-handoff.tex>10\U90 then proves (W_s
    p)(x)=sum_z A_0(z)p(x/L+z), so it is globally polynomial of no larger
    degree. It includes centered block carries and points outside the central
    block.

    <item>Actual W_a=W_s\<minus\>d_f E R W_s. Gauge invariance permits
    comparison of its exponential field to the gauge transform of exp(W_s v);
    the BCH discrepancy is O(poly(B)t\<twosuperior\>). In normalized field
    units this is O(poly(B)t), not a new uncontrolled alias error.

    <item><verbatim|trace-row-jet-estimates.tex>161\U278 gives screened
    multilinear jet comparison and the exponentially small crop tail. The
    polynomial-moment implication is already proved in Chapter11. These now
    match the actual response modulo the controlled gauge conversion.

    <item><verbatim|trace-regular-atom.tex>274\U379 performs actual principal
    integral \<rightarrow\> Gaussian reference \<rightarrow\> deterministic
    reference. <verbatim|trace-local-rate-selection.tex>173\U207 displays the
    complete response-plus-crop cost. Its dominant normalized fluctuation
    term is g/t=H^-1; other terms have a negative coupling power times fixed
    support polynomials. With B=O(log\<twosuperior\> beta), those polynomial
    factors are H^{o(1)}. Hence the relevant coefficient-probe error is
    H^-1+o(1), or H^-1+theta+o(1) for source norm H^theta, rather than the
    incorrectly asserted universal beta^-1/10 rate.
  </itemize-minus>

  For the trace source, the already cancelled classical fifth-field-order
  contribution has negative coupling power. The remaining normalized
  loop/Jacobian spatial remainder has the fixed-order derivative cost bounded
  by H^theta times logarithmic factors; choose theta\<less\>1/6. Its
  screened-probe error is then o(H^-1/5), which is sufficient for the trace
  functional stability rate. One additional source derivative is required for
  the Gaussian/deterministic Taylor comparison. Large-field contributions
  still use the score bound and retained exponential suppression.

  This route does not rely on proving that the full differentiated scalar
  source is an exact K0-averaged bilinear pullback. It applies the actual
  regular-insertion comparison with its stronger polynomial-preserving
  reference row. Author and parent received these exact source matches for
  integration; final approval is contingent on the fragment stating this
  corrected rate and its normalized source-cost premise explicitly.

  <section|Final reread of integrated repair><label|final-reread-of-integrated-repair>

  The revised <verbatim|ch17:spatial-moments> proposition now states and
  proves the actual H^-1/2 coefficient bound, with the alias formula,
  polynomial row identity, gauge correction, normalized conditional
  comparison, source bound N_k\<less\>=H^(theta_j+o(1)), and one extra
  derivative reserve explicit. The error formula retains this H^-1/2
  contribution separately from the genuinely negative-coupling high-field
  remainder. This resolves the checkpoint's unsupported radial-vanishing
  implication.

  The revised source proof also uses the exact pointwise-U zero integral with
  every incoming f_A, retaining all original fine spectator modes. Coarse
  smooth spectator truncation is a separate identity, and its distance at
  k(n) is specified as at least c exp(T_n), so the tail is negligible on the
  stated long comparison window. No quotient-by-density locality claim is
  used.

  No further obstruction was found in the revised kernel-score, ordinary
  cancellation, coefficient-smallness and original-law spectator join. This
  is not an independent audit of the separate regulated Ward identity.
</body>

<\initial>
  <\collection>
    <associate|html-title|Independent review: kernel score and marked trace
    rates \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|3>>
    <associate|checked-portions|<tuple|1|1>>
    <associate|final-reread-of-integrated-repair|<tuple|4|3>>
    <associate|independent-review-kernel-score-and-marked-trace-rates|<tuple|?|1>>
    <associate|still-requiring-a-precise-supplier-at-this-review-checkpoint|<tuple|2|2>>
    <associate|stronger-source-supplier-found-and-matched|<tuple|3|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Checked
      portions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Still
      requiring a precise supplier at this review checkpoint>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Stronger
      source supplier found and matched> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Final
      reread of integrated repair> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>