<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../index.tm><ym-nav-sep><hlink|The
  theorem|../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|notation.tm><ym-nav-sep><hlink|Source
  audit|../source/audit.tm><ym-nav-sep><hlink|Literature|../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|proof-standard.tm><ym-nav-sep><hlink|Contributing|../CONTRIBUTING.tm>>

  <ym-title|Launching and maintaining the
  project><label|launching-and-maintaining-the-project>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Prepare GitHub>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|First tasks
    after release> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Build the index
    once> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Integrate and
    maintain> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>
  </table-of-contents>

  <section|Prepare GitHub><label|prepare-github>

  <\itemize-minus>
    <item>Follow the <hlink|access guide|access.tm>: individual accounts,
    forks for ordinary public contributors, and elevated roles only for
    trusted coordinators/integrators. Keep owner credentials private.
    Consider organisation ownership when a separate Triage role would help
    distribute coordination without granting content write access.

    <item>Choose licences for original exposition and tooling before inviting
    contributions. Preserve the upstream formalisation's licence and notices
    separately.

    <item>Push this scaffold to the default branch. Enable Issues and
    Actions. The included workflow checks repository structure; it does not
    build or certify the Lean proof.

    <item>Protect <verbatim|main>: require PR review and the
    <verbatim|Blueprint structure> check, require branches to be up to date
    before merging, and dismiss stale approvals. This matters when two
    individually valid PRs claim the same declaration.

    <item>Create the labels below. Name coordinators in task issues and
    announce changes of coordinator explicitly. Contributors self-claim by
    commenting without manual approval; coordinators need collaborator access
    on a personal repository, or Triage or higher on an organisation
    repository. See the <hlink|access guide|access.tm>.

    <item>Keep a small ready queue and invite a pilot group. Expand after
    reviewing one complete unit and adjusting the task size and proof
    standard.

    <item>Add a Project with saved views of the issue queue, following
    <hlink|Projects and Agents|github-features.tm>. Keep hosted agent use
    optional and test it on a bounded pilot before dispatching larger
    mathematical tasks.
  </itemize-minus>

  Suggested labels:

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Group>>|<cell|<strong|Labels>>>|<row|<cell|Status>|<cell|<verbatim|status:proposed>,
  <verbatim|status:ready>, <verbatim|status:claimed>,
  <verbatim|status:blocked>, <verbatim|status:in-review>,
  <verbatim|status:done>>>|<row|<cell|Kind>|<cell|<verbatim|kind:audit>,
  <verbatim|kind:map>, <verbatim|kind:literature>, <verbatim|kind:explain>,
  <verbatim|kind:review-lean>, <verbatim|kind:review-math>,
  <verbatim|kind:integrate>, <verbatim|kind:tooling>>>|<row|<cell|Priority>|<cell|<verbatim|priority:critical>,
  <verbatim|priority:normal>>>>>>

  Issue forms and the PR template are included. The labels, branch rules,
  live issues, and GitHub settings must be configured separately; creating
  files locally does not activate those settings.

  <section|First tasks after release><label|first-tasks-after-release>

  Create these as separate issues, with concrete outputs and named
  coordinators. Do not invent theorem names or mathematical divisions before
  inspecting the source.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Task>>|<cell|<strong|Deliverable>>|<cell|<strong|Prerequisites>>>|<row|<cell|Import
  and reproduce>|<cell|Fixed upstream snapshot, provenance, build recipe and
  logs in <verbatim|source/>>|<cell|Release and redistribution
  terms>>|<row|<cell|Audit target statements>|<cell|Exact final declarations,
  definitions, hypotheses, scope and axiom report>|<cell|Imported source;
  build for full audit>>|<row|<cell|Extract dependency
  data>|<cell|Reproducible declaration inventory and target dependency
  closure>|<cell|Pinned environment and identified
  targets>>|<row|<cell|Identify reusable literature results>|<cell|Checked
  references, matched hypotheses, and shared background
  notes>|<cell|Identified mathematical interfaces>>|<row|<cell|Design the
  proof map>|<cell|Conceptual units, literature interfaces, prerequisites,
  notation, and first ready issues>|<cell|Statement audit; dependency data;
  initial literature search>>|<row|<cell|Develop a pilot proof
  unit>|<cell|Detailed proof using applicable references, with independent
  Lean/mathematical reviews>|<cell|Stable interface and a
  claim>>|<row|<cell|Assemble an initial chapter>|<cell|LaTeX exposition with
  explicit dependency status>|<cell|Precise local interfaces; inputs may
  remain draft>>>>>

  Static statement inspection can start while a central build runs. Avoid
  distributing hundreds of explanation tasks before the target statement and
  proof interfaces have been checked. Develop mapping and LaTeX writing
  together: reuse the shared dependency index and refine it as sections are
  written, without waiting for a complete blueprint.

  <section|Build the index once><label|build-the-index-once>

  Use the released project's pinned Lean version to inspect its compiled
  environment. Extract fully qualified declarations, types, source locations
  where available, and references from both declaration types and values.
  Retain provenance and record missing/opaque information. A module import
  graph or text search is a navigation aid, not an exact declaration
  dependency graph; automation can insert dependencies not visible in tactic
  text.

  Start with the final declarations' transitive closure. Distinguish
  mathematical results from generated helpers, instances, and routine library
  machinery. Keep the raw graph reproducible, then curate a much smaller
  conceptual graph in <verbatim|blueprint/>. Classify groups into results to
  prove, existing results to cite and apply, formal scaffolding to suppress,
  and unresolved cases. Include project-local helper code in this assessment:
  standard mathematics may have been formalised from scratch. Search the
  literature before deciding to reconstruct a proof. Once an applicable
  literature result is matched to its formal interface, its internal
  implementation need not generate further exposition tasks. Retain the full
  graph for source audit. Use stable names, not line ranges, as identities.
  Store large generated indexes and build logs as revision-labelled artifacts
  with checksums; keep their provenance, generation commands, and locations
  in Git.

  The extractor is intentionally a post-release task: the correct
  implementation depends on the actual toolchain, project layout, and
  available declaration metadata.

  <section|Integrate and maintain><label|integrate-and-maintain>

  Maintain an outline and glossary through dedicated tasks. Authors link to
  shared definitions instead of redefining them. State the intended reader's
  prerequisites in the outline. Integrators check that every substantive step
  has a detailed proof or an applicable literature reference, hypotheses
  match at interfaces, and all remaining gaps are visible. Routine formal
  helper coverage is not a completion metric. Local reviews are not a
  substitute for this global check.

  Before changing an accepted dependency statement, identify its reverse
  dependencies and open re-review tasks for affected uses. This includes
  changing the statement or applicability of a shared literature result. The
  local fingerprint checker does not automatically determine whether a
  changed dependency invalidates a downstream proof.

  Keep upstream frozen during an explanation wave. Import updates in a
  dedicated PR, compare declarations and dependencies, and explicitly migrate
  or invalidate affected explanations and reviews. Do not silently replace
  the source beneath contributors. Record mathematical/editorial decisions in
  Git and link the issue that established them.

  Monitor reviewed units, unresolved gaps, high-impact prerequisites, and
  review backlog. If review is the bottleneck, recruit reviewers before
  adding more writers.
</body>

<\initial>
  <\collection>
    <associate|html-title|Launching and maintaining the project \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|3>>
    <associate|build-the-index-once|<tuple|3|2>>
    <associate|first-tasks-after-release|<tuple|2|2>>
    <associate|integrate-and-maintain|<tuple|4|3>>
    <associate|launching-and-maintaining-the-project|<tuple|?|1>>
    <associate|prepare-github|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Prepare
      GitHub> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|First
      tasks after release> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Build
      the index once> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Integrate
      and maintain> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>