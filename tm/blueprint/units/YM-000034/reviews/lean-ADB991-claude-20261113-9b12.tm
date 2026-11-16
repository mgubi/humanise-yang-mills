<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../index.tm><ym-nav-sep><hlink|Manuscript|../../../../manuscript/index.tm><ym-nav-sep><hlink|Monograph|../../../../manuscript/existence.tm><ym-nav-sep><hlink|Glossary|../../../glossary.tm><ym-nav-sep><hlink|Notation|../../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../../CONTRIBUTING.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> YM-000033|../../YM-000033/correspondence.tm>|<hlink|YM-000034:
  Trace branch moment limits and weighted washout
  (draft)|../correspondence.tm><ym-nav-sep><hlink|HANDOFF|../HANDOFF.tm><ym-nav-sep><hlink|evidence/wrapper|../evidence/wrapper.tm><ym-nav-sep><hlink|validation|../validation.tm>|>

  <ym-title|Review of a proof unit><label|review-of-a-proof-unit>

  <\itemize-minus>
    <item>Unit: YM-000034, <verbatim|blueprint/units/YM-000034/>

    <item>Role: Lean correspondence (renewed review of revision 1)

    <item>Human reviewer: <verbatim|ADB991> (account under which this report
    is submitted; ADB991 had not reviewed it before submission, and no human
    acceptance is recorded by this report)

    <item>Agent assistance: the whole review was done by a Claude (Anthropic)
    agent session, <verbatim|ADB991-claude-20261113-9b12>, running as a
    scheduled agent. This account authored no part of YM-000034 and did not
    write review #128.

    <item>Content SHA-256: <verbatim|01500ca93fd84b5d773c55a5fc4c4467f972175de13dce410f8f3bc8b12ed989>
    (<verbatim|python3 scripts/check_blueprint.py --fingerprint YM-000034> at
    PR #140 head <verbatim|b5d640286cc7128779dd14976ea920af4d7d136a>)

    <item>Manuscript files and labels: <verbatim|manuscript/existence/trace-branch-moments.tex>:
    the revised labels <verbatim|eq:ex-branch-recorded-difference>,
    <verbatim|eq:ex-branch-recorded-traces>,
    <verbatim|eq:ex-branch-transport-bound>,
    <verbatim|prop:ex-branch-raw-fast>, <verbatim|prop:ex-branch-washout>;
    <verbatim|blueprint/units/YM-000034/correspondence.md> (new section
    "Revision response to independent review #128")

    <item>Source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>
    (Lean tree <verbatim|328ad19b404d2db2a578319ea3e4eba4b27e34ef>, unchanged
    by the PR)

    <item>Review task and PR: issue <hlink|#34|https://github.com/hairer/humanise-yang-mills/issues/34>,
    claim <hlink|https://github.com/hairer/humanise-yang-mills/issues/34#issuecomment-6855003177|https://github.com/hairer/humanise-yang-mills/issues/34#issuecomment-6855003177>;
    revision PR #140; this report's PR: report-only draft against
    <verbatim|codex/existence-monograph>.

    <item>Outcome: <strong|accepted locally for the items checked below; no
    discrepancy found and no required change.> <strong|No Lean was
    elaborated>: no pinned toolchain or Mathlib cache is reachable from this
    environment. Evidence is source text only.
  </itemize-minus>

  <section|Findings and evidence><label|findings-and-evidence>

  This report checks the new correspondence claims of the revision. The
  correspondence of <verbatim|chartB>, <verbatim|nearing_h>,
  <verbatim|muteP>, <verbatim|Bend> and <verbatim|BornZ> was checked in #128
  and is not repeated. I re-read the target statements at
  <verbatim|Lean/YM/TraceExtension/Shelves/Pear.lean> lines 56, 66 and 74:
  <verbatim|muteP (p:\<bbb-N\>)(hl: B\<neq\>some true)> concludes
  <verbatim|Tendsto (fun i =\<gtr\> H! (P! i)^p \<bullet\> \<big-sum\> a,
  Phase4 \<ldots\> a a) atTop (\<b-cal-N\> 0)>. This is
  <verbatim|prop:ex-branch-washout> for each fixed <math|p> and
  <math|b\<in\><around|{|0,-|}>>.

  <\itemize-minus>
    <item><strong|<verbatim|eq:ex-branch-recorded-difference>
    \<leftrightarrow\> <verbatim|YM.Trace.Shelves.beacon_h>>
    (<verbatim|Shelves/Wilt.lean> 35). Its first conjunct is <verbatim|Fold
    \<ldots\> (d+1) (twig i f 0) (l \<bullet\> step i) = (C.S.a
    k)\<#207B\>\<onesuperior\> \<bullet\> (Z (l+1) - Z l)>, with <verbatim|Z
    y = Fold \<ldots\> d (f 0) (y \<bullet\> step i)>: the
    grade-<math|<around|(|d+1|)>> recording of the forward difference equals
    <math|a<rsub|k><rsup|-1>> times the difference of displaced
    grade-<math|d> recordings. The factor comes from
    <verbatim|Fold_more>/<verbatim|accol> (<verbatim|alto \<ldots\> (d+1) =
    a\<#207B\>\<onesuperior\> \<centerdot\> alto \<ldots\> d>). This is the
    manuscript's <math|a<rsub|k><rsup|-1>=a<rsub|k><rsup|-4>/a<rsub|k><rsup|-3>>.
    The displacement is handled by <verbatim|Fold_step>, which is the
    translation-covariance remark. Matches.

    <item><strong|Linearity \<leftrightarrow\>
    <verbatim|YM.Trace.Shelves.fade_w>> (<verbatim|Wilt.lean> 24):
    <verbatim|Fold> of a finite sum is the sum of the <verbatim|Fold>s, under
    the envelope hypotheses. Matches "the finite-volume correlation is linear
    in its inserted observable".

    <item><strong|<verbatim|eq:ex-branch-recorded-traces>, false branch
    \<leftrightarrow\> <verbatim|YM.Trace.Margin.Plint_thin>>
    (<verbatim|Margin/White.lean> 51): <verbatim|\<big-sum\> i, Plint G n
    false i i = 0>. With <verbatim|Toca false i i = 0>
    (<verbatim|Margin/Mallet.lean> 15), this is <math|J<rsup|-><rsub|a*a>=0>.
    The tested version follows from <verbatim|fade_w>. Matches.

    <item><strong|<verbatim|eq:ex-branch-recorded-traces>, principal branch
    \<leftrightarrow\> <verbatim|YM.Trace.Turret.cones>>
    (<verbatim|Turret/Mark.lean> 21): <verbatim|\<big-sum\> i, paceX r Z i i
    = \<big-sum\> i, twig i (pluck r Z i)>. <verbatim|paceX> (line 16) is the
    principal tensor <math|J<rsup|0>> as displayed in the setup: the
    <math|<around|(|0,0|)>> entry is <math|<big|sum>\<nabla\>*Q<rsup|<around|[|r|]>>-<big|sum><rsub|j\<ne\>0>J<rsup|<around|[|r|]>><rsub|j*j>>;
    for <math|b\<less\>a> it is <math|J<rsup|<around|[|r|]>><rsub|b*a>-<big|sum>\<nabla\>*H<rsup|<around|[|r|]>>>;
    otherwise <math|J<rsup|<around|[|r|]>><rsub|a*b>>. <verbatim|pluck r Z k
    = frost (Z.Q k) r> is the localized current
    <math|Q<rsup|<around|[|r|]>><rsub|k>>. <verbatim|twig>
    (<verbatim|Perfect/Riff.lean> 10) is the forward difference
    <math|J*<around|(|x+e<rsub|a>|)>-J<around|(|x|)>>. Matches.

    <item><strong|<verbatim|eq:ex-branch-transport-bound> \<leftrightarrow\>
    <verbatim|YM.Trace.Shelves.simG>> (<verbatim|Shelves/Route.lean> 51): for
    <verbatim|hk : C.ref d \<leq\> k>, <verbatim|\<\|\|\>swale Z d k
    v\<\|\|\> \<leq\> H! k * (exp (columnLogs A k) * (extra+1)) *
    \<\|\|\>v\<\|\|\>>. The proof takes <verbatim|le_of_tendsto> of the norm
    along the ultrafilter limit <verbatim|topPitch> of the finite-volume maps
    <verbatim|spine>, at fixed <math|k> and <math|v>. So: <math|B<rsub|k>> =
    <verbatim|swale Z 4 k>, <math|<wide|\<beta\>|^><rsub|k>> = <verbatim|H!
    k>, <math|\<ell\><rsub|k>> = <verbatim|Work.D01.columnLogs A k>, and
    <math|C> = <verbatim|extra+1> of the grade's label level, which depends
    only on the label coordinates as the text says. "Sufficiently large
    <math|k>" is the cutoff <verbatim|C.ref d>. The fixed-<math|k>,
    fixed-<math|v> limit order matches the prose.

    <item><strong|Affine clock \<leftrightarrow\>
    <verbatim|YM.Trace.Shelves.hawker>> (<verbatim|Route.lean> 45).
    <verbatim|hatBeta = bar + slopeConstant \<centerdot\> scale> is
    <verbatim|Calms \<ldots\> 0>, that is, <math|O<around|(|e<rsup|a*s>|)>>
    for every <math|a\<gtr\>0>: subexponential. <strong|Washout step
    \<leftrightarrow\> <verbatim|YM.Trace.Shelves.cine>>
    (<verbatim|Route.lean> 60). For <verbatim|Fast f> and each <verbatim|p>,
    the sequence <math|<wide|\<beta\>|^><rsup|p>\<cdot\>><verbatim|swale><math|<around|(|f|)>>
    is <verbatim|Fast>. It combines <verbatim|hawker> (powers),
    <verbatim|Pull.curtain> (the column factor) and <verbatim|simG>. This is
    exactly the revised washout's use of <verbatim|eq:ex-branch-transport-bound>
    "with <math|\<ell\><rsub|k>=o<around|(|s<rsub|k>|)>> and the affine
    clock".

    <item><strong|R2.> The PR changes no Lean file. <verbatim|unit.json>'s
    declarations (<verbatim|nearing_h>, <verbatim|muteP>, <verbatim|chartB>)
    are unchanged. Only the manuscript support list loses
    <verbatim|ope-filtration.tex>, and that file contributed no label used
    here (see the mathematics report).
  </itemize-minus>

  <section|Required changes and remaining
  uncertainty><label|required-changes-and-remaining-uncertainty>

  None required. Not done: Lean elaboration, <verbatim|#check> and
  <verbatim|#print axioms> for the target declarations, and kernel replay.
  The author's inherited-replay argument in <verbatim|correspondence.md> was
  read but not re-verified. The upstream construction of the hypotheses
  (<verbatim|Gondola>, <verbatim|Grant>, <verbatim|steep>, the
  <verbatim|Scrim>/<verbatim|Moonlit> data and the other section variables of
  <verbatim|Route.lean> and <verbatim|Pear.lean>) was not traced beyond the
  lines cited.

  <section|Acceptance><label|acceptance>

  No acceptance is recorded by this report. A responsible human may record
  local Lean-correspondence acceptance at fingerprint
  <verbatim|01500ca9\<ldots\>2ed989> for the items above.

  <ym-unit-nav|<hlink|\<leftarrow\> YM-000033|../../YM-000033/correspondence.tm>|<hlink|YM-000034:
  Trace branch moment limits and weighted washout
  (draft)|../correspondence.tm><ym-nav-sep><hlink|HANDOFF|../HANDOFF.tm><ym-nav-sep><hlink|evidence/wrapper|../evidence/wrapper.tm><ym-nav-sep><hlink|validation|../validation.tm>|>
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