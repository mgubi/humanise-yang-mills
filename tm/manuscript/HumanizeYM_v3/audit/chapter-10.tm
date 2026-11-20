<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Chapter 10 audit><label|chapter-10-audit>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Source trace
    and actual conclusions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Same-data and
    choice issues checked> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Review
    priorities / remaining joins> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Literature
    checked> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Root review
    refinements> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>
  </table-of-contents>

  Draft: <verbatim|chapters/10-common-trajectory.tex>. Scope: common
  numerical schedule; finite Wilson shooting; uniform logarithmic running;
  triangular coefficient stability; real-line finite-test estimates and
  common-input local continuity; coupled-history convergence. No endpoint
  analyticity, accumulated vacuum normalization convergence, or continuum
  correlation limit is asserted.

  <section|Source trace and actual conclusions><label|source-trace-and-actual-conclusions>

  <\itemize-minus>
    <item>Martin <verbatim|common-scale-selection.tex:1\U230>: explicit
    plateau recursion, delays, physical scales and periods, and order of
    ratio choices before entry costs. Chapter uses stages starting at1, tau_m
    logarithmic physical scale, a_m spacing, R_p physical side. Stage drift
    is C_j^drift (not D_j, reserved globally for lattice denominators).
    Initial plateau period costs are included.

    <item>Martin <verbatim|surviving-interval-shooting.tex:1\U232>: first
    upper crossing/last lower crossing restricts a continuous curve to inner
    barriers without monotonicity. Chapter9 supplies restriction-compatible
    actual maps. Finite tuned histories established. Source exact scalar
    drift sign checked against Chapter9 reset. Target neighborhood existence
    is not a continuous shooting selection.

    <item>Same source running paragraph and <verbatim|running-coupling.tex>:
    sum error/log ratio, not sum error alone. All-cutoff/all-period
    asymptotic is proved directly. Narrow normalized band is obtained by
    making every stage drift/log allowance \<less\>=kappa/10, including
    initial stages.

    <item>Martin <verbatim|background-path-convergence.tex:1\U200>, Scott
    <verbatim|part2/D-section.tex:1069\U1121>: triangular affine comparison
    order cubic, quartic, loop; enlarged-domain factor64 gives1/16 Lipschitz.
    Ch7 classical budget and inherited contraction allow ratio choices for
    that enlarged domain. Fixed linear curl division/readouts avoid arbitrary
    representatives. Quadratic history convergence is now supplied by
    Proposition ch05:horizon-limit for the actual nested histories, canonical
    positive row choices, and every strictly smaller exponential width.

    <item>Martin <verbatim|coupled-background-convergence.tex:1\U300>:
    normalized coupling chi=hatbeta^-1/32, mathfrak b=hatbeta^31/32; actual
    arrays completed in fixed dictionary; zero-terminal-array coupling
    scripts; common-input cutoff continuity; finite prefix telescope and
    uniqueness. Chapter reproduces the precise noncompact argument. Only
    scalar bands use compactness. No uniform tail assumption is deduced for
    all bounded arrays.

    <item>Martin <verbatim|background-ray-estimates.tex:1\U190>: finite
    moment tests imply one-variable coefficient bounds through bounded linear
    map on c0; small Lipschitz follows. This is a separate analytic input
    from mere continuity. Chapter proves conversion, including seminorm-zero
    case, with constants at least as conservative as source.

    <item>Martin <verbatim|real-coupling-interpolation.tex:1\U265>:
    sign-sensitive exponential series estimate and real-node polynomial jet
    interpolation. Chapter10 <verbatim|ch10:parameter-supplier> spells out
    the actual local factor, nearby lower reference coupling, dimension
    prefactor, warning read compensation, and degree-two small-factor
    interpolation.

    <item>Martin <verbatim|sector-analytic-prices.tex:1\U354>: radius
    y^(1/256), local dimension support cost, primitive rate -55/128 then
    -2/5; two connected expansions, finite derivative vertex inflation; broad
    logarithmic -3/8 bound. Uses actual Ch6 protected real estimates, not
    differentiating old measurable factors.

    <item>Martin <verbatim|projected-parameter-prices.tex:1\U265>: local
    projection auxiliary volumes O(B), cover numbers bounded uniformly (not
    merely subpower), broad -1/4 bound, forced common coefficient majorant.

    <item>Martin <verbatim|background-test-prices.tex:1\U331>: finite
    polynomial interpolation k300 between broad and pointwise estimates,
    arbitrary fixed small output fraction, scalar threshold^-2, forced
    hard/soft inflation. Chapter10 supplies exponent arithmetic and the
    fusion inequality. Input constants precede coupling entry choices.

    <item>Martin <verbatim|selected-history-limits.tex:317\U507>,
    <verbatim|local-parameter-comparison.tex>,
    <verbatim|finite-volume-parameter-continuity.tex>,
    <verbatim|parameter-comparison-suppliers.tex>: zero-array same-path
    supplier checks and compensated actual input continuity. Chapter10
    <verbatim|ch10:cutoff-supplier> gives common physical Gaussian
    comparison, fixed masks, protected scores, input Cauchy value tails,
    cluster/path tails, projected scalar. It retains quadratic/path
    convergence as premise.
  </itemize-minus>

  <section|Same-data and choice issues checked><label|same-data-and-choice-issues-checked>

  Ch9 author confirms that the selected low-order panel excludes incoming
  activity arrays (Scott D351). It can be fixed on the compact coupling band
  before incoming affine rays, so finite tests compare the same output map.
  Stage widths and masks remain fixed. Parameter tests may use the explicit
  algebraic local expansion on its larger signed-array domain; positivity is
  retained for the actual selected histories, not asserted for arbitrary
  extrapolated raw arrays.

  Zero-terminal scripted histories have positive bare path density. After a
  transition, changing only the next coupling leaves the activity gas fixed
  and multiplies the density by a positive path exponential. This supplies
  the needed admissibility/positivity induction for scripted histories;
  arbitrary completed activity classes are not presumed physical.

  The standard Wilson terminal bound needed for the fixed-scale convergence
  proof is only norm\<less\>=1/8. A previous stronger request for a
  terminal-map Lipschitz bound has been removed because it is unnecessary for
  the geometric truncation proof.

  <section|Review priorities / remaining joins><label|review-priorities--remaining-joins>

  <\enumerate>
    <item>Actual all-history quadratic cutoff convergence is now supplied by
    ch05:horizon-limit. Chapter10 invokes that stronger result, not the
    uniform bound alone. Common comparison is now a proposition and
    fixed-scale convergence is stated for the actual common construction.
    Coupling comparison weight renamed mathfrak b_m to avoid collision with
    support B_m.

    <item>Independently review <verbatim|ch10:parameter-supplier> against the
    actual Ch6 protected coordinate conventions: real-node compensation keeps
    physical fine reads fixed; local rather than whole-volume Gaussian
    dimension is essential. Full derivative budget and common forced
    coefficient majorants, rather than pointwise bounds, are consumed by
    contraction.

    <item>Common-input cutoff comparison requires the positive precision
    bound and a shared protected chart at each fixed scale. The actual
    comparison is now made with all physical fine masks fixed (reference
    threshold and dictionary at fixed scale); no moving-threshold
    measure-zero argument is used. Uniform output derivative convergence uses
    one additional Gaussian/chart score derivative with incoming physical
    reads held fixed, so it does not require an extra incoming activity
    derivative even on equal-order plateaux. This reserve must be fixed
    before stage constants.

    <item>Hilbert-encoded coefficient arrays need summable encoding weights
    on the canonical dictionary. The chapter explicitly warns against
    ignoring path multiplicity. A fixed deterministic linear curl/path
    placement can alternatively give a direct stronger exponential l1 bound,
    avoiding unsupported orthogonal projection bounds in l1.

    <item>No analyticity in the endpoint has been inferred. One-variable
    series appear only after the strong finite-test inequalities are proved
    from local real estimates.
  </enumerate>

  <section|Literature checked><label|literature-checked>

  Original Banach1922 publisher record checked:
  <hlink|https://www.impan.pl/en/publishing-house/journals-and-series/fundamenta-mathematicae/all/3/0/92453/sur-les-operations-dans-les-ensembles-abstraits-et-leur-application-aux-equations-integrales|https://www.impan.pl/en/publishing-house/journals-and-series/fundamenta-mathematicae/all/3/0/92453/sur-les-operations-dans-les-ensembles-abstraits-et-leur-application-aux-equations-integrales>
  . Article Fund.Math.3,133\U181, DOI10.4064/fm-3-1-133-181. Bib in
  <verbatim|blueprint/ch10-bibliography.bib>. General fixed-point proof is
  not reproduced; only the specific coupled-prefix estimates and geometric
  truncation are detailed. Brydges\USlade original arXiv1403.7256 checked as
  related RG differentiability literature, but not invoked as proving this
  gauge-model comparison.

  <section|Root review refinements><label|root-review-refinements>

  Removed the generic moving-threshold boundary-layer argument. Fixed
  physical-coordinate masks are identical across cutoffs; Gaussian-coordinate
  movement is absorbed in the density and Jacobian. Added explicit
  one-extra-score-derivative reserve for finite-net uniformity, with fixed
  incoming reads, including the plateau q_in=q_out case. No q_in+1 assumption
  is introduced.
</body>

<\initial>
  <\collection>
    <associate|html-title|Chapter 10 audit \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|3>>
    <associate|auto-4|<tuple|4|3>>
    <associate|auto-5|<tuple|5|3>>
    <associate|chapter-10-audit|<tuple|?|1>>
    <associate|literature-checked|<tuple|4|3>>
    <associate|review-priorities--remaining-joins|<tuple|3|3>>
    <associate|root-review-refinements|<tuple|5|3>>
    <associate|same-data-and-choice-issues-checked|<tuple|2|2>>
    <associate|source-trace-and-actual-conclusions|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Source
      trace and actual conclusions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Same-data
      and choice issues checked> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Review
      priorities / remaining joins> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Literature
      checked> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Root
      review refinements> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>