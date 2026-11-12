<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../outline.tm><ym-nav-sep><hlink|Unit
  plan|../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../index.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../glossary.tm><ym-nav-sep><hlink|Notation|../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../source/audit.tm><ym-nav-sep><hlink|Literature|../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../CONTRIBUTING.tm>>

  <ym-title|Osterwalder\USchrader reconstruction: reference and hypothesis
  checklist><label|osterwalderschrader-reconstruction-reference-and-hypothesis-checklist>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Result to be
    used> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Mathematical
    reference> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <with|par-left|1tab|Exact formulas checked against the original scan
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Match to the
    formalisation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <with|par-left|1tab|Input checklist <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|Output and no-circularity checklist
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|Completed comparison: what is supplied and what is
    not <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|The direct source route is already explicit
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Application and
    remaining proof obligations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Search and
    unresolved questions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <with|par-left|1tab|Evidence and limitations
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>
  </table-of-contents>

  <\itemize-minus>
    <item>Literature task: <hlink|issue #6|https://github.com/hairer/humanise-yang-mills/issues/6>.

    <item>Source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>.

    <item>Status: original source formulas visually checked; author
    hypothesis comparison completed with the specific unmatched inputs below;
    <strong|conditional match, not independently accepted>. A completed
    comparison is not a proved application to the complete project hierarchy.

    <item>Contributor and agent assistance: TrishenGunaratnam; Codex
    research, source inspection and drafting, session
    <verbatim|TrishenGunaratnam-codex-02>.

    <item>Independent review: pending; reviewed commit and review link not
    yet assigned.

    <item>Scope confirmation: <hlink|maintainer
    reply|https://github.com/hairer/humanise-yang-mills/issues/6#issuecomment-6799207940>
    to the scoped claim request. Requested expiry: 2026-11-11 18:00 UTC.

    <item>Repository snapshot inspected: <verbatim|ecc06d13de67e479666203061918e537316994e3>.
    <verbatim|origin> is the contributor's fork; <verbatim|upstream> is the
    canonical repository.

    <item>Follow-up session: <verbatim|TrishenGunaratnam-codex-02-followup>,
    <hlink|self-claim|https://github.com/hairer/humanise-yang-mills/issues/6#issuecomment-6802505032>,
    until 2026-11-11 21:20 UTC. The original authoring claim was released
    before this follow-up.
  </itemize-minus>

  This is an internal literature/source-match record, following the
  background-note template. It does not create a proof unit or an
  authoritative manuscript section. Under the current repository rules, later
  mathematical exposition and proofs belong directly in manuscript LaTeX;
  this file records their citation gates and evidence.

  <section|Result to be used><label|result-to-be-used>

  The intended application is reconstruction of relativistic fields from the
  appropriate Euclidean correlations. It has three distinct interfaces:

  <\enumerate>
    <item><strong|Coordinate OS construction:> <verbatim|YM.Table.Hierarchy>
    supplies <verbatim|YM.OS.realization>, whose output is a
    <verbatim|YM.OS.Chamber>: a Hilbert-space Gram construction and
    compatible time/space evolution.

    <item><strong|Selected relativistic reconstruction:> the stronger data in
    <verbatim|YM.Spec.Materializes> and its consumers lead to a contour and a
    field system satisfying <verbatim|YM.Boundary.Wightman.Realizes>,
    including vacuum uniqueness.

    <item><strong|Every-character reconstruction and integration:>
    <verbatim|YM.EveryPhase.Completed> quantifies over every character, with
    common labels and boundary mixture laws.
  </enumerate>

  The first output must not be substituted for the second or third. A
  literature citation for a scalar reconstructed theory does not alone
  identify the project's chosen spaces, quotient labels, contours, or
  phasewise choices.

  <strong|Citation decision:> the corrected 1975 OS theorem is a relevant
  candidate, not yet a checked plug-in replacement. In particular,
  fixed-arity <verbatim|Capped> estimates are not the theorem's
  uniform-in-arity growth assumption. Stronger <verbatim|Spread.AllCopy>
  estimates are present and are a serious candidate for the missing
  comparison; they must not be ignored or assumed already converted to the
  paper's Schwartz seminorms. No failure of the project's complete
  reconstruction theorem is inferred from an unresolved literature match.

  <section|Mathematical reference><label|mathematical-reference>

  The following are primary sources. Printed page numbers below are journal
  pages, not a search engine's PDF page labels.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Reference>>|<cell|<strong|Inspected
  statement and locator>>|<cell|<strong|Use and limit>>>|<row|<cell|K.
  Osterwalder and R. Schrader, <em|Axioms for Euclidean Green's functions>,
  Communications in Mathematical Physics <strong|31> (1973), 83\U112,
  <hlink|DOI|https://doi.org/10.1007/BF01645738>, <hlink|article
  text/PDF|https://projecteuclid.org/journals/communications-in-mathematical-physics/volume-31/issue-2/Axioms-for-Euclidean-Greens-functions/cmp/1103858969.pdf>>|<cell|Ÿ2
  pp. 85\U87; Ÿ3 pp. 88\U89; Ÿ6 pp. 102\U104>|<cell|Defines the test spaces
  and E0\UE4; describes spinor/multiplet conventions. The original
  sufficiency claim needs the 1975 correction.>>|<row|<cell|K. Osterwalder
  and R. Schrader, <em|Axioms for Euclidean Green's functions II>,
  Communications in Mathematical Physics <strong|42> (1975), 281\U305, with
  an appendix by S. Summers, <hlink|DOI|https://doi.org/10.1007/BF01608978>,
  <hlink|article text/PDF|https://projecteuclid.org/journals/communications-in-mathematical-physics/volume-42/issue-3/Axioms-for-Euclidean-Greens-functions-II-with-an-Appendix-by/cmp/1103899050.pdf>>|<cell|ŸI
  p. 282; ŸII p. 284, (2.1); ŸIV.1 p. 287, (4.1)\U(4.2) and named Theorem
  E\<prime\> (or E\<dprime\>) \<rightarrow\> R\<prime\>>|<cell|Corrected
  sufficient reconstruction theorem: strengthened regularity plus E1\UE4. Its
  norm and arity quantifiers are part of the hypothesis, not optional
  notation.>>|<row|<cell|Yu. M. Zinoviev, <em|Equivalence of the Euclidean
  and Wightman Field Theories>, <hlink|arXiv:hep-th/9408009v1|https://arxiv.org/pdf/hep-th/9408009v1>,
  2 August 1994>|<cell|Ÿ4, E5 on pp. 21\U22; Theorem 4.1 on p.
  23>|<cell|Alternative using E0\UE5, including an additional weak spectral
  condition formulated through inverse-Laplace limits. It is not a theorem
  from reflection positivity alone. No project match for E5 is certified
  here.>>>>>

  OS II explicitly identifies the incorrect lemma in OS I and gives
  strengthened sufficient conditions. Its linear-growth version controls
  distribution order linearly in arity with factorially bounded constants. A
  separate revised equivalence theorem appears in ŸIII, p. 285, with a
  stronger distribution topology; that is not ordinary fixed-arity
  temperedness. The paper's main text treats one real scalar field; ŸI,
  Remark 5, p. 283 points to the multiplet extension.

  For the main candidate, use <strong|OS II ŸIV.1>, not the similarly named
  condition E0\<prime\> in OS I Ÿ3, Remark 3. Their meanings differ. Record
  the exact norm convention in OS II (2.1) and condition (4.1) when
  establishing the application. Holomorphic continuation by itself does not
  settle tempered boundary values.

  <subsection|Exact formulas checked against the original
  scan><label|exact-formulas-checked-against-the-original-scan>

  The locators in this subsection were checked visually in the original
  journal scans, not inferred from OCR. OS II uses the joint Schwartz
  seminorm

  <\equation*>
    <around|\||f|\|><rsub|p>=sup<rsub|x\<in\>\<bbb-R\><rsup|m>,<around|\||\<alpha\>|\|>\<leqslant\>p>(1+<with|math-display|false|<big|sum><rsub|j=1><rsup|m>x<rsub|j><rsup|2>)<rsup|p/2><around|\||D<rsup|\<alpha\>>*f<around|(|x|)>|\|><space|2em><text|(ŸII,
    printed p. 284, (2.1)).>>
  </equation*>

  Its space <math|\<cal-S\><rsub|0><around|(|\<bbb-R\><rsup|4*n>|)>> has the
  induced Schwartz topology: all derivatives of its elements vanish whenever
  any two four-dimensional arguments coincide. Flatness on this set is
  stronger than just setting the function value to zero there. This is not
  the space of all Schwartz tests and is not the space of tests supported in
  one fixed separated compact set.

  The exact corrected alternatives on printed p. 287 are:

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Source
  condition>>|<cell|<strong|Quantifiers and bound>>|<cell|<strong|Matching
  decision>>>|<row|<cell|E0\<prime\>, (4.1)>|<cell|<math|\<frak-S\><rsub|0>=1>,
  <math|\<frak-S\><rsub|n>\<in\>\<cal-S\><rsub|0><rprime|'><around|(|\<bbb-R\><rsup|4*n>|)>>;
  there are one positive integer <math|s> and positive numbers
  <math|\<sigma\><rsub|n>\<leqslant\>a<around|(|n!|)><rsup|b>>, with
  <math|a,b> independent of <math|n>, such that (>|<cell|\\mathfrak
  S_n(f)>>|<row|<cell|E0\<dprime\>, (4.2)>|<cell|<math|\<frak-S\><rsub|0>=1>,
  <math|\<frak-S\><rsub|n>\<in\>\<cal-S\><rprime|'><around|(|\<bbb-R\><rsup|4*n>|)>>;
  one <math|s> and a factorially bounded <math|\<sigma\><rsub|n>> satisfy
  (>|<cell|\\mathfrak S_n(f_1\\otimes\\cdots\\otimes f_n)>>>>>

  The named theorem <strong|E\<prime\> (or E\<dprime\>) \<rightarrow\>
  R\<prime\>> immediately below these formulas gives a uniquely determined
  Wightman theory from the chosen corrected regularity condition and E1\UE4.
  Part (b), (4.3), gives a positive integer <math|w> and bounds
  <math|<around|\||\<frak-W\><rsub|n><around|(|f|)>|\|>\<leqslant\>\<omega\><rsub|n><around|\||f|\|><rsub|n*w>>,
  where <math|0\<less\>\<omega\><rsub|n>\<leqslant\>a*b<rsup|n<rsup|2>>>. The
  output constants are not asserted to have factorial growth. This named
  theorem must not be confused with <strong|Theorem 4.1 on printed p. 288>,
  an intermediate analyticity/estimate theorem.

  The inherited hypotheses were checked in OS I Ÿ3, printed p. 88 (PDF page
  6): E1 is proper Euclidean covariance; E2 is positivity for all finite
  sequences of ordered positive-time joint tests, using reflection and
  conjugate reversal; E3 is permutation symmetry; E4 is the
  spatial-translation cluster limit for two such finite sequences. OS I p.
  89, Remark 2, also gives the covariant compact-test cluster formulation
  (3.1). They are distributional requirements, not assertions about one
  separated point or one field component.

  For the <strong|unselected> family, there is a documented weaker conclusion
  rather than a need to assume unique vacuum: OS II p. 283, Remark 6, retains
  the subset correspondences of OS I p. 89, Remark 3, with the corrected
  changes. In particular, omitting E4 retains R0\UR3 and R5, omitting the
  cluster axiom R4. This does not remove the corrected regularity,
  covariance, positivity or symmetry requirements. It does not prove
  <verbatim|Wightman.Realizes.unique> for a mixture.

  OS II p. 283, Remark 5, explicitly allows a denumerable collection of
  arbitrary spinor fields, referring to OS I Ÿ6, pp. 102\U104. OS I pp.
  102\U103 specifies the component covariance, adjoint indexing and
  statistics signs. Consequently the scalar theorem is not the only available
  version; the project's exact component/representation and mixed-correlation
  identifications must still be checked before applying that extension. No
  uniformity across all label degrees is inferred from the scalar statement.

  Zinoviev v1 pp. 21\U23 was also visually checked. Its E5 is precisely the
  iterated inverse-Laplace limit in (4.12), with (4.13) and (2.54) defining
  the test transforms: for each relevant odd distribution there is a
  threshold <math|K>, then all integers <math|k\<gtr\>K>, all
  <math|1\<leqslant\>l\<leqslant\>m>, and all stated test tuples must satisfy
  the limit. The time-cutoff limits precede the integer-index limits. Theorem
  4.1 on p. 23 gives E0\UE5 \<leftrightarrow\> R0\UR5. Merely producing a
  momentum PVM after reconstruction does not establish this input condition.

  <section|Match to the formalisation><label|match-to-the-formalisation>

  All declaration paths below refer to the pinned imported Lean revision.
  Findings are bounded source inspection, not a new elaboration, kernel
  check, or independent proof audit. \PUnresolved\Q means this inspection did
  not establish the required bridge; it does not mean no such argument exists
  elsewhere in the source.

  <subsection|Input checklist><label|input-checklist>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Requirement
  or convention>>|<cell|<strong|Exact project
  anchor>>|<cell|<strong|Assessment and required
  comparison>>>|<row|<cell|Four-dimensional Euclidean space; time
  reflection>|<cell|<verbatim|YM.timeAxis>, <verbatim|YM.Signed> in
  <verbatim|Lean/YM/Space/Index.lean>; <verbatim|YM.Word.reflect> in
  <verbatim|Lean/YM/Euclid/Words.lean>>|<cell|Source uses the final
  coordinate for time. The articles use the first coordinate. Record the
  coordinate permutation and analytic/Fourier sign conventions, especially
  the direction of the spectral cone.>>|<row|<cell|Arity zero and
  normalization>|<cell|<verbatim|YM.Table.Basic.trivial>,
  <verbatim|YM.Table.Basic.unital>, <verbatim|Lean/YM/Euclid/Table.lean>>|<cell|Empty
  correlations equal one; unit insertions have explicit laws. These directly
  supply the normalization part, with the project's label
  convention.>>|<row|<cell|Euclidean correlations as distributions, not
  arbitrary diagonal values>|<cell|<verbatim|YM.Table.value>,
  <verbatim|YM.Table.Smooth>, <verbatim|Lean/YM/Euclid/Table.lean>;
  <verbatim|YM.Test>, <verbatim|YM.Test.applyTo>,
  <verbatim|Lean/YM/Euclid/Test.lean>>|<cell|The table is smooth only on
  distinct-point configurations. Its initial tests are compact smooth tests
  supported there. OS I Ÿ2 and OS II ŸII use a Schwartz subspace flat on
  coincidence diagonals. Establish a continuous extension from compact
  separated tests to that exact space; do not use the table's arbitrary
  values off configuration space.>>|<row|<cell|Strong regularity/growth
  across every arity>|<cell|<verbatim|YM.Table.Capped> in
  <verbatim|Lean/YM/Euclid/Table.lean>>|<cell|Its quantifier order permits
  constants to depend on arity, every fixed label tuple, and derivative
  order. That signature alone supplies neither linear arity growth nor
  factorial control. The needed uniform bridge is
  unresolved.>>|<row|<cell|Stronger growth
  candidate>|<cell|<verbatim|YM.OS.Spread.radius>,
  <verbatim|YM.OS.Spread.AllCopy>, <verbatim|YM.OS.Spread.Laws.cap>,
  <verbatim|Lean/YM/OS/Slabs.lean>; <verbatim|YM.OS.irons>,
  <verbatim|Lean/YM/OS/Halves.lean>>|<cell|For bounded label degree and norm,
  <verbatim|AllCopy> supplies an operator-norm bound uniform over word
  length, with radius <verbatim|C^length * (length/r)^(A*length)>.
  <verbatim|irons> additionally assumes <verbatim|YM.OS.Tiled>. Convert these
  slab bounds to the chosen distribution seminorm, preserving constants
  through configuration covers, smearing, and arity. Do not treat
  <verbatim|Tiled> as a consequence of <verbatim|Hierarchy>
  alone.>>|<row|<cell|E1: translations>|<cell|<verbatim|YM.Table.Homogeneous>,
  <verbatim|YM.Table.Hierarchy.translations>,
  <verbatim|Lean/YM/Euclid/Table.lean>, <verbatim|Words.lean>>|<cell|Translation
  invariance is explicit on configuration space. Transport it through the
  distribution extension and quotient labels.>>|<row|<cell|E1: full
  continuous rotations and component action>|<cell|<verbatim|YM.Table.RealSpin>
  in <verbatim|Table.lean>; <verbatim|YM.Signed> in
  <verbatim|Space/Index.lean>; <verbatim|YM.Table.Rotation>,
  <verbatim|.Laws>, <verbatim|.Oriented> in
  <verbatim|Lean/YM/Euclid/Stress.lean>>|<cell|<verbatim|RealSpin> uses the
  finite signed-permutation group and must not be described as full
  continuous rotation covariance. <verbatim|Rotation.Laws> and
  <verbatim|Rotation.Oriented> supply the stronger candidate data separately.
  Verify their passage to component distributions and their
  finite-dimensional representation conventions.>>|<row|<cell|E2: reflection
  positivity for arbitrary finite polynomial
  sums>|<cell|<verbatim|YM.Table.RP>, <verbatim|YM.Table.PastTest>,
  <verbatim|YM.Table.RPSmear>, <verbatim|YM.Table.Hierarchy.onTests>,
  <verbatim|Lean/YM/Euclid/Words.lean>>|<cell|Both word and smeared Gram
  inequalities are explicit, with varying arities in a finite sum. Reflection
  reverses the word and conjugates/transforms its labels; the Gram form is
  antilinear in the first entry. Compare first on compact ordered
  positive-time tests, then justify continuity/density on the article's full
  test space. Checking only products of one-point tests would be
  insufficient.>>|<row|<cell|Reflection positivity on other
  planes>|<cell|<verbatim|YM.Table.ClassWords.transported>,
  <verbatim|Lean/YM/Euclid/OtherPlanes.lean>>|<cell|Requires a hierarchy,
  full rotation laws, <verbatim|Rotation.Oriented>, and <verbatim|T.respects
  S>. This is an additional transport result, not a hidden field of
  <verbatim|Hierarchy>.>>|<row|<cell|E3: permutation symmetry and
  statistics>|<cell|<verbatim|YM.Table.Symmetric.same>,
  <verbatim|YM.Table.Basic>, <verbatim|Lean/YM/Euclid/Table.lean>>|<cell|Exact
  simultaneous permutation of points and labels is supplied. It is a bosonic
  symmetry statement. A spinor reference with graded signs would require a
  separate statistics match; the word \Pspin\Q in a source name is not
  evidence of fermionic statistics.>>|<row|<cell|E4: clustering / unique
  vacuum>|<cell|<verbatim|YM.OS.Selection.Certificate.heat> and
  <verbatim|.still>, <verbatim|Lean/YM/Phase/Mixture.lean>;
  <verbatim|YM.Boundary.Wightman.Realizes.unique>,
  <verbatim|Lean/YM/Fields/System.lean>>|<cell|<verbatim|Hierarchy> has no
  cluster field. Selected-phase <verbatim|UniqueHeat> is a candidate input
  for a clustering/uniqueness argument, but the required smeared cluster
  statement must be established. Do not infer it for an unselected mixture,
  and do not use <verbatim|Realizes.unique> as an input to a theorem intended
  to produce that same realization.>>|<row|<cell|Scalar theorem versus the
  project's label system>|<cell|<verbatim|YM.Table.Field> in
  <verbatim|Lean/YM/Euclid/Null.lean>; <verbatim|YM.Table.Union>,
  <verbatim|YM.DiffPlan.joint> in <verbatim|Lean/YM/Euclid/Union.lean>;
  <verbatim|Rotation.Laws> in <verbatim|Stress.lean>>|<cell|Each fixed-level
  quotient is finite-dimensional; finitely many union labels can be lifted to
  one level under the stated inclusion hypotheses. A compatible
  component/multiplet application, including common constants, adjoints,
  identifications between levels and a common reconstructed domain, remains
  to be written. Applying a scalar theorem separately to each label does not
  supply mixed correlations.>>>>>

  <subsection|Output and no-circularity checklist><label|output-and-no-circularity-checklist>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Desired
  conclusion>>|<cell|<strong|Project definition or
  consumer>>|<cell|<strong|What the citation must actually
  provide>>>|<row|<cell|A chamber and translation
  evolution>|<cell|<verbatim|YM.OS.realization>, <verbatim|YM.OS.Chamber> in
  <verbatim|Lean/YM/OS/Dynamics.lean>; <verbatim|YM.OS.Semigroup> in
  <verbatim|Lean/YM/OS/Flow.lean>>|<cell|A directly inspected source theorem
  from <verbatim|Hierarchy>, with strongly continuous self-adjoint time
  contractions and commuting spatial unitaries. No full Poincaré
  representation, fields, or unique vacuum is in this
  conclusion.>>|<row|<cell|Analytic continuation and joint tempered
  boundary>|<cell|<verbatim|YM.Boundary.Waves.Region>, <verbatim|.Opens>,
  <verbatim|.NonTangentialFree>, <verbatim|YM.Boundary.Contour.From>,
  <verbatim|Lean/YM/Boundary/Contour.lean>>|<cell|Match the strict
  complex-time region, Euclidean root values, integrability, and convergence
  against <strong|joint> Schwartz tests on the same quotient labels.
  Pointwise continuation or separate-variable convergence alone is
  insufficient.>>|<row|<cell|A relativistic field
  realization>|<cell|<verbatim|YM.Boundary.Fields.Total>,
  <verbatim|.sharpPair>, <verbatim|.commutes>,
  <verbatim|YM.Boundary.Wightman.Realizes>,
  <verbatim|Lean/YM/Fields/System.lean>>|<cell|Match dense common domain,
  cyclic normalized vacuum, distributional fields, adjoints, locality, strong
  Poincaré action, spectral PVM/cone and the specified vacuum uniqueness.
  <verbatim|faithful> also asks that a nonzero quotient label is detected by
  the field; this needs a project-specific
  identification.>>|<row|<cell|Produce reconstruction from earlier
  data>|<cell|<verbatim|YM.Bid.Pantry>, <verbatim|Lean/YM/Bid/Corners.lean>;
  <verbatim|YM.Next.BOUNDARY.contour>, <verbatim|.after_materializes>,
  <verbatim|.Compatible.vacuum>, <verbatim|Lean/YM/Next/BOUNDARY/Stage.lean>>|<cell|These
  are useful earlier interfaces: <verbatim|Pantry.counter> contains the
  stronger spread laws; <verbatim|after_materializes> produces contours and
  selected <verbatim|Realizes> from <verbatim|Materializes> and spin descent.
  Check citation applicability there, rather than starting with
  <verbatim|Spec.Final.realization>, which already contains the
  target.>>|<row|<cell|Selected versus unselected
  theory>|<cell|<verbatim|YM.Spec.Relativistic>, <verbatim|YM.Spec.Final>,
  <verbatim|Lean/YM/Spec/Closed.lean>; <verbatim|.unselected_pantry>,
  <verbatim|.selected_pantry> in <verbatim|Stage.lean>>|<cell|Keep the
  full-table contour and selected-phase contour distinct.
  <verbatim|FieldCore> permits the unselected theory without vacuum
  uniqueness; <verbatim|.Compatible.vacuum> adds the clause from
  <verbatim|UniqueHeat>. A reference requiring clustering is not
  automatically a reference for the unselected mixture.>>|<row|<cell|Every
  character, not just almost every character>|<cell|<verbatim|YM.OS.Selection.Certificate.states>,
  <verbatim|.sym>, <verbatim|.retains>, <verbatim|.coordinates>,
  <verbatim|.calculus>, <verbatim|Lean/YM/Phase/Mixture.lean>;
  <verbatim|YM.EveryPhase.Almanac.copy>, <verbatim|Lean/YM/EveryPhase/Pack.lean>;
  <verbatim|YM.EveryPhase.Completed>, <verbatim|.all_characters>,
  <verbatim|Lean/YM/EveryPhase/Extension.lean>>|<cell|Hierarchy and rotation
  candidates are supplied for every character; <verbatim|Almanac.copy> makes
  stronger bounds uniform in the character. <verbatim|.almostEvery> only
  proves an almost-everywhere heat statement and cannot alone supply
  <verbatim|.Completed.euclid> for every character. Extra source arguments
  are required.>>|<row|<cell|Integrate boundary distributions to the
  unselected contour>|<cell|<verbatim|YM.EveryPhase.Completed.depends>,
  <verbatim|.at_words>, <verbatim|.at_boundary>, <verbatim|Extension.lean>;
  <verbatim|Lean/YM/EveryPhase/Barycenter.lean>>|<cell|Pointwise
  reconstruction for each phase does not prove continuity/measurability or
  justify exchanging boundary limits and phase integration. These remain
  distinct obligations with uniform estimates and the actual phase
  measure.>>>>>

  <subsection|Completed comparison: what is supplied and what is
  not><label|completed-comparison-what-is-supplied-and-what-is-not>

  The following decisions finish the bounded author comparison. \PBridge
  required\Q is a result of that comparison, not a claim that a missing
  reference check has been silently satisfied.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Item>>|<cell|<strong|Decision
  at the inspected input interface>>>|<row|<cell|Dimension, coordinate and
  pairing convention>|<cell|Supplied up to the explicit coordinate map
  <math|<around|(|p<rsub|0>,p<rsub|1>,p<rsub|2>,p<rsub|3>|)>\<mapsto\><around|(|p<rsub|3>,p<rsub|0>,p<rsub|1>,p<rsub|2>|)>>,
  taking project time axis 3 to article time axis 0. It preserves the
  Euclidean norm and Lebesgue measure and conjugates the reflection. Both
  distribution pairings are complex linear in the test, with conjugation in
  the reflected first Gram argument. The project's radian Fourier conventions
  are documented in <verbatim|Lean/YM/Distribution/Tests.lean>; no sign-free
  identification of a prescribed momentum PVM is claimed.>>|<row|<cell|E0
  normalization>|<cell|Supplied by <verbatim|Table.Basic.trivial>. This does
  not supply continuity or an arity estimate.>>|<row|<cell|E0\<prime\>
  distribution and growth>|<cell|Bridge required: produce the flat-diagonal
  distribution extension and the exact (\\sigma_n>>|<row|<cell|E1>|<cell|Kernel
  translations and full quotient rotations are supplied by
  <verbatim|Hierarchy.translations>, <verbatim|Rotation.Laws>, and
  <verbatim|Rotation.Oriented> when their separate hypotheses are present.
  Transport to the chosen distribution extension and identify the article's
  component action. <verbatim|Hierarchy.spin> alone supplies only signed
  permutations.>>|<row|<cell|E2>|<cell|Supplied on compact separated
  positive-time joint tests by <verbatim|Hierarchy.onTests>, including finite
  sums of different arities and labels. The article's ordered tests form a
  restriction of this compact domain. Extension to its noncompact flat
  Schwartz tests requires the same continuous extension and density argument
  as E0\<prime\>.>>|<row|<cell|E3>|<cell|Supplied on configurations by
  <verbatim|Basic.toSymmetric.same>. Simultaneous point/label permutations
  give bosonic mixed-kernel symmetry. The assertion must pass through the
  extension; arbitrary spinor statistics are not being
  asserted.>>|<row|<cell|E4>|<cell|<verbatim|Selection.Certificate.heat>
  supplies selected heat-ground uniqueness, not the article's smeared spatial
  cluster formula by definition. That formula needs a separate derivation for
  a full E\<prime\> \<rightarrow\> R\<prime\> application. For the unselected
  family use the corrected nonclustering subset above; do not demand E4 or
  assert R4 there.>>|<row|<cell|Component
  system>|<cell|<verbatim|Rotation.Laws.filtered> preserves the finite levels
  and <verbatim|DiffPlan.joint> lifts each finite tuple to a common level.
  These provide a concrete comparison interface. The article's mixed
  component distributions, adjoints and Lorentz representation must be
  identified; independent scalar reconstructions do not
  suffice.>>|<row|<cell|Project-specific outputs>|<cell|The article does not
  identify a prescribed <verbatim|Contour>, quotient-label faithfulness,
  every-character choices, or boundary barycenters. Those require the
  source's compatibility/identification arguments, not stronger wording of
  the citation.>>>>>

  <subsection|The direct source route is already
  explicit><label|the-direct-source-route-is-already-explicit>

  Further bounded inspection resolves an ambiguity in the earlier draft: a
  lack of a checked OS II citation match does <strong|not> leave the source
  with only uncontrolled pointwise analytic continuation. The following
  concrete source route constructs a <em|joint tempered> boundary without
  invoking E0\<prime\> as a premise:

  <\enumerate>
    <item><verbatim|YM.Work.C01.answer> in <verbatim|Lean/YM/Work/C01.lean>
    obtains centered insertion bounds and compatible quotient operators from
    <verbatim|Bid.Pantry.counter.cap>.

    <item><verbatim|YM.Work.C03.defined_power> in
    <verbatim|Lean/YM/Work/C03.lean> obtains <verbatim|Waves.Breathes> with
    exponent the sum of the insertion exponents.
    <verbatim|YM.Work.C04.answer> in <verbatim|Lean/YM/Work/C04.lean>
    supplies integrability, height continuity and tested Cauchy\URiemann
    identities (<verbatim|Bounds>, <verbatim|Along>, <verbatim|Lines>).

    <item><verbatim|YM.Boundary.Waves.seeks> and <verbatim|.jointly> in
    <verbatim|Lean/YM/Shift/Osc.lean> construct continuous complex-linear
    functionals on <strong|joint Schwartz tests>, with an explicit continuous
    <verbatim|toll> seminorm bound, using the tested Taylor remainder. The
    result is <verbatim|Surface S> and <verbatim|NonTangentialFree>, not
    merely separate-variable convergence. The prerequisite definitions are in
    <verbatim|Lean/YM/Shift/Ridge.lean>; <verbatim|Distn> in
    <verbatim|Lean/YM/Distribution/Tests.lean> is a continuous linear map on
    Schwartz tests.

    <item><verbatim|YM.Org.Show.Rhythm.opens> in
    <verbatim|Lean/YM/Org/Theatre.lean> applies that result.
    <verbatim|YM.Next.BOUNDARY.rhythm> and <verbatim|.contour> assemble the
    inputs from <verbatim|Bid.Pantry>. <verbatim|.Compatible.vacuum>
    separately adds <verbatim|UniqueHeat>; the unselected construction does
    not borrow it from the selected phase.
  </enumerate>

  This is a source crosswalk, not a new proof or an independent validity
  judgment. <verbatim|Breathes> has quantifiers
  <math|\<forall\>n,v\<exists\>m,C>, so this route alone does not certify OS
  II's arity-uniform E0\<prime\>. It instead supplies a precise alternative
  proof boundary for later LaTeX exposition. A consumer can explain this
  direct route without claiming to have verified the different E0\<prime\>
  premise.

  The paper's scalar Wightman conclusion and the project's richer
  <verbatim|Realizes> record must be compared field by field. No claim of a
  mass gap, every-phase uniformity, label faithfulness, or continued
  stress-tensor identities follows just from an OS reference. Stress outputs
  are outside this literature task.

  <section|Application and remaining proof
  obligations><label|application-and-remaining-proof-obligations>

  The following gates specify what a future consuming proof must establish
  before using the candidate reference. They are proposed mathematical inputs
  for later LaTeX exposition, not new proved lemmas in this Markdown record.

  <\enumerate>
    <item><strong|Fix the family to reconstruct.> Name the full table or the
    selected character table and the original quotient label space. Name each
    component sequence and its adjoint/rotation action, including
    compatibility as the level increases. Do not obtain these objects by
    assuming the final realization.

    <item><strong|Construct the distribution input.> Extend the
    compact-separated kernel pairing to the exact flat-diagonal Schwartz
    space. Establish continuity and the chosen corrected growth condition
    with the right arity quantifiers. The raw table values on coincident
    configurations cannot specify an extension.

    <item><strong|Match all remaining hypotheses.> Verify continuous
    rotations, translations, reflected adjoints, mixed-label symmetry and
    positivity in the same extension. If applying the full theorem, establish
    its cluster hypothesis for that family. A nonclustering reconstruction
    requires the corresponding corrected subset version, with an explicit
    weaker conclusion and no unique-vacuum assertion.

    <item><strong|Identify the reconstructed object.> Match the output
    distributions with the prescribed contour and prove the
    component/quotient field identifications, common domain, faithfulness and
    vacuum convention. A uniqueness statement about distributions is not by
    itself the needed intertwiner between specified field systems.
    <verbatim|Stage.lean> exposes relevant compatibility and attachment data.

    <item><strong|For PU-19, repeat with uniform phase control.> Establish
    hypotheses for every character with uniform constants where integration
    requires them; prove measurability/continuity and boundary-limit
    interchange separately. No exceptional-set deletion is allowed if the
    intended conclusion is all characters.
  </enumerate>

  The strongest quantitative lead in this inspection is
  <verbatim|Spread.AllCopy>, transported uniformly by
  <verbatim|Almanac.copy>. A separately scoped application proof should
  either derive OS II's precise growth condition from that interface or use
  the project's direct contour/temperedness route without asserting the OS
  hypothesis. No conversion proof has been completed here.

  An alternative is Zinoviev's Theorem 4.1. To use it one must prove its E5
  inverse-Laplace limit condition, not merely point to the existence of the
  project's eventual momentum PVM. Using a PVM obtained from the
  reconstruction being justified would be circular. This alternate
  application is unresolved too.

  The selected phase's heat condition and the unselected mixture should
  therefore remain separate in the proof map. This note supports the
  distinction proposed in <hlink|PR #18|https://github.com/hairer/humanise-yang-mills/pull/18>
  for issue #11, but does not edit that author's interface audit or assign
  its declarations a second proof owner. The draft there was inspected at
  branch <verbatim|codex/issue-11-continuum-interfaces>; it is navigation
  evidence, not accepted proof. The provisional unit plan and that interface
  draft credit Scott Armstrong's <hlink|Yang-Mills informalization
  project|https://github.com/scottnarmstrong/yang-mills-informalization> for
  prior navigation and clustering. This note checks the named source
  interfaces directly and does not treat that map as proof evidence.

  <section|Search and unresolved questions><label|search-and-unresolved-questions>

  Searches on 11 November 2026 included <verbatim|Osterwalder Schrader Axioms
  Euclidean Greens functions II 1975 theorem linear growth condition pdf>,
  <verbatim|Osterwalder Schrader 1973 Axioms Euclidean Greens functions
  project euclid 83 112>, and <verbatim|Osterwalder linear growth sn>. The
  actual primary-paper text, rather than a search-result summary, was used
  for the named theorem and correction.

  <\itemize-minus>
    <item><strong|Selected candidate:> OS II ŸIV.1 with its corrected growth
    hypothesis.

    <item><strong|Inspected alternative:> OS II ŸIII's stronger
    distribution-topology equivalence; no project match to that topology is
    established.

    <item><strong|Inspected alternative:> Zinoviev v1 Ÿ4 E5 and Theorem 4.1;
    its weak spectral condition remains a specific additional input, not a
    way to omit regularity.

    <item><strong|Rejected:> unqualified sufficiency of OS I E0\UE4,
    reflection positivity alone, smoothness away from diagonals alone,
    fixed-arity bounds in place of uniform arity control, and use of the
    already-constructed Wightman theory as its own input.

    <item><strong|Not used as mathematical evidence:> tertiary axiom
    summaries, search snippets, unrelated claimed Yang\UMills constructions
    returned by search, and a student's thesis returned as a possible lead
    for the norm notation.

    <item><strong|Overlap:> existing background notes and
    <verbatim|Bots/notes/> were checked, along with the live issue comments,
    open PR list, and issue #11 / PR #18 interface draft. No other claim on
    this literature note was found.
  </itemize-minus>

  The author reference inspection and bounded comparison are complete; the
  five application gates above remain mathematical obligations before a
  cite-and-apply replacement is justified. They are not declarations that the
  formal source is incorrect or that the corrected reconstruction theorem
  cannot apply. Independent mathematical and Lean-correspondence review is
  required before acceptance.

  <subsection|Evidence and limitations><label|evidence-and-limitations>

  Actual source inspections included <verbatim|cat> or bounded <verbatim|sed
  -n> reads of:

  <\verbatim-code>
    Lean/YM/Space/Index.lean

    Lean/YM/Euclid/{Register,Table,Test,Words,Null,Union,Stress,OtherPlanes}.lean

    Lean/YM/OS/{Schwinger,Flow,Dynamics,Slabs,Halves}.lean

    Lean/YM/Phase/Mixture.lean

    Lean/YM/Bid/Corners.lean

    Lean/YM/Next/BOUNDARY/Stage.lean

    Lean/YM/Spec/Closed.lean

    Lean/YM/Fields/System.lean

    Lean/YM/Boundary/Contour.lean

    Lean/YM/EveryPhase/{Pack,Extension,Barycenter}.lean

    Lean/YM/Work/{B02,C01,C03,C04}.lean

    Lean/YM/Shift/{Ridge,Osc}.lean

    Lean/YM/Org/Theatre.lean

    Lean/YM/Distribution/{Tests,Product}.lean
  </verbatim-code>

  The following searches were run to locate the bounded definitions and
  consumers:

  <\shell-code>
    rg -n 'structure Hierarchy\|def Hierarchy\|growth\|Euclidean\|rotation\|cluster\|positiv\|structure
    Relativistic\|structure Realizes' Lean/YM/Euclid/Words.lean
    Lean/YM/OS/Schwinger.lean Lean/YM/OS/Dynamics.lean
    Lean/YM/Spec/Closed.lean Lean/YM/Fields/System.lean
    Lean/YM/EveryPhase/Pack.lean Lean/ChallengeSpec.lean

    rg -n 'def Capped\|structure Capped\|structure Basic\|def
    Homogeneous\|def Smooth\|def RealSpin' Lean/YM/Euclid

    rg -n 'structure Pantry\|theorem contour\|lemma contour\|def
    contour\|E0\|linearGrowth\|factorial\|Factorial' Lean/YM/Bid
    Lean/YM/Next/BOUNDARY Lean/YM/Boundary -g '*.lean'
  </shell-code>

  Some preliminary searches used guessed filenames that did not exist. The
  actual paths above were subsequently located with <verbatim|rg>; no
  negative conclusion rests on a missing guessed path. Initial direct
  downloads from Project Euclid and Springer returned HTML; indexed primary
  full text was used in the first draft. The follow-up located pre-existing
  local copies of both original journal scans and rendered them with
  <verbatim|pdftoppm>. OS II printed pp. 283\U284 and 287, and OS I printed
  pp. 86, 88\U89, were visually inspected; multiplet statements on OS I pp.
  102\U104 and the OS II p. 282 correction were additionally read from the
  PDF. Zinoviev v1 was downloaded from arXiv; pp. 21\U23 were rendered and
  visually inspected. The scan-access/formula-typography limitation is
  therefore resolved. No copyrighted scan or rendered page is added to the
  repository.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Inspected
  PDF>>|<cell|<strong|SHA-256>>|<cell|<strong|Page
  convention>>>|<row|<cell|OS I, local <verbatim|1103858969.pdf>>|<cell|<verbatim|9e45658863823a5a769891141f8eb7b935f0ddfec62f6554d9f802d8157da878>>|<cell|PDF
  page 1 = printed p. 83; 30 PDF pages.>>|<row|<cell|OS II, local
  <verbatim|1103899050.pdf>>|<cell|<verbatim|643a45d3037f788ba80ecfef2f218778d7d511102f75ffc44468e20c16382c71>>|<cell|PDF
  page 1 = printed p. 281; 26 PDF pages, including an unnumbered terminal
  page.>>|<row|<cell|Zinoviev, arXiv v1 PDF>|<cell|<verbatim|4e9e572800baebbe79540d6b9cbe472a03d8932d556f7db56453bb6b00d1d5aa>>|<cell|Printed/PDF
  pp. 21\U23 agree; 26 pages.>>>>>

  The follow-up used bounded <verbatim|sed -n> reads and <verbatim|rg -n>
  searches of the named source files, PDF text extraction with
  <verbatim|pypdf>, <verbatim|pdftoppm -f ... -l ... -png> for the named page
  ranges, visual inspection of the resulting PNGs, and <verbatim|shasum -a
  256> of the PDFs. PDF text extraction had font warnings for Zinoviev; the
  limit and theorem statements were checked visually rather than trusted to
  OCR.

  No fresh Lean build, axiom replay, full dependency-tree audit, or
  independent review was performed. Existing build evidence is separate from
  this citation decision. Structural checking does not validate the
  bibliography or hypotheses. No manuscript or Lean source was changed.
  Publication was held until the contributor explicitly authorised draft
  submission.

  Validation on 11 November 2026 (updated in the follow-up): SHA-256
  comparison of the 32 named inspected source files against
  <verbatim|Lean/SOURCES.sha256> passed. <verbatim|python3
  scripts/check_blueprint.py> passed, reporting <verbatim|Blueprint structure
  OK: 1 units. Lean and mathematics were not verified.> The existing unit is
  unrelated to this note. <verbatim|git diff --check> passed for the
  follow-up. The earlier new-file whitespace check also passed. This note
  remains unreviewed. The live AGENTS.md, CONTRIBUTING.md,
  docs/coordination.md, docs/agent-prompts.md and docs/proof-standard.md were
  read again; this output is a permitted internal background record, and any
  new authoritative proof must be written once in <verbatim|manuscript/>
  LaTeX, with build/render checks and linked correspondence metadata.
</body>

<\initial>
  <\collection>
    <associate|html-title|Osterwalder\USchrader reconstruction: reference and
    hypothesis checklist \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|application-and-remaining-proof-obligations|<tuple|4|9>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|5|10>>
    <associate|auto-11|<tuple|5.1|11>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|2.1|3>>
    <associate|auto-4|<tuple|3|4>>
    <associate|auto-5|<tuple|3.1|5>>
    <associate|auto-6|<tuple|3.2|6>>
    <associate|auto-7|<tuple|3.3|7>>
    <associate|auto-8|<tuple|3.4|9>>
    <associate|auto-9|<tuple|4|9>>
    <associate|completed-comparison-what-is-supplied-and-what-is-not|<tuple|3.3|7>>
    <associate|evidence-and-limitations|<tuple|5.1|11>>
    <associate|exact-formulas-checked-against-the-original-scan|<tuple|2.1|3>>
    <associate|input-checklist|<tuple|3.1|5>>
    <associate|match-to-the-formalisation|<tuple|3|4>>
    <associate|mathematical-reference|<tuple|2|2>>
    <associate|osterwalderschrader-reconstruction-reference-and-hypothesis-checklist|<tuple|?|1>>
    <associate|output-and-no-circularity-checklist|<tuple|3.2|6>>
    <associate|result-to-be-used|<tuple|1|2>>
    <associate|search-and-unresolved-questions|<tuple|5|10>>
    <associate|the-direct-source-route-is-already-explicit|<tuple|3.4|9>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Result
      to be used> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Mathematical
      reference> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Exact formulas checked against the original
      scan <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Match
      to the formalisation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Input checklist
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|Output and no-circularity checklist
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|Completed comparison: what is supplied and
      what is not <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|The direct source route is already explicit
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Application
      and remaining proof obligations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Search
      and unresolved questions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Evidence and limitations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>
    </associate>
  </collection>
</auxiliary>