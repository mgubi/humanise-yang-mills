<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Chapter 12: full ultraviolet limit at fixed
  volume><label|chapter-12-full-ultraviolet-limit-at-fixed-volume>

  Read in full Martin/existence/fixed-rung-convergence.tex,
  fullmesh-correlation-cauchy.tex, smooth-limits.tex, and
  Scott/part2/E-fixed-level.tex. The chapter preserves their explicit
  adjacent-scale stability assumptions rather than inferring cutoff
  convergence from contraction on one background. Chapter10 is being extended
  to supply actual background comparison; Chapter11 is being extended to
  supply the marked difference/propagation and all-difference inputs. Until
  those joins are closed, ch12:uv-theorem is explicitly conditional.

  <section|Source and claim map><label|source-and-claim-map>

  <\itemize-minus>
    <item>Fixed-level path convergence: Martin fixed-rung-convergence,
    background-density subsection. Canonical paths have polynomial
    multiplicity; strict exponential width reserve yields weighted
    convergence. No claim for an unrestricted all-walk index.

    <item>Complete remainder graph: same file, contraction and
    terminal-forgetting subsections. Both regular and forced profiles
    retained; graph norm is on arrays. Algebra checked directly: output
    difference \<less\>=(1+s_m) delta s_f a, hence halves if4 delta
    s_f\<less\>=1. Cross-cutoff fixed-input continuity separately required.

    <item>Singleton coefficient convergence: reference coefficient fixed
    exactly; only finitely many inverse coefficient maps used for any fixed
    level.

    <item>Scalar-normalized partition: same file last two subsections; use
    general positive Haar mass of a sufficiently small product link ball
    instead of the source's unnecessary explicit ambient-dimension lower
    bound. Scalar stripped from numerator and denominator identically.

    <item>Stopping: Martin fullmesh file higher modes/removal subsections,
    Scott lem:E-stopping. Complete singleton forced profiles kept. Source
    inflation radius exp(B_m/64), stronger q-origin support reserve, common
    base root bound and same partition normalization all explicit. The root
    bound is an actual marked-transfer hypothesis, not proved by unmarked KP
    alone.

    <item>Dense full-sequence Cauchy: first choose stopping level, then
    cutoffs; no diagonal extraction in N.

    <item>Smooth limits: standard discrete compactness/differentiation
    adaptation. Rudin1976 Theorems7.17/7.25 cited for standard principles,
    not as literal grid theorem; only necessary edge-telescoping/rounding
    adaptation explained. Search located primary textbook institutional
    copies (Nara and Lehman), but web tool refused full PDFs because
    \<gtr\>12MB and shell retrieval DNS unavailable. Theorem7.17 statement
    visible in indexed primary copy; exact numbered7.25 original statement
    still needs direct inspection before final bibliography applicability
    audit. No novel priority claim.
  </itemize-minus>

  <section|Deliberate scope><label|deliberate-scope>

  No infinite-volume limit, collision extension, or all-phase reconstruction
  is claimed here. Full cutoff convergence at fixed p and volume-uniform
  separated estimates are distinct quantifiers. Position coordinate ties are
  permitted whenever complete points are distinct modulo the period.
  Difference stencils use physical lengths.

  Independent review requested from foundations; global compile by root
  pending integration of Chapters10\U11 references.
</body>

<\initial>
  <\collection>
    <associate|html-title|Chapter 12: full ultraviolet limit at fixed volume
    \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|chapter-12-full-ultraviolet-limit-at-fixed-volume|<tuple|?|1>>
    <associate|deliberate-scope|<tuple|2|2>>
    <associate|source-and-claim-map|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Source
      and claim map> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Deliberate
      scope> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>