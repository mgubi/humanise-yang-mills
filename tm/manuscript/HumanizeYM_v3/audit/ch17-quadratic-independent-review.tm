<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Independent review of the quadratic current
  contraction><label|independent-review-of-the-quadratic-current-contraction>

  Reviewed <verbatim|17-current-contraction.tex> against Chapter5 actual
  transport identities and Chapter7 curl division, plus the exact
  Laurent-polynomial kernels in <verbatim|17-trace-transfer.tex>.

  The stated quadratic argument is internally consistent:

  <\enumerate>
    <item>The actual smooth stationary representative satisfies K_f W_a=Q*
    K_c. At a nonprincipal alias k_l(0)\<neq\>0, its transverse component is
    analytic and O(p\<twosuperior\>), since K_c=O(p\<twosuperior\>). The
    forest-gauge correction is killed by each Ward identity. Individual
    inverses need not be uniform in L for this exact order statement.

    <item>The anchor average K0 has factors M_a\<twosuperior\> G_a(s_a^L), so
    has a double zero whenever the total alias is nonprincipal. The
    principal/principal, mixed, and nonprincipal/nonprincipal cases give
    total momentum order at least four; the final case covers cancelling
    alias indices.

    <item>The independent two-leg Ward identities allow bounded curl division
    at a strict width reserve. The resulting coefficient has Taylor order two
    and factors two further differences. Difference allocations are (1,3),
    (2,2), or (3,1).

    <item>The actual W_a derivative bound L^(-1-r) gives L^-6 for the two
    differentiated legs. K0 has bounded absolute mass, so there is no extra
    volume L^4. The current normalization L^5 gives the homogeneous C_j/L
    estimate.

    <item>The leading continuum quadratic identity has the displayed sign and
    uses the linear Bianchi identity. Thus the initial order-four
    cancellation follows for the stated normalized leading action/current
    pair.
  </enumerate>

  Scope retained: this proves the exact pulled-back quadratic defect channel.
  It does not establish higher stationary jets, nor permit an additive
  action-matching error to replace equality of the quadratic pullback. The
  draft explicitly preserves these limitations. No correction requested.

  <section|Follow-up: full triangular contraction and current
  bounds><label|follow-up-full-triangular-contraction-and-current-bounds>

  Reviewed the subsequently added sections against Chapter7's actual
  completed inverse and Scott/part2/I-section.tex 150\U180, 329\U345.

  <\itemize-minus>
    <item>The forest-slice inverse \<Pi\>_F C^-1 \<Pi\>_F* is valid:
    \<Pi\>_F* extends a slice covector to annihilate gauge directions, the
    completed inverse solves the Hessian modulo gauge, and \<Pi\>_F selects
    its slice representative. The finite block-tree projections have bounded
    coarse range; their L-dependent norm does not shrink the common spatial
    Fourier strip.

    <item>The z2,z3 implicit derivative equations include the three D3S[z2,T]
    terms. Fixed-L bounds on these jets suffice. The radial gauge is applied
    to the complete invariant function: raw higher field jets are not
    incorrectly assumed to satisfy homogeneous Ward identities. Its nonlinear
    derivatives multiply strictly lower field-order inputs.

    <item>Diagonal orders (2,3,4) are C/L,C/L,C/L^3; every off-diagonal
    coefficient C_(j,L,r,s) is multiplied by (log \<beta\>_f)^s/(log
    \<beta\>_c)^r for s\<less\>r. Ratio first, entry second makes all row
    sums small without a claim of pre-ratio nonlinear jet bounds.

    <item>Requested explicit definitions of R_f,R_0 and the Y transfer.
    Author added them. The source plus sign is correct: R_f\|0=M+d0R and
    d_V\|0=\<minus\>d0, while R_0\|0=R, hence the corrected differential is
    exactly M. There is no rough root-gradient term in the diagonal Y
    channel.

    <item>Requested the output-link convolution estimate. Author added K0
    infinity norm O(L^-4), M row mass O(L), yielding O(L^-3) for the full
    local displacement norm, with exponentially weighted coefficient tails.
    The linear remainder's extra output-index difference moves onto M and
    uses its finite-difference row sum O(1); an extra field difference uses
    the smooth tangent. Both supply the claimed L^-1 gain.

    <item>The exact column sum L^-3 follows from the box-filter alias
    cancellation and row mass L. Together with the tangent curvature factor
    L^-2 and normalization L^5 it preserves the leading covariant curvature
    displacement. The stress weight-four quadratic jet is likewise preserved.
    Covariance fixes the associated commutator term.

    <item>Primitive old terms contract; equal-order J forcing is one-way and
    bounded before L, so a smaller fixed primitive weight absorbs it.
    Remaining fixed-L reference forcing is suppressed by logarithmic
    normalization. Matching through order four introduces no defect source
    because Y'(0)=0.
  </itemize-minus>

  With these explicit definitions and convolution details, no further
  correction was found in the new full current contraction argument. This
  review does not cover the later scalar regulated Ward identity or its
  marked finite-coefficient transfer; those are separate arguments.
</body>

<\initial>
  <\collection>
    <associate|html-title|Independent review of the quadratic current
    contraction \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|follow-up-full-triangular-contraction-and-current-bounds|<tuple|1|1>>
    <associate|independent-review-of-the-quadratic-current-contraction|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Follow-up:
      full triangular contraction and current bounds>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>