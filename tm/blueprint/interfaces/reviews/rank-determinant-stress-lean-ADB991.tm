<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../outline.tm><ym-nav-sep><hlink|Unit
  plan|../../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../index.tm><ym-nav-sep><hlink|Manuscript|../../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Review of an interface audit: rank, determinant and stress
  handoffs><label|review-of-an-interface-audit-rank-determinant-and-stress-handoffs>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Method and its
    limits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Findings>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <with|par-left|1tab|Definite errors <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <with|par-left|1tab|Confirmed <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>>

    <with|par-left|1tab|Finding 5 of the note (which
    <with|font-family|tt|language|verbatim|Maxwell.Ranks> is used
    downstream): largely answered [S] <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Open questions
    for the author (not errors)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Required
    changes and remaining uncertainty> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Acceptance>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Commands run>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>
  </table-of-contents>

  <\itemize-minus>
    <item>Reviewed file: <verbatim|blueprint/interfaces/rank-determinant-stress.md>
    (issue #14, PR #31, author session <verbatim|mgubi-claude-issue14-20261111>)

    <item>Role: Lean correspondence

    <item>Human reviewer: ADB991 (no acceptance recorded; see the last
    section)

    <item>Agent assistance: Claude Code (Anthropic), running as a scheduled
    agent on behalf of ADB991, did the inspection and wrote this report.
    Three subagents each checked one contract (A, B, C) by reading source.
    The parent agent then rechecked by hand every finding listed below as
    definite. ADB991 had not read this report before it was submitted.

    <item>Content SHA-256: <verbatim|a7477c982ff94b159b3fc5f0cc7d8c4f6425e43c3f4e67038407d00902772555>
    (<verbatim|sha256sum> of the file at <verbatim|main> <verbatim|4cf1c97>;
    the same blob as PR #31 head <verbatim|6cda532>)

    <item>Source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>
    (<verbatim|Lean/> in this repository)

    <item>Review task: <hlink|issue #14|https://github.com/hairer/humanise-yang-mills/issues/14>,
    claim <hlink|https://github.com/hairer/humanise-yang-mills/issues/14#issuecomment-6825197499|https://github.com/hairer/humanise-yang-mills/issues/14#issuecomment-6825197499>

    <item>Outcome: <strong|changes requested.> Contract A is correct.
    Contracts B and C misstate one consumer statement and omit hypotheses of
    several theorems, and the proposed PU-20a boundary needs more inputs than
    stated. One open question (finding 5 of the note) is largely answered
    from source.
  </itemize-minus>

  I am not an author of the note. This is an agent-assisted review, not a
  human acceptance.

  <section|Method and its limits><label|method-and-its-limits>

  Evidence levels used here:

  <\itemize-minus>
    <item><strong|[S]> source text read at the pinned revision, including
    <verbatim|variable>/<verbatim|include>/<verbatim|omit> lines and implicit
    binders.

    <item><strong|[I]> module import graph. I parsed the <verbatim|import>
    lines of all 9,477 <verbatim|.lean> files under <verbatim|Lean/> and
    computed transitive closures. If module A does not transitively import
    module B, then no declaration of A can refer to a declaration of B.
    Non-reachability shown this way is sound. Reachability shown this way is
    not: an import does not imply a reference.
  </itemize-minus>

  <strong|Nothing was elaborated.> This sandbox can reach neither the Mathlib
  cache (<verbatim|mathlib4.lean-cache.cloud>) nor GitHub's Mathlib
  repository, and it cannot reach the prebuilt release used in
  <verbatim|source/build.md>. The pinned toolchain <verbatim|v4.32.0> was
  installed, but <verbatim|lake> could not fetch dependencies. I therefore
  could not reproduce any of the note's <strong|[E]> claims by elaboration,
  or any <strong|[G]> claim through the compiled graph. I could only check
  them against source text. Theorem counts such as "273 theorems" and "7896
  theorems" are unchecked.

  <section|Findings><label|findings>

  <subsection|Definite errors><label|definite-errors>

  <\enumerate>
    <item><strong|Statement attributed to <verbatim|YM.Org.Commission.picks>
    is wrong (Contract C "Output to VI.1"; finding 6) [S].> The note says
    <verbatim|picks> has the statement <verbatim|Spec.Calibrated C
    \<rightarrow\> V.Inclusions S \<rightarrow\> V.Derivatives S
    \<rightarrow\> Org.UV C f S V W I \<rightarrow\> Nonempty (Spec.Final C f
    S)>. That is the statement of <verbatim|YM.MergeProof.Acme.glistens>
    (<verbatim|Lean/YM/MergeProof/Summit.lean:17>). <verbatim|picks> is at
    <verbatim|Lean/YM/Org/Twist.lean:45>: <verbatim|Commission.picks (Z :
    Commission V W I H) (hv : V.Inclusions S) (hp : V.Derivatives S) :
    \<exists\> c U J, Tab S V W I H c U J \<wedge\> \<exists\> K0 :
    Boundary.Spins S, K0.Descends (mill W I c U) H.basis.kernel.spin>, where
    <verbatim|H : UV C F S V W I> is a section variable. <verbatim|glistens>
    takes an <verbatim|Org.UV>, builds a <verbatim|Commission> with
    <verbatim|Bid.station W V I H \<ldots\>> (Summit.lean:18) and then calls
    <verbatim|picks> (Summit.lean:22). So the direct consumer of
    <verbatim|Org.UV> with the quoted statement is <verbatim|Acme.glistens>.
    <verbatim|Org.UV> also occurs in about two dozen other files, so "its
    consumer" in the singular is too strong.

    <item><strong|<verbatim|Acme.annular_fieldA>, <verbatim|Acme.tenet> and
    <verbatim|Acme.shells_law> have more hypotheses than stated (Contract C)
    [S].> <verbatim|annular_fieldA> (<verbatim|West/Bravo.lean:55>) also
    takes <verbatim|hC : C.Makes>, <verbatim|hq : Cells.CellHyp C F>,
    <verbatim|ho : F.PointLimits C S>, <verbatim|H : S.Hierarchy> and
    <verbatim|h : V.Derivatives S>. Conservation is <verbatim|hc : Conserved
    V H.spin J>, which is relative to the derivative plan <verbatim|V> and to
    <verbatim|H.spin>. <verbatim|tenet> (<verbatim|West/Blanca.lean:49>) and
    <verbatim|shells_law> (<verbatim|West/Orange.lean:33>) take the same set.
    The recommendation that PU-20a is "self-contained given the shell
    estimate", with <verbatim|Aroma> as its only stated hypothesis, should
    therefore list the extraction, hierarchy and derivative-plan inputs as
    well.

    <item><strong|<verbatim|YM.MergeProof.Accent.rated>
    (<verbatim|Powder.lean:48>) omits one hypothesis and one output [S].> It
    also needs the explicit hypothesis <verbatim|H : \<forall\> i :
    \<bbb-N\>, 0 \<leq\> generator G i>, which supplies the argument of
    <verbatim|(Q i).patronize C (H i)> (the note writes
    <verbatim|Panel.patronize C (Q i) \<ldots\>>). The conclusion also
    contains <verbatim|\<exists\> E : DiffPlan T>: the full conclusion is
    <verbatim|\<exists\> g A L R Z T E, Projected Xf (f.refine g) R Z
    \<wedge\> Base C (f.refine g) A L R T E \<wedge\> \<exists\> s : Seed C
    (f.refine g) T, Maxwell.Ranks T s.kernel.spin>. The note lists only some
    of the implicit data (<verbatim|O : HaarBudget G>, <verbatim|B :
    RankCovariance.Binding C>). The rest of the statement matches, including
    the <verbatim|\<forall\> i, \<exists\>\<#1DA0\> j in atTop> order and the
    <verbatim|-3> exponents.

    <item><strong|<verbatim|MergeProof.Scotia> (<verbatim|Eureka.lean:16>)
    has a quantifier misplaced [S].> The field <verbatim|step d N p :
    Mark.Chosen (C.labels.level d) (catalog C R d N p (P d (N,p))) (b.step d
    (N,p))> holds for <strong|all> <verbatim|N, p>, not "eventually in
    <verbatim|N>". The eventual field <verbatim|turns d : \<forall\>\<#1DA0\>
    N in atTop, \<forall\> p, \<ldots\>> contains the reality and signed-axis
    equivariance the note describes, and also <verbatim|Mark.Symmetry
    (C.labels.level d) (b.step d (N,p))>, which the note omits.

    <item><strong|Hypotheses missing from the producers of (i)\U(iii) [S].>

    <\itemize-minus>
      <item><verbatim|MergeProof.reception> (<verbatim|Eureka.lean:22>) also
      takes the explicit hypothesis <verbatim|hb : \<forall\> d, \<exists\> a
      : \<bbb-N\> \<rightarrow\> \<bbb-R\>, Braze (V d) a>. The section
      hypotheses it does list (<verbatim|Makes>, <verbatim|Tabs>,
      <verbatim|Scrim> with general <verbatim|\<zeta\>>, <verbatim|Fridge>,
      portfolio, simplicity) are correct.

      <item><verbatim|Legato.castle> (<verbatim|Snow.lean:28>) also needs
      <verbatim|B : Bolt A>, <verbatim|C.path = A.B.bake.make B.history> and
      <verbatim|\<forall\> j, snows D j \<leq\> A.delay.shells j>. Its
      conclusion is <verbatim|\<exists\> K : RankCovariance.Binding C,
      K.world \<asymp\> A.B.M \<wedge\> K.prices = M.K>.

      <item><verbatim|Legato.franchise> (<verbatim|Snow.lean:55>) fixes the
      chart ratio to <verbatim|chart G>, and chooses <verbatim|Q, U> before
      <verbatim|\<forall\> C>. The note should say so.
    </itemize-minus>

    <item><strong|<verbatim|Legato.uv_log> does not give "the conclusion of
    <verbatim|rated>" for every <verbatim|f> [S].> In
    <verbatim|Flowers.lean:75> the per-order conclusion lacks the
    <verbatim|Projected Xf \<ldots\> R Z> conjunct and <verbatim|Z>. Also,
    <verbatim|Org.Grill C F \<wedge\> East.CompleteWeak C F> hold only under
    <verbatim|\<forall\> F, Cells.CellHyp C F \<rightarrow\> \<ldots\>>.
    Further conjuncts not listed: <verbatim|kernel.penalty = b>,
    <verbatim|Spec.Calibrated C>, and others.

    <item><strong|The "one consumer" claims of Contract A are incomplete
    [S].>

    <\itemize-minus>
      <item><verbatim|YM.Next.Rank.determinant> has a second direct caller,
      <verbatim|YM.Next.Rank.Array.postage>
      (<verbatim|Lean/YM/Next/RANK/Stamp.lean:131>, call at line 151). I
      found no textual caller of <verbatim|Array.postage>.

      <item><verbatim|Soft.coupon> is also called from
      <verbatim|YM.Next.Rank.Tapes.West.tenderly>
      (<verbatim|YM/MergeProof/West/Equity.lean:86>).

      <item><verbatim|Ship.banking> is also called from
      <verbatim|YM.MergeProof.earnings> (<verbatim|YM/MergeProof/West/Tael.lean:70>)
      and from a copy under <verbatim|TraceExtension/Prom/Front/West/Tael.lean>.
    </itemize-minus>

    So the PU-12 material also feeds the <verbatim|West> directory, not only
    PU-11b. See question Q1.

    <item><strong|Smaller corrections [S].>

    <\itemize-minus>
      <item><verbatim|Soft.v_obtain_purchases> (<verbatim|Supra.lean:177>)
      shares a table row with <verbatim|wheeled> but has a different
      statement. Hypotheses: <verbatim|G.Simple>, <verbatim|C.Makes>,
      <verbatim|0 \<less\> b>, <verbatim|Offers_ O p' b>. Conclusion:
      <verbatim|\<exists\> Z, Travels_ O p' b Z \<wedge\> Market.Purchases
      Z>.

      <item><verbatim|Market.Purchases> (<verbatim|Bought.lean:68>) also has
      the fields <verbatim|flat>, <verbatim|fit> and <verbatim|axis>, and an
      <verbatim|Interior> clause inside <verbatim|arrays>.

      <item>In <verbatim|Maxwell.Ranks>, <verbatim|h> is a proof of
      <verbatim|(freeTable L.grid).RealSpin>, not a "real structure" datum.

      <item><verbatim|Ribbons.laurelE> also uses <verbatim|G.Simple>.
      <verbatim|Ribbons.fugacious> comes after <verbatim|omit hW L>
      (<verbatim|North/Economist.lean:33>), so it uses only
      <verbatim|G.Simple> and <verbatim|Legato.Velour>, not <verbatim|Scrim>,
      <verbatim|Tabs>, <verbatim|Created> or <verbatim|Makes>.

      <item>"<verbatim|emanate> uses only <verbatim|corrected> and the
      extraction fields of the seed": <verbatim|emanate> uses all six fields
      of <verbatim|Spec.Seed>. <verbatim|copies : CellHyp C F> is not an
      extraction field. The only rank-specific field is <verbatim|corrected>.

      <item>"Inputs" of Contract A: the 82-module YM import closure of
      <verbatim|Next/RANK/Determinant.lean> also contains
      <verbatim|Pressure>, <verbatim|PCalc>, <verbatim|Branch>,
      <verbatim|Vac>, <verbatim|Bid> and other directories. It is not limited
      to the lattice, gauge-group and RG-definition directories.
    </itemize-minus>
  </enumerate>

  <subsection|Confirmed><label|confirmed>

  <\itemize-minus>
    <item><strong|Contract A statements [S].> All match the source exactly,
    with the line numbers given:

    <\itemize-minus>
      <item><verbatim|Rank.determinant> (<verbatim|Determinant.lean:240>,
      with section hypothesis <verbatim|R.Lawful \<sigma\> A \<Lambda\>
      \<delta\> w>)

      <item><verbatim|protection> (:225) and <verbatim|ent> (:220;
      <verbatim|strength p = min 1 p.linear>)

      <item><verbatim|HaarBudget> (:26) and <verbatim|exists_budget>

      <item><verbatim|Station.affordable> (<verbatim|StationMeter.lean:119>;
      the eventual threshold depends only on <verbatim|G, O, A> and
      simplicity), with <verbatim|Station.Meets> (eight fields) and
      <verbatim|Station.ticket>

      <item><verbatim|Soft.denture>, and <verbatim|Ship.banking :=
      Station.affordable>
    </itemize-minus>

    <item><strong|Contract A non-reachability [I].> Neither
    <verbatim|YM.Next.RANK.Determinant> nor
    <verbatim|YM.Next.RANK.StationMeter> transitively imports the module that
    defines any of the following, so neither theorem can reach them:

    <\itemize-minus>
      <item><verbatim|SectorChange.committed>
      (<verbatim|SectorNext/GAUSSIAN_SECTOR_CHANGE/Handoff.lean>)

      <item><verbatim|SectorAffine.assembly>

      <item><verbatim|Rain.glazing>

      <item><verbatim|Roost.Factor.worksNow>

      <item><verbatim|Fluctuations.grants>

      <item><verbatim|ConnectedActivityE6.Target.issue>

      <item><verbatim|Dyed.cardinal_spin> (<verbatim|Opacity/Prism.lean>)

      <item><verbatim|Opacity/Shards.lean>
    </itemize-minus>

    This confirms finding 1 and the "no, in either direction" half of finding
    2 that concerns <verbatim|Rank.determinant>, by a sound argument
    independent of the compiled graph.

    <item><strong|<verbatim|Maxwell.Ranks> [S]>
    (<verbatim|Euclid/Comparator.lean:135>): for every degree, <verbatim|f :
    S.Field d \<simeq\>\<#2097\>[\<bbb-C\>] (freeTable L.grid).Field d> is a
    complex <strong|linear equivalence> that intertwines <verbatim|conj> and
    <verbatim|mirror>. This settles the point the note left open ("the binder
    type was not printed").

    <item><strong|Contract B [S].> These match the note:
    <verbatim|Spec.Seed>, <verbatim|Cells.RankWidths>,
    <verbatim|Prayer.fence> (<verbatim|StrideCost.lean:70>),
    <verbatim|RankCovariance.window_prices> (<verbatim|Window.lean:118>,
    uniform in the regulator and the group; <verbatim|a b> are
    <verbatim|Degree G>), <verbatim|Soft.cast_off> and
    <verbatim|Soft.wheeled>. <verbatim|chaletrail> calls <verbatim|reception>
    and outputs <verbatim|Scrim \<ldots\> \<wedge\> \<exists\> P b, Scotia
    \<ldots\>>.

    <item><strong|Reach paths named in the note, checked call by call in the
    source [S]:>

    <\itemize-minus>
      <item><verbatim|rated> (Powder.lean:65) \<rightarrow\>
      <verbatim|wheeled> \<rightarrow\> <verbatim|v_paid_factory>
      \<rightarrow\> <verbatim|Wall.on_demand> \<rightarrow\>
      <verbatim|Prayer.penalty> \<rightarrow\> <verbatim|fence>

      <item><verbatim|wheeled> \<rightarrow\> <verbatim|v_obtain_purchases>
      \<rightarrow\> <verbatim|coupon> \<rightarrow\> <verbatim|s_postage>
      \<rightarrow\> <verbatim|denture> \<rightarrow\>
      <verbatim|determinant>, with <verbatim|v_obtain_purchases> calling
      <verbatim|banking>

      <item><verbatim|readyA> \<rightarrow\> <verbatim|shells_law>
      \<rightarrow\> <verbatim|annular_fieldA> (twice) \<rightarrow\>
      <verbatim|tenet>
    </itemize-minus>

    The edge <verbatim|Tender> \<rightarrow\> <verbatim|prepared>
    \<rightarrow\> <verbatim|window_prices> is only partly traced.

    <item><strong|Contract C [S].> These match the note:

    <\itemize-minus>
      <item><verbatim|readyA> and <verbatim|emanate> (statements and proofs;
      in <verbatim|readyA>, <verbatim|a> is a hierarchy on <verbatim|Bel
      C.book>)

      <item><verbatim|DimAbove> and <verbatim|cap_given>

      <item><verbatim|Climb.Pre>, <verbatim|Table.Conserved> and
      <verbatim|Table.StressLaws>

      <item><verbatim|Acme.Aroma> (fields <verbatim|shells>,
      <verbatim|opens>, <verbatim|notes>)

      <item><verbatim|Org.UV> (all five fields)

      <item><verbatim|Climb.comparison : ActLaw P T J h a \<rightarrow\>
      Maxwell.Ranks S h>
    </itemize-minus>

    Note that <verbatim|Table.RawTensor> is covariance under signed mirrors,
    not symmetry, despite the field name <verbatim|symmetric>.
  </itemize-minus>

  <subsection|Finding 5 of the note (which <verbatim|Maxwell.Ranks> is used
  downstream): largely answered [S]><label|finding-5-of-the-note-which-maxwellranks-is-used-downstream-largely-answered-s>

  In <verbatim|SharpGram.coordination> (<verbatim|SharpGram/Common.lean:16\U35>),
  the <verbatim|Ranks> obtained from <verbatim|uv_log>, and hence from
  <verbatim|Accent.rated>, is bound but never used. Only the seed goes on to
  <verbatim|emanate>. <verbatim|Spec.Final> comes from <verbatim|glistens>,
  and the <verbatim|Spec.Locals.comparator : Maxwell.Ranks> it builds is
  <verbatim|Climb.comparison H.weak>, inside <verbatim|picks>
  (<verbatim|Twist.lean:51>). In <verbatim|Acme.xanadu>
  (<verbatim|Summit.lean:32\U37>) the <verbatim|rated> output is only passed
  through to the conclusion. On these two public routes, then, the downstream
  <verbatim|Ranks> is the one derived from the action law. The equivariant
  isomorphism in <verbatim|rated>'s conclusion is not consumed; only
  <verbatim|RankWidths> (the dimension bound) is. This supports the note's
  remark that PU-11 may need only the dimension count. It still has to be
  confirmed for the other <verbatim|Ranks> consumers:
  <verbatim|TraceExtension>, <verbatim|RemainderComparison>, and whether
  <verbatim|Spec.Final>/<verbatim|Materializes> carries <verbatim|Locals>.

  <section|Open questions for the author (not
  errors)><label|open-questions-for-the-author-not-errors>

  <\itemize-minus>
    <item><strong|Q1. Do the stress theorems really avoid PU-11/PU-12?> The
    note's ordering paragraph says PU-20b reaches only PU-20a and VI.2 [G].
    But <verbatim|YM.MergeProof.Emanate> transitively imports
    <verbatim|West/Equity.lean> and <verbatim|West/Tael.lean> [I], and these
    call <verbatim|Soft.coupon> and <verbatim|Ship.banking> (finding 7). By
    contrast, <verbatim|West/Bravo>, <verbatim|West/Blanca>,
    <verbatim|West/Ozone> and <verbatim|North/Economist> do not import those
    two files [I]. So the PU-20a anchors and <verbatim|Aroma>'s producers
    cannot reach <verbatim|tenderly>/<verbatim|earnings>.
    <verbatim|Powder.lean> (<verbatim|rated>) does not import them either.
    Whether <verbatim|readyA>/<verbatim|emanate> reach <verbatim|tenderly> or
    <verbatim|earnings>, for instance through <verbatim|Work.D06.answer>,
    <verbatim|Stations.equivalences> or <verbatim|produce_current>, I could
    not settle without the compiled graph. The note's [G] claim that neither
    reaches <verbatim|Rank.determinant> should be rechecked against
    <verbatim|Array.postage>, <verbatim|tenderly> and <verbatim|earnings> in
    particular.

    <item><strong|Q2.> <verbatim|rated> \<nrightarrow\>
    <verbatim|Rain.glazing>/<verbatim|Roost.Factor.worksNow>/<verbatim|SectorChange.committed>:
    not refuted. The import graph clears most of <verbatim|rated>'s direct
    callees: <verbatim|Extraction.crops>, <verbatim|include_projections>,
    <verbatim|copy_down>, <verbatim|Extra.FD.vane>,
    <verbatim|Price.from_labels>, and the others in the B report. It also
    shows that <verbatim|wheeled>/<verbatim|cast_off> cannot reach
    <verbatim|glazing> or <verbatim|worksNow>. Paths through
    <verbatim|MergeProof.bursts> (<verbatim|SteamW.lean:54>),
    <verbatim|Mark.thrush> (<verbatim|Thrush.lean:72>) and the definitions in
    <verbatim|rated>'s statement remain unchecked.

    <item><strong|Q3. Notation, for #10.> <verbatim|DimAbove> compares with
    <verbatim|(Climb.Bel L).Field d>, with <verbatim|Bel L = Spin.comparator
    L> (<verbatim|Climb/Cells.lean:20>). <verbatim|Maxwell.Ranks> compares
    with <verbatim|(Maxwell.freeTable L.grid).Field d>. These are different
    tables. The step from <verbatim|RankWidths> to <verbatim|DimAbove>
    (<verbatim|cap_given>), and any identification of the two free tables,
    should be stated explicitly in PU-11c/PU-20b.

    <item><strong|Q4. V.3.> <verbatim|readyA> has no caller outside
    <verbatim|Emanate.lean>. <verbatim|emanate> is called only by endpoint
    assemblies: <verbatim|Summit.lean>, <verbatim|SharpGram/Common.lean>,
    <verbatim|TraceExtension/Made/World.lean>, <verbatim|MultipleContact/*>,
    <verbatim|UVExtension/*>, <verbatim|RG08/Reports/Receipt.lean> and
    <verbatim|RemainderComparison/Chron/Public.lean>. No source consumer was
    identifiable as V.3. This agrees with the note's obstruction 4.
  </itemize-minus>

  <section|Required changes and remaining
  uncertainty><label|required-changes-and-remaining-uncertainty>

  Required before canonical proof-unit issues use the split:

  <\enumerate>
    <item>Correct the <verbatim|Org.Commission.picks> statement and the VI.1
    consumer (finding 1).

    <item>Add the missing hypotheses to <verbatim|annular_fieldA>,
    <verbatim|tenet>, <verbatim|shells_law> and the PU-20a "Needs" column
    (finding 2), and to <verbatim|rated>, <verbatim|reception> and
    <verbatim|castle> (findings 3 and 5). Correct <verbatim|Scotia>'s
    quantifiers (finding 4) and the <verbatim|uv_log> conclusion (finding 6).

    <item>Qualify the "one consumer" sentences and the handoff-table
    consumers of PU-12 (finding 7), and answer Q1 with the compiled graph.

    <item>Record that <verbatim|Maxwell.Ranks> is a linear equivalence, and
    update finding 5 with the source evidence above.
  </enumerate>

  Not checked by this review: any elaboration (<strong|[E]>) or
  compiled-graph (<strong|[G]>) claim by reproduction; theorem counts; the
  literature leads; the descriptions of proof ideas that the note takes from
  the external outline (as the note itself says);
  <verbatim|Soft.Available>/<verbatim|Soft.Kraft> and the other bundles in
  the note's obstruction 1. An independent reviewer with a built checkout
  should re-run the note's <verbatim|#check>/<verbatim|#print> list and the
  reference closures, particularly for Q1 and Q2.

  <section|Acceptance><label|acceptance>

  None. This is an agent-assisted review reporting changes requested. A
  responsible human reviewer must record any acceptance after the required
  changes are resolved, against a new content fingerprint.

  <section|Commands run><label|commands-run>

  <\shell-code>
    sha256sum blueprint/interfaces/rank-determinant-stress.md
    \ \ \ \ \ \ \ \ \ \ \ # a7477c98\<ldots\>2555

    git show 6cda532:blueprint/interfaces/rank-determinant-stress.md \|
    sha256sum \ \ # same

    python3 imports.py Lean/ imports.json \ \ # parse import lines of 9,477
    modules (scratch script, not committed)

    python3 reach.py \<less\>module\<gtr\> \<less\>module\<gtr\>... \ \ #
    transitive-import queries quoted above

    rg -n '\<less\>declaration pattern\<gtr\>' Lean/YM \ # locate
    declarations; sed -n of the cited line ranges

    python3 scripts/check_blueprint.py \ \ \ \ \ # Blueprint structure OK: 2
    units.

    python3 -m unittest discover -s tests \ \ # Ran 22 tests, OK

    git diff --check
  </shell-code>

  Lean: <verbatim|leanprover/lean4:v4.32.0> was installed from the official
  release tarball, and <verbatim|lean --version> reports commit
  <verbatim|8c9756b2\<ldots\>>. No <verbatim|lake> command succeeded, because
  dependencies could not be fetched; no Lean file was elaborated.
</body>

<\initial>
  <\collection>
    <associate|html-title|Review of an interface audit: rank, determinant and
    stress handoffs \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|acceptance|<tuple|5|7>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|2.1|2>>
    <associate|auto-4|<tuple|2.2|4>>
    <associate|auto-5|<tuple|2.3|6>>
    <associate|auto-6|<tuple|3|6>>
    <associate|auto-7|<tuple|4|7>>
    <associate|auto-8|<tuple|5|7>>
    <associate|auto-9|<tuple|6|7>>
    <associate|commands-run|<tuple|6|7>>
    <associate|confirmed|<tuple|2.2|4>>
    <associate|definite-errors|<tuple|2.1|2>>
    <associate|finding-5-of-the-note-which-maxwellranks-is-used-downstream-largely-answered-s|<tuple|2.3|6>>
    <associate|findings|<tuple|2|2>>
    <associate|method-and-its-limits|<tuple|1|2>>
    <associate|open-questions-for-the-author-not-errors|<tuple|3|6>>
    <associate|required-changes-and-remaining-uncertainty|<tuple|4|7>>
    <associate|review-of-an-interface-audit-rank-determinant-and-stress-handoffs|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Method
      and its limits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Findings>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Definite errors
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|Confirmed
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|Finding 5 of the note (which
      <with|font-family|<quote|tt>|language|<quote|verbatim>|Maxwell.Ranks>
      is used downstream): largely answered [S]
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Open
      questions for the author (not errors)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Required
      changes and remaining uncertainty> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Acceptance>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Commands
      run> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>