<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../outline.tm><ym-nav-sep><hlink|Unit
  plan|../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../index.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../glossary.tm><ym-nav-sep><hlink|Notation|../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../source/audit.tm><ym-nav-sep><hlink|Literature|../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../CONTRIBUTING.tm>>

  <ym-title|Construction to reconstruction: proposed proof
  interfaces><label|construction-to-reconstruction-proposed-proof-interfaces>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Quantifier and
    data contract> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Candidate
    input/output contracts> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Conceptual
    graph and source-graph limit> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Notation
    handoff to issue #10> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Open questions
    and review gates> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Evidence and
    limits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>
  </table-of-contents>

  <strong|Status:> author draft for <hlink|issue
  #11|https://github.com/hairer/humanise-yang-mills/issues/11>, not an
  accepted proof-unit assignment. <strong|Source:> imported OpenAI-YM
  revision <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>.
  <strong|Navigation map:> Scott Armstrong's compiled map at
  <hlink|<verbatim|8f3c7ccaeabb17b0f928bc1a2e75328691de3032>|https://github.com/scottnarmstrong/yang-mills-informalization/tree/8f3c7ccaeabb17b0f928bc1a2e75328691de3032>,
  as recorded in <hlink|the local map|../external-map.tm>. The map supplies
  candidate cluster boundaries, not mathematical proof or source
  correspondence. The <hlink|release-statement ledger|../public-statement.tm>
  and <hlink|source audit|../../source/audit.tm> control the public endpoint.
  Paths below are repository-relative; qualified names and the source
  revision identify declarations.

  This audit proposes <em|mathematical> handoffs. It does not translate the
  proofs. In particular, the single source structure <verbatim|YM.Spec.Final>
  already bundles a phase selection and a selected Wightman theory; using
  <verbatim|Final> itself as the output of PU-16 would silently assume the
  outputs proposed for PU-17 and PU-18. The later proof tasks must state
  smaller interfaces, or explicitly explain a simultaneous construction.
  Likewise, <verbatim|YM.R2IGoals.Broad.refine> is one large source receipt,
  not five independently proved theorems.

  <section|Quantifier and data contract><label|quantifier-and-data-contract>

  For a public <verbatim|g : YangMills.GaugeGroup> with
  <verbatim|g.IsSimple>, the bridge <verbatim|YangMills.GaugeGroup.coreSimple>
  in <verbatim|Lean/WilsonBridge.lean> supplies <verbatim|g.core.Simple> for
  the internal <verbatim|YM.Gauge>. At any <verbatim|b\<gtr\>0>,
  <verbatim|YM.Independent.constructionRun> and
  <verbatim|YM.Independent.fundedRun> in <verbatim|Lean/YM/Independent/ConstructionRun.lean>
  select an internal <verbatim|R : YM.PhysicalNext.Repeat.Legato.Run g.core>
  <strong|before> an extraction order is supplied.
  <verbatim|YM.Nonperturbative.continuum_with_position_tests>
  (<verbatim|Lean/YM/Nonperturbative/Continuum.lean>) then has the form

  <verbatim|R> fixed; for every <verbatim|p : YM.Extraction.Order>, there
  exist <verbatim|q, S, F, L, Q, M> (and later <verbatim|X>) on
  <verbatim|p.refine q> satisfying one joint receipt.

  Here <verbatim|YM.Extraction.Order> has independently increasing mesh and
  period sequences. <verbatim|refine> composes <em|both> sequences
  (<verbatim|Lean/YM/Extraction/Orders.lean>). The public
  <verbatim|YangMills.JointExistence> (<verbatim|Lean/ChallengeSpec.lean>)
  asks only for every increasing <strong|period> sequence <verbatim|p :
  \<bbb-N\> \<rightarrow\> \<bbb-N\>>; <verbatim|YangMills.jointExistence>
  (<verbatim|Lean/Solution.lean>) uses the full mesh sequence internally and
  returns <verbatim|q.per>. It chooses one <verbatim|WilsonFamily> before the
  requested <verbatim|p>, then a hierarchy after <verbatim|p>. Neither
  <verbatim|S> nor <verbatim|F> nor the phase space is asserted to be common
  to all requested sequences. The public theorem uses <verbatim|b=1>, while
  <verbatim|YangMills.constructed> (<verbatim|Lean/Construction.lean>)
  retains any positive <verbatim|b> and additional internal conclusions.

  An <verbatim|Ordered> receipt is not a diagonal limit.
  <verbatim|YM.Extraction.Order.limits> first takes the mesh limit at each
  suitable fixed period, then the period limit of those mesh-limit values
  (<verbatim|Lean/YM/Extraction/Orders.lean>).
  <verbatim|YM.Extraction.Order.Ordered> tests smeared Wilson moments, with
  support inside the suitable fundamental cell
  (<verbatim|Lean/YM/Extraction/Limits.lean>). <verbatim|PointLimits> adds
  local generic-point information; it is a separate field of
  <verbatim|YM.Spec.Seed> (<verbatim|Lean/YM/Spec/Closed.lean>).

  <section|Candidate input/output contracts><label|candidate-inputoutput-contracts>

  The output paths are <strong|reserved proposals> for later, separately
  claimed canonical proof units. They are not created here. \PProve\Q means a
  substantive argument remains to be written or replaced by an applicable
  reviewed literature result. \PCite?\Q is conditional on the hypothesis
  audit in <hlink|issue #6|https://github.com/hairer/humanise-yang-mills/issues/6>.
  Source fields cited in the table are anchors for the proposed mathematical
  statement, not claims that the source presents that statement as an
  independent declaration.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Candidate
  and later output path>>|<cell|<strong|Inputs and constructed
  data>>|<cell|<strong|Checkable mathematical output; source
  anchors>>|<cell|<strong|Conceptual predecessor; likely
  treatment>>>|<row|<cell|<strong|PU-15>,
  <verbatim|blueprint/units/\<less\>new-issue-15\<gtr\>/>>|<cell|Internal
  compact matrix gauge <verbatim|G> with <verbatim|G.Simple>;
  <verbatim|b\<gtr\>0>; funded RG and lattice inputs.>|<cell|One run
  <verbatim|R> with fixed penalty <verbatim|b>, campaign <verbatim|T>,
  pillars <verbatim|W>, and funding/attached native-component receipt; the
  family <verbatim|R.family> is fixed before any requested order. Its
  full-mesh UV position statement is <verbatim|YM.FullVolume.PositionsUV
  R.family .full> (<verbatim|Lean/YM/FullVolume/Profiles.lean>). The public
  projection has <verbatim|YangMills.WilsonRegularity>: uniform positive
  running slope, continuous and gauge-invariant finite insertions, and a
  fixed local stencil per insertion (<verbatim|Lean/ChallengeSpec.lean>).
  Anchors: <verbatim|YM.Independent.constructionRun>,
  <verbatim|YM.Independent.fundedRun> (<verbatim|Lean/YM/Independent/ConstructionRun.lean>);
  <verbatim|YM.PhysicalNext.Repeat.Legato.R2I.Funded>
  (<verbatim|Lean/YM/R2I/Campaign/Accepted.lean>);
  <verbatim|YM.FullVolume.Final.Jewel> (<verbatim|Lean/YM/FullVolume/Finale/Program.lean>);
  <verbatim|YangMills.wilsonFamily> and <verbatim|YangMills.regular>
  (<verbatim|Lean/WilsonBridge.lean>, <verbatim|Lean/HierarchyBridge.lean>).>|<cell|PU-05\UPU-13
  and BG inputs, <strong|prove> the selected-run, full-mesh UV and regularity
  statements. Suppress campaign bookkeeping only after checking it carries no
  extra mathematical hypothesis. III.13's alternative Sharp-Gram family is
  outside this output.>>|<row|<cell|<strong|PU-16>,
  <verbatim|blueprint/units/\<less\>new-issue-16\<gtr\>/>>|<cell|The
  <em|same> <verbatim|R.family>; an arbitrary <verbatim|p :
  Extraction.Order>; funded bounds and an eventual full-mesh UV
  estimate.>|<cell|A refinement <verbatim|q>, table <verbatim|S>, ordered
  two-stage Wilson limits on <verbatim|p.refine q>, generic point limits, and
  a Euclidean <verbatim|S.Hierarchy> with its precise fields: basic laws,
  real spin, translations, reflection positivity both for words and smeared
  tests, smoothness and capped growth. <verbatim|YM.Extraction.Order.Ordered>
  / <verbatim|PointLimits> (<verbatim|Lean/YM/Extraction/Limits.lean>),
  <verbatim|YM.Spec.Seed> (<verbatim|Lean/YM/Spec/Closed.lean>),
  <verbatim|YM.Table.Hierarchy> (<verbatim|Lean/YM/Euclid/Words.lean>); the
  combined source receipt is <verbatim|YM.R2IGoals.Broad.refine>
  (<verbatim|Lean/YM/R2I/Campaign/Accepted.lean>).>|<cell|PU-15 and volume/UV
  estimates of PU-13, <strong|prove> compactness, limit passage and
  preservation of Euclidean properties. A <verbatim|Spec.Final> is <em|not>
  the output contract: it contains later phase and reconstruction
  data.>>|<row|<cell|<strong|PU-17>, <verbatim|blueprint/units/\<less\>new-issue-17\<gtr\>/>>|<cell|A
  table <verbatim|S> with the PU-16 Euclidean hierarchy; its positive-time
  chamber and spread; the actual compressed ground-state algebra.>|<cell|A
  compact metric character space <verbatim|X>, probability measure
  <verbatim|\<mu\>> of full support, selected point <verbatim|x\<#2080\>>,
  character tables <verbatim|S_x>, a representation certificate, and
  barycenter identities for distinct whole words. The measure is on
  characters of the compression algebra; it is not an arbitrary phase
  mixture. <verbatim|YM.OS.Spread.Resolution.Out>,
  <verbatim|YM.OS.Selection>, <verbatim|YM.OS.Selection.Certificate>,
  <verbatim|YM.OS.Spread.Resolution.barycenter>
  (<verbatim|Lean/YM/Phase/Mixture.lean>); <verbatim|YM.Spec.Final.phase>
  (<verbatim|Lean/YM/Spec/Closed.lean>).>|<cell|PU-16, <strong|prove> the
  spectral/phase representation and retention of the quotient and symmetry
  properties. Check whether the selected point is obtained by a separate
  extremality step; do not assume every character has selected-vacuum
  properties from the mixture identity.>>|<row|<cell|<strong|PU-18>,
  <verbatim|blueprint/units/\<less\>new-issue-18\<gtr\>/>>|<cell|PU-16
  hierarchy and PU-17 selected phase <verbatim|S_{x\<#2080\>}>; positive-time
  reflection, continuity/growth and boundary data required by the actual
  reconstruction.>|<cell|A selected contour and Wightman realization on a
  Hilbert space, with normalized cyclic vacuum, dense domain, tempered
  operator-valued distributions, adjoints, locality, Poincaré covariance,
  spectral support in the forward cone, and uniqueness of the
  translation-invariant vacuum. Also state the selected imaginary-time root
  and boundary-limit identities. <verbatim|YM.OS.realization>
  (<verbatim|Lean/YM/OS/Dynamics.lean>) constructs a chamber from
  <verbatim|S.Hierarchy>; <verbatim|YM.Spec.Relativistic> /
  <verbatim|YM.Spec.Final.realization> (<verbatim|Lean/YM/Spec/Closed.lean>),
  <verbatim|YM.Boundary.Wightman.Realizes>
  (<verbatim|Lean/YM/Fields/System.lean>), and
  <verbatim|YM.Boundary.Contour.From> (<verbatim|Lean/YM/Boundary/Contour.lean>)
  describe the stronger endpoint.>|<cell|PU-16\UPU-17, <strong|cite and
  apply?> only after issue #6 checks every hypothesis of a precise OS theorem
  against these definitions; otherwise <strong|prove> missing steps.
  <verbatim|OS.realization> alone does not supply the selected Wightman and
  boundary claims.>>|<row|<cell|<strong|PU-19>,
  <verbatim|blueprint/units/\<less\>new-issue-19\<gtr\>/>>|<cell|The same
  <verbatim|S>, <verbatim|X>, <verbatim|\<mu\>>, selected <verbatim|F>, and
  phase certificate; PU-18's reconstruction method and estimates for
  character tables.>|<cell|One almanac <verbatim|L> on <strong|every>
  <verbatim|i:X>, with Wightman realization, no exceptional-set deletion,
  common labels/quotient, vacuum/energy and phasewise bounds, and integration
  of phase boundary distributions to the <strong|unselected> boundary.
  <verbatim|YM.EveryPhase.Almanac> (<verbatim|Lean/YM/EveryPhase/Pack.lean>),
  <verbatim|YM.EveryPhase.Completed> and <verbatim|YM.EveryPhase.all_characters>
  (<verbatim|Lean/YM/EveryPhase/Extension.lean>),
  <verbatim|YM.EveryPhase.barycenter> (<verbatim|Lean/YM/EveryPhase/Barycenter.lean>).
  The narrower public bridge is <verbatim|YangMills.publicReconstruction>
  (<verbatim|Lean/HierarchyBridge.lean>).>|<cell|PU-17\UPU-18, <strong|prove>
  uniform character and boundary passage. Do not fold its
  <verbatim|continued_stress> field into this ownership: its mathematical
  proof belongs to PU-20 after a separate handoff.>>>>>

  The exact source receipt <verbatim|YM.R2IGoals.Broad.refine> also carries a
  running coupling limit, first extension, trace target, OPE
  services/foundation/nesting, all-shapes and ultrafilter mantle fields.
  Those belong to other planned packages (PU-07, PU-20\UPU-26 or later
  assembly) and <strong|must not> be silently claimed by PU-16\UPU-19.
  <verbatim|YM.Nonperturbative.continuum_with_position_tests>,
  <verbatim|YM.Nonperturbative.existence>, <verbatim|YangMills.constructed>,
  and <verbatim|YangMills.jointExistence> are joint assembly outputs,
  proposed for PU-27 to explain after the component units, not a second owner
  of their component proofs. <verbatim|YM.Nonperturbative.continuum> is a
  projection of <verbatim|continuum_with_position_tests>, not an independent
  construction. The public <verbatim|YangMills.Hierarchy.Reconstructed> also
  includes label faithfulness, phase measure, smoothness, mixture,
  analyticity and boundary identities (<verbatim|Lean/ChallengeSpec.lean>);
  these must be supplied by the named components and bridge rather than
  inferred from the word \Preconstruction.\Q

  <section|Conceptual graph and source-graph
  limit><label|conceptual-graph-and-source-graph-limit>

  Proposed mathematical order: <strong|PU-15 \<rightarrow\> PU-16
  \<rightarrow\> PU-17 \<rightarrow\> PU-18 \<rightarrow\> PU-19
  \<rightarrow\> PU-27>, with PU-13 feeding PU-16 and PU-20 receiving the
  separate continued-stress output from PU-19's source neighbourhood. PU-18
  uses the selected phase; PU-19 applies and strengthens the reconstruction
  across all characters and proves mixture of boundary distributions. This
  order is acyclic only after projecting <verbatim|Spec.Final> and
  <verbatim|Broad.refine> into the smaller mathematical interfaces above. No
  independent source theorem for every projection has yet been identified;
  the split is an editorial proof obligation, not a Lean refactoring.

  The compiled map's source-unit links (including V.3 \<rightarrow\> II.1)
  and Lean imports may run forward or backward relative to this exposition.
  They establish constant reachability or code organisation, not these
  conceptual arrows. PU-19 must remain distinct from PU-18:
  <verbatim|Completed> adds every-character quantification, uniform
  low-energy/heat estimates, irreducibility, continuity and the unselected
  integral, beyond the selected <verbatim|Realizes> statement. A merger is
  justified only if a reviewed source theorem covers those additions with
  matched hypotheses. No such citation is currently accepted.

  The first independent work can be the PU-15 selected-run/full-mesh
  statement and issue #6's OS literature comparison; they have disjoint
  outputs. A PU-16 author can begin the extraction statement once PU-15's
  family contract is fixed, while a separate PU-17 boundary audit can
  identify the phase representation hypotheses without claiming the PU-16
  theorem. PU-18 should wait for issue #6's verified citation decision and
  the PU-17 phase contract. PU-19 should wait for the PU-18 selected
  reconstruction and agree its stress handoff with PU-20. If PU-16's
  compactness and Euclidean-hierarchy arguments prove independently
  reviewable, request two new issues with separate paths before assigning
  authors; do not have both claim <verbatim|Broad.refine>.

  For formal-scaffolding triage, <verbatim|Extraction.Order.upon> and
  <verbatim|Order.retained> preserve an already established limit under
  composition; <verbatim|YM.Spec.Final.onward> transports a <verbatim|Final>
  along a refinement (<verbatim|Lean/YM/Extraction/Limits.lean>,
  <verbatim|Orders.lean>, <verbatim|Spec/Closed.lean>). These may be grouped
  in one mathematical refinement-stability argument. The many table/label
  conversions in <verbatim|YangMills.publicReconstruction>
  (<verbatim|Lean/HierarchyBridge.lean>) are candidate bridge bookkeeping,
  but its injectivity, surjectivity and mixture obligations have actual
  mathematical content and cannot be suppressed as coercions. This
  classification is provisional pending an independent correspondence review.

  <section|Notation handoff to issue #10><label|notation-handoff-to-issue-10>

  The shared glossary and notation protocol belong to <hlink|issue
  #10|https://github.com/hairer/humanise-yang-mills/issues/10>; the following
  is a question list, not a local glossary edit.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Provisional
  symbol here>>|<cell|<strong|Mathematical type and
  source>>|<cell|<strong|Question for the notation
  owner>>>|<row|<cell|<verbatim|g>, <verbatim|G=g.core>>|<cell|Public
  <verbatim|YangMills.GaugeGroup> versus internal <verbatim|YM.Gauge>,
  <verbatim|Lean/WilsonBridge.lean>>|<cell|Fix the public/internal conversion
  and the meaning of <verbatim|Simple>.>>|<row|<cell|<verbatim|R>,
  <verbatim|C=R.family>>|<cell|Internal run and family,
  <verbatim|Lean/YM/Independent/ConstructionRun.lean>>|<cell|Distinguish the
  internal family from its public <verbatim|YangMills.wilsonFamily
  C>.>>|<row|<cell|<verbatim|p>, <verbatim|q>>|<cell|<verbatim|YM.Extraction.Order>
  (mesh, period), <verbatim|Lean/YM/Extraction/Orders.lean>; public
  <verbatim|p,q : \<bbb-N\>\<rightarrow\>\<bbb-N\>> are period
  sequences>|<cell|State a convention that preserves both the order of limits
  and the public quantifier order.>>|<row|<cell|<verbatim|S>,
  <verbatim|F>>|<cell|Euclidean table versus <verbatim|YM.Spec.Final C
  (p.refine q) S>, <verbatim|Lean/YM/Spec/Closed.lean>>|<cell|Avoid calling
  <verbatim|Final> merely a Euclidean hierarchy.>>|<row|<cell|<verbatim|X,
  \<mu\>, x\<#2080\>, S_x>>|<cell|Character space, measure, selected point,
  phase tables, <verbatim|Lean/YM/Phase/Mixture.lean>>|<cell|Distinguish
  selected, phasewise, and mixed/unselected
  correlations.>>|<row|<cell|<verbatim|L>>|<cell|Every-phase almanac,
  <verbatim|Lean/YM/EveryPhase/Pack.lean>>|<cell|Reserve a separate symbol
  from a literature source's OS Hilbert space.>>>>>

  <section|Open questions and review gates><label|open-questions-and-review-gates>

  <\enumerate>
    <item><hlink|Issue #6|https://github.com/hairer/humanise-yang-mills/issues/6>
    is open and <verbatim|status:ready> as checked 11 November 2026; no
    accepted OS literature match is present in
    <verbatim|blueprint/background/>. The precise citation interface and any
    unmatched positivity, regularity, locality, phase, or boundary hypotheses
    remain unresolved. The PU-18 treatment is conditional, not \Pstandard
    OS\Q by assertion.

    <item>The selected <verbatim|Spec.Final> is produced within
    <verbatim|YM.PhysicalNext.Repeat.Legato.Run.extractible17>
    (<verbatim|Lean/YM/RG17/Joint.lean>), while
    <verbatim|YM.R2IGoals.Broad.refine> adds all-character reconstruction. A
    reviewer must confirm the smallest exact source declarations that support
    each proposed projected theorem, and whether the PU-16 compactness and
    Euclidean-hierarchy output needs two issue tasks. Until then, the paths
    above are issue-ready <em|candidates>, not claims that five independent
    theorems already exist.

    <item><verbatim|EveryPhase.Completed.continued_stress> crosses into
    PU-20. Its assumptions and use by the public theorem need the PU-20 owner
    to agree on a shared interface; this audit assigns only the
    reconstruction and mixture fields to PU-19.

    <item>The public statement ledger is an author draft awaiting independent
    Lean correspondence review. The proposed split also requires independent
    correspondence review before canonical explanation issues are marked
    ready. Neither the pinned build/axiom report nor this audit certifies the
    mathematical interpretation of the complete construction.
  </enumerate>

  <section|Evidence and limits><label|evidence-and-limits>

  Read-only searches and inspections actually run from repository root on 11
  November 2026: <verbatim|rg> over the named declarations and their
  immediate dependency files; <verbatim|sed -n> on
  <verbatim|Lean/Construction.lean>, <verbatim|Solution.lean>,
  <verbatim|ChallengeSpec.lean>, <verbatim|WilsonBridge.lean>,
  <verbatim|HierarchyBridge.lean>, <verbatim|YM/Nonperturbative/{Headlines,HeadlineSpec,Continuum}.lean>,
  <verbatim|YM/Independent/{ConstructionRun,Core}.lean>,
  <verbatim|YM/R2I/Campaign/Accepted.lean>, <verbatim|YM/RG17/Joint.lean>,
  <verbatim|YM/Extraction/{Orders,Limits}.lean>,
  <verbatim|YM/Spec/Closed.lean>, <verbatim|YM/Euclid/Words.lean>,
  <verbatim|YM/Phase/Mixture.lean>, <verbatim|YM/OS/{Schwinger,Dynamics}.lean>,
  <verbatim|YM/Fields/System.lean>, <verbatim|YM/Boundary/Contour.lean>,
  <verbatim|YM/EveryPhase/{Pack,Extension,Barycenter}.lean>, and
  <verbatim|Lean/PublicView.lean>. These inspections establish the displayed
  source signatures and fields, not the correctness of their proofs. Live
  issue #11 and its grant, #6 and #10, and the open-PR list were checked via
  GitHub's web UI; there were no open PRs and no <verbatim|Bots/notes/> files
  in this checkout. The older task draft <verbatim|.github/task-drafts/T06-construction-reconstruction-interface.md>
  was read but is superseded by the published issue #11 scope.

  Checks not run: a new Lean build, independent axiom replay, full transitive
  dependency inspection, review of Scott's individual external unit outlines,
  and mathematical/Lean-correspondence review of this draft. The existing
  <hlink|issue #2 build and axiom evidence|../../source/build.tm> is reused
  only with its prebuilt-artifact limitation.
</body>

<\initial>
  <\collection>
    <associate|html-title|Construction to reconstruction: proposed proof
    interfaces \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|4|5>>
    <associate|auto-5|<tuple|5|5>>
    <associate|auto-6|<tuple|6|6>>
    <associate|candidate-inputoutput-contracts|<tuple|2|2>>
    <associate|conceptual-graph-and-source-graph-limit|<tuple|3|4>>
    <associate|construction-to-reconstruction-proposed-proof-interfaces|<tuple|?|1>>
    <associate|evidence-and-limits|<tuple|6|6>>
    <associate|notation-handoff-to-issue-10|<tuple|4|5>>
    <associate|open-questions-and-review-gates|<tuple|5|5>>
    <associate|quantifier-and-data-contract|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Quantifier
      and data contract> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Candidate
      input/output contracts> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Conceptual
      graph and source-graph limit> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Notation
      handoff to issue #10> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Open
      questions and review gates> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Evidence
      and limits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>