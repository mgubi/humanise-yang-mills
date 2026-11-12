<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../index.tm><ym-nav-sep><hlink|The
  theorem|public-statement.tm><ym-nav-sep><hlink|Proof
  outline|outline.tm><ym-nav-sep><hlink|Unit
  plan|unit-plan.tm><ym-nav-sep><ym-nav-here|Blueprint><ym-nav-sep><hlink|Manuscript|../manuscript/index.tm><ym-nav-sep><hlink|Glossary|glossary.tm><ym-nav-sep><hlink|Notation|../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../source/audit.tm><ym-nav-sep><hlink|Literature|external-map.tm><ym-nav-sep><hlink|Proof
  standard|../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../CONTRIBUTING.tm>>

  <ym-title|Mathematical blueprint><label|mathematical-blueprint>

  The blueprint connects the formal theorem to a readable mathematical
  argument. The <hlink|first-pass outline|outline.tm> records the main
  dependency structure, and the <hlink|provisional unit plan|unit-plan.tm>
  turns the source clusters into proposed mathematical work packages. Use the
  shared <hlink|glossary|glossary.tm> and <hlink|notation
  contract|../docs/notation.tm>.

  The source clusters are adapted from Scott Armstrong's <hlink|Yang-Mills
  informalization project|https://github.com/scottnarmstrong/yang-mills-informalization>.
  Preserve that attribution in derivative maps, task descriptions, and
  published material that uses its unit boundaries, declaration assignments,
  or summaries.

  The blueprint records the evolving interfaces and verification of a
  research monograph. The mathematical text is written directly in
  <verbatim|manuscript/> LaTeX; there is no separate blueprint prose stage
  and no duplicate Markdown proof. Only a section's own interface must be
  precise before it is drafted; outstanding prerequisite proofs stay
  explicit.

  Keep the full formal dependency inventory separately as source evidence.
  Only mathematical interfaces that need explanation or proof become proof
  units; generated helpers and standard machinery do not each require a unit.
  Classify groups according to the <hlink|proof
  standard|../docs/proof-standard.tm> before assigning prose work.

  Use <hlink|background notes|background/index.tm> to share verified
  literature results and record how they match the formalisation. Substantive
  uses still require their hypotheses to be checked in the consuming proof.
  This avoids repeatedly searching for, translating, or reproving the same
  established machinery.

  <section|Proof units><label|proof-units>

  Each unit lives in <verbatim|units/YM-\<less\>six-digit canonical issue
  number\<gtr\>/> and contains <verbatim|unit.json>,
  <verbatim|correspondence.md>, evidence as needed, and eventually
  <verbatim|reviews/>. The mathematical section lives in
  <verbatim|manuscript/> and is linked by metadata. Use <hlink|the template
  instructions|../templates/proof-unit/index.tm>. A revision or review task
  keeps the original unit ID; it does not create a second owner of the same
  declarations.

  <verbatim|unit.json> fields:

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Field>>|<cell|<strong|Meaning>>>|<row|<cell|<verbatim|id>,
  <verbatim|title>, <verbatim|issue>>|<cell|Stable ID, mathematical title,
  canonical task URL>>|<row|<cell|<verbatim|source_revision>>|<cell|Exact
  active revision from <verbatim|source/upstream.json>>>|<row|<cell|<verbatim|status>>|<cell|<verbatim|planned>,
  <verbatim|draft>, or <verbatim|reviewed>; separate from the live task
  status>>|<row|<cell|<verbatim|authors>>|<cell|Human GitHub accounts
  responsible for the unit>>|<row|<cell|<verbatim|declarations>>|<cell|Owned
  results/definitions, each with <verbatim|name>, <verbatim|module>, and
  <verbatim|path>>>|<row|<cell|<verbatim|manuscript>>|<cell|Nonempty list of
  repository-relative <verbatim|.tex> and <verbatim|.bib> paths under
  <verbatim|manuscript/>: the section and all local mathematical support
  files>>|<row|<cell|<verbatim|depends_on>>|<cell|IDs of conceptual
  prerequisite units, including planned units>>|<row|<cell|<verbatim|reviews>>|<cell|<verbatim|lean>
  and <verbatim|mathematics>; each is null or a review record>>>>>

  Owned declarations are unique across units. Supporting declarations owned
  elsewhere are cited in the prose and linked via <verbatim|depends_on>; they
  are not added as duplicate ownership. Standard library/background results
  can be cited precisely in the prose without creating an exposition unit for
  each one, including results implemented from scratch in the upstream
  project. <verbatim|depends_on> lists only other proof-unit IDs; literature
  notes are linked in <verbatim|correspondence.md>. There is no requirement
  for every formal dependency to appear in this list or be owned by a unit. A
  planned unit still requires a real source declaration and an explicit
  interface; it is not a guessed theorem.

  Each non-null review has <verbatim|reviewer> (a human account other than an
  author), <verbatim|evidence> (a repository-relative file under this unit's
  <verbatim|reviews/>), and <verbatim|content_sha256>. Generate the latter
  after finalising the content:

  <\shell-code>
    python3 scripts/check_blueprint.py --fingerprint YM-000123
  </shell-code>

  The fingerprint covers the unit's identity, title, source revision,
  declarations, dependencies, <verbatim|correspondence.md>, and the paths and
  complete contents of every file in <verbatim|manuscript>. It excludes
  status, author credits, and review records so acceptance can be recorded
  without changing the reviewed content. Include nested inputs, shared
  mathematical macros and bibliography; reviewers must check that this
  explicit list is complete. The checker does not parse LaTeX imports. A
  shared support-file edit conservatively invalidates reviews of every unit
  listing it. The assembly file need not be listed if it only arranges
  sections and contains no mathematical content or notation affecting the
  unit. Changes to dependency statements still require a separate assessment
  of downstream uses. Review evidence should say which content was checked
  and disclose agent assistance.

  The checker rejects duplicate ownership, unknown dependencies, conceptual
  cycles, missing source paths, stale source revisions, and stale or
  incomplete review records. It does not resolve Lean names, inspect proof
  terms, authenticate reviewers, check the adequacy of prose, or inspect
  GitHub claims. Those need source tooling and human review.
  <verbatim|reviewed> is local to a unit, not a claim of global completion.

  Legacy <verbatim|proof.md> links may remain as short redirects, but are not
  proof sources or review records. Historical evidence must be dated and
  distinguished from current verification. Never copy old reviewer approvals
  onto migrated content.
</body>

<\initial>
  <\collection>
    <associate|html-title|Mathematical blueprint \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|mathematical-blueprint|<tuple|?|1>>
    <associate|proof-units|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Proof
      units> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>