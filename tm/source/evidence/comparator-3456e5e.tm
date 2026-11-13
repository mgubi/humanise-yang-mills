<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../audit.tm><ym-nav-sep><hlink|Literature|../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../CONTRIBUTING.tm>>

  <ym-title|Standalone Comparator run on <verbatim|3456e5e>><label|standalone-comparator-run-on-3456e5e>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Result>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Method>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Commands and
    outcomes> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|What the run
    does and does not establish> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Checks not
    performed> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Retained logs>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>
  </table-of-contents>

  <\itemize-minus>
    <item>Audit task: <hlink|issue #37|https://github.com/hairer/humanise-yang-mills/issues/37>,
    follow-up to <hlink|issue #2|https://github.com/hairer/humanise-yang-mills/issues/2>.

    <item>Source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>,
    read from this repository's <verbatim|Lean/> at commit
    <verbatim|5535cc1579029c69155b0d0a89c13b819bf0f5f1>.

    <item>Contributor and agent assistance: schmittj; run and written up with
    Claude, session <verbatim|schmittj-claude-comparator-20261112>.

    <item>Date: 12 November 2026. Status: author evidence, not independently
    reviewed.
  </itemize-minus>

  <section|Result><label|result>

  <strong|PASS, with three qualifications that must be read with it.> The
  standalone <hlink|Comparator|https://github.com/leanprover/comparator>
  executable, sandboxed with <verbatim|landrun> (Landlock) and using
  <verbatim|lean4export> built for Lean 4.32.0, was run on a byte copy of the
  clean build of <hlink|<verbatim|clean-build-3456e5e.md>|clean-build-3456e5e.tm>
  for the theorem <verbatim|YangMills.jointExistence>, challenge module
  <verbatim|Challenge>, solution module <verbatim|Solution>, permitted axioms
  <verbatim|propext>, <verbatim|Quot.sound>, <verbatim|Classical.choice>. It
  exited with status 0 after 34 min 19 s. Decisive output lines (run 3
  below):

  <\verbatim-code>
    Building Challenge

    \<#26A0\> [8658/8658] Replayed Challenge

    warning: Challenge.lean:5:8: declaration uses `sorry`

    Build completed successfully (8658 jobs).

    Exporting #[YangMills.jointExistence, propext, Quot.sound,
    Classical.choice, Nat.add, Nat.sub, Nat.mul, Nat.pow, Nat.gcd, Nat.div,
    Nat.mod, Nat.beq, Nat.ble, Nat.land, Nat.lor, Nat.xor, Nat.shiftLeft,
    Nat.shiftRight, String.ofList] from Challenge

    Building Solution

    [\<ldots\>]

    Build completed successfully (18121 jobs).

    Exporting #[YangMills.jointExistence, propext, Quot.sound,
    Classical.choice, Nat.add, \<ldots\>, String.ofList] from Solution

    Running Lean default kernel on solution.

    Lean default kernel accepts the solution

    Your solution is okay!

    real \ \ \ 34m19.043s

    Finished with result: success

    Main processes terminated with: code=exited, status=0/SUCCESS

    Memory peak: 17.1G (swap: 0B)

    EXIT_CODE=0
  </verbatim-code>

  The three qualifications:

  <\enumerate>
    <item><strong|The project's <verbatim|comparator.json> was not accepted
    as shipped.> Comparator at its <verbatim|v4.32.0> tag requires the field
    <verbatim|enable_nanoda>; with the shipped file it stops at once with
    <verbatim|uncaught exception: Comparator.Config.enable_nanoda: Bool
    expected> (run 1, exit status 1). The passing run used a copy of the file
    with the single added line <verbatim|"enable_nanoda": false>; the four
    shipped fields are unchanged. (Later Comparator versions make the field
    optional, so the shipped file is valid for them; they need a newer Lean.)

    <item><strong|Comparator was built from its <verbatim|v4.32.0> tag plus
    one upstream one-line fix.> Unmodified <verbatim|v4.32.0> does not work
    with the current <verbatim|main> of <verbatim|landrun> (which the
    Comparator README requires): <verbatim|landrun> now consumes the
    <verbatim|--> that separates module names from constant names in the
    <verbatim|lean4export> command line, and the export step fails with
    <verbatim|unknown module prefix 'YangMills'> (run 2, exit status 1).
    Upstream fixed this on 30 July 2026 in commit
    <verbatim|9badaf470d8f724346d33738bd273efacd78df76> ("Insert '--'
    terminator before the sandboxed command in buildLandrunArgs"), after the
    <verbatim|v4.32.0> tag. That commit was applied to <verbatim|v4.32.0>
    (the diff is one line of <verbatim|Main.lean>, quoted under Method);
    nothing else was changed.

    <item><strong|The solution was not compiled inside the sandbox in this
    run; it was prebuilt.> Comparator's sandboxed <verbatim|lake build
    Challenge> and <verbatim|lake build Solution> found every module up to
    date and replayed the existing build (the log has 1,259
    <verbatim|Replayed> lines and no <verbatim|Built> line). The
    <verbatim|.olean> files are those of the clean build, which compiled
    <verbatim|Solution> and everything else outside any sandbox. The
    Comparator README covers this case ("if you have obtained a fully
    pre-built <verbatim|.lake> directory through other means and without
    compromising your checking environment, <verbatim|Solution.lean> will not
    be rebuilt"), but its assumption 2 ("You have not previously tried to
    compile the <verbatim|Solution> file or any other potentially adversarial
    files") does not hold literally. So the run establishes Comparator's
    three guarantees for the compiled files of the clean build, relying on
    that build not having tampered with the challenge-side files, rather than
    on the sandbox. A supplementary check bounds this: the four project
    modules on the challenge side were recompiled from source in a second
    copy that never contained any project build output, and are
    byte-identical (see below).
  </enumerate>

  Two smaller points: the optional external kernel (nanoda) was not used, so
  only the Lean 4.32.0 kernel linked into Comparator replayed the proof; and
  the <verbatim|systemd-run> wrapper recommended by the README was used with
  <verbatim|--wait --pipe> in place of <verbatim|--pty> (no terminal in a
  detached run), with <verbatim|RestrictAddressFamilies=~AF_UNIX> as
  documented.

  The evidence tree was not modified: the SHA-256 digests of a sample of 200
  <verbatim|.olean> files in <verbatim|/userdata/schmittj/ym-build/repo/Lean/.lake/build>,
  taken before any work and again after the last run, are identical; no file
  under its <verbatim|.lake> is newer than the first digest list;
  <verbatim|git status --porcelain> in the clone is empty.

  <section|Method><label|method>

  Host as in <verbatim|clean-build-3456e5e.md>: Linux
  <verbatim|7.2.8-200.fc44.x86_64>, Fedora 44, x86-64, shared 72-core
  machine. Landlock is active (<verbatim|/sys/kernel/security/lsm>:
  <verbatim|lockdown,capability,yama,selinux,bpf,landlock,ipe,ima,evm>);
  <verbatim|landrun --log-level debug> reports <verbatim|Applying Landlock
  restrictions: {Landlock V10; FS: all; Net: all; Scoped: all (best effort)}>
  and <verbatim|Landlock restrictions applied successfully>, and a write
  outside the allowed directory from inside the sandbox failed with
  <verbatim|Permission denied>. No unsandboxed or fake-landrun mode was used.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Tool>>|<cell|<strong|Version,
  commit, how obtained>>|<cell|<strong|SHA-256 of binary>>>|<row|<cell|Lean /
  Lake>|<cell|<verbatim|leanprover/lean4:v4.32.0>, commit
  <verbatim|8c9756b28d64dab099da31a4c09229a9e6a2ef35>, official elan
  toolchain; <verbatim|Lake version 5.0.0-src+8c9756b>>|<cell|\V>>|<row|<cell|Comparator>|<cell|<verbatim|github.com/leanprover/comparator>,
  tag <verbatim|v4.32.0> = <verbatim|07bc4ea40f2266dcb861820a2ec1fa3244ed307f>
  (its <verbatim|lean-toolchain> is <verbatim|v4.32.0>), plus cherry-pick
  without commit of <verbatim|9badaf470d8f724346d33738bd273efacd78df76>;
  built with <verbatim|lake build lean4export comparator>. Repository
  <verbatim|master> at the time: <verbatim|865edc14486c3388e9225daa971da8e157488c3e>
  (Lean 4.35.0, deprecated in favour of <verbatim|lake comparator>), not
  usable with Lean 4.32.0>|<cell|<verbatim|32f09b96\<ldots\>906bec>
  (unpatched build: <verbatim|4ffd95f2\<ldots\>93be42>)>>|<row|<cell|lean4export>|<cell|<verbatim|github.com/leanprover/lean4export>,
  tag <verbatim|v4.32.0> = <verbatim|4e7915201d3f9f04470d9eae002fa695f7cdc589>
  (the revision pinned in Comparator's manifest at <verbatim|v4.32.0>), built
  from source with <verbatim|lake build> under Lean 4.32.0. The copy Lake
  fetched for Comparator as a prebuilt Reservoir archive has the same
  digest>|<cell|<verbatim|e5736998\<ldots\>7266b0>>>|<row|<cell|landrun>|<cell|<verbatim|github.com/Zouuup/landrun>,
  <verbatim|main> = <verbatim|ec104f6edc1e14d7fec6d31146f1ec6f9c192c5a>,
  reports <verbatim|landrun version 0.1.18>; <verbatim|go build
  ./cmd/landrun>>|<cell|<verbatim|89964580\<ldots\>dd11c8>>>|<row|<cell|Go>|<cell|1.27.4
  <verbatim|linux-amd64>, official tarball, digest
  <verbatim|7226736c2339719cda28fbf3a54d71aa63bcefe376e98cef00034268dab24840>
  equal to the one published on go.dev>|<cell|\V>>>>>

  The patch to Comparator, complete:

  <\verbatim-code>
    --- a/Main.lean

    +++ b/Main.lean

    @@ -85,7 +85,7 @@ def buildLandrunArgs (spawnArgs : LandrunArgs) : Array
    String :=

    - \ args ++ #[spawnArgs.cmd] ++ spawnArgs.args

    + \ args ++ #["--", spawnArgs.cmd] ++ spawnArgs.args
  </verbatim-code>

  Project copy. The evidence tree <verbatim|/userdata/schmittj/ym-build/repo/Lean>
  (clean build, repository commit <verbatim|5535cc1>) was copied with
  <verbatim|cp -a> (a real copy, 48 GB, no hard links) to
  <verbatim|/userdata/schmittj/ym-build/comparator/proj>. In the copy, with
  the pinned toolchain first on <verbatim|PATH>, <verbatim|lake build
  --no-build Challenge Solution WilsonReference WilsonConstruction> reported
  <verbatim|All targets up-to-date (18126 jobs).>, so Lake's traces are valid
  at the new path and nothing was recompiled. After the runs, the only files
  under <verbatim|proj/.lake> newer than the copy are the nine
  <verbatim|packages/*/.git/index> files (refreshed by Lake's <verbatim|git>
  status calls); the 200-file sample has the same digests in the copy as in
  the evidence tree.

  What Comparator does, as read from its README and <verbatim|Main.lean>,
  <verbatim|Comparator/Compare.lean>, <verbatim|Comparator/Axioms.lean> at
  the commit used: (1) <verbatim|lake build Challenge> under
  <verbatim|landrun --best-effort --ro / --rw /dev -ldd -add-exec --env PATH
  --env HOME --env LEAN_ABORT_ON_PANIC --ro \<less\>project\<gtr\> --rwx
  \<less\>project\<gtr\>/.lake --rox \<less\>lean prefix\<gtr\> --rox
  \<less\>git\<gtr\>>; (2) <verbatim|lean4export Challenge --
  \<less\>names\<gtr\>> under <verbatim|landrun> with no writable path except
  <verbatim|/dev>; (3) the same two steps for <verbatim|Solution>; (4) both
  exports are parsed as text (Comparator does not load <verbatim|.olean>
  files itself); the theorem must be a theorem (or axiom) in both with equal
  name, universe parameters and type, and every constant reachable from the
  statement, from the permitted axioms and from the kernel's built-in
  <verbatim|Nat>/<verbatim|String> primitives must be equal in the two
  environments, bodies included; (5) every constant reachable from the
  solution theorem, through types and bodies, that is an axiom must be in
  <verbatim|permitted_axioms>; (6) the whole exported solution environment is
  replayed in the Lean kernel inside the Comparator process.

  Treatment of the <verbatim|sorry> in <verbatim|Challenge.lean>: the README
  says the challenge "contains at least a theorem named <verbatim|todo1> that
  has a <verbatim|sorry> (or any other proof)". In the code, step (4)
  compares only the <verbatim|ConstantVal> of the target theorem (name,
  universe parameters, type), not its proof, and the axiom check and kernel
  replay are applied to the solution export only. The challenge's placeholder
  is therefore expected and ignored; a <verbatim|sorry> in the solution would
  appear as the axiom <verbatim|sorryAx> and be rejected by step (5).

  <section|Commands and outcomes><label|commands-and-outcomes>

  All on the audit host, files only under
  <verbatim|/userdata/schmittj/ym-build/comparator/>, long commands detached.
  Environment for runs 1 to 3: <verbatim|PATH=\<less\>toolchain
  v4.32.0\<gtr\>/bin:/usr/local/bin:/usr/bin>, <verbatim|COMPARATOR_LANDRUN>
  and <verbatim|COMPARATOR_LEAN4EXPORT> set to the binaries above,
  <verbatim|LEAN_NUM_THREADS=24>, working directory <verbatim|proj>. Exact
  invocation (scripts <verbatim|run1.sh>, <verbatim|run3.sh>):

  <\shell-code>
    systemd-run --user --wait --pipe --collect --nice=10
    --property=RestrictAddressFamilies=~AF_UNIX -E PATH=\<ldots\> -E
    ELAN_HOME=\<ldots\> -E TMPDIR=\<ldots\> -E LEAN_NUM_THREADS=24 -E
    COMPARATOR_LANDRUN=\<ldots\>/bin/landrun -E
    COMPARATOR_LEAN4EXPORT=\<ldots\>/tools/lean4export/.lake/build/bin/lean4export
    --working-directory \<ldots\>/proj -- bash -c "time lake env
    \<less\>comparator binary\<gtr\> \<less\>config\<gtr\>"
  </shell-code>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Step>>|<cell|<strong|Command>>|<cell|<strong|Outcome>>>|<row|<cell|Sample
  digests before>|<cell|<verbatim|sha256sum> of 198 evenly spaced entries of
  the sorted list of 9,471 <verbatim|.olean> files in
  <verbatim|repo/Lean/.lake/build>, plus <verbatim|Challenge.olean> and
  <verbatim|Solution.olean>>|<cell|list digest
  <verbatim|ef3807bf\<ldots\>5d45b1ed>>>|<row|<cell|Copy>|<cell|<verbatim|cp
  -a> of sources and <verbatim|.lake> to <verbatim|proj>>|<cell|done in 33 s,
  48 GB>>|<row|<cell|Up-to-date check>|<cell|<verbatim|lake build --no-build
  Challenge Solution WilsonReference WilsonConstruction> in
  <verbatim|proj>>|<cell|<verbatim|All targets up-to-date (18126 jobs).>, 11
  s>>|<row|<cell|Tool builds>|<cell|see Method>|<cell|all
  succeeded>>|<row|<cell|Sandbox test>|<cell|<verbatim|landrun --best-effort
  --ro / --rw /dev --rwx proj/.lake --rox /usr /usr/bin/touch
  logs/SHOULD_FAIL>>|<cell|<verbatim|Permission denied>, status 1, file not
  created>>|<row|<cell|Run 1>|<cell|unpatched Comparator <verbatim|v4.32.0>,
  shipped <verbatim|comparator.json>>|<cell|<strong|Fail>, status 1, under 1
  s: <verbatim|uncaught exception: Comparator.Config.enable_nanoda: Bool
  expected>>>|<row|<cell|Run 2>|<cell|unpatched Comparator
  <verbatim|v4.32.0>, config with <verbatim|"enable_nanoda": false>
  added>|<cell|<strong|Fail>, status 1, 9 s: challenge build replayed, then
  <verbatim|uncaught exception: unknown module prefix 'YangMills'> from
  <verbatim|lean4export> and <verbatim|uncaught exception: Child exited with
  1>>>|<row|<cell|Run 3>|<cell|patched Comparator, config with
  <verbatim|"enable_nanoda": false> added>|<cell|<strong|Pass>, status 0, 34
  min 19 s wall (33 min 49 s user), peak memory 17.1 GB; output quoted under
  Result. Start 16:59:56 UTC, end 17:34:15 UTC>>|<row|<cell|Challenge-side
  rebuild>|<cell|second copy <verbatim|proj2> with sources and
  <verbatim|.lake/packages> only (no <verbatim|.lake/build>); <verbatim|lake
  build Challenge>>|<cell|<verbatim|Build completed successfully (8658
  jobs).>, 34 s; exactly 4 project <verbatim|.olean> files produced:
  <verbatim|PublicTheory>, <verbatim|PublicWilson>, <verbatim|ChallengeSpec>,
  <verbatim|Challenge>; each has the same SHA-256 as in <verbatim|proj> and
  in the evidence tree (<verbatim|5ee682d2\<ldots\>>,
  <verbatim|3f476073\<ldots\>>, <verbatim|53dd5a26\<ldots\>>,
  <verbatim|33c4a0cc\<ldots\>>)>>|<row|<cell|Tool negative
  control>|<cell|Comparator's own test project
  <verbatim|tests/projects/simple_mismatch> (solution states a different
  <verbatim|comm> as an axiom), same patched binary, real <verbatim|landrun>,
  same <verbatim|lean4export>>|<cell|rejected as intended, status 1:
  <verbatim|uncaught exception: Challenge and solution constant kind don't
  match: 'comm'>>>|<row|<cell|Sample digests after>|<cell|same 200 files in
  the evidence tree>|<cell|identical list (<verbatim|cmp>: no difference);
  <verbatim|find repo/Lean/.lake -newer \<less\>first list\<gtr\>>: 0 files;
  <verbatim|git status --porcelain>: 0 lines, <verbatim|HEAD>
  <verbatim|5535cc1579029c69155b0d0a89c13b819bf0f5f1>>>>>>

  In run 3 the phases were roughly: both sandboxed Lake builds and the
  challenge export about 35 s, the solution export by <verbatim|lean4export>
  about 4 min (about 12 GB resident), parsing, comparison, axiom check and
  kernel replay about 29 min. <verbatim|LEAN_NUM_THREADS> is not passed into
  the sandbox by Comparator (only <verbatim|PATH>, <verbatim|HOME>,
  <verbatim|LEAN_ABORT_ON_PANIC> are); this did not matter because nothing
  was compiled.

  <section|What the run does and does not
  establish><label|what-the-run-does-and-does-not-establish>

  According to Comparator's README, a successful run guarantees, under its
  listed assumptions, that the theorem in <verbatim|Solution> named in
  <verbatim|theorem_names> (1) proves the same statement as the one in
  <verbatim|Challenge>, (2) uses no more axioms than those in
  <verbatim|permitted_axioms>, and (3) is accepted by the Lean kernel. For
  this project: <verbatim|YangMills.jointExistence> in <verbatim|Solution>
  has the same name, universe parameters and type as in <verbatim|Challenge>;
  every constant its statement depends on (transitively, with bodies) is the
  same in both environments; its proof depends on no axiom other than
  <verbatim|propext>, <verbatim|Quot.sound>, <verbatim|Classical.choice>; and
  the exported closure was replayed by the Lean 4.32.0 kernel. This is an
  independent implementation of what <verbatim|VerifyJoint.lean> checks for
  this one theorem, using a text export and a separate process instead of
  in-process environment loading, and it agrees with the
  <verbatim|TYPE_MATCH>, axiom and replay results recorded in
  <verbatim|clean-build-3456e5e.md> and <verbatim|axioms-3456e5e.md>.

  It does not establish:

  <\itemize-minus>
    <item>That the solution build was contained by the sandbox: it was
    prebuilt (qualification 3). The supplementary rebuild shows that the four
    challenge-side project modules are exactly what the sources produce, in a
    tree where the solution was never built, given the same package
    <verbatim|.olean> files; it does not cover those package files.

    <item>Anything about Mathlib and the other pinned packages beyond kernel
    replay of the constants actually reached: their <verbatim|.olean> files
    come from the external cache used by the clean build and were copied, not
    recompiled. <verbatim|lean4export> reads <verbatim|.olean> files
    directly.

    <item>Anything about the other 16 advertised results of
    <verbatim|VerifyJoint.lean>, or the SU(2) specialisation:
    <verbatim|comparator.json> lists one theorem only.

    <item>That <verbatim|comparator.json> works unchanged with the Comparator
    release matching the project's Lean version: it does not (qualification
    1), and that release does not work unchanged with current
    <verbatim|landrun> (qualification 2).

    <item>Independence from the Lean kernel: no external kernel was run.

    <item>The adequacy of the statement <verbatim|YangMills.JointExistence>
    as mathematics. Comparator compares the solution with
    <verbatim|Challenge.lean>; whether <verbatim|ChallengeSpec.lean> says
    what the README claims is a separate question.

    <item>How many declarations were replayed: Comparator prints no count.
  </itemize-minus>

  Comparator's assumptions as met here: challenge imports and
  <verbatim|lakefile.toml> are the repository's own (assumption 1, trusted as
  source under audit); assumption 2 not met literally, see above; assumptions
  3 and 4, <verbatim|landrun> and <verbatim|lean4export> supplied by absolute
  path, Landlock ABI v10 applied, host kernel 7.2 (the README says the
  <verbatim|AF_UNIX> issue guarded by <verbatim|systemd-run> is fixed from
  Linux 7.1; the guard was applied anyway); assumption 5, kernel correctness,
  assumed; assumption 6, run as an unprivileged user.

  A Comparator pass certifies the proof of the stated theorem, not the
  adequacy of the statement. What <verbatim|YangMills.JointExistence> does
  and does not require is examined separately in
  <verbatim|blueprint/units/YM-000026/handoff/results/G01/adequacy.md> on the
  branch <verbatim|codex/existence-monograph>, which shows that the same
  statement is also satisfied with lattice insertions that do not depend on
  the gauge configuration.

  <section|Checks not performed><label|checks-not-performed>

  <\itemize-minus>
    <item>No run in which Comparator's sandboxed <verbatim|lake build
    Solution> compiles the project from an empty build directory (about 3 h
    or more; inside the sandbox the thread limit would not apply). Unrun.

    <item>No external kernel (<verbatim|enable_nanoda>,
    <verbatim|external_kernels>). Unrun.

    <item>No run with <verbatim|lake comparator> of Lean 4.35.0 or later,
    which supersedes the standalone tool; it would need the project on a
    newer toolchain. Unrun.

    <item>No run with unpatched Comparator <verbatim|v4.32.0> and a
    <verbatim|landrun> commit from before 22 July 2026 (the alternative way
    round qualification 2). Unrun.

    <item>No project-specific negative control (a weakened
    <verbatim|Solution.lean>) through Comparator; only Comparator's own toy
    mismatch test was run. Upstream's <verbatim|verification/negative-controls>
    were not re-run.

    <item>The sample check of the evidence tree covers 200 of 9,471 project
    <verbatim|.olean> files and file modification times of the whole
    <verbatim|.lake>; a full re-hash was not done.
  </itemize-minus>

  <section|Retained logs><label|retained-logs>

  Kept on the audit host under <verbatim|/userdata/schmittj/ym-build/comparator/>
  (<verbatim|logs/> unless noted), not committed. SHA-256 digests:

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|File>>|<cell|<strong|SHA-256>>>|<row|<cell|<verbatim|comparator-run1.log>>|<cell|<verbatim|b53ed17107f854fdd37981df4d8a534b4216f8c7e3409288011d90dd2c44dba0>>>|<row|<cell|<verbatim|comparator-run2.log>>|<cell|<verbatim|33ce7173c0c1fa0fc39e1dbd4e703e7451e1924b35c0e62b57df7160bd12059d>>>|<row|<cell|<verbatim|comparator-run3.log>
  (passing run, 15,326 lines)>|<cell|<verbatim|f90aa53d2e26d1d96ac91ead9f9ef6518d9ea8ce250b1411e25ab636170df41c>>>|<row|<cell|<verbatim|challenge-rebuild.log>>|<cell|<verbatim|91baf941096c195494519675ac05ce44a696e424814472dd143719e8e6e782e6>>>|<row|<cell|<verbatim|negative-control.log>>|<cell|<verbatim|b52e85f23f6a11b6cd5361071cb01f3f89cb84be2c0f1c844a69d98be44e86d4>>>|<row|<cell|<verbatim|sample-list.txt>>|<cell|<verbatim|916b347d1ab5d59302a11aa7a4489815fb029eb02bcd22f6073cb07319cf397d>>>|<row|<cell|<verbatim|sample-before.sha256>,
  <verbatim|sample-after.sha256>>|<cell|<verbatim|ef3807bfbaa9904fdfb875c450aa761111907675e47be116c3ad995a5d45b1ed>
  (both)>>|<row|<cell|<verbatim|comparator-patch.diff>>|<cell|<verbatim|b19697b1c2b5b39ffcae9041f161999b5f799a8feea24b5e126a1781b4ea99db>>>|<row|<cell|<verbatim|../comparator-with-nanoda-false.json>>|<cell|<verbatim|0a35f968e6f0e790cc640e6658f6b3f4437e3bf54bca0da8ea1de719434452d0>>>|<row|<cell|<verbatim|../proj/comparator.json>
  (as shipped, equal to the evidence tree's)>|<cell|<verbatim|23e159f10cdb40b780ad8b42a2fc62d2f8e995ee932d955c97e54526d476b967>>>|<row|<cell|<verbatim|../run1.sh>,
  <verbatim|../run3.sh>, <verbatim|../chal.sh>>|<cell|<verbatim|3df9ecd1\<ldots\>9c1866c5>,
  <verbatim|fd7d5cae\<ldots\>4c339194>, <verbatim|c11592a2\<ldots\>fc69961a0>>>|<row|<cell|<verbatim|landrun>
  binary>|<cell|<verbatim|899645806d1f17cbd73b22912879e53ae6cca9e115d6fa6e6029a0d23cdd11c8>>>|<row|<cell|patched
  <verbatim|comparator> binary>|<cell|<verbatim|32f09b9615a971a033ab032f521788a20dec8561b0bf700c985cbdaa59906bec>>>|<row|<cell|<verbatim|lean4export>
  binary>|<cell|<verbatim|e57369980b0b81228580ce08066fb9bd738e717e002673a143f4956d217266b0>>>>>>

  The working directory holds about 58 GB (two project copies, tools, Go); it
  can be deleted once the logs are no longer needed.
</body>

<\initial>
  <\collection>
    <associate|html-title|Standalone Comparator run on 3456e5e \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|4|6>>
    <associate|auto-5|<tuple|5|7>>
    <associate|auto-6|<tuple|6|7>>
    <associate|checks-not-performed|<tuple|5|7>>
    <associate|commands-and-outcomes|<tuple|3|4>>
    <associate|method|<tuple|2|3>>
    <associate|result|<tuple|1|1>>
    <associate|retained-logs|<tuple|6|7>>
    <associate|standalone-comparator-run-on-3456e5e|<tuple|?|1>>
    <associate|what-the-run-does-and-does-not-establish|<tuple|4|6>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Result>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Method>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Commands
      and outcomes> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|What
      the run does and does not establish>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Checks
      not performed> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Retained
      logs> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>