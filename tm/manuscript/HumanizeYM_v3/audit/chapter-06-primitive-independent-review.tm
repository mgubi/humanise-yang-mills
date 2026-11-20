<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Independent review: Chapter6 primitive factors and component
  extraction><label|independent-review-chapter6-primitive-factors-and-component-extraction>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Mean
    cancellation: checked> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Important
    component error found and repaired in progress>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Exact
    conditions still requiring explicit treatment in the edited paragraph>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Other primitive
    and linear-comparison checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Final
    integration check after the corrections>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>
  </table-of-contents>

  Reviewed the new primitive/component/linear-comparison and
  mean-cancellation sections. No chapter edits by this reviewer. Findings
  were sent to root and the Chapter6 author while corrections were being
  incorporated.

  <section|Mean cancellation: checked><label|mean-cancellation-checked>

  The identity <verbatim|p=Tw> is correct for the same compatible quadratic
  pair. Here <verbatim|p=(X_f^lin(a),Z^lin(a,h))>, <verbatim|w=X_c^lin(h)>,
  and a is the actual stationary forest response. Exact quadratic
  minimization in physical counting norms gives
  <verbatim|\|\|p\|\|\<twosuperior\>=\|\|w\|\|\<twosuperior\>>. With
  <verbatim|T*p=w> and <verbatim|T*T+N*N=I>,

  <verbatim|\|\|p\<minus\>Tw\|\|\<twosuperior\> =
  \|\|w\|\|\<twosuperior\>\<minus\>2\|\|w\|\|\<twosuperior\>+\|\|Tw\|\|\<twosuperior\>
  = \<minus\>\|\|Nw\|\|\<twosuperior\>>.

  Nonnegativity on the left proves both <verbatim|p=Tw> and <verbatim|Nw=0>.
  This also supplies the null-row identity used in Martin's annular argument;
  it need not be separately assumed. It uses the actual same-stage curvature
  row factors and predictor, not just identical numerical bounds. Harmonic
  modes cause no exception.

  The local mean transfer identity is also exact: with E=AP\<minus\>I and
  m=\<minus\>P<em|f, <verbatim|m\<minus\>v=E*v\<minus\>P*(Av+f)>. On a common
  clean neighborhood, the one candidate tree-relative field and the same
  guide give row residual O(poly(B)t\<twosuperior\>+poly(B)t
  exp(\<minus\>cR>)). Locality/decay transfers this to the actual mean. The
  full windows, row stencils and inactive-coordinate restriction must fit in
  that neighborhood, as stated; separate gauges/candidates for separate rows
  would not suffice.

  <section|Important component error found and repaired in
  progress><label|important-component-error-found-and-repaired-in-progress>

  The original component paragraph used only the six-term <strong|core> lower
  bound to claim a pointwise small component amplitude after Gaussian
  extraction. That implication was invalid: extraction subtracts selected
  affine squares, leaving a potentially positive quadratic exponential in
  unbounded Gaussian coordinates.

  Martin <verbatim|actual-harvested-owner-energy.tex> supplies the required
  stronger identity (<verbatim|eq:owner-ceiling-identity>,
  <verbatim|eq:owner-actual-heft>): the charged energy is the signed average
  of core energy plus annular energy minus the <strong|actual selected affine
  squares>, plus nonnegative mean squares. The current author added
  <verbatim|ch06:annulus-extraction> and <verbatim|ch06:component-extracted-energy>
  after this finding. The square-difference argument is correct on the
  protected actual signal: nonlinear residual is O(poly(B)t), its affine
  error is O(poly(B)t\<twosuperior\>+poly(B)t exp(\<minus\>cR*)), so each
  subtracted row costs O(poly(B)t\<threesuperior\>+poly(B)t\<twosuperior\>exp(\<minus\>cR*)).
  Coarse subtraction is O(t\<#2074\>), and unselected residual squares are
  nonnegative. There are O(B\<#2074\> n) rows. Thus the extracted energy
  retains a positive multiple of t\<twosuperior\> n. The correction must be
  kept before asserting bounded pointwise product jets.

  <section|Exact conditions still requiring explicit treatment in the edited
  paragraph><label|exact-conditions-still-requiring-explicit-treatment-in-the-edited-paragraph>

  <\enumerate>
    <item><strong|Weak masks through300B.> Martin
    <verbatim|packet-annulus.tex>353\U379 requires fine
    chords\<leqslant\>t/2, predictor mismatches\<leqslant\>2Wt, coarse flag
    agreement/absence away from the selected set, and positive frame
    likelihood through300B, together with active-variable bounds through304B.
    Original selection consistency only within5B does not imply these
    conditions. They must be compulsory masks of the actual component. Then
    an annular anchor in (2B,200B] has all its relevant B-neighborhood and
    B/4 interior patches in the weak clean region.

    <item><strong|Actual signal reconstruction.> Active increments are
    bounded by the304B interfaces; frozen relative logarithms are cut off but
    equal the true logarithms on their clean inner plateau; tree coordinates
    are zero. This one signal reconstructs the actual fine field on every
    selected stencil. The affine square cannot be evaluated at an independent
    chart field or unrestricted z. Where a compulsory interface vanishes, the
    full component is zero.

    <item><strong|Selected rows avoid the core.> This is justified by active
    coordinates outside10B and selected stencils of radius\<leqslant\>B/50: a
    stencil touching such an active coordinate lies outside
    (10\<minus\>2/50)B, hence outside2B. Merely saying its anchor is
    outside2B would not suffice.

    <item><strong|Orientation normalization once.> The global matrix D uses
    square roots of orientation probabilities. If X_Hsigma selects already
    weighted rows of D, applying Av_sigma a second time double counts those
    weights. Define within-orientation extracted squares with the sqrt weight
    stripped off and apply one Av_sigma, or sum the globally weighted squares
    without an extra average. Martin's displayed owner identity uses raw
    per-orientation rows and one average. Author notified.

    <item><strong|Ownership and exact row partition.> Martin
    <verbatim|gaussian-reassembly.tex>115\U117 explicitly uses disjoint halos
    of radius at least500B. Pairwise owner distance205B is not enough to
    make200B action sets or304B Haar sets disjoint. The harvested-energy file
    only assumes a separation-radius parameter R\<geqslant\>205B together
    with separate ownership hypotheses; it does not license interpreting that
    as sufficient point-distance separation. An explicit safe convention is
    to merge components whose500B halos meet, giving disjoint500B halos and
    pairwise seed-set distance\<gtr\>1000B. This preserves finite-range
    entropy estimates. Alternatively specify an exact disjoint ownership
    assignment and prove every annular/mask condition for it. Do not silently
    count a row twice.

    <item><strong|Different near sets.> Local determinant corrections
    use200B; Haar corrections use304B. Both belong to the unique500B halo.
    The global flat determinant scalar is extracted once and is not assigned
    to every component. Positive mean squares have the sign in
    <verbatim|eq:reassembly-packet-log>; the component bound now uses that
    sign correctly.
  </enumerate>

  <section|Other primitive and linear-comparison
  checks><label|other-primitive-and-linear-comparison-checks>

  <\itemize-minus>
    <item>Exact series are correctly ordered: for E_s=A_s P_s\<minus\>I,
    <verbatim|A_s^-1=P_s(I+E_s)^-1>; with D=A Gamma\<minus\>I,
    <verbatim|Gamma^-1\<minus\>A=[(I+D)^-1\<minus\>I]A>. The nonsymmetric
    determinant identity is legitimate because A Gamma is similar to a
    positive matrix and the small logarithm series is convergent.

    <item>Finite-range word counting is consistent with truncated A and
    finite-window Gamma/P; supports must include all windows and protected
    cutoffs. Endpoint cutoffs, not small operator norm alone, supply bounded
    pointwise quadratic factors.

    <item>The local nonlinear-versus-linear mean discrepancy in Gaussian
    units is <verbatim|g^-1 O(poly(B)t\<twosuperior\>)=x^-1/2+o(1)>, since
    t\<approx\>gM. Covariance discrepancy O(poly(B)t) has the same
    negative-power order. Polynomial Gaussian score moments therefore yield a
    local small comparison under the same law, on clean full windows. This is
    not a comparison of a seeded sector with an unrelated unseeded law.

    <item>Holding physical fine links fixed avoids demanding a (k+1)st
    derivative from an incoming activity with only k derivatives. The text
    correctly warns against Taylor expanding its kth derivative at two
    different physical configurations.
  </itemize-minus>

  This review checks the corrected local implications. Reconstruction of the
  exact block density still needs the stated compulsory masks and disjoint
  row assignment to be implemented, not merely assumed by terminology.

  <section|Final integration check after the
  corrections><label|final-integration-check-after-the-corrections>

  The current text now explicitly uses global smooth allocation weights
  before forming components. The products of theta and (1\<minus\>theta) sum
  to one over all fine and mismatch selections; a nonzero weight forces the
  weak inequalities globally. Coarse flags are the actual set. Restricting
  these global allocation conditions to300B therefore supplies the required
  annular weak tests without deleting configurations or adding an unsupported
  hypothesis. Smoothness at the identity is harmless because theta is
  constant below a positive threshold, despite the chord norm itself not
  being differentiable at its zero.

  The component definition now merges selected sets with intersecting
  closed500B halos, so the resulting200B action and304B Haar assignments are
  disjoint. Periodic wrap does not invalidate this rule: on a small enough
  torus there is simply at most one such owner. The enlarged adjacency
  remains fixed-range O(B), and its entropy and containing-site counts are
  still polynomial in B per selected test. No probabilistic independence is
  inferred from this geometric separation.

  The selected-row clearance is explicitly derived from active coordinates
  outside10B and stencil radius\<leqslant\>B/50. The component square uses
  raw single-orientation D_sigma,b_sigma; the global precision stack uses
  sqrt(omega_sigma)D_sigma, and the final average applies omega_sigma exactly
  once. Thus the earlier normalization ambiguity is resolved. With these
  corrections, the displayed harvested energy implication establishes the
  claimed pointwise component amplitude on its compulsory protected
  interfaces; no unbounded positive extracted quadratic has been left
  unaccounted for. Zero interfaces make the whole component factor zero. The
  remaining reference to exact reconstruction is an assignment obligation in
  Chapter9, not an extra unexplained energy estimate.
</body>

<\initial>
  <\collection>
    <associate|html-title|Independent review: Chapter6 primitive factors and
    component extraction \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|3>>
    <associate|auto-5|<tuple|5|3>>
    <associate|exact-conditions-still-requiring-explicit-treatment-in-the-edited-paragraph|<tuple|3|2>>
    <associate|final-integration-check-after-the-corrections|<tuple|5|3>>
    <associate|important-component-error-found-and-repaired-in-progress|<tuple|2|1>>
    <associate|independent-review-chapter6-primitive-factors-and-component-extraction|<tuple|?|1>>
    <associate|mean-cancellation-checked|<tuple|1|1>>
    <associate|other-primitive-and-linear-comparison-checks|<tuple|4|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Mean
      cancellation: checked> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Important
      component error found and repaired in progress>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Exact
      conditions still requiring explicit treatment in the edited paragraph>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Other
      primitive and linear-comparison checks>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Final
      integration check after the corrections>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>