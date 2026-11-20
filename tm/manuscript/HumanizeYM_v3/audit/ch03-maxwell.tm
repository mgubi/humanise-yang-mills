<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Chapter 3 draft audit><label|chapter-3-draft-audit>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Sources and
    checked calculations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Added and
    checked in the second draft> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Added and
    checked in the third draft> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Remaining
    boundaries> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Literature
    search> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>
  </table-of-contents>

  Draft: <verbatim|chapters/03-maxwell.tex>. Scope: free-theory chapter
  covering the mathematical outputs in blueprint C1, subject to the source
  and literature qualifications below. Uses the global registry's
  <verbatim|M_d^Max> and <verbatim|S^Max>; blueprint aliases
  <verbatim|F_d^0>, <verbatim|S^0> mean the same free objects only after this
  definition. Time axis 4; normalized positive Lie algebra metric; colour
  basis orthonormal; Gamma=1/(4 pi\<twosuperior\>\|x\|\<twosuperior\>).

  <section|Sources and checked calculations><label|sources-and-checked-calculations>

  <\itemize-minus>
    <item>Curvature covariance and Hessian: Scott
    <verbatim|part2/G-section.tex:15\U25>, <verbatim|eq:G-curvature>;
    directly checked from curls of delta_mu,nu Gamma. Derivatives in second
    argument supply (-1)^order. Maxwell divergence is asserted only off zero;
    its contact term is explicitly not discarded.

    <item>Wick prescription: original Wick1950 cited; differentiate its
    finite pairing formula for jet fields. No proof of the general Wick
    theorem reproduced. Zero-distance covariances are never used. Clarified
    that contractions between separate insertions within a word remain.

    <item>Homogeneous scaling and separated derivative bounds: read directly
    from the finite product formula, with engineering weights and fixed
    labels. No uniform-in-degree or interacting bound claimed.

    <item>Radial jet map: ordinary linear radial homotopy formula, same
    convention as Scott def:D11 and Martin free Maxwell radial material.
    Defined free space initially as image; later proves equality with
    invariant solution-jet polynomials by invariant orthogonal projection
    from radial potential jets.

    <item>Reflection positivity: cites OS I/II and describes precise free
    Gaussian hypothesis check (two transverse polarizations, tensor
    reflection, derivatives). Does not reprove Fock construction. Point
    separation makes reflection pairings nonsingular; compact separated
    supports permit smearing. Reflection sign checked on six unordered
    curvature components at re4.

    <item>Scalar normalization: Scott <verbatim|lem:G1.1(iv)>,
    <verbatim|eq:G-free-tensor>; explicit factor check 1/4 *2 <em|6>d_g. Free
    stress sign agrees with Scott, and the shell Ward calculation below fixes
    coefficient +1.
  </itemize-minus>

  <section|Added and checked in the second
  draft><label|added-and-checked-in-the-second-draft>

  <\itemize-minus>
    <item>Proposition <verbatim|ch03:jet-positive>: mixed-order strict
    positivity via Kelvin inversion. Compared Martin
    <verbatim|all-grade-free-detectors.tex:13\U260> with Scott
    <verbatim|eq:G-kelvin>/<verbatim|eq:G-pivots>. Fixed the probe
    normalization explicitly: sum over ordered antisymmetric indices and
    derivative tuples, divided by j!. The harmonic derivative identity gives
    the scalar c_j, the two curls give <verbatim|(j+1)(j+2)(-2)^j/pi\<twosuperior\>>;
    the second-insertion derivative sign cancels its parity. Translation
    after inversion gives a lower-triangular transformation with identity
    diagonal, so positivity is simultaneous in all jet orders. No interacting
    hypothesis occurs.

    <item>Corollary <verbatim|ch03:detectors>: cited Wick/Fock polynomial
    pairing gives positive monomial weights, including the unit. Finite basis
    columns detect every field in the on-shell image, identifying
    all-spectator null labels there. This is now available to UV rank
    comparisons, provided their maps and normalizations are separately
    established.

    <item>Proposition <verbatim|ch03:stress-line>: signed-coordinate parity
    gives three candidate centered degree-four tensors. Independently
    evaluated their divergence against the two quadratic test fields by exact
    integer contractions of the kernel Hessian and third derivatives at e1;
    obtained <verbatim|(-256,0,128)> and <verbatim|(0,-512,-128)>, agreeing
    with Scott. One off-diagonal correlation detects the third candidate.
    Known algebraic Maxwell conservation gives the one-dimensional kernel,
    without an additional surjectivity assertion.
  </itemize-minus>

  <section|Added and checked in the third
  draft><label|added-and-checked-in-the-third-draft>

  <\itemize-minus>
    <item>Normalized local Ward flux (<verbatim|ch03:free-ward>): Martin
    <verbatim|free-maxwell-ward-flux.tex:45\U340> and
    <verbatim|free-maxwell-radial-flux.tex>. Polarized stress divergence and
    regularized pulse give the Lie derivative; the negative Maxwell stress
    used here gives +1 for the outward collar. Double hits at the enclosed
    insertion vanish by cutoff independence and their nonzero scaling
    exponent. The global distributional equation is never set to zero: its
    delta derivatives supply the Ward contact action. Integrals only see
    separated collars.

    <item>Uniform spectator degree (<verbatim|ch03:uniform-detector>):
    <verbatim|free-collision-pole-separation.tex> and
    <verbatim|physical-ward-free-classification.tex> first half. Includes
    invariant-ring finite generation, lowest ordinary-degree coalescence,
    exact radial pole separation, replacement of highest-order jets, and
    determinant/induction step. The reference to Hilbert is for the standard
    finite-generation argument, whose compact-group averaging and
    finite-dimensional hypotheses are stated. Differentiated covariance poles
    are harmonic; double-hit products have one extra radial cancellation at
    matching homogeneity. No unmodified collision limit is assumed. Threshold
    D* \<gtr\>= max(b_g,2g+5) is finite but not optimized.

    <item>Vector response tests (<verbatim|ch03:vector-tests>):
    <verbatim|physical-ward-free-classification.tex:220\U470>. Reproduces the
    three-quadratic Wick formula, mixed panel rank-one factorization,
    reciprocity, signed-parity coefficient comparison, normalized dilation
    commutator, and inversion parity argument. Uniform spectator detection is
    needed specifically because the commutator can have weight d+1. Collinear
    tests are configuration derivatives of arbitrary finite order, not merely
    values on lines. Finite dimension extracts a finite subfamily.

    <item>Internal rotation defect (<verbatim|ch03:internal-tests>):
    <verbatim|free-internal-ward-erasure.tex:45\U235>. The Householder
    covariance comparison is asserted only at weight four. Ward skewness plus
    nondegeneracy implies quarter-turn commutation, and alternation kills the
    defect on stress. Rotational collar commutators propagate commutation to
    the whole fixed space without raising spectator capacity. A second
    quarter-turn argument finishes.

    <item>Standard Fock positivity is used only as Wick's finite algebraic
    monomial-pairing consequence of the explicitly proved positive jet Gram
    matrix. Equation-null labels mean vanishing in separated correlations; no
    quotient by global distributional Maxwell equations with contact terms
    discarded is taken.
  </itemize-minus>

  <section|Remaining boundaries><label|remaining-boundaries>

  The chapter proves free-field statements. Their use for interacting fields
  still requires the UV leading-comparison maps and the continuum response
  hypotheses, assigned to later chapters. No gap in those tasks is repaired
  merely by the free calculations. Literature searches did not locate an
  older exact match for the specialized bounded-degree Ward classifications;
  the supplied source derivations were therefore checked and included,
  without a novelty claim.

  <section|Literature search><label|literature-search>

  Primary original Wick article located as a PDF reproduction:
  <hlink|https://www.brunosanchiz.fr/DIVERS/PhysiqueQuantique/theoreme%20de%20wick%20PhysRev.80.268.pdf|https://www.brunosanchiz.fr/DIVERS/PhysiqueQuantique/theoreme%20de%20wick%20PhysRev.80.268.pdf>
  . Article title/author/year/page range verified from its first page and
  bibliographic results. APS DOI endpoint returned an error during this
  session; no claim that its site was inspected. DOI: 10.1103/PhysRev.80.268.
  New entry in <verbatim|blueprint/ch03-bibliography.bib>.

  OS II primary full text located through Project Euclid (see
  continuum-audit). These are original sources for the standard framework.
  Searched original literature for Maxwell Kelvin inversion/jet reflected
  positivity before adding the finite-jet proof. Hobson's scalar harmonic
  differentiation formula is classical: original <em|On a Theorem in
  Differentiation, and its application to Spherical Harmonics>, PLMS s1-24
  (1892),55\U67, DOI10.1112/plms/s1-24.1.55. Publisher metadata was found;
  direct PDF access returned429. An original later Hobson paper <em|On a
  theorem in the differential calculus>, pp115\U119, was opened at
  <hlink|https://rcin.org.pl/Content/110484/PDF/WA35_88038_cz294-1894-t23_Art31.pdf|https://rcin.org.pl/Content/110484/PDF/WA35_88038_cz294-1894-t23_Art31.pdf>
  ; it explicitly attributes the radial differentiation theorem to the1892
  paper p67. OCR drops equations, so this is not recorded as a complete
  original formula inspection. The specialized Maxwell triangularization was
  checked directly against the supplied detailed proof and elementary
  differentiation; no matching older full theorem was located. No novelty
  claim is made.

  No interacting existence assertion is exported by this chapter. Standalone
  compilation of the expanded chapter gives 13 pages; final global
  bibliography and visual inspection are handled by the root agent.

  Additional literature check before including Ward proofs: searched Maxwell
  local stress/Wick/dilation Ward identities and finite-jet classification.
  Hollands--Wald, arXiv:gr-qc/0404074, supplies a primary source for the
  broader stress/conservation framework, but concerns perturbative scalar
  theory on curved spacetime and was not substituted for this specific
  Maxwell calculation. Hilbert1890 original finite-generation theorem
  metadata: <em|Ueber die Theorie der algebraischen Formen>, Math.
  Ann.36,473\U534, DOI10.1007/BF01208503; DOI fetch failed, so full original
  text was not inspected. Its standard Noetherian/averaging argument is cited
  rather than reproved. Bibliography entry added to
  blueprint/ch03-bibliography.bib.
</body>

<\initial>
  <\collection>
    <associate|html-title|Chapter 3 draft audit \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|added-and-checked-in-the-second-draft|<tuple|2|2>>
    <associate|added-and-checked-in-the-third-draft|<tuple|3|2>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|3>>
    <associate|auto-5|<tuple|5|3>>
    <associate|chapter-3-draft-audit|<tuple|?|1>>
    <associate|literature-search|<tuple|5|3>>
    <associate|remaining-boundaries|<tuple|4|3>>
    <associate|sources-and-checked-calculations|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Sources
      and checked calculations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Added
      and checked in the second draft> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Added
      and checked in the third draft> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Remaining
      boundaries> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Literature
      search> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>