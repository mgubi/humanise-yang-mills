<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<ym-nav-here|Home><ym-nav-sep><hlink|The
  theorem|blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|blueprint/index.tm><ym-nav-sep><hlink|Manuscript|manuscript/index.tm><ym-nav-sep><hlink|Glossary|blueprint/glossary.tm><ym-nav-sep><hlink|Notation|docs/notation.tm><ym-nav-sep><hlink|Source
  audit|source/audit.tm><ym-nav-sep><hlink|Literature|blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|CONTRIBUTING.tm>>

  <ym-title|Humanise Yang-Mills><label|humanise-yang-mills>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Contribute an
    agent> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|How the work
    fits together> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Repository map>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Prior
    dependency mapping> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Before opening
    the queue> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Licence>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>
  </table-of-contents>

  This project coordinates a crowd-sourced effort to turn the announced Lean
  formalisation of four-dimensional Yang\UMills theory into a human-readable
  proof. The intended result is a research monograph giving detailed proofs
  of the argument, with statements and reasoning traceable to a fixed version
  of the formalisation. Existing mathematical results should be found and
  cited wherever applicable. Authors explain their application and prove any
  additional steps or variants; standard machinery implemented in Lean need
  not be reproved in the monograph.

  <strong|Current stage: source imported; preliminary dependency mapping
  under way.> The source is pinned to revision
  <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>. The 17 audited release
  roots and a first-pass mathematical decomposition are recorded in the
  <hlink|source audit|source/audit.tm>, <hlink|proof
  outline|blueprint/outline.tm>, and <hlink|provisional unit
  plan|blueprint/unit-plan.tm>. A full build, axiom audit, and line-by-line
  mathematical audit are still outstanding.

  <section|Contribute an agent><label|contribute-an-agent>

  <\enumerate>
    <item>Read <hlink|CONTRIBUTING.md|CONTRIBUTING.tm> and
    <hlink|AGENTS.md|AGENTS.tm>.

    <item>Look at the <hlink|issues|https://github.com/hairer/humanise-yang-mills/issues>
    and <hlink|open pull requests|https://github.com/hairer/humanise-yang-mills/pulls>.
    Choose one small, ready task and check for overlapping work.

    <item>Post a scoped self-claim with a UTC expiry, recheck for conflicts,
    and begin. No manual approval is required.

    <item>Work in your own fork or worktree. Submit one focused pull request
    with evidence.
  </enumerate>

  Use the <hlink|copy-and-paste agent prompts|docs/agent-prompts.tm>. The
  same workflow works with Fable, Codex, and other tools: explicitly give the
  agent <verbatim|AGENTS.md> if its tool does not load that file
  automatically.

  <section|How the work fits together><label|how-the-work-fits-together>

  Start at the final theorem and work backwards to a graph of mathematical
  results. Identify results that can be supplied by the literature, and agree
  on the statements and interfaces requiring exposition. Write detailed LaTeX
  proofs as soon as each local interface is precise; do not wait for the
  whole blueprint. Track outstanding prerequisite proofs explicitly.
  Prioritise shared definitions and results needed by many other parts. A
  proof unit can span several files; a large file can contain several units.
  Formal helper declarations do not each become a writing task.

  <\verbatim-code>
    flowchart LR

    \ \ \ \ A[Pin and audit Lean source] --\<gtr\> B[Map theorem
    dependencies]

    \ \ \ \ B --\<gtr\> C[Find literature results and agree on proof units]

    \ \ \ \ C --\<gtr\> D[LaTeX sections and linked blueprint records]

    \ \ \ \ D --\<gtr\> B

    \ \ \ \ D --\<gtr\> E[Lean correspondence review]

    \ \ \ \ D --\<gtr\> F[Mathematical review]

    \ \ \ \ E --\<gtr\> G[Integrate the exposition]

    \ \ \ \ F --\<gtr\> G
  </verbatim-code>

  GitHub <strong|issues> are the live task queue and discussion space.
  <strong|Pull requests> hold proposed changes and reviews. The repository
  holds the resulting knowledge; <verbatim|Bots/> preserves concise handoffs
  and discoveries, rather than a running chat log. See the
  <hlink|coordination rules|docs/coordination.tm>.

  <section|Repository map><label|repository-map>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Path>>|<cell|<strong|Purpose>>>|<row|<cell|<verbatim|Lean/>>|<cell|The
  upstream formalisation, preserved at a fixed
  revision>>|<row|<cell|<verbatim|source/>>|<cell|Source provenance, build
  instructions, and audit evidence>>|<row|<cell|<verbatim|blueprint/>>|<cell|Interfaces,
  literature notes, source correspondence, and review
  records>>|<row|<cell|<verbatim|manuscript/>>|<cell|Authoritative LaTeX
  exposition, including drafts and chapter
  assembly>>|<row|<cell|<verbatim|Bots/>>|<cell|Durable discoveries and
  handoffs for future sessions>>|<row|<cell|<verbatim|templates/>>|<cell|Proof
  unit and review templates>>|<row|<cell|<verbatim|docs/>>|<cell|Contributor,
  coordinator, and mathematical review guidance>>|<row|<cell|<verbatim|scripts/>>|<cell|Small
  structural checks, with no third-party Python dependencies>>>>>

  The Lean source, proof map, and English exposition have separate roles.
  Passing Lean checks does not establish that an English argument accurately
  describes the formal theorem; that correspondence requires review. See
  Lean's <hlink|proof validation guidance|https://lean-lang.org/doc/reference/latest/ValidatingProofs/>.

  <section|Prior dependency mapping><label|prior-dependency-mapping>

  The initial source clustering and much of the navigation data used by this
  repository come from Scott Armstrong's <hlink|Yang-Mills informalization
  project|https://github.com/scottnarmstrong/yang-mills-informalization>.
  That project supplies the same-revision theorem restatement, 32-unit source
  map, declaration ownership table, selected statements, glossary, and
  work-item catalog. This repository's first-pass monograph outline adapts
  that work into proposed mathematical proof units; it does not claim the
  underlying mapping as original. See the <hlink|pinned attribution and
  methodological limits|blueprint/outline.tm#evidence-used-for-this-map>.

  <section|Before opening the queue><label|before-opening-the-queue>

  Follow the <hlink|maintainer launch checklist|docs/maintainers.tm>,
  including selecting licences and importing the source. The first tasks are
  source verification, statement auditing, dependency extraction, and one
  pilot explanation. Scale up after the pilot establishes a useful format and
  realistic task size.

  Local structural checks require Python 3.9 or newer:

  <\shell-code>
    python3 scripts/check_blueprint.py

    python3 -m unittest discover -s tests
  </shell-code>

  These checks validate metadata and review freshness. They do not compile
  Lean, verify English mathematics, or reserve tasks. No claim bot is
  installed; a contributors self-claim in issue comments and recheck for
  conflicts.

  <section|Licence><label|licence>

  Except where another notice applies, original material in this repository
  is licensed under the <hlink|Creative Commons Attribution 4.0 International
  licence|https://github.com/hairer/humanise-yang-mills/blob/main/LICENSE>.
  The imported formalisation under <verbatim|Lean/> retains its separate
  <hlink|upstream licence|https://github.com/hairer/humanise-yang-mills/blob/main/Lean/LICENSE>
  and other notices; the root licence does not relicense that third-party
  material.
</body>

<\initial>
  <\collection>
    <associate|html-title|Humanise Yang-Mills \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|2>>
    <associate|auto-5|<tuple|5|3>>
    <associate|auto-6|<tuple|6|3>>
    <associate|before-opening-the-queue|<tuple|5|3>>
    <associate|contribute-an-agent|<tuple|1|1>>
    <associate|how-the-work-fits-together|<tuple|2|2>>
    <associate|humanise-yang-mills|<tuple|?|1>>
    <associate|licence|<tuple|6|3>>
    <associate|prior-dependency-mapping|<tuple|4|2>>
    <associate|repository-map|<tuple|3|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Contribute
      an agent> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|How
      the work fits together> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Repository
      map> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Prior
      dependency mapping> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Before
      opening the queue> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Licence>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>