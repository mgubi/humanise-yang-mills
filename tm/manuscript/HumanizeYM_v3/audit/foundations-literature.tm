<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Foundations: literature checks (18 November
  2026)><label|foundations-literature-checks-18-november-2026>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Checked
    sources> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Proof
    decisions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Local-section
    search> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Update 19
    November: FILS full statement inspected>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>
  </table-of-contents>

  <section|Checked sources><label|checked-sources>

  <\itemize-minus>
    <item><strong|Wilson1974>: APS publisher page,
    <hlink|https://journals.aps.org/prd/abstract/10.1103/PhysRevD.10.2445|https://journals.aps.org/prd/abstract/10.1103/PhysRevD.10.2445>.
    Verified title, author, journal/volume/page/year and abstract describing
    gauge-invariant lattice quantization. Full article not inspected
    (publisher access restriction). Suitable attribution for Wilson action
    and formulation, not for any continuum-existence statement.

    <item><strong|OsterwalderSeiler1978>: publisher search record,
    <hlink|https://www.sciencedirect.com/science/article/pii/0003491678900398|https://www.sciencedirect.com/science/article/pii/0003491678900398>.
    Verified title, authors, Annals of Physics 110 (1978), pp. 440\U471 and
    abstract's assertion of physical positivity of lattice approximations.
    Direct page access returned 403 and DOI route failed. No exact theorem
    number or full finite-torus hypothesis verification is claimed. The
    source manuscript's restricted gauge-invariant/interior-support theorem
    is at Martin <verbatim|existence/lattice.tex>,
    <verbatim|prop:ex-lattice-finite-reflection>, lines 182\U191; both site
    and link cuts are specified at lines 98\U105. Before final acceptance
    compare these domains to the original statement or Seiler's book.

    <item><strong|FrohlichIsraelLiebSimon1978>: original author-hosted paper
    identified at <hlink|https://www.math.caltech.edu/SimonPapers/93.pdf|https://www.math.caltech.edu/SimonPapers/93.pdf>;
    search record verifies CMP 62 (1978), pp. 1\U34. Direct PDF fetch
    returned 502. An institutional original preprint is
    <hlink|https://repo-archives.ihes.fr/FONDS_IHES/I_Prepublications/FROHLICH/1978-1980/P_78_224/P_78_224.pdf|https://repo-archives.ihes.fr/FONDS_IHES/I_Prepublications/FROHLICH/1978-1980/P_78_224/P_78_224.pdf>.
    Manuscript citation points to Ÿ4, Theorems 4.1\U4.2. Exact
    multi-reflection and complex-conjugation conventions remain to check; do
    not use a metadata check as proof of a chessboard variant.

    <item><strong|Seiler1982>: bibliographic entry supplied by Scott, LNP 159
    chapter pp. 3\U98, DOI 10.1007/3-540-11559-5_2. Manuscript locators Ÿ2a,
    Theorems 2.1\U2.2. Not independently inspected in this pass.
  </itemize-minus>

  <section|Proof decisions><label|proof-decisions>

  Gauge invariance is a standard consequence of endpoint covariance and Haar
  invariance, covered by the lattice literature; state the transformation
  formula and cite instead of reproducing cancellation algebra.
  Compactness/positivity of the partition integral requires only a sentence,
  not a formal lemma proof. Reflection positivity and chessboard estimates
  are standard imports, but match cut and support restrictions before final
  theorem use.

  The specific finite-stencil, weighted-Taylor right inverse with a lower
  bound on curvature factor count is provided by Scott <verbatim|lem:A1> and
  Martin <verbatim|existence/local-sections.tex>. Its analytic
  inverse-function step is standard; that does not make the entire
  gauge-covariant sampler construction a cited theorem. A dedicated search
  for a prior exact local-section statement is still required before drafting
  its proof. Scott cites <strong|Rudin1976>, Theorem 9.24 for the inverse
  function theorem and <strong|Teschl2012> for analytic ODE dependence; those
  general analytic results should be invoked, not reproved.

  None of these checks independently verifies the claimed four-dimensional
  continuum construction or the linked Lean repository.

  <section|Local-section search><label|local-section-search>

  Searched \Plattice gauge local observables radial gauge jets polynomial
  sections curvature plaquette invariant polynomials\Q and \Plattice gauge
  theory local polynomial curvature observables Taylor jets inverse function
  theorem plaquette\Q. Results found recent expositions of this same
  construction and general lattice-observable literature, but no prior
  original publication establishing the exact finite-stencil right inverse
  with factor-count control. These negative search results are not a novelty
  claim. For a first draft, retain the short source-specific sampler
  argument, invoking standard analytic ODE and inverse-function theorems
  without reproving them; mark its applicability as locally checked against
  the supplied sources. Do not cite secondary webpages as original sources
  for the construction.

  <section|Update 19 November: FILS full statement
  inspected><label|update-19-november-fils-full-statement-inspected>

  The parent fetched the original institutional preprint (/tmp/ym-fils.pdf;
  extracted /tmp/ym-fils.txt). Read abstract Theorem4.1 and proof,
  then4.2\U4.3. Arbitrary2n slots are allowed. The Chapter1 macro-strip
  adaptation matches cyclicity, involutive local reflection and reflection
  Schwarz using its finite-torus RP input; repeat across four axes. See
  chapters-01-02.md update. This supersedes the earlier failed-fetch status
  for FILS, but does not supersede the still-pending original
  Osterwalder\USeiler finite-torus applicability check.

  Follow-up access check during Chapters12\U13: Springer chapter PDF route
  for Seiler1982 redirects to subscription page; Elsevier original PDF is
  still403. The original OS lattice theorem applicability check remains a
  recorded literature-access limitation. No claim of full-text inspection
  added. FILS original preprint inspection remains valid as above.
</body>

<\initial>
  <\collection>
    <associate|html-title|Foundations: literature checks (18 November 2026)
    \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|2>>
    <associate|checked-sources|<tuple|1|1>>
    <associate|foundations-literature-checks-18-november-2026|<tuple|?|1>>
    <associate|local-section-search|<tuple|3|2>>
    <associate|proof-decisions|<tuple|2|2>>
    <associate|update-19-november-fils-full-statement-inspected|<tuple|4|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Checked
      sources> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Proof
      decisions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Local-section
      search> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Update
      19 November: FILS full statement inspected>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>