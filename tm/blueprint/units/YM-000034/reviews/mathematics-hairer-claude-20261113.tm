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

    <item>Role: mathematical validity

    <item>Human reviewer: <verbatim|hairer> (account under which this report
    is submitted; no human acceptance is recorded by this report)

    <item>Agent assistance: the whole review was done by a Claude (Anthropic)
    agent session, <verbatim|hairer-claude-issue34-review-20261113>. The unit
    was drafted with GPT-6.1 Terra (Codex), so the reviewing model family
    differs from the authoring one.

    <item>Content SHA-256: <verbatim|59b66debcf4ebb92ff4ff13f8c71ab481350e623ed61dc37fd91ddabd60f1ba7>
    (<verbatim|python3 scripts/check_blueprint.py --fingerprint YM-000034> at
    <verbatim|69c254b>)

    <item>Manuscript files and labels: <verbatim|manuscript/existence/trace-branch-moments.tex>
    (<verbatim|sec:ex-trace-branch-moments>,
    <verbatim|prop:ex-branch-moments>, <verbatim|prop:ex-branch-raw-fast>,
    <verbatim|prop:ex-branch-washout>, equations <verbatim|eq:ex-branch-*>),
    read in full. From the support files in <verbatim|unit.json>: in
    <verbatim|trace-free-rank.tex>, the "Low-grade invariant labels"
    subsection and the existence of <verbatim|lem:ex-trace-free-stress-basis>,
    which are the only parts the chapter cites. <verbatim|ope-filtration.tex>
    is not cited by the chapter (R2). <verbatim|preamble.tex> was not
    reviewed.

    <item>Source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>

    <item>Review task and PR: issue <hlink|#34|https://github.com/hairer/humanise-yang-mills/issues/34>
    (claim by <verbatim|hairer>, 13 November 2026); author PR #70; this
    report's PR: draft against <verbatim|codex/existence-monograph>.

    <item>Outcome: <strong|no required change; two minor requests (R1, R2).>
    No mathematical error found. Acceptance would be local and conditional on
    the explicitly listed chart, recording, transport and purchase inputs.
  </itemize-minus>

  <section|Findings and evidence><label|findings-and-evidence>

  Checked step by step:

  <\enumerate>
    <item><strong|Material tensor (lines 61\U120).> Injectivity of
    <math|w\<mapsto\>\<cal-S\><around|(|w|)>> on the jets
    <math|F<rsub|01>=v>, giving the <math|<around|(|2,2|)>> and
    <math|<around|(|0,0|)>> entries <math|2*w<rsub|2><around|\||v|\|><rsup|2>>
    and <math|<around|(|w<rsub|1>+2*w<rsub|2>|)><around|\||v|\|><rsup|2>>,
    and <math|F<rsub|02>=F<rsub|12>=v>, giving <math|<around|(|0,1|)>> entry
    <math|w<rsub|3><around|\||v|\|><rsup|2>>. Symmetry and invariance under
    the signed and real average. <math|<math-up|tr>M<around|(|w|)>=4*<around|(|w<rsub|1>+4*w<rsub|2>|)>*\<cal-O\>>.
    The traces <math|0,0,4*\<cal-O\>> for
    <math|w<rsup|0>=<around|(|-1,<tfrac|1|4>,-1|)>>,
    <math|w<rsup|->=<around|(|0,0,1|)>>, <math|w<rsup|+>=<around|(|0,<tfrac|1|4>,0|)>>.
    The coefficients <math|w<rsup|\<pm\>>> agree with the displayed
    correction fields <math|J<rsup|\<pm\>>>.

    <item><strong|Chart identity (lines 122\U160).>
    <math|V<rsub|k,c>*B<rsub|k>*x=c*<space|0.17em>\<pi\>*A<rsub|k><rsup|-1>*K*A<rsub|k>*x>.
    The difference from <math|c*<space|0.17em>\<pi\>*x> is a multiple of
    <math|\<pi\>*A<rsub|k><rsup|-1>*e<rsub|0>=a<rsub|k><rsup|-4>*\<b-1\><rsub|4>>,
    which centring removes.

    <item><strong|Coefficient limit (lines 170\U230).>
    <math|<around|\<\|\|\>|z-\<vartheta\><rsub|k><rsup|-2>*K*\<Gamma\>*v|\<\|\|\>><rsub|\<infty\>>\<leqslant\>\<vartheta\><rsub|k><rsup|-2>*<around|\<\|\|\>|\<xi\>-\<Gamma\>*v|\<\|\|\>><rsub|<math-up|c>>\<leqslant\>\<delta\><rsub|k>>,
    using <math|z=\<vartheta\><rsub|k><rsup|-2>*K*\<xi\>>. Then the two-set
    bound <math|<around|\<\|\|\>|<math-ss|R>|\<\|\|\>>*\<delta\><rsub|k>+<around|\<\|\|\>|T|\<\|\|\>>*\<varepsilon\>>,
    preserved by the fixed-<math|k> ultrafilter limit, and the order
    <math|k\<to\>\<infty\>> before <math|\<varepsilon\>*\<downarrow\>*0>. The
    principal-witness argument is sound as a deduction from its stated local
    inputs:

    <\itemize-minus>
      <item>the invariant linear functional on a simple algebra vanishes;

      <item>the Hessian kills infinitesimal gauge directions because the
      first variation vanishes;

      <item>the elementary-direction bound <math|16*<around|(|1+max
      <around|(|r<rsub|i>,r<rsub|j>|)>|)><rsup|4>>;

      <item>the compactness-by-contradiction upgrade, using injectivity of
      <math|T>.
    </itemize-minus>

    <item><strong|Slow trace (lines 338\U354).>
    <math|<around|\<\|\|\>|<math-up|tr>W<rsup|b><rsub|k>|\<\|\|\>>\<leqslant\>4<around|\<\|\|\>|<math-ss|R>|\<\|\|\>>*\<delta\><rsub|k>>
    for <math|b\<in\><around|{|0,-|}>>. The remark that
    <math|<wide|\<beta\>|^><rsub|k><rsup|p>*\<delta\><rsub|k>\<to\>\<infty\>>
    is correct: <math|<tfrac|1|4><around|(|log
    y|)><rsup|2>\<leqslant\>4*<sqrt|y>>.

    <item><strong|Moment-map convergence (lines 355\U615).>

    <\itemize-minus>
      <item>Injectivity of <math|\<pi\><rsub|0>> at grade four via the
      constant-curvature affine Maxwell solutions, and
      <math|\<cal-O\>\<neq\>0> (value <math|<tfrac|1|2><around|\||v|\|><rsup|2>>).

      <item>The recentring bound <math|<around|\<\|\|\>|K*<around|(|\<cal-N\>*v-\<cal-T\>*v|)>|\<\|\|\>><rsub|<math-up|c>>\<leqslant\>2*\<alpha\>*<around|\<\|\|\>|K*\<cal-T\>*v|\<\|\|\>><rsub|<math-up|c>>>,
      and the lift scaling <math|\<vartheta\><rsup|-2>*a<rsup|4>> with
      <math|\<beta\>*<around|(|a<rsub|m>*h|)><rsup|4>>.

      <item>The one-step factor <math|4*g> and the backward induction.

      <item>The summit bound <math|0\<leqslant\>g<rsub|j>\<leqslant\>2<math-up|Gate><around|(|<wide|\<beta\>|^><rsub|j>|)>>,
      so <math|<wide|\<beta\>|^><rsub|<math-up|summit>>/<wide|\<beta\>|^>\<to\>1>,
      and the scheduled budget <math|32*<around|(|1+2*log x|)><around|(|log
      x|)><rsup|48>\<leqslant\>e<rsup|<around|(|log log x|)><rsup|2>/10>>
      eventually.

      <item>The <math|Z<rsub|i>/X<rsub|i>> combination, and
      <math|<math-ss|M><rsub|i>\<cal-A\><rsub|i>*x=\<pi\><rsub|0>*x-<around|\<langle\>|U<rsub|i>*\<pi\><rsub|0>*x|\<rangle\>>*\<b-1\><rsup|0><rsub|4>>.
      The latter uses <math|\<pi\>*Y<rsub|i>=U<rsub|i>> and the eventual
      transport of the unit, which is correctly flagged as an input.

      <item>The Neumann inverse with <math|<around|\<\|\|\>|\<cal-A\><rsub|i><rsup|-1>-1|\<\|\|\>>\<leqslant\>2*<around|\<\|\|\>|\<cal-A\><rsub|i>-1|\<\|\|\>>>.
    </itemize-minus>

    <item><strong|<verbatim|prop:ex-branch-moments>.> The chart-array
    identity is the chart identity applied to
    <math|<around|(|<math-ss|R><math-up|sym>x|)><rsub|a*c>> after commuting
    <math|B<rsub|k>> with the average. The limit is
    <math|<math-up|sym><around|(|\<frak-c\><rsub|0>*\<pi\><rsub|0>*\<cal-S\><around|(|w<rsup|b>|)>|)>=M<around|(|w<rsup|b>|)>>.
    Correct.

    <item><strong|Recording machinery (lines 660\U920).>

    <\itemize-minus>
      <item>Grade-three fields are multiples of the unit (one factor at most;
      the invariant linear part vanishes).

      <item>Detection inequality <verbatim|eq:ex-branch-moving-detector>.

      <item>The radius bound <math|R<around|(|x|)>=O<around|(|x<rsup|122/32>|)>=o<around|(|x<rsup|4>|)>>.

      <item>The geometric tail <math|<math-up|tail><rsub|k+1>\<leqslant\><tfrac|2|3><math-up|tail><rsub|k>>,
      using <math|a<rsub|k+1>\<leqslant\>a<rsub|k>/3> and
      <math|J<rsub|k+1>\<leqslant\>J<rsub|k>+1>.

      <item>The rooted price is fast for every <math|\<eta\>\<less\>1/8>.
    </itemize-minus>

    All correct as deductions from the stated purchase and spectator inputs.

    <item><strong|<verbatim|prop:ex-branch-raw-fast>.> The averaged
    functional <math|\<Lambda\><rsup|\<sigma\>><rsub|k>> over
    <math|n<rsub|k>=<around|\<lceil\>|e<rsup|<around|(|1-\<tau\>|)>*s<rsub|k>>|\<rceil\>>>
    displacements telescopes the difference identity to
    <math|<around|\||\<Lambda\><rsup|\<sigma\>><rsub|k>*w<rsub|d,k>|\|>\<leqslant\>D<rsup|\<sigma\>><rsub|d,k>+2*E<rsup|\<sigma\>><rsub|d,k>/<around|(|a<rsub|k>*n<rsub|k>|)>>.
    The endpoint values agree by the grade-three unit property. Only a finite
    intersection of large sets is used at each fixed <math|k>. The false
    branch is exactly zero; the principal trace is exactly
    <math|<big|sum><rsub|d>\<nabla\><rsub|d>*Q<rsub|d>>. Correct. The
    explicit rate <math|<around|(|1+s|)><rsup|5>*e<rsup|-s/8>> with
    <math|n<rsub|k>=<around|\<lceil\>|e<rsup|s<rsub|k>>/<around|(|1+s<rsub|k>|)>|\<rceil\>>>
    is also correct.

    <item><strong|<verbatim|prop:ex-branch-washout>.>
    <math|<math-up|tr>t<rsup|b><rsub|k>=<around|\||\<cal-G\>|\|><rsup|-1>*<big|sum><rsub|g>\<frak-c\>*\<rho\><rsub|g><around|(|y<rsup|b><rsub|k>|)>>
    is fast and centred. With <math|\<pi\>*r<rsup|b><rsub|k>=q<rsup|b><rsub|k>>,
    the chart identity gives <math|<wide|\<beta\>|^><rsup|p><math-up|tr><around|(|<math-ss|P><rsub|i>t<rsup|b>|)>=<math-ss|M><rsub|i><around|(|<wide|\<beta\>|^><rsup|p>*B<rsub|k<rsub|i>>*r<rsup|b><rsub|k<rsub|i>>|)>\<to\>0>,
    because <math|<around|\<\|\|\>|B<rsub|k>|\<\|\|\>>\<leqslant\>C*<wide|\<beta\>|^><rsub|k>*e<rsup|\<ell\><rsub|k>>>
    is subexponential. The explicit rate exponent <math|p+6> and the
    true-branch divergence (limit trace <math|4*\<cal-O\>\<neq\>0>) are
    correct.
  </enumerate>

  <strong|Support files after the author's build.> The chapter is unchanged
  since PR #70. <verbatim|trace-free-rank.tex> and <verbatim|preamble.tex>
  are also unchanged. <verbatim|ope-filtration.tex> was revised by C05
  (<verbatim|8b15d44>, <verbatim|5d68524>), but the chapter does not cite it.

  <strong|Existing results.> The tools are the Neumann series,
  finite-dimensional compactness and norm equivalence, Schur-type colour
  facts (proved in <verbatim|trace-free-rank.tex>), and the
  closed-ball/ultrafilter passage. All are elementary and used correctly. No
  literature result would replace the chart bookkeeping.

  <section|Required changes and remaining
  uncertainty><label|required-changes-and-remaining-uncertainty>

  <\itemize-minus>
    <item><strong|R1 (minor).> Two propositions cite their hypotheses
    loosely. <verbatim|prop:ex-branch-raw-fast> says "Assume the recording
    and test properties above". <verbatim|prop:ex-branch-washout> says "Under
    the recording and transport estimates". Cite the labels instead
    (<verbatim|eq:ex-branch-book-current>\U<verbatim|eq:ex-branch-book-tensor>,
    <verbatim|eq:ex-branch-recorded-difference>, the separation and
    continuity of <math|L<rsup|\<sigma\>><rsub|d>>, the grade-three unit
    property). Also label the transport bound
    <math|<around|\<\|\|\>|B<rsub|k>|\<\|\|\>>\<leqslant\>C*<wide|\<beta\>|^><rsub|k>*e<rsup|\<ell\><rsub|k>>>
    (around line 1030) and cite it in the washout.
    <verbatim|prop:ex-branch-moments> already does this well.

    <item><strong|R2 (minor).> <verbatim|ope-filtration.tex> is listed in
    <verbatim|unit.json> and input by <verbatim|evidence/wrapper.tex>, but
    the chapter never cites it. Since the C05 revisions it brings seven
    undefined references into the wrapper build: the two the author recorded
    plus five <verbatim|finite-rank-*> labels. Remove it from the unit and
    the wrapper, or say what it supplies.
  </itemize-minus>

  Not checked: the production of the inputs, which are hypotheses by design
  (finite-volume purchases, spectator estimates, local Hessian comparisons,
  point limits, chart one-point convergence); <verbatim|preamble.tex>; and
  the rest of the support files.

  <section|Acceptance><label|acceptance>

  No acceptance is recorded. The responsible human reviewer may record local
  acceptance, conditional on the listed inputs, either now or after R1\UR2
  (which change the fingerprint only if the chapter or <verbatim|unit.json>
  is edited).

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
    <associate|acceptance|<tuple|3|3>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-3|<tuple|3|3>>
    <associate|findings-and-evidence|<tuple|1|1>>
    <associate|required-changes-and-remaining-uncertainty|<tuple|2|3>>
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