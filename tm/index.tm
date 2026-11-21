<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<ym-nav-here|Home><ym-nav-sep><hlink|The
  theorem|blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|blueprint/index.tm><ym-nav-sep><hlink|Manuscript|manuscript/index.tm><ym-nav-sep><hlink|Monograph|manuscript/existence.tm><ym-nav-sep><hlink|Glossary|blueprint/glossary.tm><ym-nav-sep><hlink|Notation|docs/notation.tm><ym-nav-sep><hlink|Source
  audit|source/audit.tm><ym-nav-sep><hlink|Literature|blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|CONTRIBUTING.tm>>

  <ym-title|Humanise Yang-Mills><label|humanise-yang-mills>

  <\ym-manuscript-link>
    <strong|The LaTeX documents, converted to HTML from their source:>

    <\itemize>
      <item><hlink|The four-dimensional Yang\UMills construction: Foundations
      and the existence argument (manuscript/existence.tex)|manuscript/existence.tm>

      <item><hlink|HumanizeYM_v2: The construction of four-dimensional
      quantum Yang\UMills theory (manuscript/HumanizeYM_v2/main.tex)|manuscript/HumanizeYM_v2/main.tm>

      <item><hlink|Four-dimensional Yang\UMills theory: A constructive
      approach (manuscript/HumanizeYM_v3/monograph.tex)|manuscript/HumanizeYM_v3/monograph.tm>
    </itemize>
  </ym-manuscript-link>

  This project coordinates a crowd-sourced effort to turn the announced Lean
  formalisation of four-dimensional Yang\UMills theory into a human-readable
  proof. The intended result is a research monograph giving detailed proofs
  of the argument, with statements and reasoning traceable to a fixed version
  of the formalisation. Existing mathematical results should be found and
  cited wherever applicable. Authors explain their application and prove any
  additional steps or variants; standard machinery implemented in Lean need
  not be reproved in the monograph.

  The current authoritative manuscript is
  <hlink|HumanizeYM_v3|manuscript/HumanizeYM_v3/index.tm>. The
  <hlink|monograph PDF|https://github.com/hairer/humanise-yang-mills/blob/main/manuscript/HumanizeYM_v3/monograph.pdf>
  opens with the main theorem and a guide to its proof.

  At this stage, the overall structure of the document is frozen. Anyone is
  still welcome to contribute PRs with improvements to the exposition or to
  the proof itself.

  <strong|Lean source and dependency mapping.> The source is pinned to
  revision <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>. The 17
  audited release roots and a first-pass mathematical decomposition are
  recorded in the <hlink|source audit|source/audit.tm>, <hlink|proof
  outline|blueprint/outline.tm>, and <hlink|provisional unit
  plan|blueprint/unit-plan.tm>. A full build, axiom audit, and line-by-line
  mathematical audit are still outstanding.

  <section|Repository map><label|repository-map>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Path>>|<cell|<strong|Purpose>>>|<row|<cell|<verbatim|Lean/>>|<cell|The
  upstream formalisation, preserved at a fixed
  revision>>|<row|<cell|<verbatim|source/>>|<cell|Source provenance, build
  instructions, and audit evidence>>|<row|<cell|<verbatim|blueprint/>>|<cell|Interfaces,
  literature notes, source correspondence, and review
  records>>|<row|<cell|<verbatim|manuscript/HumanizeYM_v3/>>|<cell|Current
  authoritative manuscript, LaTeX sources and compiled
  PDF>>|<row|<cell|<verbatim|Bots/>>|<cell|Durable discoveries and handoffs
  for future sessions>>|<row|<cell|<verbatim|templates/>>|<cell|Proof unit
  and review templates>>|<row|<cell|<verbatim|docs/>>|<cell|Contributor,
  coordinator, and mathematical review guidance>>|<row|<cell|<verbatim|scripts/>>|<cell|Small
  structural checks, with no third-party Python dependencies>>>>>

  The Lean source, proof map, and English exposition have separate roles.
  Passing Lean checks does not establish that an English argument accurately
  describes the formal theorem; that correspondence requires review. See
  Lean's <hlink|proof validation guidance|https://lean-lang.org/doc/reference/latest/ValidatingProofs/>.

  <section|Prior dependency mapping><label|prior-dependency-mapping>

  The initial source clustering and much of the navigation data used by this
  repository come from Scott Armstrong's <hlink|Yang-Mills informalization
  project|https://github.com/scottnarmstrong/yang-mills-informalization>.
  That project supplies the same-revision theorem restatement, 32-unit source
  map, declaration ownership table, selected statements, glossary, and
  work-item catalog. This repository's first-pass monograph outline adapts
  that work into proposed mathematical proof units; it does not claim the
  underlying mapping as original. See the <hlink|pinned attribution and
  methodological limits|blueprint/outline.tm#evidence-used-for-this-map>.

  <section|Licence><label|licence>

  Except where another notice applies, original material in this repository
  is licensed under the <hlink|Creative Commons Attribution 4.0 International
  licence|https://github.com/hairer/humanise-yang-mills/blob/main/LICENSE>.
  The imported formalisation under <verbatim|Lean/> retains its separate
  <hlink|upstream licence|https://github.com/hairer/humanise-yang-mills/blob/main/Lean/LICENSE>
  and other notices; the root licence does not relicense that third-party
  material.
</body>

<\initial>
  <\collection>
    <associate|html-title|Humanise Yang-Mills \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|2>>
    <associate|humanise-yang-mills|<tuple|?|1>>
    <associate|licence|<tuple|3|2>>
    <associate|prior-dependency-mapping|<tuple|2|2>>
    <associate|repository-map|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Repository
      map> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Prior
      dependency mapping> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Licence>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>