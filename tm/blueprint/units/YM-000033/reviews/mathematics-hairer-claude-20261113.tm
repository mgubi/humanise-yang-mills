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

    <item>Role: mathematical validity

    <item>Human reviewer: <verbatim|hairer> (account under which this report
    is submitted; no human acceptance is recorded by this report)

    <item>Agent assistance: the whole review was done by a Claude (Anthropic)
    agent session, <verbatim|hairer-claude-issue33-review-20261113>. The unit
    was drafted with GPT-6.1 Terra (Codex), so the reviewing model family
    differs from the authoring one.

    <item>Content SHA-256: <verbatim|f4ab86a58f7df57adc923ef2298df4377c1942c8a6a2cebcf74c641f396d5657>
    (<verbatim|python3 scripts/check_blueprint.py --fingerprint YM-000033> at
    <verbatim|69c254b>)

    <item>Manuscript files and labels: <verbatim|manuscript/existence/trace-prosper-sensor.tex>
    (<verbatim|sec:trace-prosper-sensor>,
    <verbatim|prop:trace-prosper-sensor>, equations
    <verbatim|eq:trace-sensor-*>), read in full. Support files from
    <verbatim|unit.json>: in <verbatim|trace-weighted-estimates.tex>,
    <verbatim|lem:ex-lattice-trace-weighted-price> and
    <verbatim|lem:ex-lattice-trace-medium-receipts> were read with their
    hypotheses; in <verbatim|trace-small-means.tex>, the statement of
    <verbatim|lem:ex-trace-small-means> was read;
    <verbatim|trace-free-rank.tex> was used only for the rank fact <math|ker
    f=\<bbb-R\>*x>, <math|x\<neq\>0>, and its labels; <verbatim|preamble.tex>
    was not reviewed.

    <item>Source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>

    <item>Review task and PR: issue <hlink|#33|https://github.com/hairer/humanise-yang-mills/issues/33>
    (claim by <verbatim|hairer>, 13 November 2026); author PR #71; this
    report's PR: draft against <verbatim|codex/existence-monograph>.

    <item>Outcome: <strong|changes requested.> No mathematical error found;
    every derivation in the chapter was checked step by step. One required
    presentation change (R1), two minor items (R3, R4), a nit (R2, corrected
    on 13 November 2026: the cited argument does exist in
    <verbatim|trace-free-rank.tex>) and a record item (R5). Acceptance would
    be local and conditional on the explicitly listed inputs.
  </itemize-minus>

  <section|Findings and evidence><label|findings-and-evidence>

  I checked every displayed step of the chapter. In order:

  <\enumerate>
    <item><strong|Free normalisation (lines 1\U96).>

    <\itemize-minus>
      <item>The three evaluation rows: <math|<around|(|0,2,0|)>> for the jet
      with <math|F<rsub|12>=1>; <math|<around|(|1,2,0|)>> for
      <math|F<rsub|01>=1>, <math|\<partial\><rsub|0>*F<rsub|01>=1>,
      <math|\<partial\><rsub|2>*F<rsub|21>=-1>, where
      <math|J<rsup|<around|(|3|)>><rsub|0>=\<partial\><rsub|0>*F<rsub|01>+\<partial\><rsub|2>*F<rsub|21>=0>;
      <math|<around|(|1,2,1|)>> for the last jet. The determinant is
      <math|-2\<neq\>0>.

      <item>The Bianchi check of the first jet:
      <math|1-<tfrac|1|2>-<tfrac|1|2>=0>. The other two jets have only
      repeated-index derivative entries, so the cyclic identity holds
      trivially.

      <item>The radial-gauge potential and
      <math|\<partial\><rsub|c>*<around|(|\<partial\><rsub|a>*A<rsub|b>-\<partial\><rsub|b>*A<rsub|a>|)><around|(|0|)>=<tfrac|1|3><around|(|2*K<rsub|c*a*b>-K<rsub|a*b*c>-K<rsub|b*c*a>|)>=K<rsub|c*a*b>>.

      <item>The divergence computation, including
      <math|B=J<rsup|<around|(|2|)>>-B> via the Bianchi identity and the
      exchange <math|a\<leftrightarrow\>i>, giving coordinates
      <math|2*<around|(|w<rsub|0>-w<rsub|2>|)>,<space|0.17em>2*w<rsub|1>+<tfrac|1|2>w<rsub|2>,<space|0.17em>w<rsub|2>>.

      <item>Trace <math|<around|(|w<rsub|0>+4*w<rsub|1>|)>*\<cal-I\>>, hence
      <math|\<rho\>=-4*<around|(|w<rsub|0>+4*w<rsub|1>|)>>,
      <math|J<rsup|<around|(|3|)>>\<mapsto\><around|(|1,-<tfrac|1|4>,1|)>>
      and <math|\<rho\><around|(|x|)>=0>.
    </itemize-minus>

    All correct.

    <item><strong|Clock ratio (lines 97\U138).> The minimal-overshoot bound
    <math|0\<leqslant\>\<ell\><rsub|q<around|(|k|)>>-\<ell\><rsub|k>\<leqslant\>2*g>
    uses <math|<wide|\<beta\>|^><rsub|m>\<leqslant\>\<chi\>+\<gamma\>*g\<leqslant\>2*\<chi\>>
    and <math|log L<rsub|m>\<leqslant\>L<rsub|m>\<leqslant\>log
    <wide|\<beta\>|^><rsub|m>\<leqslant\>log 2*\<chi\>\<leqslant\>g>. From it
    follow <math|<wide|\<beta\>|^><rsub|q<around|(|k|)>>/<wide|\<beta\>|^><rsub|k>\<to\>1>
    and, with <math|<around|\||b<rsub|j>-<wide|\<beta\>|^><rsub|j>|\|>\<leqslant\>\<varepsilon\>*\<ell\><rsub|j>\<leqslant\>\<varepsilon\>*<wide|\<beta\>|^><rsub|j>/\<gamma\>>,
    the limit <math|b<rsub|k<rsub|i>>/b<rsub|n<rsub|i>>\<to\>1>. Correct.

    <item><strong|Chart, right inverse and parity (lines 139\U220).>
    <math|s<rsub|i>*u<rsub|i>=<math-up|id>> follows from
    <math|<math-up|core>M<rsub|i>*Y<rsub|i>*h=M<rsub|i>*Y<rsub|i>*h> and
    <math|P*Y<rsub|i>=X<rsub|i>>. The parity argument for the vanishing unit
    coefficient (total inversion acts by <math|-1> on lifted vector
    components and fixes <math|e<rsub|0>>) is correct. So is the construction
    of <math|U>: the <math|\<Gamma\>>-averaged Hermitian form makes the
    signed action unitary and conjugation antiunitary, and <math|K> is real
    and stable, so the orthogonal-complement section intertwines both.

    <item><strong|Tested map and centring (lines 255\U288).> Injectivity of
    <math|<math-ss|T>> from the first bound. Recentring with
    <math|v<rsup|\<circ\>>=v-<around|(|<math-ss|T>v|)><rsub|0>*\<b-1\>> gives
    <math|<math-ss|T>v<rsup|\<circ\>>=<math-up|core><math-ss|T>v>,
    <math|<math-up|core><math-ss|A>v<rsup|\<circ\>>=<math-up|core><math-ss|A>v>,
    <math|<around|\||<math-ss|A>v<rsup|\<circ\>>|\|><rsub|1>\<leqslant\>2<around|\||<math-ss|T>v<rsup|\<circ\>>|\|><rsub|1>>,
    and hence <verbatim|eq:trace-sensor-centered-price> with constant
    <math|2*\<eta\><rsub|i>>. Correct (see R3 for one wording point).

    <item><strong|Calibration (lines 290\U339).> Every nonunit coordinate of
    an odd two-factor label has position degree 5 and factor degree 2,
    because jet factors have weight <math|r+2> and sign
    <math|<around|(|-1|)><rsup|r+2>>. Then
    <math|<math-ss|T>\<lambda\><rsub|i>=<math-up|Dil><rsub|\<xi\><rsup|-1>><math-up|Pos><rsub|\<sigma\><rsub|i>>p=\<xi\><rsup|-2>*\<sigma\><rsub|i><rsup|5>*p>
    and <math|\<xi\><rsup|-2>=\<beta\><rsub|i>*\<vartheta\><rsub|k<rsub|i>><rsup|2>>.
    Multiplying by <math|\<vartheta\><rsub|k<rsub|i>><rsup|-2>*d<rsub|k<rsub|i>><rsup|5>>
    gives exactly <verbatim|eq:trace-sensor-finite-price>, using
    <math|r<rsub|i>=d<rsub|k<rsub|i>>*\<sigma\><rsub|i>>. Correct. The
    vanishing of one-factor invariants is proved in
    <verbatim|trace-free-rank.tex>, but the chapter refers to it only as
    "above" (R2).

    <item><strong|Transport price (lines 341\U466).>

    <\itemize-minus>
      <item>Backward induction: <math|<around|\||z<rsub|j>-z<rsub|n<rsub|i>>|\|><rsub|1>\<leqslant\>a*<around|(|n<rsub|i>-j|)><around|\||z<rsub|n<rsub|i>>|\|><rsub|1>>
      with <math|a=\<delta\><rsub|i>/N<rsub|i>> and
      <math|a*N<rsub|i>\<leqslant\>1>.

      <item>Grade scaling: Block factor 1 and dilation factor
      <math|<around|(|\<vartheta\><rsub|j>/\<vartheta\><rsub|j+1>|)><rsup|2>>
      on the nonunit coordinates. Applying the core and dividing gives
      <math|<around|\||z<rsub|j>-z<rsub|j+1>|\|><rsub|1>\<leqslant\>4*g<rsub|j><around|\||z<rsub|j+1>|\|><rsub|1>>.

      <item>Budget comparison: <math|N<rsub|i>\<leqslant\>2<around|(|log
      \<chi\>|)><rsup|48>>, <math|C<rsub|j+1>\<leqslant\>2*log \<chi\>>,
      <math|A<rsub|1/2>*<around|(|j+1|)>\<geqslant\>A<rsub|1/2><around|(|k<rsub|i>|)>>,
      and <math|32<around|(|log \<chi\>|)><rsup|48>*<around|(|1+2*log
      \<chi\>|)>\<leqslant\>A<rsub|1/10><around|(|k<rsub|i>|)>> eventually.
    </itemize-minus>

    All correct. The quantifier handling is also correct: finite intersection
    over <math|k<rsub|i>\<leqslant\>j\<less\>n<rsub|i>> for fixed <math|i>,
    then the ultrafilter limit, then <math|i\<to\>\<infty\>>.

    <item><strong|<math|u<rsub|i>\<to\>U> (lines 456\U475).> I checked the
    identity <math|<around|(|u<rsub|i>*h|)><rsub|\<alpha\>>=<around|(|b<rsub|k<rsub|i>>/b<rsub|n<rsub|i>>|)><math-ss|R><rsub|i>>
    from <math|c<rsub|i>=b<rsub|n<rsub|i>>*r<rsub|i><rsup|5>> and
    <math|D<rsub|i>=b<rsub|k<rsub|i>>*r<rsub|i><rsup|5>>. I also checked the
    constant exactly: <math|\<delta\>*<around|(|1+2*\<eta\>|)>/<around|(|1-\<delta\>|)>+2*\<eta\>=<around|(|2*\<eta\>+\<delta\>|)>/<around|(|1-\<delta\>|)>>.
    Correct.

    <item><strong|Proposition and proof (lines 476\U540).>
    <math|T<rsub|i>=u<rsub|i>*f+A\<otimes\>v<rsub|i>\<to\><math-up|id>>,
    <math|s<rsub|i>*T<rsub|i>=f+A\<otimes\>s<rsub|i><around|(|v<rsub|i>|)>>
    on the tail, and the explicit bound <math|<around|\<\|\|\>|s<rsub|i>-f|\<\|\|\>>\<leqslant\><around|(|<around|\<\|\|\>|A|\<\|\|\>>\<\|\|\>s<rsub|i><around|(|v<rsub|i>|)>\<\|\|\>+<around|\<\|\|\>|f|\<\|\|\>>*\<epsilon\><rsub|i>|)>/<around|(|1-\<epsilon\><rsub|i>|)>>.
    Lemma <verbatim|lem:ex-lattice-trace-weighted-price> is applied with all
    its hypotheses supplied. Its own proof (read in full) is correct.

    <item><strong|Medium paragraph (lines 542\U564).> Consistent with
    <verbatim|lem:ex-lattice-trace-medium-receipts>. That lemma's
    <math|e<rsub|i>/b<rsub|i>\<to\>0> and
    <math|e<rsub|i>\<leqslant\>p<rsub|i>> are proved in
    <verbatim|trace-weighted-estimates.tex> at the postselected level, which
    that file now says explicitly. The comparison
    <math|A<rsub|1/5><around|(|n<rsub|i>|)>\<leqslant\><wide|\<beta\>|^><rsub|n<rsub|i>>>
    is correct.
  </enumerate>

  <strong|Support files changed after the author's build.>
  <verbatim|trace-weighted-estimates.tex> and
  <verbatim|trace-small-means.tex> were edited by the C15 author pass
  (<verbatim|f8022ce>) after PR #71. I compared them with the author's base
  <verbatim|aa2e995>. The statements of the two lemmas and of
  <verbatim|lem:ex-trace-small-means> used here are unchanged in substance;
  the edits clarify definitions and point back to this unit. The sensor
  chapter itself is unchanged. As a side effect, the unit's wrapper now has
  two undefined references (R5).

  <strong|Existing results.> The two analytic tools are the Neumann series
  and the rank-one receiver lemma. Both are elementary and proved or cited
  correctly. I know of no literature result that would shorten the chart
  derivations, which are bookkeeping of the source's normalisations.

  <section|Required changes and remaining
  uncertainty><label|required-changes-and-remaining-uncertainty>

  <\itemize-minus>
    <item><strong|R1 (required, presentation).> The proposition's hypotheses
    are given by reference to prose: "the tested-map, selected-lift and
    finite-volume normalization inputs described around
    (\<ldots\>)\U(\<ldots\>)" and "the stated oddness, joint convergence and
    column-budget inputs". In the text, the inputs are introduced by "Assume"
    or "Suppose" inside paragraphs that also derive consequences. A reader
    cannot extract the exact hypothesis list, with quantifiers, without
    re-reading the whole chapter. For a research monograph, state the inputs
    as a numbered list immediately before the proposition (for example (S1)
    clock and block-size inputs; (S2) chart formulas and identities with
    their tails; (S3) symmetry intertwining; (S4) joint transport and lift
    convergence along the ultrafilter; (S5) tested-map bounds and
    calibration; (S6) one-step residual and threshold ratio, with the
    quantifier "for each fixed <math|j>, eventually in <math|\<nu\>>,
    uniformly in <math|N\<gtr\>j> and the label"; (S7) column budget and
    oddness preservation). Make the derived intermediate results labelled
    lemmas: the arch ratio, the initial price, the transport price, and
    <math|u<rsub|i>\<to\>U>. The proposition can then cite them. No
    mathematical change is needed.

    <item><strong|R2 (nit; corrected 13 November 2026).> Line 306: "A
    one-factor invariant vanishes by the invariant-linear-form argument in
    the low-grade label calculation above". The argument is in a support file
    of this unit: the "Low-grade invariant labels" subsection of
    <verbatim|trace-free-rank.tex> (<verbatim|sec:ex-lattice-trace-free-rank>),
    which proves that an <math|<math-up|Ad>>-invariant real linear functional
    on the simple algebra vanishes. The earlier version of this report
    wrongly said it was missing. The only request is to replace "above" by a
    reference to that section.

    <item><strong|R3 (minor).> Lines 266\U280: <math|<math-ss|A>,<math-ss|T>>
    are called "complex-linear maps on the finite complex coefficient space",
    and then "the two finite-dimensional coefficient spaces have the same
    dimension" is used for invertibility. Say which spaces they are. If both
    maps are endomorphisms of one space, injectivity suffices and the
    sentence can go. If not, justify the equality of dimensions or make it
    part of the input.

    <item><strong|R4 (nit).> Lines 233\U234: "Fix one ultrafilter on these
    pairs containing both coordinate tails." In the source the ultrafilter
    satisfies <math|\<cal-L\>\<leqslant\>F.<math-up|fuse>> (<verbatim|hb> in
    <verbatim|springs>). Say that the inputs are taken along the selected
    ultrafilter, which refines the fused order, and that only its coordinate
    tails are used in the argument.

    <item><strong|R5 (record).> The wrapper <verbatim|evidence/wrapper.tex>
    now builds to 19 pages with two undefined references
    (<verbatim|prop:ex-lattice-charge-bounds>,
    <verbatim|prop:ex-trace-mission-price-transfer>). Both were introduced
    into the support chapters by the C15 pass. They are not in this unit's
    chapter. Update the wrapper or its validation note before integration.
  </itemize-minus>

  Not checked: the full production of the inputs (by design they are
  hypotheses); <verbatim|preamble.tex>; the parts of the support chapters not
  cited here.

  <section|Acceptance><label|acceptance>

  No acceptance is recorded. After R1, R3 and R4 are resolved, a renewed
  check of the changed text at its new fingerprint is needed. Then the
  responsible human reviewer may record local acceptance, conditional on the
  listed inputs.

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
    <associate|acceptance|<tuple|3|4>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-3|<tuple|3|4>>
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