<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Literature verification ledger><label|literature-verification-ledger>

  This ledger distinguishes checking a reference from checking that its
  hypotheses apply. Chapter audit files supply the theorem-specific entries.
  The bibliography in the source manuscripts is a starting list, not a list
  of verified dependencies.

  <section|Verified mathematical input for the polymer
  chapter><label|verified-mathematical-input-for-the-polymer-chapter>

  <strong|Ueltschi (2004), \PCluster expansions and correlation functions,\Q
  Moscow Mathematical Journal 4, 511\U522.> Full statement inspected in the
  <hlink|author's arXiv text, version 3|https://arxiv.org/html/math-ph/0304003v3>,
  Ÿ2, Theorem 1, equations (3)\U(4). It supplies the exponential cluster
  identity and absolute rooted bound for a complex activity measure, under
  the weighted incompatibility criterion. The hard-core case uses the
  interaction \<minus\>1 on incompatible pairs and 0 otherwise. The extra
  integrability condition is automatic for a finite volume under a finite
  site sum and nonempty supports. This is an appropriate citation in place of
  reproving tree combinatorics. Theorem 3 concerns decay of correlations; its
  applicability to the source's marked observables must be checked
  separately.

  <strong|Kotecký\UPreiss (1986), \PCluster expansion for abstract polymer
  models,\Q Communications in Mathematical Physics 103, 491\U498.> Original
  attribution, <hlink|DOI 10.1007/BF01211762|https://doi.org/10.1007/BF01211762>.
  Publication metadata verified; use Ueltschi's explicitly inspected
  statement for the exact rooted estimate in the present conventions. Martin
  cites the original theorem on pp. 492\U493. Do not claim to have inspected
  those pages in this pass.

  The weighted geometric tail used in Martin
  <verbatim|existence/cluster-expansion.tex>,
  <verbatim|eq:cluster-local-tail>, can be obtained by applying the rooted
  bound after multiplying activities by a support weight and an
  activity-count parameter greater than one. This is a standard adaptation,
  not a new cluster-expansion proof. Its application still requires a site
  sum for the <strong|actual> activities; no abstract convergence theorem
  supplies that input.

  <section|Source attribution not independently verified
  online><label|source-attribution-not-independently-verified-online>

  The supplied outlines identify a Lean development at commit
  <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>. An attempt to open the
  repository URL through the browser search tool returned a cache miss. This
  neither disproves the reference nor verifies its contents. Attribute the
  formal-verification claims to the supplied manuscripts; do not claim this
  project has independently run the kernel or checked the formal-to-informal
  correspondence.

  <section|Required ledger entry for each future
  proof><label|required-ledger-entry-for-each-future-proof>

  Record: intended proposition; search terms and original sources inspected;
  exact theorem/section; matching hypotheses; whether the result is imported,
  immediately adapted, or proved here; and any mismatch still requiring an
  argument. Full-text access failure is recorded explicitly. A bibliographic
  abstract or a title alone cannot validate the precise hypothesis needed in
  the book.
</body>

<\initial>
  <\collection>
    <associate|html-title|Literature verification ledger \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|1>>
    <associate|literature-verification-ledger|<tuple|?|1>>
    <associate|required-ledger-entry-for-each-future-proof|<tuple|3|1>>
    <associate|source-attribution-not-independently-verified-online|<tuple|2|1>>
    <associate|verified-mathematical-input-for-the-polymer-chapter|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Verified
      mathematical input for the polymer chapter>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Source
      attribution not independently verified online>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Required
      ledger entry for each future proof>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>