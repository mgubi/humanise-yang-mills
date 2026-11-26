<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Foundations: independent writing
  instructions><label|foundations-independent-writing-instructions>

  These two chapters occupy 34 pages (18 + 16), including examples, but
  excluding bibliography. They implement Scott Outline I.1 and the elementary
  part of II.1. Read <verbatim|notation.md> first. All source paths below are
  relative to the workspace root. A label is the authoritative locator; line
  numbers describe the supplied snapshot. Do not copy the sources' order of
  definition, which introduces terminal normalization before its
  construction.

  <section|Chapter 1. Lattice gauge theory and the continuum problem (18
  pages)><label|chapter-1-lattice-gauge-theory-and-the-continuum-problem-18-pages>

  <subsection|Purpose and prerequisites><label|purpose-and-prerequisites>

  Assume basic compact Lie groups, Haar measure, distributions and
  probability. Introduce the actual finite model and what its continuum limit
  would mean. Give an informal description of the claimed construction,
  explicitly as the target of the later chapters. Reserve the full existence
  theorem until its objects and estimates have been built. Do not front-load
  a catalogue of Wightman, phase, OPE and RG definitions.

  <subsection|Sections><label|sections>

  <\enumerate>
    <item><strong|Gauge normalization (3 pages).> Fix a faithful realization
    of a closed group <verbatim|G \<subset\> U(n_G)> with simple nonabelian
    real Lie algebra; connectedness is not required. Define
    <math|<around|\<lVert\>|A|\<rVert\>><rsub|G><rsup|2>=n<rsub|G><rsup|-1>*<big|sum><rsub|i,j><around|\<lvert\>|A<rsub|i*j>|\<rvert\>><rsup|2>>
    for any complex matrix of size <math|n<rsub|G>>. Explain that each
    unitary matrix has norm one and that left and right unitary
    multiplication preserve the norm, so the distance between two group
    elements is <math|<around|\<lVert\>|u-v|\<rVert\>><rsub|G>>. On the Lie
    algebra use the inner product <verbatim|\<minus\>Re tr(XY)/n_G> and
    define <verbatim|d_g>, <verbatim|C_g>, <verbatim|b_0>,
    <verbatim|\<kappa\>_G=2b_0>. State the standard invariant-form fact with
    a reference rather than a proof of Lie theory. Work out SU(n):
    <verbatim|C_g=2n\<twosuperior\>>, <verbatim|\<kappa\>_G=11n\<twosuperior\>/(12\<pi\>\<twosuperior\>)>.
    Explain that <verbatim|\<beta\>=2n/g\<twosuperior\>> in conventional
    SU(n) Wilson normalization; do not silently identify \<beta\> with
    g\<#207B\>\<twosuperior\>.

    <item><strong|Links, plaquettes and the Wilson law (4 pages).> Define
    positive and reversed links, ordered path holonomy, site gauge action,
    plaquette orientation and probability Haar product. Express the energy of
    a plaquette as <math|<tfrac|1|2><around|\<lVert\>|U<rsub|\<square\>>-1|\<rVert\>><rsub|G><rsup|2>=1-n<rsub|G><rsup|-1><math-up|Retr>U<rsub|\<square\>>>.
    Sum over unoriented plaquettes to define <verbatim|E_s^W>, then introduce
    <verbatim|Z_{s,\<beta\>}> and <verbatim|\<mu\>_{s,\<beta\>}>. Compactness
    gives existence for every real \<beta\>, while the positivity statements
    require \<beta\>\<geqslant\>0. Give the one-line endpoint transformation
    of a path and its consequence for closed loops; do not expand four
    cancelling factors. Cite Wilson for lattice gauge formulation and gauge
    invariance. Use exact ODE parallel transport for the smooth-connection
    example, then give the plaquette expansion and the curvature-square
    normalization. Gauge-variant size of links is not a criterion for a small
    field.

    <item><strong|Geometry, scales and locality (3 pages).>
    <verbatim|\<Lambda\>_s=(Z/sZ)^4>, centered representatives in
    <verbatim|(\<minus\>s/2,s/2]>, physical placement, periodic sup distance.
    Introduce odd ratios <verbatim|L_m>, <verbatim|D_0=1>,
    <verbatim|D_{m+1}=L_mD_m>, <verbatim|a_m=D_m\<#207B\>\<onesuperior\>>;
    increasing m is finer resolution, a block integration goes
    m+1\<rightarrow\>m. Physical periods <verbatim|R_p> are increasing
    integer multiples of four and the site count is <verbatim|R_pD_m>. Define
    finite link support and a fixed finite stencil; its physical diameter
    shrinks with a_N. State symmetry of centered odd blocks. Defer
    halo/cover-number estimates until polymer norms actually use them.

    <item><strong|Reflection positivity and chessboard estimates (4 pages).>
    Define both site and link reflections on an even torus, including
    reversal of links crossing the axis. Set
    <verbatim|(\<theta\>F)(U)=overline{F(\<Theta\>U)}>. State the
    finite-volume inequality for bounded gauge-invariant F supported on links
    whose endpoints lie strictly on the permitted side; identify positivity
    at seams. Cite Osterwalder\USeiler and the chessboard theorem of
    Fröhlich\UIsrael\ULieb\USimon (with Seiler's gauge-theory application).
    Define a chessboard seminorm only for an actual compatible tiling: root
    of the expectation of all reflected copies, with absolute/conjugate
    convention spelled out. State the product bound in that notation. Check
    cut parity, tiling divisibility and support interior rather than hiding
    them in 'by reflection positivity'. No transfer-operator proof or
    repeated Cauchy\USchwarz proof is needed if the cited theorem covers the
    stated conventions. Do not claim arbitrary functions of seam links
    satisfy the same statement.

    <item><strong|Correlations and ordered limits (4 pages).> A tentative
    label set suffices here; define a local insertion, n-point moment and
    smeared Riemann sum with <verbatim|a_N^{4n}>. Define <verbatim|Conf_n>,
    separated joint tests, physical period admissibility. State the exact
    quantifier order: fix G and b, then one family for all N,p; for each
    prescribed increasing volume-index sequence p there is one refinement q
    serving all arities, labels and separated tests, with first
    N\<rightarrow\>\<infty\> at fixed volume along the full mesh sequence and
    then k\<rightarrow\>\<infty\> along P=p\<circ\>q. Explain why a
    subsequence in N would be weaker and why a simultaneous diagonal is not
    the stated conclusion. Limit objects are separated correlations; no
    measure on continuum connections is asserted. Mention later phases,
    stress tensor and finite-order OPE in words only. State explicitly that a
    mass gap, uniqueness of the volume limit and independence of b are not
    part of the target.
  </enumerate>

  <subsection|Exports and permitted dependencies><label|exports-and-permitted-dependencies>

  Export <verbatim|def:gauge>, <verbatim|def:lattice>, <verbatim|def:wilson>,
  <verbatim|def:scales>, <verbatim|def:lattice-rp>,
  <verbatim|prop:chessboard>, <verbatim|def:separated-test>,
  <verbatim|def:ordered-limit>. All subsequent chapters may use these exact
  objects. The reflection theorem must preserve the \<beta\>\<geqslant\>0
  hypothesis. No RG stability or continuum existence result is assumed in
  this chapter.

  <subsection|Source packet><label|source-packet>

  <\itemize-minus>
    <item>Scott <verbatim|Outline/units/I-1.md>, Propositions I.1.1\UI.1.3,
    I.1.5\UI.1.9; ŸŸ5\U7 distinguish geometric identities from
    scale-dependent constructions. I.1.4 (cover numbers) belongs in the
    polymer chapter, not here.

    <item>Scott <verbatim|part1/02-definitions.tex>,
    <verbatim|def:D01>\U<verbatim|def:D03>, <verbatim|def:Q1>,
    <verbatim|def:D09>, <verbatim|eq:I12-price-chord>,
    <verbatim|eq:I12-physical-placement> (lines 5\U112).

    <item>Martin <verbatim|existence/lattice.tex>,
    <verbatim|subsec:ex-lattice-finite>, <verbatim|prop:ex-lattice-gauge>
    (12\U88), reflection pullback and <verbatim|prop:ex-lattice-finite-reflection>
    (91\U270), <verbatim|cor:ex-lattice-smeared-reflection> (310 onward).
    This is the detailed finite-torus source; compress it using literature,
    retaining domain conditions.

    <item>Scott <verbatim|part1/03-main-theorem.tex>, <verbatim|thm:B> and
    paragraphs \POrder of choices\Q / \PWhat the theorem does not assert\Q.
    Martin <verbatim|existence/statement.tex>, <verbatim|ex-row-target>,
    <verbatim|ex-volume-target>, <verbatim|rem:ex-target-adequacy>; the
    generalized-free-field example at <verbatim|ex-target-free-witness>
    explains why a weak public existence interface must not be advertised as
    a complete nontriviality criterion.

    <item>Scott <verbatim|part1/05-renormalization.tex>,
    <verbatim|eq:I12-levels> (9\U11), for scale indexing only. The schedule's
    existence comes later.
  </itemize-minus>

  <subsection|Literature and checks before
  release><label|literature-and-checks-before-release>

  Wilson, <em|Confinement of quarks>, Phys. Rev. D <strong|10> (1974),
  2445\U2459, DOI <hlink|10.1103/PhysRevD.10.2445|https://doi.org/10.1103/PhysRevD.10.2445>.
  Publisher abstract inspected: exact gauge-invariant lattice formulation;
  full text behind publisher access. Osterwalder\USeiler, <em|Gauge field
  theories on a lattice>, Ann. Phys. <strong|110> (1978), 440\U471, DOI
  <hlink|10.1016/0003-4916(78)90039-8|https://www.sciencedirect.com/science/article/pii/0003491678900398>:
  publisher record verifies physical positivity, but exact site/link-cut
  hypotheses still need checking against full text before citing a theorem
  number. Fröhlich\UIsrael\ULieb\USimon, <em|Phase transitions and reflection
  positivity I>, CMP <strong|62> (1978), 1\U34, author's <hlink|full
  paper|https://www.math.caltech.edu/SimonPapers/93.pdf>; source manuscript
  points to Ÿ4, Theorems 4.1\U4.2. Seiler, LNP <strong|159> (1982), Ÿ2a,
  Theorems 2.1\U2.2 is the source's gauge-specific reference. The
  bibliography verification does not itself validate the manuscript's
  continuum claims.

  <section|Chapter 2. Local gauge-invariant observables (16
  pages)><label|chapter-2-local-gauge-invariant-observables-16-pages>

  <subsection|Purpose and prerequisites><label|purpose-and-prerequisites-1>

  Construct classical polynomial labels and finite-stencil lattice
  representatives before discussing renormalization. Inputs: only Chapter 1,
  finite-dimensional inverse function theorem, analytic ODE dependence,
  compact-group averaging. A field label is a finite polynomial
  specification, not a smooth sample of the eventual random field.

  <subsection|Sections><label|sections-1>

  <\enumerate>
    <item><strong|Radial jets and three gradings (4 pages).> Define
    radial/Fock\USchwinger gauge and formal jet
    <verbatim|A_\<mu\>(x)=\<Sigma\>_{k\<geq\>0}A_{k,\<mu\>}(x)>, A_k
    homogeneous of polynomial degree k+1 with x<ym-middot>A_k=0. Engineering
    weight of its coordinate is k+2; its factor count is one. Define
    <verbatim|V_d=C[J]^{Ad(G)}_{weight\<leq\>d}> and a nested real
    bihomogeneous basis <verbatim|b_{d,i}>, including 1. Define weight w_i,
    factor count f_i, and count operator N_fac. The tag d specifies a
    truncation space and later physical normalization; it is neither
    necessarily w_i nor a scaling dimension. Examples: unit, curvature-square
    <verbatim|c_{F\<twosuperior\>}=\<onequarter\>\<Sigma\>_{\<mu\>\<nu\>}\<less\>F_{\<mu\>\<nu\>},F_{\<mu\>\<nu\>}\<gtr\>>,
    weight four and factor count two. Do not call the fields free because
    polynomial labels are expressed through classical jets.

    <item><strong|Taylor normalization on the lattice (3 pages).> Define test
    holonomy by u\<prime\>=u h A_\<mu\>(h(y+te_\<mu\>)), u(0)=1 and jet
    scaling sc_h J=(h^{k+2}A_k). Define Taylor map T_d by retaining
    weight\<leqslant\>d. A local section <verbatim|P_d^loc:V_d\<rightarrow\>{finite-link
    polynomials}> is a right inverse, preserves unit and conjugation and
    intertwines signed coordinate permutations. Distinguish O(4) acting on
    abstract jets from the finite signed-permutation group acting on lattice
    representatives; arbitrary lattice rotations are not defined.

    <item><strong|Construction and bounds for local sections (6 pages).>
    Present one proof, using finitely many transported plaquette curvatures.
    Explain why their linearizations separate finite radial jets (polynomial
    circulation and radial identity); select a finite set. Apply an
    equivariant linear left inverse and the inverse function theorem,
    truncate the inverse, substitute invariant labels, average over lattice
    symmetries. State that every monomial in the representative of b_i has at
    least f_i curvature factors; global values are bounded because G is
    compact. For ordered left derivatives in directions bounded by t times a
    polynomial spatial weight, prove a uniform <verbatim|C_{d,q,p}t^{f_i}>
    bound on small-field configurations. Define this specialized derivative
    norm locally, or import only the elementary definition agreed with the RG
    chapter. Constants are independent of torus side, placement and
    threshold; allow stencils wrapping around a small torus. The specific
    section construction is detailed in both supplied manuscripts; no
    original published theorem for exactly this construction has yet been
    identified. Do not replace this by a citation to the inverse function
    theorem alone: only that analytic step is standard.

    <item><strong|What renormalization still has to do (3 pages).> Explain
    mixing with lower-weight labels, with F\<twosuperior\> able to acquire an
    additive constant. Introduce raw insertions <verbatim|P_d^loc[c](y;U)>;
    reserve the name 'renormalized insertion' until the terminal map exists
    in the observable-transfer chapter. Give the clover average
    <math|<tfrac|1|8><big|sum><rsub|\<square\>\<ni\>y><around|\<lVert\>|U<rsub|\<square\>>-1|\<rVert\>><rsub|G><rsup|2>>.
    The four plaquettes in each of the six coordinate planes give the leading
    coefficient <math|<tfrac|1|2>> per plane. Explain that a fixed physical
    Wilson loop has a stencil growing with the cutoff and lies outside the
    theorem. Describe the two later obligations in words: invertible
    finite-dimensional normalization at a reference scale, and volume-uniform
    estimates. Defer exact equations of motion and null-ideal identification
    to the comparison/observable chapters, because Outline II.1 explicitly
    marks their identification as tentative.
  </enumerate>

  <subsection|Exports and source packet><label|exports-and-source-packet>

  Export <verbatim|def:radial-jets>, <verbatim|def:labels>,
  <verbatim|def:test-holonomy>, <verbatim|def:taylor-map>,
  <verbatim|thm:local-sections>, <verbatim|prop:section-bounds>. Section
  theorem: for every finite d there is a linear finite-stencil section with
  T_d P_d^loc=id, unit/reality/signed-permutation compatibility, lower
  factor-count bound, and the threshold estimate for every fixed derivative
  order and spatial exponent uniformly in periods. State stencil and
  constants as chosen once for d, not anew at every RG scale.

  Read Scott <verbatim|Outline/units/II-1.md>, II.1.1\UII.1.3 and Ÿ4 steps
  1\U3 (other statements have later RG inputs). Scott
  <verbatim|part2/A-section.tex>, <verbatim|sec:A-labels> (9\U56),
  <verbatim|def:D19> / <verbatim|lem:A1> (58\U133), <verbatim|lem:A-bounds>
  (135\U160), <verbatim|sec:A-example> (255\U282). Martin
  <verbatim|existence/local-sections.tex> is a self-contained detailed proof:
  finite sampler (8\U69), equivariant recovery (71\U116), symmetry
  (118\U156), threshold bound <verbatim|eq:local-section-column-price>
  (158\U207). Scott <verbatim|part1/02-definitions.tex>, <verbatim|def:D07>,
  <verbatim|eq:I12-test-holonomy>, <verbatim|eq:I12-section-Taylor> supply
  concise definitions. Trish <verbatim|part2/A-section.tex> has the same
  elementary construction; its additive counterterm symbol
  <verbatim|\<delta\>^{F\<twosuperior\>}_{N,p}> is preferable to Scott's
  overloaded \<mu\>.

  <subsection|Audit points><label|audit-points>

  Do not identify the free equation ideal I_d with the interacting null space
  N_d(S). Scott's auxiliary equation sections involve a triangular map R_d,
  and the later rank argument is needed. Do not infer
  <verbatim|j_{d,e}[c]=[c]> from V_d\<subset\>V_e: terminal normalizations
  differ. Preserve the factor-count filtration in the inverse-function
  construction; taking an arbitrary polynomial section would lose the
  small-field bound. Check all averaging pullbacks/inverses with the
  row-transport convention from Chapter 1. Refresh jet/section notation at
  Ÿ3, because it may have been unused for four pages.
</body>

<\initial>
  <\collection>
    <associate|html-title|Foundations: independent writing instructions \U
    Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|audit-points|<tuple|2.4|5>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|2.3|4>>
    <associate|auto-11|<tuple|2.4|5>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-5|<tuple|1.4|2>>
    <associate|auto-6|<tuple|1.5|3>>
    <associate|auto-7|<tuple|2|3>>
    <associate|auto-8|<tuple|2.1|3>>
    <associate|auto-9|<tuple|2.2|3>>
    <associate|chapter-1-lattice-gauge-theory-and-the-continuum-problem-18-pages|<tuple|1|1>>
    <associate|chapter-2-local-gauge-invariant-observables-16-pages|<tuple|2|3>>
    <associate|exports-and-permitted-dependencies|<tuple|1.3|2>>
    <associate|exports-and-source-packet|<tuple|2.3|4>>
    <associate|foundations-independent-writing-instructions|<tuple|?|1>>
    <associate|literature-and-checks-before-release|<tuple|1.5|3>>
    <associate|purpose-and-prerequisites|<tuple|1.1|1>>
    <associate|purpose-and-prerequisites-1|<tuple|2.1|3>>
    <associate|sections|<tuple|1.2|1>>
    <associate|sections-1|<tuple|2.2|3>>
    <associate|source-packet|<tuple|1.4|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Chapter
      1. Lattice gauge theory and the continuum problem (18 pages)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Purpose and prerequisites
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|Sections
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|Exports and permitted dependencies
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|Source packet
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|Literature and checks before release
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Chapter
      2. Local gauge-invariant observables (16 pages)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Purpose and prerequisites
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|Sections
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|Exports and source packet
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|Audit points
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>
    </associate>
  </collection>
</auxiliary>