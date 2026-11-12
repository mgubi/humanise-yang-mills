<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../index.tm><ym-nav-sep><hlink|The
  theorem|../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../blueprint/glossary.tm><ym-nav-sep><ym-nav-here|Notation><ym-nav-sep><hlink|Source
  audit|../source/audit.tm><ym-nav-sep><hlink|Literature|../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|proof-standard.tm><ym-nav-sep><hlink|Contributing|../CONTRIBUTING.tm>>

  <ym-title|Notation across proof units and
  chapters><label|notation-across-proof-units-and-chapters>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Author
    contract> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Symbol and
    meaning conflicts> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Chapter
    integration> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Changing shared
    notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Evidence and
    scope> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>
  </table-of-contents>

  The <hlink|shared glossary|../blueprint/glossary.tm> is the canonical
  notation register for this exposition. It is pinned to the imported source
  revision recorded in <verbatim|source/upstream.json> and remains an author
  draft until independently reviewed. A proof unit states its mathematics
  directly in manuscript LaTeX, with source correspondence in the blueprint.
  Chapter integration edits that same text, preserving its spaces,
  quantifiers, normalisations and limits.

  <section|Author contract><label|author-contract>

  Define notation at first use in the LaTeX text. In the blueprint unit's
  <strong|Inputs and notation> section, keep a short crosswalk for the
  symbols needed at handoffs, with these columns:

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Symbol
  used here>>|<cell|<strong|Meaning, space and
  normalisation>>|<cell|<strong|Origin>>|<cell|<strong|Local conversion or
  qualification>>>|<row|<cell|A symbol inherited from the
  glossary>|<cell|State only the detail needed for this proof>|<cell|Link the
  exact glossary entry and dependency unit>|<cell|Write \Pnone\Q if
  unchanged>>|<row|<cell|A new local symbol>|<cell|Define its type and
  quantified scope>|<cell|Cite the defining source declaration or
  mathematical reference>|<cell|State when it expires and any collision
  avoided>>>>>

  List every notation choice that determines a theorem hypothesis or
  conclusion. This includes gauge representation and Lie algebra, spacetime
  signature, lattice spacing and period, measure and phase, field grade and
  quotient, topology/filter of a limit, and the order in which witnesses are
  chosen. Do not turn Lean binder letters into global notation by accident. A
  local symbol may be shorter than a glossary symbol when the proof is
  clearer, but write its conversion at first use and retain one meaning
  within the unit.

  When importing a theorem from another unit or the literature, show the
  source-to-local map for symbols whose type or normalisation differs. Check
  hypotheses after conversion. For example, identify whether a cited result
  uses group simplicity or Lie-algebra simplicity, a finite lattice side
  count or physical linear period, a full mesh limit or a subsequence, a
  selected phase or a mixture, and a grade or a scaling dimension. If the map
  requires a nontrivial lemma, prove it or make it a visible dependency; a
  notation change does not establish an equivalence.

  Use fully qualified declaration names and pinned source paths in the
  blueprint correspondence table. In the manuscript, use conventional
  mathematical names and references, not Lean implementation scaffolding or
  unexplained nicknames. Cite a shared glossary entry instead of redefining
  it in every chapter.

  <section|Symbol and meaning conflicts><label|symbol-and-meaning-conflicts>

  The glossary reserves distinct prose symbols for the public Wilson family
  <verbatim|\\mathcal W>, the internal construction family
  <verbatim|\\mathcal C>, the Euclidean table <verbatim|S>, and the public
  hierarchy <verbatim|\\mathcal T>. The public field space <verbatim|F_d> (a
  quotient field space in the constructed hierarchy) differs from the
  internal final package <verbatim|\\mathsf F>. The character measure
  <verbatim|\\nu_{\\rm ph}> differs from the Wilson law
  <verbatim|\\mu_{N,p}^{\\mathcal W}>. A short-distance radius <verbatim|r_k>
  differs from lattice mesh <verbatim|a_N>. A physical linear period
  <verbatim|P_p> differs from the torus site count <verbatim|\\ell_{N,p}>. A
  reviewer should reject an argument that changes one of these meanings
  without a stated bridge.

  The public requested volume sequence is <verbatim|\\varrho>; the period
  component of a general internal extraction order is <verbatim|\\tau>. They
  may be identified only in the explicit assembly step that constructs that
  order from the public request.

  The assembly in <verbatim|YangMills.jointExistence>
  (<verbatim|Lean/Solution.lean:4\U10>) makes this conversion concrete. After
  choosing an internal family <verbatim|\\mathcal C> once, a requested
  strictly increasing <verbatim|\\varrho> becomes the internal order
  <verbatim|a=(\\mathrm{full},\\varrho)>. The construction supplies a
  refinement order <verbatim|q>; write <verbatim|\\sigma=q.per>. Then
  <verbatim|(a.refine q).per=\\varrho\\circ\\sigma>, while the public family
  is <verbatim|YangMills.wilsonFamily \\mathcal C> and the public hierarchy
  is <verbatim|YangMills.hierarchy F Q> (<verbatim|Lean/Construction.lean:15\U25>).
  The Wilson convergence bridge uses the full mesh sequence for this refined
  period sequence (<verbatim|Lean/Construction.lean:23>;
  <verbatim|Lean/HierarchyBridge.lean:44\U45>). A general internal period
  sequence is therefore not automatically the public request.

  Other source names can collide: <verbatim|Reader> occurs in more than one
  namespace; <verbatim|p> can be a period index, extraction order or
  unrelated parameter; <verbatim|n> can be representation size or arity.
  Qualify the source name in the blueprint and choose a typed local symbol in
  prose. Reserve plain <verbatim|\\pi> for the mathematical constant. The
  word \Pphase\Q means the formal character parameter unless a separate
  result justifies a stronger physical use.

  A symbol is <strong|local> when absent from the glossary. The author may
  use it within one unit after defining it, and should send a proposed shared
  entry to the glossary issue if another unit needs it. Authors must not edit
  the shared glossary while holding an unrelated proof-unit claim. A glossary
  entry marked unresolved is a question; do not convert it into a theorem
  hypothesis or an accepted normalisation by prose convention.

  <section|Chapter integration><label|chapter-integration>

  Before joining units into a chapter, the integrator checks the following
  against the unit crosswalks and actual statements:

  <\enumerate>
    <item><strong|Same object:> Every repeated symbol denotes the same
    mathematical space and construction. Distinguish public/internal bridges,
    reference labels/quotient fields, selected/mixed phases, and
    Euclidean/Minkowski structures.

    <item><strong|Same scale:> Mesh, site count, physical period, RG level,
    and short-distance radius use their declared normalisations. Couplings
    and the positive kernel penalty are not silently identified.

    <item><strong|Same limit:> State the filter/topology and the order of
    limits at the handoff. An iterated mesh-then-volume limit does not become
    an arbitrary diagonal limit; a subsequential result does not become
    uniqueness.

    <item><strong|Same quantified data:> Check which witnesses are chosen
    once and which may depend on a requested sequence, phase, truncation,
    compact set or geometry constant.

    <item><strong|Same reference:> A literature theorem is quoted in a
    checked version with its own symbols translated and hypotheses matched.
    An external glossary or AI outline is navigation evidence, not an
    accepted mathematical citation.
  </enumerate>

  At first use in the chapter, define any chapter-local replacement for a
  canonical symbol and give a compact conversion. Keep that replacement
  consistent throughout the chapter. When adjacent chapters use different
  local aliases, include a one-line bridge at their join. Do not erase a
  unit's open question or strengthen its conclusion to make notation look
  smoother.

  <section|Changing shared notation><label|changing-shared-notation>

  <verbatim|blueprint/glossary.md> has its own issue owner. Propose a new or
  changed shared entry on that issue (or a new dedicated issue after it
  closes) with the intended symbol, mathematical type, source revision and
  declaration, reason for the change, and affected unit/chapter links. The
  owner checks for collisions and updates the glossary in one focused PR. An
  integrator then finds all units and chapters that cite the entry and
  records their conversion or revision tasks.

  A purely typographic correction may leave mathematical content intact. A
  change to a space, normalisation, quantifier, limit order, or claimed
  bridge is material: it invalidates the corresponding source-to-prose and
  mathematical review assumptions. Obtain renewed independent review of
  affected work. The structural checker does not track glossary semantics or
  automatically refresh reviewer fingerprints. Authors must not refresh
  another reviewer's approval themselves.

  The proof-unit template requires this crosswalk; the independent
  Lean-correspondence reviewer checks it against the source, the mathematical
  reviewer checks its use in the argument and literature applications, and
  the chapter integrator checks consistency between units. This division is a
  workflow, not an automated guarantee of mathematical correctness.

  <section|Evidence and scope><label|evidence-and-scope>

  This protocol implements the notation ownership and integration rules in
  <verbatim|AGENTS.md>, <verbatim|docs/coordination.md>,
  <verbatim|docs/proof-standard.md>, and <verbatim|docs/maintainers.md>. It
  adds no theorem and changes no Lean source. The glossary currently covers
  the shared entry points and deliberately leaves most RG local symbols for
  their assigned interface audits; those agents should propose additions
  through the dedicated notation task rather than edit the shared file
  concurrently.
</body>

<\initial>
  <\collection>
    <associate|html-title|Notation across proof units and chapters \U
    Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|author-contract|<tuple|1|1>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|3>>
    <associate|auto-5|<tuple|5|3>>
    <associate|changing-shared-notation|<tuple|4|3>>
    <associate|chapter-integration|<tuple|3|2>>
    <associate|evidence-and-scope|<tuple|5|3>>
    <associate|notation-across-proof-units-and-chapters|<tuple|?|1>>
    <associate|symbol-and-meaning-conflicts|<tuple|2|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Author
      contract> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Symbol
      and meaning conflicts> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Chapter
      integration> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Changing
      shared notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Evidence
      and scope> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>