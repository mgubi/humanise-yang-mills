<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../index.tm><ym-nav-sep><hlink|The
  theorem|../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|notation.tm><ym-nav-sep><hlink|Source
  audit|../source/audit.tm><ym-nav-sep><hlink|Literature|../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|proof-standard.tm><ym-nav-sep><hlink|Contributing|../CONTRIBUTING.tm>>

  <ym-title|Using GitHub Projects and Agents><label|using-github-projects-and-agents>

  Use one Project as a shared task dashboard. Keep GitHub-hosted agent
  sessions an optional way to execute tasks, alongside contributors' local
  tools. Issues remain the authoritative task records and claim discussion;
  PRs remain the review channel.

  <section|Projects><label|projects>

  A GitHub Project presents linked issues and PRs as tables, boards, or
  roadmaps, with custom fields and saved views. It can belong to a user or
  organisation and be linked to this repository. See <hlink|About
  Projects|https://docs.github.com/en/issues/planning-and-tracking-with-projects/learning-about-projects/about-projects>.

  Start with a public project called <strong|Humanise Yang-Mills>, if the
  repository is public, and use real task issues as its items. Convert any
  draft project card to an issue before claiming it. Display title,
  assignees, and labels; optionally add an Area field for mathematical
  subjects. Keep session IDs, exact claim expiries, scope, and evidence in
  the issue rather than duplicating them in custom fields.

  Suggested saved table views:

  <block|<tformat|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|View>>|<cell|<strong|Filter>>>|<row|<cell|Ready>|<cell|<verbatim|is:issue
  is:open label:"status:ready">>>|<row|<cell|Active>|<cell|<verbatim|is:issue
  is:open label:"status:claimed">>>|<row|<cell|Needs
  review>|<cell|<verbatim|is:issue is:open
  label:"status:in-review">>>|<row|<cell|Blocked>|<cell|<verbatim|is:issue
  is:open label:"status:blocked">>>|<row|<cell|Literature>|<cell|<verbatim|is:issue
  label:"kind:literature">>>|<row|<cell|Completed>|<cell|<verbatim|is:issue
  is:closed label:"status:done">>>>>>

  These views reuse the issue labels already defined in the coordination
  protocol. Project Status is a separate field, not an automatic copy of
  those labels. Hide it initially rather than maintaining a second
  independent task state. A later board can use Status once a reliable
  update/synchronisation policy is agreed. See <hlink|project
  filters|https://docs.github.com/en/issues/planning-and-tracking-with-projects/customizing-views-in-your-project/filtering-projects>.

  Configure the built-in auto-add workflow for this repository with
  <verbatim|is:issue>. Add existing issues manually: enabling auto-add does
  not backfill them. This requires no custom claim bot. See
  <hlink|auto-add|https://docs.github.com/en/issues/planning-and-tracking-with-projects/automating-your-project/adding-items-automatically>.

  Review the default workflows. GitHub can mark a project item Done when an
  issue closes or a PR merges. For this project, a merged draft is not
  completion of its mathematical task. Keep task issues open until their
  acceptance criteria are met; do not add an automation that treats draft
  merging or a card movement as approval. See <hlink|built-in
  workflows|https://docs.github.com/en/issues/planning-and-tracking-with-projects/automating-your-project/using-the-built-in-automations>.

  Project access is separate from repository access. Give coordinators
  Project Write and retain the appropriate repository permissions for
  changing issue assignments and labels. Public contributors can read the
  dashboard without editing it. See <hlink|project
  access|https://docs.github.com/en/issues/planning-and-tracking-with-projects/managing-your-project/managing-access-to-your-projects>.

  <section|Agents><label|agents>

  The Agents interface launches and tracks supported coding-agent sessions.
  An enabled agent can start from a prompt or issue assignment and produce a
  PR or other artifact. Current partner integrations include Claude and
  Codex; availability depends on enabled policies and the subscription.
  Hosted partner sessions consume GitHub AI credits and Actions minutes. See
  <hlink|coding agents|https://docs.github.com/en/copilot/concepts/agent-capabilities/about-agents/about-third-party-coding-agents>.

  Copilot sessions expose logs and controls for monitoring and stopping work.
  Some integrated local sessions can also be shared; this is tool-dependent.
  Keep the issue/PR workflow usable for every contributor, whether or not
  their tool's session appears in Agents. See <hlink|session
  management|https://docs.github.com/en/copilot/how-tos/copilot-on-github/use-copilot-agents/manage-and-track-agents>.

  Use hosted agents initially for bounded tooling, indexing, citation
  checking, or one pilot proof task. Evaluate the available model, source
  access, literature access, and Lean environment on that pilot before
  distributing mathematical work widely. The fact that a session completed
  does not establish that its proof is acceptable.

  To launch a hosted task under the existing claim protocol:

  <\enumerate>
    <item>Select an unclaimed ready issue and identify the human responsible
    for the run.

    <item>Post a self-claim with a unique session identifier, scope and UTC
    expiry; recheck for conflicting claims before assigning or launching the
    agent.

    <item>Supply the issue URL, claim URL, identifier, budget, and repository
    instructions in the launch prompt. Record the resulting session URL on
    the issue.

    <item>The responsible human monitors the session and ensures it stops or
    posts a valid renewal before expiry. The claim time is not a
    GitHub-enforced session timeout.

    <item>Link the resulting PR or research artifact to the issue and apply
    the usual independent review requirements.
  </enumerate>

  Do not dispatch the same writing task to several agents by default.
  Intentional independent reviews or comparisons must have explicit scope and
  separate outputs. Do not automatically launch an agent whenever a task
  becomes ready: that would compete with volunteers claiming tasks through
  the same queue.

  This guide describes the intended setup. It does not create a live Project,
  enable agents, start sessions, or change billing settings.
</body>

<\initial>
  <\collection>
    <associate|html-title|Using GitHub Projects and Agents \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|agents|<tuple|2|1>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|projects|<tuple|1|1>>
    <associate|using-github-projects-and-agents|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Projects>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Agents>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>