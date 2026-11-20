<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Ultraviolet source audit and reading
  routes><label|ultraviolet-source-audit-and-reading-routes>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1. Coverage of
    every ultraviolet outline unit> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2. The
    finite-cutoff comparison: precise candidate repair chain>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <with|par-left|1tab|The caveat in Trish
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <with|par-left|1tab|Martin's local estimates and their application
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>>

    <with|par-left|1tab|The explicit restarted-history closure
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|Route to the public family
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3. Fixed-level
    convergence: another compatibility-sensitive route>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4. Prioritized
    verification list> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. How to use
    the three versions economically> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Follow-up
    check of the candidate repair> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Support
    clarification for Chapters 4 and 8 (19 November 2026)>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>
  </table-of-contents>

  This is an <strong|audit of exposition and interfaces>, not a referee
  report certifying the construction. The outline's \PWhat remains
  unexplained\Q paragraphs describe the scope of the outline's review. They
  do not establish that the underlying mathematics is missing. Likewise, a
  conditional intermediate lemma is not a global gap when a later theorem
  supplies its conditions. Conversely, the final assembly's assertion that
  all conditions hold does not replace checking those conditions in a
  readable proof.

  The most valuable comparison found so far is that <strong|Martin contains
  detailed candidate repairs for specific conditional passages in Trish>.
  Those repairs should be used to write the missing mathematical argument,
  with an explicit hypothesis correspondence. They have not all been
  independently checked down to primitive analytic estimates. Do not describe
  the source collection as either fully verified or globally incomplete on
  the basis of this audit.

  <section|1. Coverage of every ultraviolet outline
  unit><label|1-coverage-of-every-ultraviolet-outline-unit>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Outline
  unit>>|<cell|<strong|Final chapter home>>|<cell|<strong|Exact source lead
  and audit issue>>>|<row|<cell|II.1>|<cell|2 for labels/sections; 11 for
  transfers; 13 for limit quotient>|<cell|Scott A <verbatim|lem:A1>,
  <verbatim|lem:A-R4>; E <verbatim|lem:E2.1>. Split elementary label
  construction from actual RG transfer and continuum null-space
  identification.>>|<row|<cell|II.2>|<cell|4, 8>|<cell|Density/activity
  definitions are not the same as Gaussian or cluster estimates. Use Scott
  Part I definitions D05a/b,D06 and D definitions
  D24\U25a.>>|<row|<cell|III.1>|<cell|4>|<cell|Scott B <verbatim|lem:B1>;
  exact probability kernel and every branch. Energy estimates used in branch
  bounds need an explicit local conditional formulation, not a forward
  invocation of the completed construction.>>|<row|<cell|III.2>|<cell|10,
  with finite requirements recorded in 5\U9 and 11>|<cell|Scott constants
  table, E <verbatim|lem:E1.1>; Martin <verbatim|common-scale-selection.tex>,
  <verbatim|public-run-binding.tex>. Schedule selection uses analytic
  estimates already proved conditionally. Numerical maxima do not prove those
  estimates.>>|<row|<cell|III.3>|<cell|5; cutoff rate in 10>|<cell|Scott B
  <verbatim|lem:B2>; Martin <verbatim|flat-step.tex>,
  <verbatim|flat-estimate.tex>. Zero/harmonic modes and gauge slice must be
  stated. No position-space continuum comparison follows from a Fourier
  coefficient statement alone.>>|<row|<cell|III.4>|<cell|6>|<cell|Scott B
  <verbatim|lem:B-windows>, <verbatim|lem:B-D2>; Martin
  <verbatim|actual-local-compiler-handoff.tex>. Match the actual sector,
  frozen variables, precision, affine mean and chart. Flat-sector comparisons
  are insufficient for arbitrary interacting
  sectors.>>|<row|<cell|III.5>|<cell|8 abstract; 9 concrete>|<cell|Scott D
  <verbatim|lem:D-rooted>, <verbatim|lem:D-connected>; Martin
  <verbatim|cluster-expansion.tex>. Standard abstract convergence can be
  cited; the actual gauge activities and exact cover still require
  proof.>>|<row|<cell|III.6>|<cell|5 branch/inverse; 7 fresh matching; 10
  stability>|<cell|Scott B <verbatim|lem:B3>\U<verbatim|lem:B7>; Martin
  <verbatim|uniform-stationary-chart.tex>,
  <verbatim|stationary-output-construction.tex>. Do not hide fresh
  classical/quantum matching in the hypotheses of an alleged complete
  induction.>>|<row|<cell|III.7>|<cell|7>|<cell|Scott C
  <verbatim|lem:C3>\U<verbatim|lem:C7>; Martin
  <verbatim|stationary-output-construction.tex>. Separate known perturbative
  coefficient from the nonperturbative exact-block comparison and bounded
  errors.>>|<row|<cell|III.8>|<cell|8 coefficient algebra; 11
  support/factorization>|<cell|Its Gaussian connected series is formal in the
  perturbative parameter unless convergence is separately proved. Locality of
  the block kernel is a different assertion from polymer convergence. Scalar
  terms need their own convergence.>>|<row|<cell|III.9>|<cell|9 reset/start;
  10 shooting/running>|<cell|Scott D <verbatim|lem:C8>, <verbatim|lem:D3>;
  Martin <verbatim|coupling-reset-selection.tex>. The exact masked density
  identity and continuous scalar reset must match, not merely their quadratic
  approximations.>>|<row|<cell|III.10>|<cell|6 energy and Gaussian tails; 9
  complete step; 11 marks>|<cell|Scott B energy/sector; D complete recursion;
  Martin <verbatim|seed-energy.tex>, <verbatim|gaussian-reassembly.tex>.
  Preserve the distinction between local energy, rooted-integral bounds,
  outgoing norms, and reset.>>|<row|<cell|III.11>|<cell|11 finite-cutoff
  comparison; 13+ continuum rank/stress>|<cell|Scott E free tests/rank;
  Martin actual-reader files and <verbatim|actual-rank-purchases.tex>. Free
  Maxwell detector algebra is already in Chapter 3. Limit rank must not be
  used circularly to obtain pre-limit difference
  bounds.>>|<row|<cell|III.12>|<cell|11 uniform differences; 12 full mesh
  limit>|<cell|Scott E <verbatim|lem:E2.4>, <verbatim|lem:E3.1/2>; Martin
  <verbatim|fullmesh-fixedbounds-producer.tex>,
  <verbatim|fullmesh-correlation-cauchy.tex>. Distinguish uniform-in-volume
  thresholds from fixed-volume convergence.>>|<row|<cell|III.13>|<cell|Optional
  comparison note only, not a proof input without identification>|<cell|An
  alternative coordinated family. The outline explicitly does not establish
  its equality with III.14's main family. Copying III.13's results into the
  main theorem would require new hypothesis
  checking.>>|<row|<cell|III.14>|<cell|10 quadratic convergence and retained
  family>|<cell|Martin <verbatim|rg-construction.tex>,
  <verbatim|public-run-binding.tex>; outline's selected-run construction. Do
  not discard an attached datum and later infer it from a reduced
  record.>>|<row|<cell|III.15>|<cell|8 norm calculus; 9 concrete bounds; 11
  marked comparison>|<cell|Comparison-function existence does not supply the
  actual coefficient-matching hypothesis. Preserve full supports and positive
  reserves.>>|<row|<cell|III.16>|<cell|2 labels; 3 Maxwell; 5 Fourier/matrix
  tools; 13+ trace-gap tools>|<cell|Distribute standard tools at their first
  use and cite them. Avoid a late toolkit that makes all prior arguments
  depend on definitions not yet given.>>>>>

  <section|2. The finite-cutoff comparison: precise candidate repair
  chain><label|2-the-finite-cutoff-comparison-precise-candidate-repair-chain>

  <subsection|The caveat in Trish><label|the-caveat-in-trish>

  <verbatim|Trish/part2/E-Gaussian-sources.tex>, after
  <verbatim|lem:E-source-polynomial> (the lemma begins around line 106 in
  this snapshot), says the application to the actual pushed source still
  requires a joint-law estimate. The physical reads, forecast, guard,
  determinant, residual loading and empty mode must all use the same sector
  law. The resulting estimates must control regular and normalized
  large-field terms with the original tests. If the comparison uses a
  restarted coupling sequence below the reading level, it additionally needs
  an exact density and coupling identification for that sequence. The
  paragraph explicitly makes the lemma and applications conditional until a
  supplier is established.

  This is more than the elementary fact that a Gaussian polynomial moment is
  close to a Maxwell polynomial moment. The latter does not identify the
  integrand or measure used in the actual RG density.

  <verbatim|Trish/part2/E-Gaussian-sources.tex>, <verbatim|lem:E-course-mass>
  (14), proves the useful exact statement that pushing the <strong|whole>
  integrable marked polynomial through normalized block kernels preserves
  every coefficient integral and the empty coefficient's normalization.
  Changing the lower coupling sequence does <strong|not> identify the two
  lower densities or their conditional laws. This elementary distinction must
  survive in the monograph.

  <subsection|Martin's local estimates and their
  application><label|martins-local-estimates-and-their-application>

  <\enumerate>
    <item><verbatim|Martin/existence/all-arity-reader-gaussian-model.tex>,
    <verbatim|sec:ex-lattice-all-arity-reader-gaussian-model>, defines one
    sample space (12), joint transverse law (81), and simultaneous comparison
    (138). This is a definition/probability-law route, not by itself the
    bound for the actual sector.

    <item><verbatim|actual-reader-local-gaussian-prices.tex>,
    <verbatim|sec:actual-reader-local-gaussian-prices>, controls removal of
    bare cut/window (65) and every cross-entry after reading curvature (128).
    <verbatim|actual-reader-small-window-bridge.tex>,
    <verbatim|prop:ex-lattice-actual-reader-panel> (56), is the concrete
    local comparison lead. <verbatim|actual-reader-guarded-curvature.tex>,
    <verbatim|actual-reader-tree-covariance.tex>, and
    <verbatim|actual-reader-short-covariance.tex> supply further specialized
    bounds.

    <item><verbatim|actual-corrected-body-compiler.tex> explicitly lists
    local hypotheses at 11\U62: actual path and clip, covariance floors, two
    determinant series, inverse correction, chart coordinate and residual
    bounds, radius inequalities, inherited activity reserve, and
    coupling/threshold relations. Its two distinguished remaining inputs are
    an energy bound on the actual large-field components and a Gaussian tail
    estimate uniform over compatible field/store pairs. The fact that they
    are assumptions here is <strong|not> evidence that no later section
    supplies them.

    <item><verbatim|actual-local-compiler-handoff.tex>: matrix and both
    support inventories at 52; first derivatives of both long determinant
    series at 112; interval-uniform estimates at 225. Lines 234\U236
    explicitly use <verbatim|eq:owner-actual-heft> from
    <verbatim|actual-harvested-owner-energy.tex> for the actual energy input.
    <verbatim|lem:actual-neutral-warning> (257) proves transfer of the
    simultaneous tail bound to the corrected alphabet, with the same Gaussian
    law and distinct event addresses. It does not replace the interacting
    density by its neutral version: neutralization is used for estimates
    while the corrected expansion reconstructs the genuine density.

    <item>The handoff's last section (327\U404) distinguishes genuine and
    neutral representations, retains the positive original loading, and
    requires same-history path/clip/tube and remainder bounds on the
    comparison interval. Its final paragraph explicitly names
    <verbatim|prop:restart-endpoint> and <verbatim|prop:restart-actual-closure>
    as the history-level suppliers. Therefore stopping at its earlier
    conditional paragraph would give an incomplete account of Martin's
    argument.
  </enumerate>

  <subsection|The explicit restarted-history
  closure><label|the-explicit-restarted-history-closure>

  <verbatim|Martin/existence/restarted-rank-history.tex>,
  <verbatim|prop:restart-endpoint> (243), constructs the exact endpoint
  presentation. <verbatim|prop:restart-actual-closure> (564), with proof at
  581\U742, is the main candidate response to Trish's same-course caveat.

  <strong|Its inputs, as stated:> the already selected chart/tube data,
  original path bounds and identification, adjacent metric floors, room/chart
  parameters, the local reserve choices of the handoff, the larger raw
  support exponent of <verbatim|prop:allarity-compiler-reserve>, and the
  endpoint bounds of <verbatim|prop:restart-endpoint>. The finite set of
  requests at each adjacent stage pair is met before its entry time. These
  are more than bounds on nominal couplings.

  <strong|Its outputs, as stated:> on every level of the comparison interval,
  a restarted representation with the original level's path and clip,
  constant coupling equal to the original reading-level coupling, additive
  value cost at most (q_{k-i}), and large-field allowance
  (G(x_i)=\\exp[-a_{\\rm coast}\\operatorname{hot}(x_i)^2]). The neutral
  versions satisfy the inherited-law hypotheses. Every adjacent step
  satisfies (V1)\U(V3) on one corrected alphabet, the exact density identity
  <verbatim|eq:restart-push>, and upper/lower connected-integral estimates
  with the same normalization. Bounds are uniform in cutoff, period, fields
  and finite marked families with fixed arity cap, allowing fixed-profile
  dependence.

  <strong|Proof structure inspected:> (a) clock and threshold estimates place
  the actual fixed coupling in each adjacent band; (b) the original
  paths/clips/tubes are unchanged by replacing activities; (c) deleting only
  the additive family gives the neutral incoming representation, while the
  genuine value cost is controlled separately; (d) large-field energy pays
  forced inflations, the <strong|single joint Gaussian tail event> controls
  all tail factors, and full-support rooted sums control additive
  contributions; (e) the positive original scalar loading and connected
  expansion reconstruct the exact genuine density; (f) the renewed
  additive/large-field bounds allow induction, including adjacent stage
  transitions. This is a substantial mathematical candidate repair, not just
  an existential assembly assertion.

  <strong|Remaining audit task:> verify each cited actual
  energy/tail/support-reserve estimate on precisely these inputs, then check
  that the finite-reader theorem used by <verbatim|actual-rank-purchases.tex>
  has the same source normalization, all-mark support conventions and
  Gaussian parameters. In particular, translate Martin's numerical functions
  into the monograph's chosen scale convention, rather than assuming that
  <verbatim|hot> equals Scott's (H_m). This audit has not independently
  completed that final match. The correct current classification is
  <strong|detailed supplier located and partially read; full hypothesis match
  pending>, not \Punresolved global gap.\Q

  <subsection|Route to the public family><label|route-to-the-public-family>

  <verbatim|actual-rank-purchases.tex> builds common test lifts and a single
  auxiliary history for all rows (88), solves normalization equations (174),
  then obtains the point-comparison bound
  <verbatim|eq:rank-purchased-point-comparison> (293).
  <verbatim|fullmesh-fixedbounds-producer.tex> uses actual finite-cutoff
  detectors, projection absorption, equation errors and centered bounds,
  culminating in <verbatim|prop:fullmesh-selected-supplier> (496). The
  full-mesh difference theorem at 144 has the exact quantifiers required in
  Chapter 11: one threshold for every volume and all separated periodic
  tuples, not a threshold for each fixed volume.

  <verbatim|public-run-binding.tex> retains the actual family, selected
  histories and transition witnesses; its opening explicitly says it supplies
  no replacement for an outstanding local estimate. <verbatim|assembly.tex>,
  <verbatim|thm:ex-construction-assembly> (267), cites the selected supplier
  and common-history Cauchy argument on that same family. The final assembly
  is therefore an intended closure of the conditional interface, not a proof
  that each intermediate matching step can be omitted in the monograph.

  <section|3. Fixed-level convergence: another compatibility-sensitive
  route><label|3-fixed-level-convergence-another-compatibility-sensitive-route>

  <verbatim|Martin/existence/fixed-rung-convergence.tex> proves a useful
  graph-contraction argument, but at line 92 explicitly retains a fixed-input
  stability hypothesis: for every fixed admissible graph, the adjacent-step
  map and coefficient map are Cauchy as the terminal cutoff changes. The
  bound comparing two graphs under one fixed map does not imply this.

  The candidate supplier is not an abstract compactness argument.
  <verbatim|selected-history-limits.tex>, activity/coupling limits at 317,
  identifies the common dictionaries, actual paths and scalar corrections. It
  then explains the auxiliary zero-array input required by the
  common-variable comparison. <verbatim|lem:selected-auxiliary-service> (147)
  supplies the same stationary branch, and
  <verbatim|lem:selected-chartlet-matching> (378) checks activity budgets,
  sector access, Gaussian tails, chart, and corresponding comparison
  hypotheses for that auxiliary input. Scott's shorter route is D
  <verbatim|lem:D-cutoff-continuity> (1069): stronger-weight tails,
  finite-coordinate convergence, Gaussian dominated convergence and exact
  affine coefficient recursion.

  <strong|Author task:> use one complete route, not half of each. Specify the
  fixed norm/dictionary, the allowed auxiliary inputs, their common chart,
  and the stability conclusion. Avoid claiming compactness of a ball in an
  infinite-dimensional activity space. Once this input is proved, the graph
  truncation and Cauchy argument are standard and can be presented briefly.

  <section|4. Prioritized verification list><label|4-prioritized-verification-list>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|ID>>|<cell|<strong|Obligation>>|<cell|<strong|Candidate
  source>>|<cell|<strong|Classification>>>|<row|<cell|A1>|<cell|Parameter-independent
  exact local section and dressed equation identity>|<cell|Scott A; Martin
  local-sections/local-splitting/actual-equation-kernel-relay>|<cell|Section
  construction inspected; full equation compatibility not yet
  audited>>|<row|<cell|A2>|<cell|Every branch of normalized block map,
  measurability and symmetry>|<cell|Scott B kernel; Outline III.1>|<cell|Read
  at statement/proof-summary level>>|<row|<cell|A3>|<cell|Gauge/zero modes,
  compatible Gaussian kernel and uniform stationary radius>|<cell|Scott
  B2\UB7; Martin uniform-stationary-chart>|<cell|Concrete routes located, not
  fully verified>>|<row|<cell|A4>|<cell|Same actual sector for coordinate,
  determinant, inverse, energy and joint-tail estimates>|<cell|Martin
  actual-local-compiler-handoff and its named inputs>|<cell|Handoff and
  joint-tail transfer read; primitive estimates
  pending>>|<row|<cell|A5>|<cell|One-loop coefficient normalization and
  bounded exact-block difference>|<cell|Scott C5\UC7; Martin
  stationary-output-construction>|<cell|Precise obligations identified; full
  calculation pending>>|<row|<cell|A6>|<cell|Exact full-density reassembly
  with both outgoing norms and reset>|<cell|Scott D5/C8; Martin
  gaussian-reassembly/coupling-reset-selection>|<cell|Routes located; must be
  checked as one application>>|<row|<cell|A7>|<cell|A single schedule and
  original-family identity>|<cell|Martin public-run-binding/common-funded-history;
  Scott constants>|<cell|Order and witness retention
  inspected>>|<row|<cell|A8>|<cell|Cross-cutoff adjacent-map stability on the
  actual/auxiliary inputs>|<cell|Martin selected-history-limits and
  fixed-rung-convergence; Scott D cutoff continuity>|<cell|Explicit missing
  premise and candidate supplier both located>>|<row|<cell|A9>|<cell|Joint
  large-field terminal modes, no division by activity>|<cell|Trish
  E-joint-terminal; Martin actual-marked-portfolio-calibration>|<cell|Trish
  algebra/construction read; norm translation
  pending>>|<row|<cell|A10>|<cell|Restarted exact density and full marked
  joint law>|<cell|Martin restart-endpoint/restart-actual-closure plus reader
  files>|<cell|Detailed closure proof read; downstream hypothesis match
  pending>>|<row|<cell|A11>|<cell|Projection absorption and volume-uniform
  normalized differences>|<cell|Martin fullmesh-fixedbounds-producer>|<cell|Theorem
  quantifiers and absorption structure read; all inputs
  pending>>|<row|<cell|A12>|<cell|Stopping error uniform enough in
  intermediate level and full-sequence convergence>|<cell|Martin
  fullmesh-correlation-cauchy; Scott E-fixed-level>|<cell|Route located; all
  prefactor dependencies require audit>>>>>

  These are work instructions, not claims of mathematical errors.

  <section|5. How to use the three versions
  economically><label|5-how-to-use-the-three-versions-economically>

  A line-sequence comparison of matching Part II files shows that Scott/Trish
  overlap strongly: A \<approx\>97.9%, E main \<approx\>97.9%, D
  \<approx\>93.4%, B \<approx\>91.2%, C \<approx\>86.3%. The most useful UV
  differences are <verbatim|E-several-mark.tex> (\<approx\>56.4% matching
  lines), <verbatim|E-Gaussian-sources.tex> (\<approx\>75.4%), and
  <verbatim|E-fixed-level.tex> (\<approx\>77.7%). These figures are textual,
  not measures of correctness. Read Scott for the concise architecture, Trish
  for these compatibility warnings/additions, and Martin only along the
  explicit supplier routes above. Martin's dense naming is best translated by
  writing the exact mathematical input/output before shortening the prose.

  Every unit's full <verbatim|Scott/Outline/units/III-k.md> contains pinned
  formal-source references and a separate limitations paragraph. When a
  supplied manuscript remains ambiguous, use those exact links to identify
  the relevant declaration; do not substitute a broad repository search for
  reading its hypotheses. The outline status \Pedited\Q is editorial review,
  not independent mathematical verification of every dependency.

  <section|6. Follow-up check of the candidate
  repair><label|6-follow-up-check-of-the-candidate-repair>

  See <hlink|restart-supplier-check.md|../audit/restart-supplier-check.tm>
  for a deeper check. It follows the later replacement route in Martin's long
  allarity-marked-propagation.tex: lem:allarity-guarded-gaussian (1266),
  lem:allarity-pair-reader (1415), prop:allarity-compiler-reserve (2062),
  lem:allarity-selected-opening (2615), and
  prop:allarity-selected-application (2704). In particular, the earlier
  common-cutoff measure criterion (M) is a sufficient route, not a necessary
  missing premise of the later guarded route.

  The follow-up checks the clipping inequality, restarted value-cost
  recursion, support-exponent monotonicity, guarded Gaussian
  finite-polynomial estimate, exact identity
  <math|J*q<rsub|N>\<mapsto\>J*q<rsub|k>>, common denominator, lift
  inversion, finite-detector stability, and final coefficient absorption. It
  also distinguishes the independent microscopic-equation/centered-budget
  branches needed by the full-mesh supplier. Primitive local covariance,
  energy and room estimates remain outside that independent verification.

  <section|Support clarification for Chapters 4 and 8 (19 November
  2026)><label|support-clarification-for-chapters-4-and-8-19-november-2026>

  Scott <verbatim|part2/D-section.tex>, <verbatim|def:D25> and the
  immediately following paragraph distinguish three objects: Y_i is the
  large-field polymer exclusion/coverage support, I_i is its exact set of
  flagged sites, and the complete read support is its actual dependence
  region. K_i depends on links internal to Y_i and flags in Y_i. Deciding
  these flags reads plaquettes within distance one of Y_i. Thus disjoint Y_i
  can have overlapping full read supports. Exact covers require disjoint Y_i;
  their weighted containing-site norm uses cov_B(Y_i). Connected
  elementary-factor expansions use overlap of full read supports. Neither
  independence nor disjoint dependence follows from disjoint Y_i. Enlarge
  supports only with an explicit conversion estimate, not by silent renaming.

  The Chapter 4 source packet's <verbatim|Martin/existence/local-mean.tex>
  concerns Gaussian means away from seeds; it is not the gauge-average
  construction. Use <verbatim|Martin/existence/predictor-branch.tex>,
  especially <verbatim|lem:branch-nearest-projection> and the
  uniform-minimizing-frame subsection, for that argument.
</body>

<\initial>
  <\collection>
    <associate|html-title|Ultraviolet source audit and reading routes \U
    Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-coverage-of-every-ultraviolet-outline-unit|<tuple|1|2>>
    <associate|2-the-finite-cutoff-comparison-precise-candidate-repair-chain|<tuple|2|3>>
    <associate|3-fixed-level-convergence-another-compatibility-sensitive-route|<tuple|3|5>>
    <associate|4-prioritized-verification-list|<tuple|4|6>>
    <associate|5-how-to-use-the-three-versions-economically|<tuple|5|6>>
    <associate|6-follow-up-check-of-the-candidate-repair|<tuple|6|7>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|6|7>>
    <associate|auto-11|<tuple|7|7>>
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-3|<tuple|2.1|3>>
    <associate|auto-4|<tuple|2.2|3>>
    <associate|auto-5|<tuple|2.3|4>>
    <associate|auto-6|<tuple|2.4|5>>
    <associate|auto-7|<tuple|3|5>>
    <associate|auto-8|<tuple|4|6>>
    <associate|auto-9|<tuple|5|6>>
    <associate|martins-local-estimates-and-their-application|<tuple|2.2|3>>
    <associate|route-to-the-public-family|<tuple|2.4|5>>
    <associate|support-clarification-for-chapters-4-and-8-19-november-2026|<tuple|7|7>>
    <associate|the-caveat-in-trish|<tuple|2.1|3>>
    <associate|the-explicit-restarted-history-closure|<tuple|2.3|4>>
    <associate|ultraviolet-source-audit-and-reading-routes|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1.
      Coverage of every ultraviolet outline unit>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2.
      The finite-cutoff comparison: precise candidate repair chain>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|The caveat in Trish
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|Martin's local estimates and their
      application <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|The explicit restarted-history closure
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|Route to the public family
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3.
      Fixed-level convergence: another compatibility-sensitive route>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4.
      Prioritized verification list> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      How to use the three versions economically>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Follow-up check of the candidate repair>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Support
      clarification for Chapters 4 and 8 (19 November 2026)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>