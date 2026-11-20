<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Continuum source audit and unresolved verification
  tasks><label|continuum-source-audit-and-unresolved-verification-tasks>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Findings that
    change the exposition> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Audit register>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Coverage of
    every assigned Outline unit> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Terminology
    replacement dictionary> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Literature
    check record> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>
  </table-of-contents>

  Date: 18 November 2026. This is a targeted editorial/dependency audit, not
  a full independent verification of the proof or the linked Lean
  development. Read alongside <verbatim|continuum-chapters.md>. Source paths
  below are workspace-relative; chapter IDs C1\UC8 are stable even if
  numbered differently in the final book.

  <section|Findings that change the exposition><label|findings-that-change-the-exposition>

  <\enumerate>
    <item>The Outline's eight parts are not a logical order. Free strict
    reflected Gram positivity is used for ultraviolet/interacting ranks; move
    independent free theory C1 before those uses. Coordinate OS spaces and
    slab operators precede rotations; rotations precede spatial invariance of
    the ground space and phase decomposition. Reconstruction/locality
    precedes upgrading a.e. vacuum uniqueness to every phase.

    <item>The repeated reflected-word bound is listed with OPE (Outline
    VII.4), but depends on lattice reflection/chessboard estimates and is
    needed long before the OPE. Put its proof in C2, then slabs in C3. This
    avoids an apparent circular dependence.

    <item>Ward/spectral analysis uses an elementary two-point contact
    extension before the final contact theorem.
    <verbatim|Martin/existence/physical-ward-stress-cone.tex:19\U87>
    constructs it by Taylor subtraction, arranges tensor symmetries and
    cancels low divergence jets. It does not assume collision positivity.
    State this local auxiliary construction in C3; do not forward-reference
    the final OPE contact prescription.

    <item>The kernels have full mesh convergence at fixed volume, then only
    subsequential volume convergence. Coefficient projections may be
    extracted along additional cutoff subsequences without changing the
    full-mesh kernel theorem. Keep these two sorts of extraction distinct.

    <item>The main observable limit is the mixture. The trace law is in a
    selected phase. Every phase is reconstructed with a unique vacuum, but
    the mixture need not have one. Polynomial heat decay does not imply a
    mass gap.
  </enumerate>

  <section|Audit register><label|audit-register>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|ID>>|<cell|<strong|Evidence
  and status>>|<cell|<strong|Required action before unconditional
  prose>>>|<row|<cell|C-A1>|<cell|Trish <verbatim|part2/F-infinite-volume.tex:7\U9>
  explicitly retains upstream inputs: higher-marker support
  propagation/restart exponent 98; same-sample guarded Gaussian comparison
  including scalar/forced terms and exact density/coupling identification for
  restarts; actual marked graph-operator continuity. Scott F lacks that
  paragraph.>|<cell|Do not assume Scott's shorter version closes these. Trace
  hypotheses into Martin's candidate closure results, in particular
  <verbatim|restarted-rank-history.tex>, <verbatim|prop:restart-actual-closure>
  at 564 (proof 581\U742), and <verbatim|actual-local-compiler-handoff.tex:399\U404>.
  The UV audit must decide whether the exact selected family, density,
  coupling, supports, and all required norms agree. This is a verification
  task, not an established global mathematical
  gap.>>|<row|<cell|C-A2>|<cell|Trish <verbatim|part2/G-section.tex> opening
  explicitly retains actual equation/projection/inclusion/difference/rank
  estimates. Outline IV.1's derivative theorem is conditional on an
  additional dimension comparison.>|<cell|Cite precise UV outputs for both
  rank inequalities; no dimension equality follows just from an approximate
  derivative formula. <verbatim|Scott/part2/F-infinite-volume.tex:102\U148>
  gives the assembly argument.>>|<row|<cell|C-A3>|<cell|Outline IV.1 raw
  extraction is subsequential in both indices; its limitation points to
  III.13, an alternative coordinated family. Scott F instead starts from full
  fixed-volume kernels.>|<cell|Use the full fixed-volume supplier for the
  chosen family, not an unidentified alternative-family theorem. Compare
  Martin <verbatim|assembly.tex>, <verbatim|ex-full-mesh> and
  <verbatim|thm:ex-construction-assembly>, with
  <verbatim|prop:fullmesh-selected-supplier>. Full mesh convergence is an
  extra premise in the elementary identification
  lemma.>>|<row|<cell|C-A4>|<cell|Outline VI.1 warns that supporting
  flux/contact analysis was not fully checked. Martin provides a substantial
  conservation argument.>|<cell|Check diagonal conservation estimates
  separately from reflection-parity estimates, and check their use before
  rotation invariance or spectral cone support. Verify the early Taylor
  correction preserves all claimed tensor
  symmetries.>>|<row|<cell|C-A5>|<cell|Outline VI.2 imports invariant
  spanning, bounded-order detection, Lorentz/Casimir facts; VII.1 imports
  Fourier uniformity.>|<cell|C1 should prove or cite each free input once. In
  C3 verify that the actual comparison is uniform for bounded tests and not
  only pointwise; narrow coordinate strips and moving insertion maps need
  stronger estimates.>>|<row|<cell|C-A6>|<cell|Phase reflection and
  null-space equality do not follow from abstract character decomposition.
  Trish H expands the relevant operator/moment argument.>|<cell|Preserve
  positivity of the compressed whole-word Gram operator and all-copy moment
  bounds. Do not replace it by a rank-one product of individual compressed
  words. Verify same-table corrected detectors in every
  phase.>>|<row|<cell|C-A7>|<cell|C5's no-exceptional-phase argument uses
  locality and positive cone spectrum to prove <verbatim|O(u^2)> low-energy
  mass, then phase continuity/full support.>|<cell|Keep the full zero-energy
  projection Q until the final argument identifies it with the vacuum line.
  Do not assume the result while deriving the heat
  estimate.>>|<row|<cell|C-A8>|<cell|Outline VII.6 provides prescribed-radii
  weak comparisons but explicitly does not assert compatibility across
  degrees/stress normalization by itself.>|<cell|Match its estimates to the
  stronger moving-stress trace inputs and amplification rates.
  <verbatim|Martin/existence/trace-asymptotic.tex>,
  <verbatim|input:trace-scales>, <verbatim|prop:trace-scale-supplier> and
  <verbatim|lem:trace-moving-correlation> separate these
  obligations.>>|<row|<cell|C-A9>|<cell|Trish
  <verbatim|part2/J-section.tex:20\U24> explicitly makes OPE/contact
  conclusions conditional on stronger anchored/restart, guarded comparison
  and graph continuity inputs.>|<cell|Resolve C-A1 for exactly the marked
  cluster replacement theorem. Verify the lower-degree subtraction, support
  exponents and all phase norm bounds rather than citing generic cluster
  convergence. Martin's detailed closure candidates may address these; that
  matching has not been performed here.>>|<row|<cell|C-A10>|<cell|Outline
  VII.4 does not identify contact-device projections with OPE coefficient
  projections, and disclaims positivity/uniqueness/contact Ward
  identities.>|<cell|Define the two prescriptions separately unless an
  explicit equivalence is proved. Prove partial-collision sector
  integrability, not merely integrability on the total radial
  diagonal.>>|<row|<cell|C-A11>|<cell|Martin <verbatim|assembly.tex:209ff>
  states a conditional joint input and later a retained-construction assembly
  theorem.>|<cell|Read the later supplier chain before alleging a missing
  proof. Conversely, the conditional assembly alone cannot certify the
  preceding analytic assumptions. Track selected-family identity through
  every cited supplier.>>>>>

  <section|Coverage of every assigned Outline
  unit><label|coverage-of-every-assigned-outline-unit>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Outline
  unit>>|<cell|<strong|Book location>>|<cell|<strong|Main retained content
  and intentional omissions>>>|<row|<cell|IV.1>|<cell|C2>|<cell|Full-volume
  compactness, weak derivative labels, quotient ranks, hierarchy; present
  full mesh upgrade using the chosen-family theorem rather than
  alternate-family labels.>>|<row|<cell|V.1>|<cell|C3 ŸŸ1\U2; C4>|<cell|Split
  OS/slab preliminaries from compression, phases and a.e. uniqueness. Move
  the repeated-word prerequisite from VII.4 to C2.>>|<row|<cell|V.2>|<cell|C5
  ŸŸ1\U4>|<cell|Continuation, tempered boundary, boosts, cone support,
  locality, positive word realization and faithful labels. Cite standard
  reconstruction machinery after hypotheses are
  checked.>>|<row|<cell|V.3>|<cell|C5 ŸŸ4\U6>|<cell|Surjectivity onto OS
  space, phasewise uniform bounds, every vacuum, scalar weak commutant,
  stress charge continuation and joint-test
  barycenter.>>|<row|<cell|VI.1>|<cell|C3 ŸŸ3\U6>|<cell|Flux estimates,
  translation proportionality, analytic propagation, brackets, integration,
  physical normalization. Do not import completed field algebra as an
  unexplained hypothesis of itself.>>|<row|<cell|VI.2>|<cell|C1 ŸŸ3\U5; C3
  ŸŸ3\U6>|<cell|Separate free positivity/classification/Ward flux from
  interacting comparison/rank transfer and normalized
  stress.>>|<row|<cell|VII.1>|<cell|C1 ŸŸ1\U3 and UV free lattice comparison;
  C3 Ÿ3>|<cell|Free Gaussian/Wick reference and detector theory;
  lattice-to-free Fourier estimates belong with UV covariance estimates.
  Formal itinerary-specific variants need not be separate book
  sections.>>|<row|<cell|VII.2>|<cell|C6>|<cell|Spectral trace, controlled
  stress normalization, arbitrary radii, all-radius asymptotic and precise
  finite-profile exclusion. Optional Fock nonembedding can be omitted if not
  part of the target theorem.>>|<row|<cell|VII.3>|<cell|C1 ŸŸ2\U4; C6
  ŸŸ2,5>|<cell|Reflected Gram positivity, degree-four finite-dimensional
  rigidity, lattice Wick prescription, finite power-log obstruction; avoid
  duplicate positivity proof.>>|<row|<cell|VII.4>|<cell|C2 Ÿ5;
  C7>|<cell|Repeated words early; nonperturbative OPE and contacts late.
  Nested/integrated refinements condensed; no convergence as truncation
  degree grows.>>|<row|<cell|VII.5>|<cell|UV running-coupling chapter; C3
  Ÿ6>|<cell|Leading lattice logarithm is upstream. Auxiliary
  normalization-ratio and exact filtration correction belongs with
  stress/frame identification. No independently defined continuum running
  coupling is silently inferred.>>|<row|<cell|VII.6>|<cell|C6 Ÿ2; C3 Ÿ3 as
  needed>|<cell|Prescribed-radius schedules and fixed-field estimates;
  distinguish approaching correlations from stable, exactly compatible maps.
  Low degrees below four reduce to the unit.>>|<row|<cell|VIII.1>|<cell|C8,
  with its upstream premises in earlier chapters>|<cell|One-family assembly
  and quantifier order. Public theorem and stronger internal conclusions are
  not conflated. Formal bookkeeping variants are compressed to a dependency
  table.>>>>>

  <section|Terminology replacement dictionary><label|terminology-replacement-dictionary>

  These translations are contextual, not equations identifying packages of
  different hypotheses.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Source
  expression>>|<cell|<strong|Book expression>>>|<row|<cell|table /
  hierarchy>|<cell|correlation family / listed Euclidean
  properties>>|<row|<cell|token / label>|<cell|polynomial insertion label
  (then field class in the quotient)>>|<row|<cell|chamber>|<cell|coordinate
  reflection Hilbert space with translations>>|<row|<cell|bench /
  train>|<cell|bound on repeated reflected insertions>>|<row|<cell|spread /
  slab family>|<cell|bounded slab insertion operators>>|<row|<cell|respects
  S>|<cell|every S-null label is also null in the second correlation
  family>>|<row|<cell|station / panel / vane>|<cell|finite-degree,
  finite-window comparison data (define exact estimates)>>|<row|<cell|reader
  / decoder>|<cell|finite-dimensional correlation projection / its left
  inverse>>|<row|<cell|cap>|<cell|polynomial bound on separated correlations
  or their derivatives>>|<row|<cell|quota / price / budget>|<cell|coefficient
  norm / quantitative estimate / allowed bound>>|<row|<cell|quiet charge /
  row erasure>|<cell|charge invisible to the specified test functionals /
  vanishing of the detected internal action>>|<row|<cell|lighthouse
  stress>|<cell|normalized free Maxwell stress tensor>>|<row|<cell|funded run
  / campaign>|<cell|one RG trajectory with the complete enumerated
  estimates>>|<row|<cell|contact device>|<cell|chosen compatible
  Taylor-subtraction projections>>|<row|<cell|footprint / generic
  configuration>|<cell|specify the actual support or coordinatewise
  separation condition>>>>>

  Do not replace \Pphase\Q by \Ppure state\Q without explaining exactly which
  commutative algebra's characters are involved. Do not call a \Pfinite Wick
  profile\Q simply a \Pfree theory\Q: define the restricted comparison class.

  <section|Literature check record><label|literature-check-record>

  Checked primary-source landing pages on 18 November 2026. These checks
  establish provenance/scope; they do not yet establish that every technical
  lemma is a direct adaptation.

  <\itemize-minus>
    <item>Osterwalder\USchrader, <em|Axioms for Euclidean Green's functions
    II>, CMP 42 (1975), 281\U305, DOI <verbatim|10.1007/BF01608978>. Primary
    full text located at <hlink|https://projecteuclid.org/journals/communications-in-mathematical-physics/volume-42/issue-3/Axioms-for-Euclidean-Greens-functions-II-with-an-Appendix-by/cmp/1103899050.pdf|https://projecteuclid.org/journals/communications-in-mathematical-physics/volume-42/issue-3/Axioms-for-Euclidean-Greens-functions-II-with-an-Appendix-by/cmp/1103899050.pdf>
    . C5 author must match the actual growth and boundary assumptions, rather
    than just cite reconstruction abstractly. Also cite the 1973 first paper,
    DOI <verbatim|10.1007/BF01645738>.

    <item>Brunetti\UFredenhagen, <em|Microlocal Analysis and Interacting
    Quantum Field Theories: Renormalization on Physical Backgrounds>, CMP 208
    (2000), 623\U661, <hlink|https://arxiv.org/abs/math-ph/9903028|https://arxiv.org/abs/math-ph/9903028>
    , DOI <verbatim|10.1007/s002200050004>. General extension machinery
    belongs in citations; the multi-diagonal quantitative prescription still
    needs its own hypothesis check.

    <item>Fröb\UHolland, <em|All-order existence of and recursion relations
    for the operator product expansion in Yang\UMills theory>,
    <hlink|https://arxiv.org/abs/1603.08012|https://arxiv.org/abs/1603.08012>
    (2016, revised 2021). Its stated result is perturbative, including
    gauge-invariant closure; do not use it as an unconditional
    nonperturbative OPE theorem.

    <item>Collins\UDuncan\UJoglekar, <em|Trace and dilatation anomalies in
    gauge theories>, Phys. Rev. D 16 (1977), 438,
    <hlink|https://doi.org/10.1103/PhysRevD.16.438|https://doi.org/10.1103/PhysRevD.16.438>
    . Primary publisher page confirms scope and authors. The all-radius
    nonperturbative limit is additional work.

    <item>Still to verify at proof-writing stage: original precise sources
    for strict Maxwell jet positivity/Kelvin detectors, bounded-degree Ward
    classification, uniform all-phase low-energy estimate, and the exact
    finite power-log profile obstruction. Existing manuscript citations to
    Wick theory, harmonic analysis and C*-algebras cover standard mechanisms
    but do not by themselves identify these specialized statements as
    previously proved.
  </itemize-minus>

  No claims about the contemporary acceptance or correctness of the linked
  formal construction have been inferred from web search. The audit concerns
  the supplied manuscripts and their dependencies.
</body>

<\initial>
  <\collection>
    <associate|html-title|Continuum source audit and unresolved verification
    tasks \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|audit-register|<tuple|2|2>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|3>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|5|4>>
    <associate|continuum-source-audit-and-unresolved-verification-tasks|<tuple|?|1>>
    <associate|coverage-of-every-assigned-outline-unit|<tuple|3|3>>
    <associate|findings-that-change-the-exposition|<tuple|1|1>>
    <associate|literature-check-record|<tuple|5|4>>
    <associate|terminology-replacement-dictionary|<tuple|4|4>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Findings
      that change the exposition> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Audit
      register> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Coverage
      of every assigned Outline unit> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Terminology
      replacement dictionary> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Literature
      check record> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>