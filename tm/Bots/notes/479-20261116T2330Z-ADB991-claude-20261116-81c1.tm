<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Monograph|../../manuscript/existence.tm><ym-nav-sep><hlink|Glossary|../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../source/audit.tm><ym-nav-sep><hlink|Literature|../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../CONTRIBUTING.tm>>

  <ym-title|Checking a bulk renaming diff for mathematical
  preservation><label|checking-a-bulk-renaming-diff-for-mathematical-preservation>

  <\itemize-minus>
    <item>Issue: #479 (review of PR #477, <verbatim|9ded0b7a..962ac43b>)

    <item>Session: ADB991-claude-20261116-81c1

    <item>Report: <verbatim|blueprint/units/YM-000026/reviews/terminology-477-review-ADB991-claude-20261116-81c1.md>
  </itemize-minus>

  <section|Reusable method><label|reusable-method>

  This method suits any future terminology or notation pass over the
  monograph.

  <\enumerate>
    <item>Export both trees with <verbatim|git archive \<less\>rev\<gtr\>
    manuscript \| tar -x -C \<less\>dir\<gtr\>>.

    <item>Tokenise each changed file. Align the old and new token sequences
    and count the substitutions:
  </enumerate>

  <\python-code>
    import re, difflib

    TOK = re.compile(r'\\\\[A-Za-z]+\|[A-Za-z]+\|\\d+(?:\\.\\d+)?\|\\s+\|.')

    ta, tb = TOK.findall(old_text), TOK.findall(new_text)

    for op, i1, i2, j1, j2 in difflib.SequenceMatcher(None, ta, tb,
    autojunk=False).get_opcodes():

    \ \ \ \ if op != 'equal':

    \ \ \ \ \ \ \ \ record(''.join(ta[i1:i2]).strip(),
    ''.join(tb[j1:j2]).strip())
  </python-code>

  Each run of the tokeniser over the 180 files takes about a minute. 3. Keep
  the hunks that touch digits, <verbatim|^ _ \<less\> \<gtr\> = + / \|>, a
  binary minus or <verbatim|\\le \\ge \\frac \\sum \\exp \\log \<ldots\>>,
  and read each one. For #477 this gave 108 hunks. 4. For each new symbol,
  compare per-file counts before and after the diff. When the new count is
  higher and the old count was nonzero, a pre-existing symbol may now have
  two meanings in one file. Check it. 5. Count whole-word occurrences of the
  old identifiers in the new tree, and read every file that now has both the
  old and the new name. 6. Compare the multisets of <verbatim|\\label>,
  <verbatim|\\ref>, <verbatim|\\eqref> and <verbatim|\\cite> keys. 7. Search
  both trees for a word repeated across whitespace, including line breaks.
  Keep the cases that are new in the diff.

  <section|Facts checked against Lean while doing
  this><label|facts-checked-against-lean-while-doing-this>

  These may be reused.

  <\itemize-minus>
    <item><verbatim|YM.Bid.Loan.puffs L = L^(1/8)>
    (<verbatim|Lean/YM/Bid/Loan.lean:34>).

    <item><verbatim|momentPrice s \<eta\> = exp \<eta\> \<centerdot\>
    s!/\<eta\>^s> (<verbatim|Lean/YM/Extra/ITERATION_NO_LOSS/Sums.lean:106>).
    Note that a different, four-argument <verbatim|momentPrice> exists in
    <verbatim|Lean/YM/PhysicalNext/...>.

    <item><verbatim|YM.Trace.Zn.puff x = 4*(rim x+2)> and <verbatim|rim x =
    1000*radiusB x> (<verbatim|Lean/YM/TraceExtension/Zn/Setup.lean:13>,
    <verbatim|Have.lean:59>).

    <item><verbatim|YM.Trace.Zn.calorie x = x^{-30}>.
  </itemize-minus>
</body>

<\initial>
  <\collection>
    <associate|html-title|Checking a bulk renaming diff for mathematical
    preservation \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|checking-a-bulk-renaming-diff-for-mathematical-preservation|<tuple|?|1>>
    <associate|facts-checked-against-lean-while-doing-this|<tuple|2|1>>
    <associate|reusable-method|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Reusable
      method> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Facts
      checked against Lean while doing this>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>