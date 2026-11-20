<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Chapter 14 audit><label|chapter-14-audit>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Source trace>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Exports and
    limits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Review
    priorities> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Original
    literature> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Validation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Expansion after
    root review> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Integrated
    lattice suppliers> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>
  </table-of-contents>

  Draft <verbatim|chapters/14-reflection-ward.tex>, 12 standalone pages. This
  chapter constructs coordinate OS spaces/slab operators, then the
  stress/Ward/rotation mechanism. Its final rotation and normalized-stress
  theorems explicitly retain the actual marked comparison and annular
  estimates; it does not silently certify unfinished Chapter11 marked
  suppliers. No phase decomposition, Lorentz Hilbert-space action, vacuum
  uniqueness, mass gap or positive contact extension is claimed.

  <section|Source trace><label|source-trace>

  <\itemize-minus>
    <item>Martin <verbatim|reflection.tex> entire, Scott G
    <verbatim|lem:H1.1>: OS quotient, orbit-bound contraction, transverse
    translations, strong continuity, positive heat generator. Standard
    quotient attributed to Osterwalder\USchrader1973; only the needed
    contraction estimate is adapted. Coordinate spectra are
    [0,infinity)\<times\>R3, not a forward cone.

    <item>Martin <verbatim|phases.tex:33\U109>,
    <verbatim|slab-regularity.tex>: formal insertion adjoint, repeated-word
    power bound, null descent, exact concatenation/width laws, norm
    smoothness by operator mean-value remainder. Actual all-repetition input
    is Ch13:word-bound, including its chosen width s\<less\>=h, then heat
    extension to h. Arity-fixed bounds are not substituted.

    <item>Scott G223\U310 <verbatim|lem:G-lattice>, G390ff smooth comparison;
    Martin <verbatim|actual-stress-normalization.tex:1\U145>:
    size/variation/grid estimates on SAME lifts, coordinate-strip volume and
    grid error costs, exact inclusion correction, finite detectors,
    derivative-transport lower singular-value bound, Fourier L1-to-Cj
    upgrade. Draft spells out quantitative interface rather than asserting
    grid comparison from field-space dimension alone.

    <item>Scott G78\U96, G <verbatim|lem:G2.2>; Martin
    <verbatim|actual-stress-normalization.tex:145\U230>: divergence rank and
    centered physical line, sign and scale sequence. Ch3 gives rank2 matrix
    and 3D tensor basis; Ch14 additionally identifies the full degree5
    hypercubic vector target as the two F\<partial\>F contractions via
    Maxwell/Bianchi, needed for onto divergence. Centering maps require
    preserved unit and do not presume matching one-point functions.

    <item>Scott G310\U389 <verbatim|lem:G-annular>; Martin
    <verbatim|actual-stress-annulus.tex>,
    <verbatim|actual-stress-shell-nodes.tex>: same-spectator two-mark
    correction, physical collar rho=128 B\<twosuperior\>a, t=1+1/[64(d+12)],
    cost1/32+1/64\<minus\>1/8=\<minus\>5/64, residual root e^-tau/32. Draft
    gives implication from actual marked inputs and finite-stencil
    interpolation across coordinate ties; no common tail over an entire
    growing collar is assumed. Need Ch11 exact two-mark backward inverse
    gain, coefficient correction and derivative growth C independent of q to
    discharge it.

    <item>Scott G <verbatim|lem:G2.3>; Martin
    <verbatim|actual-stress-annulus.tex> conclusion and
    <verbatim|physical-ward-propagation.tex:492\U590>: annihilator
    finite-dimensional duality gives local charge fields; derivatives of
    moving shells give p/Y commutators. Conservation and tensor symmetry
    justify shell independence before normalization.

    <item>Scott G coordinate section <verbatim|lem:H-coordinate-signs>,
    <verbatim|lem:H-G3>; Martin <verbatim|physical-ward-packet-prices.tex>,
    <verbatim|physical-ward-stress-cone.tex:1\U280>: coordinate positive
    measures, undamping, finite damped moments, Lagrange annular corrections
    and positive residual rational kernel, mixed-sign transfer walk, separate
    diagonal estimate. Draft retains minimum symmetric product-test extension
    and normalization of contact divergence to degree\<gtr\>=3, then Q0/Q1/Q2
    conservation chain and signs +,-,+. It does not call this extension
    positive.

    <item>Scott G <verbatim|lem:G-collinear-flux>, Martin
    <verbatim|physical-ward-propagation.tex:145\U445>: anisotropic lengths
    powers100/150/300, exact two-column cancellation, low energy split at
    lambda^-3000, W=lambda^-99 and explicit worst exponent table. E=0 kept in
    shallow region; diagonal positive weight itself vanishes at0. No
    rotational spectrum assumption.

    <item>Martin <verbatim|physical-ward-analytic-continuation.tex> entire,
    <verbatim|physical-ward-propagation.tex:1\U143>; Scott G
    <verbatim|lem:G-analytic>: radial heat analyticity, finite-dimensional
    analytic comparator, transverse jet induction, stationary positive Gram
    factorial bound, extreme-point segment continuation. Equality of smooth
    jets alone is never used as an identity theorem.

    <item>Scott G735\U834, Martin <verbatim|physical-ward-propagation.tex>
    finite tests/brackets and <verbatim|physical-angular-actions.tex>:
    translation charge p=c<em|\<partial\> using actual Ch3 vector tests,
    c_k\<rightarrow\>c>\<gtr\>0 via shell readouts, internal bracket defect
    removal using Ch3 finite tests, exact finite-dimensional relative-Casimir
    intertwiner, genuine O4 action instead of only its cover, Haar-averaged
    normalized stress. Draft uses ordinary finite-dimensional spectral
    projection instead of source polynomial projection iteration; these are
    equivalent standard spectral-calculus operations near an isolated
    eigenvalue.
  </itemize-minus>

  <section|Exports and limits><label|exports-and-limits>

  <\itemize-minus>
    <item><verbatim|ch14:heat>, <verbatim|ch14:coordinate-spectrum>:
    coordinate semigroup and joint measure, no cone.

    <item><verbatim|ch14:slab-bound>, <verbatim|ch14:slab-laws>,
    <verbatim|ch14:slab-smooth>: bounded norm-smooth slabs, usable by phase
    chapter.

    <item><verbatim|ch14:smooth-comparison>, <verbatim|ch14:conserved-line>,
    <verbatim|ch14:balanced-stress>: from marked grid comparison and Ch13
    quotient calculus.

    <item><verbatim|ch14:charges>: from actual annular remainder estimates.

    <item><verbatim|ch14:rotations>: O4 action/correlation covariance,
    inclusion and vector laws, from actual comparison+annular estimates.

    <item><verbatim|ch14:normalized-stress>: exact shell normalization and
    scaled stress comparison.
  </itemize-minus>

  <section|Review priorities><label|review-priorities>

  <\enumerate>
    <item>Mixed-sign annular transfer and diagonal conservation estimates are
    compressed from the detailed source proof. Check correction
    normalization, spectral Fourier signs, and the order of choosing width
    exponents/moment orders. Diagonal Q0,Q1,Q2 normalization was expanded to
    explicit c_r(t),d_r relations to expose 4d0=5d1\<minus\>d2.

    <item>Actual marked grid estimate and annular two-mark supplier are still
    quantitative interfaces to Chapter11. This is a source-specific
    dependency, not an appeal to OS reconstruction or to the existence of
    free Wick correlations.

    <item>Finite vector and internal-defect tests use Ch3 theorems at all
    finite required degrees and Ch13 faithful quotient/inclusions. Same
    comparison maps must preserve inclusions exactly; draft constructs this
    before transporting finite test matrices.

    <item>Normalized undamped point-field measures can have infinite total
    mass. Only finite energy windows and adequately damped moments are used.
    Finite translated words need damping beyond their offsets.

    <item>No local Taylor/contact extension from this chapter may be cited as
    an OS-positive distribution hierarchy.
  </enumerate>

  <section|Original literature><label|original-literature>

  OS1973 original Project Euclid PDF checked:
  <hlink|https://projecteuclid.org/journals/communications-in-mathematical-physics/volume-31/issue-2/Axioms-for-Euclidean-Greens-functions/cmp/1103858969.pdf|https://projecteuclid.org/journals/communications-in-mathematical-physics/volume-31/issue-2/Axioms-for-Euclidean-Greens-functions/cmp/1103858969.pdf>
  . OS1975 corrected theorem original PDF checked:
  <hlink|https://projecteuclid.org/journals/communications-in-mathematical-physics/volume-42/issue-3/Axioms-for-Euclidean-Greens-functions-II-with-an-Appendix-by/cmp/1103899050.pdf|https://projecteuclid.org/journals/communications-in-mathematical-physics/volume-42/issue-3/Axioms-for-Euclidean-Greens-functions-II-with-an-Appendix-by/cmp/1103899050.pdf>
  . Existing bibliography entries used; no new sidecar needed. Neither
  reconstruction theorem is invoked without its growth hypotheses.

  Fröhlich\UOsterwalder\USeiler1983 primary publisher page checked:
  <hlink|https://annals.math.princeton.edu/1983/118-3/p04|https://annals.math.princeton.edu/1983/118-3/p04>
  . Its virtual-representation continuation is related, but does not directly
  supply this chapter's pre-rotation stress spectral estimate or its
  fixed-configuration Gram argument. It is therefore not cited as proving
  those source-specific assertions.

  <section|Validation><label|validation>

  Standalone pdflatex twice succeeds,12pages; last log contains no
  overfull/underfull boxes. No global build performed. Root handles global
  references and rendering.

  <section|Expansion after root review><label|expansion-after-root-review>

  The opposite-sign proof now defines every response, scaled profile and
  omitted-axis limit. Equation ch14:sign-transfer follows by expanding the
  exact equality for TWO residual profiles; discarded term has nonnegative
  spectral response. Equation ch14:sign-induction gives its precise exponent
  ranges and visited-axis bookkeeping. Choices alpha(nextstep),r,D,a_s,m are
  ordered; the error exponent is p_*-2ralpha+max(K,a_sD). Added explicit
  tensor subtraction q_ab,cd=\<Sigma\>_iR_ib,cd(\<partial\>_i(x_a\<chi\>0))
  and parity-pattern justification of its pair symmetries. Standalone
  now13pages with no overfull/underfull boxes. Root handles global rendering.

  <section|Integrated lattice suppliers><label|integrated-lattice-suppliers>

  The earlier comparison/annular caveat is superseded in the working chapter
  by two explicit forward dependencies. <verbatim|14-lattice-comparison.tex>
  uses Chapter11's finite-arity complete source estimate and exact common
  extraction at a finite menu of scales; its independent review is
  <verbatim|chapter-14-lattice-comparison-review.md>. The shrinking-shell
  estimate now follows from the mixed local replacement proved at the end of
  Chapter13: for W=d+4 and D=d+1\<minus\>kappa, multiplying its residual by
  r^(3+kappa) yields r^(1\<minus\>epsilon). The replacement field is fixed
  before spectators, so the finite annihilator sum cancels it. This avoids a
  phase/OPE dependency and removes the former separate two-mark annular
  hypothesis. The coordinate spectral argument is undergoing an additional
  independent review.
</body>

<\initial>
  <\collection>
    <associate|html-title|Chapter 14 audit \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|3>>
    <associate|auto-4|<tuple|4|3>>
    <associate|auto-5|<tuple|5|3>>
    <associate|auto-6|<tuple|6|4>>
    <associate|auto-7|<tuple|7|4>>
    <associate|chapter-14-audit|<tuple|?|1>>
    <associate|expansion-after-root-review|<tuple|6|4>>
    <associate|exports-and-limits|<tuple|2|2>>
    <associate|integrated-lattice-suppliers|<tuple|7|4>>
    <associate|original-literature|<tuple|4|3>>
    <associate|review-priorities|<tuple|3|3>>
    <associate|source-trace|<tuple|1|1>>
    <associate|validation|<tuple|5|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Source
      trace> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Exports
      and limits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Review
      priorities> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Original
      literature> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Validation>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Expansion
      after root review> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Integrated
      lattice suppliers> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>