<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../outline.tm><ym-nav-sep><hlink|Unit
  plan|../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../index.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Monograph|../../manuscript/existence.tm><ym-nav-sep><hlink|Glossary|../glossary.tm><ym-nav-sep><hlink|Notation|../../docs/notation.tm><ym-nav-sep><hlink|Source
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

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Calibration,
    field algebra and the public projection>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Conceptual
    graph and source-graph limit> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Notation
    handoff to issue #10> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Open questions
    and review gates> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Response to the
    PR #18 review and G01 P9> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Response to
    independent review #228 (R1\UR5)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Evidence and
    limits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>
  </table-of-contents>

  <strong|Status:> author draft for <hlink|issue
  #11|https://github.com/hairer/humanise-yang-mills/issues/11>, revised for
  <hlink|issue #160|https://github.com/hairer/humanise-yang-mills/issues/160>
  in response to the independent correspondence review of PR #18 and to G01
  proposed patch P9 (see <hlink|Response to the
  review|#response-to-the-pr-18-review-and-g01-p9>); includes the bounded
  R1\UR5 response to <hlink|review #228|https://github.com/hairer/humanise-yang-mills/pull/228>
  recorded below; not an accepted proof-unit assignment. <strong|Source:>
  imported OpenAI-YM revision <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>.
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

  <strong|Two orders.> The joint receipts state two different ordered limits.
  In <verbatim|YangMills.constructed> (<verbatim|Lean/Construction.lean>, the
  conjunct at line 23), <verbatim|YM.R2IGoals.Broad.refine> and
  <verbatim|YM.Nonperturbative.continuum_with_position_tests>, the displayed
  Wilson clause is <verbatim|{ mesh := .full, per := (p.refine q).per
  }.Ordered C S>: the <strong|full> mesh sequence at the refined periods. The
  final structure <verbatim|F : YM.Spec.Final C (p.refine q) S> is indexed by
  the refined order, whose mesh component is <verbatim|p.mesh \<circ\>
  q.mesh> (<verbatim|Order.refine> composes both components,
  <verbatim|Lean/YM/Extraction/Orders.lean>), and contains
  <verbatim|F.room.ordered : (p.refine q).Ordered C S>; in
  <verbatim|YangMills.jointExistence>, where <verbatim|p.mesh> is the
  identity, this mesh component is <verbatim|q.mesh>. The public
  <verbatim|Properties> takes a period sequence only; its clause
  <verbatim|wilson> is <verbatim|WilsonFamily.Converges ((p.refine q).per)
  \<ldots\>>, which demands the full mesh limit at every suitable period, and
  <verbatim|YangMills.wilsonLimit> (<verbatim|Lean/HierarchyBridge.lean>
  44\U56) obtains it from the full-mesh <verbatim|Ordered> conjunct, not from
  <verbatim|F.room.ordered>. So full-mesh Wilson convergence and refined-mesh
  field extraction are distinct outputs, and the checkable PU-16 output for
  the public endpoint is the full-mesh statement. The full-mesh output is
  <strong|derived>, rather than a second independent compactness extraction:
  <verbatim|YM.FullVolume.Final.from_spec>
  (<verbatim|Lean/YM/FullVolume/Finale/Program.lean> 117\U126) combines
  <verbatim|F.room.ordered> with PU-15's <verbatim|PositionsUV R.family
  .full>. At each suitable fixed period, the latter supplies convergence of
  the full mesh sequence; its limit equals the refined-mesh row limit by
  <verbatim|tendsto_nhds_unique> after composition with
  <verbatim|f.mesh.cofinal>. The period-stage limit is then the one already
  in <verbatim|F.room.ordered>. <verbatim|YM.R2IGoals.fromFunded> calls
  exactly this argument with <verbatim|hJ.fullMesh>
  (<verbatim|Lean/YM/R2I/Campaign/Accepted.lean> 165). It does not promote
  <verbatim|copies> or <verbatim|corrected> to the full-mesh order.

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
  (<verbatim|Lean/WilsonBridge.lean>, <verbatim|Lean/HierarchyBridge.lean>).
  <verbatim|YangMills.regular : g.IsSimple \<rightarrow\> C.Makes
  \<rightarrow\> WilsonRegularity (wilsonFamily C)> needs only
  <verbatim|C.Makes> (the <verbatim|cutoff> field of
  <verbatim|YM.Spec.Seed>); its <verbatim|running> clause uses the slope
  <verbatim|2\<centerdot\>Pert.Asymptotics.b0 g.core>, the bare-coefficient
  case of unit YM-000022 (not traced further).>|<cell|PU-05\UPU-13 and BG
  inputs, <strong|prove> the selected-run, full-mesh UV and regularity
  statements. Suppress campaign bookkeeping only after checking it carries no
  extra mathematical hypothesis. III.13's alternative Sharp-Gram family is
  outside this output.>>|<row|<cell|<strong|PU-16>,
  <verbatim|blueprint/units/\<less\>new-issue-16\<gtr\>/>>|<cell|The
  <em|same> <verbatim|R.family>; an arbitrary <verbatim|p :
  Extraction.Order>; funded bounds and <verbatim|YM.FullVolume.PositionsUV
  R.family .full> from PU-15 (the fixed-period full-mesh limit
  input).>|<cell|A refinement <verbatim|q>, table <verbatim|S>, ordered
  two-stage Wilson limits <strong|both> on the full-mesh order <verbatim|{
  mesh := .full, per := (p.refine q).per }> (the checkable public output, see
  "Two orders") and on <verbatim|p.refine q>, generic point limits, and a
  Euclidean <verbatim|S.Hierarchy> with its precise fields: basic laws, real
  spin, translations, reflection positivity both for words and smeared tests,
  smoothness and capped growth. <strong|<verbatim|YM.Spec.Seed> is not the
  PU-16 output contract.> Of its six fields, PU-16 owns <verbatim|ordered>,
  <verbatim|generic> and <verbatim|kernel>; <verbatim|cutoff : C.Makes> is
  the PU-15 family property; <verbatim|copies : YM.Cells.CellHyp C f> and
  <verbatim|corrected : YM.Cells.RankWidths C f S> are rank-side data
  assigned to candidate PU-11 in <hlink|<verbatim|rank-determinant-stress.md>|rank-determinant-stress.tm>,
  Contract B (C13 edge C13-to-C14-stress-history). The source theorem
  <verbatim|YM.MergeProof.Accent.rated> (<verbatim|Lean/YM/MergeProof/Powder.lean>
  48\U54) returns the <strong|whole> <verbatim|Seed>, including
  <verbatim|ordered>, <verbatim|generic> and <verbatim|kernel>, and starts
  with <verbatim|YM.Extraction.crops> (<verbatim|Lean/YM/Extraction/Held.lean>
  136). Thus this ownership split is editorial; no separate source producer
  of only PU-16's three fields is identified here.
  <verbatim|YM.MergeProof.Acme.emanate> (<verbatim|Lean/YM/MergeProof/Emanate.lean>
  31\U36) consumes both <verbatim|s.copies> and <verbatim|s.corrected>: its
  <verbatim|readyA> call also takes <verbatim|s.cutoff>,
  <verbatim|s.ordered>, <verbatim|s.generic> and <verbatim|s.kernel>, and
  obtains the dimension bound from <verbatim|Next.UVStress.cap_given
  s.corrected>. A PU-16 assembly takes the rank-side pair as stated inputs;
  the stress handoff must retain both and the other used seed fields.
  <verbatim|YM.Extraction.Order.Ordered> / <verbatim|PointLimits>
  (<verbatim|Lean/YM/Extraction/Limits.lean>), <verbatim|YM.Spec.Seed>
  (<verbatim|Lean/YM/Spec/Closed.lean>), <verbatim|YM.Table.Hierarchy>
  (<verbatim|Lean/YM/Euclid/Words.lean>); the combined source receipt is
  <verbatim|YM.R2IGoals.Broad.refine> (<verbatim|Lean/YM/R2I/Campaign/Accepted.lean>).>|<cell|PU-15
  and volume/UV estimates of PU-13, <strong|prove> compactness, limit passage
  and preservation of Euclidean properties. A <verbatim|Spec.Final> is
  <em|not> the output contract: it contains later phase and reconstruction
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
  (<verbatim|Lean/YM/Spec/Closed.lean>). <strong|Ownership of the certificate
  fields.> <verbatim|Final.phase : Materializes sector \<alpha\> _> has two
  parts. <verbatim|transport : Spec.Locals X h> (inclusions, derivatives,
  orientation, rotation laws, <verbatim|Maxwell.Ranks>, conservation,
  tensoriality and <verbatim|charges : StressLaws S \<ldots\>> for the
  unselected table) is <strong|not> a PU-17 output: it belongs to the
  derivative, rank and stress units (PU-11, PU-20). <verbatim|phase :
  OS.Selection.Certificate> has the fields <verbatim|lengths>,
  <verbatim|still>, <verbatim|decomposition>, <verbatim|chosen>,
  <verbatim|states>, <verbatim|sym>, <verbatim|retains>,
  <verbatim|coordinates>, <verbatim|calculus>, <verbatim|flux>,
  <verbatim|goes>, <verbatim|heat>. PU-17 owns <verbatim|decomposition>,
  <verbatim|chosen>, <verbatim|states> (each phase table satisfies
  <verbatim|Hierarchy>), <verbatim|retains>, <verbatim|still> and
  <verbatim|lengths>/<verbatim|goes>; <verbatim|flux : \<forall\> i,
  StressLaws (C.ensemble i) J P.deriv R.lie> carries the stress laws to every
  phase and therefore crosses into PU-20, and <verbatim|sym>,
  <verbatim|coordinates>, <verbatim|calculus> transport the rotation and
  derivative structure of PU-20's neighbourhood to each phase. <verbatim|heat
  : C.leaps.UniqueHeat> concerns the <strong|selected> chamber only;
  uniqueness for every phase appears only in PU-19 as
  <verbatim|Completed.euclid>.>|<cell|PU-16, <strong|prove> the
  spectral/phase representation and retention of the quotient and symmetry
  properties. Check whether the selected point is obtained by a separate
  extremality step; do not assume every character has selected-vacuum
  properties from the mixture identity.>>|<row|<cell|<strong|PU-18>,
  <verbatim|blueprint/units/\<less\>new-issue-18\<gtr\>/>>|<cell|PU-16
  hierarchy and PU-17 selected phase <verbatim|S_{x\<#2080\>}>; positive-time
  reflection, continuity/growth and boundary data required by the actual
  reconstruction.>|<cell|The <strong|unselected> contour <verbatim|allWorld :
  B.From S> and the selected contour <verbatim|chosen : A.From (Y.ensemble
  Y.atPoint)>, the two contour fields of <verbatim|YM.Spec.Relativistic>,
  together with a Wightman realization on a Hilbert space, with normalized
  cyclic vacuum, dense domain, tempered operator-valued distributions,
  adjoints, locality, Poincaré covariance, spectral support in the forward
  cone, and uniqueness of the translation-invariant vacuum. Also state the
  selected imaginary-time root and boundary-limit identities.
  <verbatim|YM.OS.realization> (<verbatim|Lean/YM/OS/Dynamics.lean>)
  constructs a chamber from <verbatim|S.Hierarchy>;
  <verbatim|YM.Spec.Relativistic> / <verbatim|YM.Spec.Final.realization>
  (<verbatim|Lean/YM/Spec/Closed.lean>), <verbatim|YM.Boundary.Wightman.Realizes>
  (<verbatim|Lean/YM/Fields/System.lean>), and
  <verbatim|YM.Boundary.Contour.From> (<verbatim|Lean/YM/Boundary/Contour.lean>)
  describe the stronger endpoint. The fields of <verbatim|Wightman.Realizes>
  are <verbatim|induced>, <verbatim|letters>, <verbatim|total>,
  <verbatim|adj>, <verbatim|meets>, <verbatim|localPairs>,
  <verbatim|faithful>, <verbatim|covariance>, <verbatim|spectral>,
  <verbatim|forward>, <verbatim|unique>; the prose reading above is
  unverified for <verbatim|Total>, <verbatim|sharpPair>, <verbatim|realizes>,
  <verbatim|commutes>, <verbatim|notLost>, <verbatim|Symmetries> (not
  unfolded), and <verbatim|faithful> must be listed in the output. The
  Wightman object is typed over the unselected table (<verbatim|Final.action
  : Boundary.Wightman S>); its link to the selected phase is through
  <verbatim|Relativistic.chosen>, not through the type.
  <verbatim|YM.Nonperturbative.Headline.Reconstruction>
  (<verbatim|Lean/YM/Nonperturbative/HeadlineSpec.lean>; fields
  <verbatim|unselected>, <verbatim|selected>, <verbatim|chosen>,
  <verbatim|characters>, <verbatim|average>) is a ready-made projection and
  may be the better checkable target for PU-18 (<verbatim|unselected>,
  <verbatim|selected>, <verbatim|chosen>) and PU-19 (<verbatim|characters>,
  <verbatim|average>).>|<cell|PU-16\UPU-17, <strong|cite and apply?> only
  after issue #6 checks every hypothesis of a precise OS theorem against
  these definitions; otherwise <strong|prove> missing steps.
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
  (<verbatim|Lean/HierarchyBridge.lean>); its use of the almanac/certificate
  arguments is separated from mathematical ownership below.
  <verbatim|YM.EveryPhase.all_characters : \<exists\> L, Completed F L> for
  every <verbatim|F : Spec.Final C f S> is a standalone source theorem whose
  only input is a <verbatim|Final>, and <verbatim|YM.EveryPhase.barycenter>
  holds for any <verbatim|Almanac>, without <verbatim|Completed>. <strong|Two
  mixtures with different owners.> The pointwise Euclidean identity is a
  <strong|PU-17> output (using PU-16 translations). Although
  <verbatim|publicReconstruction> calls <verbatim|Completed.at_words>,
  <verbatim|all_characters> fills this field by
  <verbatim|F.\<alpha\>.space.barycenter _ F.phase.phase.decomposition
  F.phase.phase.chosen F.room.kernel.translations>
  (<verbatim|Lean/YM/EveryPhase/Extension.lean> 79\U80), with no field of
  <verbatim|L>. PU-19 cites that identity and owns the distinct
  boundary-distribution mixture <verbatim|Completed.at_boundary> /
  <verbatim|Headline.Reconstruction.average>. The public
  <verbatim|Hierarchy.Reconstructed.mixture> uses the former, not the latter.
  <strong|Integrability.> The internal boundary statement
  <verbatim|YM.Boundary.Waves.Opens> (<verbatim|Lean/YM/Boundary/Contour.lean>
  89\U93) has the fields <verbatim|int> (integrability of the restricted
  continuation against tests) and <verbatim|profile> (the limit); the public
  <verbatim|Hierarchy.Reconstructed.boundary>
  (<verbatim|Lean/ChallengeSpec.lean> 139\U143) states only the limit of the
  integrals. A unit that proves the boundary limit states integrability as
  part of its output, although the public bridge does not consume
  it.>|<cell|PU-17\UPU-18, <strong|prove> uniform character and boundary
  passage. Do not fold its <verbatim|continued_stress> field into this
  ownership: its mathematical proof belongs to PU-20 after a separate
  handoff.>>>>>

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
  construction. The fifteen clauses of the public
  <verbatim|YangMills.Hierarchy.Reconstructed> are mapped below; none may be
  inferred merely from the word \Preconstruction.\Q

  <section|Calibration, field algebra and the public
  projection><label|calibration-field-algebra-and-the-public-projection>

  <verbatim|YM.Spec.Final.calibration : YM.Spec.Calibrated C> is a
  family-level receipt, independent of the extraction order and table. Its
  definition in <verbatim|Lean/YM/Spec/Closed.lean> 58\U61 retains the sheet,
  block lengths, protection/delays, directed trajectory and finite histories,
  their <verbatim|Stays> property, equality to <verbatim|C.path>, and the
  adjacent <verbatim|Move> relations. <strong|Proposed owner: PU-15>,
  retaining these calibration witnesses on its selected family; this is an
  additional output requirement, not a proof supplied by this note.
  <verbatim|YM.Pert.withFinal> (<verbatim|Lean/YM/Pert/Construction.lean>
  21\U31) takes <verbatim|Calibrated C> as an input and places it in
  <verbatim|Final>; <verbatim|Run.extractible17> supplies that argument from
  its reception data. <verbatim|YM.Nonperturbative.existence>
  (<verbatim|Lean/YM/Nonperturbative/Headlines.lean> 26) projects
  <verbatim|F.calibration> for the corresponding conjunct of
  <verbatim|YangMills.constructed>. This immediate path does not
  independently verify production of those trajectory witnesses.

  <verbatim|Final.sector : YM.Spec.Algebra S> is data comprising
  <verbatim|derivatives : DiffPlan S>, <verbatim|turns : Rotation S>, and
  <verbatim|energy : Stress S>. Its construction and laws belong to the
  derivative/rank/stress units (PU-11/PU-20 neighbourhood), <strong|outside
  PU-15\UPU-19>; PU-17/PU-18 consume this same algebra through
  <verbatim|Materializes>/<verbatim|Relativistic>. In
  <verbatim|Pert.withFinal>, it is exactly <verbatim|\<langle\>W, mill M I c
  U, J\<rangle\>>, with the equality retained by
  <verbatim|Run.extractible17>. In particular neither the existence of
  <verbatim|S.Hierarchy> nor the phase barycenter alone supplies this algebra
  or <verbatim|Locals.injection>.

  The following is the complete field-order map of
  <verbatim|YangMills.Hierarchy.Reconstructed>
  (<verbatim|Lean/ChallengeSpec.lean> 117\U143), checked against
  <verbatim|YangMills.publicReconstruction>
  (<verbatim|Lean/HierarchyBridge.lean> 79\U133). Proposed unit owners name
  mathematical obligations; existing source arguments remain unchanged.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Public
  clause>>|<cell|<strong|Immediate source used by the
  bridge>>|<cell|<strong|Proposed mathematical
  owner/input>>>|<row|<cell|<verbatim|axioms>>|<cell|<verbatim|view_axioms _
  F.realization.qt>>|<cell|PU-18 selected Wightman realization and public
  projection.>>|<row|<cell|<verbatim|faithful>>|<cell|<verbatim|F.realization.qt.faithful>>|<cell|PU-18
  label faithfulness.>>|<row|<cell|<verbatim|injective>>|<cell|<verbatim|S.pin_inj>>|<cell|PU-16
  exposition of the all-spectator quotient definition: for every table,
  <verbatim|S.Field d = L.Ref d \<#29F8\> S.null d>, where <verbatim|null> is
  the kernel of <verbatim|replies>. The induced response map
  <verbatim|S.spectra d> is injective (<verbatim|S.faithfully>), and its
  codomain restriction <verbatim|S.pin d> remains injective
  (<verbatim|Lean/YM/Euclid/Null.lean>, <verbatim|Union.lean>). This is a
  quotient fact, not an additional analytic
  input.>>|<row|<cell|<verbatim|acts>>|<cell|<verbatim|S.alive 0
  F.room.kernel.laws>, <verbatim|S.pin_inj>, then <verbatim|qt.faithful> on
  the nonzero unit label>|<cell|PU-16 nonzero grade-zero unit and PU-18
  faithful realization.>>|<row|<cell|<verbatim|covers>>|<cell|<verbatim|F.sector.derivatives.covered
  F.room.kernel.laws.toSymmetric F.phase.transport.injection>>|<cell|PU-16
  symmetry together with the derivative unit's <verbatim|DiffPlan> and
  <verbatim|Spec.Locals.injection> (PU-11/PU-20 neighbourhood); not PU-17
  spectral decomposition alone.>>|<row|<cell|<verbatim|represents>>|<cell|<verbatim|S.representative>,
  <verbatim|S.rep>>|<cell|PU-16 exposition of the same quotient: for every
  table, the surjective quotient map <verbatim|S.project d> has a chosen
  linear section <verbatim|S.representative d>, with <verbatim|S.project d
  (S.representative d v) = v> by <verbatim|S.rep>
  (<verbatim|Lean/YM/Euclid/Null.lean>). This representative identity is a
  quotient fact, not an additional analytic
  input.>>|<row|<cell|<verbatim|normalized>>|<cell|<verbatim|F.phase.phase.decomposition.normalized>>|<cell|PU-17
  probability measure.>>|<row|<cell|<verbatim|fullSupport>>|<cell|<verbatim|F.phase.phase.decomposition.support>>|<cell|PU-17
  full support on the character space.>>|<row|<cell|<verbatim|permutation>>|<cell|<verbatim|S.class_perm>
  applied to <verbatim|(spectate F s).laws.toSymmetric>>|<cell|PU-16 mixed
  hierarchy; PU-17 <verbatim|Certificate.states> for character
  hierarchies.>>|<row|<cell|<verbatim|smooth>>|<cell|<verbatim|S.class_smooth>
  applied to <verbatim|(spectate F s).smooth>>|<cell|PU-16 mixed hierarchy;
  PU-17 <verbatim|Certificate.states> for
  characters.>>|<row|<cell|<verbatim|characterContinuity>>|<cell|<verbatim|Certificate.chosen>
  identifies a separated word with a compressed-algebra evaluation;
  <verbatim|decomposition.weak> supplies continuity>|<cell|PU-17 on the
  actual character space.>>|<row|<cell|<verbatim|mixture>>|<cell|<verbatim|h.at_words>,
  followed by <verbatim|S.readAt>>|<cell|PU-17 barycenter with PU-16
  translations; see the separate ownership of the two
  mixtures.>>|<row|<cell|<verbatim|analytic>>|<cell|<verbatim|F.realization.chosen.heat.hol>>|<cell|PU-18
  selected contour.>>|<row|<cell|<verbatim|root>>|<cell|<verbatim|F.realization.chosen.heat.roots>,
  after the position identity>|<cell|PU-18 selected imaginary-time
  roots.>>|<row|<cell|<verbatim|boundary>>|<cell|<verbatim|F.realization.chosen.emerges.profile>,
  with <verbatim|publicMoment _ F.realization.qt.meets>>|<cell|PU-18 selected
  boundary limit linked to the Hilbert-space vacuum moments;
  <verbatim|Opens.int> is an additional internal output, not consumed by this
  public clause.>>>>>

  <strong|Literal call versus smaller mathematical interface.> The current
  <verbatim|publicReconstruction> signature does take <verbatim|L :
  EveryPhase.Almanac F> and <verbatim|h : EveryPhase.Completed F L>, and its
  proof calls <verbatim|h.at_words>. It does not use an almanac field,
  <verbatim|at_boundary>, <verbatim|Relativistic.allWorld>, or
  <verbatim|Headline.Reconstruction>. Since the proof of <verbatim|at_words>
  above is already PU-17's barycenter, none of the specifically PU-19
  every-character Wightman/boundary results is needed for these fifteen
  mathematical clauses. A smaller projected theorem could take that
  barycenter identity directly; no such Lean refactoring is made or claimed
  here. The existing <verbatim|constructed>/<verbatim|jointExistence> proof
  still obtains <verbatim|L,h> along the full source route. The stronger
  internal conjuncts of <verbatim|constructed> retain
  <verbatim|Independent.Core>, <verbatim|Headline.Reconstruction> and the
  all-character <verbatim|view (L.actors i).Axioms> conclusions, which do
  need the PU-19 data. The public <verbatim|hierarchy F Q> itself mentions no
  <verbatim|L>. This distinction does not assert a new independent proof of
  the public OPE or trace producers.

  <section|Conceptual graph and source-graph
  limit><label|conceptual-graph-and-source-graph-limit>

  Proposed mathematical order for the stronger internal endpoint:
  <strong|PU-15 \<rightarrow\> PU-16 \<rightarrow\> PU-17 \<rightarrow\>
  PU-18 \<rightarrow\> PU-19 \<rightarrow\> PU-27>, with PU-13 feeding PU-16
  and PU-20 receiving the separate continued-stress output from PU-19's
  source neighbourhood. For the public reconstruction clauses, the projected
  path goes from PU-18 to PU-27 without requiring the specifically PU-19
  results; it also retains the derivative-side <verbatim|covers> input above.
  This is a proposed mathematical split, not a claim that the current public
  source proof avoids the larger receipt. PU-18 uses the selected phase;
  PU-19 applies and strengthens the reconstruction across all characters and
  proves mixture of boundary distributions. This order is acyclic only after
  projecting <verbatim|Spec.Final> and <verbatim|Broad.refine> into the
  smaller mathematical interfaces above. For PU-19 there is a standalone
  source theorem, <verbatim|YM.EveryPhase.all_characters>, whose only input
  is a <verbatim|Final>; for PU-16\UPU-18 no independent source theorem for
  the projection has been identified. The split is an editorial proof
  obligation, not a Lean refactoring.

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

    <item>The selected <verbatim|Spec.Final> is produced, given an
    <verbatim|OPE.Package> hypothesis, within
    <verbatim|YM.PhysicalNext.Repeat.Legato.Run.extractible17>
    (<verbatim|Lean/YM/RG17/Joint.lean>, which returns <verbatim|\<exists\> g
    S F X, OPE.Services \<ldots\> \<wedge\> FirstExtension F X>), while
    <verbatim|YM.R2IGoals.Broad.refine> adds all-character reconstruction. A
    reviewer must confirm the smallest exact source declarations that support
    each proposed projected theorem, and whether the PU-16 compactness and
    Euclidean-hierarchy output needs two issue tasks. The whole-seed output
    of <verbatim|Accent.rated> has the same splitting problem: its extraction
    starts with <verbatim|Extraction.crops>, while its returned seed includes
    both PU-16 and rank-side fields. Until these interfaces are proved or
    matched, the paths above are issue-ready <em|candidates>, not claims that
    five independent theorems already exist.

    <item>The reconstruction units cross into PU-20 at three places, not one:
    <verbatim|Spec.Locals> (via <verbatim|Final.phase.transport>, including
    <verbatim|charges : StressLaws> for the unselected table),
    <verbatim|OS.Selection.Certificate.flux> (stress laws for every phase),
    and <verbatim|EveryPhase.Completed.continued_stress>. The public
    <verbatim|covers> clause adds a specific derivative-side crossing through
    <verbatim|Spec.Locals.injection> and <verbatim|DiffPlan.covered>. Their
    assumptions and use by the public theorem need the derivative/PU-20
    owners to agree on a shared interface; this audit assigns only the phase
    decomposition (PU-17) and the reconstruction and boundary-distribution
    mixture fields (PU-19).

    <item>Whether <verbatim|Relativistic.allWorld> (the unselected contour)
    is proved independently of the phase mixture, or from it, was not traced;
    this note assigns it to PU-18 as a stated output, and PU-19's
    <verbatim|Completed.at_boundary> and <verbatim|Headline.Reconstruction.average>
    consume it. The public <verbatim|Reconstructed> bridge does not use it,
    as the fifteen-clause map shows. This consumer check does not resolve its
    internal proof route.

    <item>The public statement ledger is an author draft awaiting independent
    Lean correspondence review. The proposed split also requires independent
    correspondence review before canonical explanation issues are marked
    ready. Neither the pinned build/axiom report nor this audit certifies the
    mathematical interpretation of the complete construction.
  </enumerate>

  <section|Response to the PR #18 review and G01
  P9><label|response-to-the-pr-18-review-and-g01-p9>

  Review: <hlink|PR #18 comment|https://github.com/hairer/humanise-yang-mills/pull/18#issuecomment-6818538839>
  (mgubi, at <verbatim|713f977>). G01 P9:
  <hlink|<verbatim|proposed-patches.md>|https://github.com/hairer/humanise-yang-mills/blob/main/blueprint/units/YM-000026/handoff/results/G01/proposed-patches.md#p9-additions-for-the-11-interface-note-for-its-owner>.
  This table records the PR #170 response; the ownership corrections from
  subsequent review #228 are incorporated below, especially the separation of
  the two mixture owners.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Item>>|<cell|<strong|Response>>>|<row|<cell|Requested
  1: <verbatim|Spec.Seed> fields <verbatim|cutoff>, <verbatim|copies>,
  <verbatim|corrected>>|<cell|Edited (PU-16 row): <verbatim|ordered>,
  <verbatim|generic>, <verbatim|kernel> to PU-16; <verbatim|cutoff> to PU-15;
  <verbatim|Accent.rated> produces the whole seed, so PU-16/rank ownership is
  an editorial split; both <verbatim|copies> and <verbatim|corrected>, with
  the other seed fields, are consumed by stress (R4
  below).>>|<row|<cell|Requested 2: unselected contour
  <verbatim|allWorld>>|<cell|Edited (PU-18 row): stated as a PU-18 output
  together with <verbatim|chosen>; open question 4 records that its proof
  route was not traced.>>|<row|<cell|Requested 3:
  <verbatim|Certificate.flux>>|<cell|Edited (PU-17 row, open question 3):
  certificate fields assigned; <verbatim|flux>, <verbatim|sym>,
  <verbatim|coordinates>, <verbatim|calculus> and <verbatim|Spec.Locals>
  cross into PU-20.>>|<row|<cell|Requested 4: two orders>|<cell|Edited ("Two
  orders" paragraph, PU-16 row), with the P9.1
  wording.>>|<row|<cell|Observation: <verbatim|all_characters>
  standalone>|<cell|Edited (PU-19 row, conceptual
  graph).>>|<row|<cell|Observation: phasewise vs selected
  uniqueness>|<cell|Edited (PU-17 row: <verbatim|heat> selected only,
  <verbatim|Completed.euclid> every phase).>>|<row|<cell|Observation:
  Wightman typed over <verbatim|S>>|<cell|Edited (PU-18
  row).>>|<row|<cell|Observation: <verbatim|regular> needs only
  <verbatim|C.Makes>>|<cell|Edited (PU-15 row).>>|<row|<cell|Observation:
  <verbatim|extractible17> conditional on
  <verbatim|OPE.Package>>|<cell|Edited (open question
  2).>>|<row|<cell|Observation: <verbatim|Headline.Reconstruction>
  projection>|<cell|Edited (PU-18 row).>>|<row|<cell|Not checked by reviewer:
  reading of <verbatim|Realizes>; <verbatim|faithful> omitted>|<cell|Field
  list added and <verbatim|faithful> named; the prose reading is marked
  unverified for the definitions not unfolded.>>|<row|<cell|P9.1 full-mesh
  public output>|<cell|Edited ("Two orders").>>|<row|<cell|P9.2 pointwise
  mixture vs boundary-distribution mixture>|<cell|Distinct statements
  retained; corrected ownership is PU-17 for the pointwise barycenter and
  PU-19 for the boundary mixture (R1 below), rather than both belonging to
  PU-19.>>|<row|<cell|P9.3 integrability <verbatim|Opens.int>>|<cell|Edited
  (PU-19 row).>>>>>

  <section|Response to independent review #228
  (R1\UR5)><label|response-to-independent-review-228-r1r5>

  Bounded author session <verbatim|mgubi-astra-interface160-response-20261113>,
  <hlink|claim|https://github.com/hairer/humanise-yang-mills/issues/160#issuecomment-6863374433>.
  Review #228 is frozen at <verbatim|55bb3f4bdd647a6ff91875d981855c5edae05ada>;
  reviewed note #170 is <verbatim|fdfd0867fed13baca9b31d154a2cd394ca78ba1b>
  (identical note at base <verbatim|69b2631f7a3d3c4176ca0084d8607cb9d8d124a2>,
  SHA-256 <verbatim|c6748f0844a71a0d35f859b2ca62ed69be8b6fb4835e3116f36d343b7aa3c558>).
  This is author work, not independent acceptance by the account that
  reviewed the original note.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Request>>|<cell|<strong|Checked
  response>>>|<row|<cell|R1: two mixtures>|<cell|PU-17 owns the pointwise
  barycenter. The actual <verbatim|all_characters> proof of
  <verbatim|at_words> uses decomposition/chosen/translations and no almanac
  field. PU-19 cites it and owns the boundary-distribution mixture. P9.2's
  ownership wording is corrected here without editing G01's historical
  proposal.>>|<row|<cell|R2: public clauses and dependencies>|<cell|All
  fifteen clauses are mapped to the immediate terms and proposed owners
  above, including derivative-side <verbatim|covers>, unit-label
  <verbatim|acts>, <verbatim|characterContinuity> and the <verbatim|qt.meets>
  link in <verbatim|boundary>. The literal L/Completed signature and
  <verbatim|h.at_words> call are preserved; only the smaller mathematical
  dependency is distinguished.>>|<row|<cell|R3: full
  mesh>|<cell|<verbatim|from_spec> combines <verbatim|F.room.ordered> and
  <verbatim|PositionsUV \<ldots\> .full>, identifies their fixed-period
  limits by subsequence uniqueness and retains the period limit. Both orders
  remain in the output; no rank receipt is asserted on the full-mesh
  order.>>|<row|<cell|R4: whole seed and stress>|<cell|<verbatim|rated>
  returns the entire seed and begins with <verbatim|Extraction.crops>.
  <verbatim|emanate> passes copies and corrected, as well as the other used
  seed fields, to the stress construction. The proposed split remains an
  editorial proof obligation.>>|<row|<cell|R5: calibration and
  sector>|<cell|Family-level calibration retention is proposed for PU-15,
  with its immediate input/projection route shown. Sector data and their laws
  remain outside PU-15\UPU-19 with derivative/rank/stress ownership. No new
  supplier proof is claimed.>>>>>

  <section|Evidence and limits><label|evidence-and-limits>

  R1\UR5 author-response validation (13 November 2026): inspected the
  immediate definitions and proof terms in
  <verbatim|Lean/ChallengeSpec.lean>, <verbatim|Lean/HierarchyBridge.lean>,
  <verbatim|Lean/YM/Spec/Closed.lean>, <verbatim|Lean/YM/EveryPhase/Extension.lean>,
  <verbatim|Lean/YM/Phase/Mixture.lean>, <verbatim|Lean/YM/FullVolume/Finale/Program.lean>,
  <verbatim|Lean/YM/FullVolume/Profiles.lean>,
  <verbatim|Lean/YM/R2I/Campaign/Accepted.lean>,
  <verbatim|Lean/YM/MergeProof/Powder.lean>,
  <verbatim|Lean/YM/Extraction/Held.lean>,
  <verbatim|Lean/YM/MergeProof/Emanate.lean>,
  <verbatim|Lean/YM/Pert/Construction.lean>,
  <verbatim|Lean/YM/RG17/Joint.lean>, <verbatim|Lean/YM/Nonperturbative/Headlines.lean>,
  <verbatim|Lean/Construction.lean> and <verbatim|Lean/Solution.lean> at the
  source pin above. These checks support the displayed fields, calls and
  local limit-identification argument; they do not audit the full analytic
  producers, the rest of <verbatim|rated>, or the untraced
  <verbatim|allWorld> proof. The source versions are frozen by repository
  base <verbatim|69b2631f7a3d3c4176ca0084d8607cb9d8d124a2>; per-file SHA-256
  fingerprints are included in the response PR. <verbatim|python3
  scripts/check_blueprint.py> passed (four proof units); <verbatim|git diff
  --check> passed; the only changed file is this note, with <verbatim|Lean/>
  and source metadata unchanged. No new Lean build, axiom replay or LaTeX
  build was run for this Markdown-only change. Independent mathematical and
  correspondence acceptance remains unset; the prior review fingerprint is
  not refreshed.

  Revision for #160 (13 November 2026): read at the pin
  <verbatim|Lean/YM/Spec/Closed.lean> (<verbatim|Seed>, <verbatim|Locals>,
  <verbatim|Materializes>, <verbatim|Relativistic>, <verbatim|Final>),
  <verbatim|Lean/YM/Phase/Mixture.lean> 136\U150
  (<verbatim|Selection.Certificate>), <verbatim|Lean/YM/Fields/System.lean>
  124 ff. (<verbatim|Wightman.Realizes> field names),
  <verbatim|Lean/YM/EveryPhase/Extension.lean> (<verbatim|Completed> fields,
  <verbatim|all_characters>), <verbatim|Lean/YM/EveryPhase/Barycenter.lean>
  75\U76, <verbatim|Lean/YM/Nonperturbative/HeadlineSpec.lean> 75\U81,
  <verbatim|Lean/YM/RG17/Joint.lean> 61\U65,
  <verbatim|Lean/YM/Boundary/Contour.lean> 89\U93,
  <verbatim|Lean/ChallengeSpec.lean> 136\U143,
  <verbatim|Lean/HierarchyBridge.lean> 16\U18, 44\U56, 100\U112,
  <verbatim|Lean/Construction.lean> 23, <verbatim|Lean/YM/R2I/Campaign/Accepted.lean>
  141, <verbatim|Lean/YM/Cells/{Packing,Corrected}.lean> (definitions of
  <verbatim|CellHyp>, <verbatim|RankWidths>); and the ownership records
  <verbatim|blueprint/interfaces/rank-determinant-stress.md> (Contract B) and
  <verbatim|results/C13/ledger.md> (C13-to-C14-stress-history). No Lean
  elaboration in this revision; the reviewer's [E] evidence is reused with
  its stated scope.

  Original draft:

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
    <associate|auto-4|<tuple|4|6>>
    <associate|auto-5|<tuple|5|7>>
    <associate|auto-6|<tuple|6|7>>
    <associate|auto-7|<tuple|7|8>>
    <associate|auto-8|<tuple|8|9>>
    <associate|auto-9|<tuple|9|10>>
    <associate|calibration-field-algebra-and-the-public-projection|<tuple|3|4>>
    <associate|candidate-inputoutput-contracts|<tuple|2|2>>
    <associate|conceptual-graph-and-source-graph-limit|<tuple|4|6>>
    <associate|construction-to-reconstruction-proposed-proof-interfaces|<tuple|?|1>>
    <associate|evidence-and-limits|<tuple|9|10>>
    <associate|notation-handoff-to-issue-10|<tuple|5|7>>
    <associate|open-questions-and-review-gates|<tuple|6|7>>
    <associate|quantifier-and-data-contract|<tuple|1|1>>
    <associate|response-to-independent-review-228-r1r5|<tuple|8|9>>
    <associate|response-to-the-pr-18-review-and-g01-p9|<tuple|7|8>>
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

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Calibration,
      field algebra and the public projection>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Conceptual
      graph and source-graph limit> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Notation
      handoff to issue #10> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Open
      questions and review gates> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Response
      to the PR #18 review and G01 P9> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Response
      to independent review #228 (R1\UR5)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Evidence
      and limits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>