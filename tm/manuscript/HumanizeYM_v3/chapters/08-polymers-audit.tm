<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Chapter 8 audit><label|chapter-8-audit>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Scope>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Sources
    inspected> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Checked
    application> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Additional
    checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Still to
    integrate> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>
  </table-of-contents>

  <section|Scope><label|scope>

  Draft of abstract polymer tools, not a proof of the actual gauge-theory
  step. Does not assume or assert the selected Wilson family has the required
  activity estimates. The completed chapter may need a concise
  norm-translation subsection once Chapter 4 is written.

  <section|Sources inspected><label|sources-inspected>

  <\itemize-minus>
    <item>Scott Outline III.5, especially III.5.1\U6: finite logarithm,
    rooted estimates, deletion, forced attachments.

    <item>Martin <verbatim|existence/cluster-expansion.tex>,
    <verbatim|eq:cluster-vertex-input>, <verbatim|eq:cluster-local-tail>,
    <verbatim|eq:cluster-marked-size>: exact support hypotheses and factorial
    conventions.

    <item>UV specification U6: connected activities and forced coverage.

    <item>Ueltschi, arXiv math-ph/0304003v3, full HTML Ÿ2 Theorem 1,
    equations (3)\U(4), inspected. This is the theorem used instead of
    reproving rooted tree combinatorics. Kotecký\UPreiss original
    bibliographic metadata checked; original theorem pages not inspected in
    this pass.
  </itemize-minus>

  <section|Checked application><label|checked-application>

  Write w=\|z\|, inflate each activity to w exp(alpha c)/q, and use KP
  exponent delta c. The incompatibility sum is at most q^(-1)\|X\| gamma
  \<less\>= delta c(X), using h gamma \<less\>= q delta. Finite volume plus
  nonempty supports ensures total weighted activity summability. The rooted
  bound then controls the sum of all clusters hitting x with weights q^(-n)
  by gamma/q: choose an occurrence containing x, replace 1/n! by 1/(n-1)!,
  and sum the root. For n\<gtr\>=k restore q^n\<less\>=q^k to get gamma
  q^(k-1). Union support weights are bounded by product support weights
  because a nonzero connected coefficient has an overlap spanning tree. This
  proves the stronger tail displayed in the draft as an immediate application
  of the existing theorem; no new cluster theorem is claimed.

  Martin uses q0=4h gamma/delta and obtains gamma q^m/(1-q). That sufficient
  condition implies the draft's criterion, so the cited abstract theorem can
  replace this repetitive combinatorial proof. This observation does not
  remove any source-specific activity hypothesis. Rooted tuples permit
  repeated labels; gas families do not.

  <section|Additional checks><label|additional-checks>

  Independent review by the continuum writer confirmed the inflated-activity
  criterion, all factorials, union-weight inequality and the stronger tail on
  19 November 2026.

  The deletion identity follows by subtracting absolutely convergent series.
  Real positivity is a conclusion, not a premise. Cauchy differentiation
  requires uniform bounds on complex parameter neighbourhoods; the text says
  so. The large-field reassembly formula is stated for overlap
  incompatibility and fixed large-field configuration; it does not assert
  product factorization of clusters meeting multiple supports or convergence
  of an uncontrolled forced sum. The final support discussion was corrected
  after inspecting Scott D25: exact covering supports can be smaller than
  full link-dependence supports because boundary flags inspect adjacent
  plaquettes. The abstract overlap criterion does not assert independence of
  activity random variables.

  <section|Still to integrate><label|still-to-integrate>

  Map Chapter 4's precise anchored and unanchored norms to the site norm,
  including any support enlargement for eligibility tests. Specify exactly
  which scalar and forced activity bounds Chapter 9 supplies. Confirm the
  final book's symbol registry reserves alpha, delta and gamma_0 only locally
  here. No source-specific missing estimate is declared solved by this
  chapter.
</body>

<\initial>
  <\collection>
    <associate|html-title|Chapter 8 audit \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|additional-checks|<tuple|4|2>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|1>>
    <associate|auto-4|<tuple|4|2>>
    <associate|auto-5|<tuple|5|2>>
    <associate|chapter-8-audit|<tuple|?|1>>
    <associate|checked-application|<tuple|3|1>>
    <associate|scope|<tuple|1|1>>
    <associate|sources-inspected|<tuple|2|1>>
    <associate|still-to-integrate|<tuple|5|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Scope>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Sources
      inspected> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Checked
      application> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Additional
      checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Still
      to integrate> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>