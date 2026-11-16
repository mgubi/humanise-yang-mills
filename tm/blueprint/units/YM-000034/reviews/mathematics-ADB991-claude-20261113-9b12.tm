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

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Scope>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Findings and
    evidence> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Suggestions
    (optional, not required)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Commands
    actually run> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Required
    changes and remaining uncertainty> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Acceptance>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>
  </table-of-contents>

  <\itemize-minus>
    <item>Unit: YM-000034, <verbatim|blueprint/units/YM-000034/>

    <item>Role: mathematical validity (renewed review of revision 1)

    <item>Human reviewer: <verbatim|ADB991> (account under which this report
    is submitted; ADB991 had not reviewed it before submission, and no human
    acceptance is recorded by this report)

    <item>Agent assistance: the whole review was done by a Claude (Anthropic)
    agent session, <verbatim|ADB991-claude-20261113-9b12>, running as a
    scheduled agent. This account authored no part of YM-000034 and did not
    write review #128. The revision was authored with GPT-6.1 Terra (Codex),
    session <verbatim|TrishenGunaratnam-terra-issue34-revision-20261113>.

    <item>Content SHA-256: <verbatim|01500ca93fd84b5d773c55a5fc4c4467f972175de13dce410f8f3bc8b12ed989>
    (<verbatim|python3 scripts/check_blueprint.py --fingerprint YM-000034> at
    PR #140 head <verbatim|b5d640286cc7128779dd14976ea920af4d7d136a>; matches
    the author's recorded value)

    <item>Manuscript files and labels: <verbatim|manuscript/existence/trace-branch-moments.tex>
    (SHA-256 <verbatim|849905cd\<ldots\>4a5e13>),
    <verbatim|manuscript/existence/trace-free-rank.tex>,
    <verbatim|manuscript/preamble.tex>. Labels checked:
    <verbatim|eq:ex-branch-test-properties>,
    <verbatim|eq:ex-branch-grade-three-unit>,
    <verbatim|eq:ex-branch-book-current>\U<verbatim|eq:ex-branch-book-tensor>,
    <verbatim|eq:ex-branch-recorded-difference>,
    <verbatim|eq:ex-branch-recorded-traces>,
    <verbatim|prop:ex-branch-raw-fast>, <verbatim|eq:ex-branch-moving-detector>,
    <verbatim|eq:ex-branch-transport-bound>,
    <verbatim|prop:ex-branch-washout>, <verbatim|eq:ex-branch-chart-identity>,
    <verbatim|eq:ex-branch-moment-input>.

    <item>Source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>

    <item>Review task and PR: issue <hlink|#34|https://github.com/hairer/humanise-yang-mills/issues/34>,
    claim <hlink|https://github.com/hairer/humanise-yang-mills/issues/34#issuecomment-6855003177|https://github.com/hairer/humanise-yang-mills/issues/34#issuecomment-6855003177>;
    revision PR #140; earlier review PR #128 (findings R1, R2); this report's
    PR: report-only draft against <verbatim|codex/existence-monograph>.

    <item>Outcome: <strong|no change required; R1 and R2 are resolved.>
    Accepted locally for the revised hunks, conditional on the same stated
    inputs as before (chart, recording, transport and purchase inputs). Two
    optional suggestions (S1, S2).
  </itemize-minus>

  <section|Scope><label|scope>

  The revised hunks (<verbatim|git diff bac6004 b5d6402>, chapter lines
  674\U713, 748\U765, 944\U1028, 1051\U1131), checked step by step, together
  with the parts of the chapter they cite (setup lines 1\U175, recording
  paragraph 715\U758). The unchanged parts of the chapter were reviewed in
  #128 and were not re-derived here, except where a revised statement now
  cites them.

  <section|Findings and evidence><label|findings-and-evidence>

  <strong|R1 (hypotheses of the two propositions): resolved.>

  <\itemize-minus>
    <item><verbatim|eq:ex-branch-test-properties> states two facts. First,
    <math|L<rsup|\<sigma\>><rsub|d><around|(|z|)>\<to\>\<lambda\><rsup|\<sigma\>><rsub|d>>
    in operator norm: the functionals act on a finite-dimensional space, so
    pointwise continuity implies this. Second,
    <math|<big|cap><rsub|\<sigma\>>ker \<lambda\><rsup|\<sigma\>><rsub|4>=<around|{|0|}>>.
    Kernels of finite intersections form a descending chain of subspaces of a
    finite-dimensional space, so finitely many tests already separate, as the
    text says. The separation itself is still attributed to field separation
    of the selected hierarchy plus grid density, and is marked as a retained
    input. Correct.

    <item><verbatim|eq:ex-branch-grade-three-unit> holds on a test-dependent
    small neighbourhood. The proof uses it only at the two endpoints <math|0>
    and <math|n<rsub|k>*a<rsub|k>*e<rsub|d>>, and
    <math|n<rsub|k>*a<rsub|k>=h<rsub|k>\<to\>0>, so for large <math|k> both
    lie in the neighbourhood. Correct.

    <item><verbatim|eq:ex-branch-recorded-traces> makes explicit what the old
    prose took as exact. On the false branch, <math|J<rsup|-><rsub|a*a>=0>
    (setup, the <math|J<rsup|->> display). On the principal branch,
    <math|<big|sum><rsub|a>J<rsup|0><rsub|a*a>=<big|sum><rsub|d>\<nabla\><rsub|d>*Q<rsup|<around|[|r|]>><rsub|d>>
    (setup, after the <math|\<varrho\><rsub|k>> definition). Applying the
    same linear tested correlation at grade four gives
    <math|<big|sum><rsub|a>T<rsup|\<sigma\>,->=0> and
    <math|<big|sum><rsub|a>T<rsup|\<sigma\>,0>=<big|sum><rsub|d>G<rsup|\<sigma\>><rsub|d><around|(|0|)>>.
    Both sides carry the same grade-four normalisation, which is consistent
    with the <math|a<rsub|k><rsup|-1>=a<rsub|k><rsup|-4>/a<rsub|k><rsup|-3>>
    remark. Correct.

    <item>I recomputed the proof of <verbatim|prop:ex-branch-raw-fast>
    against the new hypothesis list.

    <\itemize-minus>
      <item>(a) Moving detector: pointwise convergence on a
      finite-dimensional space is norm convergence. The joint limit map is
      injective, so it has a positive minimum <math|m> on the unit sphere,
      and for large <math|k>, <math|max<rsub|\<sigma\>><around|\||\<Lambda\><rsup|\<sigma\>><rsub|k>*z|\|>\<geqslant\><around|(|m/2|)><around|\<\|\|\>|z|\<\|\|\>>>.
      This is <verbatim|eq:ex-branch-moving-detector>.

      <item>(b) Telescoping: summing <verbatim|eq:ex-branch-recorded-difference>
      over <math|0\<leqslant\>j\<less\>n<rsub|k>> gives
      <math|<big|sum><rsub|j>G<around|(|j|)>=a<rsub|k><rsup|-1>*<around|(|F<around|(|n<rsub|k>|)>-F<around|(|0|)>|)>>.
      Both endpoint values are within <math|E> of
      <math|L<rsub|3><around|(|0|)>*v<rsub|d,k>> by
      <verbatim|eq:ex-branch-book-current> and
      <verbatim|eq:ex-branch-grade-three-unit>. Hence
      <math|<around|\||\<Lambda\><rsub|k>*w|\|>\<leqslant\>n<rsub|k><rsup|-1>*<big|sum><rsub|j>\|L<rsub|4>*<around|(|j*a<rsub|k>*e<rsub|d>|)>*w-G<around|(|j|)>\|+<around|\||n<rsub|k><rsup|-1>*<big|sum><rsub|j>G<around|(|j|)>|\|>\<leqslant\>D+2*E/<around|(|a<rsub|k>*n<rsub|k>|)>>,
      as displayed. With <math|h<rsub|k>\<geqslant\>e<rsup|-\<tau\>*s<rsub|k>>>,
      the second term is <math|O<around|(|e<rsup|-<around|(|\<eta\>-\<tau\>|)>*s<rsub|k>>|)>>.
      Only <math|n<rsub|k>+3> ultrafilter-large sets are intersected at each
      fixed <math|k>.

      <item>(c) False and principal traces follow from the linearity of
      <math|\<lambda\><rsup|\<sigma\>><rsub|4>>,
      <verbatim|eq:ex-branch-book-tensor>,
      <verbatim|eq:ex-branch-book-difference> at <math|j=0> (where
      <math|L<rsub|4><around|(|0|)>=\<lambda\><rsub|4>>), and
      <verbatim|eq:ex-branch-recorded-traces>.
    </itemize-minus>

    Every input the proof uses is now among the cited labels, or in the
    recording paragraph those labels belong to (radius
    <math|c<rsub|\<sigma\>>>, common ultrafilter, eventual cutoff).

    <item><verbatim|eq:ex-branch-transport-bound> is now labelled. It is the
    closed-ball ultrafilter limit of the finite-volume bound at fixed
    <math|k> and <math|v>, followed by a supremum over
    <math|<around|\<\|\|\>|v|\<\|\|\>>\<leqslant\>1>. No infinite
    intersection of large sets is used. <verbatim|prop:ex-branch-washout>
    cites it together with <math|\<ell\><rsub|k>=o<around|(|s<rsub|k>|)>> and
    the affine clock. These are exactly what the proof's step
    <math|<wide|\<beta\>|^><rsup|p><rsub|k>*B<rsub|k>*r<rsup|b><rsub|k>\<to\>0>
    needs: <math|<wide|\<beta\>|^><rsup|p><rsub|k><around|\<\|\|\>|B<rsub|k>|\<\|\|\>>=O<around|(|e<rsup|\<epsilon\>*s<rsub|k>>|)>>
    for every <math|\<epsilon\>\<gtr\>0>, and
    <math|<around|\<\|\|\>|r<rsup|b><rsub|k>|\<\|\|\>>=O<around|(|e<rsup|-\<eta\>*s<rsub|k>>|)>>.
    The remaining steps of the washout proof are unchanged and I rechecked
    them:

    <\itemize-minus>
      <item>the diagonal trace of the symmetry average is
      <math|<around|\||\<cal-G\>|\|><rsup|-1>*<big|sum><rsub|g>\<frak-c\>*\<rho\><rsub|g><around|(|y<rsup|b><rsub|k>|)>>,
      because squared signs cancel and the axis maps are bijections;

      <item>the chart identity applied to <math|x=r<rsup|b><rsub|k>> uses
      <math|\<pi\>*R=<math-up|id>> and <math|\<frak-c\>*q=q>;

      <item><math|<math-ss|P><rsub|i>> is linear, so
      <math|<math-ss|P><rsub|i><math-up|tr>t=<math-up|tr><math-ss|P><rsub|i>t>.
    </itemize-minus>
  </itemize-minus>

  <strong|R2 (unused support file): resolved.> I took the labels defined in
  <verbatim|ope-filtration.tex> (at PR head) and intersected them with the
  <verbatim|\\ref>/<verbatim|\\eqref> targets of both
  <verbatim|trace-branch-moments.tex> and <verbatim|trace-free-rank.tex>. The
  intersection is empty. The two-pass wrapper build without the file (below)
  has no undefined references and no box warnings, so the file supplied
  neither labels nor macros needed here. Removing it from
  <verbatim|unit.json> and <verbatim|evidence/wrapper.tex> is correct.

  <strong|Records.> The <verbatim|revision-candidate.json> manifest hashes
  all match the PR head files (8/8, recomputed). The Lean tree at the basis
  is <verbatim|328ad19\<ldots\>>, as recorded. <verbatim|git diff --check
  bac6004 b5d6402> is clean. The PR touches no file under <verbatim|Lean/>.
  Earlier reports and the null approval fields are unchanged.

  <section|Suggestions (optional, not required)><label|suggestions-optional-not-required>

  <\itemize-minus>
    <item><strong|S1.> <verbatim|prop:ex-branch-washout> still cites "the
    stated projection equivariance" in words. It could point to the setup
    sentence ("The table projection intertwines these label
    motions\<ldots\>") by a label, as was done for the other inputs.

    <item><strong|S2.> In <verbatim|prop:ex-branch-raw-fast> the en-dash
    range <verbatim|\\eqref{\<ldots\>book-current}--> is followed by a source
    line break, which renders as "(23)\U (25)" when it falls inside a line. A
    <verbatim|~> or joining the lines avoids the stray space. Cosmetic only.
  </itemize-minus>

  <section|Commands actually run><label|commands-actually-run>

  <\itemize-minus>
    <item><verbatim|python3 scripts/check_blueprint.py> at the PR head:
    <verbatim|Blueprint structure OK: 4 units.>

    <item><verbatim|python3 -m unittest discover -s tests>: 22 tests OK.

    <item><verbatim|python3 scripts/check_blueprint.py --fingerprint
    YM-000034>: <verbatim|01500ca9\<ldots\>2ed989>.

    <item>From <verbatim|manuscript/>, twice: <verbatim|pdflatex
    -interaction=nonstopmode -halt-on-error -jobname=issue34
    -output-directory=\<less\>scratch\<gtr\>
    ../blueprint/units/YM-000034/evidence/wrapper.tex>. Both passes exited 0;
    the PDF has 20 pages; the log has 0 <verbatim|undefined> and 0
    over/underfull lines (TeX Live 2023, Debian). Pages 14\U20 were rendered
    with <verbatim|pdftoppm>. Pages 17\U18, which hold both propositions'
    hypotheses and the raw-fast proof, were inspected visually. The
    hypothesis text on pages 14\U20 was checked via <verbatim|pdftotext>.

    <item>Label-intersection scan and manifest hash recomputation in Python;
    <verbatim|git diff --check>.
  </itemize-minus>

  <section|Required changes and remaining
  uncertainty><label|required-changes-and-remaining-uncertainty>

  None required. Not checked: the production of the inputs, which are
  hypotheses by design (finite-volume purchases, root prices, spectator
  estimates, chart and moment limits, column calibration); the unchanged
  parts of the chapter beyond what the revised statements cite (reviewed in
  #128); integration with the physical trace producer in #26.

  <section|Acceptance><label|acceptance>

  No acceptance is recorded by this report. A responsible human may record
  local mathematical acceptance at fingerprint
  <verbatim|01500ca9\<ldots\>2ed989>, conditional on the listed inputs.

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
    <associate|acceptance|<tuple|6|4>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|3>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|5|4>>
    <associate|auto-6|<tuple|6|4>>
    <associate|commands-actually-run|<tuple|4|4>>
    <associate|findings-and-evidence|<tuple|2|2>>
    <associate|required-changes-and-remaining-uncertainty|<tuple|5|4>>
    <associate|review-of-a-proof-unit|<tuple|?|1>>
    <associate|scope|<tuple|1|2>>
    <associate|suggestions-optional-not-required|<tuple|3|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Scope>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Findings
      and evidence> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Suggestions
      (optional, not required)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Commands
      actually run> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Required
      changes and remaining uncertainty> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Acceptance>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>