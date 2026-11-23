<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../index.tm><ym-nav-sep><hlink|Monograph|../existence.tm><ym-nav-sep><hlink|Glossary|../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../source/audit.tm><ym-nav-sep><hlink|Literature|../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../CONTRIBUTING.tm>>

  <ym-title|Progress and review record><label|progress-and-review-record>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Delivered
    files> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Final
    mathematical integration> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Verification>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Continuing
    editorial work> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>
  </table-of-contents>

  Updated 22 November 2026. The requested blueprint and a full first draft of
  the monograph are complete in this folder. The draft is <strong|279 pages>,
  with all nineteen chapters, eleven figures, a notation index and 41 cited
  references. It is a working mathematical exposition of the supplied
  construction and still merits expert review; the writing and focused
  dependency audits are not independent certification of the underlying
  existence claim.

  <section|Delivered files><label|delivered-files>

  <\itemize-minus>
    <item><verbatim|monograph.pdf>: reviewed standalone PDF.

    <item><verbatim|monograph.tex>, <verbatim|preamble.tex>,
    <verbatim|chapters/>, <verbatim|figures/>, <verbatim|references.bib>:
    complete buildable LaTeX sources.

    <item><verbatim|BLUEPRINT.md> and <verbatim|blueprint/>: chapter/section
    instructions, bounded source packets, dependencies, shared notation,
    source translations and literature policy.

    <item><verbatim|audit/>: source matching, corrections and independent
    focused reviews.
  </itemize-minus>

  <section|Final mathematical integration><label|final-mathematical-integration>

  Chapters 4\U9 develop the actual predictor, Gaussian/Hessian estimates,
  large-field bounds, local matching and nonlinear step. Chapter10 chooses
  one common schedule and proves fixed-scale convergence. Chapter11 supplies
  equation calibration, restarted histories, common polynomial extraction,
  arbitrary fixed-arity comparisons, replicated estimates and uniform
  differences.

  Chapters 12\U16 develop the fixed-volume limit, continuum quotient, bounded
  real approximations, local cluster replacement, Ward identities, rotations,
  phases and reconstruction. The grouped lattice product argument is placed
  in Chapter13 so the annular estimate in Chapter14 has no dependency on
  later phasewise OPE. Chapter18 converts that result to finite-order
  phase-uniform operator products and separately constructs a conservative
  contact extension.

  Chapter17 now contains the current defect contraction, regulated contact
  calculation, marked coefficient estimates and comparison windows crossing
  arbitrary stage changes. The last spatial-remainder issue was resolved by
  the exact polynomial-preserving smooth response, the actual
  gauge-coordinate comparison, and the normalized Gaussian fluctuation gain
  g/t. Its coefficient bound is H^(-1/2), not the unsupported negative
  coupling power initially proposed. See <verbatim|ch17-score-independent-review.md>,
  <verbatim|chapter-17-spatial-moments-review.md>,
  <verbatim|ch17-marked-rates.md> and the two variable-window reviews. The
  earlier open checkpoints in those audit files are historical; their final
  resolution sections record the implemented proof.

  Chapter19 assembles the construction and states the trace law separately to
  show which extra estimates it uses. No mass gap, unique phase, unique
  volume limit, block-choice independence, infinite OPE convergence or
  canonical positive contact hierarchy is claimed.

  <section|Verification><label|verification>

  The master includes all 50 TeX files checked by
  <verbatim|tools/check_draft.py>; there are no unattached chapter fragments,
  duplicate labels or unresolved explicit references. The complete LaTeX
  build has no undefined-reference/citation warnings or overfull/underfull
  boxes. At first-draft delivery the PDF was rendered and inspected,
  including every newly written or changed region; unchanged regions were
  covered by the earlier recorded checkpoints. The final layout removes the
  nearly empty closing page of Chapter18.

  The terminology revision covers all nineteen chapters, the reading guide
  and the notation index. The revised PDF builds without warnings. Selected
  pages, including the contents and revised section headings, were rendered
  and inspected.

  The illustrated edition adds eleven chapter figures. The list of figures
  and each in-text reference link to the illustrations.

  <section|Continuing editorial work><label|continuing-editorial-work>

  Use <verbatim|BLUEPRINT.md>, the relevant chapter packet and
  <verbatim|blueprint/notation.md> before editing. Consult the chapter audit
  for source locations and the exact scope of its review.
  <verbatim|tools/source_excerpt.py> retrieves named source assertions
  without rereading whole manuscripts. Historical fragment names can differ
  from their chapter placement; follow the master's actual input graph.

  Further work should focus on external expert review and any corrections it
  identifies, rather than treating a successful compilation as mathematical
  validation. For changes, run:

  <\shell-code>
    python3 tools/check_draft.py

    python3 tools/collect_references.py

    latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=build
    monograph.tex
  </shell-code>

  Render and inspect changed pages, then copy the reviewed PDF to
  <verbatim|monograph.pdf>. Keep the account-usage floor in any resumed work.
</body>

<\initial>
  <\collection>
    <associate|html-title|Progress and review record \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|2>>
    <associate|continuing-editorial-work|<tuple|4|2>>
    <associate|delivered-files|<tuple|1|1>>
    <associate|final-mathematical-integration|<tuple|2|1>>
    <associate|progress-and-review-record|<tuple|?|1>>
    <associate|verification|<tuple|3|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Delivered
      files> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Final
      mathematical integration> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Verification>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Continuing
      editorial work> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>