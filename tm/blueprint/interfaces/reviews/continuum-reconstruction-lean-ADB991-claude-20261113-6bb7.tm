<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../outline.tm><ym-nav-sep><hlink|Unit
  plan|../../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../index.tm><ym-nav-sep><hlink|Manuscript|../../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Renewed review of the interface note: construction to
  reconstruction (#160, PR #244)><label|renewed-review-of-the-interface-note-construction-to-reconstruction-160-pr-244>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Method and
    limits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|R1\UR5 of
    review #228: status [S]> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Changes
    requested> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Optional>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Also confirmed
    [S]> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Not checked>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Recommendation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>
  </table-of-contents>

  <\itemize-minus>
    <item>Reviewed file: <verbatim|blueprint/interfaces/continuum-reconstruction.md>
    at draft PR #244, head <verbatim|6097bd5a381349674f1d364486b1816b26392fd4>.
    PR #244 is the author response, by session
    <verbatim|mgubi-astra-interface160-response-20261113>, to review #228
    (R1\UR5).

    <item>Content SHA-256: <verbatim|3df158a0c57ab41f783e104047049951da15046ce6550be2388cca9a9da238c9>.
    This matches the hash in the author's handoff.

    <item>Base: <verbatim|codex/existence-monograph> @
    <verbatim|69b2631f7a3d3c4176ca0084d8607cb9d8d124a2>. The note there (as
    reviewed in #228) has SHA-256 <verbatim|c6748f08\<ldots\>a3c558>. PR #244
    changes no other file.

    <item>Source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>,
    which is <verbatim|Lean/> in this repository. <verbatim|Lean/> is
    identical at the base and at <verbatim|6097bd5>. <verbatim|sha256sum -c
    Lean/SOURCES.sha256> reports 9,497 files OK.

    <item>Role: Lean correspondence, renewed, with a check of the
    mathematical meaning of the new ownership statements.

    <item>Human reviewer: ADB991. No acceptance is recorded.

    <item>Agent assistance: Claude Code (Anthropic), running as a scheduled
    agent on behalf of ADB991 (session <verbatim|ADB991-claude-20261113-6bb7>),
    did the inspection and wrote this report. ADB991 had not read it before
    it was submitted. No subagents were used.

    <item>Review task: <hlink|issue #160|https://github.com/hairer/humanise-yang-mills/issues/160>,
    claim <hlink|https://github.com/hairer/humanise-yang-mills/issues/160#issuecomment-6863545621|https://github.com/hairer/humanise-yang-mills/issues/160#issuecomment-6863545621>.

    <item>Independence: ADB991 wrote review #228, which this response
    answers. It did not write the note (#18, #170), the author response
    (#244), the PR #18 review or G01 P9.

    <item>Outcome: <strong|R1\UR5 resolved; one minor correction requested
    (N1), plus two optional wording points (N2, N3).> Every source statement
    added by PR #244 that I checked is accurate, with one exception. The
    fifteen-clause map labels <verbatim|injective> and <verbatim|represents>
    as open PU-16 inputs. In fact both hold for every <verbatim|Table> by
    construction (N1).
  </itemize-minus>

  <section|Method and limits><label|method-and-limits>

  Evidence level: <strong|[S]> means source text read at the pin, including
  binders and the proof terms quoted below. <strong|Nothing was elaborated.>
  This sandbox cannot reach the Mathlib cache, so <verbatim|lake> cannot
  build dependencies. The PR body lists 17 frozen input files with SHA-256
  hashes. I checked all 17 against the base (<verbatim|sha256sum -c>), and
  all match.

  Files read at the pin for this review:

  <\itemize-minus>
    <item><verbatim|ChallengeSpec.lean> 117\U143 (<verbatim|Reconstructed>);

    <item><verbatim|HierarchyBridge.lean> 16\U45, 79\U133
    (<verbatim|hierarchy>, <verbatim|publicReconstruction>);

    <item><verbatim|Construction.lean> (whole);

    <item><verbatim|YM/Spec/Closed.lean> 28\U100 (<verbatim|Algebra>,
    <verbatim|Calibrated>, <verbatim|Final>);

    <item><verbatim|YM/EveryPhase/Extension.lean> 60\U80;

    <item><verbatim|YM/OPE/Eye/Views.lean> 26\U30 (<verbatim|spectator>,
    <verbatim|spectate>);

    <item><verbatim|YM/Euclid/Union.lean> 1\U40;

    <item><verbatim|YM/Euclid/Null.lean> 1\U105;

    <item><verbatim|YM/Euclid/Words.lean> 103;

    <item><verbatim|YM/Euclid/Lift.lean> 108\U113 (statements);

    <item><verbatim|YM/FullVolume/Finale/Program.lean> 117\U126, 148;

    <item><verbatim|YM/FullVolume/Profiles.lean> 25\U33;

    <item><verbatim|YM/R2I/Campaign/Accepted.lean> 150\U165;

    <item><verbatim|YM/MergeProof/Powder.lean> 48\U54;

    <item><verbatim|YM/Extraction/Held.lean> 136;

    <item><verbatim|YM/MergeProof/Emanate.lean> 15, 31\U36;

    <item><verbatim|YM/Next/UV_STRESS/Invert.lean> 108\U110;

    <item><verbatim|YM/Pert/Construction.lean> 21\U31;

    <item><verbatim|YM/RG17/Joint.lean> 61\U90;

    <item><verbatim|YM/Nonperturbative/Headlines.lean> 20\U30;

    <item><verbatim|YM/Price/Intent.lean> 26\U55;

    <item><verbatim|YM/PCalc/Band.lean> 26\U36;

    <item><verbatim|YM/Shoot/Reach.lean> 93.
  </itemize-minus>

  The proofs of <verbatim|all_characters>' other fields, of <verbatim|rated>
  past line 54 and of <verbatim|Relativistic.allWorld> were not read. Neither
  PR #244 nor this review claims anything about them.

  <section|R1\UR5 of review #228: status [S]><label|r1r5-of-review-228-status-s>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Item>>|<cell|<strong|Response
  in PR #244>>|<cell|<strong|Verdict>>>|<row|<cell|R1, two
  mixtures>|<cell|The pointwise identity is assigned to PU-17.
  <verbatim|all_characters> fills <verbatim|at_words> by
  <verbatim|F.\<alpha\>.space.barycenter _ F.phase.phase.decomposition
  F.phase.phase.chosen F.room.kernel.translations> (Extension.lean 79\U80),
  which uses no field of <verbatim|L>. The boundary mixture
  <verbatim|at_boundary> / <verbatim|Headline.Reconstruction.average> is
  assigned to PU-19. The P9.2 response-table row is
  corrected.>|<cell|<strong|Resolved.> Lines 79\U80 are exact. The statement
  of <verbatim|at_words> (Extension.lean 68\U69) mentions only
  <verbatim|F.\<alpha\>> and <verbatim|S>, not <verbatim|L>, so the PU-17
  ownership is a property of the statement, not only of this
  proof.>>|<row|<cell|R2, public clauses>|<cell|A fifteen-clause table is
  given. The "literal call versus smaller interface" paragraph says that
  <verbatim|publicReconstruction> takes <verbatim|L, h> but uses only
  <verbatim|h.at_words>, and that the stronger conjuncts of
  <verbatim|constructed> still need PU-19.>|<cell|<strong|Resolved>, apart
  from N1. The clause count and order match <verbatim|Reconstructed>
  (ChallengeSpec 117\U143). Each "immediate source" entry matches the bridge
  proof term (HierarchyBridge 81\U132). <verbatim|constructed> passes
  <verbatim|core.reconstruction> as <verbatim|h> and keeps
  <verbatim|Independent.Core>, <verbatim|Headline.Reconstruction> and
  <verbatim|\<forall\> i, (view (L.actors i)).Axioms> as separate conjuncts
  (Construction.lean 25\U27, 37\U39).>>|<row|<cell|R3, full
  mesh>|<cell|<verbatim|from_spec> (Program.lean 117\U126) combines
  <verbatim|F.room.ordered> with <verbatim|PositionsUV R.family .full>. It
  identifies the limits by <verbatim|tendsto_nhds_unique (hx.comp
  f.mesh.cofinal) (hD p h)> and keeps <verbatim|hV>. <verbatim|fromFunded>
  calls it with <verbatim|hJ.fullMesh> (Accepted.lean
  165).>|<cell|<strong|Resolved.> All anchors are exact.
  <verbatim|Jewel.fullMesh : PositionsUV R.family Extraction.Sequence.full>
  is at Program.lean 148. The note's statement that no rank receipt is moved
  to the full-mesh order agrees with the docstring at Program.lean 115\U116
  ("Not asserting CellHyp etc on that order").>>|<row|<cell|R4, whole
  seed>|<cell|<verbatim|rated> (Powder.lean 48\U54) returns
  <verbatim|\<exists\> s : Seed C (f.refine g) T, \<ldots\>> and starts with
  <verbatim|Extraction.crops> (Held.lean 136). <verbatim|emanate>
  (Emanate.lean 31\U36) passes <verbatim|s.cutoff s.ordered s.generic
  s.kernel s.copies> and <verbatim|cap_given s.corrected> to
  <verbatim|readyA>.>|<cell|<strong|Resolved.> "Dimension bound" is accurate:
  <verbatim|cap_given : Cells.RankWidths C F S \<rightarrow\> DimAbove S>,
  where <verbatim|DimAbove S := \<forall\> d, finrank (S.Field d) \<leq\>
  finrank ((Bel L).Field d)> (Invert.lean 108\U110).>>|<row|<cell|R5,
  calibration and sector>|<cell|<verbatim|Final.calibration : Calibrated C>
  is a family-level receipt, proposed for PU-15. <verbatim|withFinal> takes
  it as input, <verbatim|extractible17> supplies it from
  <verbatim|hT.reception>, and <verbatim|existence> projects
  <verbatim|F.calibration> (Headlines.lean 26). <verbatim|Final.sector :
  Algebra S> has fields <verbatim|derivatives>, <verbatim|turns> and
  <verbatim|energy>, and is assigned outside
  PU-15\UPU-19.>|<cell|<strong|Resolved.> <verbatim|Calibrated> (Closed.lean
  58\U61) depends on <verbatim|C> only. <verbatim|Algebra> (Closed.lean
  28\U31) has exactly these three fields. <verbatim|withFinal>
  (Construction.lean 21\U31) returns <verbatim|h.sector = \<langle\>W, mill M
  I c U, J\<rangle\>>. See N2 for one wording point.>>>>>

  <section|Changes requested><label|changes-requested>

  <strong|N1 (minor, correction): <verbatim|injective> and
  <verbatim|represents> are structural facts about every table.> The new
  table describes:

  <\itemize-minus>
    <item><verbatim|injective> (<verbatim|S.pin_inj>) as a "Proposed PU-16
    table/physical-label input; its construction is not established here and
    does not follow from extraction bounds alone";

    <item><verbatim|represents> (<verbatim|S.representative>,
    <verbatim|S.rep>) as a "Proposed PU-16 table/quotient representative
    input; no quotient construction is certified here".
  </itemize-minus>

  At the pin, neither depends on any property of the particular table:

  <\itemize-minus>
    <item><verbatim|Table.Field d> is <em|defined> as <verbatim|L.Ref d
    \<#29F8\> S.null d> (Null.lean 74). Here <verbatim|S.null d = ker
    (S.replies d)> is the space of reference labels whose correlations with
    every separated exterior word vanish (Null.lean 31\U34, criterion
    36\U42).

    <item><verbatim|pin d> is the codomain restriction of <verbatim|spectra d
    = (S.null d).liftQ (S.replies d)> (Union.lean 25\U26, Null.lean 93).
    <verbatim|pin_inj> is proved for every <verbatim|S : Table L> from
    <verbatim|faithfully>, which is <verbatim|ker_liftQ_eq_bot> (Union.lean
    29\U30, Null.lean 97\U98).

    <item><verbatim|representative> is a linear right inverse of the quotient
    map, obtained by choice. <verbatim|rep> is its defining property, and
    both hold for every table (Null.lean 87\U91).
  </itemize-minus>

  So the mathematical content of these two clauses is the <em|definition> of
  the physical label space: the quotient of the reference labels by the null
  space of the Euclidean correlations, which is a standard OS-type quotient.
  Two facts then follow: the induced map into functions on exterior words is
  injective, and the finite-dimensional quotient has a linear section. No
  unit has to produce these from extraction data, so they are not open
  inputs. Suggested wording for both rows: "holds for every table by the
  quotient definition of <verbatim|Table.Field>
  (<verbatim|Lean/YM/Euclid/Null.lean>, <verbatim|Union.lean>); the monograph
  must state this definition where the physical labels are introduced (PU-16
  or notation), with no further proof obligation". <verbatim|acts> is
  different: it really does use a PU-16 hypothesis, <verbatim|S.Basic> via
  <verbatim|F.room.kernel.laws> in <verbatim|S.alive> (Null.lean 102), and
  the table states this correctly.

  <section|Optional><label|optional>

  <\itemize-minus>
    <item><strong|N2 (wording).> In the "Final.sector" paragraph, "with the
    equality retained by <verbatim|Run.extractible17>" overstates what the
    statement exports. In <verbatim|extractible17> the equality
    <verbatim|hFa> is passed to <verbatim|attached> to prove
    <verbatim|Pert.FirstExtension F X> (Joint.lean 88\U90), but its
    conclusion does not export it. Downstream consumers cannot recover
    <verbatim|F.sector = \<langle\>W, mill M I c U, J\<rangle\>> from the
    statement. "used internally by" would be accurate.

    <item><strong|N3 (reading of <verbatim|Calibrated>).> The prose "sheet,
    block lengths, protection/delays, directed trajectory and finite
    histories" was checked for <verbatim|Sheet> and for <verbatim|Rolls>
    (<verbatim|L : \<bbb-N\> \<rightarrow\> Side>, large, odd and monotone;
    Intent.lean 26\U53), which are the block side lengths. <verbatim|Trail
    B.a p> is <verbatim|\<forall\> m, Rep G (a.S.side m p)> (Reach.lean 93),
    a sequence indexed by all scales <verbatim|m>. Only the <verbatim|Move>
    relation is restricted to <verbatim|m \<less\> N>, so "finite histories"
    is an interpretation. I did not unfold <verbatim|Protection>,
    <verbatim|Delays>, <verbatim|Bar>, <verbatim|Wait>, <verbatim|Stays> or
    <verbatim|Move>. Since the note proposes this as a PU-15 output
    requirement, the PU-15 author should take the field meanings from the
    definitions, not from this summary.
  </itemize-minus>

  <section|Also confirmed [S]><label|also-confirmed-s>

  <\itemize-minus>
    <item>In the <verbatim|permutation> and <verbatim|smooth> rows,
    <verbatim|spectate F s> is <verbatim|U.room.kernel> for the mixed viewer
    and <verbatim|U.phase.phase.states _> for a character (Views.lean 30). So
    the PU-16/PU-17 split in those rows is exact. <verbatim|class_perm> and
    <verbatim|class_smooth> (Lift.lean 108, 113) are general lemmas with
    <verbatim|Symmetric>/<verbatim|Smooth> hypotheses.

    <item><verbatim|covers> uses <verbatim|F.sector.derivatives.covered
    F.room.kernel.laws.toSymmetric F.phase.transport.injection>
    (HierarchyBridge 90). <verbatim|DiffPlan.covered> (Union.lean 40) needs
    <verbatim|S.Symmetric> and <verbatim|P.Inclusions S>, so the
    derivative-side crossing that the note adds to open question 3 is real.

    <item><verbatim|boundary> rewrites with <verbatim|publicMoment _
    F.realization.qt.meets> (HierarchyBridge 123\U128), and
    <verbatim|emerges.int> is not used. This matches the row and the earlier
    P9.3 finding.

    <item><verbatim|hierarchy F Q> (HierarchyBridge 27\U43) mentions no
    almanac. Its <verbatim|phaseMeasure> is
    <verbatim|F.\<alpha\>.space.\<mu\>> and its <verbatim|selected> is
    <verbatim|F.\<alpha\>.atPoint>.

    <item>The "literal call" paragraph correctly avoids claiming a Lean
    refactoring, and correctly keeps <verbatim|constructed>'s source route
    through <verbatim|L, h>.
  </itemize-minus>

  <section|Not checked><label|not-checked>

  No <verbatim|#print axioms>, kernel replay or LaTeX build was run (the
  change is Markdown only). The literature side (#6) was not addressed. The
  unchanged parts of the note were reviewed in #228 and were not re-read
  here, beyond the diff context.

  <section|Recommendation><label|recommendation>

  After N1, which changes two table cells, no further correspondence review
  of this note is needed for R1\UR5. The note can go to human acceptance
  together with #228 and this report. N2 and N3 are optional. This is an
  agent-assisted review, not an acceptance.
</body>

<\initial>
  <\collection>
    <associate|html-title|Renewed review of the interface note: construction
    to reconstruction (#160, PR #244) \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|also-confirmed-s|<tuple|5|5>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|5|5>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|changes-requested|<tuple|3|4>>
    <associate|method-and-limits|<tuple|1|2>>
    <associate|not-checked|<tuple|6|5>>
    <associate|optional|<tuple|4|4>>
    <associate|r1r5-of-review-228-status-s|<tuple|2|3>>
    <associate|recommendation|<tuple|7|5>>
    <associate|renewed-review-of-the-interface-note-construction-to-reconstruction-160-pr-244|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Method
      and limits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|R1\UR5
      of review #228: status [S]> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Changes
      requested> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Optional>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Also
      confirmed [S]> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Not
      checked> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Recommendation>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>