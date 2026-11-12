<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../index.tm><ym-nav-sep><hlink|The
  theorem|../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|audit.tm><ym-nav-sep><hlink|Literature|../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../CONTRIBUTING.tm>>

  <ym-title|Source provenance and verification><label|source-provenance-and-verification>

  <verbatim|upstream.json> is the source manifest. It records the imported
  release at the immutable revision <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>.
  Import integrity has been checked against the upstream checksum manifest,
  but no successful Lean build or independent proof validation is implied.
  See <hlink|build.md|build.tm> and <hlink|audit.md|audit.tm>.

  The source was imported through the review workflow described in
  <hlink|sync.md|sync.tm>. That workflow can propose later upstream
  revisions, but each revision still requires the build, statement,
  dependency, and axiom audits below.

  <section|Import procedure><label|import-procedure>

  <\enumerate>
    <item>Put the complete upstream project under <verbatim|Lean/>,
    preserving its directory layout, toolchain file, dependency lock file,
    and licence notices. Do not copy its nested <verbatim|.git> directory.
    Retain the upstream URL and exact commit, or an archive URL and SHA-256
    digest if no commit is available.

    <item>Set the manifest to <verbatim|imported>. Record <verbatim|url>,
    immutable <verbatim|revision>, exact <verbatim|lean_toolchain>,
    project-relative <verbatim|project_root>, and <verbatim|license>
    identifier or notice path. <verbatim|revision> is a full commit hash or
    <verbatim|sha256:\<less\>archive digest\<gtr\>>.

    <item>Reproduce upstream's build instructions using the pinned
    dependencies. Write <verbatim|source/build.md> with working directory,
    platform, versions, commands, outcomes, resource use, and log/artifact
    links. Keep failed checks and remaining blockers visible. An imported
    source is not yet a verified source.

    <item>Identify the actual final declarations; record their fully
    qualified names in <verbatim|targets>. Write <verbatim|source/audit.md>
    with their exact statements, relevant definitions, transitive axiom
    reports, and the mathematical scope established. Empty <verbatim|targets>
    means target identification is still pending.

    <item>Record the upstream-supported verification method and any
    additional independent checking used. Use commands appropriate to this
    pinned Lean version, rather than assuming current tools work on an older
    release.
  </enumerate>

  Run build scripts from a reviewed source snapshot in a suitable isolated
  environment without contributor credentials. Keep the expensive full source
  build separate from cheap prose checks; publish reusable results keyed by
  source and toolchain. Fork PR checks should not receive write credentials
  or execute privileged workflows.

  Audit snippets may use <verbatim|#check>, <verbatim|#print>, and
  <verbatim|#print axioms> after importing the relevant modules. Record the
  actual command and output. Keep inspection code in a separate audit
  workspace or documented overlay; preserve upstream <verbatim|Lean/>.

  <section|Source changes><label|source-changes>

  The manifest pins the active explanation wave. Every unit refers to that
  exact revision. Changing it requires a coordinated migration and renewed
  review where needed. Archive older evidence; do not relabel old build logs
  as a new verification.
</body>

<\initial>
  <\collection>
    <associate|html-title|Source provenance and verification \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|import-procedure|<tuple|1|1>>
    <associate|source-changes|<tuple|2|1>>
    <associate|source-provenance-and-verification|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Import
      procedure> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Source
      changes> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>