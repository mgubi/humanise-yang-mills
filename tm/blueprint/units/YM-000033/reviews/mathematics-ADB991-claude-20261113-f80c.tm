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

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Findings and
    evidence> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <with|par-left|1tab|Responses to the earlier findings
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2>>

    <with|par-left|1tab|Re-verification of the revised mathematics
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Optional
    suggestions (not required)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Evidence
    (commands actually run, at <with|font-family|tt|language|verbatim|b0bfc78>)>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Acceptance>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>
  </table-of-contents>

  <\itemize-minus>
    <item>Unit: YM-000033, <verbatim|blueprint/units/YM-000033/>

    <item>Role: mathematical validity (renewed review of revision 1)

    <item>Human reviewer: <verbatim|ADB991> (account under which this report
    is submitted; ADB991 had not reviewed it before submission, and no human
    acceptance is recorded by this report)

    <item>Agent assistance: the whole review was done by a Claude (Anthropic)
    agent session, <verbatim|ADB991-claude-20261113-f80c>, running as a
    scheduled agent. This account authored no part of YM-000033 and did not
    write review #126/#127. The revision was drafted with Codex (GPT family),
    so the reviewing model family differs from the authoring one.

    <item>Content SHA-256: <verbatim|ad3b82466a1b69b610548e1af518251def5ac1cd4a6bc5757a91b3cc46cba4aa>
    (<verbatim|python3 scripts/check_blueprint.py --fingerprint YM-000033> at
    <verbatim|codex/existence-monograph> <verbatim|b0bfc78>; equal to the
    author's recorded revision fingerprint). All ten file hashes in
    <verbatim|revision-candidate.json> match this base.

    <item>Manuscript files and labels: <verbatim|manuscript/existence/trace-prosper-sensor.tex>,
    read in full (645 lines): <verbatim|lem:trace-sensor-arch-ratio>,
    <verbatim|lem:trace-sensor-initial-price>,
    <verbatim|lem:trace-sensor-transport-price>,
    <verbatim|lem:trace-sensor-lift-limit>, the list (S1)\U(S7),
    <verbatim|prop:trace-prosper-sensor>, equations
    <verbatim|eq:trace-sensor-*>. Support: the subsection "Low-grade
    invariant labels" of <verbatim|trace-free-rank.tex> (for R2) and the
    statement of <verbatim|lem:ex-lattice-trace-weighted-price> in
    <verbatim|trace-weighted-estimates.tex>. <verbatim|preamble.tex> not
    reviewed.

    <item>Source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>

    <item>Review task and PR: issue <hlink|#33|https://github.com/hairer/humanise-yang-mills/issues/33>,
    claim <hlink|https://github.com/hairer/humanise-yang-mills/issues/33#issuecomment-6856591729|https://github.com/hairer/humanise-yang-mills/issues/33#issuecomment-6856591729>;
    revision PR #134 (head <verbatim|0076542>, merged at <verbatim|b13f2ef>);
    this report's PR: report-only draft against
    <verbatim|codex/existence-monograph>.

    <item>Outcome: <strong|no change required.> R1, R2, R3, R4 and R5 of
    review #126 (as corrected in #127) are resolved. No mathematical error
    was found in the revised text. Four optional presentation suggestions
    (S1\US4 below; named O1\UO4 to avoid a clash with the chapter's
    (S1)\U(S7)). Acceptance would be local and conditional on the inputs
    (S1)\U(S7).
  </itemize-minus>

  <section|Findings and evidence><label|findings-and-evidence>

  <subsection|Responses to the earlier findings><label|responses-to-the-earlier-findings>

  <\itemize-minus>
    <item><strong|R1 (required): resolved.> The inputs are now the numbered
    list (S1)\U(S7) (lines 503\U561), immediately before
    <verbatim|prop:trace-prosper-sensor>. The four derived results are
    labelled lemmas with proofs: arch ratio (117\U145), initial-level price
    (231\U361), transport price (363\U475), lift convergence (477\U501). The
    proposition cites them. I checked that every "assume"/"suppose" in the
    chapter is covered by the list:

    <\itemize-minus>
      <item>clock, block sizes, arch scales and
      <math|n<rsub|i>=q<around|(|k<rsub|i>|)>> (105\U115) \<rightarrow\>
      (S1);

      <item>chart formulas, <math|P*Y<rsub|i>=X<rsub|i>>, intertwining,
      <math|f*U=<math-up|id>> (147\U213) \<rightarrow\> (S2);

      <item>ultrafilter refining the fused order, joint transport, running
      parameter and lift convergence (240\U262) \<rightarrow\> (S3);

      <item><math|<math-ss|A>,<math-ss|T>> endomorphisms with unit,
      injectivity of <math|<math-ss|A>>, the two bounds of
      <verbatim|eq:trace-sensor-tested-price>, the lift formula and
      <math|<math-ss|A>=d<rsub|k<rsub|i>><rsup|-5><math-up|Col><rsub|k<rsub|i>>>
      (274\U345) \<rightarrow\> (S4);

      <item>threshold ratio and residual bound
      <verbatim|eq:trace-sensor-raw-step> with the quantifier "each fixed
      <math|j>, eventually in <math|\<nu\>>, uniformly in <math|N\<gtr\>j>
      and label" (418\U431) \<rightarrow\> (S5);

      <item>column budget and preservation of oddness (416\U417, 433\U435)
      \<rightarrow\> (S6);

      <item>the marked limits \<rightarrow\> (S7), which the proposition
      states separately in <verbatim|eq:trace-sensor-marked>.
    </itemize-minus>

    Nothing is used that is not in the list. The "Suppose finite-volume
    coefficients \<ldots\> satisfy <verbatim|eq:trace-sensor-finite-price>"
    (248\U256) and "suppose \<ldots\> <verbatim|eq:trace-sensor-step-input>"
    (373\U381) are derived inside the same proofs (355\U357 and 455\U472), so
    they are not extra hypotheses (see O2).

    <item><strong|R2 (nit): resolved.> Line 316\U317 now cites Section
    <verbatim|sec:ex-lattice-trace-free-rank>. Its subsection "Low-grade
    invariant labels" (<verbatim|trace-free-rank.tex> line 12) contains the
    invariant-linear-form argument.

    <item><strong|R3 (minor): resolved.> Line 277:
    <math|<math-ss|A>,<math-ss|T>:<math-ss|V>\<to\><math-ss|V>> are
    endomorphisms. The dimension sentence is gone. Injectivity of
    <math|<math-ss|T>> follows from the first bound and injectivity of
    <math|<math-ss|A>> (288\U290); finite dimension gives invertibility.
    Correct.

    <item><strong|R4 (nit): resolved.> Lines 240\U245 and (S3): the selected
    ultrafilter refines the fused order, <math|\<cal-L\>\<leqslant\>\<cal-F\><rsub|<math-up|fuse>>>,
    and only coordinate tails are used. I checked that the fused-order filter
    contains both tails (see the Lean report: both coordinate sequences are
    strictly increasing). Then the fixed-<math|i> set "eventually in
    <math|\<nu\>> for each <math|k<rsub|i>\<leqslant\>j\<less\>n<rsub|i>>,
    and <math|N\<geqslant\>n<rsub|i>>" is in <math|\<cal-L\>>: a finite
    intersection of an "eventually in the period" set (uniform in
    <math|N\<gtr\>j>) and a mesh tail.

    <item><strong|R5 (record): resolved.> The wrapper
    (<verbatim|evidence/wrapper.tex>) now documents the two external labels
    in a comment. My build reproduces exactly those warnings (see Evidence).
  </itemize-minus>

  <subsection|Re-verification of the revised
  mathematics><label|re-verification-of-the-revised-mathematics>

  I rechecked each derivation in the changed text.

  <\enumerate>
    <item><strong|Lemma <verbatim|lem:trace-sensor-arch-ratio>.> Let
    <math|\<chi\>=<wide|\<beta\>|^><rsub|k>>, <math|g=<around|(|log
    \<chi\>|)><rsup|48>>, <math|q<around|(|k|)>=m+1>. Minimality gives
    <math|\<ell\><rsub|m>-\<ell\><rsub|k>\<leqslant\>g>. For large <math|k>,
    <math|\<gamma\>*g\<leqslant\>\<chi\>>, so
    <math|<wide|\<beta\>|^><rsub|m>\<leqslant\>2*\<chi\>>. Then <math|log
    L<rsub|m>\<leqslant\>L<rsub|m>\<leqslant\>log
    <wide|\<beta\>|^><rsub|m>\<leqslant\>log 2*\<chi\>\<leqslant\>g>. So
    <math|0\<leqslant\>\<ell\><rsub|q<around|(|k|)>>-\<ell\><rsub|k>\<leqslant\>2*g>,
    and <math|<wide|\<beta\>|^><rsub|q<around|(|k|)>>/<wide|\<beta\>|^><rsub|k>\<to\>1>.
    With <math|<wide|\<beta\>|^><rsub|j>\<geqslant\>\<gamma\>*\<ell\><rsub|j>>,
    <verbatim|eq:trace-sensor-clock-input> gives
    <math|b<rsub|j>/<wide|\<beta\>|^><rsub|j>\<to\>1>, hence the claim.
    Correct.

    <item><strong|Lemma <verbatim|lem:trace-sensor-initial-price>.>

    <\itemize-minus>
      <item>Centring: with <math|c=<around|(|<math-ss|T>v|)><rsub|0>> and
      <math|v<rsup|\<circ\>>=v-c*\<b-1\>>,
      <math|<math-ss|T>v<rsup|\<circ\>>=<math-ss|T>v-c*e<rsub|0>=<math-up|core><math-ss|T>v>
      and <math|<math-up|core><math-ss|A>v<rsup|\<circ\>>=<math-up|core><math-ss|A>v>.
      From <math|<around|\||<math-ss|A>v<rsup|\<circ\>>|\|><rsub|1>\<leqslant\><tfrac|1|2>\|<math-ss|A>v<rsup|\<circ\>>\|<rsub|1>+<around|\||<math-ss|T>v<rsup|\<circ\>>|\|><rsub|1>>
      we get <math|<around|\||<math-ss|A>v<rsup|\<circ\>>|\|><rsub|1>\<leqslant\>2<around|\||<math-up|core><math-ss|T>v|\|><rsub|1>>.
      The second bound <strong|applied at <math|v<rsup|\<circ\>>>>, then
      <math|<math-up|core>>, gives <verbatim|eq:trace-sensor-centered-price>.
      Correct (O1).

      <item>Calibration: <math|<math-up|Dil><rsub|\<xi\>><math-ss|T>\<lambda\><rsub|i>=<math-up|Pos><rsub|\<sigma\><rsub|i>>p=\<sigma\><rsub|i><rsup|5>*p>
      because the nonzero nonunit coordinates of the odd <math|p> have
      position degree 5. <math|<math-up|Dil><rsub|\<xi\><rsup|-1>>>
      multiplies factor-degree-2 coordinates by
      <math|\<xi\><rsup|-2>=\<beta\><rsub|i>*\<vartheta\><rsub|k<rsub|i>><rsup|2>>.
      So <math|<math-up|core><math-ss|T>\<lambda\><rsub|i>=\<beta\><rsub|i>*\<vartheta\><rsub|k<rsub|i>><rsup|2>*\<sigma\><rsub|i><rsup|5>*p>.
      Multiplying the centred price by <math|\<vartheta\><rsub|k<rsub|i>><rsup|-2>*d<rsub|k<rsub|i>><rsup|5>>
      and using <math|r<rsub|i>=d<rsub|k<rsub|i>>*\<sigma\><rsub|i>> gives
      <math|<around|\||Z<rsub|i>-\<beta\><rsub|i>*r<rsub|i><rsup|5>*p|\|><rsub|1>\<leqslant\>2*\<eta\><rsub|i>*\<beta\><rsub|i>*r<rsub|i><rsup|5><around|\||p|\|><rsub|1>>,
      which is <verbatim|eq:trace-sensor-finite-price>. Correct.

      <item>The degree classification (311\U322) is the same argument as
      before, now with the R2 reference. Correct.

      <item>Limits: <math|Z<rsub|i><around|(|\<omega\>|)>\<to\>\<vartheta\><rsub|k<rsub|i>><rsup|-2><math-up|core>M<around|(|k<rsub|i>|)>*y<rsub|i>=W<rsub|k<rsub|i>>*y<rsub|i>>
      by (S3) applied to <math|v<around|(|\<omega\>|)>=\<lambda\><rsub|i><around|(|\<omega\>|)>\<to\>y<rsub|i>>;
      <math|B<rsub|i><around|(|\<omega\>|)>\<to\>b<rsub|k<rsub|i>>*r<rsub|i><rsup|5>=D<rsub|i>>.
      The non-strict inequality passes to the ultrafilter limit. Correct,
      with the volume limit at fixed <math|i>.
    </itemize-minus>

    <item><strong|Lemma <verbatim|lem:trace-sensor-transport-price>.>

    <\itemize-minus>
      <item>Telescoping with <math|a=\<delta\><rsub|i>/N<rsub|i>\<leqslant\>1/N<rsub|i>>:
      from <math|<around|\||z<rsub|j+1>|\|><rsub|1>\<leqslant\>2<around|\||z<rsub|n<rsub|i>>|\|><rsub|1>>,
      the step bound <math|<tfrac|\<delta\><rsub|i>|2*N<rsub|i>><around|\||z<rsub|j+1>|\|><rsub|1>\<leqslant\>a<around|\||z<rsub|n<rsub|i>>|\|><rsub|1>>.
      Correct.

      <item>Grade scaling <verbatim|eq:trace-sensor-grade-scaling>: block
      factor <math|L<rsub|j><rsup|0>=1>, dilation factor
      <math|<around|(|\<vartheta\><rsub|j>/\<vartheta\><rsub|j+1>|)><rsup|2>>
      on the nonunit coordinates of the odd <math|<wide|z|~><rsub|j+1>>.
      Correct.

      <item>Budget: <math|<wide|\<beta\>|^><rsub|n<rsub|i>>\<leqslant\>2*\<chi\>>;
      <math|log L<rsub|j>\<geqslant\>log 3\<geqslant\>1> gives
      <math|N<rsub|i>\<leqslant\>2<around|(|log \<chi\>|)><rsup|48>>;
      <math|C<rsub|j+1>\<leqslant\>log <wide|\<beta\>|^><rsub|j+1>\<leqslant\>2*log
      \<chi\>>; monotonicity gives <math|A<rsub|1/2>*<around|(|j+1|)>\<geqslant\>A<rsub|1/2><around|(|k<rsub|i>|)>>.
      Then <math|2*N<rsub|i>\<cdot\>4*g<rsub|j>\<leqslant\>32<around|(|log
      \<chi\>|)><rsup|48>*<around|(|1+2*log
      \<chi\>|)>/A<rsub|1/2><around|(|k<rsub|i>|)>\<leqslant\>A<rsub|-2/5><around|(|k<rsub|i>|)>=\<delta\><rsub|i>>,
      because a fixed power of <math|log \<chi\>> is eventually below
      <math|A<rsub|1/10><around|(|k<rsub|i>|)>>. Correct.

      <item>Quantifiers: the finite intersection over
      <math|k<rsub|i>\<leqslant\>j\<less\>n<rsub|i>> with
      <math|N\<geqslant\>n<rsub|i>> is taken for fixed <math|i> before the
      ultrafilter limit. This matches (S5).
    </itemize-minus>

    <item><strong|Lemma <verbatim|lem:trace-sensor-lift-limit>.>
    <math|<around|(|u<rsub|i>*h|)><rsub|\<alpha\>>=c<rsub|i><rsup|-1>*W<rsub|n<rsub|i>>*y<rsub|i>=<around|(|b<rsub|k<rsub|i>>/b<rsub|n<rsub|i>>|)><math-ss|R><rsub|i>>.
    The bound <math|<around|\||<math-ss|R><rsub|i>-p|\|><rsub|1>\<leqslant\><around|(|2*\<eta\><rsub|i>+\<delta\><rsub|i>|)>*<around|(|1-\<delta\><rsub|i>|)><rsup|-1><around|\||p|\|><rsub|1>>
    follows: <math|\<delta\>*<around|(|1+2*\<eta\>|)>/<around|(|1-\<delta\>|)>+2*\<eta\>=<around|(|2*\<eta\>+\<delta\>|)>/<around|(|1-\<delta\>|)>>.
    With <verbatim|lem:trace-sensor-arch-ratio>, <math|u<rsub|i>*h\<to\>U*h>.
    Finite dimension gives operator-norm convergence. Correct.

    <item><strong|Proposition.> The proof is unchanged in substance from the
    version reviewed in #126 (item 8 there), which I re-read.
    <math|T<rsub|i>=u<rsub|i>*f+A\<otimes\>v<rsub|i>\<to\><math-up|id>>,
    <math|s<rsub|i>*T<rsub|i>=f+A\<otimes\>s<rsub|i><around|(|v<rsub|i>|)>>,
    <math|<around|\<\|\|\>|s<rsub|i>-f|\<\|\|\>>\<leqslant\><around|(|<around|\<\|\|\>|A|\<\|\|\>>\<\|\|\>s<rsub|i><around|(|v<rsub|i>|)>\<\|\|\>+<around|\<\|\|\>|f|\<\|\|\>>*\<epsilon\><rsub|i>|)>/<around|(|1-\<epsilon\><rsub|i>|)>>,
    then <verbatim|lem:ex-lattice-trace-weighted-price> with
    <math|<around|(|s<rsub|i>,u<rsub|i>,v<rsub|i>,\<frak-a\><rsub|i>|)>>. The
    statement now has "for all sufficiently large <math|i>,
    <math|<around|\||\<mu\><rsub|i><around|(|h|)>|\|>\<leqslant\>C<around|\<\|\|\>|h|\<\|\|\>>>"
    and one tail per <math|\<varepsilon\>>, uniform in <math|y>. Correct.
  </enumerate>

  <strong|Existing results.> The tools remain the Neumann series (cited in
  <verbatim|correspondence.md> to Winklmeier, Thm 2.10) and the rank-one
  receiver lemma proved in <verbatim|trace-weighted-estimates.tex>. I know of
  no literature result that would shorten the chart and calibration
  bookkeeping.

  <section|Optional suggestions (not required)><label|optional-suggestions-not-required>

  <\itemize-minus>
    <item><strong|O1 (clarity), lines 295\U299.> "Applying core to the second
    bound" should say "applied to <math|v<rsup|\<circ\>>>". At <math|v>
    itself the bound has <math|<around|\||<math-ss|A>v|\|><rsub|1>> on the
    right, which need not be at most <math|2<around|\||<math-up|core><math-ss|T>v|\|><rsub|1>>.

    <item><strong|O2 (presentation).> The lemmas cite "(S1)\U(S6) below"
    before the list appears (line 229). Two proofs also open with "Suppose
    \<ldots\>" for statements they derive later (248\U256, 372\U381). Moving
    the list before Lemma <verbatim|lem:trace-sensor-initial-price>, and
    stating the finite-volume price and the one-step price as claims to be
    proved, would read more directly. The proposition statement also contains
    a proof sentence ("By Lemmas \<ldots\>, the stated chart has an eventual
    right inverse \<ldots\>"), which could move to the proof.

    <item><strong|O3 (scaffolding), line 340.> "On the selected tail, where
    <math|i\<geqslant\>5>" comes from the Lean indexing of the lift
    (<verbatim|heightV>, with <verbatim|5 \<less\> i+1>; see
    <verbatim|correspondence.md> line 33). In the monograph, "on the selected
    tail" suffices.

    <item><strong|O4 (wording), lines 243\U245.> "Write
    <math|\<cal-F\><rsub|<math-up|fuse>>> for its fused-order filter" \V
    "its" refers to the order, not the ultrafilter. Suggest: "Write
    <math|\<cal-F\><rsub|<math-up|fuse>>> for the fused-order filter on
    pairs; the selected ultrafilter satisfies
    <math|\<cal-L\>\<leqslant\>\<cal-F\><rsub|<math-up|fuse>>>, so it
    contains both coordinate tails."
  </itemize-minus>

  Not checked: the production of the inputs (S1)\U(S7), which by design are
  hypotheses; <verbatim|preamble.tex>; the parts of the support chapters not
  cited here.

  <section|Evidence (commands actually run, at
  <verbatim|b0bfc78>)><label|evidence-commands-actually-run-at-b0bfc78>

  <\itemize-minus>
    <item><verbatim|python3 scripts/check_blueprint.py>: "Blueprint structure
    OK: 4 units. Lean and mathematics were not verified." (also after adding
    these reports)

    <item><verbatim|python3 -m unittest discover -s tests>: 22 tests, OK.

    <item><verbatim|python3 scripts/check_blueprint.py --fingerprint
    YM-000033>: <verbatim|ad3b82466a1b69b610548e1af518251def5ac1cd4a6bc5757a91b3cc46cba4aa>;
    SHA-256 of all ten files listed in <verbatim|revision-candidate.json>
    recomputed: all match.

    <item>From <verbatim|manuscript/>, <verbatim|pdflatex
    -interaction=nonstopmode -halt-on-error
    -output-directory=\<less\>scratch\<gtr\>
    ../blueprint/units/YM-000033/evidence/wrapper.tex>, twice: exit 0 both
    times, 21 pages. Warnings: only <verbatim|prop:ex-lattice-charge-bounds>
    (pages 11, 12) and <verbatim|prop:ex-trace-mission-price-transfer> (page
    6), the two documented external labels; one inherited 5.3389pt overfull
    box in the receiver paragraph. Pages 14\U21 rendered with
    <verbatim|pdftoppm -r 70> and inspected (pages 17 and 20 in detail):
    lemma headings, the (S1)\U(S7) list and the proposition render correctly.

    <item>Lean: source text read with <verbatim|grep>/<verbatim|sed> only
    (paths in the Lean report). No elaboration.
  </itemize-minus>

  <section|Acceptance><label|acceptance>

  No acceptance is recorded by this report. A responsible human may record
  local mathematical acceptance at fingerprint
  <verbatim|ad3b8246\<ldots\>46cba4aa>, conditional on (S1)\U(S7). O1\UO4 are
  optional; any edit would change the fingerprint.

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
    <associate|acceptance|<tuple|4|5>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-2|<tuple|1.1|2>>
    <associate|auto-3|<tuple|1.2|3>>
    <associate|auto-4|<tuple|2|4>>
    <associate|auto-5|<tuple|3|5>>
    <associate|auto-6|<tuple|4|5>>
    <associate|evidence-commands-actually-run-at-b0bfc78|<tuple|3|5>>
    <associate|findings-and-evidence|<tuple|1|2>>
    <associate|optional-suggestions-not-required|<tuple|2|4>>
    <associate|re-verification-of-the-revised-mathematics|<tuple|1.2|3>>
    <associate|responses-to-the-earlier-findings|<tuple|1.1|2>>
    <associate|review-of-a-proof-unit|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Findings
      and evidence> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Responses to the earlier findings
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|Re-verification of the revised mathematics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Optional
      suggestions (not required)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Evidence
      (commands actually run, at <with|font-family|<quote|tt>|language|<quote|verbatim>|b0bfc78>)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Acceptance>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>