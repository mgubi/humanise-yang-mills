<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Chapter 4 audit: exact blocking and effective
  densities><label|chapter-4-audit-exact-blocking-and-effective-densities>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Sources and
    local proof status> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Literature>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Essential
    support distinction> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Effective
    action and norm conditions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Remaining work>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>
  </table-of-contents>

  Draft <verbatim|chapters/04-blocking.tex>; reviewed source passages Scott B
  19\U190, Part I 05 6\U190, D 21\U67; Martin <verbatim|predictor-branch.tex>
  9\U200. No one-step stability or global trajectory is asserted. The output
  is an exact normalized kernel and a conditional density coordinate system.

  <section|Sources and local proof status><label|sources-and-local-proof-status>

  <\itemize-minus>
    <item>Frames: Scott <verbatim|def:D20a>, <verbatim|def:D20b>,
    <verbatim|lem:B1>; Martin <verbatim|predictor-branch.tex>, uniform
    uniqueness subsection. Detailed averaging contraction checked: gauge loop
    test makes all route matrices \<varepsilon\>-close to identity; global
    minimizers satisfy the average squared-distance estimate; center by
    nearest centroid; inclusive diagonal self term preserves nearest-point
    optimality; centroid normality kills projection of their difference;
    derivative bound produces contraction \<varepsilon\>+1/4 uniformly over
    number of sites. The group acts by a common left multiplier, so h_0=1 is
    a legitimate global gauge normalization and does not remove
    coordinatewise optimality. Constants depend only on the specified matrix
    group, not patch radius.

    <item>Axial eligibility: Scott <verbatim|lem:B1>, axial branch proof;
    each fixed coordinate order gets a root by successive low-average-layer
    selection. Internal link differences telescope through internal
    plaquettes; the induction factor at r varying axes can be 4r(2R+1),
    giving16 in dimension4. This is a finite-root variant of the standard
    axial gauge estimate. The short argument is retained because it supplies
    this exact eligible-root rule; no original exact published theorem was
    located in the targeted search. No novel-method claim.

    <item>Nearest predictor: Scott <verbatim|def:D21>, <verbatim|lem:B1>;
    completion of squares gives nearest projection of weighted ambient matrix
    mean. Uniform tubular radius supplies threshold independent of weight
    count. Predictor tag is uniform over B_R on minimizing branch; otherwise
    weights w_z^av. Frame tags sampled first; predictor probabilities
    conditional on frame tags. Boundary equality goes to fallback branch.

    <item>Exact kernel: Scott <verbatim|def:D04> and B covariance paragraph.
    All finite alternative branches retained, all q factors Haar normalized.
    Haar/Fubini normalization given as immediate application, not a separate
    long proof. Gauge transformations at coarse endpoints are g(Ly); lattice
    translations are matched fine Ly/coarse y. Kernel Borel, positive and
    bounded at fixed \<beta\>, not asserted globally continuous through
    branch changes. Analytic frame dependence and its derivative are
    intentionally deferred to Chapter5.
  </itemize-minus>

  <section|Literature><label|literature>

  Foote1984: parent downloaded original /tmp/ym-foote.pdf and inspected p153
  lemma: compact C^k submanifold, k\<geqslant\>2, has unique nearest point in
  a neighborhood and projection C^{k\<minus\>1}. Since compact matrix group
  is smooth, this supplies smooth projection. Derivative at identity is the
  tangent projection by the standard normal chart. Draft uses no unproved
  analytic enhancement. Citation key already in Scott bibliography.

  Searches before proof: \PBalaban averaging operations lattice gauge fields
  minimizing gauge group average 1985\Q and \Psynchronization compact Lie
  group all pair transports unique minimizer near identity gauge fixing\Q.
  Original Baªaban averaging paper identified through Rutgers metadata
  (CMP98(1985)17\U51, DOI10.1007/BF01211042), but exact finite-rule matching
  not verified. Draft cites existing Balaban1987RG only for historical
  methodology, not as proof of this kernel or its uniform branches.

  <section|Essential support distinction><label|essential-support-distinction>

  Source D25 makes K_i a function of internal links of Y_i AND flags in Y_i.
  Actual flag decisions read plaquettes meeting those sites, extending
  distance1 beyond Y_i. Draft calls Y_i exclusion support, I_i^bad prescribed
  large-field set, and separately defines full dependence region. Covers and
  K_m weights use Y_i. Connected factor overlap must use full dependence. No
  independence or disjoint read support is inferred from disjoint Y_i. This
  correction is also recorded in notation registry and UV audit.

  <section|Effective action and norm conditions><label|effective-action-and-norm-conditions>

  The path action is defined with its coefficient data treated as given and
  absolutely summable at the fixed volume. Invariant transported curvature
  rows and masked quadratic/cubic/quartic expressions retain both
  \<beta\>-dependent and \<beta\>-independent parts. Their later matching and
  uniform kernel bounds are not claimed here. <verbatim|clip> is
  discontinuous at threshold, with c_dir/2\<gtr\>c_lin; thresholds are based
  on reference beta, fixed when actual beta changes. Relaxed tests written
  over all sites are finite-range in effect because chord\<leqslant\>2;
  actual local dependence includes every nonautomatic queried plaquette.

  Regular norm: ordered left derivatives through fixed q, fields small on X_i
  (all plaquettes meeting X_i), directions t_m(1+dist(e\<minus\>,o_i))^varpi.
  Majorants anchored at o_i. Large-field norm: supremum value,
  containing-site sum over exclusion support. Both weighted with connected
  ball-cover number. Draft explicitly requires a conversion estimate for
  anchors or dependence-support enlargement; no hidden equality of these
  norms. Countable sums converge at fixed volume by elementary product
  estimate, without volume-uniform full partition-function claim.

  Regular normalization: zero at flat field; first derivative vanishes by
  Ad(G)-invariance and absence of invariant linear functionals on simple g;
  affine Hessian vanishes on nonwrapping supports. Wrapping support treatment
  intentionally follows source condition rather than guessing a coordinate
  lift. Parameter curves keep addresses/tests/masks fixed, all-address
  weighted difference sums vanish at fixed volume. Reference coupling differs
  from actual coupling. The complete reachable admissibility class is
  deferred until the nonlinear step is proved.

  <section|Remaining work><label|remaining-work>

  <\enumerate>
    <item>Later chapter must supply path coefficient data and prove both
    summability and the stated normalization, not merely cite this
    definition.

    <item>Later overlap estimates must retain both exclusion and dependence
    supports under each conversion.

    <item>Later trajectory construction must check t_m\<leqslant\>1,
    period/patch geometry and stage-dependent q,varpi,\<sigma\>. Those are
    finite-step inputs here.

    <item>Original exact axial finite-root variant has not been found; a
    verified applicable published formulation would permit compressing its
    local proof further.

    <item>Parent handles full build, visual layout and page-distance reminder
    check. Chapter4 uses only existing macros plus Foote1984 and
    Balaban1987RG citation keys.
  </enumerate>
</body>

<\initial>
  <\collection>
    <associate|html-title|Chapter 4 audit: exact blocking and effective
    densities \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|2>>
    <associate|auto-5|<tuple|5|3>>
    <associate|chapter-4-audit-exact-blocking-and-effective-densities|<tuple|?|1>>
    <associate|effective-action-and-norm-conditions|<tuple|4|2>>
    <associate|essential-support-distinction|<tuple|3|2>>
    <associate|literature|<tuple|2|2>>
    <associate|remaining-work|<tuple|5|3>>
    <associate|sources-and-local-proof-status|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Sources
      and local proof status> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Literature>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Essential
      support distinction> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Effective
      action and norm conditions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Remaining
      work> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>