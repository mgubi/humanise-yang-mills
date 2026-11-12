<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../index.tm><ym-nav-sep><hlink|The
  theorem|../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../docs/notation.tm><ym-nav-sep><ym-nav-here|Source
  audit><ym-nav-sep><hlink|Literature|../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../CONTRIBUTING.tm>>

  <ym-title|Statement and scope audit: OpenAI-YM-20261028><label|statement-and-scope-audit-openai-ym-20261028>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Audit method
    and limits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Declaration
    index and source correspondence> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Public prose
    comparison> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Printed
    elaborated types> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Public-root
    constant reachability> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Commands,
    outcomes, and unperformed checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Open questions
    and review boundary> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>
  </table-of-contents>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Field>>|<cell|<strong|Audited
  value>>>|<row|<cell|Imported source revision>|<cell|<verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>>>|<row|<cell|Pinned
  toolchain>|<cell|<verbatim|leanprover/lean4:v4.32.0>>>|<row|<cell|Roots>|<cell|All
  17 names in <hlink|<verbatim|source/upstream.json>|https://github.com/hairer/humanise-yang-mills/blob/main/source/upstream.json>>>|<row|<cell|Status>|<cell|Author
  draft; independent Lean-correspondence review required>>>>>

  This is the issue <hlink|#3|https://github.com/hairer/humanise-yang-mills/issues/3>
  statement audit. The <hlink|mathematician-readable
  ledger|../blueprint/public-statement.tm> spells out quantifiers,
  hypotheses, conclusions, defining predicates, and interpretation limits.
  This file records the source correspondence, printed Lean types, public
  prose comparison, and audit evidence. The theorem names are not substitutes
  for their elaborated types. No proof of any root is attempted here, and no
  imported <verbatim|Lean/> file was changed.

  <section|Audit method and limits><label|audit-method-and-limits>

  Three read-only, disjoint source inspections covered respectively the five
  public/assembly roots, five SU(2)/independent/contact/asymptotic roots, and
  seven position/parity/Sharp-Gram roots. They started at the named
  declarations and expanded only through immediate meaning-determining
  definitions. The source inspections used separate clones at repository
  commit <verbatim|3a20fee84ce46e8f83824b9e3da7078a8313e987> and the
  immutable imported source revision above. The parent integrated their
  reports and compared the results with a pinned Lean <verbatim|#check> run
  covering every root. The full command, result, and output digest appear
  below. <verbatim|#check> is the elaborated-type evidence; source-text
  readings identify the structures and abbreviations within those printed
  types. The pretty-printer can hide inferred types or abbreviate dependent
  arguments; the cited definitions remain authoritative.

  The separate <hlink|accepted issue #2 evidence|evidence/axioms-3456e5e.tm>
  reports transitive axioms <verbatim|propext>, <verbatim|Classical.choice>,
  and <verbatim|Quot.sound> for all 17 roots, with no <verbatim|sorryAx> or
  project-defined endpoint axiom. It also records kernel replay of 100,168
  reachable project declarations. That result used a checksum-verified
  prebuilt artifact, not a clean source rebuild on this host. Its structural
  reachability inventory is not a mathematical dependency graph, and neither
  its axiom report nor this type audit establishes the physical adequacy of a
  definition.

  <section|Declaration index and source correspondence><label|declaration-index-and-source-correspondence>

  The <verbatim|Type and meaning> column points to the exact printed type
  below and the expanded statement in the ledger. Source lines locate the
  declaration, while fully qualified names and the pinned revision are the
  stable identifiers.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Release
  root>>|<cell|<strong|Declaration and meaning-determining
  sources>>|<cell|<strong|Relation to <verbatim|jointExistence>>>>|<row|<cell|<verbatim|YangMills.jointExistence>>|<cell|<verbatim|Lean/Solution.lean:4>;
  <verbatim|Lean/ChallengeSpec.lean:186\U188> (<verbatim|JointExistence>),
  <verbatim|:11\U22> (<verbatim|WilsonRegularity>), <verbatim|:177\U182>
  (<verbatim|Hierarchy.Properties>); <verbatim|Lean/PublicWilson.lean>,
  <verbatim|Lean/PublicTheory.lean>>|<cell|Public
  endpoint>>|<row|<cell|<verbatim|YangMills.constructed>>|<cell|<verbatim|Lean/Construction.lean:15\U31>;
  <verbatim|Lean/WilsonBridge.lean:10\U17>;
  <verbatim|Lean/YM/Nonperturbative/HeadlineSpec.lean:143\U155>>|<cell|Supplies
  public endpoint by projection through bridge
  definitions>>|<row|<cell|<verbatim|YM.Nonperturbative.existence>>|<cell|<verbatim|Lean/YM/Nonperturbative/Headlines.lean:19\U20>;
  <verbatim|HeadlineSpec.lean:143\U155>; <verbatim|Lean/YM/Gauge/MatrixGroup.lean>,
  <verbatim|Lean/YM/Gauge/Lie.lean>>|<cell|Used by <verbatim|constructed> in
  its source proof>>|<row|<cell|<verbatim|YM.Nonperturbative.continuum_with_position_tests>>|<cell|<verbatim|Lean/YM/Nonperturbative/Continuum.lean:28\U39>;
  <verbatim|Lean/YM/Independent/Core.lean>,
  <verbatim|Lean/YM/Pert/Position/Four.lean>>|<cell|Used to construct
  <verbatim|existence>>>|<row|<cell|<verbatim|YM.Nonperturbative.continuum>>|<cell|<verbatim|Lean/YM/Nonperturbative/Continuum.lean:52\U66>>|<cell|Projection
  of preceding result, not an additional premise>>|<row|<cell|<verbatim|YangMills.su2Simple>>|<cell|<verbatim|Lean/ConcreteSU2.lean:8\U12>;
  <verbatim|Lean/PublicTheory.lean>>|<cell|Supplies simplicity input for the
  specialization>>|<row|<cell|<verbatim|YangMills.su2Theory>>|<cell|<verbatim|Lean/ConcreteSU2.lean:15\U18>;
  <verbatim|Lean/ChallengeSpec.lean:186\U188>>|<cell|Direct specialization of
  <verbatim|jointExistence>>>|<row|<cell|<verbatim|YM.Independent.Core.point>>|<cell|<verbatim|Lean/YM/Independent/Core.lean:49\U63>;
  <verbatim|Lean/YM/OPE/Orbits/Profile.lean>, <verbatim|Words.lean>>|<cell|In
  the public theorem's formal constant closure, but not a public
  conclusion>>|<row|<cell|<verbatim|YM.Contacts.Solstice.celestial>>|<cell|<verbatim|Lean/YM/Contacts/Solstice/Result.lean:52\U79>>|<cell|Separate
  contact-device existence root>>|<row|<cell|<verbatim|YM.Pert.Asymptotics.comparison>>|<cell|<verbatim|Lean/YM/Pert/Asymptotics/RawAxis.lean:11\U36>;
  <verbatim|Lean/YM/Source/Construction.lean>>|<cell|Conditional
  running-proxy companion>>|<row|<cell|<verbatim|YM.Pert.Position.finite_leading>>|<cell|<verbatim|Lean/YM/Pert/Position/Crest.lean:13>;
  <verbatim|Board.lean>, <verbatim|Actual.lean>>|<cell|In the public
  theorem's formal constant closure, but not a public
  conclusion>>|<row|<cell|<verbatim|YM.Pert.Position.normalized_four>>|<cell|<verbatim|Lean/YM/Pert/Position/Four.lean:45\U56>;
  <verbatim|Crest.lean>, <verbatim|Lean/YM/Pert/FirstTarget.lean>>|<cell|Position-test
  existence companion>>|<row|<cell|<verbatim|YM.Pert.Parity.parityEndpoint>>|<cell|<verbatim|Lean/YM/Pert/Parity/End.lean:15\U21>;
  <verbatim|Branch.lean>; <verbatim|Lean/YM/Pert/Position/Crest.lean>>|<cell|Eventual
  finite-regulator parity companion>>|<row|<cell|<verbatim|YM.Pert.Parity.low_read>>|<cell|<verbatim|Lean/YM/Pert/Parity/EvenLow.lean:44>;
  <verbatim|Lean/YM/Pert/Position/Board.lean>>|<cell|Exact low-grade,
  odd-coefficient vanishing companion>>|<row|<cell|<verbatim|YM.SharpGram.habitat>>|<cell|<verbatim|Lean/YM/SharpGram/Measured.lean:11>;
  <verbatim|Lean/YM/SharpGram/Weak/Reading.lean>,
  <verbatim|Lean/YM/SharpGram/Dense/Passes.lean>>|<cell|Weak-portfolio/fixed-field
  companion>>|<row|<cell|<verbatim|YM.SharpGram.inletFirst>>|<cell|<verbatim|Lean/YM/SharpGram/Clauses.lean:18\U21,126>>|<cell|Conditional
  low-grade <verbatim|Supplies> companion>>|<row|<cell|<verbatim|YM.SharpGram.outletFirst>>|<cell|<verbatim|Lean/YM/SharpGram/Clauses.lean:23\U29,120>>|<cell|Conditional
  low-grade <verbatim|Releases> companion>>>>>

  The source proof chain directly inspected for the main theorem is
  <verbatim|continuum_with_position_tests \<rightarrow\> existence
  \<rightarrow\> constructed \<rightarrow\> jointExistence>.
  <verbatim|continuum> is derived from the first of these;
  <verbatim|su2Theory> is derived from the last, using <verbatim|su2Simple>.
  The 17-name manifest and the checked-in usage table identify roots and
  constant reachability over their union; they do not by themselves prove
  that every focused headline is in the proof of the public endpoint. The
  targeted per-root query below supplies that distinction.

  <section|Public prose comparison><label|public-prose-comparison>

  The imported <hlink|<verbatim|Lean/README.md>|https://github.com/hairer/humanise-yang-mills/blob/main/Lean/README.md>
  is the shipped public prose statement. Its public-challenge section
  corresponds to <verbatim|JointExistence> and the four fields of
  <verbatim|Hierarchy.Properties>:

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|README
  claim>>|<cell|<strong|Formal anchor and scope>>>|<row|<cell|One Wilson
  family for each closed matrix subgroup with nonabelian simple real Lie
  algebra; refinements for every increasing volume
  sequence>|<cell|<verbatim|GaugeGroup>, <verbatim|IsSimple>, and
  <verbatim|JointExistence> in <verbatim|PublicTheory.lean> and
  <verbatim|ChallengeSpec.lean>; one family is chosen before the requested
  sequence.>>|<row|<cell|Wilson plaquette/Haar origin, finite local stencils,
  running slope, and separated mesh/volume
  limits>|<cell|<verbatim|WilsonFamily>, <verbatim|WilsonRegularity>, and
  <verbatim|WilsonFamily.Converges> in <verbatim|PublicWilson.lean> and
  <verbatim|ChallengeSpec.lean>; the local stencil is per token but uniform
  in spacing, volume, and placement.>>|<row|<cell|Selected Wightman
  reconstruction, phase integration, spectrum and
  locality>|<cell|<verbatim|Hierarchy.Reconstructed> and its theory axioms in
  <verbatim|ChallengeSpec.lean> and <verbatim|PublicTheory.lean>; positive
  energy and uniqueness of the translation-invariant vacuum are stated, not a
  positive mass gap.>>|<row|<cell|Separated all-orders
  OPE>|<cell|<verbatim|Hierarchy.OperatorProductExpansion> in
  <verbatim|ChallengeSpec.lean>; its cluster and spectator geometry,
  truncation degrees, uniform remainder, and same-hierarchy readings are
  predicate-dependent.>>|<row|<cell|Centered grade-four nonfreeness
  test>|<cell|<verbatim|Hierarchy.TraceTest> in
  <verbatim|ChallengeSpec.lean>; it excludes eventual equality to the
  specified finite Wick profiles, not every generalized free
  model.>>|<row|<cell|Detailed construction has contacts and leading position
  tests>|<cell|<verbatim|YangMills.constructed> and its internal
  <verbatim|MultipleLight>, <verbatim|FirstExtension>, and
  <verbatim|FourMeters> conjuncts; these are not fifth/sixth fields of public
  <verbatim|Properties>.>>>>>

  The README explicitly excludes a positive mass gap, general exclusion of
  continuous-mass generalized free fields, and all-orders MS-bar matching. It
  also excludes uniqueness over other contact prescriptions and raw cutoff
  convergence on collision diagonals. The README mentions an earlier
  challenge revision but contains no separate stronger release-statement
  link. No such physical conclusion is added by any root name in this audit.
  The README's build and replay claims must be read with the narrower local
  evidence in <hlink|<verbatim|source/build.md>|build.tm> and issue #2,
  including the prebuilt-artifact limitation.

  <section|Printed elaborated types><label|printed-elaborated-types>

  The output below is from the pinned Lean toolchain. Each <verbatim|#check>
  names the elaborated theorem type; abbreviated named structures are
  expanded through the cited sources and ledger. The repeated axiom lines are
  retained to avoid silently suppressing an endpoint finding.

  <\verbatim-code>
    YangMills.jointExistence : YangMills.JointExistence

    'YangMills.jointExistence' depends on axioms: [propext, Classical.choice,
    Quot.sound]

    YangMills.constructed.{u, v} (g : YangMills.GaugeGroup) (hg : g.IsSimple)
    (b : \<bbb-R\>) (hb : 0 \<less\> b) :

    \ \ \<exists\> C,

    \ \ \ \ C.path.levels.clock.kernel.penalty = b \<wedge\>

    \ \ \ \ \ \ C.Makes \<wedge\>

    \ \ \ \ \ \ \ \ YangMills.WilsonRegularity (YangMills.wilsonFamily C)
    \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \<forall\> (p : YM.Extraction.Order),

    \ \ \ \ \ \ \ \ \ \ \ \ \<exists\> q S F L Q M X,

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ (YangMills.hierarchy F Q).Properties
    (p.refine q).per.choose \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (YangMills.hierarchy F Q).Contacts
    \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ { mesh :=
    YM.Extraction.Sequence.full, per := (p.refine q).per }.Ordered C S
    \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.FullVolume.PositionsUV C
    YM.Extraction.Sequence.full \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.Spec.Calibrated C
    \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.Independent.Core
    (YangMills.GaugeGroup.coreSimple hg) F L Q \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.Nonperturbative.Headline.Reconstruction
    F L \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (\<forall\> (i :
    F.\<alpha\>.space.X), (YangMills.view (L.actors i)).Axioms) \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.Nonperturbative.Headline.SeparatedOPE
    F Q \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.Nonperturbative.Headline.NestedOPE
    F Q \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.Nonperturbative.Headline.TraceExclusions
    F \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ M.basis
    = Q.port \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.Contacts.Solstice.MultipleLight
    F M \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Nonempty
    (YM.Contacts.Transport.SystemBasis M) \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Nonempty
    (YM.Contacts.Solstice.Thresholds M) \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.Pert.FirstExtension
    F X \<wedge\> YM.Pert.Position.FourMeters F X

    'YangMills.constructed' depends on axioms: [propext, Classical.choice,
    Quot.sound]

    YangMills.su2Simple : YangMills.su2.IsSimple

    'YangMills.su2Simple' depends on axioms: [propext, Classical.choice,
    Quot.sound]

    YangMills.su2Theory :

    \ \ \<exists\> C, YangMills.WilsonRegularity C \<wedge\> \<forall\> (p :
    \<bbb-N\> \<rightarrow\> \<bbb-N\>), StrictMono p \<rightarrow\>
    \<exists\> q, StrictMono q \<wedge\> \<exists\> T, T.Properties (p
    \<circ\> q)

    'YangMills.su2Theory' depends on axioms: [propext, Classical.choice,
    Quot.sound]

    YM.Nonperturbative.existence.{u, v} (G : YM.Gauge) (hG : G.Simple) (b :
    \<bbb-R\>) (hb : 0 \<less\> b) :

    \ \ YM.Nonperturbative.Headline.WilsonExistence G hG b

    'YM.Nonperturbative.existence' depends on axioms: [propext,
    Classical.choice, Quot.sound]

    YM.Nonperturbative.continuum.{u, v} {G : YM.Gauge} (hG : G.Simple) {b :
    \<bbb-R\>} (hb : 0 \<less\> b) :

    \ \ have R := YM.Independent.fundedRun hG hb;

    \ \ R.family.path.levels.clock.kernel.penalty = b \<wedge\>

    \ \ \ \ \<forall\> (p : YM.Extraction.Order),

    \ \ \ \ \ \ \<exists\> q S F L Q M,

    \ \ \ \ \ \ \ \ { mesh := YM.Extraction.Sequence.full, per := (p.refine
    q).per }.Ordered R.family S \<wedge\>

    \ \ \ \ \ \ \ \ \ \ YM.FullVolume.PositionsUV R.family
    YM.Extraction.Sequence.full \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ YM.Independent.Core hG F L Q \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.OPE.Nesting.Uniform F Q \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ M.basis = Q.port \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.Contacts.Solstice.MultipleLight F
    M \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Nonempty
    (YM.Contacts.Transport.SystemBasis M) \<wedge\> Nonempty
    (YM.Contacts.Solstice.Thresholds M)

    'YM.Nonperturbative.continuum' depends on axioms: [propext,
    Classical.choice, Quot.sound]

    YM.Nonperturbative.continuum_with_position_tests.{u, v} {G : YM.Gauge}
    (hG : G.Simple) {b : \<bbb-R\>} (hb : 0 \<less\> b) :

    \ \ have R := YM.Independent.fundedRun hG hb;

    \ \ R.family.path.levels.clock.kernel.penalty = b \<wedge\>

    \ \ \ \ \<forall\> (p : YM.Extraction.Order),

    \ \ \ \ \ \ \<exists\> q S F L Q M,

    \ \ \ \ \ \ \ \ { mesh := YM.Extraction.Sequence.full, per := (p.refine
    q).per }.Ordered R.family S \<wedge\>

    \ \ \ \ \ \ \ \ \ \ YM.FullVolume.PositionsUV R.family
    YM.Extraction.Sequence.full \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ YM.Independent.Core hG F L Q \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.OPE.Nesting.Uniform F Q \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ M.basis = Q.port \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.Contacts.Solstice.MultipleLight F
    M \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Nonempty
    (YM.Contacts.Transport.SystemBasis M) \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Nonempty
    (YM.Contacts.Solstice.Thresholds M) \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \<exists\> X,
    YM.Pert.FirstExtension F X \<wedge\> YM.Pert.Position.FourMeters F X

    'YM.Nonperturbative.continuum_with_position_tests' depends on axioms:
    [propext, Classical.choice, Quot.sound]

    YM.Contacts.Solstice.celestial (G : YM.Gauge) (h : G.Simple) :

    \ \ \<exists\> C F S Z M,

    \ \ \ \ YM.Contacts.Solstice.MultipleLight Z M \<wedge\>

    \ \ \ \ \ \ Nonempty (YM.Contacts.Transport.SystemBasis M) \<wedge\>
    Nonempty (YM.Contacts.Solstice.Thresholds M)

    'YM.Contacts.Solstice.celestial' depends on axioms: [propext,
    Classical.choice, Quot.sound]

    YM.Pert.Position.finite_leading {G : YM.Gauge} {d t : \<bbb-N\>} {A :
    YM.Labels.Frames G}

    \ \ (Q : YM.Pert.Position.Conditions A d t) (H :
    YM.Pert.Position.CleanProfiles Q) (L : YM.Lattice.Side) (hL : 1 \<less\>
    \<uparrow\>L) :

    \ \ Filter.Tendsto (fun m =\<gtr\> YM.Pert.Position.finite Q L m 0)
    Filter.atTop (nhds (YM.Pert.Position.white Q))

    'YM.Pert.Position.finite_leading' depends on axioms: [propext,
    Classical.choice, Quot.sound]

    YM.Pert.Position.normalized_four {G : YM.Gauge} (hg : G.Simple) {p :
    \<bbb-R\>} (hp : 0 \<less\> p) :

    \ \ \<exists\> C,

    \ \ \ \ C.path.levels.clock.kernel.penalty = p \<wedge\>

    \ \ \ \ \ \ YM.Extraction.Wcmain C \<wedge\>

    \ \ \ \ \ \ \ \ YM.MergeProof.Ribbons.Materials C \<wedge\>

    \ \ \ \ \ \ \ \ \ \ YM.MergeProof.Ribbons.Plenty C \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \<forall\> (f : YM.Extraction.Order), \<exists\>
    g S b X, YM.Pert.FirstExtension b X \<wedge\> YM.Pert.Position.FourMeters
    b X

    'YM.Pert.Position.normalized_four' depends on axioms: [propext,
    Classical.choice, Quot.sound]

    YM.Pert.Parity.parityEndpoint {G : YM.Gauge} (hg : G.Simple) {c :
    \<bbb-R\>} (hc : 0 \<less\> c) :

    \ \ \<exists\> C,

    \ \ \ \ C.path.levels.clock.kernel.penalty = c \<wedge\>

    \ \ \ \ \ \ YM.Extraction.Wcmain C \<wedge\>

    \ \ \ \ \ \ \ \ YM.MergeProof.Ribbons.Materials C \<wedge\>

    \ \ \ \ \ \ \ \ \ \ YM.MergeProof.Ribbons.Plenty C \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \<forall\> (f : YM.Extraction.Order),

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \<exists\> g S b X,

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.Pert.FirstExtension b X \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.Pert.Position.Crest X \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \<exists\> n Q \<varphi\> J,

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.Pert.Position.CleanProfiles
    Q \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.Pert.Position.BoardAttains
    Q X \<varphi\> \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.Pert.Position.Resident
    b X \<varphi\> \<wedge\> YM.Pert.Parity.Fair Q J \<wedge\>
    YM.Pert.Parity.ParityFields \<varphi\>

    'YM.Pert.Parity.parityEndpoint' depends on axioms: [propext,
    Classical.choice, Quot.sound]

    YM.Pert.Parity.low_read {G : YM.Gauge} {d : \<bbb-N\>} {F :
    YM.Labels.Frames G} (hg : G.Simple) (hd : d \<leq\> 5) {\<sigma\> :
    \<bbb-N\>}

    \ \ (X : YM.Pert.Position.Conditions F d \<sigma\>) (L : YM.Lattice.Side)
    (m j : \<bbb-N\>) (h : Odd j) :

    \ \ YM.Pert.Position.finite X L m j = 0

    'YM.Pert.Parity.low_read' depends on axioms: [propext, Classical.choice,
    Quot.sound]

    YM.Pert.Asymptotics.comparison {G : YM.Gauge} {C : YM.Family G} {N k :
    \<bbb-N\> \<rightarrow\> \<bbb-N\>} (hc : C.Makes) (hg : G.Simple)

    \ \ (hi : \<forall\>\<#1DA0\> (i : \<bbb-N\>) in Filter.atTop, i \<leq\>
    N i) :

    \ \ Filter.Tendsto (fun i =\<gtr\> YM.Pert.Asymptotics.regulatorRun C (N
    i) (k i) i * \<sqrt\>(Real.log (C.S.a i)\<#207B\>\<onesuperior\>))
    Filter.atTop

    \ \ \ \ (nhds (\<sqrt\>(2 * YM.Pert.Asymptotics.b0
    G))\<#207B\>\<onesuperior\>)

    'YM.Pert.Asymptotics.comparison' depends on axioms: [propext,
    Classical.choice, Quot.sound]

    YM.SharpGram.habitat {G : YM.Gauge} (hG : G.Simple) {b : \<bbb-R\>} (hb :
    0 \<less\> b) (f : YM.Extraction.Order) :

    \ \ \<exists\> C g T F L P,

    \ \ \ \ C.Makes \<wedge\>

    \ \ \ \ \ \ YM.Spec.Calibrated C \<wedge\>

    \ \ \ \ \ \ \ \ C.path.levels.clock.kernel.penalty = b \<wedge\>

    \ \ \ \ \ \ \ \ \ \ YM.UVExtension.Oasis.Floral C \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ { mesh := YM.Extraction.Sequence.full, per :=
    (f.refine g).per }.Ordered C T \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ (\<forall\> (d k : \<bbb-N\>),

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \<forall\>\<#1DA0\> (n : \<bbb-N\>)
    in Filter.atTop,

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \<forall\> (r : \<bbb-N\>) (v :
    Fin r \<rightarrow\> C.book.Token),

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (\<forall\> (i : Fin r), (v
    i).fst \<leq\> d) \<rightarrow\> \<exists\> g,
    YM.UVExtension.Poppy.Margins C r n k v g) \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.OPE.Facilities C (f.refine g) T
    \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (\<exists\> W r D,
    YM.OPE.Log.LogPackage C W r D \<wedge\> YM.SharpGram.TrueSteps C W)
    \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.EveryPhase.Completed F L
    \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.OPE.AllShapes F P
    \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.SharpGram.Dense.Coverage
    C F.room.cutoff \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \<forall\> (U :
    Ultrafilter (\<bbb-N\> \<times\> \<bbb-N\>)),

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \<uparrow\>U
    \<leq\> (f.refine g).fuse \<rightarrow\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \<forall\> (D
    : \<bbb-N\>),

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Nonempty
    (YM.SharpGram.Weak.Portfolio C F.room.cutoff D \<uparrow\>U) \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \<forall\>
    (X : YM.SharpGram.Weak.Portfolio C F.room.cutoff D \<uparrow\>U),

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \<exists\>
    Y,

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.SharpGram.PricedIn
    F X Y \<wedge\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \<forall\>
    (d : Fin (D + 1)),

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Filter.Tendsto

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (fun
    k =\<gtr\> YM.SharpGram.Weak.Portfolio.inBasis F X k (\<uparrow\>d) (Y k
    \<uparrow\>d))

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Filter.atTop
    (nhds (YM.SharpGram.Weak.Portfolio.model C \<uparrow\>d))

    'YM.SharpGram.habitat' depends on axioms: [propext, Classical.choice,
    Quot.sound]

    YM.SharpGram.inletFirst {G : YM.Gauge} {C : YM.Family G} {f :
    YM.Extraction.Order} {S : YM.Table C.book}

    \ \ (U : YM.Spec.Final C f S) {d : \<bbb-N\>} (hG : G.Simple) {\<varphi\>
    : Filter (\<bbb-N\> \<times\> \<bbb-N\>)} (hf : \<varphi\> \<leq\>
    f.fuse) (x : C.label d)

    \ \ (hd : d \<leq\> 3) : YM.SharpGram.Supplies C \<varphi\> d ((S.project
    d) x)

    'YM.SharpGram.inletFirst' depends on axioms: [propext, Classical.choice,
    Quot.sound]

    YM.SharpGram.outletFirst {G : YM.Gauge} {C : YM.Family G} {f :
    YM.Extraction.Order} {S : YM.Table C.book}

    \ \ (U : YM.Spec.Final C f S) {W : YM.Bid.Worth} {r : \<bbb-N\>
    \<rightarrow\> \<bbb-N\>}

    \ \ {D : (N p m : \<bbb-N\>) \<rightarrow\> m \<less\> N \<rightarrow\>
    YM.MergeProof.GaugeDoor (C.path.rep N p (m + 1)) (C.path.rep N p m)}

    \ \ (T : YM.OPE.TableTickets C W r D) {d : \<bbb-N\>} (hG : G.Simple)
    {\<varphi\> : Filter (\<bbb-N\> \<times\> \<bbb-N\>)} (hf : \<varphi\>
    \<leq\> f.fuse) {w : \<bbb-N\>}

    \ \ (L : S.Field d \<rightarrow\>\<#2097\>[\<bbb-C\>] \<bbb-C\>) (hw : w
    \<leq\> d) (he : w \<leq\> 3) (hp : YM.SharpGram.Kills
    U.sector.derivatives hw L) :

    \ \ YM.SharpGram.Releases C \<varphi\> d w L

    'YM.SharpGram.outletFirst' depends on axioms: [propext, Classical.choice,
    Quot.sound]

    YM.Independent.Core.point.{u, v} {G : YM.Gauge} {C : YM.Family G} {f :
    YM.Extraction.Order} {S : YM.Table C.book}

    \ \ {hG : G.Simple} {F : YM.Spec.Final C f S} {L : YM.EveryPhase.Almanac
    F}

    \ \ {Q : YM.OPE.Orbits.Reader F.sector.derivatives F.sector.turns
    F.room.kernel.spin} (H : YM.Independent.Core hG F L Q)

    \ \ {I J : Type} [Fintype I] [Fintype J] {d : I \<rightarrow\> \<bbb-N\>}
    {e : J \<rightarrow\> \<bbb-N\>} (a : YM.OPE.Orbits.Labels S d)

    \ \ (b : YM.OPE.Orbits.Labels S e) {M \<eta\> c \<varepsilon\> :
    \<bbb-R\>} (hM : 0 \<leq\> M) (h\<eta\> : 0 \<less\> \<eta\>) (hc : 0
    \<less\> c) (h\<varepsilon\> : 0 \<less\> \<varepsilon\>) (D : \<bbb-N\>)
    :

    \ \ \<forall\>\<#1DA0\> (r : \<bbb-R\>) in nhdsWithin 0 (Set.Ioi 0),

    \ \ \ \ \<forall\> (x : I \<rightarrow\> YM.E4) (o : YM.E4) (y : J
    \<rightarrow\> YM.E4),

    \ \ \ \ \ \ YM.OPE.WithinRoom r M \<eta\> x o \<rightarrow\>

    \ \ \ \ \ \ \ \ YM.OPE.ClearOf o y c \<rightarrow\>

    \ \ \ \ \ \ \ \ \ \ \<forall\> (s : YM.OPE.Viewers F),

    \ \ \ \ \ \ \ \ \ \ \ \ \<\|\|\>YM.OPE.Orbits.whole (YM.OPE.spectator F
    s) x a y b -

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \<big-sum\> j,

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \<big-sum\> i,

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Q.coef (\<uparrow\>j) i x a o
    *

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ YM.OPE.Orbits.whole
    (YM.OPE.spectator F s) (YM.OPE.sole o) (YM.OPE.sole (Q.actor
    (\<uparrow\>j) i)) y b\<\|\|\> \<leq\>

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ r ^ (\<uparrow\>D + 1 - YM.OPE.Orbits.weight
    d - \<varepsilon\>)

    'YM.Independent.Core.point' depends on axioms: [propext,
    Classical.choice, Quot.sound]
  </verbatim-code>

  <section|Public-root constant reachability><label|public-root-constant-reachability>

  A temporary pinned Lean meta script imported <verbatim|ConcreteSU2>, began
  at <verbatim|YangMills.jointExistence>, recursively followed each
  declaration's <verbatim|ConstantInfo.getUsedConstantsAsSet> references in
  type and value/proof, and included constructors of reached inductive types.
  Its visited-name set prevented repeated traversal. It queried membership
  for the 17 advertised names, rather than treating the all-roots usage TSV
  as a public-root graph. The script at <verbatim|/private/tmp/ym-issue3-reach.lean>
  had SHA-256 <verbatim|6c5caf8dc03a743cce045bfb01b423f220d64291dd90989fb7d807accc702e01>.
  From the original checkout's <verbatim|Lean/> directory, with the same
  pinned source files, <verbatim|lake env lean
  /private/tmp/ym-issue3-reach.lean> exited 0 in 28.629 s:

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Root>>|<cell|<strong|Reachable
  in <verbatim|jointExistence> type/proof
  closure?>>>|<row|<cell|<verbatim|YangMills.jointExistence>>|<cell|Yes,
  start>>|<row|<cell|<verbatim|YangMills.constructed>>|<cell|Yes>>|<row|<cell|<verbatim|YM.Nonperturbative.existence>>|<cell|Yes>>|<row|<cell|<verbatim|YM.Nonperturbative.continuum_with_position_tests>>|<cell|Yes>>|<row|<cell|<verbatim|YM.Independent.Core.point>>|<cell|Yes>>|<row|<cell|<verbatim|YM.Pert.Position.finite_leading>>|<cell|Yes>>|<row|<cell|<verbatim|YM.Nonperturbative.continuum>>|<cell|No>>|<row|<cell|<verbatim|YangMills.su2Simple>,
  <verbatim|YangMills.su2Theory>>|<cell|No>>|<row|<cell|<verbatim|YM.Contacts.Solstice.celestial>>|<cell|No>>|<row|<cell|<verbatim|YM.Pert.Position.normalized_four>>|<cell|No>>|<row|<cell|<verbatim|YM.Pert.Parity.parityEndpoint>,
  <verbatim|YM.Pert.Parity.low_read>>|<cell|No>>|<row|<cell|<verbatim|YM.Pert.Asymptotics.comparison>>|<cell|No>>|<row|<cell|<verbatim|YM.SharpGram.habitat>,
  <verbatim|YM.SharpGram.inletFirst>, <verbatim|YM.SharpGram.outletFirst>>|<cell|No>>>>>

  This is formal constant reachability, not a claim that
  <verbatim|Core.point> or <verbatim|finite_leading> is a <em|conjunct> of
  <verbatim|jointExistence>. Conversely, a <verbatim|No> means the named
  theorem constant was not in that closure; related definitions, mathematical
  ideas, or separately proved variants may still occur. The direct source
  proof chain and this closure have different purposes.

  <section|Commands, outcomes, and unperformed
  checks><label|commands-outcomes-and-unperformed-checks>

  <\itemize-minus>
    <item>Targeted source inspections used <verbatim|rg -n>, <verbatim|nl
    -ba>, and <verbatim|sed> on the named roots, their immediate defining
    files, <verbatim|Lean/README.md>, and the public bridge definitions. They
    found the 17 source declarations and the definition locations cited
    above. The three agent sessions were <verbatim|hairer-codex-issue3-public-20261111>,
    <verbatim|hairer-codex-issue3-special-20261111>, and
    <verbatim|hairer-codex-issue3-pert-20261111>; all were read-only and
    reported to the parent session <verbatim|hairer-codex-issue3-20261111>.

    <item>From <verbatim|/Users/hairer/humanise-yang-mills/Lean>, the command
    <verbatim|lake env lean -j1 -DmaxHeartbeats=0 -DmaxRecDepth=4096
    /private/tmp/ym-issue3-elaborated-types-20261111.lean> exited 0. Its
    159-line output had SHA-256 <verbatim|bacf65af7ad5aa5d70318686fe63d38963d1586f2f66503b25416d387b993c5e>;
    two pretty-printer elisions remained.

    <item>A first attempt to increase print depth using
    <verbatim|pp.maxDepth> exited 1 with <verbatim|Unknown option
    pp.maxDepth>; its output at <verbatim|/private/tmp/ym-issue3-elaborated-types-full-20261111.log>
    had SHA-256 <verbatim|e9e6e21d5a6edeae44ba3bacb17efe753a0b953820be19af184c2c64849d4200>.

    <item>The corrected expanded-type command, from the same <verbatim|Lean/>
    directory, was <verbatim|lake env lean -j1 -DmaxHeartbeats=0
    -DmaxRecDepth=4096 /private/tmp/ym-issue3-elaborated-types-expanded-20261111.lean>.
    It exited 0, produced the 159-line output transcribed above, with no
    pretty-printer elisions, at <verbatim|/private/tmp/ym-issue3-elaborated-types-expanded-20261111.log>
    (SHA-256 <verbatim|554da88654714fd5a87d408d74904831f5bd587202ebd2f83012ab6da40e64d6>).
    The input raised <verbatim|pp.maxSteps> and the deep-term/proof print
    thresholds. All 17 <verbatim|#print axioms> outputs were exactly the
    three standard axioms also reported by issue #2.

    <item>The first reachability command in an isolated source clone exited
    128 because that clone had no <verbatim|.lake/packages/mathlib> and the
    sandbox could not resolve <verbatim|github.com> for a new dependency
    download. The same temporary script run against the existing compiled
    artifact in the original checkout exited 0, with the result above. No
    build or imported-source edit was performed.

    <item>The issue #2 build, verifier, inventory, and axiom checks were read
    from <hlink|accepted evidence|evidence/axioms-3456e5e.tm> and <hlink|the
    build record|build.tm>; this issue did not rerun the expensive kernel
    replay or perform a clean source rebuild. The upstream standalone
    Comparator, <verbatim|verification/CompactCheck.lean>, and independent
    second-implementation proof checking were not run here. Their status must
    not be inferred from this audit.

    <item><verbatim|python3 scripts/check_blueprint.py> passed with
    <verbatim|Blueprint structure OK: 0 units. Lean and mathematics were not
    verified.> <verbatim|git diff --check> passed. A name-count check found
    all 17 manifest targets in both audit files and 17 printed endpoint axiom
    lines. These checks verify structure and transcription completeness, not
    mathematical interpretation.
  </itemize-minus>

  <section|Open questions and review boundary><label|open-questions-and-review-boundary>

  <\itemize-minus>
    <item>This audit identifies theorem types and defining conditions; it
    does not prove that the constructions satisfy an external mathematical or
    physical standard beyond what the predicates literally express. In
    particular, the group\<#2019\>s external assessment of the submission, if
    used in a monograph, needs its own comparison with the public predicate
    package and should not be silently imported as a stronger theorem.

    <item>The <verbatim|MultipleLight>, <verbatim|FirstExtension>,
    <verbatim|FourMeters>, portfolio, and trace predicates have substantial
    nested definitions. The ledger records the immediate meaning needed to
    prevent headline inflation; an independent Lean correspondence review
    should inspect any deeper interpretation proposed for later proof units.

    <item>No positive mass gap, uniqueness of the subsequential volume limit,
    general generalized-free-field exclusion, or all-orders MS-bar matching
    follows from a name or from the printed types here. Any future claim of
    one of these properties requires a separate located declaration and
    source audit.

    <item>This is an author draft. An independent Lean-correspondence
    reviewer must check the source-to-English mapping before issue #3 is
    marked reviewed or done.
  </itemize-minus>
</body>

<\initial>
  <\collection>
    <associate|html-title|Statement and scope audit: OpenAI-YM-20261028 \U
    Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|audit-method-and-limits|<tuple|1|1>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|4|5>>
    <associate|auto-5|<tuple|5|9>>
    <associate|auto-6|<tuple|6|10>>
    <associate|auto-7|<tuple|7|11>>
    <associate|commands-outcomes-and-unperformed-checks|<tuple|6|10>>
    <associate|declaration-index-and-source-correspondence|<tuple|2|2>>
    <associate|open-questions-and-review-boundary|<tuple|7|11>>
    <associate|printed-elaborated-types|<tuple|4|5>>
    <associate|public-prose-comparison|<tuple|3|4>>
    <associate|public-root-constant-reachability|<tuple|5|9>>
    <associate|statement-and-scope-audit-openai-ym-20261028|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Audit
      method and limits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Declaration
      index and source correspondence> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Public
      prose comparison> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Printed
      elaborated types> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Public-root
      constant reachability> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Commands,
      outcomes, and unperformed checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Open
      questions and review boundary> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>