<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../index.tm><ym-nav-sep><hlink|The
  theorem|public-statement.tm><ym-nav-sep><hlink|Proof
  outline|outline.tm><ym-nav-sep><hlink|Unit
  plan|unit-plan.tm><ym-nav-sep><hlink|Blueprint|index.tm><ym-nav-sep><hlink|Manuscript|../manuscript/index.tm><ym-nav-sep><hlink|Glossary|glossary.tm><ym-nav-sep><hlink|Notation|../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../source/audit.tm><ym-nav-sep><ym-nav-here|Literature><ym-nav-sep><hlink|Proof
  standard|../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../CONTRIBUTING.tm>>

  <ym-title|Scott Armstrong's source map and this unit
  plan><label|scott-armstrongs-source-map-and-this-unit-plan>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|What the
    external artifacts establish> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Literature
    provenance review: separate evidence pin>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Cluster
    disposition> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Provisional
    expository treatment> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Gaps before
    assigning canonical units> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Evidence for
    this draft> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>
  </table-of-contents>

  Scott Armstrong's <hlink|Yang\UMills informalization
  project|https://github.com/scottnarmstrong/yang-mills-informalization> is
  the source of the 32 clusters, their declaration assignments and
  selected-statement summaries used here. This comparison uses external
  commit <hlink|<verbatim|8f3c7ccaeabb17b0f928bc1a2e75328691de3032>|https://github.com/scottnarmstrong/yang-mills-informalization/tree/8f3c7ccaeabb17b0f928bc1a2e75328691de3032>,
  against the imported OpenAI-YM revision
  <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464> in
  <verbatim|source/upstream.json>. The external commit is an evidence pin,
  not a change to the imported Lean source.

  <section|What the external artifacts establish><label|what-the-external-artifacts-establish>

  The <hlink|method|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/method.md>
  now describes a graph read from compiled Lean declarations and proofs,
  including implicit references. Scott reports 2.26 million references; the
  resulting reachability set for the 17 release roots has a symmetric
  difference of 50 owner-level declarations from OpenAI's compiled usage
  record (74,093 versus 74,115). This is stronger source-navigation evidence
  than the earlier source-text graph. It does <strong|not> verify the
  mathematical meaning of the declarations, the adequacy of an English proof,
  or the axioms of the release roots. The small reachability difference and
  the hand-set unit boundaries remain audit limits.

  The <hlink|unit table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/data/units.tsv>
  gives the 32 clusters and unit-level <verbatim|builds_on>/<verbatim|used_by>
  summaries. The <hlink|declaration table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/data/declaration-units.tsv>
  assigns source declarations; the <hlink|key-statement
  table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/data/key-statements.tsv>
  selects 989 statement groups. The <hlink|data
  dictionary|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/data/README.md>
  calls this table census <verbatim|2026-11-11-r2>: 77,099 allocated names
  and 413,085 attributed source lines are broader than the 74,093 names
  reached from the 17 verification roots, and include alternative
  constructions. Its code-reference lists retain only inter-unit links with
  at least 25 declaration pairs. An absent <verbatim|builds_on> link
  therefore does not establish independence.

  The <hlink|statement|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/statement.md>,
  <hlink|architecture|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/README.md>,
  <hlink|unit outlines|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units.md>,
  <hlink|glossary|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/glossary.md>,
  and <hlink|work-item catalogue|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/work-items.md>
  supply progressively interpreted descriptions. The
  <hlink|summary|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/summary.md>,
  <hlink|FAQ|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/faq.md>
  and <hlink|provenance essay|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/provenance.md>
  are reading aids and literature leads, not accepted source matches or
  complete proofs in this project.

  All 32 unit pages now have an outline, but their stated stages differ.
  Scott's <verbatim|draft>, <verbatim|checked>, and <verbatim|edited>
  describe rounds of AI drafting, checking and editing; none is this
  project's independent Lean-correspondence or mathematical review. The pages
  retain open points and proof sketches. Consult the pinned page and its
  status before commissioning an explanation or relying on a claim. No
  declaration-level graph or extractor is published in this repository; the
  TSVs are linked rather than copied here.

  <section|Literature provenance review: separate evidence
  pin><label|literature-provenance-review-separate-evidence-pin>

  Scott Armstrong's <hlink|later provenance
  review|https://github.com/scottnarmstrong/yang-mills-informalization/blob/7cebbf05447136e0a61ac9c0417a181f4df06ebf/provenance.md>
  at external commit <verbatim|7cebbf05447136e0a61ac9c0417a181f4df06ebf>
  compares mechanisms in the same imported Lean revision,
  <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>, with Baªaban's
  gauge/RG papers, OpenAI's 2026 nonlinear-sigma-model preprints, and other
  literature. Its component comparisons and bibliography include source
  locators and distinguish selectively read texts from abstract-only or
  unread originals. Scott describes the analysis as AI-written, limited to
  antecedents among the sources read, and unreviewed by the authors of the
  works discussed. Its classifications and novelty suggestions are therefore
  literature leads, not accepted theorem matches, proof verification, or
  priority findings here. This later review is pinned independently of the
  earlier source-cluster map above; the cluster assignments have not been
  repinned or re-audited by adding this link.

  Promote a lead to a reusable result only through a focused
  <hlink|background note|background/index.tm> that checks the original
  statement, hypotheses, definitions, and conventions against fully qualified
  declarations at the pinned Lean revision. The proposed <hlink|Balaban
  gauge-averaging task|https://github.com/hairer/humanise-yang-mills/issues/15>
  covers the patch-frame interface in III.1; the existing
  <hlink|Osterwalder\USchrader literature
  task|https://github.com/hairer/humanise-yang-mills/issues/6> covers
  reconstruction in V.2. Any other candidate requires its own scoped task and
  review before a proof unit cites it as an applicable result. Credit Scott's
  review for identifying or mapping a lead; the monograph should cite the
  original mathematical source for a result it uses.

  <section|Cluster disposition><label|cluster-disposition>

  <verbatim|BG>, <verbatim|PU>, and <verbatim|CP> are provisional packages in
  <hlink|unit-plan.md|unit-plan.tm>, not assignments of every declaration.
  \PShared\Q identifies a mathematical interface crossing package boundaries;
  it does not split declaration ownership. \PBackground-only\Q still requires
  checked definitions and any project-specific argument. Each of the 32
  external clusters has one disposition below.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|External
  cluster>>|<cell|<strong|Disposition>>|<cell|<strong|Provisional
  package(s)>>|<cell|<strong|Interface or treatment
  question>>>|<row|<cell|<hlink|I.1|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/I-1.md>>|<cell|Background-only>|<cell|BG-01>|<cell|State
  gauge and Wilson conventions; verify any
  citation.>>|<row|<cell|<hlink|II.1|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/II-1.md>>|<cell|Background-only>|<cell|BG-02>|<cell|Field
  labels, lattice representatives and Wilson-family data; classify
  substantive quotient claims.>>|<row|<cell|<hlink|II.2|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/II-2.md>>|<cell|Background-only>|<cell|BG-02>|<cell|Marker
  algebra, polymer combinatorics and Gaussian estimates need mathematical
  treatment where consumed.>>|<row|<cell|<hlink|III.1|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/III-1.md>>|<cell|Mapped>|<cell|PU-01>|<cell|Geometric
  block-spin and symmetric-gauge step.>>|<row|<cell|<hlink|III.2|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/III-2.md>>|<cell|Shared>|<cell|BG-04,
  PU-10>|<cell|Parameter ledger versus proof that the chosen constants close
  the induction.>>|<row|<cell|<hlink|III.3|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/III-3.md>>|<cell|Mapped>|<cell|PU-02>|<cell|Distinguish
  standard Green-kernel results from lattice-specific
  estimates.>>|<row|<cell|<hlink|III.4|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/III-4.md>>|<cell|Mapped>|<cell|PU-03>|<cell|Separate
  exact sector change/determinant identities from window and jet bounds only
  after checking their common hypotheses and output
  interface.>>|<row|<cell|<hlink|III.5|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/III-5.md>>|<cell|Shared>|<cell|PU-04>|<cell|Cluster
  expansion with III.8's connected-dependence
  interface.>>|<row|<cell|<hlink|III.6|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/III-6.md>>|<cell|Mapped>|<cell|PU-05>|<cell|Stationary
  background and effective-action input.>>|<row|<cell|<hlink|III.7|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/III-7.md>>|<cell|Mapped>|<cell|PU-06>|<cell|Fourth-order
  match; compiled graph removes spurious late-part input
  links.>>|<row|<cell|<hlink|III.8|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/III-8.md>>|<cell|Shared>|<cell|PU-04>|<cell|Check
  whether its dependence-cone result warrants an independent reusable
  interface.>>|<row|<cell|<hlink|III.9|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/III-9.md>>|<cell|Mapped>|<cell|PU-07>|<cell|Marginal
  flow and reset, distinct from VII.5's asymptotic
  reading.>>|<row|<cell|<hlink|III.10|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/III-10.md>>|<cell|Shared>|<cell|PU-08,
  PU-09, PU-10>|<cell|Audit the boundaries between activity update,
  irrelevant/large-field bounds, and induction closure; one 49k-line cluster
  does not itself determine three proof units.>>|<row|<cell|<hlink|III.11|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/III-11.md>>|<cell|Shared>|<cell|PU-11,
  PU-12, PU-20>|<cell|Rank/free comparison, determinant budget and
  stress-tensor output overlap; audit ownership and the handoff to VI.1
  before splitting.>>|<row|<cell|<hlink|III.12|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/III-12.md>>|<cell|Mapped>|<cell|PU-13>|<cell|Volume-uniform
  bounds and full-spacing convergence.>>|<row|<cell|<hlink|III.13|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/III-13.md>>|<cell|Mapped>|<cell|CP-04>|<cell|Alternative
  common family for <verbatim|YM.SharpGram.habitat>; no identification with
  the public construction's family is supplied
  here.>>|<row|<cell|<hlink|III.14|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/III-14.md>>|<cell|Mapped>|<cell|PU-15>|<cell|Selects
  the run whose Wilson family feeds public assembly; also supplies
  ultraviolet and Gaussian-limit data.>>|<row|<cell|<hlink|III.15|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/III-15.md>>|<cell|Mapped>|<cell|PU-13>|<cell|Observable
  and remainder costs, subject to a reusable-result
  check.>>|<row|<cell|<hlink|III.16|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/III-16.md>>|<cell|Background-only>|<cell|BG-03>|<cell|Search
  and verify literature matches; isolate any project-specific analytic
  variant.>>|<row|<cell|<hlink|IV.1|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/IV-1.md>>|<cell|Mapped>|<cell|PU-16>|<cell|Infinite-volume
  extraction and Euclidean hierarchy.>>|<row|<cell|<hlink|V.1|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/V-1.md>>|<cell|Mapped>|<cell|PU-17>|<cell|Phase
  decomposition and measurability.>>|<row|<cell|<hlink|V.2|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/V-2.md>>|<cell|Mapped>|<cell|PU-18>|<cell|OS
  reconstruction; check each hypothesis of any literature
  theorem.>>|<row|<cell|<hlink|V.3|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/V-3.md>>|<cell|Shared>|<cell|PU-19,
  PU-20>|<cell|Every-phase reconstruction also continues the stress-tensor
  argument; compiled graph adds II.1 as a direct source-unit
  input.>>|<row|<cell|<hlink|VI.1|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/VI-1.md>>|<cell|Mapped>|<cell|PU-20>|<cell|Ward
  identities, rotations, conserved stress
  tensor.>>|<row|<cell|<hlink|VI.2|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/VI-2.md>>|<cell|Shared>|<cell|PU-21,
  PU-22>|<cell|Free-Maxwell stress/Ward data and the interacting side of the
  short-distance comparison.>>|<row|<cell|<hlink|VII.1|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/VII-1.md>>|<cell|Mapped>|<cell|PU-22>|<cell|Supplies
  free Maxwell correlations and detection estimates; interacting comparison
  is elsewhere.>>|<row|<cell|<hlink|VII.2|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/VII-2.md>>|<cell|Mapped>|<cell|PU-23>|<cell|Selected-phase
  trace law and finite-profile exclusion; no mass-gap conclusion
  follows.>>|<row|<cell|<hlink|VII.3|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/VII-3.md>>|<cell|Mapped>|<cell|PU-24>|<cell|Free
  Wick algebra and reflected Gram positivity; exclusion uses VII.2 and VIII.1
  declarations.>>|<row|<cell|<hlink|VII.4|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/VII-4.md>>|<cell|Shared>|<cell|PU-25,
  PU-26>|<cell|Separate away-from-diagonal OPE from contact
  extensions.>>|<row|<cell|<hlink|VII.5|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/VII-5.md>>|<cell|Shared>|<cell|PU-07,
  CP-03, PU-21>|<cell|Its running-law results, an unused asymptotic
  corollary, and auxiliary stress/normalisation results have different
  consumers.>>|<row|<cell|<hlink|VII.6|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/VII-6.md>>|<cell|Shared>|<cell|PU-22,
  PU-23, CP-04>|<cell|The scale-tuning Sky family feeds main-spine
  scaling/trace arguments; only its fixed-field subresult belongs with CP-04.
  The checked AI outline retains stated limits.>>|<row|<cell|<hlink|VIII.1|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/VIII-1.md>>|<cell|Shared>|<cell|PU-15,
  PU-22, PU-23, PU-27, PU-28>|<cell|Selects and assembles the public family,
  short-distance and trace bridges, and concrete SU(2) specialization;
  distinguish extra release-root claims.>>>>>

  The <hlink|compiled-graph comparison|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/method.md>
  specifically adds V.3 \<rightarrow\> II.1 and removes old false links from
  III.7 to IV.1, V.1, V.2 and VI.1. Those are source-unit edges, not
  automatically conceptual prerequisites. Scott's <verbatim|builds_on> rows
  still contain reciprocal and forward links because of definitions and
  implementation reuse. The proposed proof order in <verbatim|unit-plan.md>
  therefore remains a question for mathematical interface audit.

  <section|Provisional expository treatment><label|provisional-expository-treatment>

  This classification concerns the packages in <verbatim|unit-plan.md>, not
  the status of Scott's outlines. \PCite and apply\Q remains a candidate
  until the actual source theorem and its hypotheses are checked. Formal
  scaffolding may be suppressed only after its mathematical content is
  assigned elsewhere.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Package(s)>>|<cell|<strong|Current
  treatment>>|<cell|<strong|Reason or remaining
  check>>>|<row|<cell|BG-01>|<cell|Cite and apply candidate; prove unmatched
  project conventions>|<cell|Standard lattice and gauge background must be
  matched to the particular Wilson measure.>>|<row|<cell|BG-02>|<cell|Unresolved
  classification>|<cell|II.1 quotient/label claims and II.2 marker, polymer
  and Gaussian results may need detailed arguments; record syntax alone may
  be suppressed.>>|<row|<cell|BG-03>|<cell|Cite and apply candidate; prove
  unmatched variants>|<cell|No literature result has yet been accepted for
  the analytic toolkit.>>|<row|<cell|BG-04>|<cell|Suppress formal scaffolding
  candidate; prove substantive parameter closure in PU-10>|<cell|A parameter
  ledger is useful, while its order-of-choice obligations remain
  mathematical.>>|<row|<cell|PU-01\UPU-13, PU-15\UPU-17,
  PU-19\UPU-27>|<cell|Detailed proof, with verified literature substituted
  where applicable>|<cell|Statement interfaces and split boundaries still
  require audit; PU-27 proves bridges and assembly without repeating earlier
  proofs.>>|<row|<cell|PU-18>|<cell|Unresolved between cite and apply or
  detailed proof>|<cell|Verify every Osterwalder\USchrader hypothesis in
  issue #6 before choosing the route.>>|<row|<cell|PU-28>|<cell|Cite and
  apply candidate for SU(2) simplicity; detailed proof of the
  bridge>|<cell|Verify the precise group and Lie-algebra statement in issue
  #5.>>|<row|<cell|CP-01\UCP-04>|<cell|Detailed proof if
  commissioned>|<cell|These are distinct release-root or
  alternative-construction interfaces; first check overlap with the public
  spine.>>>>>

  <section|Gaps before assigning canonical
  units><label|gaps-before-assigning-canonical-units>

  <\itemize-minus>
    <item><strong|III.4:> Which exact theorem passes from the Gaussian-sector
    change and determinant normalization to the window/jet estimates consumed
    by III.10? Check the covariance/Hessian identification flagged in the
    <hlink|summary|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/summary.md>
    before fixing a split.

    <item><strong|III.10:> Which norm, parameter order and reset conditions
    are output by the nonlinear step, and which are re-established by III.9
    or III.2? Determine whether PU-08\UPU-10 can own disjoint mathematical
    statements.

    <item><strong|III.11:> Where does the determinant budget end and the
    free-field rank/stress comparison begin? Identify the handoff to VI.1 and
    avoid double ownership in PU-11/PU-12/PU-20.

    <item><strong|III.13 versus III.14:> The former constructs an alternative
    family for <verbatim|habitat>; the latter selects the public run. Do not
    use III.13's common-family properties for
    <verbatim|YangMills.constructed> without an explicit bridge. The old
    PU-14 proposal has been folded into PU-15 for the public family.

    <item><strong|VII.1/VII.3:> The source allocation puts free Maxwell
    detection and reflected Gram positivity here. The interacting comparison
    and nonfree conclusion cross VI.2, VII.2 and VIII.1; assign those
    mathematical interfaces rather than repeating their declarations.

    <item><strong|VII.5/VII.6:> Distinguish the bare/effective
    running-coupling law used in the public regularity clause from the
    separate <verbatim|comparison> conclusion; place the scale-tuning Sky
    argument on the main spine, while independently checking its hypotheses
    and remaining outline limits.

    <item><strong|Release-root coverage:> CP-01, CP-02 and CP-04 target
    additional or alternative constructions in the broader source allocation.
    Their exact relation to <verbatim|YangMills.jointExistence> remains a
    separate statement audit.
  </itemize-minus>

  No accepted literature notes are yet present in
  <verbatim|blueprint/background/>; Scott's provenance essay supplies leads,
  not verified matches. The draft mapping requires a second contributor's
  independent comparison before it is accepted.

  <section|Evidence for this draft><label|evidence-for-this-draft>

  Read <verbatim|source/upstream.json>, this project's
  <verbatim|blueprint/outline.md> and <verbatim|blueprint/unit-plan.md>,
  Scott's pinned <verbatim|README.md>, <verbatim|method.md>,
  <verbatim|data/README.md>, <verbatim|data/units.tsv>,
  <verbatim|outline/README.md>, <verbatim|outline/units.md>,
  <verbatim|CHANGELOG.md>, and focused unit pages. Compared the external
  <verbatim|data/units.tsv> and <verbatim|method.md> with commit
  <verbatim|df12f710b78751b85ff907e6455bd65e3acb3b69>, then compared later
  data and outlines with <verbatim|261dcd862d0945828497c349803cf96888ec1c67>
  and <verbatim|bbb6cafc5bb5c933b28aad18d3dc0c5243181dc4> using <verbatim|git
  diff>. The 32 cluster IDs and line-count figures remain, while
  code-reference links, reader-facing titles and outline statuses changed. A
  local row-ID check found all 32 clusters exactly once. <verbatim|python3
  scripts/check_blueprint.py> reported \PBlueprint structure OK: 0 units.
  Lean and mathematics were not verified\Q; <verbatim|git diff --check>
  passed. This pass did not rerun the external extractor, inspect every
  declaration assignment, replay Lean proofs, or run an independent axiom
  check.

  For the later provenance link, inspected Scott's <verbatim|provenance.md>
  at commit <verbatim|7cebbf05447136e0a61ac9c0417a181f4df06ebf>,
  <verbatim|source/upstream.json>, <verbatim|Lean/YM/RG/Patch.lean>, the live
  issue queue (including issue #6), and the open PR queue (none). This was a
  source-navigation and coordination check; no original paper or Lean proof
  was verified. After the link edit, <verbatim|python3
  scripts/check_blueprint.py> reported \PBlueprint structure OK: 0 units.
  Lean and mathematics were not verified\Q; <verbatim|git diff --check>
  passed.
</body>

<\initial>
  <\collection>
    <associate|html-title|Scott Armstrong's source map and this unit plan \U
    Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|5|5>>
    <associate|auto-6|<tuple|6|5>>
    <associate|cluster-disposition|<tuple|3|2>>
    <associate|evidence-for-this-draft|<tuple|6|5>>
    <associate|gaps-before-assigning-canonical-units|<tuple|5|5>>
    <associate|literature-provenance-review-separate-evidence-pin|<tuple|2|2>>
    <associate|provisional-expository-treatment|<tuple|4|4>>
    <associate|scott-armstrongs-source-map-and-this-unit-plan|<tuple|?|1>>
    <associate|what-the-external-artifacts-establish|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|What
      the external artifacts establish> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Literature
      provenance review: separate evidence pin>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Cluster
      disposition> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Provisional
      expository treatment> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Gaps
      before assigning canonical units> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Evidence
      for this draft> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>