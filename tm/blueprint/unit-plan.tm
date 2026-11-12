<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../index.tm><ym-nav-sep><hlink|The
  theorem|public-statement.tm><ym-nav-sep><hlink|Proof
  outline|outline.tm><ym-nav-sep><ym-nav-here|Unit
  plan><ym-nav-sep><hlink|Blueprint|index.tm><ym-nav-sep><hlink|Manuscript|../manuscript/index.tm><ym-nav-sep><hlink|Glossary|glossary.tm><ym-nav-sep><hlink|Notation|../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../source/audit.tm><ym-nav-sep><hlink|Literature|external-map.tm><ym-nav-sep><hlink|Proof
  standard|../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../CONTRIBUTING.tm>>

  <ym-title|Provisional proof-unit plan><label|provisional-proof-unit-plan>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Background and
    interface packages> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Main-spine
    proof units> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Focused
    companion units> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Recommended
    first wave> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Known
    limitations of this pass> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>
  </table-of-contents>

  This plan adapts the 32 source clusters developed in Scott Armstrong's
  <hlink|Yang-Mills informalization project|https://github.com/scottnarmstrong/yang-mills-informalization>
  into mathematical work packages for this monograph. The compiled-Lean
  source map was inspected at commit <hlink|<verbatim|8f3c7ccaeabb17b0f928bc1a2e75328691de3032>|https://github.com/scottnarmstrong/yang-mills-informalization/tree/8f3c7ccaeabb17b0f928bc1a2e75328691de3032>;
  see the <hlink|32-cluster disposition and evidence|external-map.tm>. The
  IDs below are temporary planning labels. Canonical
  <verbatim|YM-\<less\>issue\<gtr\>> IDs are created only when bounded GitHub
  issues exist.

  One row should normally become one explanation issue, except where a
  literature task resolves the result or the split notes require finer
  interfaces. Dependencies are conceptual and provisional; they are not a
  claim about every Lean constant edge.

  <section|Background and interface packages><label|background-and-interface-packages>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|ID>>|<cell|<strong|Package>>|<cell|<strong|External
  clusters>>|<cell|<strong|Treatment>>>|<row|<cell|BG-01>|<cell|Lattice gauge
  theory, compact matrix groups, Wilson measure>|<cell|I.1>|<cell|State
  conventions; cite standard lattice/gauge background; prove project-specific
  facts only>>|<row|<cell|BG-02>|<cell|Field labels, Wilson-family data,
  marker algebra and polymer estimates>|<cell|II.1\UII.2>|<cell|Check the
  substantive quotient, combinatorial and norm results before deciding what
  may be cited or compressed>>|<row|<cell|BG-03>|<cell|Analytic
  toolkit>|<cell|III.16>|<cell|Shared literature tasks for standard analysis;
  isolate genuinely project-specific variants>>|<row|<cell|BG-04>|<cell|Order
  of constants and RG schedule>|<cell|III.2>|<cell|Parameter ledger/technical
  appendix; each consuming proof cites the choices it needs>>>>>

  Background packages can have audit and literature issues without becoming
  standalone proof chapters. Their definitions are prerequisites for the
  proof units below.

  <section|Main-spine proof units><label|main-spine-proof-units>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|ID>>|<cell|<strong|Mathematical
  output>>|<cell|<strong|External clusters>>|<cell|<strong|Depends
  on>>|<cell|<strong|Split or merge guidance>>>|<row|<cell|PU-01>|<cell|Block-spin
  map and symmetric gauge fixing>|<cell|III.1>|<cell|BG-01\UBG-04>|<cell|Keep
  as the geometric entry to one RG step>>|<row|<cell|PU-02>|<cell|Free
  lattice kernels and covariance estimates>|<cell|III.3>|<cell|BG-01, BG-03,
  PU-01>|<cell|Search literature for standard Green-kernel estimates; retain
  lattice-specific bounds>>|<row|<cell|PU-03>|<cell|Change of Gaussian sector
  and window law>|<cell|III.4>|<cell|PU-01, PU-02, BG-03>|<cell|Large
  cluster: split determinant identities from window/change-of-measure
  estimates if interfaces separate cleanly>>|<row|<cell|PU-04>|<cell|Polymer
  cluster expansion and connected dependence>|<cell|III.5,
  III.8>|<cell|BG-02, PU-01, PU-03>|<cell|Fold III.8 here unless its four
  selected statements form a reusable theorem>>|<row|<cell|PU-05>|<cell|Stationary
  background for the effective action>|<cell|III.6>|<cell|PU-01\UPU-03>|<cell|Keep
  distinct from fourth-order matching>>|<row|<cell|PU-06>|<cell|Fourth-order
  Wilson-energy matching>|<cell|III.7>|<cell|PU-02, PU-03,
  PU-05>|<cell|Adjacent to PU-05, but a distinct proof
  job>>|<row|<cell|PU-07>|<cell|Marginal coupling flow and
  reset>|<cell|III.9, VII.5>|<cell|PU-04\UPU-06, BG-04>|<cell|Separate the
  flow/reset argument from VII.5's logarithmic law; its public regularity use
  is at the bare-coupling stage>>|<row|<cell|PU-08>|<cell|Nonlinear RG
  decomposition and activity update>|<cell|III.10>|<cell|PU-03\UPU-07>|<cell|Proposed
  interface: identify the updated activity and the hypotheses passed to the
  next bound>>|<row|<cell|PU-09>|<cell|Irrelevant-term and large-field
  estimates>|<cell|III.10>|<cell|PU-08, BG-03\UBG-04>|<cell|Proposed
  interface: state the induction norm, contraction, and large-field output
  explicitly>>|<row|<cell|PU-10>|<cell|Uniform constants and closure of the
  RG induction>|<cell|III.10, III.2>|<cell|PU-08\UPU-09>|<cell|Proposed
  interface: determine which parameter choices close the step and are
  restored by reset>>|<row|<cell|PU-11>|<cell|Interacting rank and
  free-Gaussian comparison>|<cell|III.11>|<cell|PU-03,
  PU-08\UPU-10>|<cell|Identify the rank/free-field output and its overlap
  with stress-tensor construction before splitting>>|<row|<cell|PU-12>|<cell|Determinant
  budgets>|<cell|III.11>|<cell|PU-03, PU-08\UPU-10>|<cell|Audit whether the
  per-site budget is independently stated and whether it precedes the rank
  comparison in PU-11>>|<row|<cell|PU-13>|<cell|Volume-uniform estimates and
  spacing limit>|<cell|III.12, III.15>|<cell|PU-07\UPU-12>|<cell|Fold
  observable/remainder cost accounting here unless it supplies a reusable
  theorem>>|<row|<cell|PU-15>|<cell|Public construction run, its Wilson
  family and ultraviolet rate>|<cell|III.14,
  VIII.1>|<cell|PU-05\UPU-13>|<cell|Identify the selected run and its funded
  bounds; the alternative family in III.13 is not this public
  family>>|<row|<cell|PU-16>|<cell|Infinite-volume subsequence and Euclidean
  axioms>|<cell|IV.1>|<cell|PU-13, PU-15>|<cell|Preserve quantifier order:
  arbitrary requested volume sequence, then chosen
  refinement/subsequence>>|<row|<cell|PU-17>|<cell|Phase decomposition of the
  limit>|<cell|V.1>|<cell|PU-16>|<cell|Keep separate while phase hypotheses
  and measurability are audited>>|<row|<cell|PU-18>|<cell|Osterwalder-Schrader
  reconstruction>|<cell|V.2>|<cell|PU-16\UPU-17, BG-03>|<cell|Priority
  literature match; check every OS hypothesis against this
  hierarchy>>|<row|<cell|PU-19>|<cell|Reconstruction for every
  phase>|<cell|V.3>|<cell|PU-17\UPU-18>|<cell|Merge with PU-18 only if it is
  a routine phasewise application>>|<row|<cell|PU-20>|<cell|Ward identities,
  rotations, and conserved stress tensor>|<cell|III.11, V.3,
  VI.1>|<cell|PU-16\UPU-19>|<cell|III.11 and V.3 also contain stress-tensor
  outputs; audit the conceptual input from PU-11 and assign disjoint
  statements before prose work>>|<row|<cell|PU-21>|<cell|Free Maxwell stress
  tensor and local Ward charge>|<cell|VI.2>|<cell|PU-16, PU-20>|<cell|Check
  the Ward normalization and separate it from VI.2's interacting
  comparison>>|<row|<cell|PU-22>|<cell|Free Maxwell data and the
  short-distance comparison>|<cell|VI.2, VII.1, VII.6, VIII.1>|<cell|PU-06,
  PU-11, PU-16, PU-20\UPU-21>|<cell|VII.1 supplies the free side; VI.2
  supplies the interacting comparison, VIII.1 assembles it, and VII.6 tunes
  arbitrary scales>>|<row|<cell|PU-23>|<cell|Selected-phase trace law and
  exclusion of finite free profiles>|<cell|VII.2, VII.6, VIII.1>|<cell|PU-07,
  PU-11, PU-16, PU-20\UPU-22, PU-24>|<cell|Audit the exact trace bridge and
  use of Gram positivity; do not infer a mass
  gap>>|<row|<cell|PU-24>|<cell|Free Wick algebra and reflected Gram
  positivity>|<cell|VII.3>|<cell|BG-02, PU-16, PU-21>|<cell|This supplies a
  free-field detector; the concluding nonfree statements are in VII.2 and
  VIII.1>>|<row|<cell|PU-25>|<cell|Pointwise OPE and weighted joint
  estimate>|<cell|VII.4>|<cell|PU-11, PU-16\UPU-19>|<cell|Include
  <verbatim|YM.Independent.Core.point>; split foundation from pointwise
  consequence if needed>>|<row|<cell|PU-26>|<cell|Contact
  extensions>|<cell|VII.4>|<cell|PU-16\UPU-17, PU-25>|<cell|Include
  <verbatim|YM.Contacts.Solstice.celestial>; retain its stated
  limitations>>|<row|<cell|PU-27>|<cell|Public theorem
  assembly>|<cell|VIII.1>|<cell|PU-13, PU-15\UPU-26 as required by the
  audited statement>|<cell|Explain bridges and quantifier matching; do not
  repeat prior proofs>>|<row|<cell|PU-28>|<cell|Simplicity of SU(2) and
  concrete specialization>|<cell|VIII.1 plus SU(2) files>|<cell|PU-27,
  BG-01>|<cell|Prefer a checked literature citation for simplicity of the
  project's concrete matrix group/Lie algebra>>>>>

  The former PU-14 proposal has been withdrawn: Scott's revised III.13
  outline identifies that family as an alternative construction for
  <verbatim|habitat>. Its proposed work now belongs in CP-04; PU-15 covers
  the Wilson family selected for public assembly. The broad dependencies in
  the final rows must be narrowed after exact statement audit. In particular,
  the external source graph has implementation cycles between clusters; the
  table above records the intended mathematical order, not all imports.

  <section|Focused companion units><label|focused-companion-units>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|ID>>|<cell|<strong|Mathematical
  output>>|<cell|<strong|Audited headline anchors>>|<cell|<strong|Relation to
  main spine>>>|<row|<cell|CP-01>|<cell|Finite-leading position reading and
  four-grade normalization>|<cell|<verbatim|YM.Pert.Position.finite_leading>,
  <verbatim|YM.Pert.Position.normalized_four>>|<cell|Uses ultraviolet
  calibration; exact use by the public theorem remains to be
  checked>>|<row|<cell|CP-02>|<cell|Finite-regulator parity and low-order
  even/odd algebra>|<cell|<verbatim|YM.Pert.Parity.parityEndpoint>,
  <verbatim|YM.Pert.Parity.low_read>>|<cell|Follows CP-01; keep
  finite-regulator and asymptotic claims distinct>>|<row|<cell|CP-03>|<cell|Asymptotic
  law for the trajectory's effective coupling>|<cell|<verbatim|YM.Pert.Asymptotics.comparison>>|<cell|VII.5
  states this for a constructed family and arbitrary admissible level/volume
  sequences; it is a separate unused corollary, while VII.5's
  <verbatim|zeroUp_bound> feeds the public regularity clause through
  VIII.1>>|<row|<cell|CP-04>|<cell|Alternative Sharp-Gram family and
  input/output estimates>|<cell|<verbatim|YM.SharpGram.habitat>,
  <verbatim|YM.SharpGram.inletFirst>, <verbatim|YM.SharpGram.outletFirst>>|<cell|III.13
  constructs the alternative common family for <verbatim|habitat>; identify
  any bridge to the public run before reuse. VII.6's <verbatim|inletFirst> is
  a small fixed-field component, while its Sky scaling argument belongs to
  PU-22/PU-23>>>>>

  Companion units receive the same correspondence and mathematical reviews.
  They should not silently expand the conclusion of
  <verbatim|YangMills.jointExistence>.

  <section|Recommended first wave><label|recommended-first-wave>

  Open these bounded tasks before distributing the large RG units:

  <\enumerate>
    <item><strong|Build and axiom audit.> Reproduce the pinned build,
    regenerate the usage inventories, and run supported transitive axiom
    checks for all 17 roots.

    <item><strong|Public statement audit.> Check the external
    <verbatim|statement.md> line by line against the elaborated public
    definitions and record the exact theorem scope.

    <item><strong|External-map synchronization.> Use the pinned compiled-Lean
    map and its <hlink|32-cluster disposition|external-map.tm>; link current
    unit outlines and key statements from task issues without copying
    generated TSVs.

    <item><strong|Literature searches.> Start with SU(2) simplicity, OS
    reconstruction, Gaussian/cluster expansion tools, and standard
    limit/compactness results.

    <item><strong|Two pilot units.> Use PU-28 (SU(2)) and CP-03 (the
    effective-coupling asymptotic) to calibrate citation,
    source-correspondence, and review standards.

    <item><strong|Main-spine interface audit.> Trace the exact handoff from
    PU-15 through PU-19 before assigning the very large nonlinear RG proof
    units.
  </enumerate>

  Only after those tasks settle the interfaces should coordinators create
  canonical unit directories and distribute PU-08\UPU-12 among several
  writers.

  <section|Known limitations of this pass><label|known-limitations-of-this-pass>

  <\itemize-minus>
    <item>No Lean build, proof replay, or axiom audit was performed here.

    <item>The external map is same-revision and now derived from compiled
    Lean. All 32 pages have AI-written outlines at differing stages, with
    open points. Their <verbatim|checked> or <verbatim|edited> labels do not
    substitute for this project's independent correspondence and mathematical
    reviews.

    <item>No literature match has yet been independently accepted in
    <verbatim|blueprint/background/>.

    <item>The splits inside III.4, III.10, and III.11 are mathematical
    recommendations; their exact statement interfaces and overlap with other
    packages remain tasks for the next audit. The compiled graph corrects
    source-unit links but does not determine a topological expository order.

    <item>The allocation includes alternative constructions. In particular,
    III.13's common family is not identified with the family of the public
    run in III.14.

    <item>The final dependency closure of <verbatim|YangMills.jointExistence>
    must be distinguished from the union of all 17 release-root closures.
  </itemize-minus>
</body>

<\initial>
  <\collection>
    <associate|html-title|Provisional proof-unit plan \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|3>>
    <associate|auto-4|<tuple|4|3>>
    <associate|auto-5|<tuple|5|4>>
    <associate|background-and-interface-packages|<tuple|1|1>>
    <associate|focused-companion-units|<tuple|3|3>>
    <associate|known-limitations-of-this-pass|<tuple|5|4>>
    <associate|main-spine-proof-units|<tuple|2|2>>
    <associate|provisional-proof-unit-plan|<tuple|?|1>>
    <associate|recommended-first-wave|<tuple|4|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Background
      and interface packages> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Main-spine
      proof units> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Focused
      companion units> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Recommended
      first wave> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Known
      limitations of this pass> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>