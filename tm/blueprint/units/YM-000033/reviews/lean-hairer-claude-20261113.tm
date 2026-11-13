<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../index.tm><ym-nav-sep><hlink|Manuscript|../../../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../../glossary.tm><ym-nav-sep><hlink|Notation|../../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../../CONTRIBUTING.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> YM-000026|../../YM-000026/correspondence.tm>|<hlink|YM-000033:
  Selected trace sensor and weighted Ward limit
  (draft)|../correspondence.tm><ym-nav-sep><hlink|HANDOFF|../HANDOFF.tm><ym-nav-sep><hlink|validation|../validation.tm>|<hlink|YM-000034
  \<rightarrow\>|../../YM-000034/correspondence.tm>>

  <ym-title|Review of a proof unit><label|review-of-a-proof-unit>

  <\itemize-minus>
    <item>Unit: YM-000033, <verbatim|blueprint/units/YM-000033/>

    <item>Role: Lean correspondence

    <item>Human reviewer: <verbatim|hairer> (account under which this report
    is submitted; no human acceptance is recorded by this report)

    <item>Agent assistance: the whole review was done by a Claude (Anthropic)
    agent session, <verbatim|hairer-claude-issue33-review-20261113>. The unit
    was drafted with GPT-6.1 Terra (Codex).

    <item>Content SHA-256: <verbatim|f4ab86a58f7df57adc923ef2298df4377c1942c8a6a2cebcf74c641f396d5657>
    (<verbatim|python3 scripts/check_blueprint.py --fingerprint YM-000033> at
    <verbatim|69c254b>)

    <item>Manuscript files and labels: <verbatim|manuscript/existence/trace-prosper-sensor.tex>,
    <verbatim|prop:trace-prosper-sensor>;
    <verbatim|blueprint/units/YM-000033/correspondence.md>

    <item>Source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>

    <item>Review task and PR: issue <hlink|#33|https://github.com/hairer/humanise-yang-mills/issues/33>;
    author PR #71; this report's PR: draft against
    <verbatim|codex/existence-monograph>.

    <item>Outcome: <strong|accepted locally for the items checked below;
    coverage of the input correspondence is partial.> No discrepancy found,
    and no required change for this role. <strong|No Lean was elaborated:>
    the toolchain and Mathlib cache are unreachable from the review
    environment, so <verbatim|#print axioms YM.Trace.Terrace.springs> was not
    run.
  </itemize-minus>

  <section|Findings and evidence><label|findings-and-evidence>

  All by reading the pinned source.

  <strong|Target statement.> <verbatim|YM.Trace.Terrace.Prosper> and
  <verbatim|springs> (<verbatim|Lean/YM/TraceExtension/Terrace/Lease.lean>
  24\U48):

  <\itemize-minus>
    <item><verbatim|Prosper.alpha> is <verbatim|Tendsto s atTop (\<b-cal-N\>
    Vbase)>. This is the manuscript's <math|s<rsub|i>\<to\>f> in operator
    norm, with <math|f> the componentwise reference projection.

    <item><verbatim|Prosper.vote>: real-linear <math|\<mu\><rsub|i>>, a
    constant <math|c\<geqslant\>0> with an eventual bound uniform in
    <math|y>, and, for each <math|e\<gtr\>0>, an eventual weighted bound
    uniform in <math|y>. This is exactly the conclusion of the proposition,
    including the remark that the tail may depend on <math|\<varepsilon\>>
    but not on <math|y>.

    <item><verbatim|springs> takes an arbitrary <math|v> with
    <verbatim|Tendsto v (\<b-cal-N\> (Stem5 _))>,
    <verbatim|hueK\<centerdot\>s_i(v_i) \<rightarrow\> 0> and
    <verbatim|hueK\<centerdot\>Lease(v_i) \<rightarrow\> 0>. These are the
    three marked hypotheses <verbatim|eq:trace-sensor-marked>, with <math|x=>
    <verbatim|Stem5> and <math|\<rho\>=> <verbatim|Lease>.
  </itemize-minus>

  <strong|Weight and Ward functional.>

  <\itemize-minus>
    <item><verbatim|hueK A i = AgeK A (1/5) i>, with <verbatim|AgeK A a i =
    Wave a (hatBeta i)> (<verbatim|Look.lean> 10) and <verbatim|Wave a x =
    exp (a\<centerdot\>RLog x)> (<verbatim|Zn/Have.lean> 10).
    <verbatim|monitor = exp((log log \<beta\>\<#302\>)\<twosuperior\>)>
    (<verbatim|RG/History.lean> 81). The weight is applied at <verbatim|Stern
    V i = summit A ((V i).k)>, and <verbatim|summit> is <verbatim|Nat.find>
    of the first <math|n\<gtr\>j> with <verbatim|(log \<beta\>\<#302\>_j)^48
    \<leq\> scale n \<minus\> scale j> (<verbatim|Base.lean> 18\U24). This
    matches <math|\<frak-a\><rsub|i>> and <math|q<around|(|j|)>>.

    <item><verbatim|rho> is <math|-4*<around|(|w<rsub|0>+4*w<rsub|1>|)>> in
    the <verbatim|bareVector> coordinates (<verbatim|Foundation/Dilate.lean>
    78\U84), and <verbatim|Lease = rho \<circ\> plate>. This matches the
    manuscript's <math|\<rho\>>.
  </itemize-minus>

  <strong|Proof route.> <verbatim|springs> obtains <math|U,t> from
  <verbatim|lensP> and then applies <verbatim|fitV>, <verbatim|scout> and
  <verbatim|expenses> (<verbatim|Delta.lean>). I read all four abstract
  lemmas.

  <\itemize-minus>
    <item><verbatim|scout> is the manuscript's proof of
    <math|s<rsub|i>\<to\>f>: <verbatim|plumage> gives the decomposition
    <math|y=U*f<around|(|y|)>+A<around|(|y|)>*x>,
    <math|V<rsub|i>=u<rsub|i>*f+A\<otimes\>w<rsub|i>\<to\>1>, and the
    inverse.

    <item><verbatim|permute>, <verbatim|spend> and <verbatim|expenses> give
    <math|\<mu\><rsub|i>=\<rho\>\<circ\>u<rsub|i>> and the weighted bound, as
    in <verbatim|lem:ex-lattice-trace-weighted-price>.

    <item><verbatim|lensP> (<verbatim|Prism.lean> 51\U77; <verbatim|omit hs
    HS>, so the call in <verbatim|springs> with <verbatim|K \<theta\> hG hp>
    is consistent) concludes <math|f*U=<math-up|id>>, <math|t<rsub|i>\<to\>U>
    pointwise, and <math|s<rsub|i>*t<rsub|i>=<math-up|id>> eventually. These
    are exactly the three facts the manuscript derives before the
    proposition. Its lift is <verbatim|prize Z X V 5 i (Y 5 i
    \<centerdot\>)>, and <verbatim|Spun.starts> gives <verbatim|(s i v).val d
    = (X.U i 5).symm (Vault \<ldots\> (crown \<ldots\>) (v.val d))> on one
    eventual tail (<verbatim|Prism.lean> 26\U27). Both match
    <verbatim|eq:trace-sensor-selected-formulas> under the identifications
    <verbatim|prize = c\<#207B\>\<onesuperior\> swale> and <verbatim|Vault =
    P(c t\<twosuperior\> M\<#207B\>\<onesuperior\> \<centerdot\>)> recorded
    in <verbatim|correspondence.md>. I did not re-open <verbatim|prize>,
    <verbatim|swale> or <verbatim|Vault>.
  </itemize-minus>

  <strong|One-step input.> <verbatim|Sceptre.step> (<verbatim|Knell.lean>
  62\U65) reads: for every <math|d\<leqslant\>5> and <math|m\<geqslant\>>
  <verbatim|C.ref d>, eventually in the period <math|p>, for every
  <math|N\<gtr\>m> and every label <math|v>, we have <math|b/a\<leqslant\>2>
  and <verbatim|coeffSize(Cturn m \<minus\> scaled(a/b)(vowel(block m) Cturn
  (m+1))) \<leq\> gear m \<centerdot\> coeffSize(core Cturn (m+1))>. Here
  <verbatim|gear A j = 2(1+columns(j+1))/cameo(j+1)> (<verbatim|Knell.lean>
  59) and <verbatim|cameo = AgeK (1/2)> (<verbatim|cameo_age>,
  <verbatim|Look.lean> 16). This is exactly
  <verbatim|eq:trace-sensor-raw-step>, with <math|g<rsub|j>> and the stated
  quantifier order.

  <section|Required changes and remaining
  uncertainty><label|required-changes-and-remaining-uncertainty>

  No required change for this role. The ultrafilter wording point (R4 in the
  mathematics report) concerns how the source's <verbatim|hb : \<b-cal-L\>
  \<leq\> F.fuse> is described.

  Not checked:

  <\itemize-minus>
    <item>Elaboration and the axiom print of <verbatim|springs>.

    <item>The source's own production of the inputs:
    <verbatim|Gondola.terminal>, <verbatim|sky_tip>,
    <verbatim|steep.terms>/<verbatim|mintS>, <verbatim|InvoiceSky>,
    <verbatim|Tested.score>, <verbatim|cruise>, <verbatim|move_anchor>,
    <verbatim|arrive_t>.

    <item>The identification of the manuscript's orthogonal-complement
    section with <verbatim|section5>/<verbatim|ladder_on>.

    <item><verbatim|prize>, <verbatim|swale> and <verbatim|Vault> as
    definitions.

    <item>The fields of <verbatim|Makes>, <verbatim|Scrim> and
    <verbatim|PostT> beyond those named in <verbatim|correspondence.md>.
  </itemize-minus>

  The correspondence record states these as inputs, and I found nothing
  inconsistent in what I read. A reviewer with a working Lean setup should
  run <verbatim|#print axioms YM.Trace.Terrace.springs> and confirm the
  elaborated type of <verbatim|Prosper>.

  <section|Acceptance><label|acceptance>

  No acceptance is recorded. A responsible human reviewer may record
  Lean-correspondence acceptance for the checked scope, preferably after the
  axiom print has been run.

  <ym-unit-nav|<hlink|\<leftarrow\> YM-000026|../../YM-000026/correspondence.tm>|<hlink|YM-000033:
  Selected trace sensor and weighted Ward limit
  (draft)|../correspondence.tm><ym-nav-sep><hlink|HANDOFF|../HANDOFF.tm><ym-nav-sep><hlink|validation|../validation.tm>|<hlink|YM-000034
  \<rightarrow\>|../../YM-000034/correspondence.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|Review of a proof unit \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|acceptance|<tuple|3|3>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|3>>
    <associate|findings-and-evidence|<tuple|1|1>>
    <associate|required-changes-and-remaining-uncertainty|<tuple|2|2>>
    <associate|review-of-a-proof-unit|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Findings
      and evidence> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Required
      changes and remaining uncertainty> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Acceptance>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>