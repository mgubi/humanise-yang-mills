<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../index.tm><ym-nav-sep><hlink|Manuscript|../../../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../../glossary.tm><ym-nav-sep><hlink|Notation|../../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../../CONTRIBUTING.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> YM-000033|../../YM-000033/correspondence.tm>|<hlink|YM-000034:
  Trace branch moment limits and weighted washout
  (draft)|../correspondence.tm><ym-nav-sep><hlink|HANDOFF|../HANDOFF.tm><ym-nav-sep><hlink|validation|../validation.tm>|>

  <ym-title|Review of a proof unit><label|review-of-a-proof-unit>

  <\itemize-minus>
    <item>Unit: YM-000034, <verbatim|blueprint/units/YM-000034/>

    <item>Role: Lean correspondence

    <item>Human reviewer: <verbatim|hairer> (account under which this report
    is submitted; no human acceptance is recorded by this report)

    <item>Agent assistance: the whole review was done by a Claude (Anthropic)
    agent session, <verbatim|hairer-claude-issue34-review-20261113>. The unit
    was drafted with GPT-6.1 Terra (Codex).

    <item>Content SHA-256: <verbatim|59b66debcf4ebb92ff4ff13f8c71ab481350e623ed61dc37fd91ddabd60f1ba7>
    (<verbatim|python3 scripts/check_blueprint.py --fingerprint YM-000034> at
    <verbatim|69c254b>)

    <item>Manuscript files and labels: <verbatim|manuscript/existence/trace-branch-moments.tex>,
    <verbatim|prop:ex-branch-moments>, <verbatim|prop:ex-branch-washout>;
    <verbatim|blueprint/units/YM-000034/correspondence.md>

    <item>Source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>

    <item>Review task and PR: issue <hlink|#34|https://github.com/hairer/humanise-yang-mills/issues/34>;
    author PR #70; this report's PR: draft against
    <verbatim|codex/existence-monograph>.

    <item>Outcome: <strong|accepted locally for the items checked below; the
    input correspondence is only partly covered.> No discrepancy found and no
    required change. <strong|No Lean was elaborated:> the toolchain is
    unreachable from the review environment, so <verbatim|#print axioms> for
    <verbatim|nearing_h> and <verbatim|muteP> was not run.
  </itemize-minus>

  <section|Findings and evidence><label|findings-and-evidence>

  All by reading the pinned source (<verbatim|Lean/YM/TraceExtension/Shelves/Pear.lean>
  and the definitions below).

  <\itemize-minus>
    <item><strong|Branches.> <verbatim|Bend := Option Bool>
    (<verbatim|Slate/Pave.lean> 23): <verbatim|none> is the principal branch
    (<verbatim|Zn.Meld>), and <verbatim|some c> are the corrections
    <verbatim|Plint G n c> built from <verbatim|Toca c>
    (<verbatim|Margin/Mallet.lean> 15\U16). <verbatim|Toca true> is
    <math|<tfrac|1|4><big|sum>> of the diagonal pair labels on the diagonal;
    <verbatim|Toca false> is the off-diagonal pair sum. These are the
    manuscript's <math|J<rsup|+>> and <math|J<rsup|->>. The manuscript's
    <math|<around|{|0,-,+|}>> is <verbatim|{none, some false, some true}>.

    <item><strong|Coefficients.> <verbatim|BornZ i = i.elim (-tribe) azure>,
    with <verbatim|tribe = ![1,-1/4,1]> (<verbatim|Slate/April.lean> 26\U27)
    and <verbatim|azure M = if M then ![0,1/4,0] else ![0,0,1]>
    (<verbatim|Margin/Mallet.lean> 14). This gives
    <math|w<rsup|0>=<around|(|-1,<tfrac|1|4>,-1|)>>,
    <math|w<rsup|+>=<around|(|0,<tfrac|1|4>,0|)>>,
    <math|w<rsup|->=<around|(|0,0,1|)>>.

    <item><strong|Material tensor.> <verbatim|materialB C t = material
    (Cells.standard C) (Fin.cons 0 (BornZ t))> (<verbatim|Pear.lean> 50).
    <verbatim|material S w a b = fromPol S (stress G w a b)>, with
    <verbatim|fromPol = S.project \<circ\> coords>
    (<verbatim|Push/STRESS_FLUX/Lift.lean> 24, 147). <verbatim|stress> is, on
    the diagonal, <verbatim|t 0 \<bullet\> unit + t 1 \<bullet\> \<Sigma\>_i
    pair a i a i + t 2 \<bullet\> \<Sigma\>\<Sigma\> pair i j i j>, and off
    the diagonal <verbatim|t 3 \<bullet\> \<Sigma\>_i pair a i b i>
    (<verbatim|Polynomial.lean> 177\U179). With <verbatim|t 0 = 0> this is
    <math|\<pi\><rsub|0>*\<cal-S\><around|(|w|)>=M<around|(|w|)>>.
    <verbatim|pair_value> reads <math|<around|\<langle\>|F<rsub|a*b>,F<rsub|c*d>|\<rangle\>>>
    with no extra factor, matching the manuscript's <math|P<rsub|i*j,k*l>>.

    <item><strong|First proposition.> <verbatim|chartB> says <verbatim|Phase4
    J V Z j (baron S X k) = inter (Moment4 \<ldots\> (Shine4 Z X k))
    \<centerdot\>> for <verbatim|k = Stern V j>, with <verbatim|inter f a b =
    \<onehalf\>(f a b + f b a)> (<verbatim|Shelves/Tonic.lean> 49). This is
    the chart-array identity, with <math|<math-ss|M><rsub|i>> =
    <verbatim|Moment4>, the transported averaged coefficients =
    <verbatim|Shine4> (<verbatim|swale> of <verbatim|OrbitT>), and
    <math|<math-up|sym>> = <verbatim|inter>. <verbatim|nearing_h> concludes
    <verbatim|Tendsto (fun k =\<gtr\> Phase4 J V Z k (baron S P' (Stern V
    k))) atTop (\<b-cal-N\> (materialB C B))>. Its hypotheses <verbatim|hZ :
    Tendsto (Moment4 Z J V) atTop (\<b-cal-N\> (Hill4 C))> and
    <verbatim|tiara> (<verbatim|Shine4 \<rightarrow\> BillC (BornZ B)>) are
    the moment input <verbatim|eq:ex-branch-moment-input> and the coefficient
    input <verbatim|eq:ex-branch-coefficient-input>. <verbatim|Courtis>
    (<verbatim|Hill4 C (BillC F\<#1D63\> w) = material \<ldots\> (Fin.cons 0
    w)>) is the step <math|\<frak-c\><rsub|0>*\<pi\><rsub|0>*\<cal-S\><around|(|w|)>=M<around|(|w|)>>,
    proved there from the vanishing expectation of the pair labels. The
    summit indexing <verbatim|Stern V k> is the manuscript's
    <math|k<rsub|i>>.

    <item><strong|Washout.> <verbatim|muteP p (hl : B \<neq\> some true)>
    concludes <verbatim|Tendsto (fun i =\<gtr\> H!(Stern V i)^p \<bullet\>
    \<Sigma\>_a Phase4 J V Z i (baron S P' (Stern V i)) a a) atTop
    (\<b-cal-N\> 0)> for every natural <verbatim|p>. This is
    <verbatim|eq:ex-branch-washout> for <math|b\<in\><around|{|0,-|}>> and
    each fixed <math|p\<in\>\<bbb-N\>>, with the clock evaluated at the
    summit level. The proof route (<verbatim|Thin> gives <verbatim|Fast> of
    the raw diagonal sums <verbatim|Zees>; <verbatim|centering> fixes them
    via <verbatim|stitch_k>; <verbatim|Vigor> with <verbatim|hZ>) mirrors
    <verbatim|prop:ex-branch-raw-fast> followed by
    <verbatim|prop:ex-branch-washout>.
  </itemize-minus>

  <section|Required changes and remaining
  uncertainty><label|required-changes-and-remaining-uncertainty>

  No required change for this role.

  Not checked:

  <\itemize-minus>
    <item>Elaboration, and the axiom prints of <verbatim|nearing_h>,
    <verbatim|muteP> and <verbatim|chartB>.

    <item>The bodies and hypotheses of <verbatim|tiara>, <verbatim|Thin>,
    <verbatim|Vigor>, <verbatim|heroicB>, <verbatim|strikes>,
    <verbatim|Dash.arcing>, <verbatim|stitch_k>, <verbatim|OrbitT>,
    <verbatim|swale>, <verbatim|Moment4>, <verbatim|Shine4> and
    <verbatim|baron>, beyond their roles above.

    <item>The structured hypotheses <verbatim|Grant>, <verbatim|Rod>,
    <verbatim|Gondola>, <verbatim|StarPath>, <verbatim|CellHyp>,
    <verbatim|Sceptre>, <verbatim|PostT>, <verbatim|Stock.Tabs> and
    <verbatim|supportQ>. The correspondence record lists them as inputs, and
    I found nothing inconsistent in what I read.
  </itemize-minus>

  A reviewer with a working Lean setup should run the axiom prints and
  confirm the elaborated statements of <verbatim|nearing_h> and
  <verbatim|muteP>.

  <section|Acceptance><label|acceptance>

  No acceptance is recorded. A responsible human reviewer may record
  Lean-correspondence acceptance for the checked scope, preferably after the
  axiom prints have been run.

  <ym-unit-nav|<hlink|\<leftarrow\> YM-000033|../../YM-000033/correspondence.tm>|<hlink|YM-000034:
  Trace branch moment limits and weighted washout
  (draft)|../correspondence.tm><ym-nav-sep><hlink|HANDOFF|../HANDOFF.tm><ym-nav-sep><hlink|validation|../validation.tm>|>
</body>

<\initial>
  <\collection>
    <associate|html-title|Review of a proof unit \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|acceptance|<tuple|3|2>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|2>>
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