<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../source/audit.tm><ym-nav-sep><hlink|Literature|../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../CONTRIBUTING.tm>>

  <ym-title|Start a proof unit><label|start-a-proof-unit>

  Copy <verbatim|unit.json> and <verbatim|correspondence.md> into
  <verbatim|blueprint/units/YM-\<less\>issue\<gtr\>/>. Place
  <verbatim|section.tex> under the task's owned path in
  <verbatim|manuscript/>; do not copy this whole template directory into the
  blueprint. Replace all placeholders. List the section and every local
  mathematical support file in <verbatim|manuscript>. Add its input to
  <verbatim|manuscript/main.tex> within the claimed scope and build it. Write
  the proof only in LaTeX. The correspondence record links its labels.
</body>

<\initial>
  <\collection>
    <associate|html-title|Start a proof unit \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|start-a-proof-unit|<tuple|?|1>>
  </collection>
</references>