<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../audit.tm><ym-nav-sep><hlink|Literature|../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../CONTRIBUTING.tm>>

  <ym-title|Dependency-inventory regeneration for
  <verbatim|3456e5e>><label|dependency-inventory-regeneration-for-3456e5e>

  <section|Method><label|method>

  <verbatim|Lean/verification/Usage.lean> writes its two TSV outputs relative
  to the current working directory. To avoid overwriting the imported source
  evidence, the audit created a temporary overlay containing only a copy of
  <verbatim|verification/joint-headlines.txt>, then ran the pinned Lean
  executable with Lake's environment from the project:

  <\shell-code>
    mkdir -p /private/tmp/ym-issue2-usage-3456e5e.sjDkMo/verification

    cp Lean/verification/joint-headlines.txt \\

    \ \ /private/tmp/ym-issue2-usage-3456e5e.sjDkMo/verification/joint-headlines.txt

    cd Lean

    env PATH=/Users/hairer/.elan/toolchains/leanprover--lean4---v4.32.0/bin:/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin
    \\

    \ \ /usr/bin/time -p lake env sh -c \\

    \ \ 'cd /private/tmp/ym-issue2-usage-3456e5e.sjDkMo &&
    /Users/hairer/.elan/toolchains/leanprover--lean4---v4.32.0/bin/lean -j1
    -DmaxHeartbeats=0 -DmaxRecDepth=4096 /Users/hairer/humanise-yang-mills/Lean/verification/Usage.lean'
  </shell-code>

  The command exited successfully after 104.49 seconds:

  <\verbatim-code>
    USAGE_PASS headlines=17 project=250319 used=100168 outside=150151
    modules=9469 modulesWithNoUsedDeclaration=2946
  </verbatim-code>

  The root list generated from <verbatim|source/upstream.json> was identical
  to <verbatim|Lean/verification/joint-headlines.txt>; both had SHA-256
  digest <verbatim|4a5d4eba5d143858d12466aa818c4bfe202e548fc208b87264932a857f492745>.

  <section|Inventory comparison><label|inventory-comparison>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Inventory>>|<cell|<strong|Checked-in
  SHA-256>>|<cell|<strong|Regenerated SHA-256>>|<cell|<strong|Byte
  comparison>>>|<row|<cell|<verbatim|declaration-usage.tsv>>|<cell|<verbatim|1f16d6cbf7cd650c7edccd08f95967ce92cd7e36ec68cfdd081621aec126c5e9>>|<cell|<verbatim|9dc9a62a163d973cb37a94abc74280e7925a83a608e26b731a124d0202be4d2a>>|<cell|Different>>|<row|<cell|<verbatim|module-usage.tsv>>|<cell|<verbatim|f9db49e0d1b7bc8262ecb7f77b18f378db687e9ed87356c42010f560dac265dc>>|<cell|<verbatim|f9db49e0d1b7bc8262ecb7f77b18f378db687e9ed87356c42010f560dac265dc>>|<cell|Identical>>>>>

  Both declaration files contain 250,320 lines, including the header.
  Comparing only columns 1\U5 (<verbatim|module>, <verbatim|declaration>,
  <verbatim|status>, <verbatim|headline_witness>, and
  <verbatim|immediate_user>) gives the same SHA-256 digest for each file:
  <verbatim|49c107bbdc756c4449cd13be8a0d2329fc003f4e192e80357069e72521d2daac>.
  Thus declaration membership, classifications, endpoint witnesses, and
  immediate users all agree. The only differences are these three
  <verbatim|source_line> cells:

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|2|2|cell-halign|r>|<cwith|1|-1|3|3|cell-halign|r>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Declaration>>|<cell|<strong|Checked-in
  line>>|<cell|<strong|Regenerated line>>>|<row|<cell|<verbatim|_private.YM.Work.F05.PiDensity.0.YM.Work.F05.lprodFin>>|<cell|17>|<cell|19>>|<row|<cell|<verbatim|YM.Work.F05.lprod>>|<cell|43>|<cell|45>>|<row|<cell|<verbatim|YM.Work.F05.piDensity>>|<cell|51>|<cell|53>>>>>

  The regenerated values match the declarations' actual lines in
  <verbatim|Lean/YM/Work/F05/PiDensity.lean>. That file has SHA-256 digest
  <verbatim|cd3ec57d549b531ae10f2693a61f19fdb0f8f8ddedebfc3fd0730170e2862741>,
  which matches its entry in <verbatim|Lean/SOURCES.sha256>; it is not a
  local edit. Two attribution-comment lines occur immediately above
  <verbatim|lprodFin>, consistently with the uniform offset. This audit does
  not establish when or from which source layout the checked-in declaration
  TSV was generated.

  The checked-in inventories were deliberately left unchanged, as required by
  the task. The mismatch is evidence to review, not something to overwrite
  silently.

  <section|What this establishes><label|what-this-establishes>

  For the imported source and restored compiled artifacts, the
  project-supplied constant-reachability traversal completed for all 17 roots
  and reproduced the published aggregate counts. Its output confirms 100,168
  reached declarations and 150,151 declarations outside the root closures in
  the 250,319-declaration audit universe. The module-level inventory is
  exactly reproducible; the declaration inventory is reproducible apart from
  the three reported source locations.

  This is a syntactic dependency inventory, not a mathematical proof graph. A
  witness is one traversal path, generated declarations and implementation
  plumbing are included, and dependencies outside the enumerated project
  modules are not TSV rows. The result does not classify which declarations
  need exposition or validate the physical interpretation of any endpoint.
</body>

<\initial>
  <\collection>
    <associate|html-title|Dependency-inventory regeneration for 3456e5e \U
    Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|dependency-inventory-regeneration-for-3456e5e|<tuple|?|1>>
    <associate|inventory-comparison|<tuple|2|1>>
    <associate|method|<tuple|1|1>>
    <associate|what-this-establishes|<tuple|3|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Method>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Inventory
      comparison> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|What
      this establishes> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>