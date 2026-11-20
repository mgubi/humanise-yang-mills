<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Independent review of Chapter10><label|independent-review-of-chapter10>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|One editorial
    correction> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Real-parameter
    supplier checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Coefficient
    paths and the free Gaussian limit> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Common input,
    higher derivatives and zero arrays> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Coupled
    uniqueness checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Resolution>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>
  </table-of-contents>

  Reviewed the actual real-parameter supplier, fixed-readout coefficient
  comparison, common-input cutoff continuity, zero-terminal-array histories
  and coupled convergence. Source packets: Martin
  <verbatim|sector-analytic-prices.tex>, <verbatim|projected-parameter-prices.tex>,
  <verbatim|parameter-comparison-suppliers.tex>,
  <verbatim|compensated-variation.tex>, <verbatim|selected-history-limits.tex>,
  with the actual free-row convergence proved in Chapter5.

  <section|One editorial correction><label|one-editorial-correction>

  The later section <verbatim|ch10:identification> still says that moving
  cutoffs must have negligible boundary layers. The preceding actual
  comparison instead holds the physical fine fields and reference-threshold
  masks fixed. No moving-threshold boundary-layer assertion is needed for
  that route. Replace this stale sentence by the fixed physical-mask
  statement (and its common protected-coordinate Jacobian). It should not
  remain as a new unproved requirement after the completed theorem.

  <section|Real-parameter supplier checks><label|real-parameter-supplier-checks>

  The finite-test argument uses one common dictionary and one fixed low-order
  coefficient projection. Local algebraic extensions to larger affine
  activity lines need not represent positive densities; their small
  logarithmic and forced factors are still controlled by polynomial
  interpolation and the convergent local expansion. Positivity is separately
  retained for the actual histories.

  The coupling-band arithmetic is consistent: radius R=y^(1/256) produces
  relative coupling variation O(y^(-7/256)), smaller than delta=y^(-1/128). A
  lower reference coupling supplies 1\<less\>=a-6R\|c\|\<less\>=a+6R\|c\|\<less\>=1+delta.
  For either sign of the real energy q, choosing the node sign as stated
  makes the signed exponential dominate its coefficient norm; this does not
  replace the energy by its absolute value. The prefactor and projected
  Gaussian coordinate costs are local coordinate counts, paid by support
  reserve, not by the total volume.

  The primitive exponent after the R^2 cost is -55/128, leaving the claimed
  -2/5 reserve. The later -3/8 and -1/4 bounds leave room for fixed
  derivative and projection factors. The uniform bounded cover number of the
  local projection support is explicitly retained; subpolynomial growth of
  that cover number alone would not suffice in an exponential weight. The
  300-degree interpolation remainder has exponent -365/256, as stated. The
  order of choosing the small response allowance before the threshold is
  correct. The forced fusion estimate keeps one compulsory hard factor and
  its comparison with the output forced allowance is arithmetically
  consistent.

  The bounded map from the moment vectors in c0 yields the actual
  power-series bound, rather than inferring analyticity from continuity. Its
  short-line and large-distance cases give the quoted Lipschitz constants
  with slack. The scalar correction is distinguished from the vacuum scalar
  throughout.

  <section|Coefficient paths and the free Gaussian
  limit><label|coefficient-paths-and-the-free-gaussian-limit>

  The coefficient readouts are fixed linear operations on common
  dictionaries. Cubic dependence is affine with quadratic data fixed; quartic
  dependence is affine after the cubic data are fixed; loop dependence is
  affine with the preceding data fixed. The extrapolation has norm at most33
  inside the purchased radius64 domain and gives contraction1/16. Linear
  symmetry and moment constraints are preserved by that extrapolation.

  Proposition <verbatim|ch05:horizon-limit> supplies the actual nested
  quadratic rows and transports, including canonical positive roots with a
  strict direct-factor gap. It is stronger than a uniform finite-history
  bound and identifies cover coefficients at a strictly larger width. Thus
  the errors from preceding coefficient families tend to zero at every fixed
  level. Finite-depth truncation followed by increasing the truncation depth
  proves the sequential cubic/quartic/loop Cauchy statement. No quantitative
  rate or arbitrary new torus representative is substituted for this limit.

  <section|Common input, higher derivatives and zero
  arrays><label|common-input-higher-derivatives-and-zero-arrays>

  Martin's compensated map is globally bijective near the base coarse field
  and holds the physical fine field fixed on the protected support, including
  fine masks and activity values. Consequently one more derivative of the
  smooth density, chart and Jacobian can supply equicontinuity of output
  derivatives without differentiating an incoming C^q activity q+1 times.
  This must be applied on the same protected read set and chart; the chapter
  states those restrictions and chooses the kernel/score order before stage
  constants. Outside the protected support the product vanishes on the
  required neighborhood. Direct path and finite projection terms are smooth
  independently.

  At fixed scale and torus, the resulting finite-dimensional coarse domain
  admits a finite net in common protected charts. Uniform positive precision,
  converging stationary jets and polynomial Gaussian score domination justify
  convergence of the finite integrals and their derivative suprema. The fixed
  physical masks do not require differentiation or a measure-zero level-set
  claim. Infinite dictionaries are handled by reserved path/support tails,
  and by Cauchy value tails for input multiplicities; there is no assertion
  that finite arrays are dense in every derivative norm.

  An auxiliary zero-terminal-array history begins with a positive bare path
  exponential. Each genuine step preserves positivity. Replacing its returned
  coupling by the next prescribed band coupling multiplies the represented
  density by a positive path exponential while leaving its activity gas
  unchanged. The same path, predictor, reference masks, stationary branch and
  local budgets remain available. This establishes the relevant positive
  scripts; it does not assert positivity for every element of the completed
  norm ball. Common-input continuity applies to these scripts with exactly
  the same returned arrays and scalar projection.

  <section|Coupled uniqueness checks><label|coupled-uniqueness-checks>

  At fixed truncation depth, common-input cutoff continuity gives a Cauchy
  truncated history for prescribed convergent couplings. The activity
  contraction makes its difference from the full history exponentially small
  in depth. Diagonal compactness is needed only for scalar coupling
  coordinates, not for the activity norm balls. The prefix scalar identity is
  finite; the converging path corrections cancel. The cumulative allowance
  bound first makes the supremum discrepancy finite and then gives the strict
  inequalities D/32 and D/16, forcing D=0. The argument compares auxiliary
  scripts at the same finite cutoff before passing to limits, so it does not
  assume an undefined extension of the map to the completed space.

  No additional concrete scalar, support exponent, positivity or
  derivative-order error was found in this pass. The checks rely on the
  protected same-data and common-readout constructions explicitly retained in
  the chapter, not merely on continuity of evaluated densities.

  <section|Resolution><label|resolution>

  The stale moving-cutoff sentence in <verbatim|ch10:identification> has been
  replaced by the fixed physical-mask and common-Jacobian statement used in
  the actual proof. This review item is resolved.
</body>

<\initial>
  <\collection>
    <associate|html-title|Independent review of Chapter10 \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|2>>
    <associate|auto-5|<tuple|5|3>>
    <associate|auto-6|<tuple|6|3>>
    <associate|coefficient-paths-and-the-free-gaussian-limit|<tuple|3|2>>
    <associate|common-input-higher-derivatives-and-zero-arrays|<tuple|4|2>>
    <associate|coupled-uniqueness-checks|<tuple|5|3>>
    <associate|independent-review-of-chapter10|<tuple|?|1>>
    <associate|one-editorial-correction|<tuple|1|1>>
    <associate|real-parameter-supplier-checks|<tuple|2|1>>
    <associate|resolution|<tuple|6|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|One
      editorial correction> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Real-parameter
      supplier checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Coefficient
      paths and the free Gaussian limit> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Common
      input, higher derivatives and zero arrays>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Coupled
      uniqueness checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Resolution>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>