<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|index.tm><ym-nav-sep><hlink|The
  theorem|blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|blueprint/index.tm><ym-nav-sep><hlink|Manuscript|manuscript/index.tm><ym-nav-sep><hlink|Glossary|blueprint/glossary.tm><ym-nav-sep><hlink|Notation|docs/notation.tm><ym-nav-sep><hlink|Source
  audit|source/audit.tm><ym-nav-sep><hlink|Literature|blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|CONTRIBUTING.tm>>

  <ym-title|Instructions for contributing
  agents><label|instructions-for-contributing-agents>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Start here>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Scope and
    coordination> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Mathematical
    integrity> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Deliver and
    review> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>
  </table-of-contents>

  <section|Start here><label|start-here>

  Read <verbatim|CONTRIBUTING.md>, <verbatim|docs/coordination.md>, and
  <verbatim|docs/proof-standard.md>. Read the task issue, its comments,
  linked PRs, and relevant <verbatim|Bots/> notes. Do not read the whole Lean
  tree into context. Begin with the task's declarations, their definitions
  and immediate dependencies, and expand only as needed. The editorial target
  is a research monograph with detailed proofs and appropriate literature
  references. The number of Lean declarations translated is not a goal.

  <section|Scope and coordination><label|scope-and-coordination>

  <\itemize-minus>
    <item>Work on one bounded task per agent session with an unexpired
    self-claim posted on its issue. Follow <verbatim|docs/coordination.md>:
    check for overlap, post <verbatim|CLAIM>, then recheck before working. No
    coordinator approval is required. A branch, label, or unposted intention
    is not a claim.

    <item>Maintainer-directed repository setup and explicit bounded
    maintenance requests do not require a queue claim. This exception does
    not reserve mathematical work.

    <item>Use issue comments for claims, progress, questions, and handoffs;
    PR comments for review. Use <verbatim|Bots/> only for concise knowledge
    that future sessions need.

    <item>Recheck the live issue before starting, on resuming, and before
    submitting. Stop substantial work at expiry unless you have posted a
    valid renewal after rechecking for overlap; renewal does not need manual
    approval.

    <item>Respect the task's declared outputs. Request a split or new task
    for discoveries outside scope. Shared files such as the outline and
    glossary have their own tasks.

    <item>Give each concurrent agent a separate worktree or clone and a
    distinct session identifier. Subagents stay within the parent's claim and
    have disjoint outputs; the parent owns their integration and reports
    their involvement.

    <item>If GitHub access is unavailable, prepare a claim comment or handoff
    for the contributor to post. Do not infer ownership from a stale local
    checkout.

    <item>Use the contributing human's authorised GitHub authentication or
    the designated project App. Never request or share the repository owner's
    token; keep credentials out of prompts, notes, and commits. See
    <verbatim|docs/access.md>.
  </itemize-minus>

  <section|Mathematical integrity><label|mathematical-integrity>

  <\itemize-minus>
    <item>Preserve <verbatim|Lean/> and its pinned toolchain and
    dependencies. Changes to upstream code belong in an explicitly assigned
    source-maintenance task.

    <item>State exact hypotheses, quantifiers, spaces, and conclusions.
    Inspect definitions and instances; never infer mathematical meaning from
    a declaration's name.

    <item>Cite fully qualified declarations, source revision, and paths. Line
    numbers are supplementary. Distinguish inspected evidence from
    conjectured interpretation.

    <item>Search the shared literature notes and original mathematical
    sources before developing a proof. Prefer a verified existing result to
    rederiving it. Cite the precise version and check its hypotheses,
    definitions, and conventions here.

    <item>Give detailed proofs for all substantive steps not supplied by
    applicable cited results. Explain how cited results apply, and prove any
    extra step or variant. A proof outline or a description of the new ideas
    alone is insufficient.

    <item>Omit Lean implementation scaffolding from the monograph. Group
    routine formal helpers by their mathematical purpose; do not assign one
    prose unit per helper. Inspect enough of the source to justify the
    grouping. Uncertain classifications remain open questions, not permission
    to omit mathematical content.

    <item>Keep source correspondence and audit details in the blueprint.
    Write the main manuscript in ordinary mathematical language with
    conventional references.

    <item>Record gaps and assumptions explicitly. Do not invent an argument
    to fill a gap.

    <item>Separate formal assumptions, theorem hypotheses, and external
    background results. Never suppress axiom findings or change statements to
    make checking succeed.

    <item>Reuse canonical proof units and notation. Request new ownership
    rather than duplicate an existing explanation.
  </itemize-minus>

  <section|Deliver and review><label|deliver-and-review>

  <\itemize-minus>
    <item>Write the authoritative mathematical text directly in
    <verbatim|manuscript/*.tex> or its subdirectories. Follow
    <verbatim|templates/proof-unit/> for the linked blueprint record,
    correspondence, and evidence; do not duplicate the proof in Markdown.
    Drafts may use precisely stated outstanding inputs; do not wait for the
    whole blueprint or all prerequisite proofs to be complete.

    <item>Record commands actually run and their results. Unrun checks remain
    unrun.

    <item>Run <verbatim|python3 scripts/check_blueprint.py> for blueprint
    changes. Run the test suite when changing that checker. Build changed
    LaTeX and check the rendered pages. Lean commands must match the pinned
    upstream project.

    <item>Treat all new prose as a draft. Independent Lean correspondence and
    mathematical reviews are needed for <verbatim|reviewed> status; never
    approve your own work.

    <item>Material edits invalidate review fingerprints. Do not refresh
    another reviewer's approval yourself; obtain renewed review.

    <item>Submit one focused PR and a short handoff, including remaining
    uncertainties. Do not merge, relicense, or publish results unless
    explicitly authorised.
  </itemize-minus>
</body>

<\initial>
  <\collection>
    <associate|html-title|Instructions for contributing agents \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|2>>
    <associate|deliver-and-review|<tuple|4|2>>
    <associate|instructions-for-contributing-agents|<tuple|?|1>>
    <associate|mathematical-integrity|<tuple|3|2>>
    <associate|scope-and-coordination|<tuple|2|1>>
    <associate|start-here|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Start
      here> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Scope
      and coordination> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Mathematical
      integrity> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Deliver
      and review> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>