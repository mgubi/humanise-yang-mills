<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../outline.tm><ym-nav-sep><hlink|Unit
  plan|../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../index.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../glossary.tm><ym-nav-sep><hlink|Notation|../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../source/audit.tm><ym-nav-sep><hlink|Literature|../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../CONTRIBUTING.tm>>

  <ym-title|Rank, determinant and stress handoffs \V working audit, issue
  #14><label|rank-determinant-and-stress-handoffs--working-audit-issue-14>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Summary of
    findings> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Contract A \V
    determinant budget (candidate PU-12)>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Contract B \V
    rank comparison (candidate PU-11)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Contract C \V
    stress tensor and Ward identities (candidate PU-20, III.11 part)>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Handoff table>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
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

  <strong|Status: author draft for independent correspondence review.> This
  is a bounded interface audit of source cluster III.11, not an exposition
  and not an ownership grant. Imported source revision:
  <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>; paths are under
  <verbatim|Lean/>. Scott Armstrong's <hlink|III.11
  outline|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/III-11.md>
  at <verbatim|8f3c7ccaeabb17b0f928bc1a2e75328691de3032> was used for
  navigation only (proposition numbers III.11.1\UIII.11.7 below are that
  outline's); no claim here rests on it. Do not commission explanation tasks
  from this note before it has been reviewed.

  Evidence levels: <strong|[E]> statement elaborated by Lean
  (<verbatim|#check>/<verbatim|#print>); <strong|[S]> source text read;
  <strong|[G]> computed from a compiled declaration graph that is a local,
  unaudited artifact (see Evidence). Anything unmarked is interpretation.

  <section|Summary of findings><label|summary-of-findings>

  <\enumerate>
    <item><strong|The determinant budget is a stable, separate result that
    precedes the rank comparison.> <verbatim|YM.Next.Rank.determinant> and
    <verbatim|YM.Next.Rank.Station.affordable> reference none of the other
    candidate theorems of this cluster, nor the nonlinear step or the
    Gaussian sector [G]; the rank comparison reaches both of them [G]. PU-12
    can be written first and cited by PU-11.

    <item><strong|Two different "determinants" occur, with different
    consumers.> The budget of item 1 is a ratio of Haar integrals on a torus.
    The relative matrix determinant of #12's third package
    (<verbatim|Dyed.cardinal_spin>, <verbatim|Port.book_price>,
    <verbatim|RelativeLogdet.Priced.chains>) is <em|not> referenced by
    <verbatim|Rank.determinant>, by <verbatim|Station.affordable> or by the
    rank theorem <verbatim|MergeProof.Accent.rated> [G]. It enters only
    upstream of one hypothesis of the rank theorem, through
    <verbatim|InteractingRank.Soft.accepts_stock \<rightarrow\> Soft.soluble
    \<rightarrow\> Soft.shapers> [G]. #12's open question "is there a proof
    edge from <verbatim|cardinal_spin> or <verbatim|book_price> to
    <verbatim|Rank.determinant>" has the answer <strong|no> in either
    direction [G].

    <item><strong|The rank comparison is one theorem with three carried
    hypotheses> [E]: <verbatim|MergeProof.Accent.rated>. Its conclusion is an
    extraction record, a <verbatim|Spec.Seed> and <verbatim|Maxwell.Ranks>.
    It does not reference the nonlinear step (<verbatim|Rain.glazing>,
    <verbatim|Roost.Factor.worksNow>) or <verbatim|Next.SectorChange.committed>
    [G]; the RG history enters through the hypotheses.

    <item><strong|The stress theorems do not reference the rank theorem> [G].
    The handoff from rank to stress is a <em|statement>, not a proof
    dependency: <verbatim|Acme.emanate> takes a <verbatim|Spec.Seed> and uses
    only its field <verbatim|corrected : Cells.RankWidths>, through
    <verbatim|Next.UVStress.cap_given : RankWidths \<rightarrow\> DimAbove>,
    plus the seed's extraction fields [S]. <verbatim|Maxwell.Ranks> itself is
    <strong|not> consumed by the stress construction.

    <item><strong|<verbatim|Maxwell.Ranks> is produced twice.> Once by the
    rank theorem, and again from the stress output by
    <verbatim|YM.Climb.comparison : ActLaw \<rightarrow\> Maxwell.Ranks> [E].
    Which of the two the later chapters use is not settled here; it decides
    whether PU-11 must prove the equivariant isomorphism at all or only the
    dimension count.

    <item><strong|The handoff to VI.1 is the record <verbatim|YM.Org.UV>>
    [E]: a seed, the orientation law, the Ward record <verbatim|Climb.Pre>,
    the action law <verbatim|Climb.ActLaw> and the grid condition
    <verbatim|Org.Grill>. Its direct VI.1 consumer is
    <verbatim|Org.Commission.picks> [E]. No consumer of the stress statements
    in V.3 was found; see obstruction 4.

    <item><strong|III.11 as delimited by the external outline is not three
    packages but at least five.> Besides the three in the issue title there
    are the free covariance estimates (III.11.2, III.11.3) and the production
    of trial systems from frequent good scales (III.11.4), each with its own
    statement. A split is proposed below.
  </enumerate>

  <section|Contract A \V determinant budget (candidate
  PU-12)><label|contract-a--determinant-budget-candidate-pu-12>

  <strong|Statements> [E].

  <\itemize-minus>
    <item><verbatim|YM.Next.Rank.determinant>,
    <verbatim|YM/Next/RANK/Determinant.lean:240>. For a representation
    <verbatim|R : RG.Rep G n> with <verbatim|R.Lawful \<sigma\> A \<Lambda\>
    \<delta\> w>, a Haar budget <verbatim|O>, <verbatim|0 \<leq\> R.eval>
    pointwise, <verbatim|1 \<less\> n>, <verbatim|0 \<less\> g \<leq\>
    R.p.threshold>, <verbatim|R.beta * g^2 = 1>, a
    <verbatim|Wilson.prior>-integrable <verbatim|F : Config G n
    \<rightarrow\> \<bbb-C\>>, <verbatim|0 \<leq\> z>, and the pointwise
    bound <verbatim|z * \<\|\|\>F U\<\|\|\> \<leq\> exp (R.exponent U +
    card(Site n) * X)>:

    <\verbatim-code>
      z * \<\|\|\>\<big-int\> F d(prior)\<\|\|\> / \<big-int\> R.eval
      d(prior)

      \ \ \ \ \<leq\> exp (card(Site n) * protection O R A \<Lambda\>
      \<delta\> X g - 4 * G.lieDim * log g)
    </verbatim-code>

    <item><verbatim|YM.Next.Rank.protection>
    (<verbatim|Determinant.lean:225>) [E]: `2 * R.exCost A \<Lambda\>
    \<delta\> + card PlaqAxes + R.beta * RG.baseBudget R.clip A g + X

    <\itemize-arrow>
      <item>3 * ent O R.clip - 4 * log O.small<verbatim|, with >ent O p = log
      O.big - G.lieDim * log (min 1 p.linear)`.
    </itemize-arrow>

    <item><verbatim|YM.Next.Rank.HaarBudget> (<verbatim|Determinant.lean:26>)
    [E]: reals <verbatim|0 \<less\> small \<leq\> 1 \<leq\> big> with
    <verbatim|small * r^lieDim \<leq\> probHaar (shell (r/4))> for
    <verbatim|0 \<less\> r \<leq\> 1> and <verbatim|\<big-int\> exp(-(chord u
    / t)) d(probHaar) \<leq\> big * t^lieDim> for <verbatim|t \<gtr\> 0>.
    <verbatim|YM.Next.Rank.exists_budget : Nonempty (HaarBudget G)> for every
    <verbatim|G>.

    <item><verbatim|YM.Next.Rank.Station.affordable>,
    <verbatim|YM/Next/RANK/StationMeter.lean:119>. For a Haar budget
    <verbatim|O>, levels <verbatim|A : RG.Levels G> and simple <verbatim|G>:
    eventually in the level <verbatim|m>, for every period index
    <verbatim|p>, every representation <verbatim|P> on <verbatim|A.S.side m
    p>, all <verbatim|g \<Lambda\> \<delta\> X> and <verbatim|k : \<bbb-N\>>
    with <verbatim|Station.Meets A m p P g \<Lambda\> \<delta\>> and
    <verbatim|X \<leq\> 1 + k>,

    <\verbatim-code>
      protection O P (A.params m).paths \<Lambda\> \<delta\> X g

      \ \ \ \ - 4 * G.lieDim * log g / card(Site (A.S.side m p))

      \ \ \<leq\> Station.ticket O (A.params m) k
    </verbatim-code>

    <verbatim|Station.Meets> is eight scalar conditions (same clip as the
    stage, <verbatim|P.beta \<leq\> 4 * hatBeta m>, <verbatim|P.beta * g^2 =
    1>, <verbatim|0 \<less\> g \<leq\> P.p.threshold \<leq\> threshold m>,
    <verbatim|\<delta\> \<leq\> 1>, <verbatim|\<Lambda\> \<leq\> loopCap m>);
    <verbatim|Station.ticket> is an explicit expression in the stage data,
    <verbatim|O> and <verbatim|k> [E].
  </itemize-minus>

  <strong|Order of quantifiers.> In <verbatim|determinant> nothing is chosen:
  it is a bound for each fixed torus, representation and <verbatim|g>. In
  <verbatim|affordable> the level threshold depends on <verbatim|O> and
  <verbatim|A> only and is uniform in <verbatim|p>, <verbatim|P>,
  <verbatim|g>, <verbatim|\<Lambda\>>, <verbatim|\<delta\>>, <verbatim|X>,
  <verbatim|k>.

  <strong|Inputs> [G]. The reference closure of <verbatim|determinant>
  contains 273 theorems, in <verbatim|YM/Next/RANK> (41:
  <verbatim|Axial.lean>, <verbatim|Haar.lean>, <verbatim|Determinant.lean>)
  and in the lattice, gauge-group and RG-definition directories. It reaches
  none of: <verbatim|SectorChange.committed>,
  <verbatim|SectorAffine.assembly>, <verbatim|Rain.glazing>,
  <verbatim|Roost.Factor.worksNow>, <verbatim|Fluctuations.grants>,
  <verbatim|Target.issue>, <verbatim|Dyed.cardinal_spin>.
  <verbatim|affordable> (87 theorems) likewise.

  <strong|Consumers> [G]. <verbatim|determinant> has one:
  <verbatim|InteractingRank.Soft.denture> (the same inequality under a
  <verbatim|Soft.Tissue> hypothesis [E]), which is reached by the rank
  theorem along <verbatim|Accent.rated \<rightarrow\> Soft.wheeled
  \<rightarrow\> Soft.v_obtain_purchases \<rightarrow\> Soft.coupon
  \<rightarrow\> Soft.s_postage \<rightarrow\> Soft.denture>.
  <verbatim|affordable> has one: <verbatim|Rank.Ship.banking>, used by
  <verbatim|v_obtain_purchases>.

  <strong|Recommendation: separate unit, before PU-11.> One coherent argument
  (tree gauge, a triangular choice of plaquettes for the numerator, Haar
  shells for the vacuum, cancellation of powers of <verbatim|g>), a short
  statement and a single consumer. The mathematical description of the proof
  is taken from the external outline and was not checked against the proof
  bodies.

  <section|Contract B \V rank comparison (candidate
  PU-11)><label|contract-b--rank-comparison-candidate-pu-11>

  <strong|Main statement> [E]. <verbatim|YM.MergeProof.Accent.rated>,
  <verbatim|YM/MergeProof/Powder.lean:48>. For a Wilson family <verbatim|C>
  with <verbatim|C.Makes>, simple <verbatim|G>, <verbatim|Extraction.Wcmain
  C>, and

  <\itemize-minus>
    <item>(i) <verbatim|MergeProof.Scotia C V Y Xf>
    (<verbatim|YM/MergeProof/Eureka.lean:16>): a presentation <verbatim|Xf>
    with <verbatim|Extract.Affordable> and <verbatim|Extract.RelayCosts>
    along every extraction order, such that for each degree, eventually in
    <verbatim|N> and for all <verbatim|p>, the corrected label map is real
    and equivariant under the signed axis permutations and the step of
    <verbatim|Xf> is the chosen projector of the catalogue [E];

    <item>(ii) <verbatim|MergeProof.Scrim C W u \<psi\> \<varphi\> \<delta\>
    (Bandage.fly \<ldots\>) r D> along gauge-door maps <verbatim|D> between
    successive levels (not unfolded);

    <item>(iii) panels <verbatim|Q>, a chart ratio <verbatim|J> and a binding
    <verbatim|B> such that for every degree <verbatim|i> there are
    <strong|frequently> (<verbatim|\<exists\>\<#1DA0\> j in atTop>) levels
    <verbatim|j> with <verbatim|RankCovariance.Tender v j \<wedge\>
    Tapes.Metering v O j (-3) \<wedge\> \<exists\> l r, ShowHours J B
    (v.current j) j (-3) l r \<wedge\> Soft.Vents B (v.current j) J l r j>,
    where <verbatim|v = Panel.patronize C (Q i) \<ldots\>>;
  </itemize-minus>

  for every extraction order <verbatim|f> there exist a refinement
  <verbatim|g> and <verbatim|A L R Z T E> with <verbatim|Extract.Projected Xf
  (f.refine g) R Z>, <verbatim|Extract.Base C (f.refine g) A L R T E>, a seed
  <verbatim|s : Spec.Seed C (f.refine g) T>, and <verbatim|Maxwell.Ranks T
  s.kernel\<ldots\>>.

  <\itemize-minus>
    <item><verbatim|YM.Spec.Seed> (<verbatim|YM/Spec/Closed.lean:20>) [E]:
    <verbatim|C.Makes>, <verbatim|f.Ordered C S>, <verbatim|f.PointLimits C
    S>, <verbatim|S.Hierarchy>, <verbatim|Cells.CellHyp C f>, and
    <verbatim|Cells.RankWidths C f S := \<forall\> d, \<exists\> X Y,
    Columns.Trials.Valid f Y>.

    <item><verbatim|YM.Maxwell.Ranks> (<verbatim|YM/Euclid/Comparator.lean:135>)
    [E]: a real structure <verbatim|h> on <verbatim|Maxwell.freeTable L.grid>
    and, for every degree <verbatim|d>, a map <verbatim|f> from
    <verbatim|S.Field d> to the free field space intertwining the
    conjugations and the mirror actions of <verbatim|YM.Signed>. That
    <verbatim|f> is a linear isomorphism is as reported by the external
    outline; the binder type was not printed.
  </itemize-minus>

  <strong|Internal statements> [E], in the order in which the proof uses them
  [G]:

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Step>>|<cell|<strong|Anchor>>|<cell|<strong|Statement>>>|<row|<cell|Free
  pair terms (III.11.2)>|<cell|<verbatim|YM.Next.Rank.Prayer.fence>,
  <verbatim|YM/Next/RANK/StrideCost.lean:70>>|<cell|For stencils <verbatim|L,
  S> there is <verbatim|C \<geq\> 0> such that for every configuration of
  distinct points, <verbatim|i \<neq\> j>, a bound <verbatim|D> on the real
  parts of the current covariance, and <verbatim|r \<geq\> 1>: <verbatim|r *
  \<\|\|\>(rescaled pairing) - Prayer.light L S x_i x_j\<\|\|\> \<leq\> C *
  D>.>>|<row|<cell|Free covariance windows
  (III.11.3)>|<cell|<verbatim|YM.PhysicalNext.RankCovariance.window_prices>,
  <verbatim|YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Window.lean:118>>|<cell|For
  <verbatim|\<alpha\>, \<eta\> \<gtr\> 0>, <verbatim|\<Omega\>>, <verbatim|n>
  there is <verbatim|C \<geq\> 0> such that for every regulator <verbatim|f :
  FreeCovariance.KP.Firm \<alpha\> \<Omega\> \<eta\>>, every <verbatim|G> and
  stencils <verbatim|a, b>: <verbatim|Radian.Window (coloredChart f a b) 2 C
  n (chartHeat a b)>. Uniform in the regulator and the
  group.>>|<row|<cell|Frequent scales to provisions>|<cell|<verbatim|YM.PhysicalNext.InteractingRank.Soft.cast_off>,
  <verbatim|\<ldots\>/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Star.lean:64>>|<cell|From
  the four price conditions and <verbatim|LanternMarks M F X k> holding
  frequently in <verbatim|k>: <verbatim|Soft.s_provisions F O X
  M>.>>|<row|<cell|Provisions to trial systems
  (III.11.4)>|<cell|<verbatim|Soft.wheeled>,
  <verbatim|\<ldots\>/Soft/Star.lean:68>; <verbatim|Soft.v_obtain_purchases>,
  <verbatim|\<ldots\>/Soft/Supra.lean:177>>|<cell|<verbatim|\<exists\> Z,
  Soft.Travels_ O p F.fixed Z \<wedge\> Market.Purchases Z>.
  <verbatim|Market.Purchases> (<verbatim|YM/Next/RANK/Bought.lean:68>)
  records the depths, strictly decreasing scales <verbatim|a \<centerdot\>
  monitor^b>, real bounded coefficient vectors with first entry the reference
  unit, convergence of the test configurations, and \V eventually in
  <verbatim|N>, for every <verbatim|p> \V the bound <verbatim|rootTest
  (\<beta\>_{N,p}) (connected part) \<leq\> Z.gap k> for every nonempty set
  of modes.>>>>>

  <verbatim|Accent.rated> reaches <verbatim|Prayer.fence> through
  <verbatim|Soft.wheeled \<rightarrow\> Soft.v_paid_factory \<rightarrow\>
  Wall.on_demand \<rightarrow\> Prayer.penalty>, and <verbatim|window_prices>
  through the definition <verbatim|RankCovariance.Tender \<rightarrow\>
  RankCovariance.prepared> [G].

  <strong|Where the hypotheses are discharged> [E statements, G
  reachability].

  <\itemize-minus>
    <item>(i): <verbatim|YM.MergeProof.reception> (<verbatim|Eureka.lean:22>)
    produces <verbatim|\<exists\> P b, Scotia C R P b> from <verbatim|Makes>,
    <verbatim|Stock.Tabs>, <verbatim|Scrim>, <verbatim|Fridge>, portfolio
    data and simplicity. It is used by <verbatim|YM.PhysicalNext.Repeat.Legato.chaletrail>
    (<verbatim|YM/MergeProof/Inns.lean:33>), which <strong|does> reach the
    nonlinear step's reset (<verbatim|\<ldots\> \<rightarrow\>
    Use.Machine.run \<rightarrow\> Return.reset \<rightarrow\>
    Return.earnings \<rightarrow\> SectorChange.committed>).

    <item>(iii): <verbatim|YM.PhysicalNext.Repeat.Legato.franchise>
    (<verbatim|YM/MergeProof/Snow.lean:55>). From
    <verbatim|InteractingRank.PreStand>, <verbatim|Soft.Shops K s k P
    \<mu\>>, a size condition and an eventual-membership condition, it
    enlarges a waiting window <verbatim|J> to <verbatim|U> and gives the four
    price conditions frequently, for every family paid at <verbatim|U> and
    every binding with the given prices. <verbatim|Soft.Shops> is produced by
    <verbatim|Soft.shapers> (<verbatim|\<exists\> M, Shops B X k p M>), whose
    closure contains <verbatim|Soft.accepts_stock>,
    <verbatim|Dyed.cardinal_spin> and 288 theorems of
    <verbatim|RELATIVE_LOGDET_TRACE> [G]. This is the only place where #12's
    third package meets this cluster.

    <item>The binding: <verbatim|Legato.castle> (<verbatim|Snow.lean:28>),
    from a <verbatim|Roost.Factor> of the nonlinear step and a
    <verbatim|RankCovariance.ShapePort>.

    <item>All three, and the stress hypotheses below, are closed by
    <verbatim|Legato.uv_log> (<verbatim|YM/SharpGram/Assembly/Flowers.lean:75>):
    <verbatim|G.Simple \<rightarrow\> 0 \<less\> b \<rightarrow\> \<exists\>
    C, \<ldots\>> with conclusion containing <verbatim|Makes>,
    <verbatim|Wcmain>, <verbatim|Acme.Aroma C>, <verbatim|Org.Grill>,
    <verbatim|East.CompleteWeak> and, for every <verbatim|f>, the conclusion
    of <verbatim|rated> [E]. <verbatim|uv_log> belongs to III.13.
  </itemize-minus>

  <strong|Recommendation: split in three.> The closure of <verbatim|rated>
  has 7896 theorems [G]; one unit cannot own it.

  <\itemize-minus>
    <item><em|PU-11a, free covariance estimates>: <verbatim|Prayer.fence>,
    <verbatim|window_prices>. Statements about the free Maxwell kernel and
    regulators only; candidates for literature (symbol estimates) with
    project-specific uniformity.

    <item><em|PU-11b, trial systems>: <verbatim|cast_off>,
    <verbatim|wheeled>, <verbatim|v_obtain_purchases>,
    <verbatim|Market.Purchases>. Consumes PU-12 (<verbatim|denture>,
    <verbatim|banking>) and PU-11a. This is the chessboard/root-test
    argument.

    <item><em|PU-11c, rank identification>: <verbatim|Accent.rated> from
    <verbatim|Purchases>, <verbatim|Scotia> and <verbatim|Scrim>: the two
    dimension bounds, the projector conjugation, the seed.
  </itemize-minus>

  The producers <verbatim|franchise>, <verbatim|castle>,
  <verbatim|reception>/<verbatim|chaletrail> are applications of the
  nonlinear step and of #12's third package to the hypotheses of PU-11c. They
  should not be owned by PU-11; whether they go to PU-13 (with
  <verbatim|uv_log>) is a question for the owner of III.13.

  <section|Contract C \V stress tensor and Ward identities (candidate PU-20,
  III.11 part)><label|contract-c--stress-tensor-and-ward-identities-candidate-pu-20-iii11-part>

  <strong|Statements> [E].

  <\itemize-minus>
    <item><verbatim|YM.MergeProof.Acme.readyA>,
    <verbatim|YM/MergeProof/Emanate.lean:15> (III.11.6(a)). Hypotheses:
    <verbatim|C.Makes>, <verbatim|F.Ordered C S>, <verbatim|F.PointLimits C
    S>, <verbatim|H : S.Hierarchy>, <verbatim|Cells.CellHyp C F>,
    <verbatim|W.Inclusions S>, <verbatim|W.Derivatives S>,
    <strong|<verbatim|Next.UVStress.DimAbove S>> (<verbatim|\<forall\> d,
    finrank (S.Field d) \<leq\> finrank ((Climb.Bel L).Field d)>), a free
    model <verbatim|T : Climb.Lighthouse C.book> with hierarchy <verbatim|a>,
    its inclusion, derivative and orientation laws and <verbatim|FreeDiv T a
    p>, <verbatim|Next.UVStress.Stations C F a.spin>, and the shell estimate
    <verbatim|Acme.Aroma C>. Conclusion: <verbatim|W.Orientation H.spin> and
    <verbatim|\<exists\> I X> with <verbatim|I.J \<neq\> 0>, <verbatim|I.J
    \<in\> KernelSpace H.spin>, <verbatim|Approaches (path X) (isoPanel X)>,
    <verbatim|Stable \<ldots\> W T.W X>, <verbatim|X.meter I.J T.J>,
    <verbatim|Climb.Pre H W I.J I.p I.Y> and <verbatim|Climb.ActLaw W T I.J
    H.spin a.spin>.

    <item><verbatim|YM.Climb.Pre> [E]: <verbatim|Table.Conserved V \<ldots\>
    J> (symmetric, real, divergence-free with respect to the plan's
    derivative), <verbatim|Table.RawTensor>, and <verbatim|Table.StressLaws S
    J p Y> (translation and rotation Ward identities: the shell gradient and
    shell spin of <verbatim|J> against a window equal the insertion of
    <verbatim|Y d b B>, respectively <verbatim|A d g B>).

    <item><verbatim|YM.MergeProof.Acme.annular_fieldA>,
    <verbatim|YM/MergeProof/West/Bravo.lean:55> (III.11.7). For a conserved
    stress <verbatim|J>, <verbatim|v : S.Field d>, a smooth Killing field
    <verbatim|U> homogeneous of degree <verbatim|p>, <verbatim|D + (3 + p) =
    d + 4> and <verbatim|Aroma C>: <verbatim|\<exists\> B>, for all
    <verbatim|n>, tags <verbatim|q>, distinct points <verbatim|x> and windows
    <verbatim|\<chi\>>, <verbatim|Work.A01.flux J \<chi\> (U(\<centerdot\> -
    x\<#2080\>)) x q v = Ward.disc (Fin.cons \<langle\>D, B\<rangle\> q) x>.
    It rests on <verbatim|Acme.tenet> (<verbatim|West/Blanca.lean:49>:
    combinations of fluxes annihilated by all degree-<verbatim|D> testers
    vanish) and feeds <verbatim|Acme.shells_law>
    (<verbatim|West/Orange.lean:33>: <verbatim|\<exists\> p Y,
    Table.StressLaws S J p Y>), which <verbatim|readyA> calls [S].

    <item><verbatim|YM.MergeProof.Acme.Aroma> (<verbatim|West/Ozone.lean:16>)
    [E]: <verbatim|Ribbons.Economics C>, <verbatim|Stock.Tabs C.path.levels>
    and a <verbatim|Ribbons.Note>. <verbatim|Economics> is produced by
    <verbatim|Ribbons.laurelE> and the note by <verbatim|Ribbons.fugacious>
    (<verbatim|YM/MergeProof/North/Economist.lean:23, 34>), from
    <verbatim|Scrim>, <verbatim|Legato.Velour>, <verbatim|Tabs>,
    <verbatim|Ribbons.Created> and <verbatim|Makes>.

    <item><verbatim|YM.MergeProof.Acme.emanate>, <verbatim|Emanate.lean:31>
    (III.11.6(b)): <verbatim|Aroma C \<rightarrow\> G.Simple \<rightarrow\>
    Org.Grill C F \<rightarrow\> East.CompleteWeak C F \<rightarrow\>
    Spec.Seed C F S \<rightarrow\> W.Inclusions S \<rightarrow\>
    W.Derivatives S \<rightarrow\> \<exists\> M I, I.J \<neq\> 0 \<wedge\>
    Org.UV C F S W M I>.
  </itemize-minus>

  <strong|How rank feeds stress> [S, proof of <verbatim|emanate>]. The free
  model is taken from <verbatim|Maxwell.Free.maxwell_supplies> and
  <verbatim|UVNext.FreeStress.fire> (VI.2); <verbatim|Stations> is built by
  <verbatim|realizes_stations> from the seed's <verbatim|cutoff>,
  <verbatim|generic>, <verbatim|ordered>, <verbatim|kernel> and from
  <verbatim|CompleteWeak>; and <verbatim|DimAbove> is <verbatim|cap_given
  s.corrected>. Then <verbatim|readyA> is applied. So the stress construction
  consumes from the rank comparison exactly the inequality <verbatim|dim
  F_d(S) \<leq\> dim F_d^free> (as <verbatim|RankWidths>) and the extraction
  fields of the seed. Neither <verbatim|readyA> nor <verbatim|emanate>
  reaches <verbatim|Accent.rated> or <verbatim|Rank.determinant> [G].

  <strong|Output to VI.1> [E]. <verbatim|YM.Org.UV C F S W T\<#2080\> I>
  (<verbatim|YM/Org/Input.lean:177>): <verbatim|basis : Spec.Seed C F S>,
  <verbatim|aligned : W.Orientation \<ldots\>>, <verbatim|planet : Climb.Pre
  \<ldots\> W I.J I.p I.Y>, <verbatim|weak : Climb.ActLaw W T\<#2080\>.T I.J
  \<ldots\> \<ldots\>>, <verbatim|tables : Org.Grill C F>. Its consumer
  <verbatim|YM.Org.Commission.picks> has the statement
  <verbatim|Spec.Calibrated C \<rightarrow\> V.Inclusions S \<rightarrow\>
  V.Derivatives S \<rightarrow\> Org.UV C f S V W I \<rightarrow\> Nonempty
  (Spec.Final C f S)> [E]. <verbatim|YM.Climb.comparison>
  (<verbatim|YM/Climb/Beams.lean:53>): <verbatim|Climb.ActLaw P T J h a
  \<rightarrow\> Maxwell.Ranks S h> [E]; it is reached from
  <verbatim|SharpGram.coordination> through <verbatim|Acme.glistens
  \<rightarrow\> Org.Commission.picks> [G].

  <strong|Recommendation: two units inside PU-20's III.11 share.>

  <\itemize-minus>
    <item><em|PU-20a, Ward flux>: <verbatim|tenet>,
    <verbatim|annular_fieldA>, <verbatim|shells_law>, with <verbatim|Aroma>
    as a stated hypothesis. Self-contained given the shell estimate.

    <item><em|PU-20b, stress from the free comparison>: <verbatim|readyA> and
    <verbatim|emanate>, citing PU-20a, VI.2 for the free model, and PU-11
    only for <verbatim|RankWidths>.
  </itemize-minus>

  The shell estimate (<verbatim|laurelE>, <verbatim|fugacious>; closure 2411
  theorems, mostly <verbatim|MergeProof/North> [G]) is a third, separate
  argument. It is not a stress statement and should not be absorbed into
  PU-20 without its own audit.

  <section|Handoff table><label|handoff-table>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Candidate>>|<cell|<strong|Owns>>|<cell|<strong|Needs
  (statement)>>|<cell|<strong|Hands on (statement)>>|<cell|<strong|Consumer>>>|<row|<cell|PU-12>|<cell|<verbatim|Rank.determinant>,
  <verbatim|protection>, <verbatim|HaarBudget>, <verbatim|exists_budget>,
  <verbatim|Station.affordable>, <verbatim|Station.Meets>,
  <verbatim|Station.ticket>>|<cell|<verbatim|RG.Rep.Lawful>; stage data of
  <verbatim|RG.Levels>>|<cell|the two inequalities of Contract
  A>|<cell|PU-11b via <verbatim|Soft.denture>,
  <verbatim|Ship.banking>>>|<row|<cell|PU-11a>|<cell|<verbatim|Prayer.fence>,
  <verbatim|RankCovariance.window_prices>>|<cell|free covariance and
  regulator family (III.3)>|<cell|pair-term and window bounds>|<cell|PU-11b;
  <verbatim|RankCovariance.Tender>>>|<row|<cell|PU-11b>|<cell|<verbatim|Soft.cast_off>,
  <verbatim|Soft.wheeled>, <verbatim|Soft.v_obtain_purchases>,
  <verbatim|Market.Purchases>>|<cell|PU-12, PU-11a, the four price conditions
  frequently>|<cell|<verbatim|Market.Purchases
  Z>>|<cell|PU-11c>>|<row|<cell|PU-11c>|<cell|<verbatim|Accent.rated>,
  <verbatim|Maxwell.Ranks>, <verbatim|Spec.Seed> (as
  output)>|<cell|<verbatim|Scotia>, <verbatim|Scrim>, price conditions,
  PU-11b, extraction (IV.1)>|<cell|<verbatim|Spec.Seed>,
  <verbatim|Maxwell.Ranks>>|<cell|PU-20b (<verbatim|RankWidths> only);
  VIII.1>>|<row|<cell|PU-20a>|<cell|<verbatim|Acme.tenet>,
  <verbatim|Acme.annular_fieldA>, <verbatim|Acme.shells_law>>|<cell|<verbatim|Acme.Aroma>;
  conserved <verbatim|J>; VI.1 windows and
  flux>|<cell|<verbatim|Table.StressLaws>>|<cell|PU-20b>>|<row|<cell|PU-20b>|<cell|<verbatim|Acme.readyA>,
  <verbatim|Acme.emanate>>|<cell|<verbatim|DimAbove> (from
  <verbatim|RankWidths>), <verbatim|Stations>, free model (VI.2),
  PU-20a>|<cell|<verbatim|Org.UV>>|<cell|VI.1
  (<verbatim|Org.Commission.picks>)>>|<row|<cell|<em|unowned>>|<cell|<verbatim|franchise>,
  <verbatim|castle>, <verbatim|reception>, <verbatim|chaletrail>;
  <verbatim|laurelE>, <verbatim|fugacious>; <verbatim|Soft.shapers>,
  <verbatim|Soft.soluble>, <verbatim|Soft.accepts_stock>>|<cell|nonlinear
  step (#13), #12 package 3>|<cell|hypotheses (i)\U(iii) of PU-11c and
  <verbatim|Aroma>>|<cell|<verbatim|Legato.uv_log> (III.13)>>>>>

  <strong|Formal versus conceptual order.> No reference cycle was found among
  the anchors of the table [G]: PU-12 and PU-11a reach nothing else in it;
  PU-11b reaches PU-12 and PU-11a; PU-11c reaches PU-11b; PU-20a reaches
  nothing in PU-11 or PU-12; PU-20b reaches PU-20a and VI.2 only. The
  conceptual order PU-12 \<rightarrow\> PU-11a \<rightarrow\> PU-11b
  \<rightarrow\> PU-11c \<rightarrow\> PU-20b, with PU-20a parallel,
  coincides with the reference order. The apparent cycle "stress needs ranks,
  VI.1 derives ranks from the action law" (finding 5) is not a formal cycle,
  because the stress construction needs only the upper bound on dimensions.

  <section|Obstructions and requested follow-up><label|obstructions-and-requested-follow-up>

  <\enumerate>
    <item><strong|Hypothesis bundles are not unfolded.> <verbatim|Scrim>,
    <verbatim|Tapes.Cohesion>, <verbatim|RankCovariance.Tender>,
    <verbatim|Tapes.Metering>, <verbatim|Soft.Timing>, <verbatim|Ceremony>,
    <verbatim|LanternMarks>, <verbatim|Soft.s_supplies>,
    <verbatim|Soft.Travels_>, <verbatim|Cells.Columns.Trials.Valid>,
    <verbatim|Stations.Admissible>, <verbatim|Climb.Track>,
    <verbatim|Ribbons.ShellNode>, <verbatim|Soft.Tissue>,
    <verbatim|Extract.Base>, <verbatim|Extract.Projected>,
    <verbatim|Extraction.Wcmain>, <verbatim|Soft.Available>,
    <verbatim|Soft.Kraft> were seen as names in elaborated statements only.
    Every sentence above that describes their content is taken from the
    external outline and is unverified.

    <item><strong|Which <verbatim|Maxwell.Ranks> is used downstream> (finding
    5). <verbatim|Ranks> occurs in the value of at least twenty-five
    declarations, among them <verbatim|SharpGram.coordination>,
    <verbatim|Trace.agora> and <verbatim|RemainderComparison.Chron.commissioned>
    [G]. Their source was not read.

    <item><strong|The role of #12's third package is located but not stated.>
    <verbatim|Soft.accepts_stock> (<verbatim|\<forall\>\<#1DA0\> s,
    Soft.Kraft J i P D W d s> under <verbatim|Pump.Granite> and
    <verbatim|Wax.Peaking> eventually [E]) and <verbatim|Soft.soluble>
    (<verbatim|\<exists\> n, \<forall\> L \<geq\> n, Soft.Available P L i>
    [E]) are the consumers of <verbatim|Vale.land>/<verbatim|Pump.foreshadows>.
    What <verbatim|Available> asserts, and therefore what determinant
    statement PU-11 actually needs from #12, is open. This is the border that
    #12 proposed at <verbatim|Port.book_price>; it should be agreed with
    #12's author once <verbatim|Available> is unfolded.

    <item><strong|V.3.> The issue asks for the data consumed by the stress
    tensor in V.3/VI.1. The external V.3 outline does not cite III.11,
    <verbatim|readyA>, <verbatim|emanate> or <verbatim|Org.UV>; it lists
    <verbatim|Spec.Seed> as an input from IV.1. No Lean consumer in V.3 was
    searched for. The VI.1 handoff is <verbatim|Org.UV>.

    <item><strong|Notation>, referred to #10: <verbatim|F_d(S)>
    (<verbatim|S.Field d>) versus the label space <verbatim|C.label d> and
    its coordinate space; <verbatim|Maxwell.freeTable> versus
    <verbatim|Climb.Bel>; "rank widths", "trial system", "seed"; the two
    determinants of finding 2; <verbatim|protection> (per-site price) versus
    <verbatim|Station.ticket>; the stress <verbatim|J : Axis \<rightarrow\>
    Axis \<rightarrow\> S.Field 4>, the Ward rows <verbatim|p>, <verbatim|Y>,
    and the sign convention of <verbatim|Work.A01.flux>.
  </enumerate>

  <section|Literature leads (unverified)><label|literature-leads-unverified>

  None was opened in this session; all are taken from the external outline's
  list and must be checked before use.

  <\itemize-minus>
    <item>Contract A: axial (tree) gauge on a torus and invariance of Haar
    measure (Seiler, <em|Gauge Theories as a Problem of Constructive Quantum
    Field Theory and Statistical Mechanics>, LNP 159, 1982); volume of small
    balls in a compact Lie group. The specific budget with <verbatim|g^{-4
    dim G}> is project-specific.

    <item>Contract B: the chessboard estimate (Fröhlich\UIsrael\ULieb\USimon,
    Comm. Math. Phys. 62, 1978) and reflection positivity of the Wilson
    action (Osterwalder\USeiler, Ann. Phys. 110, 1978) for PU-11b; symbol
    estimates for PU-11a. The frequent-scale diagonal argument and the
    projector conjugation appear to be project-specific.

    <item>Contract C: Ward identities for a conserved symmetric stress tensor
    and Killing fields are standard in form; the flux-on-shrinking-annuli
    argument with finite faithfulness of testers appears to be
    project-specific.
  </itemize-minus>

  <section|Evidence><label|evidence>

  Inspection used a sibling checkout of the upstream project at commit
  <verbatim|1dba6965d734bac06951579601b90e985033ee45>, which adds only a CI
  workflow and <verbatim|.gitignore> to <verbatim|3456e5e>; <verbatim|diff
  -rq \<less\>checkout\<gtr\>/YM Lean/YM> printed nothing (run earlier the
  same day). It contains a completed build with toolchain
  <verbatim|leanprover/lean4:v4.32.0>. The build was not rerun.

  <\itemize-minus>
    <item><strong|[E]> <verbatim|lake env lean b1.lean> (about 50 s, no
    errors): <verbatim|#check @> of <verbatim|Rank.determinant>,
    <verbatim|exists_budget>, <verbatim|Station.affordable>,
    <verbatim|Soft.denture>, <verbatim|Ship.banking>,
    <verbatim|Prayer.fence>, <verbatim|window_prices>,
    <verbatim|Soft.cast_off>, <verbatim|Soft.wheeled>,
    <verbatim|Soft.v_obtain_purchases>, <verbatim|Accent.rated>,
    <verbatim|franchise>, <verbatim|castle>, <verbatim|reception>,
    <verbatim|chaletrail>, <verbatim|Acme.readyA>, <verbatim|Acme.emanate>,
    <verbatim|Acme.annular_fieldA>, <verbatim|Acme.tenet>,
    <verbatim|Acme.shells_law>, <verbatim|laurelE>, <verbatim|fugacious>,
    <verbatim|Climb.comparison>, <verbatim|jointOffers>, <verbatim|uv_log>,
    <verbatim|Pump.issued>; <verbatim|#print> of <verbatim|protection>,
    <verbatim|HaarBudget>, <verbatim|ent>, <verbatim|strength>,
    <verbatim|Maxwell.Ranks>, <verbatim|Spec.Seed>, <verbatim|Scotia>,
    <verbatim|Aroma>, <verbatim|DimAbove>, <verbatim|Stations>,
    <verbatim|Economics>, <verbatim|Org.UV>, <verbatim|Org.Grill>,
    <verbatim|Chateau>, <verbatim|Tender>, <verbatim|Metering>,
    <verbatim|CompleteWeak>. <verbatim|#print axioms> gives
    <verbatim|[propext, Classical.choice, Quot.sound]> for
    <verbatim|Rank.determinant>, <verbatim|Station.affordable>,
    <verbatim|Accent.rated>, <verbatim|Acme.readyA>, <verbatim|Acme.emanate>,
    <verbatim|Acme.annular_fieldA>, <verbatim|Legato.uv_log>,
    <verbatim|Soft.wheeled>.

    <item><strong|[E]> <verbatim|lake env lean b2.lean> (no errors):
    <verbatim|#check @> of <verbatim|East.posters>, <verbatim|Soft.y_poster>,
    <verbatim|Soft.shapers>, <verbatim|Soft.soluble>,
    <verbatim|Soft.accepts_stock>, <verbatim|UVStress.cap_given>,
    <verbatim|Org.Commission.picks>, <verbatim|Acme.glistens>,
    <verbatim|UVStress.produce_current>, <verbatim|Maxwell.Free.maxwell_supplies>;
    <verbatim|#print> of <verbatim|Soft.Vents>, <verbatim|ShowHours>,
    <verbatim|Soft.Shops>, <verbatim|Soft.s_provisions>,
    <verbatim|Market.Purchases>, <verbatim|Cells.RankWidths>,
    <verbatim|Climb.Pre>, <verbatim|Climb.ActLaw>,
    <verbatim|Table.StressLaws>, <verbatim|Org.IR>,
    <verbatim|Org.MaxwellData>, <verbatim|Org.Commission>,
    <verbatim|Table.Conserved>, <verbatim|Table.Stress>.
    <verbatim|Station.Meets> and <verbatim|Station.ticket> were printed in
    the review for issue #29.

    <item><strong|[S]> <verbatim|sed -n '10,50p' YM/MergeProof/Emanate.lean>
    (statements and full proofs of <verbatim|readyA> and <verbatim|emanate>).
    No other proof body was read.

    <item><strong|[G]> <verbatim|graph-compiled/{nodes,refs}.tsv> in the same
    checkout: an untracked local artifact whose generation was not audited.
    Three Python scripts computed forward reference closures, shortest
    reference paths and per-directory theorem counts of closures.
    <strong|Private declarations must be followed>: a first run that kept
    only destinations whose name starts with <verbatim|YM.> missed every path
    through a <verbatim|_private.YM\<ldots\>> declaration and wrongly
    reported <verbatim|window_prices> as unreached from <verbatim|uv_log>;
    all [G] claims above are from the corrected run. Every "does not reach"
    claim should be reproduced by the reviewer.

    <item>Names were resolved from the external outline's links to file and
    line and then to fully qualified names through <verbatim|nodes.tsv>; each
    name cited with [E] was subsequently elaborated.

    <item>Overlap search: open issues and PRs at 2026-11-11 22:52 UTC;
    <verbatim|blueprint/interfaces/gaussian-sector.md> (#12) and the draft
    <verbatim|nonlinear-rg-step.md> (PR #30, #13) were read for their
    handoffs.
  </itemize-minus>

  <strong|Not done:> no proof body other than
  <verbatim|readyA>/<verbatim|emanate>; none of the bundles in obstruction 1;
  no V.3 or VI.1 source beyond the statements named; the internal lemmas of
  <verbatim|Determinant.lean> and <verbatim|Axial.lean>
  (<verbatim|vacuum_bound>, <verbatim|numerator>, <verbatim|elimination>,
  \<ldots\>) were located but not elaborated; no literature source was
  opened; the Lean project was not rebuilt.

  Agent assistance: Claude Code, directed by <verbatim|mgubi>. Navigation
  leads are due to Scott Armstrong's Yang\UMills informalization project.
</body>

<\initial>
  <\collection>
    <associate|html-title|Rank, determinant and stress handoffs \V working
    audit, issue #14 \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|3>>
    <associate|auto-4|<tuple|4|5>>
    <associate|auto-5|<tuple|5|7>>
    <associate|auto-6|<tuple|6|8>>
    <associate|auto-7|<tuple|7|8>>
    <associate|auto-8|<tuple|8|9>>
    <associate|contract-a--determinant-budget-candidate-pu-12|<tuple|2|2>>
    <associate|contract-b--rank-comparison-candidate-pu-11|<tuple|3|3>>
    <associate|contract-c--stress-tensor-and-ward-identities-candidate-pu-20-iii11-part|<tuple|4|5>>
    <associate|evidence|<tuple|8|9>>
    <associate|handoff-table|<tuple|5|7>>
    <associate|literature-leads-unverified|<tuple|7|8>>
    <associate|obstructions-and-requested-follow-up|<tuple|6|8>>
    <associate|rank-determinant-and-stress-handoffs--working-audit-issue-14|<tuple|?|1>>
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
      A \V determinant budget (candidate PU-12)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Contract
      B \V rank comparison (candidate PU-11)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Contract
      C \V stress tensor and Ward identities (candidate PU-20, III.11 part)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Handoff
      table> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
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