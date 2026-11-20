<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Actual predictor, forest chart, and stationary matching (Chapter
  5)><label|actual-predictor-forest-chart-and-stationary-matching-chapter-5>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Changes and
    established statements> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Sources checked
    and exact matching> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Remaining exact
    conditions, not silently discharged> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Literature use>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Fixed-scale
    convergence of the actual selected free rows>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>
  </table-of-contents>

  Completed bounded same-data check after Chapter6's first-power proof. Own
  edits are to Chapters4/5; Chapter6 owner is replacing the moved proof by
  references. No global build run.

  <section|Changes and established statements><label|changes-and-established-statements>

  <\enumerate>
    <item>Moved the first-power predictor proof to Chapter4,
    <verbatim|ch04:predictor-geometry>, <verbatim|ch04:predictor-comparison>,
    <verbatim|ch04:macro-comparison>. It uses precisely the normalized
    minimizing-frame / eligible-axial-frame branches and nearest-centroid /
    connector-predictor branches already defined there. No forward Chapter6
    reference remains in Chapters4/5.

    <item>Defined the actual forest chart <verbatim|U(v,psi)_e=exp(iota_F
    psi)_e (rep exp v)_e> (<verbatim|ch05:forest-chart>). Its vertical
    derivative at zero is exactly the zero extension <verbatim|iota_F>, and
    this is an isometry in real physical counting coordinates
    (<verbatim|ch05:forest-derivative>). Trees contain internal block edges
    only, so replica is one on tree edges. This is the coordinate
    identification missing from a bare abstract gap assertion.

    <item>Verified fixed-patch analytic minimizing branches for the selected
    kernel. The normalized frame Hessian at flat field is positive; predictor
    Hessian is identity. At fixed j,L, one finite reference patch supplies a
    common analytic ball, derivative bounds and strict minimizing tests,
    independent of the period. On this whole ball all redundant tags select
    the same action functions; equality is before stationarity, not merely on
    a graph. This concerns the uncut action, not globally analytically
    continued cutoff indicators or shrinking cutoff plateaux.

    <item>Computed the actual normalized frame derivative and predictor:
    <verbatim|tau_y(r)=-av_(r',o) I_a(Ly+r\<rightarrow\>Ly+r';o)>,
    <verbatim|H_y,r=tau_y(r)-tau_y(0)>, <verbatim|R a(y)=-sum_r w_r H_y,r>;
    <verbatim|Qactual=M+d_c0 R>, <verbatim|Qactual d_f0 phi=d_c0(phi at block
    roots)> (<verbatim|ch05:actual-Q>). The averaging M is the same j-fold
    centered box average used in the alias recurrence. R has finite coarse
    range and absolute row bound C_j L. The signs agree with d0
    phi(x,mu)=phi(x+mu)-phi(x).

    <item>Derived the nonlinear actual-tree comparison from the Chapter4
    macro/frame estimates (<verbatim|ch05:nonlinear-tree>), then
    differentiated at zero and summed squared local bounds to prove
    <verbatim|ch05:tree-comparison>. Constants depend on fixed j,L, not
    period/tree. Arbitrary block trees have path length at most
    L\<#2074\>\<minus\>1; the sharper source4L bound is unnecessary for this
    fixed-L use. It is not used for the pre-L macro curvature estimate.

    <item>Defined the actual normalized classical action with exact b times
    Wilson predictor penalty, excluding common inverse coupling and inherited
    quadratic loop terms (<verbatim|ch05:actual-action>). Its Hessian is
    <verbatim|\<langle\>d_f a,H_f d_f a'\<rangle\>+b\<langle\>h-Qactual
    a,h'-Qactual a'\<rangle\>>, with <verbatim|a=rep h+iota_F z>
    (<verbatim|ch05:actual-hessian>). Vanishing first derivatives eliminate
    second derivatives of the forest lift; vanishing residual eliminates
    higher predictor derivatives. This gives the actual vertical gap
    (<verbatim|ch05:actual-gap>) from the same path action's positive
    quadratic metric.

    <item>Identified a smooth actual-predictor transport. Let Ws be the
    previously proved straight-average transport. A smooth compactly
    supported cardinal partition of unity gives a coarse-to-fine site
    extension E with E h(Ly)=h(y), fine difference bounds C_r L^-r and
    bounded coarse range. Then <verbatim|Wa=Ws-d_f0 E R Ws>
    (<verbatim|ch05:corrected-transport>) satisfies <verbatim|Qactual
    Wa=I-b^-1 Kc>, <verbatim|Kf Wa=Qactual* Kc>, <verbatim|d_f1 Wa=d_f1 Ws>
    (<verbatim|ch05:actual-transport-identities>). Since R has size O_j(L)
    and Ws has size O_j(L^-1), RWs has O_j(1) exponentially decaying coarse
    kernel. Differencing E proves <verbatim|\|\<nabla\>_f^r
    Wa(Ly+x,y')\|\<less\>=C_j,r L^-1-r exp(-c_j dist(y,y'))> at all orders
    previously proved for Ws (<verbatim|ch05:actual-bridge>). This supplies
    the actual smooth representative; it does NOT transfer these bounds to
    discontinuous tree coordinates. No inverse of a zero-mode Laplacian is
    used; the extension preserves constants.

    <item>Set tree edges to zero by a unique root-zero site gradient. This
    leaves actual Q and curl unchanged and defines WF. Exact gap gives
    uniqueness on the slice; implicit differentiation gives <verbatim|rep
    v+iota_F D rho(0)v=WFv> (<verbatim|ch05:stationary-tangent>). Wa and WF
    are explicitly distinguished.

    <item>Added <verbatim|ch05:actual-stationary>: under the incoming path
    coefficient budget and actual positive quadratic coefficient, the
    selected kernel and forest chart now supply the previously conditional
    branch/tree inputs. Common real chart, uniform Hessian gap and supremum
    inverse, volume-independent branch Lipschitz bound, all-tag equality, and
    polynomial-in-coordinate-number higher derivative/determinant bounds are
    stated. Requested derivative order is fixed before the common
    path/coordinate budget; for k+4 determinant derivatives choose action
    order at least k+6. No dimension-dependent norm conversion is used to
    select the radius.
  </enumerate>

  <section|Sources checked and exact matching><label|sources-checked-and-exact-matching>

  <\itemize-minus>
    <item>Scott B370\U390 defines the replica, zero-extension forest chart
    and normalized action exactly as used above. B425\U462 gives frame
    derivative, tree comparison and stationary tangent. The source's
    finite-volume IFT paragraph alone does not prove a uniform radius; the
    chapter uses the quantitative rooted derivative sums instead.

    <item>Martin <verbatim|path-attachment-producer.tex>130\U235: nonlinear
    planted comparison, squared macro count and full tested Hessian identity.
    Their forest-lift derivative is explicitly realized here, avoiding an
    uninterpreted abstract chart compatibility premise.

    <item>Same file235\U300 distinguishes period-uniform gap from possibly
    volume-dependent IFT neighborhoods, and assumes equality of tested
    actions in the full variables. Our finite-patch minimizing-branch
    argument verifies this for the actual Chapter4 tag choices.

    <item>Martin <verbatim|seed-geometry.tex>: first-power
    synchronization/endpoint comparison, both predictor branches, and actual
    macro multiplicities; proof moved earlier.

    <item>Martin <verbatim|seed-tree-patch.tex> and
    <verbatim|sector-gram.tex>66ff: actual-tree comparison and linearization.
    No transported-flat matrix is substituted for actual derivatives.

    <item>Martin <verbatim|uniform-stationary-chart.tex>8\U159: rooted
    derivative estimate, gap, weighted inverses, uniform contraction;160ff
    higher derivatives and log determinant polynomial bounds. It explicitly
    requires local-action derivative data; the chapter obtains these from its
    exponential connected path budget.

    <item>The smooth cardinal extension is a standard partition-of-unity
    interpolation, used here to choose a representative with exact root
    values. Its explicit formula verifies the needed fixed-range and
    difference estimates directly. It avoids assuming the block-constant
    representative has smooth fine differences.
  </itemize-minus>

  <section|Remaining exact conditions, not silently
  discharged><label|remaining-exact-conditions-not-silently-discharged>

  <\itemize-minus>
    <item>The selected incoming <strong|uncut> classical path action must
    satisfy <verbatim|ch05:path-budget>: fixed finite path arity, connected
    rooted supports, and absolute coefficient sum bounded after weighting by
    exp(sigma times total true path length). Products of path rows require
    the corresponding product budget. This is a condition on the actual
    selected coefficient family, not merely a bound on a flat kernel.

    <item>Its quadratic coefficient must equal the Kf used in the chosen
    Gaussian construction. In direct/path-square coordinates this means the
    actual linearized row factorization, including orientation normalization,
    gives the selected Hf (or agrees on all curls). Higher curvature-degree
    atoms have no quadratic coefficient; this fact does not establish the
    row-factorization identity for arbitrary supplied coefficients. A
    positive actual metric alone suffices for the stationary chart;
    identifying its reduced Hessian with the particular historical Kc
    additionally requires this coefficient match.

    <item>Common minimizing-branch equality is proved for the actual
    frame/predictor tags. It does not identify an arbitrarily modified local
    test action, a different Borel mask, or a different incoming coefficient
    family with this one. Cutoff recognition on shrinking plateaux and
    Gaussian exterior estimates remain Chapter6/9 issues.

    <item>Fixed-L supremum stationary estimates do not by themselves imply
    every ratio-uniform weighted inverse estimate required for one-loop
    nonlinear response. The actual smooth transport bridge is now supplied,
    but weighted Hessian/vertex estimates for the differentiated one-loop
    determinant remain separate inputs if their norm is stronger than the
    chapter's fixed-L counting/supremum norms.

    <item>Gauge changes of the determinant must retain Haar and gauge
    normalization contributions. The tangent identification is not a license
    to replace a full nonlinear background by its linear tangent in a second
    derivative of the one-loop action.
  </itemize-minus>

  <section|Literature use><label|literature-use>

  The finite-dimensional analytic implicit-function theorem is cited to the
  already verified LeblSCV key; no new analytic theorem is claimed. The
  weighted inverse estimate and Gaussian/logdet differentiation reuse the
  existing Chapter5 references and arguments. New work in this pass is the
  exact same-predictor/coordinate identification and representative
  correction. No new bibliography key or global macro is required.

  <section|Fixed-scale convergence of the actual selected free
  rows><label|fixed-scale-convergence-of-the-actual-selected-free-rows>

  Added <verbatim|ch05:horizon-convergence> and Proposition
  <verbatim|ch05:horizon-limit>. Source packet: Martin
  <verbatim|existence/free-horizon-convergence.tex> (all subsections), with
  the exact covariance recurrence and uniform alias/strip estimates already
  developed in Chapter5. This closes the previous qualitative quadratic
  cutoff-convergence interface for the fixed nested schedule.

  The actual schedule is held fixed at every scale while its fine endpoint is
  extended. Its directional driving-filter squares decrease on real momenta;
  extending the history leaves old noise contributions unchanged and appends
  a nonnegative contribution. Uniform noise bounds and a summable high-alias
  majorant give convergence of each nonzero-momentum directional covariance.
  All rational metric and transport denominators have positive limits off
  zero. The common analytic strip then identifies unique infinite-cover
  coefficient limits, and convergence holds in every smaller exponential
  coefficient norm. Zero modes are treated by continuity of the regular
  cluster symbols, without assigning a finite massless covariance at zero.

  The specified exterior lifts are the fixed coordinate divided-difference
  lifts, so they inherit convergence; arbitrary fresh solutions of an
  exterior identity would not. Metric amendments are fixed before cutoff
  selection. Positive square roots are the canonical positive roots and
  converge by positive-semidefinite uniqueness on all tori plus recovery of
  cover coefficients from unbounded periods. A direct-factor root of
  Htilde-cI requires the stated fixed strict gap margin. Finite
  products/inverses of these rows, including the usual retained factor
  blocks, inherit convergence. The actual predictor correction R and its
  cardinal extension are fixed finite-range rows at fixed scale, so the
  corrected tangent inherits the same conclusion.

  Martin <verbatim|flat-step.tex> and <verbatim|flat-estimate.tex> concern a
  different quantitative cutoff-rate mechanism. The latter explicitly does
  not prove the former RG majorant hypothesis. Neither is needed for the
  qualitative free-row limit proved here, and no rate is claimed. Nonlinear
  activity convergence and marked fixed-input continuity are still separate
  obligations; this proof does not identify those with Gaussian convergence.

  Validation: checked same scale schedule, alias scaling L^-2, principal
  positivity, zero-mode handling, root signs, strict exponential-width loss,
  and preservation of cover rather than merely one-torus coefficients. No
  global build run (parent owns build).
</body>

<\initial>
  <\collection>
    <associate|html-title|Actual predictor, forest chart, and stationary
    matching (Chapter 5) \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|actual-predictor-forest-chart-and-stationary-matching-chapter-5|<tuple|?|1>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|3>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|5|4>>
    <associate|changes-and-established-statements|<tuple|1|1>>
    <associate|fixed-scale-convergence-of-the-actual-selected-free-rows|<tuple|5|4>>
    <associate|literature-use|<tuple|4|4>>
    <associate|remaining-exact-conditions-not-silently-discharged|<tuple|3|3>>
    <associate|sources-checked-and-exact-matching|<tuple|2|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Changes
      and established statements> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Sources
      checked and exact matching> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Remaining
      exact conditions, not silently discharged>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Literature
      use> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Fixed-scale
      convergence of the actual selected free rows>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>