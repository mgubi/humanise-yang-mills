<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../index.tm><ym-nav-sep><hlink|Manuscript|../../../../manuscript/index.tm><ym-nav-sep><hlink|Monograph|../../../../manuscript/existence.tm><ym-nav-sep><hlink|Glossary|../../../glossary.tm><ym-nav-sep><hlink|Notation|../../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../../CONTRIBUTING.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> YM-000026|../../YM-000026/correspondence.tm>|<hlink|YM-000033:
  Selected trace sensor and weighted Ward limit
  (draft)|../correspondence.tm><ym-nav-sep><hlink|HANDOFF|../HANDOFF.tm><ym-nav-sep><hlink|evidence/wrapper|../evidence/wrapper.tm><ym-nav-sep><hlink|validation|../validation.tm>|<hlink|YM-000034
  \<rightarrow\>|../../YM-000034/correspondence.tm>>

  <ym-title|Review of a proof unit><label|review-of-a-proof-unit>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Findings and
    evidence> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Optional record
    item> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Required
    changes and remaining uncertainty> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Acceptance>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>
  </table-of-contents>

  <\itemize-minus>
    <item>Unit: YM-000033, <verbatim|blueprint/units/YM-000033/>

    <item>Role: Lean correspondence (renewed review of revision 1)

    <item>Human reviewer: <verbatim|ADB991> (account under which this report
    is submitted; ADB991 had not reviewed it before submission, and no human
    acceptance is recorded by this report)

    <item>Agent assistance: the whole review was done by a Claude (Anthropic)
    agent session, <verbatim|ADB991-claude-20261113-f80c>, running as a
    scheduled agent. This account authored no part of YM-000033 and did not
    write review #126/#127.

    <item>Content SHA-256: <verbatim|ad3b82466a1b69b610548e1af518251def5ac1cd4a6bc5757a91b3cc46cba4aa>
    (<verbatim|python3 scripts/check_blueprint.py --fingerprint YM-000033> at
    <verbatim|codex/existence-monograph> <verbatim|b0bfc78>)

    <item>Manuscript files and labels: <verbatim|manuscript/existence/trace-prosper-sensor.tex>
    (the list (S1)\U(S7), <verbatim|prop:trace-prosper-sensor>,
    <verbatim|eq:trace-sensor-weight>, <verbatim|eq:trace-sensor-tested-price>,
    <verbatim|eq:trace-sensor-raw-step>);
    <verbatim|blueprint/units/YM-000033/correspondence.md>, sections "Formal
    hypothesis crosswalk", "Quantifier checkpoints" and "Revision response to
    independent review #126, corrected by #127"

    <item>Source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>
    (Lean tree <verbatim|328ad19b404d2db2a578319ea3e4eba4b27e34ef>; no Lean
    file changed by PR #134)

    <item>Review task and PR: issue <hlink|#33|https://github.com/hairer/humanise-yang-mills/issues/33>,
    claim <hlink|https://github.com/hairer/humanise-yang-mills/issues/33#issuecomment-6856591729|https://github.com/hairer/humanise-yang-mills/issues/33#issuecomment-6856591729>;
    revision PR #134; this report's PR: report-only draft against
    <verbatim|codex/existence-monograph>.

    <item>Outcome: <strong|accepted locally for the items checked below; no
    discrepancy found and no required change.> One optional record item (L1).
    <strong|No Lean was elaborated>: no pinned toolchain or Mathlib cache is
    reachable from this environment. Evidence is source text only.
  </itemize-minus>

  <section|Findings and evidence><label|findings-and-evidence>

  This report checks the source claims that the revision added or changed.
  The broader crosswalk was checked in #126 and is not repeated.

  <\itemize-minus>
    <item><strong|Target statement.> <verbatim|YM.Trace.Terrace.Prosper>
    (<verbatim|Lean/YM/TraceExtension/Terrace/Lease.lean> 27\U31):
    <verbatim|alpha : Tendsto s atTop (\<b-cal-N\> Vbase)>, and
    <verbatim|vote>: there are <verbatim|\<mu\> i> and <verbatim|c \<geq\> 0>
    with <verbatim|\<forall\>\<#1DA0\> i, \<forall\> y, \<\|\|\>\<mu\> i
    y\<\|\|\> \<leq\> c\<\|\|\>y\<\|\|\>>, and for each <verbatim|e \<gtr\>
    0>, <verbatim|\<forall\>\<#1DA0\> i, \<forall\> y, \<\|\|\>hueK A (Stern
    V i) * (\<mu\> i (s i y) \<minus\> Lease U# h y)\<\|\|\> \<leq\>
    e\<\|\|\>y\<\|\|\>>. This is the conclusion of
    <verbatim|prop:trace-prosper-sensor> as revised: one eventual bound
    uniform in <math|h>, and one tail per <math|\<varepsilon\>> uniform in
    <math|y>. Matches.

    <item><strong|Marked inputs (S7) \<leftrightarrow\> <verbatim|springs>
    arguments> (<verbatim|Lease.lean> 34\U35): <verbatim|hv : v
    \<rightarrow\> Stem5 U#> (<math|v<rsub|i>\<to\>x>), <verbatim|hk : hueK
    \<bullet\> s i (v i) \<rightarrow\> 0>, <verbatim|hw : hueK * Lease (v i)
    \<rightarrow\> 0>. Matches <verbatim|eq:trace-sensor-marked>. The section
    hypotheses <verbatim|hZ, H, hb, hr, hq, K, \<theta\>, hG, hp> are the
    source of (S1)\U(S6) as recorded in the crosswalk.

    <item><strong|Weight and postselected level (S1) \<leftrightarrow\>
    <verbatim|hueK>, <verbatim|AgeK>, <verbatim|Stern>, <verbatim|summit>.>
    <verbatim|hueK Y i = AgeK Y (1/5) i> (<verbatim|Lease.lean> 24);
    <verbatim|AgeK A a i = Wave a (A.clock.hatBeta i)>
    (<verbatim|Terrace/Look.lean> 10); <verbatim|Wave a x = exp (a * (log
    (log x))^2)> (<verbatim|Zn/Have.lean> 8\U10). <verbatim|Stern V i =
    summit A (V i).k> (<verbatim|Gondola.lean> 32), and <verbatim|summit A j
    = Nat.find (goal A j)>, the least <math|i\<gtr\>j> with <verbatim|(log
    hatBeta j)^48 \<leq\> scale i \<minus\> scale j>
    (<verbatim|Terrace/Base.lean> 17\U22). So <math|\<frak-a\><rsub|i>=exp
    <around|{|<tfrac|1|5><around|(|log log
    <wide|\<beta\>|^><rsub|n<rsub|i>>|)><rsup|2>|}>> with
    <math|n<rsub|i>=q<around|(|k<rsub|i>|)>>, as in
    <verbatim|eq:trace-sensor-weight> and (S1). Matches.

    <item><strong|R3 \<leftrightarrow\> <verbatim|YM.Next.Rank.Price.Tested>>
    (<verbatim|Lean/YM/Next/RANK/Matrices.lean> 67\U72). <verbatim|read :
    C.label d \<rightarrow\>\<#2097\>[\<bbb-C\>] C.label d> is an
    endomorphism with <verbatim|unit : read (C.refUnit d) = e0> and
    <verbatim|score : coeffSize (awake v \<minus\> read v) \<leq\> coeffSize
    (awake v)/2>. <verbatim|awake D k N p v = (a_k^D)\<#207B\>\<onesuperior\>
    \<bullet\> columns \<ldots\> v> (line 30) is the manuscript's
    <math|<math-ss|A>=d<rsub|k<rsub|i>><rsup|-5><math-up|Col><rsub|k<rsub|i>>>
    at <math|D=5>. Matches the first bound of
    <verbatim|eq:trace-sensor-tested-price> and the R3 row of the
    correspondence.

    <item><strong|R4 \<leftrightarrow\> <verbatim|hb : (\<b-cal-L\> : Filter
    (\<bbb-N\>\<times\>\<bbb-N\>)) \<leq\> F.fuse>> (<verbatim|Lease.lean>
    15). <verbatim|Order.fuse f = map (fun i =\<gtr\> (f.mesh i.2, f.per
    i.1)) (atTop.curry atTop)> (<verbatim|Lean/YM/Extraction/Inherited.lean>
    27). By <verbatim|Order.fused>, an event is in <verbatim|fuse> iff
    <verbatim|f.late>, i.e. <verbatim|\<forall\>\<#1DA0\> k,
    \<forall\>\<#1DA0\> j, A (f.mesh j) (f.per k)>
    (<verbatim|Extraction/Orders.lean> 47). <verbatim|mesh> and
    <verbatim|per> are <verbatim|Sequence>s, strictly increasing
    (<verbatim|Orders.lean> 14\U16, <verbatim|Sequence.cofinal>). So
    <verbatim|fuse>, and hence <verbatim|\<b-cal-L\>>, contains both tails
    <math|<around|{|N\<geqslant\>n|}>> and
    <math|<around|{|\<nu\>\<geqslant\>\<nu\><rsub|0>|}>>, and the set
    "eventually in the period, for all <math|N\<gtr\>j>" for each <math|j>.
    The manuscript's first coordinate is the mesh index and the second the
    period, as in <verbatim|fuse>. Matches.

    <item><strong|(S5) \<leftrightarrow\>
    <verbatim|YM.Trace.Terrace.Sceptre.step>> (<verbatim|Terrace/Knell.lean>
    63\U65): <verbatim|\<forall\> d m, d \<leq\> 5 \<rightarrow\> C.ref d
    \<leq\> m \<rightarrow\> \<forall\>\<#1DA0\> p, \<forall\> N, m \<less\>
    N \<rightarrow\> \<forall\> v>, <verbatim|b/a \<leq\> 2> and the residual
    bound with <verbatim|scaled (a/b)> and <verbatim|vowel> (block), with
    <verbatim|a, b> the budget thresholds at <verbatim|m, m+1>. The
    quantifier order (fixed level, eventually in the period, uniform in
    <math|N\<gtr\>m> and the label) is the one in (S5). The thresholds are
    deterministic (<verbatim|C.path.levels>), so the ratio bound does not
    depend on <math|\<omega\>>; the manuscript's "on the same set" is
    harmless. Matches.
  </itemize-minus>

  <section|Optional record item><label|optional-record-item>

  <\itemize-minus>
    <item><strong|L1.> (S4) assumes that <math|<math-ss|A>> is injective. In
    the source this is not a separate field. <verbatim|Tested.bijective>
    (<verbatim|Matrices.lean> 78\U86) derives bijectivity of <verbatim|read>
    from <verbatim|Tested.cost> and <verbatim|reference_size> (line 58), the
    lower bound <verbatim|coeffSize v \<leq\> outward C d k * (C.S.a k)^d *
    coeffSize (awake C d k N p v)>, which holds under <verbatim|C.Makes> with
    <verbatim|C.ref d \<leq\> k \<leq\> N>. The R3 row of
    <verbatim|correspondence.md> cites <verbatim|Tested> but not this
    supplier. Adding <verbatim|reference_size>/<verbatim|Tested.bijective> to
    the crosswalk would show where the injectivity input comes from. This is
    not a discrepancy.
  </itemize-minus>

  <section|Required changes and remaining
  uncertainty><label|required-changes-and-remaining-uncertainty>

  None required. Not done: Lean elaboration, <verbatim|#check> and
  <verbatim|#print axioms> for <verbatim|springs> and <verbatim|Prosper>, and
  kernel replay. The production of the section hypotheses
  (<verbatim|Gondola>, <verbatim|steep>, <verbatim|Scrim>,
  <verbatim|Sceptre>, <verbatim|PostT>, <verbatim|Spun>, <verbatim|C.Makes>)
  was not traced beyond the lines cited.

  <section|Acceptance><label|acceptance>

  No acceptance is recorded by this report. A responsible human may record
  local Lean-correspondence acceptance at fingerprint
  <verbatim|ad3b8246\<ldots\>46cba4aa> for the items above.

  <ym-unit-nav|<hlink|\<leftarrow\> YM-000026|../../YM-000026/correspondence.tm>|<hlink|YM-000033:
  Selected trace sensor and weighted Ward limit
  (draft)|../correspondence.tm><ym-nav-sep><hlink|HANDOFF|../HANDOFF.tm><ym-nav-sep><hlink|evidence/wrapper|../evidence/wrapper.tm><ym-nav-sep><hlink|validation|../validation.tm>|<hlink|YM-000034
  \<rightarrow\>|../../YM-000034/correspondence.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|Review of a proof unit \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|acceptance|<tuple|4|3>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-3|<tuple|3|3>>
    <associate|auto-4|<tuple|4|3>>
    <associate|findings-and-evidence|<tuple|1|2>>
    <associate|optional-record-item|<tuple|2|3>>
    <associate|required-changes-and-remaining-uncertainty|<tuple|3|3>>
    <associate|review-of-a-proof-unit|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Findings
      and evidence> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Optional
      record item> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Required
      changes and remaining uncertainty> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Acceptance>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>