<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../outline.tm><ym-nav-sep><hlink|Unit
  plan|../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../index.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../glossary.tm><ym-nav-sep><hlink|Notation|../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../source/audit.tm><ym-nav-sep><hlink|Literature|../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../CONTRIBUTING.tm>>

  <ym-title|Nonlinear RG step interfaces \V working audit, issue
  #13><label|nonlinear-rg-step-interfaces--working-audit-issue-13>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Summary of
    findings> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Contract 1 \V
    one-step estimates at fixed constants (candidate PU-09)>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Contract 2 \V
    pre-reset presentation of the blocked density (candidate PU-08)>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Contract 3 \V
    order of constants, bundle and closure (candidate PU-10)>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Proposed
    ownership and order> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Obstructions
    and requested follow-up> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Literature
    leads (unverified)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Evidence>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>
  </table-of-contents>

  <strong|Status: author draft for independent Lean-correspondence review.>
  This is a bounded interface audit, not an exposition and not an ownership
  grant. Imported source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>;
  paths are relative to <verbatim|Lean/>. Scott Armstrong's
  <hlink|III.10|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/III-10.md>,
  <hlink|III.9|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/III-9.md>
  and III.2 outlines at <verbatim|8f3c7ccaeabb17b0f928bc1a2e75328691de3032>
  were used as navigation leads, not as proof evidence. Do not commission
  PU-08\UPU-10 explanation tasks from this note before that review and the
  follow-up audit requested in <hlink|Obstructions|#obstructions-and-requested-follow-up>.

  Three levels of evidence are distinguished throughout:

  <\itemize-minus>
    <item><strong|[E]> elaborated: the statement or definition was printed by
    Lean (<verbatim|#check>/<verbatim|#print>) in a built copy of the source
    and read;

    <item><strong|[S]> source text of the declaration was read;

    <item><strong|[G]> graph only: name, location, membership in the closure
    of the headline results and reference edges were taken from a compiled
    declaration graph; the statement itself was <strong|not> read in this
    session.
  </itemize-minus>

  <section|Summary of findings><label|summary-of-findings>

  <\enumerate>
    <item><strong|The cluster has no package-level boundary.> Treating the
    five III.10 work packages as one block, 1518 of their theorems are
    referenced from outside it by declarations in the headline closure [G].
    Interfaces must therefore be chosen as mathematical statements, not as
    module borders.

    <item><strong|There is a narrow theorem spine for the step itself> [E]:

    <\verbatim-code>
      one-step estimates \<#2500\>\<#2500\>\<#25BA\> Roof.timberT
      \<#2500\>\<#2500\>\<#25BA\> Roof.Sheltered \<#2500\>\<#2510\>

      (III.10.1\U10.4) \ \ \ \ \ \ \ (parameter order)
      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \<#251C\>\<#2500\>\<#25BA\> Rain.glazing
      \<#2500\>\<#2500\>\<#25BA\> Use.Offering

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Roof.WorksIn
      \<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2518\>
      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \<#2502\>

      Use.Machine (inside Sheltered) \<#2500\>\<#2500\>\<#25BA\> Use.supplier
      \<#25C4\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2500\>\<#2518\>

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \<#2502\>

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \<bigblacktriangledown\>

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ UVNext.CouplingReset.program
      \<#2500\>\<#2500\>\<#25BA\> Input.Directed.Program
    </verbatim-code>

    <verbatim|Roost.Factor.worksNow> is the one-line assembly of the last
    three arrows; <verbatim|Roost.commerce> is the existence statement with
    the full order of constants. The diagram omits three inputs [E]:
    <verbatim|Use.supplier> also takes <verbatim|G.Simple> and
    <verbatim|Use.Origins> (from <verbatim|Use.from_menu>);
    <verbatim|program> also takes <verbatim|PricedReset>
    (<verbatim|machine.prices>); and <verbatim|Roof.WorksIn> is not produced
    by <verbatim|timberT> but by <verbatim|Roof.honey> inside
    <verbatim|Roost.commerce>, from further one-step theorems (see Contract
    1, "Incomplete list").

    <item><strong|The proposed PU-08/PU-09/PU-10 split survives, with the
    dependency order of PU-08 and PU-09 reversed> relative to
    <verbatim|unit-plan.md>. The offering theorem (activity update, candidate
    PU-08) does not reference the one-step estimates (candidate PU-09); it
    receives them only as the hypotheses <verbatim|Roof.Sheltered> and
    <verbatim|Roof.WorksIn>, which the closure theorems (candidate PU-10)
    produce [G]. The conceptual order is PU-09 \<rightarrow\> PU-10 (bundle)
    \<rightarrow\> PU-08 \<rightarrow\> PU-07 (reset) \<rightarrow\> PU-10
    (program).

    <item><strong|PU-09 is not one theorem.> It is four separately stated
    estimates with different quantifier orders [S]; a two-unit split is
    recommended below.

    <item><strong|Part of III.10 is not in the step-program closure at all>:
    the integrated molecule estimate of III.10.3, the schedule statements of
    III.10.5 and the marker statements I01, I03, I04 have other consumers
    [G].

    <item><strong|The closure is conditional on a purchased schedule.> The
    hypothesis <verbatim|ThroughLaunch.PaidView> of <verbatim|Roof.timberT>
    and <verbatim|Roost.commerce> already contains the scheduled energy bound
    <verbatim|Pressure.Testing.Ringing>, the Gaussian run hypothesis
    <verbatim|Next.SectorChange.Cosmos>, <verbatim|Stock.Priced> and the
    start-up prices [E]. PU-10 therefore does not prove them; they are built
    upstream by <verbatim|ThroughLaunch.sailsV> [G].

    <item><strong|The hypothesis bundle is the one-step estimates evaluated
    along the schedule.> Every analytic field of <verbatim|Roof.Sheltered>
    and <verbatim|Roof.WorksIn> that was unfolded (seven rows of the field
    table were not) has the form "for each admissible stage pair and every
    coupling above the entry coupling, a one-step statement holds" [E].
    <strong|These are not all consequences of the four Contract 1
    statements>: the fields <verbatim|pipes>, <verbatim|peak>,
    <verbatim|jewels> and most of <verbatim|WorksIn> are produced from
    further <verbatim|Cash>-conditional one-step theorems that Contract 1
    does not list [S]; see the producer table in obstruction 1.
  </enumerate>

  <section|Contract 1 \V one-step estimates at fixed constants (candidate
  PU-09)><label|contract-1--one-step-estimates-at-fixed-constants-candidate-pu-09>

  <strong|Role.> Large-field and irrelevant-term bounds for a single block
  step, with all schedule data fixed. Nothing here refers to a trajectory, a
  reset, or a curve of couplings.

  <strong|Inputs.> Step data and tree gauge (III.1), free kernels and towers
  (III.3), polymer norms (III.5), stationary branch and matching
  (III.6\UIII.8), and the window/jet package of #12 through
  <verbatim|YM.AnalyticBridge.SectorAffine.assembly> and
  <verbatim|.estimates> [G]. <verbatim|YM.PhysicalNext.Repeat.Malachite.treasure>
  (<verbatim|.../Malachite/Grain.lean:42>), flagged by #12 as a consumer of
  <verbatim|SectorAffine.assembly>, lies on this side of the boundary: it is
  reached from <verbatim|Roof.timberT> and not from <verbatim|Rain.glazing>
  [G].

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Statement>>|<cell|<strong|Anchor>>|<cell|<strong|Evidence>>|<cell|<strong|Direct
  consumers in the closure [G]>>>|<row|<cell|Energy per seed (large-field
  action gap)>|<cell|<verbatim|YM.Next.Fluctuations.grants : \<forall\> P :
  Pressure.Teller G, P.Grants>, <verbatim|YM/Next/FLUCTUATIONS/Grants.lean:24>;
  <verbatim|YM.Pressure.Teller.Grants>, <verbatim|.cash>, <verbatim|.live>,
  <verbatim|.Funds>, <verbatim|YM/Pressure/Seeds.lean:89\U131>>|<cell|type
  [E], definitions [S]>|<cell|<verbatim|YM.Push.AbsoluteSums.Grant.order>,
  <verbatim|YM.Push.SectorMeasure.points_grant>,
  <verbatim|YM.Next.Fluctuations.pressure_queries>>>|<row|<cell|Activity
  bounds of one step>|<cell|<verbatim|YM.ConnectedActivityE6.Target.issue>,
  <verbatim|.../CONNECTED_ACTIVITY_JETS_E6/Issue.lean:94>, with
  <verbatim|Target.Order>, <verbatim|GrantBodies>, <verbatim|Invoices> (same
  file, 33\U88); bundle <verbatim|YM.ConnectedActivityE6.Cash>,
  <verbatim|.../Batch.lean:82>>|<cell|statement and the three structures [S];
  <verbatim|Cash> [G]>|<cell|<verbatim|Target.quotesTogether>
  (<verbatim|.../IssuePlan.lean:53>) \<rightarrow\>
  <verbatim|YM.ConnectedActivityE6.Planning.exists_floors>>>|<row|<cell|Coarse-field
  jets of the new letters>|<cell|<verbatim|YM.ConnectedActivityE6.Blaze.Silica.Utopia.whittle>
  and structure <verbatim|Utopia>, <verbatim|.../CONNECTED_ACTIVITY_JETS_E6/Das.lean:27\U52>>|<cell|[S]>|<cell|<verbatim|YM.ConnectedActivityE6.Blaze.Flux.launch>,
  <verbatim|Empire.prom>, <verbatim|Empire.womb>,
  <verbatim|Repeat.Alabaster.discover>, <verbatim|Repeat.Daisy.timing>>>|<row|<cell|Gaussian
  sector of the step>|<cell|<verbatim|YM.PhysicalNext.JointLoad.capital> and
  structures <verbatim|Charges>, <verbatim|Value>,
  <verbatim|.../V9_JOINT_ENDPOINT_LOAD/Costs.lean:34\U98>; then
  <verbatim|.stage> (<verbatim|.../Supply.lean:72>) \<rightarrow\>
  <verbatim|.Clockwork.offer> (<verbatim|.../Calendar.lean:75>)>|<cell|<verbatim|capital>
  [S]; <verbatim|stage>, <verbatim|offer>
  [G]>|<cell|<verbatim|JointLoad.Clockwork.opened>>>>>>

  <strong|Statements and order of constants> [S].

  <\itemize-minus>
    <item><em|Energy.> <verbatim|Grants>: <verbatim|\<exists\> i, \<forall\>
    L \<geq\> i, \<forall\>\<#1DA0\> W, \<exists\> \<kappa\> \<gtr\> 0,
    \<forall\>\<#1DA0\> x,> for every step <verbatim|S> with block factor
    <verbatim|L> and coarse side <verbatim|c \<geq\> 100(1 + B(x))>, every
    tube <verbatim|T> with <verbatim|P.Funds S T>, every forest, store
    <verbatim|A>, fine field <verbatim|U> in tree gauge
    (<verbatim|Stores.SliceSet>), tags <verbatim|k> and coarse field
    <verbatim|V> with <verbatim|Stores.Plot A U k V x W>: <verbatim|\<kappa\>
    \<centerdot\> t(\<beta\>_F(x,L))\<twosuperior\> \<centerdot\> \<sharp\>A
    \<leq\> A.assessed T x U (S.prediction U k) V>. Here <verbatim|B(x) =
    \<lceil\>(log x)\<twosuperior\>\<rceil\>>, <verbatim|\<beta\>_F = x + b_G
    log L>, <verbatim|t(y) = y^{-1/2} exp((log log y)\<twosuperior\>)>. The
    constant <verbatim|\<kappa\>> is chosen after <verbatim|L> and
    <verbatim|W>; the statement is deterministic.

    <item><em|Activities.> <verbatim|Target.issue>: <verbatim|\<exists\> n,
    \<forall\> L \<geq\> n, \<forall\>\<#1DA0\> W, W \<gtr\> 0 \<wedge\>
    \<exists\> \<mu\> \<gtr\> 0,> for every patch <verbatim|D> with the
    branch condition <verbatim|\<exists\> (o : Order G W) (C \<geq\> 0),
    \<forall\>\<#1DA0\> x,> for every step on <verbatim|D> and tube with
    <verbatim|Works P L x S T>: <verbatim|GrantBodies W x \<mu\> L R o C T>,
    and for every fine representation <verbatim|K> with <verbatim|Intake P T
    x K> and <verbatim|Stamp T> on the same tube: <verbatim|Invoices W x
    \<mu\> L R o C T K>. Here <verbatim|R : ConnectedActivityE6.Target G P>
    is an explicit parameter on which <verbatim|n> and all thresholds depend,
    and <verbatim|Works P L x S T> is <verbatim|P.Funds S T \<wedge\>
    S.patch.L = L \<wedge\> 100(1+B(x)) \<leq\> c>. <verbatim|Invoices>
    contains the tree-graph test (<verbatim|Buy>), the rooted sum
    (<verbatim|Sales>) for forced, logarithmic and warning letters, the
    packet bound with gain per seed, and the catastrophe probability bound
    <verbatim|\<leq\> E^{\|v\|}>. Its proof starts from <verbatim|Grant.order
    P>, so this estimate depends on the energy bound.

    <item><em|Jets.> <verbatim|Utopia.whittle>: <verbatim|\<exists\> n,
    \<forall\> L \<geq\> n,> every patch <verbatim|D> with branches, order
    <verbatim|i>, cutoff <verbatim|\<chi\>>, <verbatim|W \<gtr\> 0>,
    <verbatim|\<mu\> \<gtr\> 0>, window constants <verbatim|o>, functions
    <verbatim|v, w> of rate <verbatim|-1/2> (<verbatim|v> eventually
    nonnegative): <verbatim|\<exists\> C' \<geq\> 0> and <verbatim|r> of rate
    <verbatim|0>, <verbatim|\<forall\>\<#1DA0\> x,> for every step on
    <verbatim|D> with <verbatim|Stamp T>, every <verbatim|R>, <verbatim|C>
    and <strong|every bundle <verbatim|H : Cash W x \<mu\> L Q o C T R>>, a
    structure <verbatim|Utopia H i (v x) (w x) (r x) C' \<chi\>> exists. It
    is conditional on a <verbatim|Cash> bundle, i.e. on the output of the
    previous item.

    <item><em|Gaussian sector.> <verbatim|capital>: for a patch <verbatim|H>
    with branches, aperture <verbatim|B \<gtr\> 0>, cutoff <verbatim|q> and
    <verbatim|k, p : \<bbb-N\>>, <verbatim|\<exists\> v : Charges,
    \<forall\>\<#1DA0\> x,> for all <verbatim|0 \<less\> \<beta\> \<leq\>
    2\<beta\>_F>, budget points of power <verbatim|p> and threshold
    <verbatim|t(x)>, funded steps on <verbatim|H> with <verbatim|c \<geq\>
    100(1 + B(x))>, and stores whose flags are the flags of <verbatim|V>:
    <verbatim|Value v x (B\<centerdot\>t(\<beta\>_F)) T A F l V bp k q
    (coupling \<beta\>)>.
  </itemize-minus>

  The orders agree with the external outline's Propositions III.10.1\U10.4.
  In all four, the threshold in <verbatim|x> is chosen last and the statement
  is uniform in the sides <verbatim|c, f> of the step. The teller is fixed
  data: <verbatim|Teller.Funds> requires <verbatim|S.patch.J = P.j> and
  <verbatim|T.R.Deep P.\<eta\> P.C (P.j-2)>, so a stage index does occur as a
  parameter on which every threshold depends [S]. Here "rate <verbatim|a>" is
  <verbatim|ConnectedActivityE6.Rate G L a w>, i.e. for every <verbatim|v
  \<gtr\> a>, eventually <verbatim|\|w x\| \<leq\> \<beta\>_F(x)^v>; it is
  not a bound by <verbatim|\<beta\>_F^a> itself.

  <strong|Consumer.> All four statements are reached from
  <verbatim|Roof.timberT> and from none of <verbatim|Rain.glazing>,
  <verbatim|Use.supplier>, <verbatim|Roost.Factor.worksNow> [G].

  <strong|Incomplete list> (found in the author-side self-check; [S] for the
  statements named, [G] for reachability). The four rows above are not all of
  the one-step estimates that feed the bundle. <verbatim|Roof.employeesT>
  (<verbatim|YM/MergeProof/Retreat.lean:31>) and <verbatim|Roof.honey>
  (<verbatim|.../Roof/Honey.lean:27>) build several fields from other
  theorems of the same shape, each conditional on a <verbatim|Cash> bundle
  and, except <verbatim|Yearling.sterling> (which reaches
  <verbatim|Utopia.whittle>), none of them reaching any of the four anchors
  above: <verbatim|Repeat.Brim.pressings> (<verbatim|.../Brim/Level.lean:61>,
  for <verbatim|pipes>), <verbatim|ConnectedActivityE6.Blaze.March.takeover>
  and <verbatim|Armada.ensemble> (for <verbatim|jewels>),
  <verbatim|Repeat.Yearling.sterling> (<verbatim|.../Yearling/Garter.lean:34>,
  for <verbatim|WorksIn>, through <verbatim|Yearling.batten>), and the inputs
  of <verbatim|Boulevard.emits>, <verbatim|Roof.ensures> and
  <verbatim|Pane.school> (for the other <verbatim|WorksIn> fields). Their
  statements were not read beyond <verbatim|pressings> and their number is
  not established. Contract 1 must either be widened to this family or a
  further contract opened for it.

  <strong|Recommendation: separate, and split in two.>

  <\itemize-minus>
    <item><em|PU-09a, deterministic energy bound.> <verbatim|Teller.Grants>
    is a statement about fields, with no measure. Its proof (completed-square
    identity, kernel defects, row-by-row lower bounds; <verbatim|YM/Bid/>,
    <verbatim|YM/Next/FLUCTUATIONS/>, <verbatim|YM/Work/E01>\U<verbatim|E09>)
    is self-contained and a plausible single-agent unit.

    <item><em|PU-09b, activity and jet bounds.> <verbatim|Target.issue> and
    <verbatim|Utopia.whittle> share the target data, the window constants and
    the Gaussian tail input, and the second is stated for bound bundles
    produced by the first. The <verbatim|JointLoad> chain should be owned
    here as an <em|application> of #12's package 2, cited and not reproved.
    This unit is large: the two statements have separate proofs, and a
    further cut between them (activities; jets) is available if one session
    cannot cover both.
  </itemize-minus>

  <section|Contract 2 \V pre-reset presentation of the blocked density
  (candidate PU-08)><label|contract-2--pre-reset-presentation-of-the-blocked-density-candidate-pu-08>

  <strong|Statement> [E]. <verbatim|YM.PhysicalNext.Repeat.Rain.glazing>,
  <verbatim|YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Rain/Glazing.lean:97>:

  <\verbatim-code>
    Roof.Sheltered A bt u t r Bn J P L R S (1/16) (1/16) (1/8) E q \<eta\>

    \ \ \<rightarrow\> Roof.WorksIn R A.post A.delay S

    \ \ \<rightarrow\> RG.Supply.AsDivisors A.B.a.S

    \ \ \<rightarrow\> (\<forall\> j i, StepStages j i \<rightarrow\> (C j
    i).table = X.O)

    \ \ \<rightarrow\> Use.Offering A.B S p (radiusW Y)
  </verbatim-code>

  Here <verbatim|X : Org.Metals G> (sheet, map prices, chart ratio),
  <verbatim|D> the block factors, and <verbatim|A : Org.Alloy X D> packages
  post-block costs, protection, delays, bar, waits, stock prices and the
  directed input <verbatim|A.B>.

  <strong|Conclusion unfolded> [E] (<verbatim|Use.Offering>,
  <verbatim|YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean:77>). For
  all <verbatim|N>, <verbatim|p>, <verbatim|m \<less\> N>, every <verbatim|l
  \<leq\> u>, and every curve <verbatim|Q> of level-<verbatim|(m+1)>
  representations on <verbatim|[l,u]> that is continuous for the
  level-<verbatim|(m+1)> budget (<verbatim|RG.Shoot.Curve>), alive for the
  recipe (<verbatim|RG.Shoot.Lives>) and with couplings in the band
  <verbatim|RG.Shoot.band A.B.a (m+1)>, there exist a listing <verbatim|X>,
  sources <verbatim|v x>, vacuum terms <verbatim|\<tau\> x>, a forest choice
  <verbatim|T>, bookings <verbatim|d> and a sector cutoff <verbatim|\<chi\>>
  with:

  <\enumerate>
    <item><strong|Exact presentation> (<verbatim|Return.atlas>,
    <verbatim|.../Inputs.lean:70>): for each <verbatim|x>,
    <verbatim|Return.gaussian B N T d \<chi\> r (Q x) = Collection.earlyValue
    X (path N m) clip (budget m) (v x) (Q x).beta (\<tau\> x) (alpha N m)>.
    The left side is the Gaussian-sector formula, <strong|not> the block-spin
    push itself. The identification <verbatim|push = Return.gaussian> is
    <verbatim|Return.earnings> (<verbatim|.../Inputs.lean:56>), obtained from
    <verbatim|SectorChange.committed> under <verbatim|Ringing> and
    <verbatim|Cosmos> [S]. The proof of this item already uses it:
    <verbatim|Rain.sprint \<rightarrow\> Roof.Embrasure.patrons
    \<rightarrow\> Opera.symphony> (<verbatim|.../Opera.lean:95>) proves the
    atlas as Gaussian = push (by <verbatim|earnings>) followed by push =
    <verbatim|earlyValue> (by <verbatim|Song.forward>).
    <verbatim|Return.grants> (<verbatim|.../Inputs.lean:74>) applies
    <verbatim|earnings> again on the reset side to restate the atlas for the
    push.

    <item><strong|Local bounds> (<verbatim|Collection.Local>,
    <verbatim|.../Trays.lean:35>) at the level-<verbatim|m> budget point:
    regularity, forced-family structure and lattice-symmetry moves; regular
    letters with sup-jet bounds summing to at most <verbatim|forecastE a m =
    credit G (params m) * allowance m> (<verbatim|Quotes.early>); forced
    letters with uniform bounds satisfying a rooted sum (<verbatim|Ac.Hit>)
    at support exponent <verbatim|+1> and total <verbatim|forecastK a m S
    \<beta\> = (S (J (m+1)) (J m)).pair.strong (hatBeta (m+1)) \<beta\>>.

    <item><strong|Continuity along the curve>
    (<verbatim|Collection.Compared>, <verbatim|.../Comparison.lean:72>):
    pointwise convergence and a common summable majorant in the budget norm
    (<verbatim|Push.BetaTransport.AtEach>, <verbatim|.Submajorized>).
  </enumerate>

  <strong|Internal structure> [E types, S proof of <verbatim|glazing>]. The
  proof is an assembly of five statements, all under <verbatim|Sheltered>,
  preceded by <verbatim|Rain.learns> (which produces the <verbatim|Rain.Zeal>
  argument of the last four from <verbatim|conducts.income.grow> and
  <verbatim|conducts.full>) and by the choices <verbatim|Tree.select>
  (forest) and <verbatim|Opera.forum> (bookings); the cutoff is always
  <verbatim|Chi.canonical>:

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Step>>|<cell|<strong|Anchor>>|<cell|<strong|Content>>>|<row|<cell|Common
  address structure>|<cell|<verbatim|Roof.arches>,
  <verbatim|.../Roof/Moment.lean:122>>|<cell|From <verbatim|Touring> and the
  curve hypotheses, a <verbatim|Roof.Embrasure>: a guide and price at every
  curve point, matched to a base point with identical molecule
  units.>>|<row|<cell|Uniform truncation>|<cell|<verbatim|Rain.topped>,
  <verbatim|.../Rain/Innings.lean:95>>|<cell|On a compact parameter set,
  eventually in the truncation order <verbatim|d>, the per-site sup bounds
  and the budget <verbatim|(1/16 + 2/16)\<centerdot\>forecastE +
  turnFee\<centerdot\>gold + gold> hold for all
  <verbatim|x>.>>|<row|<cell|Identity>|<cell|<verbatim|Rain.sprint>,
  <verbatim|.../Rain/Glazing.lean:85>>|<cell|Item 1
  above.>>|<row|<cell|Bounds>|<cell|<verbatim|Rain.varnish>,
  <verbatim|.../Rain/Glazing.lean:56>>|<cell|Item 2
  above.>>|<row|<cell|Continuity>|<cell|<verbatim|Rain.blinking>,
  <verbatim|.../Rain/Mir.lean:59>>|<cell|Item 3 above.>>>>>

  <strong|Mathematical dependencies> [G, transitive references of
  <verbatim|glazing>]:

  <\itemize-minus>
    <item>#12 package 1: <verbatim|YM.Next.SectorChange.authorized_change>
    and <verbatim|.committed> (<verbatim|committed> through <verbatim|sprint>
    only, via <verbatim|Return.earnings>; <verbatim|authorized_change> also
    through <verbatim|topped>). #12 packages 2 and 3 are <strong|not>
    reached.

    <item>Start-up fusion H01\UH03 (<verbatim|YM.Work.H01.gathered>,
    <verbatim|H02.answer>, <verbatim|H03.fused_forcedFamily>): the
    exponential regrouping of logarithmic letters.

    <item><verbatim|Repeat.Alabaster.meritBar> and <verbatim|.rimfire> (via
    <verbatim|Repeat.Yearling.ovulation>): difference bounds along the curve.
    The external outline lists these as "additional reset estimates"; in the
    source they serve this contract.

    <item><verbatim|YM.Pressure.Testing.notation_ticket>
    (<verbatim|YM/Pressure/Seeds.lean:166>): the energy bound at trajectory
    positions, obtained from the <verbatim|Ringing> field of
    <verbatim|Use.Machine>, i.e. from the bundle and not from Contract 1
    directly.
  </itemize-minus>

  <strong|Recommendation: separate unit.> It has one stable statement, a
  fixed hypothesis bundle and, on the spine, a single consumer
  (<verbatim|Use.supplier>, whose only referrer is
  <verbatim|Roost.Factor.worksNow>; <verbatim|Use.Offering> also occurs in
  <verbatim|FundedCompanySelection.company> and in about twenty
  <verbatim|Repeat.Legato.*> declarations [G]). The mathematics is the
  polymer reorganisation after Gaussian integration: an exact identity,
  followed by norm bounds that only <em|spend> hypotheses. If one session
  cannot cover it, the natural cut is identity (<verbatim|arches>,
  <verbatim|sprint>) versus bounds and continuity (<verbatim|topped>,
  <verbatim|varnish>, <verbatim|blinking>).

  <section|Contract 3 \V order of constants, bundle and closure (candidate
  PU-10)><label|contract-3--order-of-constants-bundle-and-closure-candidate-pu-10>

  <strong|(a) Bundle existence> [E]. <verbatim|YM.PhysicalNext.Repeat.Roof.timberT>,
  <verbatim|YM/MergeProof/Retreat.lean:44>, for simple <verbatim|G> and a
  purchased schedule <verbatim|ThroughLaunch.PaidView s O K u g k r X
  \<Theta\> v>, and any <verbatim|c\<#2081\>, c\<#2082\>, c \<gtr\> 0>,
  yields <verbatim|Roof.Sheltered> for every admissible choice.
  <verbatim|YM.PhysicalNext.Repeat.Roost.commerce>
  (<verbatim|YM/MergeProof/Trading.lean:20>) calls it at <verbatim|(1/16,
  1/16, 1/8)> and adds <verbatim|WorksIn>, <verbatim|Use.Origins> (via
  <verbatim|Use.from_menu>) and the offering (via <verbatim|Rain.glazing>)
  [S, <verbatim|Trading.lean> lines 33\U48]. <verbatim|WorksIn> comes from
  <verbatim|Roof.honey> (<verbatim|.../Roof/Honey.lean:27>), fed with the
  <verbatim|wanting = -7/16> clause and with <verbatim|Yearling.batten :
  \<exists\> M, Yearling.Hood s K X M>; <verbatim|honey> returns a delay
  threshold <verbatim|U> beyond which <verbatim|WorksIn> holds.
  <verbatim|commerce> therefore raises <verbatim|timberT>'s floor
  <verbatim|j> to <verbatim|m \<sqcup\> j> and inserts <verbatim|honey>'s
  delay threshold before applying <verbatim|timberT>.

  <verbatim|PaidView> (<verbatim|YM/MergeProof/Seaside.lean:62>) is a
  hypothesis, not an output [E]. Its field <verbatim|ship> states that for
  all block-factor records above <verbatim|v> and all block factors there is
  a stationary budget gap <verbatim|\<eta\>>, and for every admissible
  post-block cost, protection, tariff, floor <verbatim|z> and delays there
  are boosted delays beyond which hold: start-up prices
  (<verbatim|Further.StrongStartup.Prices>), <verbatim|Stock.Priced>, the
  scheduled energy bound <verbatim|Pressure.Testing.Ringing>, the Gaussian
  run hypothesis <verbatim|Next.SectorChange.Cosmos>, and for every paid
  level system a budget, a prepared multi-source scope and a
  <verbatim|ThroughLaunch.Torrent>. It is constructed by
  <verbatim|ThroughLaunch.sailsV> (<verbatim|YM/MergeProof/Seaside.lean:96>),
  which reaches <verbatim|Fluctuations.pressure_pricing>,
  <verbatim|Bid.pricing_order>, <verbatim|Extra.Multi.pricing>,
  <verbatim|Further.StrongStartup.prices> and
  <verbatim|ThroughLaunch.developer>, and does not reach
  <verbatim|Target.issue>, <verbatim|Rain.glazing> or
  <verbatim|Roost.commerce> [G]. So the energy bound enters the step twice:
  scheduled, through <verbatim|PaidView>, and unscheduled, through
  <verbatim|Target.issue> inside <verbatim|timberT>.

  <strong|Order of choice> [E], read off the alternation of quantifiers in
  <verbatim|commerce>:

  <\enumerate>
    <item><verbatim|\<exists\>> block-factor floors <verbatim|j \<geq\> v>,
    programs <verbatim|C>, wages <verbatim|z>, targets <verbatim|R> (chart
    <verbatim|Next.Foundations.chart G>, halo <verbatim|500>), expenses
    <verbatim|E> (<verbatim|earn = Roof.rays s i k>, <verbatim|wanting =
    -7/16>, degree <verbatim|0>), baton <verbatim|bt>;

    <item><verbatim|\<forall\>> block-factor records <verbatim|l \<geq\> j>
    and <verbatim|\<forall\>> block factors <verbatim|D>;

    <item><verbatim|\<exists\>> wage floor <verbatim|y>,
    <verbatim|\<forall\>> wages <verbatim|w \<geq\> y>, <verbatim|\<exists\>>
    register <verbatim|R'> and cafés <verbatim|B>;

    <item><verbatim|\<forall\>> postage <verbatim|K'>, <verbatim|\<exists\>>
    smaller postage <verbatim|F> and scouts <verbatim|S>;

    <item><verbatim|\<forall\>> exchange <verbatim|E\<#2080\>> and tariff
    <verbatim|\<xi\>>, <verbatim|\<exists\>> reset prices <verbatim|q>,
    sensor constants <verbatim|\<eta\>>, post-block costs <verbatim|P>;

    <item><verbatim|\<forall\>> protection ceiling
    <verbatim|\<theta\>\<#2080\> \<gtr\> 0>, <verbatim|\<exists\>> protection
    <verbatim|\<theta\> \<leq\> \<theta\>\<#2080\>> and records <verbatim|p>
    with <verbatim|\<varepsilon\> \<leq\> 1/4>;

    <item><verbatim|\<forall\>> menus <verbatim|Q> and delays <verbatim|U>,
    <verbatim|\<exists\>> booths <verbatim|b>, <verbatim|\<forall\>>
    auxiliaries <verbatim|J>, <verbatim|\<exists\>> ordered delays
    <verbatim|W \<geq\> U>;

    <item><verbatim|\<forall\>> delays <verbatim|V \<geq\> W>, bars
    <verbatim|Z>, waits <verbatim|I> and levels <verbatim|a> with
    <verbatim|RG.Supply.Paid I a>: <verbatim|Doors.Budget a k r>,
    <verbatim|Extra.Multi.Prepared>, and <verbatim|\<exists\>> stock prices
    and a directed input <verbatim|B'> with <verbatim|B'.a = a> for which the
    bundle, <verbatim|WorksIn>, <verbatim|Origins>, \V under
    <verbatim|AsDivisors a.S> \V the offering, and a
    <verbatim|RankCovariance.ShapePort> hold.
  </enumerate>

  The delays (<verbatim|betaEntry>, the entry couplings, together with
  <verbatim|scaleEntry>, <verbatim|shells> and <verbatim|growth>) are
  therefore chosen after every constant and may always be increased; only
  <verbatim|Z>, <verbatim|I>, <verbatim|a> and the directed input
  <verbatim|B'> follow them. Block factors precede every analytic constant
  except the target data, programs, wages, expenses and the baton. The
  indices <verbatim|N>, <verbatim|p>, <verbatim|m> are quantified inside
  <verbatim|Offering> and <verbatim|Program>, after all of the above: this is
  the uniformity required at the next scale. Their reading is not settled by
  this audit: in <verbatim|Program.begins> the start-up curve lives at level
  <verbatim|N> and steps run from <verbatim|m+1> to <verbatim|m \<less\> N>,
  and <verbatim|p> indexes <verbatim|a.S.side m p>, which suggests
  <verbatim|N> = cutoff level, <verbatim|m> = current scale, <verbatim|p> =
  volume index.

  <strong|(b) Reset side of the bundle> [E].
  <verbatim|Roof.Sheltered.conducts.machine : Use.Machine>
  (<verbatim|.../Downstream.lean:41>) carries the reset's numerical
  conditions: the recipe identity, opened shops, coverage inequalities, the
  cubic gate for all <verbatim|x> above the entry coupling,
  <verbatim|PricedReset>, the scheduled energy bound
  <verbatim|Pressure.Testing.Ringing>, and <verbatim|Cosmos>.
  <verbatim|Ringing> and <verbatim|Cosmos> are carried over from
  <verbatim|PaidView.ship> (see (a)); the reset numerics are established
  inside <verbatim|timberT> (through <verbatim|Repeat.commissioning>, not
  read), which reaches <verbatim|UVNext.CouplingReset.buys_reset>,
  <verbatim|.can_delay_reset>, <verbatim|.sensor>,
  <verbatim|VerifiedReset.Time.beforeWait> and <verbatim|Time.cash> [G]. This
  is where III.9's entry thresholds and III.2's ledger enter the step.

  <strong|(c) Closure> [E, S]. <verbatim|Roost.Factor.worksNow>
  (<verbatim|.../Roost/Foundry.lean:59>):

  <\verbatim-code>
    worksNow := CouplingReset.program R.machine.prices

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ (Use.supplier hG R.machine R.offering
    R.originsHere)
  </verbatim-code>

  <verbatim|Use.supplier> (<verbatim|.../Downstream.lean:85>) turns the
  offering into the reset's <verbatim|Income> and <verbatim|Remainder>
  hypotheses through <verbatim|Machine.packet> (<verbatim|Return.grants>,
  <verbatim|Return.earns>, <verbatim|Return.remainders>);
  <verbatim|UVNext.CouplingReset.program>
  (<verbatim|YM/UVNext/COUPLING_RESET/Stability.lean:67>) gives
  <verbatim|Input.Directed.Program> (<verbatim|YM/PCalc/Band.lean:65>):
  start-up curves at every <verbatim|N, p>, and for every <verbatim|m
  \<less\> N> and every admissible input curve a continuous output curve with
  <verbatim|Directed.Move> at each point \V exact push identity
  <verbatim|u.eval = push v.beta v.eval>, recipe step, <verbatim|Lives>, the
  forced bound <verbatim|exp(-P.g(J(m+1)) \<centerdot\>
  monitor(m+1)\<twosuperior\>)>, and the coupling increment bound
  <verbatim|\|u.beta - v.beta - alpha N m\| \<leq\> 1> (five fields [E]).
  <verbatim|worksNow> is conditional on what <verbatim|Roost.Factor> assumes
  beyond <verbatim|Sheltered> at <verbatim|(1/16, 1/16, 1/8)>:
  <verbatim|WorksIn>, <verbatim|AsDivisors A.B.a.S>, and the target-table
  condition for all <verbatim|j, i>.

  <strong|Dependency check> [G]. <verbatim|glazing> reaches neither
  <verbatim|Return.reset> nor <verbatim|CouplingReset.advance>;
  <verbatim|Use.supplier> and <verbatim|program> do not reach
  <verbatim|glazing> or <verbatim|timberT>; <verbatim|timberT> does not reach
  <verbatim|glazing>. No cycle was found on the spine. This is a statement
  about reference edges among the listed declarations, not about the whole
  cluster.

  <strong|Recommendation: separate unit>, owning the order of constants, the
  assembly of the bundle fields from the one-step theorems (those of Contract
  1 and the further family listed there), and the two-line closure. It should
  <em|cite> PU-07 for <verbatim|program>, <verbatim|supplier> and the reset
  price lemmas, and BG-04 for the ledger. <verbatim|Roost.Factor> and its
  projections are packaging and can be suppressed.

  <section|Proposed ownership and order><label|proposed-ownership-and-order>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Candidate>>|<cell|<strong|Owns>>|<cell|<strong|Depends
  on>>|<cell|<strong|Consumer>>>|<row|<cell|PU-09a>|<cell|<verbatim|Fluctuations.grants>,
  <verbatim|Teller.Grants>>|<cell|III.1, III.3>|<cell|PU-10>>|<row|<cell|PU-09b>|<cell|<verbatim|Target.issue>,
  <verbatim|Cash>, <verbatim|Utopia.whittle>; applies
  <verbatim|JointLoad.capital \<rightarrow\> stage \<rightarrow\>
  offer>>|<cell|#12 package 2, PU-04, PU-05/06>|<cell|PU-10>>|<row|<cell|PU-10
  (a,b)>|<cell|<verbatim|Roof.timberT>, <verbatim|Roof.employeesT>,
  <verbatim|Roof.honey>, <verbatim|Roost.commerce>,
  <verbatim|Yearling.batten>, bundle definitions>|<cell|PU-09a/b, the unowned
  one-step family below, PU-07 price lemmas, BG-04>|<cell|PU-08,
  PU-07>>|<row|<cell|<em|unowned>>|<cell|<verbatim|Brim.pressings>,
  <verbatim|March.takeover>, <verbatim|Armada.ensemble>,
  <verbatim|Yearling.sterling> and the inputs of <verbatim|Boulevard.emits>,
  <verbatim|Roof.ensures>, <verbatim|Pane.school>>|<cell|<verbatim|Cash>
  (PU-09b)>|<cell|PU-10 (a,b)>>|<row|<cell|PU-08>|<cell|<verbatim|Rain.glazing>
  and its five steps, <verbatim|Use.Offering>>|<cell|bundle statement, #12
  package 1, H01\UH03>|<cell|PU-07 via <verbatim|Use.supplier>>>|<row|<cell|PU-10
  (c)>|<cell|<verbatim|Roost.Factor.worksNow>>|<cell|PU-08,
  PU-07>|<cell|trajectory and shooting (<verbatim|Graces.winnow>,
  <verbatim|FullVolume.rodB>, <verbatim|UVExtension.Orchard.ministry>)>>>>>

  <verbatim|unit-plan.md> currently lists PU-09 as depending on PU-08. The
  source order is the reverse; that file is outside this task and should be
  corrected by its owner once this note is reviewed.

  <strong|Not owned by PU-08\UPU-10> [G]:

  <\itemize-minus>
    <item><verbatim|Repeat.Daisy.timing> (integrated molecule bound,
    III.10.3): not reached from any spine declaration; its only direct
    consumer is <verbatim|Repeat.Daisy.Charity.rocketsC> (then
    <verbatim|Charity.awakening>, <verbatim|Charity.RG12.annex>). An earlier
    draft named <verbatim|YM/FullVolume/Florid/> as a consumer; no
    declaration there refers to it. Candidate for PU-13.

    <item><verbatim|Fluctuations.pressure_pricing> (III.10.5a): consumed by
    <verbatim|YM.Extra.Multi.pricing> and reached from
    <verbatim|ThroughLaunch.sailsV>, the constructor of <verbatim|PaidView>.
    It is an <em|input> to PU-10, to be owned with the schedule (BG-04,
    III.2) or with PU-09a as its scheduled corollary.

    <item><verbatim|RG.Supply.Wait.engine> (III.10.5b, divisible periods):
    consumed by <verbatim|YM.Pert.deeper>,
    <verbatim|Repeat.Legato.noel_columns>, <verbatim|Repeat.Legato.uv_log>
    and further <verbatim|Repeat.Legato.*> declarations; not reached from
    <verbatim|sailsV> or from the spine. Candidate for BG-04.

    <item><verbatim|YM.Work.I01>, <verbatim|I03>, <verbatim|I04> (markers):
    not reached from the spine.

    <item><verbatim|YM.Work.H04.answer> (continuity of fusion): reached from
    <verbatim|worksNow> but not from <verbatim|glazing>; it belongs to the
    start-up side (PU-07).

    <item><verbatim|YM.AnalyticBridge.RelativeLogdet.Priced.chains>,
    <verbatim|YM.Next.Rank.determinant> and <verbatim|Dyed.cardinal_spin> are
    not reached from the spine: the determinant normalisation is entirely
    #14's.
  </itemize-minus>

  <section|Obstructions and requested follow-up><label|obstructions-and-requested-follow-up>

  <\enumerate>
    <item><strong|The bundle is unfolded to two levels only.> The table gives
    each field of <verbatim|Roof.Sheltered>
    (<verbatim|.../Roof/Income.lean:20>) and <verbatim|Roof.WorksIn>
    (<verbatim|.../Roof/Honey.lean:22>) as printed [E]. "Scheduled" means:
    for all <verbatim|j, i> with <verbatim|StepStages j i> and all
    <verbatim|x \<geq\> W.betaEntry j>, at block factor <verbatim|D.L j>.

    <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Field>>|<cell|<strong|Content
    at second level>>|<cell|<strong|Kind>>>|<row|<cell|<verbatim|conducts.hearing
    : Psalm.Stage.Cadence>>|<cell|<verbatim|Heir.Suite.Earlier>,
    <verbatim|Clockwork.Funded>, <verbatim|Heir.Suite.Offers>,
    <verbatim|Folio.Secured>, <verbatim|Psalm.Stage.Listens>, and
    <verbatim|(t j i).\<theta\> \<leq\> (d j i).\<varepsilon\> / 32> for the
    menu <verbatim|t = Solo.guardMenu Q p>>|<cell|Gaussian-sector prices of
    the <verbatim|JointLoad> chain; not unfolded>>|<row|<cell|<verbatim|conducts.sustains
    : Psalm.Solo.Sustained>>|<cell|scheduled
    <verbatim|Psalm.Solo.Reset>>|<cell|not
    unfolded>>|<row|<cell|<verbatim|conducts.machine :
    Use.Machine>>|<cell|recipe identity, shops, coverage, cubic gate,
    <verbatim|PricedReset>, <verbatim|Ringing>,
    <verbatim|Cosmos>>|<cell|reset numerics and scheduled energy
    bound>>|<row|<cell|<verbatim|conducts.starts>>|<cell|<verbatim|Progress.DirectedRecipe.Origins>>|<cell|start-up
    curves>>|<row|<cell|<verbatim|conducts.full : Bid.Sworn>>|<cell|the gauge
    quadratic form of every bed is invariant under the signed lattice
    moves>|<cell|symmetry of the free kernels>>|<row|<cell|<verbatim|conducts.income.grow
    : Planning.Permits>>|<cell|on the register
    <verbatim|Planning.Purchase>>|<cell|scheduled activity bundle; not
    unfolded>>|<row|<cell|<verbatim|conducts.income.earns>>|<cell|scheduled
    <verbatim|Cash.armK \<leq\> c \<centerdot\> pair.strong(\<beta\>_F,
    \<beta\>)> for <verbatim|\<beta\>> in the band>|<cell|numerical: forced
    weight within <verbatim|forecastK>>>|<row|<cell|<verbatim|agenda>>|<cell|support
    exponent <verbatim|+3 \<leq\>> earn rate and <verbatim|\<leq\> t>; halo
    <verbatim|+5 \<leq\> r>>|<cell|numerical>>|<row|<cell|<verbatim|range :
    Opera.Treble>>|<cell|scheduled <verbatim|(a + 3)/B(x) \<leq\>
    width/2>>|<cell|numerical>>|<row|<cell|<verbatim|pipes : Roof.Pew>
    \<rightarrow\> <verbatim|Roof.Verandah>>|<cell|for every step with
    <verbatim|Works>, every <verbatim|Cash> bundle, budget point and
    <verbatim|March.Captain> jet bundle: <verbatim|Brim.Houses> at prices
    <verbatim|Height.heap G (s.profile i) c\<#2082\> \<centerdot\>
    \<delta\>E(x)>; guarded by <verbatim|s.first \<leq\> i> and further
    <verbatim|Verandah> side conditions not listed here>|<cell|scheduled
    analytic estimate, conditional on <verbatim|Cash>>>|<row|<cell|<verbatim|peak
    : Height.Rich>>|<cell|scheduled <verbatim|1 \<leq\> X>,
    <verbatim|X\<threesuperior\> \<leq\> exp(mark)>, tree degree price
    <verbatim|\<leq\> 1/2>, and further clauses>|<cell|numerical; read in
    part>>|<row|<cell|<verbatim|jewels : Height.Tenement> \<rightarrow\>
    <verbatim|Height.Skill>>|<cell|growth inequality, and for every step with
    <verbatim|Works>, <verbatim|Stamp> and <verbatim|Cash> bundle: existence
    of a <verbatim|Silica.Heavy> conduit and <verbatim|March.Armada> with
    <verbatim|collars \<centerdot\> salary \<centerdot\> 2 \<leq\>
    \<beta\>_F^{wanting}>>|<cell|scheduled analytic estimate with rate
    <verbatim|-7/16>>>|<row|<cell|<verbatim|WorksIn.chip :
    Boulevard.Pollened>>|<cell|scheduled <verbatim|Boulevard.Portaged>>|<cell|not
    unfolded>>|<row|<cell|<verbatim|WorksIn.year :
    Yearling.Acre>>|<cell|scheduled <verbatim|Yearling.Stargaze>>|<cell|not
    unfolded>>|<row|<cell|<verbatim|WorksIn.terms :
    Roof.Autumn>>|<cell|scheduled <verbatim|Roof.pan>; shell and growth
    sizes>|<cell|not unfolded; sizes numerical>>|<row|<cell|<verbatim|WorksIn.plaza
    : Pane.Planks>>|<cell|scheduled <verbatim|Pane.Morning>>|<cell|not
    unfolded>>>>>

    The analytic fields quantify over <em|all> <verbatim|Cash> bundles and
    all steps, so they are one-step statements evaluated above the entry
    coupling, not new estimates on a trajectory [E]. An earlier draft
    concluded that they are therefore consequences of Contract 1; that
    inference was wrong. The last line of <verbatim|Roof.employeesT>
    (<verbatim|YM/MergeProof/Retreat.lean:31\U41>) shows which lemma yields
    each field of <verbatim|Sheltered> [S]:

    <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Field>>|<cell|<strong|Produced
    by>>|<cell|<strong|Reaches a Contract 1 anchor?
    [G]>>>|<row|<cell|<verbatim|conducts>>|<cell|<verbatim|Repeat.commissioning>
    (<verbatim|YM/MergeProof/Serenity.lean:29>)>|<cell|<verbatim|JointLoad.capital>
    chain only>>|<row|<cell|<verbatim|agenda>>|<cell|hypothesis of
    <verbatim|employeesT> (numerical)>|<cell|\V>>|<row|<cell|<verbatim|range>>|<cell|<verbatim|Opera.conducts>>|<cell|none>>|<row|<cell|<verbatim|pipes>>|<cell|<verbatim|Roof.pews>
    \<rightarrow\> <verbatim|Roof.tapes> \<rightarrow\>
    <verbatim|Brim.pressings>>|<cell|none (it reaches
    <verbatim|SectorAffine.assembly>, #12 package
    2)>>|<row|<cell|<verbatim|peak>>|<cell|<verbatim|Height.season>>|<cell|none>>|<row|<cell|<verbatim|jewels>>|<cell|<verbatim|Height.haste>
    \<leftarrow\> <verbatim|Height.beneath> \<leftarrow\>
    <verbatim|March.takeover>, <verbatim|Armada.ensemble>>|<cell|none>>>>>

    <verbatim|WorksIn> is produced by <verbatim|Roof.honey> from
    <verbatim|Boulevard.emits>, <verbatim|Yearling.brine> (\<leftarrow\>
    <verbatim|Yearling.batten> \<leftarrow\> <verbatim|Yearling.sterling>),
    <verbatim|Roof.ensures> and <verbatim|Pane.school>.
    <verbatim|Repeat.budgets> (<verbatim|.../Instruments.lean:36>),
    <verbatim|Height.beneath>, <verbatim|Roof.faceting> and
    <verbatim|Repeat.pockets> (<verbatim|.../Rent.lean:76>) discharge
    hypotheses of <verbatim|employeesT> inside <verbatim|timberT>;
    <verbatim|budgets> is the one that reaches
    <verbatim|Fluctuations.grants>, <verbatim|Target.issue> and
    <verbatim|Utopia.whittle>. (An earlier draft cited
    <verbatim|Roof.budgets> and <verbatim|Roof.pockets>, which do not exist.)

    <verbatim|conducts.full> is a field of the <em|conclusion> of
    <verbatim|timberT>, so it is a hypothesis of <verbatim|Rain.glazing>
    only; <verbatim|timberT> delivers it from <verbatim|G.Simple> and
    <verbatim|PaidView>, whose <verbatim|Torrent> already carries a
    <verbatim|Bid.Sworn> clause. It is stated for the realised horizon of the
    directed input. The external outline (Ÿ7, item 2) is reported to record
    its proof along the selected trajectory as unchecked; that document was
    not re-read for this claim. <em|Remaining follow-up:> unfold the
    third-level predicates named in the table, and read the statements of the
    further one-step theorems.

    <item><strong|<verbatim|Cash>, <verbatim|JointLoad.stage> and
    <verbatim|Clockwork.offer> remain [G]>; the other Contract 1 statements
    were read in source, not all of their defining predicates
    (<verbatim|Works>, <verbatim|Intake>, <verbatim|Stamp>, <verbatim|Sales>,
    <verbatim|Buy>, <verbatim|Ticket>).

    <item><strong|Three closure variants are in the headline closure:>
    <verbatim|Roost.commerce> (hypothesis <verbatim|PaidView>; consumer
    <verbatim|Repeat.Legato.expenders>), <verbatim|Roost.companyK>
    (<verbatim|ThroughLaunch.Perceived> and a <verbatim|\<tau\> \<gtr\> 0>,
    <verbatim|YM/FullVolume/Roll/Linger.lean:23>; consumer
    <verbatim|YM.Integration.NativeSelection.FundedCompanySelection.company>)
    and <verbatim|Roost.uv_commerce> (<verbatim|UVExtension.Case.Purchased>
    and a <verbatim|Guild.Tool>, <verbatim|YM/UVExtension/Case/Trading.lean:22>;
    consumer <verbatim|Repeat.Legato.multitude>). Their conclusions differ in
    at least one clause (<verbatim|companyK> adds <verbatim|Repeat.Pocket R'
    S>). Which variant each headline result uses, and whether one statement
    implies the others, is open. <verbatim|Roost.company> and
    <verbatim|Roost.commerceUV> are outside the closure.

    <item><strong|<verbatim|Return.gaussian> versus the push.> The step's
    output identity is for the Gaussian-sector expression. The licence and
    the equality with the push are <verbatim|Return.earnings>, which is used
    on both sides: by PU-08's identity step (through
    <verbatim|Opera.symphony>) and by the reset (<verbatim|Return.grants>).
    It should be stated once, as an application of #12's package 1, and cited
    by both.

    <item><strong|Shared notation.> <verbatim|forecastE>,
    <verbatim|forecastK>, budget points, "curve" and "lives" need glossary
    names; referred to #10.
  </enumerate>

  <section|Literature leads (unverified)><label|literature-leads-unverified>

  No statement below has been compared with the source's definitions.

  <\itemize-minus>
    <item>T. Baªaban, <em|Renormalization group approach to lattice gauge
    field theories> I\UII, Comm. Math. Phys. 109 (1987) and 116 (1988);
    <em|Large field renormalization> I\UII, Comm. Math. Phys. 122 (1989):
    small-field step, R-operation and large-field bounds. Threshold
    <verbatim|x^{-1/2} e^{(log log x)\<twosuperior\>}> and the hysteresis
    conventions are to be compared with his <verbatim|p(g)> regions.

    <item>R. Kotecký, D. Preiss, Comm. Math. Phys. 103 (1986): rooted polymer
    sums.

    <item>J. Dimock, <em|The renormalization group according to Balaban>
    I\UIII: a possible model for the exposition of Contract 2; applicability
    unchecked.
  </itemize-minus>

  <section|Evidence><label|evidence>

  Inspection used a sibling checkout <verbatim|../OpenAI-YM> of the upstream
  project at commit <verbatim|1dba6965d734bac06951579601b90e985033ee45>,
  which adds only a CI workflow and <verbatim|.gitignore> to
  <verbatim|3456e5e>; <verbatim|diff -rq ../OpenAI-YM/YM Lean/YM> printed
  nothing. It contains a completed build (9470 <verbatim|.olean> files under
  <verbatim|.lake/build/lib> for 9457 sources; toolchain
  <verbatim|leanprover/lean4:v4.32.0>). The build itself was not run or
  re-verified in this session.

  <\itemize-minus>
    <item><verbatim|lake env lean t1.lean> with <verbatim|#check
    @YM.Next.Fluctuations.grants>: <verbatim|\<forall\> {G : Gauge} (P :
    Pressure.Teller G), P.Grants>.

    <item><verbatim|lake env lean t2.lean>, <verbatim|t3.lean> (options
    <verbatim|pp.proofs false>, <verbatim|pp.deepTerms true>):
    <verbatim|#check>/<verbatim|#print> of <verbatim|Rain.glazing>,
    <verbatim|Rain.sprint>, <verbatim|Rain.varnish>,
    <verbatim|Rain.blinking>, <verbatim|Rain.topped>, <verbatim|Roof.arches>,
    <verbatim|Roof.timberT>, <verbatim|Roost.commerce>,
    <verbatim|Roost.companyK>, <verbatim|Roost.uv_commerce>,
    <verbatim|Roost.Factor.worksNow>, <verbatim|Graces.winnow>,
    <verbatim|CouplingReset.program>, <verbatim|Roof.Sheltered>,
    <verbatim|Touring>, <verbatim|Roof.WorksIn>, <verbatim|Roof.Pew>,
    <verbatim|Height.Rich>, <verbatim|Height.Tenement>,
    <verbatim|Opera.Treble>, <verbatim|Roof.Embrasure>,
    <verbatim|Return.atlas>, <verbatim|Collection.Local>,
    <verbatim|Collection.Compared>, <verbatim|Time.forecastE>,
    <verbatim|Time.forecastK>, <verbatim|CouplingReset.Supplier>,
    <verbatim|Usable>, <verbatim|Income>, <verbatim|Remainder>,
    <verbatim|Input.Directed.Program>, <verbatim|Input.Directed.Move>,
    <verbatim|ThroughLaunch.PaidView>, <verbatim|Org.Alloy>,
    <verbatim|Org.Metals>. Two mistyped names
    (<verbatim|YM.RG.Shoot.Directed.Program>, <verbatim|.Move>) gave "unknown
    constant" and were re-queried under <verbatim|YM.Input.Directed>.
    <verbatim|Height.Rich>, <verbatim|Income>, <verbatim|Remainder> and
    <verbatim|PaidView> were printed but only partly read.

    <item><verbatim|#print axioms> for <verbatim|Roost.Factor.worksNow> and
    <verbatim|Roost.commerce>: <verbatim|[propext, Classical.choice,
    Quot.sound]> each.

    <item>Source read: <verbatim|.../Rain/Glazing.lean> (whole file),
    <verbatim|.../Roost/Foundry.lean> (whole file),
    <verbatim|YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean> lines
    14\U95, <verbatim|YM/MergeProof/Trading.lean> lines 15\U40,
    <verbatim|YM/MergeProof/Retreat.lean> lines 40\U64,
    <verbatim|YM/Pressure/Seeds.lean> lines 86\U183,
    <verbatim|.../CONNECTED_ACTIVITY_JETS_E6/Issue.lean> lines 25\U110,
    <verbatim|.../CONNECTED_ACTIVITY_JETS_E6/Das.lean> lines 24\U62,
    <verbatim|.../V9_JOINT_ENDPOINT_LOAD/Costs.lean> lines 30\U100.

    <item><verbatim|lake env lean t4.lean>: <verbatim|#print> of
    <verbatim|Psalm.Stage.Cadence>, <verbatim|Psalm.Solo.Sustained>,
    <verbatim|Receiving>, <verbatim|Roof.Verandah>, <verbatim|Height.Skill>,
    <verbatim|Boulevard.Pollened>, <verbatim|Yearling.Acre>,
    <verbatim|Roof.Autumn>, <verbatim|Pane.Planks>, <verbatim|Bid.Sworn>,
    <verbatim|Service.simpleOrigins>, <verbatim|Register>,
    <verbatim|Targets>, <verbatim|Expenses>; no errors.

    <item><strong|[G] graph.> <verbatim|../OpenAI-YM/graph-compiled/{nodes,refs}.tsv>
    is an untracked local artifact of that checkout (170 498 nodes, 15 186
    855 reference rows, a <verbatim|reached> flag for the headline closure).
    It is not part of this repository and its generation was not audited;
    every [G] claim should be reproduced by the reviewer. Three short Python
    scripts computed (i) theorems of the five packages referenced from
    outside them by reached declarations: 1518 (678 in
    <verbatim|RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP>, 517 in
    <verbatim|CONNECTED_ACTIVITY_JETS_E6>, 153 in <verbatim|Bid>, 128 in
    <verbatim|V9_JOINT_ENDPOINT_LOAD>, 42 in <verbatim|Next/FLUCTUATIONS>);
    (ii) transitive reference closures of the spine declarations against the
    anchors named above; (iii) direct referrers of each anchor.

    <item>Overlap search: issues #2\U#15, #22, #26, #29 and PR #18 at
    2026-11-11 20:56 UTC; <verbatim|Bots/notes/> is empty. #12's merged audit
    was read for its consumer edges.
  </itemize-minus>

  <strong|Not done:> no proof body other than those listed was read; the
  third-level bundle predicates, <verbatim|Cash>, <verbatim|JointLoad.stage>,
  <verbatim|Clockwork.offer>, the statements of the further one-step
  theorems, the proof of <verbatim|ThroughLaunch.sailsV> and the proof of
  <verbatim|CouplingReset.program> were not inspected; no literature source
  was opened; the Lean project was not rebuilt.

  <strong|Author-side self-check (2026-11-11, after commit
  <verbatim|7c69d33>).> Two fresh agent passes over disjoint halves of this
  note re-elaborated the cited declarations (<verbatim|lake env lean> on
  their own scratch files: <verbatim|#check>, <verbatim|#print>,
  <verbatim|#print axioms>; no errors other than mistyped names), re-ran the
  reference closures on the same graph, and read <verbatim|Retreat.lean>,
  <verbatim|Trading.lean> 20\U48, <verbatim|Opera.lean> 60\U100,
  <verbatim|Inputs.lean> 28\U95, <verbatim|Roof/Honey.lean>,
  <verbatim|Brim/Level.lean> 61\U73 and <verbatim|PCalc/Band.lean>. The
  author then confirmed each reported discrepancy in the source. Corrected as
  a result: the claim that the bundle follows from Contract 1; the names
  <verbatim|Roof.budgets>/<verbatim|Roof.pockets>; the source of
  <verbatim|WorksIn>; where the push identity is used; the consumers of
  <verbatim|Daisy.timing> and <verbatim|Wait.engine>; the field count of
  <verbatim|Directed.Move>; and the smaller items marked "earlier draft"
  above. All cited names, kinds, paths and the four Contract 1 quantifier
  orders were confirmed. This check was run from the author's account and is
  <strong|not> the independent correspondence review.

  <strong|Graph recheck (2026-11-12).> Every reference-closure claim of this
  note was re-run with edges into <verbatim|_private.> declarations followed,
  which the earlier scripts had dropped. One claim changed:
  <verbatim|Yearling.sterling> reaches <verbatim|Utopia.whittle>. The other
  reachability and non-reachability claims were reproduced.

  Agent assistance: Claude Code, directed by <verbatim|mgubi>.
</body>

<\initial>
  <\collection>
    <associate|html-title|Nonlinear RG step interfaces \V working audit,
    issue #13 \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-3|<tuple|3|5>>
    <associate|auto-4|<tuple|4|7>>
    <associate|auto-5|<tuple|5|9>>
    <associate|auto-6|<tuple|6|10>>
    <associate|auto-7|<tuple|7|13>>
    <associate|auto-8|<tuple|8|13>>
    <associate|contract-1--one-step-estimates-at-fixed-constants-candidate-pu-09|<tuple|2|3>>
    <associate|contract-2--pre-reset-presentation-of-the-blocked-density-candidate-pu-08|<tuple|3|5>>
    <associate|contract-3--order-of-constants-bundle-and-closure-candidate-pu-10|<tuple|4|7>>
    <associate|evidence|<tuple|8|13>>
    <associate|literature-leads-unverified|<tuple|7|13>>
    <associate|nonlinear-rg-step-interfaces--working-audit-issue-13|<tuple|?|1>>
    <associate|obstructions-and-requested-follow-up|<tuple|6|10>>
    <associate|proposed-ownership-and-order|<tuple|5|9>>
    <associate|summary-of-findings|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Summary
      of findings> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Contract
      1 \V one-step estimates at fixed constants (candidate PU-09)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Contract
      2 \V pre-reset presentation of the blocked density (candidate PU-08)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Contract
      3 \V order of constants, bundle and closure (candidate PU-10)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Proposed
      ownership and order> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Obstructions
      and requested follow-up> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Literature
      leads (unverified)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Evidence>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>