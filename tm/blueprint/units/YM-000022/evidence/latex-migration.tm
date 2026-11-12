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
  inverse coefficient (draft)|../correspondence.tm><ym-nav-sep><hlink|evidence|index.tm><ym-nav-sep><hlink|proof|../proof.tm>|<hlink|YM-000026
  \<rightarrow\>|../../YM-000026/correspondence.tm>>

  <ym-title|LaTeX migration evidence><label|latex-migration-evidence>

  11 November 2026; maintainer-directed maintenance in <hlink|issue
  #24|https://github.com/hairer/humanise-yang-mills/issues/24>, session
  <verbatim|hairer-codex-workflow-20261111>. Agent assistance: Codex; no new
  subagent work.

  The mathematical text now has one authoritative home:
  <verbatim|manuscript/pilots/running-coupling.tex>, included by
  <verbatim|manuscript/main.tex>. The old <verbatim|proof.md> and pilot
  correspondence page are redirects. The former pilot's source/build record
  is archived in <verbatim|pilot-provenance.md>; those old validation counts
  are not results of this migration.

  The existing LaTeX pilot's gauge normalization, elementary positivity
  calculation, spacing argument and interpretation are retained. The uniform
  extraction is now an explicit proposition, followed by the detailed
  tail-positivity and limit-rule application from YM-000022. The running
  estimate remains an input. Its existence is not proved here. This
  consolidation is draft mathematical content and still requires independent
  review, including the inherited positivity argument.

  <verbatim|unit.json> now lists the section, preamble and bibliography as
  <verbatim|manuscript> inputs. The checker hashes those paths and contents
  plus <verbatim|correspondence.md> and the existing mathematical metadata.
  Both review entries remain null. No approval was refreshed or invented.
  Changes to any listed support file conservatively invalidate review;
  reviewers must check the explicit input list is complete.

  <section|Commands and results><label|commands-and-results>

  In the isolated checkout <verbatim|/private/tmp/ym-latex-self-claims-20261111>:

  <\itemize-minus>
    <item><verbatim|python3 -m unittest discover -s tests>: 22 tests passed.
    New regressions cover manuscript/support edits, changed input lists,
    renamed/missing/empty files, forbidden paths/formats and escaping
    symlinks. Existing review/ownership/graph tests remain in place.

    <item><verbatim|python3 scripts/check_blueprint.py>: passed, one unit;
    not a mathematical check.

    <item><verbatim|python3 scripts/check_blueprint.py --fingerprint
    YM-000022>: generated the current digest; no acceptance attached.

    <item><verbatim|git diff --check>: passed after removing one trailing
    blank line.

    <item>Changed Markdown relative links were checked with a Python
    <verbatim|re>/<verbatim|pathlib> scan; all resolve after creating this
    evidence record.

    <item><verbatim|git diff --name-only -- Lean>: no changes.
  </itemize-minus>

  From <verbatim|manuscript/>:

  <\shell-code>
    mkdir -p build

    latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=build
    main.tex

    pdftoppm -scale-to 1400 -png build/main.pdf build/page
  </shell-code>

  Build succeeded, producing two pages. The initial BibTeX warning about an
  empty year was resolved by recording <verbatim|n.d.> for the undated HTML
  edition; the inspected date remains explicit. The final <verbatim|.log> and
  <verbatim|.blg> have no warnings, undefined references, or
  overfull/underfull boxes. Both pages were visually inspected for
  readability and layout; the updated bibliography page was inspected again.
  Build products stay under the ignored <verbatim|manuscript/build/>
  directory.

  The local build used the available TeX distribution. The added Ubuntu CI
  build has not been run locally. No new Lean build, elaboration, axiom query
  or kernel replay was performed during this workflow migration; existing
  evidence is retained and distinguished from current structural/rendering
  checks. Independent mathematical and Lean-correspondence review remain
  outstanding.

  <ym-unit-nav||<hlink|YM-000022: Logarithmic asymptotics of the running
  inverse coefficient (draft)|../correspondence.tm><ym-nav-sep><hlink|evidence|index.tm><ym-nav-sep><hlink|proof|../proof.tm>|<hlink|YM-000026
  \<rightarrow\>|../../YM-000026/correspondence.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|LaTeX migration evidence \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|commands-and-results|<tuple|1|1>>
    <associate|latex-migration-evidence|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Commands
      and results> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>