<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../index.tm><ym-nav-sep><hlink|Manuscript|../../../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../../glossary.tm><ym-nav-sep><hlink|Notation|../../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../../CONTRIBUTING.tm>>

  <ym-unit-nav||<hlink|YM-000022: Logarithmic asymptotics of the running
  inverse coefficient (draft)|../correspondence.tm><ym-nav-sep><hlink|evidence|index.tm><ym-nav-sep><hlink|proof|../proof.tm>|>

  <ym-title|Historical pilot record><label|historical-pilot-record>

  Archived from <verbatim|blueprint/pilots/running-coupling.md> during the
  LaTeX migration. The validation counts and build statements below describe
  the earlier pilot, not the current unit. The current record is
  <hlink|correspondence.md|../correspondence.tm>.

  <ym-title|Running-coupling pilot correspondence><label|running-coupling-pilot-correspondence>

  <strong|Status:> Draft for independent mathematical and Lean-correspondence
  review. This pilot follows the scope of the unpublished <hlink|T08 task
  draft|https://github.com/hairer/humanise-yang-mills/blob/main/.github/task-drafts/T08-running-coupling-pilot.md>.
  The proof is in <hlink|running-coupling.tex|https://github.com/hairer/humanise-yang-mills/blob/main/manuscript/pilots/running-coupling.tex>.
  Imported source revision is OpenAI-YM commit
  <hlink|3456e5e75cf8d4cd558955a5c7638fba2d68f464|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464>.

  <section|Statement and notation><label|statement-and-notation>

  The target is <hlink|YM.Pert.Asymptotics.comparison|https://github.com/hairer/humanise-yang-mills/blob/main/Lean/YM/Pert/Asymptotics/RawAxis.lean#L36>.
  It assumes an internal construction family satisfying YM.Family.Makes, a
  simple internal gauge group, and natural-number sequences N and k with i
  \<leqslant\> N(i) eventually. The limit is along the natural-number tail,
  with no monotonicity or divergence requirement on k. There is no
  requirement to take an infinite-volume limit. The statement uses the
  representation fixed as part of the gauge-group data.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Symbol
  in the proof>>|<cell|<strong|Meaning>>|<cell|<strong|Source>>>|<row|<cell|<math|G,\<frak-g\>,r<rsub|G>>>|<cell|Internal
  closed unitary matrix group, its real Lie algebra, and representation
  dimension>|<cell|<hlink|Shared gauge notation|../../../glossary.tm#-gauge-group-and-spacetime>,
  YM.Gauge.Simple in <hlink|Gauge/Lie.lean|https://github.com/hairer/humanise-yang-mills/blob/main/Lean/YM/Gauge/Lie.lean#L178>>>|<row|<cell|<math|\<cal-C\>>>|<cell|Internal
  family with the additional Makes hypothesis>|<cell|YM.Family and
  YM.Family.Makes in <hlink|Source/Construction.lean|https://github.com/hairer/humanise-yang-mills/blob/main/Lean/YM/Source/Construction.lean#L24>>>|<row|<cell|<math|N,p,m>>|<cell|Starting
  lattice level, period index, and trajectory stage>|<cell|Arguments of
  YM.RG.History.\<beta\> in <hlink|RG/History.lean|https://github.com/hairer/humanise-yang-mills/blob/main/Lean/YM/RG/History.lean#L211>>>|<row|<cell|<math|B<rsub|j>,a<rsub|m>,s<rsub|m>>>|<cell|Block
  factor, spacing at stage <math|m>, and the natural logarithm of its
  reciprocal>|<cell|The schedule's <hlink|block size and
  denominator|https://github.com/hairer/humanise-yang-mills/blob/main/Lean/YM/Lattice/Scale.lean#L31>
  and its <hlink|spacing and divergence|https://github.com/hairer/humanise-yang-mills/blob/main/Lean/YM/Lattice/Scale.lean#L99>>>|<row|<cell|<math|\<beta\><rsub|N,p,m>>>|<cell|Stage
  coefficient, read from the representative at
  <math|<around|(|N,p,m|)>>>|<cell|YM.RG.History.\<beta\> in
  <hlink|RG/History.lean|https://github.com/hairer/humanise-yang-mills/blob/main/Lean/YM/RG/History.lean#L211>.
  The bare endpoint <math|\<beta\><rsub|N,p>=\<beta\><rsub|N,p,N>> is
  YM.Family.beta in <hlink|Source/Construction.lean|https://github.com/hairer/humanise-yang-mills/blob/main/Lean/YM/Source/Construction.lean#L38>.>>|<row|<cell|<math|<wide|\<beta\>|\<bar\>>,b<rsub|0><around|(|G|)>,C<rsub|\<frak-g\>>>>|<cell|Reference
  intercept, logarithmic slope divided by two, and normalized adjoint
  Casimir>|<cell|YM.RG.Calendar.hatBeta in
  <hlink|RG/History.lean|https://github.com/hairer/humanise-yang-mills/blob/main/Lean/YM/RG/History.lean#L79>,
  YM.Pert.Asymptotics.b0 and b0_normalizes in
  <hlink|RawAxis.lean|https://github.com/hairer/humanise-yang-mills/blob/main/Lean/YM/Pert/Asymptotics/RawAxis.lean#L13>,
  and YM.Gauge.casimir and slopeConstant in
  <hlink|Gauge/Colors.lean|https://github.com/hairer/humanise-yang-mills/blob/main/Lean/YM/Gauge/Colors.lean#L180>>>|<row|<cell|<math|g<rsub|N,p,m>>>|<cell|Inverse
  square root of the stage coefficient>|<cell|YM.Pert.Asymptotics.regulatorRun
  in <hlink|RawAxis.lean|https://github.com/hairer/humanise-yang-mills/blob/main/Lean/YM/Pert/Asymptotics/RawAxis.lean#L35>.
  The mathematical limit only needs the positive tail, where the ordinary and
  totalized real operations agree.>>>>>

  <section|Proof correspondence><label|proof-correspondence>

  <\enumerate>
    <item><strong|Running input.> YM.Family.Makes.wilson gives
    YM.RG.History.Selected, whose running condition is YM.RG.History.Running.
    Its comparison coefficient is YM.RG.Calendar.hatBeta. The construction of
    this history and its running estimate are upstream dependencies of the
    pilot. The proof states the estimate and retains its threshold uniform in
    <math|N,p>. It proves divergence of the logarithmic scale by bounding the
    product of the block factors below by <math|3<rsup|m>>.

    <item><strong|Uniform ratio estimate.> YM.Pert.Asymptotics.zeroUp_bound
    divides the running estimate by the eventually positive logarithmic scale
    and bounds the additive intercept divided by that scale. The exposition
    chooses <math|\<varepsilon\>/2> for each error budget, with the intercept
    inequality strict. The source uses <math|\<varepsilon\>/4>.

    <item><strong|Positive slope.> YM.Gauge.casimir_pos and
    YM.Gauge.slopeConstant_pos in <hlink|Gauge/Casimir.lean|https://github.com/hairer/humanise-yang-mills/blob/main/Lean/YM/Gauge/Casimir.lean#L160>
    supply the positivity used by the limit. The exposition gives the
    invariant-trace argument in terms of the squared norms of brackets of
    basis vectors. The normalization comes from YM.Gauge.trace_color in
    <hlink|Gauge/Colors.lean|https://github.com/hairer/humanise-yang-mills/blob/main/Lean/YM/Gauge/Colors.lean#L71>.

    <item><strong|Admissible tail and continuity.> The hypothesis on <math|N>
    makes the uniform ratio bound applicable along the chosen sequences. The
    exposition infers eventual positivity of the ratio and uses continuity of
    <math|x\<mapsto\>x<rsup|-1/2>> on <math|<around|(|0,\<infty\>|)>>. The
    source composes square root with reciprocal at the positive limit and
    uses eventual equality of the resulting expression with the scaled proxy.
  </enumerate>

  The comparison is about the trajectory coefficient and includes the bare
  endpoint as a special case. The identification with a physical X-scheme
  coupling and the tangent-one test are separate questions. The
  <hlink|statement ledger|../../../public-statement.tm> records the scope of
  this companion result.

  <section|Literature and source evidence><label|literature-and-source-evidence>

  The pinned <hlink|Armstrong outline, VII.5|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/VII-5.md>
  was consulted for the split between the uniform estimate and the companion
  limit. A focused search for the exact comparison and for lattice
  renormalization of the gauge coupling identified Baªaban's <hlink|1987
  small-field renormalization paper|https://doi.org/10.1007/BF01215223> as a
  lead for the upstream construction. The Rutgers <hlink|bibliographic record
  and abstract|https://www.researchwithrutgers.org/en/publications/renormalization-group-approach-to-lattice-gauge-field-theories-i-/>
  were checked. Its recursive flow has not been matched to this history's
  uniform running estimate. The pilot uses the stated construction input and
  proves the scalar comparison directly.

  The existing <hlink|release-root axiom audit|../../../../source/evidence/axioms-3456e5e.tm>
  records propext, Classical.choice, and Quot.sound for comparison. The pilot
  uses that recorded evidence. A read-only GPT-6 Luna agent inspected the
  bounded Lean dependencies with targeted line reads and searches. It used
  <verbatim|sha256sum> to check <verbatim|RawAxis.lean>,
  <verbatim|History.lean>, <verbatim|Scale.lean>,
  <verbatim|Construction.lean>, <verbatim|Colors.lean>,
  <verbatim|Casimir.lean>, <verbatim|Lie.lean>, and
  <verbatim|MatrixGroup.lean>. All eight matched the imported
  <verbatim|Lean/SOURCES.sha256>. The agent's attempted <verbatim|lake env
  lean Lean/YM/Pert/Asymptotics/RawAxis.lean> returned \POperation not
  permitted\Q. This pilot has no fresh successful Lean elaboration.

  The parent wrote the LaTeX argument and ran <verbatim|latexmk -pdf
  -interaction=nonstopmode -halt-on-error> with temporary output. The final
  build produced one page with no warnings. The rendered page was checked
  visually. <verbatim|python3 scripts/check_blueprint.py> passed with zero
  canonical units. <verbatim|git diff --check> passed, and the two new files
  were checked separately for trailing whitespace and relative link targets.

  <ym-unit-nav||<hlink|YM-000022: Logarithmic asymptotics of the running
  inverse coefficient (draft)|../correspondence.tm><ym-nav-sep><hlink|evidence|index.tm><ym-nav-sep><hlink|proof|../proof.tm>|>
</body>

<\initial>
  <\collection>
    <associate|html-title|Historical pilot record \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|3>>
    <associate|historical-pilot-record|<tuple|?|1>>
    <associate|literature-and-source-evidence|<tuple|3|3>>
    <associate|proof-correspondence|<tuple|2|2>>
    <associate|running-coupling-pilot-correspondence|<tuple|?|1>>
    <associate|statement-and-notation|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Statement
      and notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Proof
      correspondence> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Literature
      and source evidence> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>