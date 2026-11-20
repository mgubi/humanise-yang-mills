<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Independent review of Chapter12><label|independent-review-of-chapter12>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Required
    clarification> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Checks passed>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Scope>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Resolution>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>
  </table-of-contents>

  Reviewed the fixed-level graph, scalar normalization, stopping argument and
  smooth passage against Martin <verbatim|existence/fixed-rung-convergence.tex>,
  <verbatim|fullmesh-correlation-cauchy.tex> and
  <verbatim|smooth-limits.tex>.

  <section|Required clarification><label|required-clarification>

  The graph-contraction lemma uses the bound <verbatim|\|\|Phi H\|\|
  \<less\>= s_m> in its proof. State explicitly that the marked step maps
  admissible graphs to admissible graphs. The displayed difference bounds and
  inverse bound by themselves do not imply this. This is the existing
  admissibility supplier, not a new convergence estimate.

  <section|Checks passed><label|checks-passed>

  <\itemize-minus>
    <item>The graph includes both ordinary and forced singleton remainder
    data and uses common fixed dictionaries. No quotient by equality of
    evaluated functions is used. Terminal forgetting is valid only together
    with the explicitly stated fixed-input cutoff continuity; the chapter
    keeps that distinction.

    <item>The scalar is the extensive scalar, stripped from numerator and
    denominator identically. Uniform positivity of the stripped partition
    function follows by restricting the positive full density to the fixed
    small-link ball. Positivity of each separate partition function alone
    would not suffice; the text supplies the uniform lower bound.

    <item>The stopped density retains full singleton data, including forced
    singletons, and removes only higher marked terms. The fixed-base constant
    uses coefficient bounds and positive weights at one fixed base level, so
    it does not depend on the stopping level. The stronger separated support
    estimate pays per-marker weight changes. The disk argument gives the
    stated factor 2 exp(-B_m/64).

    <item>The fixed-level convergence plus the stopping bound proves full
    cutoff Cauchy convergence, with the order of choices stopping level
    first, cutoff second. It does not falsely infer convergence of a sequence
    of changing maps merely from contraction of each map.

    <item>The discrete smoothness proof uses uniform bounds on every finite
    difference order on enlarged separated compacts, identifies derivative
    limits by secants and discrete Taylor expansion, and allows equal
    coordinate projections. The physical Riemann sum normalization a_N^(4n)
    is correct.
  </itemize-minus>

  <section|Scope><label|scope>

  This review validates the stated conditional ultraviolet passage.
  Production of fixed-level background convergence and marked fixed-input
  cutoff continuity for the selected history is still a separate interface.
  Uniform finite-history Gaussian bounds alone do not supply those
  convergence inputs. The review does not certify coincident-point extensions
  or reconstruction.

  <section|Resolution><label|resolution>

  The graph-contraction lemma now explicitly assumes that the marked step
  maps admissible graphs into admissible graphs. The sole requested local
  clarification is resolved.
</body>

<\initial>
  <\collection>
    <associate|html-title|Independent review of Chapter12 \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|2>>
    <associate|checks-passed|<tuple|2|1>>
    <associate|independent-review-of-chapter12|<tuple|?|1>>
    <associate|required-clarification|<tuple|1|1>>
    <associate|resolution|<tuple|4|2>>
    <associate|scope|<tuple|3|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Required
      clarification> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Checks
      passed> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Scope>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Resolution>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>