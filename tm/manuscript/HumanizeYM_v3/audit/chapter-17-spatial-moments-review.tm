<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Independent review: spatial remainder
  coefficient><label|independent-review-spatial-remainder-coefficient>

  Reviewed the revised <verbatim|ch17:spatial-moments> proof, focusing on the
  previously unproved low-field-order/high-spatial-order remainder. This is a
  focused check of this supplier, not a new certification of the full
  monograph.

  <section|Corrections requested and incorporated><label|corrections-requested-and-incorporated>

  <\enumerate>
    <item>Vanishing deterministic moments are restricted to polarized
    polynomial-link tuples with summed engineering weight at most five.
    Vanishing on all polynomial fields below the smoothing order would be
    false. Chapter11's screened-moment statement gives exactly the restricted
    assertion, and the straight response preserves or lowers every polynomial
    degree.

    <item>The nonprincipal alias formula now defines its pole-cancelled
    factors. From F1_l^* x = bar(m_l) diag(\|r_L\|^2) x_l and pi=s^{-1}sigma,
    direct substitution gives the stated g_l expression. The denominators s
    alpha and B_a are regular and nonzero; D_l is regular at a nonprincipal
    alias. Both resulting summands contain bar(m_l), so their derivatives
    below smoothing order vanish. There is no silently discarded coarse pole.

    <item>The gauge comparison uses an invariant color-scalar,
    spacetime-vector source, rather than equivariance alone. Haar divergence
    of equivariant Y is invariant, as are action and loop variations. The
    actual tangent correction is a gradient; applying its gauge
    transformation leaves source evaluation invariant, with only the
    controlled nonlinear BCH error in exponential coordinates.

    <item>N_k explicitly bounds the already t^{-2}-normalized source and its
    normalized-link derivatives. The source starts at field order two after
    invariant projection and cancellation of the classical part, so no
    further inverse threshold factor is introduced.
  </enumerate>

  <section|Rate check><label|rate-check>

  With g=beta^{-1/2}, t=beta_hat^{-1/2} H and the actual coupling band, g/t
  \<less\>= C H^{-1}. Polynomial support/crop losses are H^{o(1)}. The
  stationary and BCH coordinate errors divided by t are polynomial(B)t, which
  is smaller than every fixed inverse power of H. Hence the
  one-extra-derivative estimate has size H^{-1+theta_j+o(1)}, sufficient for
  H^{-1/2}. This also suffices for the later H^{1/5} rho-error multiplier,
  while the coefficient norm allowance H^{1/6} remains below that multiplier.

  The Gaussian comparison should be read as subtracting the deterministic
  (zero) reading inside the same actual conditional expectation and
  estimating the evaluation difference with its joint polynomial moment
  bound. I requested this clarification: no O(t) total-variation comparison
  of nonlinear and Gaussian densities is needed or justified by the
  coordinate argument alone. In particular the density's possible beta t^3
  scale must not be confused with the source evaluation's g/t gain.

  No remaining concrete obstruction was identified in this restricted
  coefficient argument after the above corrections. The full
  zero-exterior-moment source and all its higher marked modes must still be
  retained in subsequent descent, as the text explicitly does; the projected
  coefficient by itself is not a zero-moment insertion.
</body>

<\initial>
  <\collection>
    <associate|html-title|Independent review: spatial remainder coefficient
    \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|corrections-requested-and-incorporated|<tuple|1|1>>
    <associate|independent-review-spatial-remainder-coefficient|<tuple|?|1>>
    <associate|rate-check|<tuple|2|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Corrections
      requested and incorporated> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Rate
      check> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>