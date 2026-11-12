<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../audit.tm><ym-nav-sep><hlink|Literature|../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../CONTRIBUTING.tm>>

  <ym-title|Transitive axiom and kernel-replay evidence for
  <verbatim|3456e5e>><label|transitive-axiom-and-kernel-replay-evidence-for-3456e5e>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Scope and
    command> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Per-root
    results> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Type comparison
    and replay> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Supplementary
    archive-wide scan> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Deliberate
    reference placeholder> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Limits of the
    evidence> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>
  </table-of-contents>

  <section|Scope and command><label|scope-and-command>

  This evidence covers the 17 roots in <verbatim|source/upstream.json> and
  <verbatim|Lean/verification/joint-headlines.txt>. Those two ordered lists
  were byte-equivalent after rendering the JSON targets one per line; each
  had SHA-256 digest <verbatim|4a5d4eba5d143858d12466aa818c4bfe202e548fc208b87264932a857f492745>.

  The pinned verifier was run from <verbatim|Lean/> on 11 November 2026:

  <\shell-code>
    env PATH=/Users/hairer/.elan/toolchains/leanprover--lean4---v4.32.0/bin:/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin
    \\

    \ \ /usr/bin/time -p lake env lean -j1 -DmaxHeartbeats=0
    -DmaxRecDepth=4096 VerifyJoint.lean
  </shell-code>

  It exited successfully after 828.66 seconds. The complete retained output
  is only 24 lines and has SHA-256 digest
  <verbatim|f565c053c1ed5264923a7865d6e536c9108e0c749bd074c63124d6da4444166d>.

  <section|Per-root results><label|per-root-results>

  <verbatim|VerifyJoint.lean> calls Lean's transitive
  <verbatim|collectAxioms> for every endpoint and rejects any name outside
  its explicit list <verbatim|propext>, <verbatim|Classical.choice>, and
  <verbatim|Quot.sound>.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Release
  root>>|<cell|<strong|Reported transitive
  axioms>>>|<row|<cell|<verbatim|YangMills.jointExistence>>|<cell|<verbatim|propext>,
  <verbatim|Classical.choice>, <verbatim|Quot.sound>>>|<row|<cell|<verbatim|YangMills.constructed>>|<cell|<verbatim|propext>,
  <verbatim|Classical.choice>, <verbatim|Quot.sound>>>|<row|<cell|<verbatim|YangMills.su2Simple>>|<cell|<verbatim|propext>,
  <verbatim|Classical.choice>, <verbatim|Quot.sound>>>|<row|<cell|<verbatim|YangMills.su2Theory>>|<cell|<verbatim|propext>,
  <verbatim|Classical.choice>, <verbatim|Quot.sound>>>|<row|<cell|<verbatim|YM.Nonperturbative.existence>>|<cell|<verbatim|propext>,
  <verbatim|Classical.choice>, <verbatim|Quot.sound>>>|<row|<cell|<verbatim|YM.Nonperturbative.continuum>>|<cell|<verbatim|propext>,
  <verbatim|Classical.choice>, <verbatim|Quot.sound>>>|<row|<cell|<verbatim|YM.Nonperturbative.continuum_with_position_tests>>|<cell|<verbatim|propext>,
  <verbatim|Classical.choice>, <verbatim|Quot.sound>>>|<row|<cell|<verbatim|YM.Contacts.Solstice.celestial>>|<cell|<verbatim|propext>,
  <verbatim|Classical.choice>, <verbatim|Quot.sound>>>|<row|<cell|<verbatim|YM.Pert.Position.finite_leading>>|<cell|<verbatim|propext>,
  <verbatim|Classical.choice>, <verbatim|Quot.sound>>>|<row|<cell|<verbatim|YM.Pert.Position.normalized_four>>|<cell|<verbatim|propext>,
  <verbatim|Classical.choice>, <verbatim|Quot.sound>>>|<row|<cell|<verbatim|YM.Pert.Parity.parityEndpoint>>|<cell|<verbatim|propext>,
  <verbatim|Classical.choice>, <verbatim|Quot.sound>>>|<row|<cell|<verbatim|YM.Pert.Parity.low_read>>|<cell|<verbatim|propext>,
  <verbatim|Classical.choice>, <verbatim|Quot.sound>>>|<row|<cell|<verbatim|YM.Pert.Asymptotics.comparison>>|<cell|<verbatim|propext>,
  <verbatim|Classical.choice>, <verbatim|Quot.sound>>>|<row|<cell|<verbatim|YM.SharpGram.habitat>>|<cell|<verbatim|propext>,
  <verbatim|Classical.choice>, <verbatim|Quot.sound>>>|<row|<cell|<verbatim|YM.SharpGram.inletFirst>>|<cell|<verbatim|propext>,
  <verbatim|Classical.choice>, <verbatim|Quot.sound>>>|<row|<cell|<verbatim|YM.SharpGram.outletFirst>>|<cell|<verbatim|propext>,
  <verbatim|Classical.choice>, <verbatim|Quot.sound>>>|<row|<cell|<verbatim|YM.Independent.Core.point>>|<cell|<verbatim|propext>,
  <verbatim|Classical.choice>, <verbatim|Quot.sound>>>>>>

  No <verbatim|sorryAx>, project-defined axiom, <verbatim|Lean.ofReduceBool>,
  or other nonstandard axiom appears in any endpoint result.

  <section|Type comparison and replay><label|type-comparison-and-replay>

  The same run reported:

  <\verbatim-code>
    TYPE_MATCH YangMills.jointExistence

    REPLAY_START project=100168 external=14364

    REPLAY_PASS project=100168 external=14364 endpoints=17 duplicateAliases=0
  </verbatim-code>

  Before replay, the verifier loads <verbatim|Challenge> into a separate
  environment and checks that <verbatim|YangMills.jointExistence> has exactly
  the same elaborated type and universe parameters there as in the solution.
  It rejects implementation modules in the reference environment. For the
  release-root closure it rejects unsafe or partial project declarations,
  project axiom declarations, and unexpected axioms at the external boundary.
  It then imports only the pinned external modules and asks Lean's kernel
  replay facility to check the 100,168 reachable project declarations.

  <section|Supplementary archive-wide scan><label|supplementary-archive-wide-scan>

  The following check is broader in one direction and narrower in another: it
  scans all declarations owned by modules whose names begin with
  <verbatim|YM>, whether or not a release root reaches them, but it does not
  include the separate public bridge modules.

  <\shell-code>
    lake env lean -j1 -DmaxHeartbeats=0 -DmaxRecDepth=4096
    verification/Inventory.lean
  </shell-code>

  The first run failed in 2.95 seconds because the downloaded default-target
  artifact did not contain <verbatim|.lake/build/lib/lean/YM.olean>. After
  <verbatim|lake build YM> built that aggregate root in 38.21 seconds without
  source changes, the second run passed in 36.66 seconds:

  <\verbatim-code>
    INVENTORY_PASS

    DECLARATION_SCAN declarations=249713 directSorryAx=0 projectAxioms=0
  </verbatim-code>

  The failed and successful logs are both retained; their SHA-256 digests are
  <verbatim|df8484e67012a885409fc2b2a1ceee1a0d41fa5ee0cf730671639c76a17cf873>
  and <verbatim|03d413ca89eb91bd7bb023b404ff4117a47e7095b6be35ae10575087aa019ed8>,
  respectively.

  <section|Deliberate reference placeholder><label|deliberate-reference-placeholder>

  <verbatim|Lean/Challenge.lean> contains a deliberate <verbatim|sorry> in
  its reference copy of <verbatim|YangMills.jointExistence>. The file states
  that this placeholder belongs only to the challenge and that
  <verbatim|Solution.lean> supplies the proof. Consequently the
  <verbatim|WilsonReference> build emits a warning that
  <verbatim|Challenge.lean:5:8> uses <verbatim|sorry>.

  This placeholder is not suppressed or counted as a proved theorem. The
  verifier uses the reference declaration only for the exact type comparison
  described above, checks that the reference import graph contains no
  implementation module, and replays the solution declaration from the
  implementation environment. None of the 17 solution-root axiom reports
  contains <verbatim|sorryAx>.

  <section|Limits of the evidence><label|limits-of-the-evidence>

  <\itemize-minus>
    <item>A transitive axiom report establishes which axiom constants occur
    in an elaborated proof term. It does not establish that a theorem's
    hypotheses or definitions capture the intended mathematics or physics.

    <item>Kernel replay checks the reachable closure, not the 150,151 project
    declarations classified as outside all 17 release roots by
    <verbatim|Usage.lean>.

    <item>The supplementary scan detects direct <verbatim|sorryAx> uses and
    axiom declarations in <verbatim|YM> modules; it is not itself a
    transitive semantic audit of every unused declaration.

    <item>The result trusts Lean 4.32.0, its kernel and replay
    implementation, and the pinned external libraries. No independent proof
    assistant or second Lean implementation was used.

    <item>No native-computation axiom appeared in the endpoint closures. This
    excludes a <verbatim|Lean.ofReduceBool> dependency in those reported
    terms, but it is not a general audit of every computation performed while
    building the archive.
  </itemize-minus>
</body>

<\initial>
  <\collection>
    <associate|html-title|Transitive axiom and kernel-replay evidence for
    3456e5e \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|2>>
    <associate|auto-5|<tuple|5|3>>
    <associate|auto-6|<tuple|6|3>>
    <associate|deliberate-reference-placeholder|<tuple|5|3>>
    <associate|limits-of-the-evidence|<tuple|6|3>>
    <associate|per-root-results|<tuple|2|1>>
    <associate|scope-and-command|<tuple|1|1>>
    <associate|supplementary-archive-wide-scan|<tuple|4|2>>
    <associate|transitive-axiom-and-kernel-replay-evidence-for-3456e5e|<tuple|?|1>>
    <associate|type-comparison-and-replay|<tuple|3|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Scope
      and command> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Per-root
      results> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Type
      comparison and replay> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Supplementary
      archive-wide scan> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Deliberate
      reference placeholder> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Limits
      of the evidence> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>