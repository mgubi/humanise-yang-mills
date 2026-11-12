<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../index.tm><ym-nav-sep><hlink|The
  theorem|../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|audit.tm><ym-nav-sep><hlink|Literature|../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../CONTRIBUTING.tm>>

  <ym-title|Build record: OpenAI-YM-20261028><label|build-record-openai-ym-20261028>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Result>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Environment>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Commands and
    outcomes> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Retained logs>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Limitations>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>
  </table-of-contents>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Field>>|<cell|<strong|Value>>>|<row|<cell|Source>|<cell|<verbatim|https://github.com/yang-mills-group/OpenAI-YM-20261028>>>|<row|<cell|Revision>|<cell|<verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>>>|<row|<cell|Toolchain>|<cell|<verbatim|leanprover/lean4:v4.32.0>>>|<row|<cell|Audit
  date>|<cell|11 November 2026>>|<row|<cell|Status>|<cell|<strong|Pinned
  build commands passed from a verified prebuilt artifact; no clean source
  rebuild was performed on this host>>>>>>

  <section|Result><label|result>

  The upstream default-target command

  <\shell-code>
    cd Lean

    lake build WilsonReference WilsonConstruction
  </shell-code>

  exited successfully with <verbatim|Build completed successfully (18126
  jobs).> in 11.01 seconds. The stricter check

  <\shell-code>
    lake build --no-build WilsonReference WilsonConstruction
  </shell-code>

  also exited successfully, with <verbatim|All targets up-to-date (18126
  jobs).>, in 8.65 seconds. Thus the restored artifact contained every
  required job and the ordinary build did not hide a missing artifact by
  compiling it during the audit.

  This is not a clean build from source on the audit host. It verifies the
  build graph and artifacts restored from Scott Armstrong's <hlink|compiled
  Lean release|https://github.com/scottnarmstrong/yang-mills-informalization/releases/tag/lean-build-3456e5e>.
  The release is for the pinned source revision and was produced on Linux
  x86-64; the checks below were run after restoring it on Apple Silicon
  macOS. The combined archive had SHA-256 digest
  <verbatim|07c145c36a45948ac55044a98d5626c201fe7ad6214d627a0739694c8e464707>,
  matching its published checksum. It is retained only in the machine-local
  shared cache and has not been added to Git.

  The source distribution's own integrity check had previously passed:

  <\shell-code>
    cd Lean

    shasum -a 256 -c SOURCES.sha256
  </shell-code>

  All 9,507 listed files reported <verbatim|OK>. This checks the imported
  files against the distribution's manifest; it does not independently
  authenticate the manifest or establish a Lean proof.

  <section|Environment><label|environment>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Component>>|<cell|<strong|Audited
  value>>>|<row|<cell|Host>|<cell|<verbatim|Darwin 27.3.0>, <verbatim|arm64>,
  macOS 27.3 build <verbatim|26C5035r>>>|<row|<cell|Lean>|<cell|<verbatim|4.32.0>,
  commit <verbatim|8c9756b28d64dab099da31a4c09229a9e6a2ef35>,
  <verbatim|arm64-apple-darwin24.6.0>>>|<row|<cell|Lake>|<cell|<verbatim|5.0.0-src+8c9756b>>>|<row|<cell|<verbatim|Lean/lean-toolchain>
  SHA-256>|<cell|<verbatim|2773c517aa90b66ea8a2c52bddddf84393157797f8341be0df45294fff7fd32e>>>|<row|<cell|<verbatim|Lean/lake-manifest.json>
  SHA-256>|<cell|<verbatim|389c72d12e69c19b8a699df76405b2b1538f8f46ae77837fd2e972dda52724c3>>>>>>

  The commands used the pinned toolchain directory first on <verbatim|PATH>
  so that Mathlib's cache helper could find the matching <verbatim|leantar>
  executable:

  <\shell-code>
    env PATH=/Users/hairer/.elan/toolchains/leanprover--lean4---v4.32.0/bin:/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin
    COMMAND
  </shell-code>

  <section|Commands and outcomes><label|commands-and-outcomes>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|3|3|cell-halign|r>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Command,
  from <verbatim|Lean/> unless noted>>|<cell|<strong|Result>>|<cell|<strong|Wall
  time>>>|<row|<cell|<verbatim|lake exe cache get>>|<cell|Pass; timed recheck
  found 8,639 files already decompressed and no download required>|<cell|6.59
  s>>|<row|<cell|<verbatim|lake unpack /Users/hairer/.local/share/humanise-yang-mills/lean-build-3456e5e/ym-build-3456e5e.tgz>>|<cell|Pass;
  restored <verbatim|.lake/build>>|<cell|29.39 s observed by the command
  runner>>|<row|<cell|<verbatim|lake build --no-build WilsonReference
  WilsonConstruction>>|<cell|Pass; all 18,126 jobs up to date>|<cell|8.65
  s>>|<row|<cell|<verbatim|lake build WilsonReference
  WilsonConstruction>>|<cell|Pass; 18,126 jobs>|<cell|11.01
  s>>|<row|<cell|<verbatim|lake env lean -j1 -DmaxHeartbeats=0
  -DmaxRecDepth=4096 VerifyJoint.lean>>|<cell|Pass; type match, 17 endpoint
  axiom checks, and kernel replay>|<cell|828.66
  s>>|<row|<cell|Temporary-overlay run of
  <verbatim|verification/Usage.lean>>|<cell|Pass; 17 roots, 250,319 project
  declarations>|<cell|104.49 s>>|<row|<cell|<verbatim|lake env lean ...
  verification/Inventory.lean>, before building aggregate root>|<cell|Fail;
  <verbatim|YM.olean> was absent from the release artifact>|<cell|2.95
  s>>|<row|<cell|<verbatim|lake build YM>>|<cell|Pass; built the one missing
  aggregate root from existing modules>|<cell|38.21
  s>>|<row|<cell|<verbatim|lake env lean ... verification/Inventory.lean>,
  second run>|<cell|Pass; 249,713 <verbatim|YM> declarations, no direct
  placeholder or project axiom>|<cell|36.66 s>>>>>

  The first <verbatim|Inventory.lean> failure is retained because it
  describes the exact coverage of the downloaded artifact. It was not a
  source or proof failure. The aggregate <verbatim|YM> root is outside the
  two advertised default build targets, and its single missing object was
  produced without changing <verbatim|Lean/> sources.

  Detailed axiom evidence is in <hlink|<verbatim|evidence/axioms-3456e5e.md>|evidence/axioms-3456e5e.tm>,
  and inventory evidence is in <hlink|<verbatim|evidence/usage-3456e5e.md>|evidence/usage-3456e5e.tm>.

  <section|Retained logs><label|retained-logs>

  Raw logs are retained locally under the ignored directory
  <verbatim|Lean/.lake/audit-issue2/>; they are not committed or uploaded.
  Their SHA-256 digests are:

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Log>>|<cell|<strong|SHA-256>>>|<row|<cell|<verbatim|build.log>>|<cell|<verbatim|c6085f53e7cadd4eb11f8949bec10ee384424ac518e64f7f063765045c89b2a2>>>|<row|<cell|<verbatim|build-no-build.log>>|<cell|<verbatim|562414ed78e43790e7fee87cd015293a99222e907a57afa174e7c49682d7e94e>>>|<row|<cell|<verbatim|cache-get.log>>|<cell|<verbatim|e93e7ac5d9e5461738d848ea7ecf25031fef776b47e22727e5836ac8580cd7d6>>>|<row|<cell|<verbatim|verify-joint.log>>|<cell|<verbatim|f565c053c1ed5264923a7865d6e536c9108e0c749bd074c63124d6da4444166d>>>|<row|<cell|<verbatim|usage.log>>|<cell|<verbatim|953211dba5d17997e158eb4cd73357ea3fb0bbc9d0a6a0f6915e556d5d468657>>>|<row|<cell|<verbatim|inventory.log>
  (expected preliminary failure)>|<cell|<verbatim|df8484e67012a885409fc2b2a1ceee1a0d41fa5ee0cf730671639c76a17cf873>>>|<row|<cell|<verbatim|build-ym-root.log>>|<cell|<verbatim|65cb5f2f92baf6deb208fd73d3e721621b434401d13d3e87441d4d97bb1b9e23>>>|<row|<cell|<verbatim|inventory-success.log>>|<cell|<verbatim|03d413ca89eb91bd7bb023b404ff4117a47e7095b6be35ae10575087aa019ed8>>>>>>

  The linked release and its recorded checksum identify the retained build
  artifact. A reviewer can reproduce the compact evidence files from it
  without obtaining these local logs.

  <section|Limitations><label|limitations>

  <\itemize-minus>
    <item>The successful commands do not independently establish the intended
    physical interpretation or adequacy of any theorem statement.

    <item>This run trusts the pinned Lean executable, kernel implementation,
    and pinned external package artifacts. The project replay checks proof
    terms against that kernel; it is not a diverse implementation check.

    <item>The audit used a third-party prebuilt project artifact rather than
    deleting all objects and recompiling every source file on this host. The
    <verbatim|--no-build> pass establishes artifact completeness relative to
    Lake's recorded build traces.

    <item>Existing linter and axiom-information messages were replayed during
    the build. They did not cause failure. The deliberate reference
    placeholder in <verbatim|Challenge.lean> is accounted for in the axiom
    evidence.
  </itemize-minus>
</body>

<\initial>
  <\collection>
    <associate|html-title|Build record: OpenAI-YM-20261028 \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|3>>
    <associate|auto-5|<tuple|5|3>>
    <associate|build-record-openai-ym-20261028|<tuple|?|1>>
    <associate|commands-and-outcomes|<tuple|3|2>>
    <associate|environment|<tuple|2|2>>
    <associate|limitations|<tuple|5|3>>
    <associate|result|<tuple|1|1>>
    <associate|retained-logs|<tuple|4|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Result>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Environment>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Commands
      and outcomes> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Retained
      logs> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Limitations>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>