<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Independent review: coordinate spectral and angular-flux
  argument><label|independent-review-coordinate-spectral-and-angular-flux-argument>

  Reviewed Chapter 14 coordinate measures, mixed-sign transfer, symmetric
  contact normalization, diagonal response chain and anisotropic flux against
  Martin <verbatim|physical-ward-packet-prices.tex>,
  <verbatim|physical-ward-stress-cone.tex>, and
  <verbatim|physical-ward-propagation.tex>. Also checked the new mixed
  replacement application to the annulus.

  <section|Verified><label|verified>

  <\itemize-minus>
    <item>Undamping is independent of placement; only finite-energy mass and
    sufficiently damped moments are used. Moment bounds follow from positive
    difference multipliers and further heat damping. Word offsets require the
    stated hyperplane restrictions, except in the separately handled
    line-time case.

    <item>The Lagrange annular correction reproduces the moments through
    order 2m\<minus\>1. Its rational response identity and low-energy lower
    bound have the correct signs and retain E=0.

    <item>The two-residual sign-transfer identity discards a nonnegative
    response with a minus sign. Corrections are majorized only as transverse
    profiles. The backward induction visits and removes all shrinking axes;
    its choice of next width, transverse moment, energy moment exponent and
    final subtraction order is consistent.

    <item>The product Taylor extension is integrable and preserves signed
    tensor symmetries. The contact constant q has the correct divergence
    sign. Reflection parity and the paired index patterns give
    within-pair/pair-exchange symmetry. After subtraction the divergence
    contact polynomial starts at degree3.

    <item>Conservation gives Q1=p_mu\<twosuperior\>Q0+D1 and
    Q2=p_mu\<twosuperior\>Q1+D2 with defect degrees4 and6. The normalized
    width identities give d0=A\<minus\>B,d1=A\<minus\>4B,d2=A\<minus\>16B up
    to the stated errors, hence 4d0=5d1\<minus\>d2. Corrected Laplace signs
    are +,\<minus\>,+.

    <item>Angular test fields equal the required rotation near the
    insertions; the two off-diagonal columns cancel exactly. The four final
    exponents are negative and agree with the source after the lambda^100
    prefactor. The diagonal low-energy region includes E=0, whose mass cannot
    be bounded using the vanishing E-weighted diagonal estimate.

    <item>Chapter 13 mixed replacement gives the annular rate
    rho^(1\<minus\>epsilon), with the same correction for every spectator and
    no phase input. Its power uses W=d+4 and D=d+1\<minus\>kappa exactly.
  </itemize-minus>

  <section|Repairs applied with parent authorization><label|repairs-applied-with-parent-authorization>

  <\enumerate>
    <item>Extended the residual <em|upper> moment estimate to all widths
    whose support lies inside the correction radius, including growing
    widths. Kept the low-energy <em|lower> bound in its narrower regime.
    Stated that the energy moment exponent is chosen before the subtraction
    order.

    <item>Proved positivity of the signed dyadic corrected profile by
    monotonicity of its positive rational kernel below the radius8 correction
    nodes. Positivity for a nonnegative original profile alone would not
    justify this signed difference. Included the resolvent-difference lower
    bound.

    <item>Constructed the line-axis temporal gap with c=sigma0*sigma0 and
    nonnegative Fourier transform, a fixed time cutoff covering offsets, its
    uniformly bounded correction, and the positive residual floor. Added the
    two-term sign-transfer/moment argument. Merely removing an interval from
    an arbitrary Fourier profile would not ensure positivity.

    <item>Restricted the ordinary mixed-sign stress bound to mu!=b. The
    diagonal component uses its separate weighted estimate, as the subsequent
    table already did.
  </enumerate>

  No further concrete error found in this packet. No global compilation
  performed; parent controls integration and rendering.
</body>

<\initial>
  <\collection>
    <associate|html-title|Independent review: coordinate spectral and
    angular-flux argument \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|independent-review-coordinate-spectral-and-angular-flux-argument|<tuple|?|1>>
    <associate|repairs-applied-with-parent-authorization|<tuple|2|1>>
    <associate|verified|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Verified>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Repairs
      applied with parent authorization> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>