<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Independent review of Chapter13><label|independent-review-of-chapter13>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Required
    clarification: coefficient filter> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Repeated-word
    geometry: checked> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Normalized null
    lemma and rank comparison: checked> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Other checks>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Resolution>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>
  </table-of-contents>

  Compared <verbatim|13-continuum-fields.tex> with Scott
  <verbatim|part2/F-infinite-volume.tex>, especially its coefficient
  extraction, representation-of-limits lemma, and repeated reflected words
  proof.

  <section|Required clarification: coefficient
  filter><label|required-clarification-coefficient-filter>

  The chapter assumes that the bounded projections have a common ordered
  accumulation point, but later describes the application filter as the
  original tails <verbatim|k \<gtr\>= k0, N \<gtr\>= N0(k)>. An accumulation
  point alone does not imply convergence along that filter, as required by
  the finite-dimensional representation lemma.

  Choose one common refinement explicitly: first a diagonal cutoff
  subsequence <verbatim|N=n(j)> for all countably many bounded coefficient
  families at each volume, then a volume refinement. Use ordered tails
  <verbatim|k \<gtr\>= k0, j \<gtr\>= j0(k)> on those coefficient indices.
  Alternatively choose a single ultrafilter extending the original ordered
  tails and realizing all coefficient accumulation points, and apply the
  lemma along that ultrafilter. The already existing full cutoff correlation
  limits are unchanged in either approach. The same choice must apply to all
  degrees, projections and comparison-label families; it must precede
  spectators and tests.

  <section|Repeated-word geometry: checked><label|repeated-word-geometry-checked>

  <\itemize-minus>
    <item>Choosing the first permitted cell scale below r/32 gives a_m
    \<gtr\>= c r^2, with the constant depending only on the fixed initial
    reference level. The rounded slab width s=a_m floor(h/a_m) is positive
    since h\<gtr\>=2r and leaves buffer at least r/2.

    <item>The first centered scale below alpha(r/n)^2 has lower bound
    c(r/n)^4. The requirement 20n a_k\<less\>a_m exactly pays the strips for
    at most 2n main residue patterns with margin 5a_k.

    <item>Expanding the OS form gives 4jn main points. Adjacent reflected
    slabs are separated by the buffer. The two exterior copies lie beyond the
    two ends, at times +/- (2js+t), and stay at distance at least r/2 from
    all main points. Main cells therefore contain no exterior points.

    <item>Because s is a multiple of a_m, the main residue list does not grow
    with j. Choose the exterior cell side no larger than a_k and below its
    internal separations and twice its minimum positive time; choose its
    centered scale to satisfy 12\|v\| times that scale \<less\> the exterior
    cell side. Its residue patterns are also independent of j because the
    grids are aligned. A translation smaller than the exterior cell side
    preserves the main margins.

    <item>Coarse reflection preserves the aligned fine tiling. Fine-cell
    chessboard applied to the reflected exterior product gives the coarse
    seminorm bound X^(number of exterior factors), rather than a factor
    growing with j. This proves the stated 4j power and j-independent B_v
    without assuming operator boundedness.
  </itemize-minus>

  Two small clarity edits requested: name R as the coefficient bound in the
  proposition, and explicitly require exterior cell side \<less\>= a_k
  (rather than only saying finer aligned scales).

  <section|Normalized null lemma and rank comparison:
  checked><label|normalized-null-lemma-and-rank-comparison-checked>

  The normalized pair <verbatim|(b_u,z_u)> lies in a fixed compact set with
  <verbatim|b_u+\|\|z_u\|\|=1>. Functional convergence and the
  normalized-null hypothesis imply every cluster point satisfies
  <verbatim|L_i(z)=b t_i>, simultaneously for all response functionals. If
  b=0, z lies in both the projection range and the full null space,
  contradicting its norm. No boundedness of the unnormalized representatives
  is assumed. One vector therefore represents all spectator/test responses.
  The normalized-null estimate is correctly distinguished from the
  bounded-family null estimate.

  The first rank bound follows from the kernel inclusion and stability of
  finite-dimensional idempotent ranks. The second requires actual interacting
  response matrices approaching an invertible free detector matrix; this is
  explicitly retained as a separate hypothesis. Free-theory nondegeneracy
  alone is not substituted for it.

  <section|Other checks><label|other-checks>

  Countable diagonal compactness for smooth separated kernels, then
  multilinearity, suffices for one volume subsequence. Derivative
  identification and torus summation by parts have the correct sign and
  physical normalization. Quotient inclusions are injective by their response
  identities, and derivatives commute modulo the full null space. Reflection
  positivity passes for separated positive-time forms without asserting a
  coincident-point extension. The fixed-arity separated power estimate and
  the repeated-word estimate use different controls on their arity-dependent
  constants, as required.

  The outstanding inputs remain the corrected null/inclusion/derivative
  estimates, interacting detector comparison, and centered/interior
  chessboard bounds for the selected family. This audit validates the
  downstream arguments under those stated inputs, not their independent
  construction.

  <section|Resolution><label|resolution>

  All three requested clarifications are present in the current chapter:
  common coefficient subsequences and their refined ordered filter are
  explicit, R is named as the coefficient bound, and the exterior cell side
  is at most the main centered scale. These review items are resolved.
</body>

<\initial>
  <\collection>
    <associate|html-title|Independent review of Chapter13 \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|2>>
    <associate|auto-5|<tuple|5|2>>
    <associate|independent-review-of-chapter13|<tuple|?|1>>
    <associate|normalized-null-lemma-and-rank-comparison-checked|<tuple|3|2>>
    <associate|other-checks|<tuple|4|2>>
    <associate|repeated-word-geometry-checked|<tuple|2|1>>
    <associate|required-clarification-coefficient-filter|<tuple|1|1>>
    <associate|resolution|<tuple|5|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Required
      clarification: coefficient filter> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Repeated-word
      geometry: checked> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Normalized
      null lemma and rank comparison: checked>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Other
      checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Resolution>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>