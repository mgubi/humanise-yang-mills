<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../../outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../../index.tm><ym-nav-sep><hlink|Manuscript|../../../../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../../../glossary.tm><ym-nav-sep><hlink|Notation|../../../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../../../CONTRIBUTING.tm>>

  <ym-unit-nav||<hlink|YM-000022: Logarithmic asymptotics of the running
  inverse coefficient (draft)|../../correspondence.tm><ym-nav-sep><hlink|evidence|../../evidence/index.tm><ym-nav-sep><hlink|proof|../../proof.tm>|<hlink|YM-000026
  \<rightarrow\>|../../../YM-000026/correspondence.tm>>

  <ym-title|Hall definition and closure citation
  follow-up><label|hall-definition-and-closure-citation-follow-up>

  13 November 2026; session <verbatim|mgubi-astra-22-hall-20261113>. Human
  contributor: mgubi. Agent assistance: one GPT-6 Astra subagent through
  Codex, in the existing isolated author worktree; no further delegation.
  This is an author revision, not independent acceptance.

  <\itemize-minus>
    <item>Bounded task: <hlink|#114|https://github.com/hairer/humanise-yang-mills/issues/114>,
    linked to unit task #22.

    <item><hlink|Claim|https://github.com/hairer/humanise-yang-mills/issues/114#issuecomment-6847803945>,
    expires 13 November 2026, 11:00 UTC; parent owns release.

    <item>Response to <hlink|PR #113|https://github.com/hairer/humanise-yang-mills/pull/113>,
    following <hlink|merged PR #111|https://github.com/hairer/humanise-yang-mills/pull/111>.

    <item>Starting author commit: <verbatim|d4be082e0a932f8611eb6be992e0f97fdc7f1643>.

    <item>Publication branch: <verbatim|codex/astra-22-hall-20261113>, based
    on current main <verbatim|0a249931b985c9b467c961d4c12ad63d680d5813>.

    <item>PR #111 was merged by the maintainer at 08:17:09 UTC, so
    publication changed from updating that PR to a new focused draft PR.
    Fetching main and checking <verbatim|git merge-base --is-ancestor d4be082
    origin/main> confirmed that main contains the prior repair. The
    manuscript driver, preamble, pilot, bibliography and YM-000022
    metadata/correspondence were identical between that repair and the new
    base; the Hall-only diff and recorded fingerprints are unchanged.

    <item>Source pin remains <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>.
  </itemize-minus>

  The manuscript opening now defines the Lie algebra as the matrices whose
  exponentials lie in the group for every real parameter, verifies the closed
  matrix-group hypothesis, and cites Hall's definition and real vector-space
  / commutator closure theorem. The only bibliography edit is the new
  <verbatim|hall2000> entry. The correspondence records the literature
  application and the stale review status. Both scalar propositions, their
  proofs, the running-estimate input, metadata, prior evidence and prior
  reviews are unchanged by this follow-up. Optional review suggestions were
  not taken up.

  <section|Source verification and applicability><label|source-verification-and-applicability>

  Read issue #114 and comments, the latest #22 discussion, PR #113's body and
  both full report diffs, and the repository instructions. The earlier
  focused background search is retained in the preceding revision record; the
  shared <hlink|SU(2) note|../../../../background/su2-simplicity.tm>
  identifies Hall's version.

  Opened and read the original <hlink|versioned
  PDF|https://arxiv.org/pdf/math-ph/0005032v1> on 13 November 2026: Brian C.
  Hall, <em|An Elementary Introduction to Groups and Representations>,
  arXiv:math-ph/0005032v1, 31 May 2000.

  <\itemize-minus>
    <item>Chapter 2, Definition 2.2, printed p. 9: a matrix Lie group is a
    subgroup closed in the general linear group. A closed subgroup of the
    unitary group satisfies this because the unitary group is itself closed
    in the general linear group.

    <item>Chapter 3, Definition 3.13, printed p. 36: the
    exponential-generator definition uses <strong|every real> parameter,
    matching <verbatim|YM.Gauge.Generates> and the carrier of
    <verbatim|YM.Gauge.lie> in <verbatim|Lean/YM/Gauge/Lie.lean>.

    <item>Chapter 3, Theorem 3.16, printed pp. 40\U41: the set is closed
    under real scalar multiplication, sums and matrix commutators. Zero
    belongs because its exponential is the identity; finite dimension follows
    from the ambient matrix space. No connectedness or simplicity assumption
    is required for these facts. The manuscript retains its separate
    nonabelian simplicity assumption.
  </itemize-minus>

  The actual definition, theorem statement and applicability were inspected,
  not only a search snippet. The citation refers to this arXiv version rather
  than a later textbook edition. The manuscript uses the ordinary matrix
  commutator, not the alternative physics convention mentioned after Hall's
  theorem. No new Lean elaboration, axiom query, build or kernel replay was
  run; the previous source inspection evidence retains its original scope.

  <section|Bibliography impact and fingerprints><label|bibliography-impact-and-fingerprints>

  Enumerated every <verbatim|blueprint/units/*/unit.json> with Python's
  <verbatim|json> module and checked its <verbatim|manuscript> list for
  <verbatim|manuscript/references.bib>. Only <strong|YM-000022> lists that
  file. <strong|YM-000026> does not.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Unit>>|<cell|<strong|Before
  follow-up>>|<cell|<strong|After follow-up>>>|<row|<cell|YM-000022>|<cell|<verbatim|37a404dea24a3001c320680e4b25334e619d6865178c86e3d85993bb4000168f>>|<cell|<verbatim|24db9174727f1abf8bcb4211cb1c3bc601711dfd4c193983b1fde864a02ce056>>>|<row|<cell|YM-000026>|<cell|<verbatim|f472d9b4fad446870628145be73e82cef10f652d8bf5c0bf36a68c3ff0859add>>|<cell|<verbatim|f472d9b4fad446870628145be73e82cef10f652d8bf5c0bf36a68c3ff0859add>>>>>>

  PR #113's reports apply to the <strong|before> fingerprint. Existing review
  reports and approval fields are untouched. The unit stays draft with null
  approvals; renewed independent review is required for this follow-up.

  <section|Checks actually run><label|checks-actually-run>

  From the worktree root:

  <\shell-code>
    python3 scripts/check_blueprint.py

    python3 scripts/check_blueprint.py --fingerprint YM-000022

    python3 scripts/check_blueprint.py --fingerprint YM-000026

    git diff --check
  </shell-code>

  All pass: structural output is <verbatim|Blueprint structure OK: 2 units.
  Lean and mathematics were not verified.> Fingerprints are recorded above.
  No checker code changed, so the checker regression suite was not rerun.

  From <verbatim|manuscript/>:

  <\shell-code>
    latexmk -pdf -interaction=nonstopmode -halt-on-error
    -outdir=/tmp/ym22-hall-build main.tex \<gtr\>
    /tmp/ym22-hall-build/latexmk.txt 2\<gtr\>&1
  </shell-code>

  Result: exit 0, three pages. Rendered using the preceding revision's native
  PDFKit script with only the scratch directory changed:

  <\shell-code>
    sed 's@/tmp/ym22-repair-build@/tmp/ym22-hall-build@g'
    blueprint/units/YM-000022/revisions/mgubi-astra-22-repair-20261113/render.swift
    \<gtr\> /tmp/ym22-hall-build/render.swift

    swift -module-cache-path /tmp/ym22-repair-build/swift-cache
    /tmp/ym22-hall-build/render.swift

    rg -n 'Warning\|Overfull\|Underfull\|undefined\|\\?\\?'
    /tmp/ym22-hall-build/main.log /tmp/ym22-hall-build/main.txt
  </shell-code>

  Rendering succeeded for all three pages. The log/text scan found no matches
  (exit 1 as expected). All three PNGs were visually inspected: the new
  definition and Hall citation on page 1, the scalar argument across pages
  2\U3, and both bibliography entries on page 3 are legible without clipping
  or overlap. The bibliography renumbers the unchanged Lebl citation
  correctly.

  Python assertions check that the manuscript from the lattice-construction
  input onward is byte-for-byte unchanged from <verbatim|d4be082>, that the
  old bibliography is an unchanged prefix of the new one with exactly one new
  entry, and that all changed Markdown relative links resolve. No existing
  approval was refreshed.

  <ym-unit-nav||<hlink|YM-000022: Logarithmic asymptotics of the running
  inverse coefficient (draft)|../../correspondence.tm><ym-nav-sep><hlink|evidence|../../evidence/index.tm><ym-nav-sep><hlink|proof|../../proof.tm>|<hlink|YM-000026
  \<rightarrow\>|../../../YM-000026/correspondence.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|Hall definition and closure citation follow-up \U
    Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|2>>
    <associate|bibliography-impact-and-fingerprints|<tuple|2|2>>
    <associate|checks-actually-run|<tuple|3|2>>
    <associate|hall-definition-and-closure-citation-follow-up|<tuple|?|1>>
    <associate|source-verification-and-applicability|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Source
      verification and applicability> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography
      impact and fingerprints> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Checks
      actually run> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>