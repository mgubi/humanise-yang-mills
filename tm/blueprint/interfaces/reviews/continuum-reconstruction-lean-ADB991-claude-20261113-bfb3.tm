<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../outline.tm><ym-nav-sep><hlink|Unit
  plan|../../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../index.tm><ym-nav-sep><hlink|Manuscript|../../../manuscript/index.tm><ym-nav-sep><hlink|Monograph|../../../manuscript/existence.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Review of an interface audit: construction to reconstruction
  (#160 revision)><label|review-of-an-interface-audit-construction-to-reconstruction-160-revision>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Method and
    limits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Confirmed [S]>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|The PU-18
    reading of <with|font-family|tt|language|verbatim|Wightman.Realizes>,
    checked [S]> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Requested
    changes> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Optional
    observations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Not checked>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Acceptance>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>
  </table-of-contents>

  <\itemize-minus>
    <item>Reviewed file: <verbatim|blueprint/interfaces/continuum-reconstruction.md>,
    the #160 revision merged in PR #170 (commit
    <verbatim|fdfd0867fed13baca9b31d154a2cd394ca78ba1b>). The author session
    was <verbatim|hairer-claude-interface-160-20261113>.

    <item>Role: Lean correspondence, with a check of the mathematical meaning
    of each cited definition. This is the "renewed independent correspondence
    review" that #160's acceptance criteria call for.

    <item>Human reviewer: ADB991. No acceptance is recorded; see the last
    section.

    <item>Agent assistance: Claude Code (Anthropic), running as a scheduled
    agent on behalf of ADB991 (session <verbatim|ADB991-claude-20261113-bfb3>),
    did the inspection and wrote this report. ADB991 had not read it before
    it was submitted. No subagents were used.

    <item>Content SHA-256: <verbatim|c6748f0844a71a0d35f859b2ca62ed69be8b6fb4835e3116f36d343b7aa3c558>.
    This is the <verbatim|sha256sum> of the file at <verbatim|fdfd086>, and
    it is identical at <verbatim|codex/existence-monograph>
    <verbatim|69b2631>.

    <item>Source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>,
    which is <verbatim|Lean/> in this repository. <verbatim|sha256sum -c
    Lean/SOURCES.sha256> reports 9,497 files OK. The only failures are the 10
    <verbatim|verification/*.log> files, which were never imported.

    <item>Review task: <hlink|issue #160|https://github.com/hairer/humanise-yang-mills/issues/160>,
    claim <hlink|https://github.com/hairer/humanise-yang-mills/issues/160#issuecomment-6862024252|https://github.com/hairer/humanise-yang-mills/issues/160#issuecomment-6862024252>.

    <item>Independence: ADB991 did not write the note (#18, #170), the PR #18
    review, or G01 P9.

    <item>Outcome: <strong|minor changes requested.> I found no false
    statement about a source declaration. Every response-table row is
    answered as claimed, and every field list I checked is complete. The
    changes concern ownership. The pointwise mixture identity is a PU-17
    output, not a PU-19 output (R1). The public <verbatim|Reconstructed>
    clauses come from more units than the note lists, and PU-19 does not
    reach the public statement at all (R2). Three smaller points follow
    (R3\UR5). The PU-18 reading of <verbatim|Wightman.Realizes>, which the
    note marks as unverified, is checked below and is correct, with one
    omission (<verbatim|meets>).
  </itemize-minus>

  <section|Method and limits><label|method-and-limits>

  Evidence level: <strong|[S]> means source text read at the pin, including
  binders and the proof terms that the findings depend on. <strong|Nothing
  was elaborated.> This sandbox cannot reach the Mathlib cache or Mathlib's
  GitHub repository, so <verbatim|lake> cannot build dependencies. All
  statements about which fields a proof uses come from reading the proof term
  or tactic script. These scripts are short anonymous-constructor terms, and
  I quote them below. Where a claim depends on a proof I did not read, I say
  so.

  Files read at the pin: <verbatim|Construction.lean>,
  <verbatim|Solution.lean>, <verbatim|ChallengeSpec.lean>,
  <verbatim|HierarchyBridge.lean>, <verbatim|WilsonBridge.lean>,
  <verbatim|PublicWilson.lean> (<verbatim|Converges>, <verbatim|suitable>),
  <verbatim|PublicView.lean> 102\U114, <verbatim|YM/Spec/Closed.lean>,
  <verbatim|YM/Phase/Mixture.lean>, <verbatim|YM/EveryPhase/{Extension,Pack,Barycenter}.lean>
  (the latter two in part), <verbatim|YM/Boundary/Contour.lean>,
  <verbatim|YM/Fields/System.lean>, <verbatim|YM/Fields/Star.lean> 22\U60,
  <verbatim|YM/Mink/{Poincare,Geometry}.lean> (in part),
  <verbatim|YM/Spectral/Frequencies.lean> 60\U75,
  <verbatim|YM/Extraction/{Orders,Limits}.lean>,
  <verbatim|YM/Extraction/Held.lean> 136,
  <verbatim|YM/R2I/Campaign/Accepted.lean> 60, 110\U180,
  <verbatim|YM/FullVolume/Finale/Program.lean> 117\U133,
  <verbatim|YM/FullVolume/Profiles.lean> 25\U31,
  <verbatim|YM/MergeProof/{Powder,Emanate}.lean> (<verbatim|rated>,
  <verbatim|emanate>), <verbatim|YM/Nonperturbative/{Continuum,Headlines,HeadlineSpec}.lean>
  (in part), <verbatim|YM/Independent/{ConstructionRun,Core}.lean> (in part),
  <verbatim|YM/RG17/Joint.lean> 55\U70, <verbatim|YM/OS/Dynamics.lean> 106,
  <verbatim|YM/Euclid/Words.lean> 141\U148. I also read the PR #18 review
  comment and G01 P9 (<verbatim|blueprint/units/YM-000026/handoff/results/G01/proposed-patches.md>).

  <section|Confirmed [S]><label|confirmed-s>

  <\enumerate>
    <item><strong|Response table.> Each of the 14 rows corresponds to an edit
    that is present in the note, at the place the table names. The note's
    restatements of the PR #18 review items and of P9.1\UP9.3 are faithful to
    those sources.

    <item><strong|Quantifier contract.> <verbatim|continuum_with_position_tests>
    (Continuum.lean 28\U39) fixes <verbatim|R := fundedRun hG hb> and then
    states <verbatim|\<forall\> p, \<exists\> q S F L Q M, \<ldots\>
    \<wedge\> \<exists\> X, \<ldots\>>. <verbatim|constructionRun> returns
    <verbatim|R, T, W> with the penalty, <verbatim|R2I.Funded> and the
    attached native-component recipe. <verbatim|jointExistence> calls
    <verbatim|constructed> at <verbatim|b = 1> on <verbatim|\<langle\>.full,
    \<langle\>p,hp\<rangle\>\<rangle\>> and returns <verbatim|q.per>.
    <verbatim|Order.refine> composes both components (Orders.lean 40) and
    <verbatim|Sequence.full = id> (27). <verbatim|Order.limits> takes a mesh
    limit at <strong|every> period <verbatim|p> satisfying the side
    condition, not only at periods in the sequence, and then the period limit
    along <verbatim|f.per> (61\U64). <verbatim|WilsonFamily.Converges>
    (PublicWilson.lean 85\U90) has the same two-stage shape, with the full
    mesh.

    <item><strong|Two orders.> <verbatim|Construction.lean> line 23 is the
    full-mesh <verbatim|Ordered> conjunct. <verbatim|wilsonLimit>
    (HierarchyBridge 44\U56) consumes it through <verbatim|fromWilson>
    (WilsonBridge 62\U67). <verbatim|F.room.ordered : (p.refine q).Ordered C
    S>. The line references 44\U56 and 105\U112 are exact.

    <item><strong|Field lists.> All of these are complete and correctly
    named:

    <\itemize-minus>
      <item><verbatim|Seed>: 6 fields.

      <item><verbatim|Locals>: 9 fields, including <verbatim|charges :
      StressLaws \<ldots\>>.

      <item><verbatim|Materializes>: <verbatim|transport>, <verbatim|phase>.

      <item><verbatim|Relativistic>: <verbatim|allWorld>, <verbatim|chosen>,
      <verbatim|qt>.

      <item><verbatim|Selection.Certificate>: 12 fields (Mixture.lean
      136\U148; the note says 136\U150, but the file has 149 lines).

      <item><verbatim|Wightman.Realizes>: 11 fields.

      <item><verbatim|Completed>: 11 fields.

      <item><verbatim|Headline.Reconstruction>: 5 fields (HeadlineSpec
      75\U81).

      <item><verbatim|Waves.Opens>: <verbatim|int>, <verbatim|profile>
      (Contour.lean 89\U93).

      <item><verbatim|Table.Hierarchy>: 7 fields.
    </itemize-minus>

    <item><strong|Anchors.>

    <\itemize-minus>
      <item><verbatim|YM.R2IGoals.Broad.refine> is <verbatim|Accepted.lean>
      136\U148, and its full-mesh conjunct is line 141.

      <item><verbatim|Run.extractible17> (RG17/Joint.lean 61\U65) takes
      <verbatim|L : OPE.Package \<ldots\>>.

      <item><verbatim|YM.OS.realization : S.Hierarchy \<rightarrow\>
      \<forall\> a, Nonempty (Chamber S a)> (Dynamics.lean 106).

      <item><verbatim|all_characters> takes only <verbatim|F> (Extension.lean
      75\U80).

      <item><verbatim|EveryPhase.barycenter> is stated for an arbitrary
      <verbatim|L : Almanac F> (Barycenter.lean 75).

      <item><verbatim|Almanac.baseB : contours atPoint = F.A> and
      <verbatim|baseR : actors atPoint = F.action> (Pack.lean 131\U132).

      <item><verbatim|YangMills.regular> takes only <verbatim|C.Makes>
      (HierarchyBridge 16).
    </itemize-minus>

    <item><strong|<verbatim|regular>, the step the note marks "not traced
    further".> The <verbatim|running> clause is proved by
    <verbatim|Pert.Asymptotics.zeroUp_bound C h h\<varepsilon\>>, applied as
    <verbatim|hN N p le_rfl> (HierarchyBridge 22\U23). That is the
    bare-coefficient case <verbatim|m = N> of the YM-000022 statement, as the
    note says.

    <item><strong|Boundary integrability (P9.3).> The public
    <verbatim|Reconstructed.boundary> (ChallengeSpec 139\U143) is a
    <verbatim|Tendsto> of Bochner integrals with no integrability clause. The
    bridge proves it from <verbatim|F.realization.chosen.emerges.profile>
    (HierarchyBridge 124) and does not use <verbatim|emerges.int>. The note's
    request that a unit state integrability is mathematically necessary. A
    Bochner integral of a non-integrable function is <verbatim|0>, so without
    integrability the public clause is weaker than its reading.
  </enumerate>

  <section|The PU-18 reading of <verbatim|Wightman.Realizes>, checked
  [S]><label|the-pu-18-reading-of-wightmanrealizes-checked-s>

  The note marks its prose reading of <verbatim|Total>, <verbatim|sharpPair>,
  <verbatim|realizes>, <verbatim|commutes>, <verbatim|notLost> and
  <verbatim|Symmetries> as unverified. Unfolded at
  <verbatim|Lean/YM/Fields/System.lean>, <verbatim|Star.lean>,
  <verbatim|Mink/> and <verbatim|Spectral/Frequencies.lean>:

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Field>>|<cell|<strong|Definition>>|<cell|<strong|Reading>>>|<row|<cell|<verbatim|total
  : Total> (System 41\U45)>|<cell|<verbatim|\<\|\|\>\<Omega\>\<\|\|\> = 1>;
  the domain <verbatim|D> is dense; <verbatim|D =
  span{\<varphi\>(word)\<Omega\>}> (algebraic span); for each label
  <verbatim|x> and <verbatim|v \<in\> D>, <verbatim|f \<mapsto\>
  \<varphi\>_x(f)v> is continuous from <verbatim|SchwartzMap E4 \<bbb-C\>>
  (<verbatim|Test4 = Probe E4>) to <verbatim|H>>|<cell|normalized cyclic
  vacuum, dense invariant domain, vector-valued temperedness.
  Correct.>>|<row|<cell|<verbatim|adj : sharpPair J>
  (47\U48)>|<cell|<verbatim|\<langle\>\<varphi\>_x(f)a, b\<rangle\> =
  \<langle\>a, \<varphi\>_{Jx}(f\<#304\>)b\<rangle\>> on <verbatim|D>;
  <verbatim|Fields.really> (53\U56) turns this into
  <verbatim|\<varphi\>_{Jx}(f\<#304\>) \<subseteq\>
  \<varphi\>_x(f)^*>>|<cell|Hermiticity relation between the field and its
  adjoint. Correct.>>|<row|<cell|<verbatim|induced : starRead J h> (Star
  42\U43)>|<cell|<verbatim|J(pin d v) = pin d (S.adj h d timeAxis
  v)>>|<cell|ties the label involution to the Euclidean time-reflection
  adjoint of the table. The note does not mention
  it.>>|<row|<cell|<verbatim|letters : Spins.Descends> (Star
  26\U34)>|<cell|the label action <verbatim|rail> is a representation of the
  Lorentz group, compatible with <verbatim|pin>; each level carries a
  continuous finite-dimensional representation <verbatim|shell>; boost
  generators are <verbatim|\<minus\>i> times the Euclidean rotation generator
  in the <verbatim|(t, i)> plane; spatial rotations agree with the Euclidean
  ones>|<cell|Lorentz covariance of the field labels, obtained from Euclidean
  rotations by Wick rotation. The note does not mention
  it.>>|<row|<cell|<verbatim|meets : realizes W>
  (60)>|<cell|<verbatim|\<langle\>\<Omega\>,
  \<varphi\>(word)\<Omega\>\<rangle\> = W.expect word>, with <verbatim|W :=
  A.world> in <verbatim|Relativistic.qt> (Closed.lean 54)>|<cell|<strong|The
  Wightman functions are the boundary values of the selected contour.> The
  note's PU-18 row omits this, although it is the field that links the
  Hilbert-space theory to the Euclidean data (see
  R2).>>|<row|<cell|<verbatim|localPairs : commutes> (88\U89)>|<cell|if every
  pair of support points of <verbatim|f, g> is spacelike
  (<verbatim|m(x\<minus\>y) \<less\> 0>, <verbatim|m = t\<twosuperior\>
  \<minus\> \<\|\|\>x\<\|\|\>\<twosuperior\>>), then the fields commute on
  <verbatim|D>>|<cell|locality, as commutation with no grading.
  Correct.>>|<row|<cell|<verbatim|faithful : notLost> (58)>|<cell|every
  nonzero label gives a nonzero field for some test>|<cell|faithfulness.
  Named in the note.>>|<row|<cell|<verbatim|covariance : Symmetries>
  (112\U116)>|<cell|<verbatim|V(p)> preserves <verbatim|D> and
  <verbatim|\<Omega\>>, and <verbatim|V(p)\<varphi\>_x(f)a = \<varphi\>_{rail
  \<Lambda\> x}(push p f)V(p)a>>|<cell|Poincaré covariance. Correct.
  <verbatim|Action> (91\U96) is isometric, multiplicative and strongly
  continuous, hence unitary. <verbatim|Lorentz> has determinant 1 and
  preserves the forward cone (Poincare.lean 25\U29), so the group is the
  proper orthochronous Poincaré group, with no double
  cover.>>|<row|<cell|<verbatim|spectral>, <verbatim|forward> (Frequencies
  67\U68; Geometry 78)>|<cell|the characteristic function of
  <verbatim|P(\<centerdot\>)x> is <verbatim|\<langle\>x, U(b)x\<rangle\>>;
  <verbatim|P(cone\<#1D9C\>) = 0> with <verbatim|cone =
  {\<\|\|\>x\<#20D7\>\<\|\|\> \<leq\> t}>>|<cell|spectral condition with the
  closed forward cone. Correct.>>|<row|<cell|<verbatim|unique>>|<cell|translation-invariant
  vectors are multiples of <verbatim|\<Omega\>>>|<cell|uniqueness of the
  vacuum. Correct.>>>>>

  So the note's reading is correct as far as it goes. It should list
  <verbatim|meets>, and preferably <verbatim|induced> and <verbatim|letters>,
  and then drop the "unverified" caveat.

  <section|Requested changes><label|requested-changes>

  <strong|R1. The pointwise mixture identity is a PU-17 output, not a PU-19
  output.> This affects the PU-19 row's "Two mixture outputs" and P9.2. In
  <verbatim|all_characters>, the <verbatim|at_words> field of
  <verbatim|Completed> is proved by the term
  <verbatim|F.\<alpha\>.space.barycenter _ F.phase.phase.decomposition
  F.phase.phase.chosen F.room.kernel.translations> (Extension.lean 79\U80).
  That is <verbatim|OS.Spread.Resolution.barycenter> (Mixture.lean 113\U117)
  applied to the certificate fields <verbatim|decomposition> and
  <verbatim|chosen> (PU-17) and to <verbatim|Hierarchy.translations> (PU-16).
  It uses no field of the almanac <verbatim|L>.
  <verbatim|publicReconstruction> uses <verbatim|Completed> only through
  <verbatim|h.at_words> (HierarchyBridge 112). The public <verbatim|mixture>
  clause is therefore exactly the barycenter identity that the PU-17 row
  already lists ("barycenter identities for distinct whole words").
  Requested: in the PU-19 row, attribute the pointwise identity to PU-17.
  PU-19 then cites it, and keeps as its own output only the
  boundary-distribution identity (<verbatim|at_boundary> /
  <verbatim|Headline.Reconstruction.average>). P9.2's "two distinct outputs
  of PU-19" should be read as "two distinct outputs, of PU-17 and PU-19
  respectively".

  <strong|R2. Name the producer of every public <verbatim|Reconstructed>
  clause, and record that PU-19 is off the path to the public endpoint.> The
  note lists the public clauses as "label faithfulness, phase measure,
  smoothness, mixture, analyticity and boundary identities".
  <verbatim|Reconstructed> (ChallengeSpec 117\U143) has 15 fields.
  <verbatim|publicReconstruction> (HierarchyBridge 79\U133) proves them from:

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Public
  clause>>|<cell|<strong|Source term used>>|<cell|<strong|Unit under the
  note's split>>>|<row|<cell|<verbatim|axioms>,
  <verbatim|faithful>>|<cell|<verbatim|view_axioms _ F.realization.qt>,
  <verbatim|qt.faithful>>|<cell|PU-18>>|<row|<cell|<verbatim|injective>,
  <verbatim|represents>>|<cell|<verbatim|S.pin_inj>,
  <verbatim|S.rep>>|<cell|table structure
  (PU-16)>>|<row|<cell|<verbatim|acts>>|<cell|<verbatim|S.alive 0
  F.room.kernel.laws> and <verbatim|qt.faithful>>|<cell|PU-16 and
  PU-18>>|<row|<cell|<verbatim|covers>>|<cell|<verbatim|F.sector.derivatives.covered
  \<ldots\> F.phase.transport.injection>>|<cell|<strong|<verbatim|Spec.Locals.injection>>,
  which the note assigns to the derivative/rank/stress units
  (PU-11/PU-20)>>|<row|<cell|<verbatim|normalized>,
  <verbatim|fullSupport>>|<cell|<verbatim|F.phase.phase.decomposition>>|<cell|PU-17>>|<row|<cell|<verbatim|permutation>,
  <verbatim|smooth>>|<cell|<verbatim|S.class_perm>, <verbatim|S.class_smooth>
  on <verbatim|spectate F s>>|<cell|PU-16 (<verbatim|s = none>);
  <verbatim|Certificate.states> (PU-17) for the
  phases>>|<row|<cell|<verbatim|characterContinuity>>|<cell|<verbatim|F.phase.phase.chosen>
  and <verbatim|decomposition.weak>>|<cell|PU-17>>|<row|<cell|<verbatim|mixture>>|<cell|<verbatim|Completed.at_words>,
  which is PU-17's barycenter (R1)>|<cell|PU-17>>|<row|<cell|<verbatim|analytic>,
  <verbatim|root>, <verbatim|boundary>>|<cell|<verbatim|F.realization.chosen.heat.hol>,
  <verbatim|.heat.roots>, <verbatim|.emerges.profile>, with
  <verbatim|qt.meets>>|<cell|PU-18 (selected contour <verbatim|A>)>>>>>

  Consequences for the note:

  <\itemize-minus>
    <item>(a) <verbatim|covers> is a further crossing into the derivative
    unit, to be added to open question 3.

    <item>(b) <verbatim|characterContinuity>, <verbatim|permutation>,
    <verbatim|acts>, <verbatim|covers>, <verbatim|represents>,
    <verbatim|injective> and <verbatim|root> should be added to the list in
    the paragraph after the table.

    <item>(c) Nothing in this bridge uses <verbatim|allWorld>,
    <verbatim|at_boundary>, <verbatim|Headline.Reconstruction>, or any field
    of <verbatim|L> other than the <verbatim|L>-independent
    <verbatim|at_words>. The public hierarchy <verbatim|hierarchy F Q>
    (HierarchyBridge 27\U42) mentions no <verbatim|L>, and
    <verbatim|Headline.SeparatedOPE F Q> and
    <verbatim|Headline.TraceExclusions F> take no <verbatim|L> in their
    types. I did not read their producers' proofs. So PU-19 and the
    unselected contour <verbatim|allWorld> are needed only for the stronger
    internal conjuncts of <verbatim|YangMills.constructed>:
    <verbatim|Independent.Core>, <verbatim|Headline.Reconstruction>, and
    <verbatim|\<forall\> i, (view (L.actors i)).Axioms>. They are not needed
    for <verbatim|YangMills.JointExistence>. This partly answers open
    question 4. It also affects scheduling: the public endpoint does not wait
    for PU-19.
  </itemize-minus>

  <strong|R3. The full-mesh output is derived, and the derivation should be
  stated.> This is the "Two orders" paragraph and the PU-15 \<rightarrow\>
  PU-16 handoff. In the source receipt, the full-mesh <verbatim|Ordered> is
  not a separate limit passage. <verbatim|fromFunded> (Accepted.lean 165)
  obtains it as <verbatim|from_spec ((f.refine g).refine w)
  \<langle\>F\<rangle\> hJ.fullMesh>. Here
  <verbatim|YM.FullVolume.Final.from_spec> (Program.lean 117\U126) combines
  two inputs:

  <\itemize-minus>
    <item>the refined-order limit <verbatim|F.room.ordered>;

    <item><verbatim|hJ.fullMesh : PositionsUV R.family .full>, the PU-15
    output (Program.lean 148).
  </itemize-minus>

  <verbatim|PositionsUV> (Profiles.lean 25\U31) gives, at each period,
  convergence along the full mesh sequence. Its limit equals the
  refined-order row limit because a convergent sequence and its subsequence
  have the same limit (<verbatim|tendsto_nhds_unique \<ldots\>
  (f.mesh.cofinal)>). The period-stage limit is then inherited from
  <verbatim|F.room.ordered>. Requested: say that the checkable full-mesh
  output follows from the refined-mesh extraction plus PU-15's
  <verbatim|PositionsUV \<ldots\> .full> by this one-line argument. Also name
  <verbatim|PositionsUV> exactly as the PU-16 input "eventual full-mesh UV
  estimate". The PR #18 review asked about this ("presumably what
  <verbatim|PositionsUV \<ldots\> .full> buys"), and the answer is yes.

  <strong|R4. The stress construction consumes <verbatim|copies> as well as
  <verbatim|corrected>, and the rank theorem produces the whole seed.> This
  is the PU-16 row.

  <\itemize-minus>
    <item><verbatim|YM.MergeProof.Acme.emanate> (Emanate.lean 31\U36) takes
    the whole <verbatim|s : Seed C F S> and calls <verbatim|readyA s.cutoff
    s.ordered s.generic s.kernel s.copies \<ldots\> (cap_given s.corrected)
    \<ldots\>>. So <verbatim|copies> is also a cross-package stress input,
    not only <verbatim|corrected>, and the stress side also uses the PU-16
    fields.

    <item><verbatim|YM.MergeProof.Accent.rated> (Powder.lean 48\U53) returns
    <verbatim|\<exists\> g A L R Z T E, \<ldots\> \<wedge\> \<exists\> s :
    Seed C (f.refine g) T, Maxwell.Ranks T s.kernel.spin>. That is the
    <strong|whole> seed, including <verbatim|ordered>, <verbatim|generic> and
    <verbatim|kernel>. Its proof begins with the extraction
    <verbatim|Extraction.crops M \<ldots\>> (Powder.lean 54; Held.lean 136).
  </itemize-minus>

  So the source has no theorem producing PU-16's three fields apart from the
  rank-side two. Requested: say this in the PU-16 row or in open question 2,
  as an editorial split of <verbatim|Accent.rated>. It is the same situation
  as <verbatim|Broad.refine>.

  <strong|R5. Two fields of <verbatim|Spec.Final> are not assigned.>

  <\itemize-minus>
    <item><verbatim|calibration : Spec.Calibrated C> (Closed.lean 58\U61, 65)
    is the source of the <verbatim|Spec.Calibrated C> conjunct of
    <verbatim|constructed>, as <verbatim|F.calibration> (Headlines.lean 26).
    It depends only on <verbatim|C>, which makes it a natural PU-15 output,
    but no row names it.

    <item><verbatim|sector : Algebra S> (derivatives, rotation, stress) is
    data that the certificate and <verbatim|Locals> are stated over.
  </itemize-minus>

  Requested: name both, with an owner or "outside PU-15\UPU-19".

  <section|Optional observations><label|optional-observations>

  <\itemize-minus>
    <item><strong|O1.> The PU-18 row says the link from <verbatim|F.action>
    to the selected phase is "through <verbatim|Relativistic.chosen>, not
    through the type". More precisely, the link is <verbatim|qt : F.Realizes
    (W := A.world) \<ldots\>> together with <verbatim|chosen : A.From
    (ensemble atPoint)>: the Wightman functions are <verbatim|A.world>
    (<verbatim|meets>), and the roots of <verbatim|A>'s continuation are the
    selected Schwinger functions.

    <item><strong|O2.> <verbatim|Broad.refine> carries
    <verbatim|OPE.Facilities>, which contains the <verbatim|Services>
    produced by <verbatim|extractible17> (Accepted.lean 145, 165). The note
    writes "OPE services".

    <item><strong|O3.> <verbatim|Certificate.heat> (selected
    <verbatim|UniqueHeat>) is described but not assigned. Under the split it
    belongs with PU-17's selected point or with PU-18's uniqueness of the
    vacuum.

    <item><strong|O4.> In the source chain, the <verbatim|C.Makes> used by
    <verbatim|regular> is supplied as <verbatim|R.makes> before any order
    (Headlines.lean 23), not from <verbatim|Seed.cutoff>. The note's
    parenthesis "(the <verbatim|cutoff> field of <verbatim|YM.Spec.Seed>)"
    identifies the type, not the provenance. This supports the note's
    assignment of <verbatim|cutoff> to PU-15.

    <item><strong|O5.> <verbatim|Final.onward> (Closed.lean 80\U90) also
    transports <verbatim|copies> (<verbatim|recur>) and <verbatim|corrected>
    (<verbatim|refresh>). The "refinement-stability" group therefore includes
    two rank-side stability lemmas besides <verbatim|Order.upon> and
    <verbatim|point_retained>.
  </itemize-minus>

  <section|Not checked><label|not-checked>

  <\itemize-minus>
    <item>No elaboration, <verbatim|#print axioms> or kernel replay (Mathlib
    is unreachable here).

    <item>The proofs of <verbatim|Headline.SeparatedOPE>,
    <verbatim|Headline.TraceExclusions>, <verbatim|Accent.rated> beyond line
    54, and <verbatim|PositionsUV> producers.

    <item><verbatim|Spec.Calibrated>'s internal structures,
    <verbatim|PointLimits> (<verbatim|Meshes>, <verbatim|VolumePoints>),
    <verbatim|OS.Chamber>/<verbatim|Spread>, and <verbatim|Stress.Force>:
    existence and signatures only.

    <item>The literature side (issue #6). This review takes no position on
    which OS reconstruction theorem applies to PU-18.
  </itemize-minus>

  <section|Acceptance><label|acceptance>

  None recorded. This is an agent-assisted correspondence review, and a human
  reviewer must take responsibility for acceptance. R1\UR5 are wording and
  ownership changes to the note. None of them affects the correctness of a
  source description.
</body>

<\initial>
  <\collection>
    <associate|html-title|Review of an interface audit: construction to
    reconstruction (#160 revision) \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|acceptance|<tuple|7|7>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|3>>
    <associate|auto-4|<tuple|4|5>>
    <associate|auto-5|<tuple|5|7>>
    <associate|auto-6|<tuple|6|7>>
    <associate|auto-7|<tuple|7|7>>
    <associate|confirmed-s|<tuple|2|2>>
    <associate|method-and-limits|<tuple|1|2>>
    <associate|not-checked|<tuple|6|7>>
    <associate|optional-observations|<tuple|5|7>>
    <associate|requested-changes|<tuple|4|5>>
    <associate|review-of-an-interface-audit-construction-to-reconstruction-160-revision|<tuple|?|1>>
    <associate|the-pu-18-reading-of-wightmanrealizes-checked-s|<tuple|3|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Method
      and limits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Confirmed
      [S]> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|The
      PU-18 reading of <with|font-family|<quote|tt>|language|<quote|verbatim>|Wightman.Realizes>,
      checked [S]> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Requested
      changes> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Optional
      observations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Not
      checked> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Acceptance>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>