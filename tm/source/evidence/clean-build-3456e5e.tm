<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../audit.tm><ym-nav-sep><hlink|Literature|../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../CONTRIBUTING.tm>>

  <ym-title|Clean from-source rebuild of <verbatim|3456e5e> on an independent
  Linux host><label|clean-from-source-rebuild-of-3456e5e-on-an-independent-linux-host>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Result>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|What was and
    was not compiled here> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Source
    integrity observation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Comparison with
    the published prebuilt artifact> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Environment>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Commands and
    outcomes> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Retained logs>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Checks not
    performed> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>
  </table-of-contents>

  <\itemize-minus>
    <item>Audit task: <hlink|issue #37|https://github.com/hairer/humanise-yang-mills/issues/37>,
    follow-up to <hlink|issue #2|https://github.com/hairer/humanise-yang-mills/issues/2>.

    <item>Source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>,
    read from this repository's <verbatim|Lean/> at commit
    <verbatim|5535cc1579029c69155b0d0a89c13b819bf0f5f1>.

    <item>Contributor and agent assistance: schmittj; run and written up with
    Claude, session <verbatim|schmittj-claude-build-20261112>.

    <item>Date: 12 November 2026. Status: author evidence, not independently
    reviewed.
  </itemize-minus>

  <section|Result><label|result>

  Every project module was compiled from source on the audit host, starting
  from an empty project build directory and without the prebuilt project
  artifact. All commands exited with status 0:

  <\itemize-minus>
    <item><verbatim|lake build WilsonReference WilsonConstruction>:
    <verbatim|Build completed successfully (18126 jobs).>

    <item><verbatim|lake build --no-build WilsonReference
    WilsonConstruction>: <verbatim|All targets up-to-date (18126 jobs).>

    <item><verbatim|lake build YM>: <verbatim|Build completed successfully
    (18112 jobs).>

    <item><verbatim|VerifyJoint.lean>: <verbatim|TYPE_MATCH
    YangMills.jointExistence>, 17 <verbatim|ENDPOINT_AXIOMS> lines each
    listing exactly <verbatim|[propext, Classical.choice, Quot.sound]>, and
    <verbatim|REPLAY_PASS project=100168 external=14364 endpoints=17
    duplicateAliases=0>.

    <item><verbatim|verification/CompactCheck.lean>:
    <verbatim|COMPACT_ESTIMATE> for <verbatim|YangMills.CompactCheck.compactCoefficient>
    and <verbatim|compactRemainder>, both <verbatim|[propext,
    Classical.choice, Quot.sound]>.

    <item><verbatim|verification/Inventory.lean>: <verbatim|INVENTORY_PASS>,
    <verbatim|DECLARATION_SCAN declarations=249713 directSorryAx=0
    projectAxioms=0>.

    <item><verbatim|verification/Usage.lean>: <verbatim|USAGE_PASS
    headlines=17 project=250319 used=100168 outside=150151 modules=9469
    modulesWithNoUsedDeclaration=2946>.
  </itemize-minus>

  These agree with the values recorded under #2 in
  <verbatim|source/build.md>, <hlink|<verbatim|axioms-3456e5e.md>|axioms-3456e5e.tm>
  and <hlink|<verbatim|usage-3456e5e.md>|usage-3456e5e.tm>: the same job
  count, the same replay counts, the same 17 endpoints with the same three
  axioms, the same declaration and usage counts. The regenerated inventories
  have the same SHA-256 digests as the ones regenerated under #2
  (<verbatim|declaration-usage.tsv> <verbatim|9dc9a62a\<ldots\>be4d2a>,
  <verbatim|module-usage.tsv> <verbatim|f9db49e0\<ldots\>c265dc>), so the
  three <verbatim|source_line> differences from the checked-in
  <verbatim|declaration-usage.tsv> reported there are reproduced; columns
  1\U5 of the regenerated and checked-in files are identical (<verbatim|diff>
  of <verbatim|cut -f1-5>: no output).

  The build log contains no failed job (<verbatim|\<#2716\>>: 0 occurrences)
  and one <verbatim|sorry> warning, <verbatim|Challenge.lean:5:8: declaration
  uses 'sorry'>, the deliberate reference placeholder already accounted for
  in <verbatim|axioms-3456e5e.md>.

  <section|What was and was not compiled here><label|what-was-and-was-not-compiled-here>

  <\itemize-minus>
    <item><strong|Compiled on this host from source:> all modules of the
    project libraries <verbatim|YM>, <verbatim|WilsonPublic>,
    <verbatim|WilsonReference>, <verbatim|WilsonConstruction>. Before the
    build, <verbatim|Lean/.lake/build> did not exist (<verbatim|ls: cannot
    access '.lake/build'>), and the working tree had no local change
    (<verbatim|git status --porcelain>: 0 lines before and after).

    <item><strong|Taken from external caches, not recompiled:> Mathlib at
    <verbatim|81a5d257c8e410db227a6665ed08f64fea08e997> and the other pinned
    packages, fetched by <verbatim|lake exe cache get> (final line
    <verbatim|Already decompressed 8639 file(s)>) after Lake cloned the
    repositories named in <verbatim|lake-manifest.json>. The 18,126 jobs
    include these.

    <item><strong|Lean toolchain:> the official
    <verbatim|leanprover/lean4:v4.32.0> binary installed by elan,
    <verbatim|Lean (version 4.32.0, x86_64-unknown-linux-gnu, commit
    8c9756b28d64dab099da31a4c09229a9e6a2ef35, Release)>, <verbatim|Lake
    version 5.0.0-src+8c9756b>. Same commit as in #2, different platform.
  </itemize-minus>

  So this closes the limitation in <verbatim|source/build.md> that no host
  had recompiled every project source file. It does not remove trust in the
  pinned Lean binary, its kernel, or the pinned external package artifacts,
  and it says nothing about the adequacy of any theorem statement.

  <section|Source integrity observation><label|source-integrity-observation>

  <verbatim|sha256sum -c SOURCES.sha256> in a fresh clone reports
  <strong|9,497 files <verbatim|OK> and 10 files absent>; it exits with
  status 1 for that reason alone. The absent files are the ten
  <verbatim|verification/*.log> files listed in the manifest:
  <verbatim|archive-graph.log>, <verbatim|attributions.log>,
  <verbatim|build.log>, <verbatim|compact-check.log>,
  <verbatim|joint-check.log>, <verbatim|kernel.log>,
  <verbatim|negative-controls.log>, <verbatim|source-match.log>,
  <verbatim|su2-check.log>, <verbatim|usage.log>. They are not tracked in
  this repository (<verbatim|git ls-files Lean> has 9,498 entries including
  the manifest; the manifest has 9,507 lines). No <verbatim|.lean> file,
  toolchain file or manifest is affected. The statement in
  <verbatim|source/build.md> that all 9,507 listed files reported
  <verbatim|OK> therefore describes the original archive, not the Git import;
  <verbatim|Lean/README.md> links to several of the missing logs. Whether to
  add them to the import is left to the maintainer.

  The digests of <verbatim|lean-toolchain>
  (<verbatim|2773c517\<ldots\>fd32e>) and <verbatim|lake-manifest.json>
  (<verbatim|389c72d1\<ldots\>724c3>) equal those in
  <verbatim|source/build.md>.

  <section|Comparison with the published prebuilt
  artifact><label|comparison-with-the-published-prebuilt-artifact>

  The artifact used under #2, Scott Armstrong's <hlink|compiled Lean
  release|https://github.com/scottnarmstrong/yang-mills-informalization/releases/tag/lean-build-3456e5e>,
  was downloaded to the same host and unpacked to a separate directory; it
  was not used for the build. Both parts matched <verbatim|SHA256SUMS>, and
  the concatenated archive has digest <verbatim|07c145c36a45948ac55044a98d5626c201fe7ad6214d627a0739694c8e464707>,
  as recorded in <verbatim|source/build.md>. Every file of the artifact
  (66,290) has a counterpart in the fresh build directory. Byte comparison by
  SHA-256:

  <block|<tformat|<cwith|1|-1|2|2|cell-halign|r>|<cwith|1|-1|3|3|cell-halign|r>|<cwith|1|-1|4|4|cell-halign|r>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|File
  kind>>|<cell|<strong|Common>>|<cell|<strong|Identical>>|<cell|<strong|Different>>>|<row|<cell|generated
  C (<verbatim|ir/**/*.c>)>|<cell|9,470>|<cell|9,470>|<cell|0>>|<row|<cell|<verbatim|.ilean>>|<cell|9,470>|<cell|9,470>|<cell|0>>|<row|<cell|<verbatim|.olean>>|<cell|9,470>|<cell|8,426>|<cell|1,044>>|<row|<cell|<verbatim|.hash>
  side files>|<cell|28,410>|<cell|27,366>|<cell|1,044>>|<row|<cell|<verbatim|.trace>>|<cell|9,470>|<cell|0>|<cell|9,470>>>>>

  Present only in the fresh build: the files of the aggregate root
  <verbatim|YM> (absent from the artifact, as #2 found) and 9,471
  <verbatim|.json> files written by Lake.

  The 1,044 differing <verbatim|.olean> files are in every case
  <strong|larger in the fresh build, by 8 bytes or by 16 bytes> (minimum 8,
  median 16, maximum 16); their <verbatim|.hash> side files differ
  accordingly. They are concentrated in <verbatim|YM/TraceExtension> (249),
  <verbatim|YM/FullVolume> (219), <verbatim|YM/UVExtension> (126),
  <verbatim|YM/OPE> (94), <verbatim|YM/MergeProof> (78),
  <verbatim|YM/MultipleContact> (67), <verbatim|YM/Pert> (63). For one
  sample, <verbatim|YM/Contacts/Solstice/JetLocal.olean> (1,160,784 bytes in
  the artifact), <verbatim|cmp -l> reports 5,364 differing byte positions
  before the end of the shorter file, one in the header region and the rest
  near the end of the file.

  <strong|Cause (determined in a follow-up on 12 November 2026).> The 1,044
  modules are those whose <verbatim|.olean> stores linter messages
  (environment extension <verbatim|lintLogExt>, for example
  <verbatim|unusedVariables> warnings); each stored message carries the
  absolute path of the source file. The artifact was built under
  <verbatim|/home/scott/OpenAI-YM-20261028/>, the fresh build under
  <verbatim|/scratch/userdata/schmittj/ym-build/repo/Lean/>, which is 15
  characters longer; with 8-byte alignment this lengthens the file by 8 or 16
  bytes and shifts the object addresses that follow, which accounts for the
  scattered differing bytes. Three checks support this:

  <\enumerate>
    <item>For all 1,044 files, the printable strings of the two versions
    (<verbatim|strings -n 12>, sorted) coincide once each root path is
    replaced by a common token. With <verbatim|strings -n 6> this holds for
    1,017 files; in the other 27 the differences are short byte runs that are
    shifted addresses, not text.

    <item>None of the 8,426 byte-identical <verbatim|.olean> files of the
    artifact contains the string <verbatim|/home/scott/>.

    <item>Decisive test: the sources were copied to
    <verbatim|/scratch/userdata/schmittj/ymb/>, a root path of the same
    length (30 characters) as the artifact's, and each of the 1,044 modules
    was recompiled there with exactly the command Lake had recorded for it in
    its <verbatim|.trace> file (same <verbatim|--setup> file and imports from
    the fresh build), writing to a temporary file. In <strong|all 1,044
    cases> the result equals the artifact's <verbatim|.olean> after replacing
    the byte string <verbatim|/home/scott/OpenAI-YM-20261028/> by
    <verbatim|/scratch/userdata/schmittj/ymb/> in the artifact file, and has
    the same length. For the sample module
    <verbatim|YM/FullVolume/Umbra/Ambience>, the two files differ in exactly
    29 bytes, all inside the path string.
  </enumerate>

  So every <verbatim|.olean> of the artifact is, up to the embedded source
  root in stored linter messages, byte-for-byte what this source produces
  with this toolchain on the audit host. The recompilation in check 3 used
  the imports of the fresh build, which are themselves identical to the
  artifact's up to the same substitution. Scripts and logs are retained on
  the host: <verbatim|repath.py> (<verbatim|9763933a\<ldots\>b131fe>),
  <verbatim|repath.log> (<verbatim|b34d6def\<ldots\>dfee50>, final line
  <verbatim|REPATH_DONE total=1044 equal_after_path_substitution=1044
  other=0>), <verbatim|pathcheck.log> (<verbatim|a1571df1\<ldots\>d2a338>).
  <verbatim|.trace> files record host-specific build traces and are expected
  to differ.

  <section|Environment><label|environment>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Component>>|<cell|<strong|Value>>>|<row|<cell|Host>|<cell|Linux
  <verbatim|7.2.8-200.fc44.x86_64>, Fedora Linux 44, x86-64, 72 cores (Intel
  Xeon Gold 6254), 503 GB RAM; shared machine with other users' jobs
  running>>|<row|<cell|Lean / Lake>|<cell|4.32.0, commit
  <verbatim|8c9756b28d64dab099da31a4c09229a9e6a2ef35> /
  <verbatim|5.0.0-src+8c9756b>>>|<row|<cell|Settings>|<cell|<verbatim|LEAN_NUM_THREADS=36>,
  build commands run under <verbatim|nice -n 10>; <verbatim|ELAN_HOME>,
  <verbatim|XDG_CACHE_HOME>, <verbatim|MATHLIB_CACHE_DIR> and
  <verbatim|TMPDIR> pointed at a scratch directory>>|<row|<cell|Repository>|<cell|<verbatim|git
  clone https://github.com/hairer/humanise-yang-mills.git>, checked out at
  <verbatim|5535cc1579029c69155b0d0a89c13b819bf0f5f1>; <verbatim|Lean/> last
  changed in <verbatim|9865613>>>>>>

  <section|Commands and outcomes><label|commands-and-outcomes>

  All from <verbatim|Lean/> of the fresh clone, with the pinned toolchain
  first on <verbatim|PATH>. Each command was wrapped in
  <verbatim|/usr/bin/time -v>.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|3|3|cell-halign|r>|<cwith|1|-1|4|4|cell-halign|r>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Command>>|<cell|<strong|Result>>|<cell|<strong|Wall
  time>>|<cell|<strong|Peak RSS of one process>>>|<row|<cell|<verbatim|sha256sum
  -c SOURCES.sha256>>|<cell|9,497 <verbatim|OK>, 10 absent (see
  above)>|<cell|\V>|<cell|\V>>|<row|<cell|<verbatim|lake exe cache
  get>>|<cell|Pass>|<cell|1 min 36 s>|<cell|\V>>|<row|<cell|<verbatim|lake
  build WilsonReference WilsonConstruction>>|<cell|Pass, 18,126 jobs>|<cell|3
  h 16 min 48 s (143,307 s user CPU)>|<cell|13.7
  GB>>|<row|<cell|<verbatim|lake build --no-build WilsonReference
  WilsonConstruction>>|<cell|Pass, all up to date>|<cell|9
  s>|<cell|\V>>|<row|<cell|<verbatim|lake build YM>>|<cell|Pass, 18,112
  jobs>|<cell|16 s>|<cell|12.7 GB>>|<row|<cell|<verbatim|lake env lean -j1
  -DmaxHeartbeats=0 -DmaxRecDepth=4096 VerifyJoint.lean>>|<cell|Pass, see
  Result>|<cell|22 min 22 s>|<cell|29.6 GB>>|<row|<cell|<verbatim|lake env
  lean -j1 verification/CompactCheck.lean>>|<cell|Pass>|<cell|7 s>|<cell|7.1
  GB>>|<row|<cell|<verbatim|lake env lean -j1 -DmaxHeartbeats=0
  -DmaxRecDepth=4096 verification/Inventory.lean>>|<cell|Pass>|<cell|47
  s>|<cell|13.7 GB>>|<row|<cell|<verbatim|Usage.lean> in a temporary overlay
  containing only <verbatim|verification/joint-headlines.txt>, as under #2:
  <verbatim|lake env sh -c 'cd OVERLAY && lean -j1 -DmaxHeartbeats=0
  -DmaxRecDepth=4096 LEAN/verification/Usage.lean'>>|<cell|Pass>|<cell|47
  s>|<cell|13.5 GB>>>>>

  The long wall time of the main build reflects the shared host and the
  thread limit; it is not a property of the project. The order differs from
  #2 in one respect: <verbatim|lake build YM> was run before
  <verbatim|Inventory.lean>, so the preliminary failure recorded there
  (missing <verbatim|YM.olean>) does not occur.

  <section|Retained logs><label|retained-logs>

  Raw logs are kept on the audit host and are not committed. SHA-256 digests:

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Log>>|<cell|<strong|SHA-256>>>|<row|<cell|<verbatim|build.log>>|<cell|<verbatim|b794ad3af6d2841e173601cdbd2fa6d892a605bc99ab99661be3f618e59d1fb9>>>|<row|<cell|<verbatim|build-nobuild.log>>|<cell|<verbatim|498295121071b8622c1b05d4046e2e5507178d2d1f900b205d616db8330164f0>>>|<row|<cell|<verbatim|build-ym.log>>|<cell|<verbatim|ae45ce68349259436d1b9592fde1aa020823c06c40f6866c0cee586ada580227>>>|<row|<cell|<verbatim|cache-get.log>>|<cell|<verbatim|be893da9a4295dc530eb8b426b1f5b49206d80f6a3c18f0ef4c2f8caa9d77d08>>>|<row|<cell|<verbatim|sources.log>>|<cell|<verbatim|267635c96da05a670352fef03ed4db54024db15d121dbebfe777c1c31b560d7d>>>|<row|<cell|<verbatim|toolchain.log>>|<cell|<verbatim|44e4d5ceab76db792d1818bf00fee45e094106615b483add8cd32bf69286c27d>>>|<row|<cell|<verbatim|verify-joint.log>>|<cell|<verbatim|2410c8c1eefb052519dd5d281ec7f452a4dfb78e6a3eb6e543277f9345aed26b>>>|<row|<cell|<verbatim|compact-check.log>>|<cell|<verbatim|1e17482cb51be4beeffee22a3bb08bca9b5845b56f0e4f0c7d55ca640dc72e36>>>|<row|<cell|<verbatim|inventory.log>>|<cell|<verbatim|05707f033cd2bd57eae998b84bd39e2dbd62632ca407e7ea6724e60b140feacc>>>|<row|<cell|<verbatim|usage.log>>|<cell|<verbatim|f30a24774b78df2565113ce0350de6bfd9c5ef4a8d12479d57e25de8e4e1b29e>>>|<row|<cell|artifact
  file hashes (<verbatim|cmp_artifact.sha>)>|<cell|<verbatim|e6a8db82965ade3682bc6e039c482b146a22e7631d39fee8d5174ea6f49f2bcf>>>|<row|<cell|fresh
  build file hashes (<verbatim|cmp_ours.sha>)>|<cell|<verbatim|d7ee18cad9535f5634e8e344f5fade009d6e49677ed7ec38e939c39c41ef6b64>>>>>>

  The digests of <verbatim|verify-joint.log>, <verbatim|usage.log> and the
  build logs differ from those under #2 because the logs contain host paths
  and timings; the result lines quoted above are the comparable content. The
  logs and the two hash lists can be supplied on request.

  <section|Checks not performed><label|checks-not-performed>

  <\itemize-minus>
    <item>Mathlib and the other external packages were not recompiled from
    source.

    <item>The standalone Comparator executable was not run with
    <verbatim|Lean/comparator.json> (upstream's README records the same).
    Unrun.

    <item>No independent kernel or checker other than the pinned Lean kernel
    was used.

    <item>The upstream <verbatim|verification/negative-controls> were not
    re-run.
  </itemize-minus>
</body>

<\initial>
  <\collection>
    <associate|html-title|Clean from-source rebuild of 3456e5e on an
    independent Linux host \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|3>>
    <associate|auto-4|<tuple|4|3>>
    <associate|auto-5|<tuple|5|4>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|8|6>>
    <associate|checks-not-performed|<tuple|8|6>>
    <associate|clean-from-source-rebuild-of-3456e5e-on-an-independent-linux-host|<tuple|?|1>>
    <associate|commands-and-outcomes|<tuple|6|5>>
    <associate|comparison-with-the-published-prebuilt-artifact|<tuple|4|3>>
    <associate|environment|<tuple|5|4>>
    <associate|result|<tuple|1|1>>
    <associate|retained-logs|<tuple|7|5>>
    <associate|source-integrity-observation|<tuple|3|3>>
    <associate|what-was-and-was-not-compiled-here|<tuple|2|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Result>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|What
      was and was not compiled here> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Source
      integrity observation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Comparison
      with the published prebuilt artifact>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Environment>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Commands
      and outcomes> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Retained
      logs> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Checks
      not performed> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>