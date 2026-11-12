<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../outline.tm><ym-nav-sep><hlink|Unit
  plan|../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../index.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../glossary.tm><ym-nav-sep><hlink|Notation|../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../source/audit.tm><ym-nav-sep><hlink|Literature|../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../CONTRIBUTING.tm>>

  <ym-title|Reusable results from the literature><label|reusable-results-from-the-literature>

  This directory records existing mathematical results that can be invoked in
  the monograph. Search it before developing a new proof or repeating a
  literature search. A note is an internal record of a source match; the
  monograph cites the mathematical source and explains the application.

  Create one note per useful theorem or coherent package of results, using
  <hlink|the template|../../templates/background-result.tm>. Use a
  descriptive filename such as <verbatim|\<less\>topic\<gtr\>.md>; agree on
  the scope in a literature task before creating it. Do not catalogue every
  elementary fact or Lean helper. Related proof units link to the same note
  and reuse its reference information.

  A source match needs the actual statement, a precise bibliographic locator,
  and a comparison with the relevant Lean definitions and hypotheses. A
  theorem with a similar name may not suffice. Mark unverified leads and
  differences explicitly; the note becomes accepted only when an independent
  reviewer has checked the match and recorded the reviewed commit and review
  link. A template or an agent's guess does not constitute acceptance.

  The consuming proof must check the theorem's hypotheses in its particular
  setting and prove any additional steps. If the source result needs a
  nontrivial extension, create a proof task for that extension. Do not copy
  the published proof merely because Lean contains a formal implementation of
  it.

  On changing a result's statement, reference, or scope of applicability,
  mark its acceptance stale and identify affected proof units for re-review.
  Background notes have a manual review process; the current structural
  checker does not validate their references, acceptance, or downstream
  impact.
</body>

<\initial>
  <\collection>
    <associate|html-title|Reusable results from the literature \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|reusable-results-from-the-literature|<tuple|?|1>>
  </collection>
</references>