<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Integration status><label|integration-status>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Independently
    established> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Source trace
    and unresolved actual joins> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Martin
    comparison> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Literature
    decision> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Subsequent
    contact-identity closure> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Corrected
    coefficient now also closed under current hypotheses>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>
  </table-of-contents>

  Root integrated the seven-page expanded fragment before quantitative
  stability. Root independently checked the moving-chart Hessian chain rule,
  Haar divergence, gauge-map derivative, resolvent correction and
  matrix-trace algebra, as well as the momentum-degree cancellation and order
  of regulator limits. This review does not close the actual current-transfer
  matched-jet hypotheses. The original preliminary audit below records the
  earlier three-page stage; later closure sections supersede its
  contact-algebra obligations.

  <ym-title|Actual current transfer and regulator
  audit><label|actual-current-transfer-and-regulator-audit>

  Owned fragment <verbatim|chapters/17-trace-transfer.tex> (not added to
  master). Standalone compiles3pages without overfull/underfull boxes. Root
  may insert its first three subsections before quantitative stability; final
  paragraphs identify exact remaining joins and should replace, not
  duplicate, existing input discussion.

  <section|Independently established><label|independently-established>

  <\enumerate>
    <item>ScottI147\U182 Laurent block identities, including divisibility by
    s_a^L\<minus\>1. Fragment proves quotient kernel coefficient sum uniform
    inL by bounded-length partial sums in each residue class. Exact trace and
    antisymmetry differences follow. Fine unit shifts act BEFORE stationary
    substitution; only coarse shifts intertwine with actual coarse-periodic
    stationary branch. Writing K I without explaining that convention would
    incorrectly suggest unit-fine translation covariance of the branch.

    <item>Scalar-mass regulated log coefficient for the SAME actual path
    action follows from Chapter7 response integrand. Scalar mass has no
    background insertions. Both real denominator floor and radial bounds
    simplify. Actual vertex Taylor remainder is O(k^-3), mass denominator
    difference O(mu\<twosuperior\>k^-6); four-dimensional integration gives
    O(1). Thus R(mu)=12kappa_G logmu+O(1) with existing twelve-plane
    normalization, no differentiation of O(1). Fixedmu torus convergence
    follows by analytic Fourier summation. This closes the scalar integral
    part of ch17:regulator-input, conditional only on the already established
    admissible action class and Chapter7 normalization.

    <item>Finite Haar integration by parts with spectators and differentiated
    smooth cutoffs is exact. Fragment states the derivative term explicitly.

    <item>Quadratic inherited loop term has two lattice differences on each
    leg by Chapter7, so kills constant and affine links. Its cubic momentum
    trace coefficient pairs constant/quadratic or affine/affine polynomial
    legs and is zero. This is stronger than bare gauge invariance and is the
    needed two-moment cancellation.
  </enumerate>

  <section|Source trace and unresolved actual
  joins><label|source-trace-and-unresolved-actual-joins>

  Scott <verbatim|part2/I-section.tex>209\U258 gives the regulated current
  lemma. It assumes uniform weighted order2\U4
  current/displacement/trace/antisymmetry bounds AND defects/free-Hessian
  deviations tending to zero. Its contact identity221\U229 involves actual
  left-coordinate map Ycal, derivativeV, mixed gauge-coordinate
  derivativeJcal, and action-gradient remainderZ. The claimed scalar
  cancellation and remainder require these precise group-coordinate objects,
  not a flat-coordinate Gaussian divergence identity.

  ScottI331\U337 proposes deriving those current hypotheses by a triangular
  contraction. The actual Chapter5 transport bridge is
  \|\<nabla\>^rW_a\|\<less\>=C L^-1-r, with gauge-adjusted forest tangent;
  Chapter7 closes action cubic/quartic matching. To obtain the stated current
  contraction, one must additionally show:

  <\itemize-minus>
    <item>The transferred current/displacement retains exactly the required
    low polynomial jets under R_f+d_VR0, with the SAME stationary branch and
    block averages.

    <item>For the order2 defect, affine\Uaffine and affine\Uquadratic terms
    are removed by a specified matching projection/identity. Otherwise
    engineering rescaling L5 multiplies L^-4 andL^-5 to L and1. The bounds
    already proved do not remove those terms by themselves.

    <item>Their proposed remaining matched term C/(log beta_m)^2 must be a
    homogeneous linear bound in the defect vector if repeated contraction is
    to force it to zero at fixed outputscale. A bounded additive source would
    instead leave a nonzero fixedscale floor. The source paragraph calls it a
    factor but does not explicitly display the relevant projection identity.

    <item>Uniform weighted bounds for Y and the difference primitives q,t
    must be checked alongside defect contraction. In particular the localized
    predictor differential and its frame correction, after fine-anchor
    average, need the appropriate volume factors; a global row bound alone is
    not their local anchored bound.
  </itemize-minus>

  Low-weight continuum Ward identities show the ORIGINAL quadratic defect
  annihilates its leading polynomial tests, but transferring this statement
  through the actual predictor is a separate step. The algebraic block
  identities prove preservation of divergence/difference structure, not the
  numerical weighted jet bounds. No assertion of a global source gap is made:
  these are the remaining explicit hypothesis matches not independently
  derived here.

  After current convergence the Scott contact calculation claims
  mu\<twosuperior\> l(Rem)\<less\>=Cmu+o(1). Chapter7 supplies inverse
  derivative estimates through any fixed order for the scalar regulator. The
  remaining numerator vanishings of W^(0),W^(1) require the current's actual
  free jets and group-coordinate/contact cancellations. Thus Chapter7's
  determinant bound alone does not close the Haar coefficient limit.

  <section|Martin comparison><label|martin-comparison>

  <verbatim|existence/trace-scribe-producer.tex>1\U25 explicitly starts with
  response/Ward/fourth-order/weighted receipts and assigns target
  payment\<minus\>12s_G. <verbatim|trace-local-charge.tex> equations at~91
  assume \|m+12kappa\|\<less\>=t^-100. Its local field/flux proposition is a
  correct finite-dimensional conversion, not an independent regulator
  coefficient proof. <verbatim|trace-coffer-supplier.tex> makes endpoint
  direction/room/bank/response bounds explicit.
  <verbatim|trace-weighted-estimates.tex>,
  <verbatim|trace-calibration-producer.tex>, and
  <verbatim|trace-asymptotic.tex> close finite-dimensional passage once those
  inputs hold. These sources cannot by themselves replace the missing actual
  current contact computation with a new derivation of\<minus\>12kappa.

  <section|Literature decision><label|literature-decision>

  No new external proof is inserted: exact difference-polynomial algebra and
  Haar integration by parts are elementary; scalar regulator comparison is a
  direct specialization of the already literature-checked Chapter7 actual
  integrand proof. CDJ1977 may motivate the target coefficient but is not
  used as its nonperturbative supplier. No new bibliography entry.

  <section|Subsequent contact-identity closure><label|subsequent-contact-identity-closure>

  The fragment now PROVES ScottI contact identity exactly in moving
  exponential charts (labels ch17:contact-section, ch17:contact-identity,
  ch17:contact-Z). This supersedes the earlier unverified-contact entry
  above. Essential ingredients: Ycal is derivative of log(\<Psi\>_s(expzU)
  \<Psi\>_s(U)^\<minus\>1), NOT the coefficient Y derivative;
  divergenceHaar=trV because source/target chart volume densities both equal1
  at origins; equivariance gives dotd=Vd; mixed gauge chart derivative gives
  Hd=\<minus\>N. Hessian chain rule and cyclic trace give exactly the two
  contractions in ScottZ. All action-gradient terms retained at nonstationary
  backgrounds.

  Also proves ch17:gradient-cancellation explicitly. General gauge-linear
  displacement coefficient has first symbol q_jA_b,ic^j with
  A_b,ic^j=\<minus\>A_b,ij^c. The z\<twosuperior\>t coefficient of the
  kinetic variation is A_b,cc^b\<minus\>2\<delta\>_abA_b,cc^a+\<delta\>_bcA_b,ac^a.
  Summing a\<neq\>c,b gives3\<minus\>2\<minus\>1=0, with full colour
  contractions understood. This applies to BOTH actualS and regulatedGamma,
  whose invariant quadratic kernels have the same transverse kinetic tensor
  form. It is not an assertion that DS[Z] vanishes as a function.

  Regulator remainder: displayed principal-symbol cancellation identifies
  W0/W1/W2 orders2/1/0, PROVIDED the actual current jets converge to those
  leading curvature jets. With n\<less\>=2field derivatives and
  r\<less\>=3externalmom derivatives, inverse costs z^-2-n-r and W costs
  z^2-n-r. Trace with2field+3momderivatives costs z^-5, integratesC/mu, then
  mass\<twosuperior\> yieldsCmu. Approximatejet errors vanish at FIXED
  positive regulator interval first. This closes the analytic power count
  under the current hypotheses; actual current matched-jet convergence
  remains separate.

  Still NOT declared closed: the oriented-anchor correction converting l to h
  and its convergence for the actual current, and the actual repeated
  transfer contraction/uniform weighted bounds listed above. No
  target\<minus\>12s_G assumed in the new proofs. The fragment is now5pages,
  clean standalone after splitting the long inverse definitions.

  <section|Corrected coefficient now also closed under current
  hypotheses><label|corrected-coefficient-now-also-closed-under-current-hypotheses>

  Further extension supersedes the previously open l\<rightarrow\>h
  correction. New subsection ch17:regulator-completion keeps c=l\<minus\>h
  throughout:

  <\itemize-minus>
    <item>c kills action-gradient terms because their quadratic field symbols
    start in momentumdegree3.

    <item>c kills contracted current divergences at totalmomentum0; l kills
    them because its totalmomentum derivative selects traceJ, which is itself
    a forward difference.

    <item>Exact resolvent decomposition tr(RV)=trR(D\<minus\>T1/2)+trG
    T0/2+DS[Z']+Rem is derived with Z'=contr(G M R,J).

    <item>The anchored derivative symbol \<delta\>\<chi\> gives\<minus\>it at
    totalmomentumte_b. D contributes qtrR; fourT terms
    give\<minus\>2qtrR+2qtrG. Their c coefficients vanish at totalmomentum0.
    Thus \<mu\>\<twosuperior\> principalpart=\<minus\>\<mu\>R'_Lambda.

    <item>c(Rem) has only2externalmomentumderivatives, bounded by integral
    z^-4=O(1+\|log\<mu\>\|). Multiplied\<mu\>\<twosuperior\> it is O(\<mu\>),
    no assertion of independent vanishing at FIXED\<mu\> needed.

    <item>Equation ch17:corrected-regulated-ward is established including
    lattice correction. The fixed-loginterval mean-value argument gives
    h(Y)\<rightarrow\>\<minus\>12\<kappa\> when the actualcurrent weighted
    bounds/freejet convergence/defect hypotheses hold.
  </itemize-minus>

  Remaining unproved part is now the actual transferred-current hypotheses,
  especially same-predictor matched-jet cancellation and homogeneous
  contraction/uniformcurrentbounds described earlier. The regulator algebra
  and numerator powercount are no longer separate missing inputs. Standalone
  fragment7pages, no overfull/underfull boxes. Root should independently
  review the mixed group-coordinate and anchored coefficient arguments before
  merging claims.
</body>

<\initial>
  <\collection>
    <associate|html-title|Integration status \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|actual-current-transfer-and-regulator-audit|<tuple|?|1>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|3>>
    <associate|auto-4|<tuple|4|3>>
    <associate|auto-5|<tuple|5|3>>
    <associate|auto-6|<tuple|6|4>>
    <associate|corrected-coefficient-now-also-closed-under-current-hypotheses|<tuple|6|4>>
    <associate|independently-established|<tuple|1|1>>
    <associate|integration-status|<tuple|?|1>>
    <associate|literature-decision|<tuple|4|3>>
    <associate|martin-comparison|<tuple|3|3>>
    <associate|source-trace-and-unresolved-actual-joins|<tuple|2|2>>
    <associate|subsequent-contact-identity-closure|<tuple|5|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Independently
      established> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Source
      trace and unresolved actual joins> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Martin
      comparison> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Literature
      decision> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Subsequent
      contact-identity closure> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Corrected
      coefficient now also closed under current hypotheses>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>