<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../index.tm><ym-nav-sep><hlink|The
  theorem|../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|notation.tm><ym-nav-sep><hlink|Source
  audit|../source/audit.tm><ym-nav-sep><hlink|Literature|../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|proof-standard.tm><ym-nav-sep><hlink|Contributing|../CONTRIBUTING.tm>>

  <ym-title|Access for contributors and agents><label|access-for-contributors-and-agents>

  Use individual GitHub accounts. A repository role grants permission to an
  account; a personal access token authenticates that account within its
  allowed permissions. Giving somebody the owner's token lets them
  authenticate as the owner. Do not distribute a shared owner token to
  contributors. See GitHub's <hlink|credential
  guidance|https://docs.github.com/en/rest/authentication/keeping-your-api-credentials-secure>.

  <section|Public contribution model><label|public-contribution-model>

  For a public repository, ordinary contributors use their own accounts to
  discuss tasks, fork the repository, and submit pull requests. They do not
  need an invitation or write access to the canonical repository. Their
  agents use their authentication and follow the same workflow. See GitHub's
  <hlink|contribution guide|https://docs.github.com/en/get-started/exploring-projects-on-github/contributing-to-open-source>.

  On a personally owned repository, add only trusted coordinators and
  integrators as collaborators: this grants write access. Personal
  repositories do not offer a separate issue-triage role. See <hlink|personal
  repository permissions|https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/repository-access-and-collaboration/permission-levels-for-a-personal-account-repository>.

  For a growing project, consider organisation ownership. Suggested roles:

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Participant>>|<cell|<strong|Role>>>|<row|<cell|Public
  contributor or mathematical reviewer>|<cell|No special repository
  access>>|<row|<cell|Task coordinator>|<cell|Triage, for assignments and
  existing labels>>|<row|<cell|Trusted integrator>|<cell|Write>>|<row|<cell|Repository
  manager>|<cell|Maintain, if needed>>|<row|<cell|Small group responsible for
  access and settings>|<cell|Admin>>>>>

  Public reviewers can provide mathematical reports without write access.
  GitHub's required-approval gate uses reviewers with write access; an
  authorised integrator can check those reports and provide the merge
  approval. See <hlink|organisation roles|https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/managing-repository-roles/repository-roles-for-an-organization>.

  For a private project, readers also need access. Organisation ownership
  permits read-only invitations; private personal repositories give
  collaborators write access.

  GitHub Project permissions are separate: dashboard coordinators need
  Project Write in addition to the relevant permissions on task issues. See
  the <hlink|Projects and Agents guide|github-features.tm>.

  <section|Authenticate an agent><label|authenticate-an-agent>

  Contributors sign in under their own accounts through their tool's GitHub
  connection or GitHub CLI (<verbatim|gh auth login>). Give an agent access
  only to the authentication needed for its assigned work; a normal CLI login
  may cover other repositories too. Keep credentials in the tool's
  secret/credential store, outside prompts and Git. See the <hlink|CLI login
  documentation|https://cli.github.com/manual/gh_auth_login>.

  Where supported, use an expiring fine-grained token limited to the relevant
  repositories and operations. GitHub currently lists limitations for
  fine-grained tokens used by outside collaborators and public contributors;
  a token for someone's own fork may not support upstream issue comments or
  PR creation. Use a supported login/App flow rather than asking for the
  owner's token. See <hlink|token capabilities and
  limitations|https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens>.

  A shared project bot, if later needed, should use a GitHub App installed
  only on this repository with the permissions its job needs. A claim
  coordinator does not need content-writing or administration rights. Keep
  the bot's credentials with its operator rather than distributing them to
  participants. See <hlink|GitHub Apps|https://docs.github.com/en/apps/creating-github-apps/about-creating-github-apps/about-creating-github-apps>.

  <section|Protect integration><label|protect-integration>

  Require reviewed PRs and passing checks on <verbatim|main>, block force
  pushes/deletion, and apply the protections to administrators and automation
  as well. Repository instructions alone do not enforce those restrictions.
  See <hlink|branch protection|https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches>.

  An owner token can remain private for the owner's own work. If it has
  already been distributed or exposed, revoke it and replace any legitimate
  uses with appropriately scoped credentials. This guide does not change
  GitHub permissions or revoke tokens.
</body>

<\initial>
  <\collection>
    <associate|html-title|Access for contributors and agents \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|access-for-contributors-and-agents|<tuple|?|1>>
    <associate|authenticate-an-agent|<tuple|2|1>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|protect-integration|<tuple|3|2>>
    <associate|public-contribution-model|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Public
      contribution model> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Authenticate
      an agent> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Protect
      integration> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>