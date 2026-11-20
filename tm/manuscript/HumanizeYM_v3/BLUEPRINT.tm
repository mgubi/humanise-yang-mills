<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../index.tm><ym-nav-sep><hlink|Monograph|../existence.tm><ym-nav-sep><hlink|Glossary|../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../source/audit.tm><ym-nav-sep><hlink|Literature|../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../CONTRIBUTING.tm>>

  <ym-title|Blueprint for a monograph on the four-dimensional Yang\UMills
  construction><label|blueprint-for-a-monograph-on-the-four-dimensional-yangmills-construction>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Editorial
    objective> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|How to write
    one chapter independently> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Implemented
    dependency refinement> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Chapters and
    page allocation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Logical order
    and interfaces> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Coverage of
    Scott's outline> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Priority checks
    and drafting policy> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>
  </table-of-contents>

  <section|Editorial objective><label|editorial-objective>

  Produce a single logical account of the construction described in the
  supplied Martin, Trish and Scott manuscripts. The initial map is Scott's
  <verbatim|Outline>, with Martin used for detailed arguments and Trish used
  both for alternative explanations and for its explicit qualifications. The
  target is <strong|450 pages>, including 16 pages for front matter,
  references and notation. Standard arguments are cited, not expanded merely
  to fill the allocation. The first full draft occupies <strong|265 pages>;
  the allocations remain ceilings for revision.

  The book concerns gauge-invariant local correlations, their ordered
  continuum limits and phasewise relativistic reconstruction. It is not a
  proof of a mass gap. The source claims are to be checked at their actual
  hypotheses; this blueprint does not certify all of them. See the audit
  files for the distinction between missing exposition, a candidate repair
  elsewhere in the sources, and an argument not yet checked.

  <section|How to write one chapter independently><label|how-to-write-one-chapter-independently>

  <\enumerate>
    <item>Read <hlink|the editorial contract|blueprint/editorial-contract.tm>
    and the relevant rows of <hlink|the notation
    registry|blueprint/notation.tm>.

    <item>Read the chapter's specification below: its required inputs are the
    only earlier results it may assume. Its outputs are the contract with
    later chapters. A theorem contract is not permission to assume its truth
    without proof or an explicit conditional designation.

    <item>Open its bounded source packet by path and LaTeX label. The
    <hlink|source index|blueprint/source-index.tm> gives locations;
    <verbatim|tools/source_excerpt.py> retrieves labelled passages. Most
    Scott\UTrish text is close; use <hlink|the
    comparison|blueprint/scott-trish-comparison.tm> to identify where reading
    both adds value.

    <item>Check the original literature before including a proof. Follow the
    <hlink|literature policy|blueprint/literature-policy.tm> and record the
    actual theorem and hypothesis match in the chapter's audit.

    <item>Deliver <verbatim|chapters/NN-short-title.tex> and an audit note.
    Do not silently change a shared symbol, normalization, constant
    dependence, or the family to which an imported result applies.
  </enumerate>

  <section|Implemented dependency refinement><label|implemented-dependency-refinement>

  The original chapter allocation below remains a ceiling, rather than a
  request to fill pages. In the working draft, Chapter 13 also contains the
  sharp fixed-arity bounds, bounded real approximations, graded quotient
  estimate and mixed local cluster replacement. The latter is the
  lattice/probe part of Scott <verbatim|part2/J-section.tex:17\U414>,
  followed by its fixed-spectator consequence. It uses Chapters 10\U13 only.
  Chapter 14 uses it to prove the annular annihilator bound with error
  <verbatim|r^(1\<minus\>epsilon)>, before phases or rotations have been
  constructed. Chapter 18 then converts the same lattice estimate to a
  phase-uniform norm estimate and the fixed OPE prescription. Do not
  duplicate the local cluster proof there or introduce a backward dependency
  through phase decomposition.

  The three-scale free comparison is proved in
  <verbatim|chapters/14-lattice-comparison.tex> using the fixed-arity export
  of Chapter 11; its source packet is Scott
  <verbatim|part2/G-section.tex:223\U310>. Chapter 11's polynomial extraction
  must be common to all three scales and all spectators. At each scale use
  its own normalized singleton, then compare them by the exact
  scaling-dimension dilation.

  Proof fragments are included by the master chapter files. Their historical
  filename or label prefix need not equal their current chapter number:
  <verbatim|18-graded-quotient.tex> and <verbatim|18-lattice-products.tex>
  belong in Chapter 13. Follow <verbatim|monograph.tex> and its actual
  inputs. <verbatim|tools/check_draft.py> checks that input graph and reports
  unattached fragments, so a label in an unintegrated file cannot conceal a
  missing reference.

  The current Chapter17 includes a proved comparison over windows crossing
  arbitrarily many stages (<verbatim|17-variable-windows.tex>). Its per-step
  constants must be selected before the stage block ratio; constants
  depending on that ratio belong only to delayed local errors and bounded
  endpoint factors. The low-moment estimate for spatial remainders in
  <verbatim|17-marked-trace-rates.tex> is now proved using the exact
  polynomial-preserving smooth response and normalized Gaussian fluctuation
  gain. A vanishing scaling-dimension jet alone does not give an extra
  field-amplitude factor. Chapter19 separates the trace conclusion from the
  construction and finite-order OPE to display its additional dependencies.
  See the final resolution sections of the Chapter17 audits.

  <section|Chapters and page allocation><label|chapters-and-page-allocation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|3|3|cell-halign|r>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Ch.>>|<cell|<strong|Title>>|<cell|<strong|Pages>>|<cell|<strong|Detailed
  writing instructions>>>|<row|<cell|1>|<cell|Lattice gauge theory and the
  continuum problem>|<cell|18>|<cell|<hlink|Foundations, Chapter
  1|blueprint/foundations-chapters.tm>>>|<row|<cell|2>|<cell|Local
  gauge-invariant observables>|<cell|16>|<cell|<hlink|Foundations, Chapter
  2|blueprint/foundations-chapters.tm>>>|<row|<cell|3>|<cell|The free Maxwell
  comparison theory>|<cell|20>|<cell|<hlink|Continuum
  C1|blueprint/continuum-chapters.tm>>>|<row|<cell|4>|<cell|Exact blocking
  and effective densities>|<cell|18>|<cell|<hlink|UV
  U2|blueprint/uv-chapters.tm>>>|<row|<cell|5>|<cell|Gaussian kernels and
  stationary backgrounds>|<cell|26>|<cell|<hlink|UV
  U3|blueprint/uv-chapters.tm>>>|<row|<cell|6>|<cell|Large fields and local
  Gaussian integration>|<cell|24>|<cell|<hlink|UV
  U4|blueprint/uv-chapters.tm>>>|<row|<cell|7>|<cell|Local matching and the
  running coupling coefficient>|<cell|26>|<cell|<hlink|UV
  U5|blueprint/uv-chapters.tm>>>|<row|<cell|8>|<cell|Polymer expansions and
  connected correlations>|<cell|18>|<cell|<hlink|UV cluster tools, split from
  U6|blueprint/uv-chapters.tm>>>|<row|<cell|9>|<cell|The nonlinear
  renormalization step>|<cell|30>|<cell|<hlink|UV
  U6|blueprint/uv-chapters.tm>>>|<row|<cell|10>|<cell|A common trajectory and
  fixed-scale stability>|<cell|24>|<cell|<hlink|UV
  U7|blueprint/uv-chapters.tm>>>|<row|<cell|11>|<cell|Renormalized insertions
  and uniform difference estimates>|<cell|30>|<cell|<hlink|UV
  U8|blueprint/uv-chapters.tm>>>|<row|<cell|12>|<cell|The full ultraviolet
  limit at fixed volume>|<cell|24>|<cell|<hlink|UV
  U9|blueprint/uv-chapters.tm>>>|<row|<cell|13>|<cell|Continuum correlations
  and local fields>|<cell|20>|<cell|<hlink|Continuum
  C2|blueprint/continuum-chapters.tm>>>|<row|<cell|14>|<cell|Reflection
  spaces, Ward identities and Euclidean symmetry>|<cell|34>|<cell|<hlink|Continuum
  C3|blueprint/continuum-chapters.tm>>>|<row|<cell|15>|<cell|Decomposition
  into phases>|<cell|18>|<cell|<hlink|Continuum
  C4|blueprint/continuum-chapters.tm>>>|<row|<cell|16>|<cell|Relativistic
  reconstruction in every phase>|<cell|28>|<cell|<hlink|Continuum
  C5|blueprint/continuum-chapters.tm>>>|<row|<cell|17>|<cell|The trace law
  and its consequences>|<cell|24>|<cell|<hlink|Continuum
  C6|blueprint/continuum-chapters.tm>>>|<row|<cell|18>|<cell|Operator
  products and extensions across diagonals>|<cell|30>|<cell|<hlink|Continuum
  C7|blueprint/continuum-chapters.tm>>>|<row|<cell|19>|<cell|Assembly and
  scope of the construction>|<cell|6>|<cell|<hlink|Continuum
  C8|blueprint/continuum-chapters.tm>>>|<row|<cell|\V>|<cell|Front matter,
  references and notation>|<cell|16>|<cell|Editor>>|<row|<cell|>|<cell|<strong|Total>>|<cell|<strong|450>>|<cell|>>>>>

  The UV packet's stable identifier U1 refers to the local-observable
  material already assigned to Chapter 2; it is not an additional chapter.
  The abstract polymer part of U6 is assigned to Chapter 8. Stable
  identifiers remain useful in the source audits even when subjects move.

  <section|Logical order and interfaces><label|logical-order-and-interfaces>

  <strong|Finite theory (1\U4).> Chapter 1 fixes the representation of the
  gauge group, Wilson measure, reflection conventions and order of limits.
  Chapter 2 constructs local polynomial representatives without assuming a
  continuum field. Chapter 3 independently establishes the free comparison
  calculations. Chapter 4 defines the exact block kernel and the coordinates
  and norms of effective densities. Defining admissible coordinates does not
  prove the existence of an infinite trajectory.

  <strong|One step (5\U9).> Chapter 5 constructs the Gaussian and stationary
  data under finite-scale hypotheses. Chapter 6 handles the large-field
  complement and local integration. Chapter 7 matches the local action and
  isolates the one-loop coefficient with its uniform error estimate. Chapter
  8 supplies standard cluster theorems with explicit norm matching. Chapter 9
  combines these estimates into an exact nonlinear step and coupling
  adjustment. If matching and stationary data are defined by a joint
  induction, state that induction explicitly; do not assert two existence
  theorems circularly.

  <strong|One family (10\U12).> Chapter 10 chooses constants, scales and
  couplings on a common trajectory. It owns the final simultaneous selection,
  so earlier chapters need not forward-reference an already existing
  schedule. Chapter 11 constructs coefficient transfers and renormalized
  insertions on that family and proves all the uniform estimates later used.
  Chapter 12 proves Cauchy convergence through all ultraviolet cutoffs at
  each fixed volume; compactness is not a substitute for this argument.

  <strong|Continuum theory (13\U16).> Chapter 13 extracts one volume
  subsequence serving all finite label lists and tests, then identifies field
  quotients using the already available Maxwell comparison. Chapter 14 begins
  with coordinate reflection spaces, obtains bounded slab operators and
  spectral estimates, and only then proves continuous rotations and
  normalized Ward identities. Chapter 15 forms the commutative ground-space
  algebra, its phases, and the uniform phase estimates. Chapter 16 carries
  out continuation and reconstruction, including the additional argument
  needed for every phase rather than almost every phase.

  <strong|Identification (17\U19).> Chapter 17 proves the all-radius trace
  law, retaining control of moving field coefficients and logarithmic
  amplification. Chapter 18 obtains a finite-order, phase-uniform OPE and
  separately extends distributions across collisions. These two chapters may
  use the same earlier inputs without depending on each other. Chapter 19
  checks that every conclusion belongs to one family, one refinement and
  compatible normalizations.

  The early Maxwell chapter avoids a major forward reference. Splitting
  elementary local sections from their RG transport avoids introducing
  renormalized insertions before their defining map exists. Splitting
  finite-cutoff comparison from continuum rank avoids using a limiting field
  space to prove the bounds needed to construct it.

  <section|Coverage of Scott's outline><label|coverage-of-scotts-outline>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Outline
  units>>|<cell|<strong|Home in this monograph>>>|<row|<cell|I.1>|<cell|1;
  cover geometry in 4>>|<row|<cell|II.1>|<cell|2; renormalized transfer in
  11; quotient identification in 13>>|<row|<cell|II.2;
  III.1>|<cell|4>>|<row|<cell|III.2>|<cell|Local assumptions in 4\U9;
  simultaneous choice in 10>>|<row|<cell|III.3;
  III.6>|<cell|5>>|<row|<cell|III.4>|<cell|5\U6, with integration tools used
  in 9>>|<row|<cell|III.5>|<cell|8\U9>>|<row|<cell|III.7>|<cell|7>>|<row|<cell|III.8>|<cell|9
  and marked version in 11>>|<row|<cell|III.9>|<cell|Exact adjustment in 9;
  tuning in 10>>|<row|<cell|III.10>|<cell|6 and
  9>>|<row|<cell|III.11>|<cell|Finite-cutoff comparison in 11; rank in 13;
  stress in 14>>|<row|<cell|III.12>|<cell|11\U13>>|<row|<cell|III.13>|<cell|Audit
  of alternative family; excluded from main proof unless identification is
  established>>|<row|<cell|III.14>|<cell|Selected construction in 10;
  fixed-scale convergence in 12>>|<row|<cell|III.15>|<cell|11; use in
  18>>|<row|<cell|III.16>|<cell|Elementary analytic tools placed at use in 5,
  11, 16>>|<row|<cell|IV.1>|<cell|13>>|<row|<cell|V.1>|<cell|14\U15>>|<row|<cell|V.2\UV.3>|<cell|16>>|<row|<cell|VI.1\UVI.2>|<cell|14;
  phase inheritance in 15>>|<row|<cell|VII.1>|<cell|3; actual comparison in
  11 and 14>>|<row|<cell|VII.2>|<cell|17>>|<row|<cell|VII.3>|<cell|Free
  positivity/rigidity in 3; interacting normalization in 14 and
  17>>|<row|<cell|VII.4>|<cell|18>>|<row|<cell|VII.5>|<cell|7 and
  10>>|<row|<cell|VII.6>|<cell|Finite comparison in 11; normalization in 14
  and 17>>|<row|<cell|VIII.1>|<cell|19; upstream definitions moved to their
  first use>>>>>

  <section|Priority checks and drafting policy><label|priority-checks-and-drafting-policy>

  Read <hlink|the UV audit|blueprint/uv-audit.tm> and <hlink|the continuum
  audit|blueprint/continuum-audit.tm>. In particular, Trish's conditional
  warnings concerning marked support propagation, restarted Gaussian
  comparison, and finite-cutoff continuity have detailed proposed suppliers
  in Martin. Their existence in another file does not by itself establish
  that the hypotheses match. The audit must compare the actual density,
  coupling trajectory, Gaussian law, support norms and parameter thresholds.

  The first drafting pass covers the foundations, elementary free comparison,
  and abstract polymer tools. These can be written without presenting the
  unresolved global supplier matching as settled. Later drafting should
  follow Chapters 4\U12 in dependency order, using Chapter 8's standard tools
  rather than reproducing their proofs.

  Check account usage periodically and before launching substantial new work.
  Stop with a margin above 10% remaining, preserving a precise progress
  record. Do not mark an unfinished full-monograph goal complete because a
  draft or a usage limit has been reached.
</body>

<\initial>
  <\collection>
    <associate|html-title|Blueprint for a monograph on the four-dimensional
    Yang\UMills construction \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|3>>
    <associate|auto-5|<tuple|5|4>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|blueprint-for-a-monograph-on-the-four-dimensional-yangmills-construction|<tuple|?|1>>
    <associate|chapters-and-page-allocation|<tuple|4|3>>
    <associate|coverage-of-scotts-outline|<tuple|6|5>>
    <associate|editorial-objective|<tuple|1|1>>
    <associate|how-to-write-one-chapter-independently|<tuple|2|1>>
    <associate|implemented-dependency-refinement|<tuple|3|2>>
    <associate|logical-order-and-interfaces|<tuple|5|4>>
    <associate|priority-checks-and-drafting-policy|<tuple|7|5>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Editorial
      objective> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|How
      to write one chapter independently>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Implemented
      dependency refinement> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Chapters
      and page allocation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Logical
      order and interfaces> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Coverage
      of Scott's outline> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Priority
      checks and drafting policy> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>