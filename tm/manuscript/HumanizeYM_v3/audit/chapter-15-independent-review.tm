<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Independent review of Chapter15><label|independent-review-of-chapter15>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Repairs applied
    by root> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Cluster
    geometry and phase symmetries> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Positivity and
    field normalization> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Ground vectors
    and uniform slabs> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Resolution>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>
  </table-of-contents>

  Compared the chapter with Scott <verbatim|part2/H-section.tex>, Lemmas
  H1.2--H1.3 and the phase-slab corollary, and Martin
  <verbatim|existence/phases.tex> and <verbatim|phase-selection.tex>.

  <section|Repairs applied by root><label|repairs-applied-by-root>

  Both corrections below were applied before the 177-page checkpoint.

  <\enumerate>
    <item>Restrict the bounded-real variance supplier initially to generic
    real grid words: the coordinate projections are pairwise distinct along
    each axis. Scott's supplier has this restriction and chooses a cofinal
    grid after the degree bound and requested lower level. These generic grid
    configurations are dense in the full separated configuration space, so
    the existing norm-continuity extension gives every word without
    broadening the supplier.

    <item>State boundedness of the free reference singleton means in the
    detector sequence, or explicitly require
    gamma_l(1+\|s_l\|+\|s'_l\|)-\<gtr\>0. The displayed error estimate and
    gamma_l-\<gtr\>0 alone do not imply this. The actual free detector
    construction uses fixed free labels at convergent unscaled noncollision
    configurations, which supplies the bound.
  </enumerate>

  <section|Cluster geometry and phase symmetries><label|cluster-geometry-and-phase-symmetries>

  The rotation sending b to \|b\|e4 has (Ke4)^4=b4/\|b\|\<gtr\>0.
  Consequently the strong heat limit controls a fixed spatial shift after the
  auxiliary unit time shift, uniformly in the translated spatial coordinates.
  This proves trivial spatial action on the whole mixed ground space, not its
  dimension.

  The four cluster centers have time order 0,j,2j,3j, and exchanging axes one
  and four exchanges exactly the middle two. A second cluster limit along the
  invariant diagonal ray removes the common transformation of all internal
  word data. Density of the left/right compressed word vectors then proves
  the operator commutator is zero. The use of arbitrary spatial displacements
  is justified by U(y)P0=P0.

  For a real word the reflected difference Z is skew-adjoint. The variance
  argument has the correct order: finite number of copies and fixed
  translations, ordered cutoff/volume limits, cluster separation, copy number
  to infinity, then approximation error to zero. It uses bounded real
  approximants for diagonal terms and requires no bound on the square of an
  unapproximated word difference. The uniform bound on approximants must be
  independent of the copy number as encoded by their common family.

  After reflection invariance, adjoints of compressed words can be expressed
  through conjugation without a residual time reflection. Simultaneous
  orthogonal invariance of product moments therefore defines the unitary
  action on the compressed dense span. Its time-reflection generator is the
  identity; its conjugates give all hyperplane reflections, hence every
  orthogonal transformation acts trivially. This is stronger than symmetry of
  a mixture and uses the variance input essentially.

  <section|Positivity and field normalization><label|positivity-and-field-normalization>

  Whole-word compression gives Y_v^*Y_w. It must not be replaced by
  M(v)^<em|M(w); the retained compression defect is correct. Character
  positivity on the commutative C>-subalgebra therefore gives a genuine
  possibly higher-rank phase Gram matrix. Character normalization sends the
  unit to one. Field identities that vanish against all exterior words give
  zero slab operators and therefore pass to every phase. This proves the
  mixed-null inclusion before the quantitative converse.

  The all-copy error moments imply operator-norm errors by full support of
  the character measure. The connected-pair correction expands with the
  stated sign and yields gamma_l(1+\|s_l\|+\|s'_l\|). Once the reference mean
  bound above is included, the phase detector comparison is uniform, and
  equal finite codimension plus the null inclusion gives identical field
  spaces in all phases. No conclusion follows merely from the mixed mean
  error.

  <section|Ground vectors and uniform slabs><label|ground-vectors-and-uniform-slabs>

  For each fixed positive word, its heat matrix element is nonnegative,
  decreasing, and bounded by its zero-time Gram value, continuous and hence
  bounded on the compact character space. Dominated convergence passes the
  heat limit through the phase measure. The difference from \|S^xi(w)\|^2 is
  exactly the squared norm of the ground projection orthogonal to the
  normalized vacuum. A common countable dense family of rational words makes
  the null set independent of the word and yields a one-dimensional ground
  space almost everywhere, without eliminating exceptional phases.

  The formal repeated-word map identity Y_vj=(B*B)^jY_v gives the phase norm
  bound by positivity in the same subalgebra. The repeated-power argument
  then supplies phase slab operators bounded by the mixed norm, for every
  phase. It also applies to finite linear combinations of slab words, so
  differences and their norm derivatives pass through the same contraction;
  the dense-span identities extend. No spectral gap or uniqueness of the
  mixing measure is implied.

  Apart from the two supplier-scope clarifications above, no concrete
  mathematical error was found in this pass. Construction of bounded-real
  approximants and all-copy detector moment bounds remains an explicit
  upstream obligation.

  <section|Resolution><label|resolution>

  Both requested clarifications are present: the variance proof begins with
  generic real grid words, and the detector comparison explicitly retains
  fixed free labels at convergent noncollision configurations with bounded
  singleton means. These items are resolved.
</body>

<\initial>
  <\collection>
    <associate|html-title|Independent review of Chapter15 \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|2>>
    <associate|auto-5|<tuple|5|3>>
    <associate|cluster-geometry-and-phase-symmetries|<tuple|2|1>>
    <associate|ground-vectors-and-uniform-slabs|<tuple|4|2>>
    <associate|independent-review-of-chapter15|<tuple|?|1>>
    <associate|positivity-and-field-normalization|<tuple|3|2>>
    <associate|repairs-applied-by-root|<tuple|1|1>>
    <associate|resolution|<tuple|5|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Repairs
      applied by root> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Cluster
      geometry and phase symmetries> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Positivity
      and field normalization> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Ground
      vectors and uniform slabs> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Resolution>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>