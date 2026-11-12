<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../index.tm><ym-nav-sep><hlink|The
  theorem|public-statement.tm><ym-nav-sep><ym-nav-here|Proof
  outline><ym-nav-sep><hlink|Unit plan|unit-plan.tm><ym-nav-sep><hlink|Blueprint|index.tm><ym-nav-sep><hlink|Manuscript|../manuscript/index.tm><ym-nav-sep><hlink|Glossary|glossary.tm><ym-nav-sep><hlink|Notation|../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../source/audit.tm><ym-nav-sep><hlink|Literature|external-map.tm><ym-nav-sep><hlink|Proof
  standard|../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../CONTRIBUTING.tm>>

  <ym-title|First-pass proof architecture><label|first-pass-proof-architecture>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Evidence used
    for this map> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|The public
    theorem at the top> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Source
    clusters> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Proposed
    monograph parts> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Editorial
    boundaries> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|External-map
    handoff> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>
  </table-of-contents>

  This outline maps the imported Lean release to the planned research
  monograph. It uses Scott Armstrong's compiled-Lean map at external commit
  <hlink|<verbatim|8f3c7ccaeabb17b0f928bc1a2e75328691de3032>|https://github.com/scottnarmstrong/yang-mills-informalization/tree/8f3c7ccaeabb17b0f928bc1a2e75328691de3032>
  and is pinned to OpenAI-YM revision <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>.
  It is a planning document: theorem types, proof details, literature
  matches, and axioms still require independent audit.

  <section|Evidence used for this map><label|evidence-used-for-this-map>

  <\itemize-minus>
    <item>The release-root audit in <verbatim|Lean/verification/Usage.lean>,
    inspected through bounded read-only agent reports. The command was not
    rerun in this pass.

    <item>The checked-in declaration/module usage inventories, used by those
    agents as navigation aids rather than accepted mathematical
    classifications.

    <item>Scott Armstrong's <hlink|Yang\UMills informalization
    map|https://github.com/scottnarmstrong/yang-mills-informalization/tree/8f3c7ccaeabb17b0f928bc1a2e75328691de3032>,
    inspected at commit <verbatim|8f3c7ccaeabb17b0f928bc1a2e75328691de3032>.
    It targets the same OpenAI-YM revision and supplies 32 source clusters,
    declaration ownership, 989 selected statements, a glossary, a theorem
    restatement, and unit outlines at varying review stages. Its
    <hlink|method|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/method.md>
    now derives dependencies from compiled Lean and compares release-root
    reachability with OpenAI's record. All unit pages have outlines at
    varying AI review stages; none is an independently reviewed proof in this
    project. See the <hlink|cluster-by-cluster comparison|external-map.tm>
    and Scott's <hlink|data dictionary|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/data/README.md>
    for the different scopes of source allocation and compiled reachability.
  </itemize-minus>

  The external map is the source-correspondence layer for this first pass.
  Its allocation includes alternative constructions beyond the public
  theorem's own closure. This repository should link to its unit IDs and
  source data rather than recreate a second declaration-to-cluster inventory.
  Exact hypotheses and proof obligations must still be checked here before
  prose is accepted.

  <section|The public theorem at the top><label|the-public-theorem-at-the-top>

  The main public endpoint is <verbatim|YangMills.jointExistence>. At a high
  level, it asserts the existence, for each compact matrix gauge group with
  simple Lie algebra, of a Wilson family and suitable refinements along each
  requested increasing sequence of volumes. The resulting hierarchy packages
  Wilson convergence, reconstruction, operator-product information, and a
  trace test. This description is provisional; the exact quantified statement
  belongs in the statement-audit task.

  The proof architecture has one main spine and several focused release
  branches:

  <\verbatim-code>
    flowchart TD

    \ \ A["Lattice gauge theory and construction data"]

    \ \ B["Ultraviolet RG construction"]

    \ \ C["Uniform bounds and common Wilson family"]

    \ \ D["Infinite-volume subsequence"]

    \ \ E["Phase decomposition and OS reconstruction"]

    \ \ F["Ward identities and stress tensor"]

    \ \ G["Short-distance identification and interaction evidence"]

    \ \ H["OPE and contact extensions"]

    \ \ I["Public theorem assembly"]

    \ \ J["Concrete SU(2) specialization"]

    \ \ K["Perturbative position and parity branch"]

    \ \ L["Running-coupling proxy branch"]

    \ \ M["Sharp-Gram fixed-field branch"]

    \;

    \ \ A --\<gtr\> B --\<gtr\> C --\<gtr\> D --\<gtr\> E --\<gtr\> F
    --\<gtr\> G --\<gtr\> I --\<gtr\> J

    \ \ D --\<gtr\> H --\<gtr\> I

    \ \ B --\<gtr\> K

    \ \ B --\<gtr\> L

    \ \ B --\<gtr\> M

    \ \ K -.-\<gtr\> I

    \ \ L -.-\<gtr\> I

    \ \ M -.-\<gtr\> I
  </verbatim-code>

  The dotted arrows indicate editorial association, not a verified formal
  dependency of <verbatim|YangMills.jointExistence>. Each focused branch must
  be checked before the monograph claims that it is part of the public
  theorem.

  <section|Source clusters><label|source-clusters>

  The external map groups the source into eight parts and 32 units:

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Part>>|<cell|<strong|Source
  clusters>>|<cell|<strong|Mathematical role>>>|<row|<cell|I>|<cell|I.1>|<cell|Lattice,
  symmetry, gauge-group, and Wilson-measure
  setup>>|<row|<cell|II>|<cell|II.1\UII.2>|<cell|Field labels, polymer
  activities, norms, Wilson-family and construction
  records>>|<row|<cell|III>|<cell|III.1\UIII.16>|<cell|Ultraviolet RG:
  blocking, kernels, Gaussian/polymer machinery, background, flow, nonlinear
  estimates, uniformity, construction run, analytic
  tools>>|<row|<cell|IV>|<cell|IV.1>|<cell|Infinite-volume subsequence and
  Euclidean axioms>>|<row|<cell|V>|<cell|V.1\UV.3>|<cell|Phase decomposition
  and Wightman reconstruction>>|<row|<cell|VI>|<cell|VI.1\UVI.2>|<cell|Ward
  identities, stress tensor, and Maxwell comparison>>|<row|<cell|VII>|<cell|VII.1\UVII.6>|<cell|Short-distance
  Maxwell behavior, trace anomaly, nonfreeness, OPE/contacts, running
  coupling, and fixed-field estimates>>|<row|<cell|VIII>|<cell|VIII.1>|<cell|Assembly
  of the public theorem>>>>>

  These are ownership and navigation clusters. Their compiled-graph
  <verbatim|builds_on> summaries contain mutual implementation dependencies
  and are not a topological proof order. A cluster is not automatically a
  chapter or a proof task. In particular, Part III contains about 70% of the
  mapped source, while several clusters mainly organize definitions,
  parameter choices, analytic utilities, or accounting.

  The revised outlines identify <hlink|III.13|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/III-13.md>
  as an alternative common-family construction for
  <verbatim|YM.SharpGram.habitat>. The Wilson family of the public
  construction is selected in <hlink|III.14|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/III-14.md>
  and assembled in VIII.1. The two families are not identified by that
  outline. Likewise, VII.1 supplies the free side of the short-distance
  comparison, while the interacting comparison crosses VI.2 and VIII.1; the
  free Wick and Gram results of VII.3 support a finite-profile exclusion
  concluded through VII.2 and VIII.1.

  <section|Proposed monograph parts><label|proposed-monograph-parts>

  <\enumerate>
    <item><strong|Setting and construction data.> Define the gauge-theoretic,
    lattice, Wilson-family, field-label, and polymer framework. Quote
    standard background where possible and state project-specific conventions
    precisely.

    <item><strong|One-step renormalization framework.> Develop blocking,
    symmetric gauge fixing, free kernels, Gaussian changes, and the
    polymer/cluster expansion.

    <item><strong|Effective action and coupling flow.> Construct the
    stationary background, match Wilson energy to fourth order, and derive
    the marginal flow/reset.

    <item><strong|Nonlinear RG estimates.> Prove the one-step induction,
    irrelevant and large-field bounds, determinant/free-Gaussian comparison,
    and parameter closure.

    <item><strong|Uniformity and the construction run.> Obtain volume-uniform
    estimates and spacing limits, then select the funded run and its common
    Wilson family for the public theorem. Treat III.13's alternative family
    separately.

    <item><strong|Infinite volume.> Extract a subsequence for every requested
    volume sequence and establish the Euclidean hierarchy.

    <item><strong|Phases and reconstruction.> Decompose the limit into phases
    and reconstruct the corresponding Wightman theories.

    <item><strong|Symmetry and stress tensor.> Establish Ward identities,
    rotations, conservation, and the free-Maxwell comparison used later.

    <item><strong|Identification and interaction evidence.> Prove the
    short-distance Maxwell behavior, trace statement, nonfree criterion, and
    the precisely delimited running-coupling conclusion.

    <item><strong|OPE, contacts, and fixed-field consequences.> Present the
    pointwise OPE, contact extensions, and selected scaling/Sharp-Gram
    consequences.

    <item><strong|Assembly and concrete gauge groups.> Translate the internal
    construction into the public theorem and specialize it to SU(2).
  </enumerate>

  This chapter order follows the mathematical transfer of information. It
  need not follow source-file order. Detailed candidate proof units and
  dependencies are in <hlink|unit-plan.md|unit-plan.tm>.

  <section|Editorial boundaries><label|editorial-boundaries>

  <\itemize-minus>
    <item>Standard results should be located and cited before a new proof is
    written. The consuming unit must check the cited hypotheses and prove any
    unmatched step.

    <item>Generated declarations, coercions, instances, record constructors,
    and tactic artifacts do not receive prose units. Any mathematical content
    they encode remains.

    <item>The public bridges receive a correspondence and assembly
    explanation; they do not cause the underlying proofs to be repeated.

    <item>The theorem does not acquire a mass-gap, uniqueness of the
    subsequential limit, clustering, or other physical conclusion merely from
    the project title. Every such claim requires an exact audited
    declaration.
  </itemize-minus>

  <section|External-map handoff><label|external-map-handoff>

  Before opening an explanation issue, consult the <hlink|disposition
  table|external-map.tm> and record the relevant pinned external unit ID and
  key-statement rows. Review any external outline's open points and source
  correspondence before using it; its AI <verbatim|checked>/<verbatim|edited>
  status does not meet this project's review standard. If this project
  develops a proof first, link the PR from the corresponding external work
  item. The external map's Lean source pin must match
  <verbatim|source/upstream.json>; future revisions require an explicit
  comparison.
</body>

<\initial>
  <\collection>
    <associate|html-title|First-pass proof architecture \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|3>>
    <associate|auto-5|<tuple|5|3>>
    <associate|auto-6|<tuple|6|4>>
    <associate|editorial-boundaries|<tuple|5|3>>
    <associate|evidence-used-for-this-map|<tuple|1|1>>
    <associate|external-map-handoff|<tuple|6|4>>
    <associate|first-pass-proof-architecture|<tuple|?|1>>
    <associate|proposed-monograph-parts|<tuple|4|3>>
    <associate|source-clusters|<tuple|3|2>>
    <associate|the-public-theorem-at-the-top|<tuple|2|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Evidence
      used for this map> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|The
      public theorem at the top> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Source
      clusters> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Proposed
      monograph parts> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Editorial
      boundaries> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|External-map
      handoff> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>