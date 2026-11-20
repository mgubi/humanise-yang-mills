<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Editorial and mathematical contract><label|editorial-and-mathematical-contract>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Audience and
    length> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Status of
    assertions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Terminology>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Definitions and
    reminders> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Dependency
    discipline> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Proof and
    literature policy> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Scope of the
    final theorem> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Chapter
    delivery> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>
  </table-of-contents>

  This file applies to every chapter. Read it together with the chapter
  specification and <verbatim|notation.md>; no other chapter need be read in
  full. Source paths are relative to the workspace root, not to this
  directory.

  <section|Audience and length><label|audience-and-length>

  Write for a mathematical researcher familiar with probability, analysis,
  and the aims of constructive QFT. Explain the mathematical role of each
  construction before its technical definition. Cite standard arguments
  rather than reproducing textbook proofs. Target approximately 440 pages
  including references and notation, with a hard editorial ceiling of 500. A
  chapter's allocation is a ceiling for its completed exposition, not a
  request to pad a draft.

  <section|Status of assertions><label|status-of-assertions>

  Distinguish (1) definitions, (2) standard results imported with an accurate
  citation and checked hypotheses, (3) source-specific results whose argument
  has been checked, and (4) conditional statements whose source-specific
  input still requires verification. An outline saying \Ptheorem\Q is not
  itself a proof. Conversely, a local lemma being conditional does not show
  that its hypotheses are unavailable elsewhere. Trace suppliers through the
  final assembly and record the exact matching problem.

  Do not call an argument verified merely because its formal counterpart is
  reported to compile. This project has the supplied informal manuscripts and
  outline; it has not independently checked the Lean development. Keep
  provenance claims attributed. Do not silently import a result from the
  alternative coordinated Wilson family into the selected family.

  For each source-specific theorem, record in a chapter audit: source labels;
  hypotheses and quantifiers; constants and their dependence; the common
  lattice family and refinement used; proof status; literature search; and
  any remaining obligation. A failure to find an older proof is not a
  priority claim.

  <section|Terminology><label|terminology>

  Use familiar mathematical language: local observable, polynomial jet,
  polymer activity, connected correlation, weighted norm, large-field region,
  small-field domain, stationary background, coupling adjustment,
  renormalization trajectory, reference scale, coefficient transfer, phase,
  spectral measure, Ward identity. Avoid the sources' financial and
  organizational metaphors. A translation is valid only after stating the
  exact mathematical object; \Puniform estimate\Q cannot replace an
  unspecified inequality.

  Do not use code names in the running exposition. Keep Lean names,
  source-specific jargon and supplier chains in the blueprint/audit only.
  Nonstandard but essential mathematical constructions require an explicit
  definition and a plain-language explanation.

  <section|Definitions and reminders><label|definitions-and-reminders>

  Introduce every nonstandard symbol before first use, including symbols in
  theorem statements. Avoid a global catalogue of technical definitions
  before motivation. Reserve global names according to
  <verbatim|notation.md>; use chapter-local symbols for disposable auxiliary
  objects.

  After a symbol has been unused for more than three or four typeset pages,
  add a short reminder or definition reference at its next use. Check this
  against the compiled PDF, not source-line distance. Repeat the meaning of
  the scale indices at the start of every multiscale chapter. Remind readers
  which state (mixed or a phase) a correlation belongs to.

  <section|Dependency discipline><label|dependency-discipline>

  Prove local analytic statements under explicit finite-scale assumptions
  before choosing a global trajectory. Put the simultaneous choice of
  constants and scales after the inequalities it must satisfy. Distinguish a
  definition of a global construction from its existence.

  The ultraviolet limit is the full spacing limit at fixed volume; volume
  extraction comes afterwards. Compactness supplies subsequences and does not
  prove convergence along all ultraviolet cutoffs. Every final conclusion
  must concern the same selected Wilson family. Refining a sequence preserves
  proved limits, but changing a family, normalization, or trajectory requires
  a separate comparison theorem.

  Place the free Maxwell calculations before their use in rank and
  stress-tensor arguments. Coordinate reflection spaces may precede
  continuous rotations. Full rotational covariance, phase disintegration, and
  relativistic reconstruction must follow the actual hypothesis dependencies,
  not the source's part numbering.

  <section|Proof and literature policy><label|proof-and-literature-policy>

  Before adding a proof, search original literature for the statement and its
  needed variant. Record an exact theorem/section where possible. If the
  argument is standard or an immediate adaptation, give the statement, cite
  it, and explain how the hypotheses match; do not reprove it. A related
  historical paper is not a substitute for the needed estimate. In
  particular, a perturbative beta-function calculation does not establish a
  uniform nonperturbative block-step error bound, and reflection positivity
  alone does not give the complete reconstruction theorem.

  Use original publications for attribution, with an accessible
  author/institutional copy when available. Preserve a distinction between
  bibliographic metadata checked online, full statement inspected, and
  applicability established. Do not copy the full source bibliography into
  the book indiscriminately.

  <section|Scope of the final theorem><label|scope-of-the-final-theorem>

  Keep explicit: no mass gap is established; no uniqueness of the
  infinite-volume limit or independence of block penalty is asserted; the
  lattice limit is the mixed state; reconstruction concerns phases; the trace
  asymptotic is in a selected phase. The operator product expansion is a
  remainder estimate at each finite degree, not convergence of an infinite
  series. Contact extensions are constructed after separated limits, and do
  not automatically inherit positivity or contact Ward identities. Excluding
  finite Wick profiles does not exclude all generalized free fields.

  <section|Chapter delivery><label|chapter-delivery>

  Deliver a LaTeX chapter, an audit note, and any new bibliography entries.
  Use ordinary <verbatim|definition>, <verbatim|lemma>,
  <verbatim|proposition>, <verbatim|theorem>, and <verbatim|remark>
  environments; prefix labels by chapter number. Do not edit another writer's
  chapter or global macros without coordination. Give the editor concrete
  unresolved questions with source references rather than a generic request
  for verification.

  Before accepting a chapter: verify definitions, common conventions,
  citation applicability, cross-references, quantifier order, page budget,
  and the long-gap notation reminders. A clean LaTeX build checks
  typesetting, not mathematics.
</body>

<\initial>
  <\collection>
    <associate|html-title|Editorial and mathematical contract \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|audience-and-length|<tuple|1|1>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|2>>
    <associate|auto-5|<tuple|5|2>>
    <associate|auto-6|<tuple|6|3>>
    <associate|auto-7|<tuple|7|3>>
    <associate|auto-8|<tuple|8|3>>
    <associate|chapter-delivery|<tuple|8|3>>
    <associate|definitions-and-reminders|<tuple|4|2>>
    <associate|dependency-discipline|<tuple|5|2>>
    <associate|editorial-and-mathematical-contract|<tuple|?|1>>
    <associate|proof-and-literature-policy|<tuple|6|3>>
    <associate|scope-of-the-final-theorem|<tuple|7|3>>
    <associate|status-of-assertions|<tuple|2|1>>
    <associate|terminology|<tuple|3|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Audience
      and length> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Status
      of assertions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Terminology>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Definitions
      and reminders> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Dependency
      discipline> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Proof
      and literature policy> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Scope
      of the final theorem> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Chapter
      delivery> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>