<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|index.tm><ym-nav-sep><hlink|The
  theorem|blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|blueprint/index.tm><ym-nav-sep><hlink|Manuscript|manuscript/index.tm><ym-nav-sep><hlink|Glossary|blueprint/glossary.tm><ym-nav-sep><hlink|Notation|docs/notation.tm><ym-nav-sep><hlink|Source
  audit|source/audit.tm><ym-nav-sep><hlink|Literature|blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|docs/proof-standard.tm><ym-nav-sep><ym-nav-here|Contributing>>

  <ym-title|Contributing><label|contributing>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Before
    starting> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Claim a task>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Work in
    isolation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Write a proof
    unit> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Submit and hand
    off> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Credit and
    reuse> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>
  </table-of-contents>

  The unit of contribution is a bounded proof, literature search, source
  audit, review, or tooling task. The final document should give detailed
  proofs at the level of a research monograph. Useful contributions include
  locating an applicable published theorem, checking its hypotheses, or
  identifying a gap in an interpretation.

  <section|Before starting><label|before-starting>

  For a public repository, use your own GitHub account and fork; ordinary
  contributors do not need collaborator access. Authenticate your agent under
  your account, and never ask for or use the project owner's token. See the
  <hlink|access guide|docs/access.tm> for login options, coordinator roles,
  and private repositories.

  Read <hlink|AGENTS.md|AGENTS.tm>, the <hlink|coordination
  rules|docs/coordination.tm>, and the <hlink|proof
  standard|docs/proof-standard.tm>. Check the task issue, existing notes, and
  open PRs before investing substantial compute. Read
  <hlink|source/README.md|source/index.tm> for the source version and build
  evidence.

  Use an agent session identifier such as <verbatim|alice-codex-01>. The
  contributor remains responsible for the submission. Multiple sessions under
  one GitHub account must have distinct identifiers and claims. Select a task
  that fits a single session; split large tasks at mathematical interfaces
  rather than arbitrary line counts.

  <section|Claim a task><label|claim-a-task>

  On a ready issue, check for overlapping work, post the self-claim described
  in <hlink|coordination.md|docs/coordination.tm>, and recheck the live
  discussion. You may then begin without a coordinator's approval.
  Contributors without write access claim by commenting too; assignments and
  labels are only summaries. For a new bounded task, publish its scope and
  prerequisites before claiming it.

  Use the <hlink|agent prompt|docs/agent-prompts.tm> to authorise your agent
  to post task-related GitHub comments and open a PR on your behalf. If it
  cannot access GitHub, post its prepared messages yourself.

  <section|Work in isolation><label|work-in-isolation>

  Fork the repository, clone your fork, and add the canonical repository as
  <verbatim|upstream>. In a local clone with that remote, for example:

  <\shell-code>
    git fetch upstream

    git worktree add -b codex/issue-123-session-01 ../ym-123-session-01
    upstream/main
  </shell-code>

  Replace <verbatim|123> and the session suffix with your actual task and
  session. The branch prefix is only a convention. Do not run multiple agents
  in one working directory or share a writable Lean build directory between
  their worktrees. Prefer the upstream project's supported dependency cache
  mechanism.

  <section|Write a proof unit><label|write-a-proof-unit>

  First check the shared <hlink|literature
  notes|blueprint/background/index.tm> and search for existing results that
  supply the required steps. Use a precise reference when it applies; prove
  the remaining steps in detail. A theorem formalised from scratch in the
  upstream code may still be standard mathematics. Its Lean implementation
  does not by itself justify a new exposition task.

  The canonical extraction issue supplies the stable unit ID: issue 123
  becomes <verbatim|YM-000123>. Later revision and review issues refer to
  that existing unit. Use <verbatim|templates/proof-unit/>: place the
  mathematical section in <verbatim|manuscript/>, and put
  <verbatim|unit.json> and <verbatim|correspondence.md> in
  <verbatim|blueprint/units/YM-000123/>. The metadata's <verbatim|manuscript>
  list names the section and all local mathematical support files (macros,
  references, included text). Replace every placeholder. Write the proof
  once, in LaTeX, and keep source/audit details in the correspondence record.
  Follow <hlink|the manuscript build instructions|manuscript/index.tm>.

  Start a section once its own interface is precise. Earlier inputs may still
  be drafts or outstanding obligations: state their exact content and status.
  A complete blueprint is not a prerequisite for writing; final acceptance
  still requires review and a check of the whole argument's dependencies.

  The metadata names the declarations this unit owns, its dependencies,
  source revision, and review state. Other units cite it instead of
  explaining those declarations again. A source path identifies the location;
  the qualified name identifies the declaration. Consult
  <hlink|blueprint/README.md|blueprint/index.tm>.

  Post a useful checkpoint on the issue at least every four hours of active
  work and before stopping. Include exact findings, blockers, and a branch or
  draft PR. Post a renewal with a new UTC expiry after rechecking for overlap
  if needed. A progress comment alone does not renew a claim.

  <section|Submit and hand off><label|submit-and-hand-off>

  Run the structural checker, build changed LaTeX and inspect its rendering,
  and run relevant, documented Lean checks. Push your branch and open a
  focused PR using the supplied template. Link the issue with <verbatim|Refs
  #123>; do not automatically close the task when an unreviewed draft merges.

  On the issue, report the PR, what is established, what remains uncertain,
  and what the next contributor should do. Put longer reusable findings in a
  uniquely named <verbatim|Bots/notes/> file and link it. Small incomplete
  drafts can be merged as drafts when they preserve useful work; they do not
  count as finished proof units.

  Review the mathematics separately from its correspondence to Lean.
  Reviewers record the precise content fingerprint and supporting evidence.
  The coordinator closes a task only when its stated acceptance criteria are
  met.

  <section|Credit and reuse><label|credit-and-reuse>

  List human contributors and agent assistance in the PR and proof unit. Cite
  external mathematical sources precisely. Preserve upstream notices. The
  maintainer must select the project's code and exposition licences before
  soliciting public contributions; this scaffold does not make that choice on
  contributors' behalf. When using source clusters, declaration assignments,
  selected-statement summaries, or glossary material from Scott Armstrong's
  <hlink|Yang-Mills informalization project|https://github.com/scottnarmstrong/yang-mills-informalization>,
  credit that project in the task, proof unit, or resulting manuscript note
  as appropriate.
</body>

<\initial>
  <\collection>
    <associate|html-title|Contributing \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|2>>
    <associate|auto-5|<tuple|5|2>>
    <associate|auto-6|<tuple|6|3>>
    <associate|before-starting|<tuple|1|1>>
    <associate|claim-a-task|<tuple|2|1>>
    <associate|contributing|<tuple|?|1>>
    <associate|credit-and-reuse|<tuple|6|3>>
    <associate|submit-and-hand-off|<tuple|5|2>>
    <associate|work-in-isolation|<tuple|3|2>>
    <associate|write-a-proof-unit|<tuple|4|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Before
      starting> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Claim
      a task> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Work
      in isolation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Write
      a proof unit> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Submit
      and hand off> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Credit
      and reuse> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>