<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../../outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../../index.tm><ym-nav-sep><hlink|Manuscript|../../../../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../../../glossary.tm><ym-nav-sep><hlink|Notation|../../../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../../../CONTRIBUTING.tm>>

  <ym-unit-nav||<hlink|YM-000022: Logarithmic asymptotics of the running
  inverse coefficient (draft)|../../correspondence.tm><ym-nav-sep><hlink|evidence|../../evidence/index.tm><ym-nav-sep><hlink|proof|../../proof.tm>|<hlink|YM-000026
  \<rightarrow\>|../../../YM-000026/correspondence.tm>>

  <ym-title|Author revision responding to PR
  #32><label|author-revision-responding-to-pr-32>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Response to the
    five required requests> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Focused source
    and literature inspection> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|LaTeX and
    structural verification> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Review state
    and handoff> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>
  </table-of-contents>

  Date: 13 November 2026. Session: <verbatim|mgubi-astra-22-repair-20261113>.
  Human contributor: mgubi. Agent assistance: GPT-6 Astra through Codex,
  working in its own worktree under the parent's claim; no further
  delegation. This is authoring assistance, not independent review or
  acceptance.

  <\itemize-minus>
    <item>Task: <hlink|issue #22|https://github.com/hairer/humanise-yang-mills/issues/22>.

    <item>Claim: <hlink|bounded revision claim|https://github.com/hairer/humanise-yang-mills/issues/22#issuecomment-6847117148>,
    expiry 13 November 2026, 10:00 UTC.

    <item>Worktree: <verbatim|/tmp/ym-astra-22-repair-20261113>.

    <item>Branch: <verbatim|codex/astra-22-repair-20261113>, based on
    repository commit <verbatim|47762e9>.

    <item>Imported source pin, unchanged:
    <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>.
  </itemize-minus>

  <section|Response to the five required requests><label|response-to-the-five-required-requests>

  The authoritative proof remains solely in
  <verbatim|manuscript/pilots/running-coupling.tex>.

  <\enumerate>
    <item>The opening paragraph now derives skew-Hermitian generators by
    differentiating the unitary identity and displays the positive Frobenius
    sum giving the normalized matrix inner product.

    <item>It explicitly notes nonzero Lie algebra dimension and shows
    orthogonal basis invariance of the summed adjoint squares before taking
    their traces.

    <item>The crosswalk includes <verbatim|YM.RG.History.Selected.starts> and
    <verbatim|YM.Wilson.bare>. Inspection of <verbatim|YM.RG.Rep.eval>,
    <verbatim|YM.Wilson.energy> and <verbatim|YM.Gauge.price> fixes the
    precise meaning of the initial bare action coefficient. No optional SU(N)
    example or comparison with a conventional physical coupling is added.

    <item>The crosswalk includes <verbatim|YM.Schedule.denominator> and
    <verbatim|YM.Schedule.block_large> for the manuscript's own divergence
    argument.

    <item>The correspondence distinguishes the author's summed-commutator
    positivity proof from <verbatim|YM.Gauge.casimir_pos>, whose
    <verbatim|trace_adjoint> step uses full simplicity. It records the
    color-coordinate transport and projection facts supporting the
    interpretation of the Casimir formula.
  </enumerate>

  Both scalar propositions and their proofs are unchanged. The running
  estimate remains an explicit outstanding input. The metadata changes only
  author credit; status remains <verbatim|draft>, and both review records
  remain null.

  <section|Focused source and literature inspection><label|focused-source-and-literature-inspection>

  Read the task and all comments, PRs #23, #25 and #32, both review reports,
  <verbatim|Bots/README.md> (the only Bots file), the original evidence
  README and source inspection log, and the
  contributor/proof/coordination/source instructions. Bounded <verbatim|sed>,
  <verbatim|rg> and <verbatim|cat> reads covered the ten sources listed in
  <hlink|source-checksums.txt|https://github.com/hairer/humanise-yang-mills/blob/main/blueprint/units/YM-000022/revisions/mgubi-astra-22-repair-20261113/source-checksums.txt>;
  no whole-tree source read occurred. In particular:

  <\shell-code>
    sed -n '1,90p' Lean/YM/Lattice/Scale.lean

    sed -n '95,125p' Lean/YM/Lattice/Scale.lean

    sed -n '145,245p' Lean/YM/RG/History.lean

    sed -n '1,55p' Lean/YM/Gauge/Lie.lean

    sed -n '125,195p' Lean/YM/Gauge/Lie.lean

    sed -n '135,178p' Lean/YM/Gauge/Casimir.lean

    sed -n '15,100p' Lean/YM/Gauge/MatrixGroup.lean

    sed -n '20,90p' Lean/YM/Gauge/Colors.lean

    sed -n '92,114p' Lean/YM/Gauge/Colors.lean

    sed -n '125,190p' Lean/YM/Gauge/Colors.lean

    cat Lean/YM/Wilson/Law.lean \| head -80

    sed -n '1,65p' Lean/YM/Lattice/Faces.lean

    cat Lean/YM/Pert/Asymptotics/RawAxis.lean

    sed -n '25,50p' Lean/YM/Source/Construction.lean
  </shell-code>

  Searches in <verbatim|blueprint/background/> for Lie algebra, Hermitian and
  Casimir material found the <hlink|SU(2) background
  note|../../../../background/su2-simplicity.tm>. Following that note, the
  original versioned source was opened and read: Brian C. Hall, <em|An
  Elementary Introduction to Groups and Representations>,
  <hlink|arXiv:math-ph/0005032v1|https://arxiv.org/pdf/math-ph/0005032v1>, 31
  May 2000, Chapter 3, Definition 3.13 (printed p. 36), Ÿ5.4 (printed pp.
  37\U38), and Theorem 3.16 (printed pp. 40\U41). These identify the
  all-real-time exponential Lie algebra, skew-Hermitian unitary generators,
  and commutator closure. The conventions match the pinned
  <verbatim|Generates> and <verbatim|lie> definitions. The manuscript
  supplies the short derivative and inner-product calculations directly; no
  additional external result is silently substituted for the positivity
  proof. The existing Lebl citations and scalar proofs were not changed or
  freshly audited in this revision.

  All ten inspected source files were hashed with Python
  <verbatim|hashlib.sha256> and compared with their entries in
  <verbatim|Lean/SOURCES.sha256>: all matched. The retained output
  establishes agreement with the local pinned manifest, not independent
  authentication of that manifest. The existing seven-file check was also
  rerun:

  <\shell-code>
    python3 blueprint/units/YM-000022/evidence/check_sources.py
    /tmp/ym-astra-22-repair-20261113
  </shell-code>

  It passed for all seven files. This revision performs source-text
  inspection only. No new Lean elaboration, axiom query, build or kernel
  replay was run; earlier such evidence retains its original scope and date.
  No Lean file was changed.

  <section|LaTeX and structural verification><label|latex-and-structural-verification>

  From the worktree's <verbatim|manuscript/> directory:

  <\shell-code>
    mkdir -p /tmp/ym22-repair-build

    latexmk -pdf -interaction=nonstopmode -halt-on-error
    -outdir=/tmp/ym22-repair-build main.tex \<gtr\>
    /tmp/ym22-repair-build/latexmk.txt 2\<gtr\>&1
  </shell-code>

  Result: exit 0, three-page PDF (the third page contains the bibliography).
  Final log has no warnings, undefined references or overfull/underfull
  boxes. Poppler executables were unavailable and <verbatim|python3 -c
  'import fitz'> failed because PyMuPDF was not installed. Native macOS
  PDFKit was used instead, with <hlink|the retained rendering
  script|https://github.com/hairer/humanise-yang-mills/blob/main/blueprint/units/YM-000022/revisions/mgubi-astra-22-repair-20261113/render.swift>:

  <\shell-code>
    swift -module-cache-path /tmp/ym22-repair-build/swift-cache
    blueprint/units/YM-000022/revisions/mgubi-astra-22-repair-20261113/render.swift

    rg -n 'Warning\|Overfull\|Underfull\|undefined\|\\?\\?'
    /tmp/ym22-repair-build/main.log /tmp/ym22-repair-build/main.txt
  </shell-code>

  The script rendered all three pages and extracted text; the <verbatim|rg>
  scan found no matches (exit 1, as expected). All three PNGs were visually
  inspected: equations, indices, text and references are legible, with no
  clipping or overlaps. Build artifacts and PNGs remain scratch outputs, not
  authoritative source files.

  From the repository root:

  <\shell-code>
    python3 scripts/check_blueprint.py

    python3 scripts/check_blueprint.py --fingerprint YM-000022

    git diff --check
  </shell-code>

  Results: <verbatim|Blueprint structure OK: 2 units. Lean and mathematics
  were not verified.>; new fingerprint <verbatim|37a404dea24a3001c320680e4b25334e619d6865178c86e3d85993bb4000168f>;
  whitespace check clean. No checker code changed, so its regression suite
  was not rerun.

  <section|Review state and handoff><label|review-state-and-handoff>

  The old review fingerprint is <verbatim|367b5982bb56035d3f0cbf81641d1f0564c27a48169707b9aa64a5cf3c0b0aa2>.
  The existing reports in <verbatim|reviews/> are unchanged historical
  evidence and do not review the new content. Renewed independent
  mathematical and Lean-correspondence reviews are required; this revision
  does not refresh another reviewer's approval. The contributor mgubi is now
  credited as an author of this repair, so subsequent review must account for
  that authorship. Parent owns the issue handoff and claim release. No merge
  or publication is authorized by this revision.

  <ym-unit-nav||<hlink|YM-000022: Logarithmic asymptotics of the running
  inverse coefficient (draft)|../../correspondence.tm><ym-nav-sep><hlink|evidence|../../evidence/index.tm><ym-nav-sep><hlink|proof|../../proof.tm>|<hlink|YM-000026
  \<rightarrow\>|../../../YM-000026/correspondence.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|Author revision responding to PR #32 \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|author-revision-responding-to-pr-32|<tuple|?|1>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|3>>
    <associate|auto-4|<tuple|4|3>>
    <associate|focused-source-and-literature-inspection|<tuple|2|2>>
    <associate|latex-and-structural-verification|<tuple|3|3>>
    <associate|response-to-the-five-required-requests|<tuple|1|1>>
    <associate|review-state-and-handoff|<tuple|4|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Response
      to the five required requests> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Focused
      source and literature inspection> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|LaTeX
      and structural verification> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Review
      state and handoff> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>