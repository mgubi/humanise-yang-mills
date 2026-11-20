<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Chapter 16: relativistic reconstruction><label|chapter-16-relativistic-reconstruction>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Exact
    hypotheses retained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Checked proof
    units and sources> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Stable exports>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Original
    literature> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Limits>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>
  </table-of-contents>

  File: <verbatim|chapters/16-reconstruction.tex>. Standalone compile: 8
  pages, no overfull/underfull boxes, 2026-11-19. Global
  bibliography/build/render left to parent.

  <section|Exact hypotheses retained><label|exact-hypotheses-retained>

  The chapter assumes the actual separated phase correlations, uniform phase
  slab bounds, common label/null-space identification, full-support phase
  measure, orthogonal covariance, and normalized stress/annular identities
  from Chapters14\U15. These conclusions retain their Chapter11 marked
  lattice/calibration and Chapter14 common-grid/annular analytic
  prerequisites. Chapter16 proves the reconstruction from that interface, and
  does NOT claim to close those upstream microscopic suppliers.

  No collision extension of the Euclidean hierarchy is postulated. No
  analyticity is inferred from mere continuity: heat spectral calculus and
  polynomial slab bounds supply it. No uniform bound in arity is asserted or
  required. No mass gap follows from the low-energy estimate.

  <section|Checked proof units and sources><label|checked-proof-units-and-sources>

  <\itemize-minus>
    <item>Centered slabs, width independence, polynomial time-gap bound:
    Scott <verbatim|part2/H-section.tex>187\U217; Martin
    <verbatim|existence/complex-heat.tex> and
    <verbatim|analytic-boundary.tex>1\U120. Only spatial strong continuity
    needed.

    <item>Joint boundary, arbitrary independent height ratios, common
    Schwartz seminorm and phase continuity/barycenter: Martin
    <verbatim|analytic-boundary.tex>121\U231; ScottH218\U238. Exact backwards
    Taylor formula has integrand bounded by cancellation of s^m against gap
    s^-m; all weakly ordered heights allowed.

    <item>Lorentz covariance, exponential compact-frequency test identity,
    suffix spectral cones: Martin <verbatim|fourier-support.tex>1\U142;
    ScottH224\U242. Coordinate Fourier pairing is Euclidean; momentum
    transforms by inverse transpose, still preserves forward cone.

    <item>Full spacetime tube and closed-cone partial boundaries: Martin
    <verbatim|full-tube.tex>1\U274. Smooth cutoff equals one near support;
    distance-three neighborhood gives bounded exponential multiplier on
    closed imaginary cone. Bare exponential off support is not used as a
    Schwartz multiplier.

    <item>Adjacent locality: Martin <verbatim|locality.tex>1\U239;
    ScottH243\U274. Small imaginary boosts produce both germs, Euclidean
    smoothness at the spatially separated tie identifies all jets on a
    totally real slice, finite chain of germs reaches arbitrary real times.
    Tied-height partial boundaries are taken only after germ identity.

    <item>Word fields: Martin <verbatim|reconstruction.tex>1\U224;
    ScottH275\U291. Standard Wightman quotient is cited, only domain/null
    invariance check retained. Independent Gram limits yield positive form
    and actual vectors, not just scalar limits.

    <item>Onto OS comparison: ScottH282\U291. Compact-frequency damping
    identifies positive-height vectors with images; closed-range density
    supplies surjectivity before vacuum transfer.

    <item>Low energy and every-character vacuum: Martin
    <verbatim|phase-selection.tex> low-energy/vacuum portions;
    ScottH293\U337. Full zero-energy projection Q is retained until uniform
    heat decay+phase continuity+full support prove Q=vacuum projection
    everywhere. Odd time average gives SUM of two positive measures. Momentum
    bump volume u^3 divided by energy u gives u\<twosuperior\>. Compact word
    density checked.

    <item>Weak commutant: ScottH339\U350. Pasting upper/lower half-plane heat
    functions uses bounded B without assuming domain invariance.

    <item>Stress continuation and local charges: ScottH352\U365. Derivative
    conversion and zeta factors recorded; spacelike support of cutoff
    derivative is essential to bounded holomorphic jump continuation. This
    assertion retains the upstream normalized shell identity, not just
    conservation.
  </itemize-minus>

  <section|Stable exports><label|stable-exports>

  <verbatim|ch16:boundary>, <verbatim|ch16:cone-support>,
  <verbatim|ch16:locality>, <verbatim|ch16:fields> (faithful fields, joint
  spectrum, onto heat-intertwining OS comparison), <verbatim|ch16:vacuum>
  with <verbatim|ch16:low-energy> and <verbatim|ch16:heat-decay>,
  <verbatim|ch16:irreducible>, <verbatim|ch16:charge-law>.

  <section|Original literature><label|original-literature>

  Wightman, Physical Review101(1956),860\U866, DOI10.1103/PhysRev.101.860,
  original APS publisher record checked2026-11-19. New sidecar
  <verbatim|blueprint/ch16-bibliography.bib>, keyWightman1956. The standard
  word construction is attributed rather than presented as a new source
  result. Existing OS1973/OS1975 entries retained; original OS1975
  ProjectEuclid paper checked again. Their abstract reconstruction theorem is
  not invoked without its hypotheses: actual slab-based boundary construction
  is given here. The source-specific uniform every-phase conclusion and local
  stress jump argument remain explicitly proved adaptations of the supplied
  manuscripts.

  <section|Limits><label|limits>

  No separate global PDF build, bibliography mutation, or rendered-page
  review was performed by this agent. Parent handles integration. No
  additional missing mathematical input identified within the Chapter16
  reconstruction once its stated14/15 inputs hold. The substantive upstream
  unclosed conditions remain visible rather than being hidden inside an OS
  citation.
</body>

<\initial>
  <\collection>
    <associate|html-title|Chapter 16: relativistic reconstruction \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|2>>
    <associate|auto-5|<tuple|5|3>>
    <associate|chapter-16-relativistic-reconstruction|<tuple|?|1>>
    <associate|checked-proof-units-and-sources|<tuple|2|1>>
    <associate|exact-hypotheses-retained|<tuple|1|1>>
    <associate|limits|<tuple|5|3>>
    <associate|original-literature|<tuple|4|2>>
    <associate|stable-exports|<tuple|3|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Exact
      hypotheses retained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Checked
      proof units and sources> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Stable
      exports> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Original
      literature> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Limits>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>