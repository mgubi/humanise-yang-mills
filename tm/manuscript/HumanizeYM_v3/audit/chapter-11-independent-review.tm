<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Independent review of the Chapter11
  suppliers><label|independent-review-of-the-chapter11-suppliers>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Corrections
    sent to the chapter author> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Marked
    component and higher-mode checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Actual Gaussian
    comparison checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Replicated
    normalization checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>
  </table-of-contents>

  Reviewed marked-step, higher-modes, graph-estimates, tree-covariance,
  actual-reader and replicated sections against Martin
  <verbatim|actual-mixed-marked-compiler.tex>,
  <verbatim|heading-history-handoff.tex> (three-port history),
  <verbatim|regular-principal-producer.tex>,
  <verbatim|primary-calibration-producer.tex>,
  <verbatim|polynomial-moment-attenuation.tex>,
  <verbatim|principal-reference-attenuation.tex>,
  <verbatim|actual-reader-tree-covariance.tex>,
  <verbatim|actual-reader-local-gaussian-prices.tex> and the all-arity
  propagation packet.

  <section|Corrections sent to the chapter
  author><label|corrections-sent-to-the-chapter-author>

  <\enumerate>
    <item><strong|Exact full-remainder norm.> Define the graph remainder norm
    using the actual adjacent forced allowances: incoming forced mass is
    charged by kappa_f^-1, outgoing by kappa_c^-1, with kappa the square root
    of the corresponding forced allowance. Martin's three-port estimate is
    coefficient and remainder \<less\>= eta m/kappa_f for a forced insertion
    of unnormalized support mass m. Its input integral allowance remains 2m.
    The current statement about retaining half the suppression does not
    display this normalization, which is needed to match the graph
    contraction norm in Chapter12. This is an interface requiring an actual
    bound, not merely a notation change.

    <item><strong|Derivative and geometry margins.> State the regular
    attenuation prerequisites: coarse derivative order at least max(2,d+1),
    fine spatial weight at least d, fine kernel derivative level at least
    d+2, and coarse period at least 100(1+B_c), with anchored support and
    adjacent radius comparison. The actual three-port grade condition is d+3
    \<less\>= coarse kernel level. Primary extraction additionally uses one
    insertion derivative beyond each probe derivative, available from its
    fixed local section. This need not impose an extra derivative on
    arbitrary incoming equal-regularity activity arrays.

    <item><strong|Polynomial cancellation.> The short-support Taylor argument
    needs the screened polynomial moment cancellation obtained from vanishing
    radial/holonomy tests through the same fixed centered lift. Martin
    <verbatim|polynomial-moment-attenuation.tex> proves this via the filtered
    gauge/radial germ, polynomial surjection and partition chain rule.
    Specify this implication and its hypotheses, rather than treating
    vanishing radial tests as unrestricted Taylor vanishing. The
    large-support estimate also includes a polynomial-in-coupling factor
    multiplying exp(-B_c/2), which is harmless because B_c grows
    quadratically in log coupling; retain that fact.

    <item><strong|Continuity topology.> The graph continuity paragraph refers
    only to finite path parameters, whereas the supplied actual Gaussian rows
    converge as countable cover coefficient arrays. State continuity under
    weighted l1 convergence of those canonical coefficients at a strict width
    reserve, and under convergence of incoming activity arrays in their
    common norms. Finite truncation, uniform reserved tails, then dominated
    convergence give the intended route. This is the continuity notion
    required by the fixed-level ultraviolet argument.

    <item><strong|Name the curvature response.> In the tree covariance
    calculation J is the curvature response satisfying DW=JD', not
    automatically the raw two-form row T of Chapter5. Define, for example,
    J=H_(0,f)^-1 T H_(0,c) using the unmodified diagonal metrics. The
    modified actual metrics still define K,K' and agree with these on curls.
    The covariance identity itself is correct with this interpretation.
  </enumerate>

  <section|Marked component and higher-mode
  checks><label|marked-component-and-higher-mode-checks>

  The support conversion constants, 15^4 additive cost, W(B) shell cost and
  L^4 fine-residue multiplicity match the mixed compiler. A fixed marker root
  incurs no L^4 factor. The exact inventory condition is correctly retained
  componentwise, so a component with no unmarked correction has no incoming
  forced factor. Inflation payment for connected integrals uses a single
  actual sector law; no product of marginal probability bounds is used. The
  connected-set tree majorant and its site/marker incidences are correct
  under the displayed strict criterion.

  The principal cutoff split is exact in the squarefree algebra, with both
  pieces retaining the original mask. The stopping normalization retains full
  marked arrays. The higher-mode packing estimate Br \<less\>=64c_B is valid
  for separated ancestors and B\<gtr\>=8, including periodic geometry. Since
  B grows quadratically in log reference coupling, the displayed weight
  increase is paid by half a reserved support unit. For at least two marks,
  c_B\<gtr\>=B/32, giving exp(-B/64) from the remaining half. The separate
  coarse reserve condition after using sigma_f-4 is necessary and explicitly
  stated. The higher-mode incidence induction retains existing modes as whole
  factors and does not rebuild a product of singletons.

  <section|Actual Gaussian comparison checks><label|actual-gaussian-comparison-checks>

  The forest projection identity XA=P, curl identity DXA=D, and
  range-equation definition of P_f,P_c treat gauge and harmonic modes
  correctly. The calculation gives every covariance cross-entry and uses
  counting coordinates with no missing volume or signed-orientation factor.
  Its flat-row identification depends on the same absolutely summed path
  factorization; the text retains that condition.

  Current Chapter6 linear-comparison supplies the stated local covariance
  O(B^a t_f) and mean O(B^a t_f^2) estimates. Choosing physical radius
  R=x^-3/8 and g=beta^-1/2 gives R/g=x^(1/8+o(1)) and nonlinear error B^a
  R^2/g=x^(-1/4+o(1)). Fine-cutoff tails at t_f/g=M_cut are smaller than any
  power. Thus epsilon=x^-1/32 is available at fixed stage/degree after the
  threshold, with the prescribed local clearance and common frame. These are
  local read statements, not global independence statements. The normalized
  mixture and its scalar are common to all subsets.

  The polynomial Gaussian comparison uses only the coordinates in each
  monomial, so it introduces no ambient coordinate count. The union estimate
  for cutoff loss and Cauchy-Schwarz produce epsilon from epsilon^2 loss
  correctly; the reference pairing functional need not be positive.

  <section|Replicated normalization checks><label|replicated-normalization-checks>

  The all-mode coefficient norm includes both higher-mode units and one
  common scalar. On the small-link event the exact large-field gas equals
  one, and positivity permits restricting the full vacuum integral to it. The
  normalized chord places the group in an ambient unit sphere, so the stated
  conservative Haar packing bound is valid. There are four forward links per
  site. The scalar cancels between numerator and denominator; the coefficient
  weights divide once per mark. Taking the number-of-cells root yields
  (a_m/a_k)^4 times the per-site exponent and does not introduce another
  volume factor.

  No further concrete scalar, Gaussian covariance, or higher-support exponent
  error was found in these reviewed sections. The graph norm, derivative
  margins and continuity statements above must be completed before treating
  their Chapter12 supplier interface as unconditional.
</body>

<\initial>
  <\collection>
    <associate|html-title|Independent review of the Chapter11 suppliers \U
    Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|actual-gaussian-comparison-checks|<tuple|3|2>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|3>>
    <associate|corrections-sent-to-the-chapter-author|<tuple|1|1>>
    <associate|independent-review-of-the-chapter11-suppliers|<tuple|?|1>>
    <associate|marked-component-and-higher-mode-checks|<tuple|2|2>>
    <associate|replicated-normalization-checks|<tuple|4|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Corrections
      sent to the chapter author> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Marked
      component and higher-mode checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Actual
      Gaussian comparison checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Replicated
      normalization checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>