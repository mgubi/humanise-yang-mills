<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Grouped lattice products and raw
  replacement><label|grouped-lattice-products-and-raw-replacement>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Placement and
    dependency> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Independent
    graded review> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Source packet
    and literature check> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Quantitative
    checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Remaining
    review focus> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Parent review>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>
  </table-of-contents>

  Files: <verbatim|chapters/18-lattice-products.tex> and
  <verbatim|chapters/18-raw-replacement.tex>. Parent owns their placement and
  changes to the main chapter.

  <section|Placement and dependency><label|placement-and-dependency>

  The first fragment has no phase, stress or Ward premise. Place it after the
  graded quotient and sharp bounds at the end of Chapter 13. It proves
  lattice signed replacement and mixed finite-spectator replacement. Thus
  Chapter 14 may use its annular consequence without referring forward to the
  operator-product chapter. Its finite correlation readouts use only the
  already defined physical quotient and all-spectator separation. The second
  fragment belongs in Chapter 18 after its raw readout and precise
  replacement statement; it uses the established phase/compression moment
  identity to prove that statement, with constants chosen before moment
  number.

  <section|Independent graded review><label|independent-graded-review>

  The current <verbatim|18-graded-quotient.tex> matches Scott's cone proof.
  Checked triangular low/high scaling, invariance of the high plane, repeated
  subtraction, subpower column products, and the all-spectator lower-field
  identification using normalized-null representatives. No correction found.
  This step is needed in Chapter 13 before the mixed local replacement, if
  the dependency is to run forward.

  <section|Source packet and literature check><label|source-packet-and-literature-check>

  Scott <verbatim|part2/J-section.tex>: signed local transport roughly
  30\U103; graded quotient 104\U150; marked algebra and weights 211\U272;
  extraction 273\U304; grouping/replacement 334\U414;
  continuum/probe/derivative passage 415\U455. These source-specific
  estimates were checked against the actual Chapter 11 signed cone, termwise
  marked integration, cover transfer, higher modes and normalized replicated
  integral; Chapter 13 supplies sparse stopping and sharp source weights.

  External check: the original arXiv record for Bauerschmidt\UBrydges\USlade,
  <em|Critical two-point function of the 4-dimensional weakly self-avoiding
  walk>, arXiv:1403.7268, confirms incorporation of observable fields in the
  RG. The source bibliography entry <verbatim|BauerschmidtBrydgesSlade2015>
  has CMP338 (2015),169\U193, DOI10.1007/s00220-015-2353-5. Cite it only for
  that general method, not as a replacement proof of the present gauge-theory
  grouped bounds. Its existing entry is in Scott/references.bib for the
  bibliography collector. No new claim that an original literature theorem
  directly proves this manuscript-specific supplier is made.

  <section|Quantitative checks><label|quantitative-checks>

  <\itemize-minus>
    <item>Signed residual has physical degree-t factor and cone gain
    (a_m/a_l)^(1/8); exact column recentering retains the original inventory
    and zero readout.

    <item>Marker grouping retains all original square-zero variables/partial
    modes until full coefficient extraction; no invalid algebra homomorphism
    or probabilistic independence of separated supports is asserted.

    <item>Support enlargement pays both exp(sigma h) and rooted incidence
    reassignment. At most n\<minus\>1 fusions occur per local cluster.
    Between fusions the <em|unsubtracted> incoming regular term uses its
    cover-conversion cost T_l\<less\>=L_l; it is not assigned a zero-jet
    contraction. The resulting 6L_l\<less\>=L_l^4 cost gives Z=W
    theta_plus+4n(theta_plus\<minus\>theta).

    <item>The two exact residual weight inequalities are stated. The chosen
    weight has strict exponent margins \<minus\>15(theta\<minus\>theta_minus)/16
    in the extraction condition and \<minus\>(theta\<minus\>theta_minus)/16
    in the transport condition. The intermediate-level ratio is
    (a_l/a_kstar)^(7/8), so the endpoint check suffices.

    <item>Sparse kstar normalization uses the actual q_site and the sharp
    schedule. Both log N_k and all extraction/support costs are subpower; no
    volume-dependent scalar survives.

    <item>Coefficient extraction for one residual per reflected cell costs
    varpi^-1 per cell, with all higher modes retained. Incidence estimates
    depend on fixed marks per cell, not total cells. This is the all-copy
    input needed later.

    <item>Graded quotient recovers degree-i coordinate exponent Z\<minus\>i
    theta. Auxiliary t is chosen strictly larger when necessary. Mixed
    derivative descent acts on fixed correlation readouts, never on a
    potentially nonsmooth selection of auxiliary output labels.

    <item>The finite readout construction explicitly preserves old
    correlation functionals across higher degrees and kills them on newly
    lifted bases. Hence the raw low-degree readout is the intended truncation
    of the auxiliary field; arbitrary unrelated projections would not
    suffice.
  </itemize-minus>

  <section|Remaining review focus><label|remaining-review-focus>

  The supplied proof makes explicit the source-specific grouped-coefficient
  extraction and the transfer of all modes. It uses the existing termwise
  Chapter 11 compiler at arbitrary fixed arity per cell, not only its
  two-mark detector specialization. During independent integration review
  check precisely that the old large-field normalized source and the
  full-group density coefficient are in that format; no division by a
  gas/activity is allowed. No unproved estimate is intentionally introduced
  as a new scheduling request. The only new requests are finite degree/stage
  support constants, Taylor orders and numerical weight margins.

  Static environment counts balance and all internal references currently
  resolve. No global compilation performed.

  <section|Parent review><label|parent-review>

  Parent independently checked the residual-weight arithmetic, order of
  quantifiers and fixed-probe derivative descent. Added explicit
  degree-independent exponents: crude c0=1, grid
  c1=4n(theta_plus\<minus\>theta)\<minus\>(D+1)theta for residuals, or with
  \<minus\>i theta for a fixed coordinate. Clarified that the auxiliary
  horizon pays only raw coordinates through D, not every coordinate through t
  (which would fail when theta_minus\<gtr\>0). The earlier independent review
  of the graded quotient passed, with no mathematical correction requested.
</body>

<\initial>
  <\collection>
    <associate|html-title|Grouped lattice products and raw replacement \U
    Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|1>>
    <associate|auto-4|<tuple|4|2>>
    <associate|auto-5|<tuple|5|2>>
    <associate|auto-6|<tuple|6|3>>
    <associate|grouped-lattice-products-and-raw-replacement|<tuple|?|1>>
    <associate|independent-graded-review|<tuple|2|1>>
    <associate|parent-review|<tuple|6|3>>
    <associate|placement-and-dependency|<tuple|1|1>>
    <associate|quantitative-checks|<tuple|4|2>>
    <associate|remaining-review-focus|<tuple|5|2>>
    <associate|source-packet-and-literature-check|<tuple|3|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Placement
      and dependency> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Independent
      graded review> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Source
      packet and literature check> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Quantitative
      checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Remaining
      review focus> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Parent
      review> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>