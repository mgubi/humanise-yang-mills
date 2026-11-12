<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../index.tm><ym-nav-sep><hlink|Manuscript|../../../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../../glossary.tm><ym-nav-sep><hlink|Notation|../../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../../CONTRIBUTING.tm>>

  <ym-unit-nav||<hlink|YM-000022: Logarithmic asymptotics of the running
  inverse coefficient (draft)|../correspondence.tm><ym-nav-sep><ym-nav-here|evidence><ym-nav-sep><hlink|proof|../proof.tm>|>

  <ym-title|Evidence for YM-000022 (original Markdown
  draft)><label|evidence-for-ym-000022-original-markdown-draft>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Source
    inspection and integrity> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Fresh Lean
    inspection> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Literature and
    mathematical checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Structural
    checks and limits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>
  </table-of-contents>

  This is the historical inspection record from PR #23. The mathematical text
  subsequently moved to LaTeX; see <hlink|the current
  correspondence|../correspondence.tm> and <hlink|migration
  checks|latex-migration.tm>. References to <verbatim|proof.md> below
  describe the version inspected then. The Lean source and retained axiom log
  are unchanged.

  Date: 11 November 2026. Parent session:
  <verbatim|hairer-codex-cp03-20261111>. <hlink|Claim
  grant|https://github.com/hairer/humanise-yang-mills/issues/22#issuecomment-6800662148>,
  with scope and expiry recorded in the issue: 12 November 2026, 15:00 UTC.

  The author checkout <verbatim|/private/tmp/ym-22-author-20261111> was
  branched from repository commit <verbatim|7af0e96c06651ded585d2c5571802a637f51d77d>
  on <verbatim|codex/issue-22-running-asymptotic>. This repository commit is
  distinct from the imported Lean revision
  <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464> recorded in
  <verbatim|source/upstream.json>. No upstream source was edited.

  <section|Source inspection and integrity><label|source-inspection-and-integrity>

  The parent read <verbatim|RawAxis.lean> and checked the immediate
  interfaces using bounded <verbatim|sed>, <verbatim|nl> and <verbatim|rg>
  inspections. Representative actual commands were:

  <\shell-code>
    cat Lean/YM/Pert/Asymptotics/RawAxis.lean

    sed -n '1,65p' Lean/YM/Source/Construction.lean

    sed -n '190,250p' Lean/YM/RG/History.lean

    sed -n '50,82p' Lean/YM/RG/History.lean

    sed -n '95,125p' Lean/YM/Lattice/Scale.lean

    sed -n '20,85p' Lean/YM/Gauge/Colors.lean

    sed -n '172,188p' Lean/YM/Gauge/Colors.lean

    sed -n '130,149p' Lean/YM/Gauge/Colors.lean

    sed -n '168,187p' Lean/YM/Gauge/Lie.lean

    sed -n '150,182p' Lean/YM/Gauge/Casimir.lean
  </shell-code>

  GPT-6 Luna, session <verbatim|hairer-codex-cp03-20261111/lean-reader>,
  inspected these same seven files in the separate clone
  <verbatim|/private/tmp/ym-22-lean-reader-20261111>, using bounded
  <verbatim|nl>, <verbatim|sed> and <verbatim|rg>. Its output was a report to
  the parent, with no tracked edits or build. It also spot-checked the draft
  statement. This is disclosed authoring assistance, not independent review.
  Parent inspection corrected two namespace suggestions from that report:
  <verbatim|YM.Family> and <verbatim|YM.Schedule> are not nested under the
  names suggested by their source directory paths.

  The following commands passed for all seven inspected files, comparing
  SHA-256 hashes with the distribution's <verbatim|Lean/SOURCES.sha256>:

  <\shell-code>
    python3 blueprint/units/YM-000022/evidence/check_sources.py

    python3 blueprint/units/YM-000022/evidence/check_sources.py
    /Users/hairer/humanise-yang-mills
  </shell-code>

  The first result is retained in <hlink|source-checksums.txt|https://github.com/hairer/humanise-yang-mills/blob/main/blueprint/units/YM-000022/evidence/source-checksums.txt>.
  The second checked the original checkout used for the Lean inspection
  below; it produced the identical hashes. This establishes agreement with
  the local pinned manifest, not independent authentication of that manifest.

  <section|Fresh Lean inspection><label|fresh-lean-inspection>

  <hlink|Inspect.lean|https://github.com/hairer/humanise-yang-mills/blob/main/blueprint/units/YM-000022/evidence/Inspect.lean>
  contains only imports and inspection commands. It was run against the
  original checkout's existing build artifacts, as the isolated author
  checkout has no build cache. No agent ran a concurrent build. The exact
  command, from <verbatim|/Users/hairer/humanise-yang-mills/Lean>, was:

  <\shell-code>
    env PATH=/Users/hairer/.elan/toolchains/leanprover--lean4---v4.32.0/bin:/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin
    lake env lean -j1 /private/tmp/ym-22-author-20261111/blueprint/units/YM-000022/evidence/Inspect.lean
    \<gtr\> /private/tmp/ym-22-author-20261111/blueprint/units/YM-000022/evidence/lean-inspection.txt
  </shell-code>

  Final result: exit 0. The complete concise output is
  <hlink|lean-inspection.txt|https://github.com/hairer/humanise-yang-mills/blob/main/blueprint/units/YM-000022/evidence/lean-inspection.txt>.
  It records elaborated types of the owned statements, meaning-determining
  definitions and input projections, and transitive axiom reports for
  <verbatim|b0_normalizes>, <verbatim|zeroUp_bound> and
  <verbatim|comparison>. All three report exactly <verbatim|propext>,
  <verbatim|Classical.choice> and <verbatim|Quot.sound>.

  An initial inspection printed full proof terms and passed; it was replaced
  by concise signatures for reviewability. The first expanded-interface
  attempt failed with four unknown-identifier errors because it used
  <verbatim|YM.Lattice.Schedule> instead of <verbatim|YM.Schedule>.
  Correcting the scratch inspection's names and rerunning gave the final
  successful output. No source statement or proof was changed to resolve
  those errors. Earlier raw printouts were replaced by the final log; the
  failure is recorded here.

  This is a fresh environment/type inspection and axiom query, not a fresh
  recompilation of the imported theorem or kernel replay of its proof. The
  existing artifact provenance and earlier replay evidence remain those in
  <verbatim|source/build.md>, <verbatim|source/audit.md> and
  <verbatim|source/evidence/axioms-3456e5e.md>. No clean build or new
  independent kernel validation was attempted in this task.

  <section|Literature and mathematical checks><label|literature-and-mathematical-checks>

  Before drafting, the shared background directory was inspected. Its
  existing SU(2) literature note does not supply this numerical extraction.
  The web search <verbatim|site.jirka.org ra real analysis sequence limits
  continuous functions square root> located the author's <em|Basic Analysis>
  text. The author-maintained HTML Ÿ2.2 was opened and the actual statements
  of Propositions 2.2.5(iv) and 2.2.6 were read. The proof checks nonnegative
  terms, strictly positive denominator limit, and nonzero denominator terms
  on a tail before applying them. The citation identifies the HTML version
  inspected on 11 November 2026; numbering is not asserted for an unchecked
  print edition. The remainder is an explicit triangle-inequality and epsilon
  argument in <verbatim|proof.md>.

  The parent checked the threshold's independence of N,p, the diagonal
  substitution, the additive constant, eventual positivity, the square-root
  identity, and the finite-prefix argument. The exposition does not assume a
  rate for the running error, a restriction on k, or an identification with a
  physical coupling.

  <section|Structural checks and limits><label|structural-checks-and-limits>

  <verbatim|python3 scripts/check_blueprint.py> passed with
  <verbatim|Blueprint structure OK: 1 units. Lean and mathematics were not
  verified.> The staged <verbatim|git diff --cached --check> and
  <verbatim|git diff --check> passed without output. Only this unit's files
  are included in the change.

  Independent mathematical and Lean-correspondence reviews remain
  unperformed. Both review records are null and the unit remains
  <verbatim|draft>. The imported running estimate, schedule properties and
  positivity interface are not proved by this unit. No manuscript integration
  or global verification claim is made.

  <ym-unit-nav||<hlink|YM-000022: Logarithmic asymptotics of the running
  inverse coefficient (draft)|../correspondence.tm><ym-nav-sep><ym-nav-here|evidence><ym-nav-sep><hlink|proof|../proof.tm>|>
</body>

<\initial>
  <\collection>
    <associate|html-title|Evidence for YM-000022 (original Markdown draft) \U
    Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|3>>
    <associate|evidence-for-ym-000022-original-markdown-draft|<tuple|?|1>>
    <associate|fresh-lean-inspection|<tuple|2|2>>
    <associate|literature-and-mathematical-checks|<tuple|3|2>>
    <associate|source-inspection-and-integrity|<tuple|1|1>>
    <associate|structural-checks-and-limits|<tuple|4|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Source
      inspection and integrity> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Fresh
      Lean inspection> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Literature
      and mathematical checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Structural
      checks and limits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>