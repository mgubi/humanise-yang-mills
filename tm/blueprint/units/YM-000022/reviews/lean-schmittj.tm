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
  inverse coefficient (draft)|../correspondence.tm><ym-nav-sep><hlink|evidence|../evidence/index.tm><ym-nav-sep><hlink|proof|../proof.tm>|<hlink|YM-000026
  \<rightarrow\>|../../YM-000026/correspondence.tm>>

  <ym-title|Review of a proof unit><label|review-of-a-proof-unit>

  <\itemize-minus>
    <item>Unit: YM-000022, <verbatim|blueprint/units/YM-000022/>

    <item>Role: Lean correspondence

    <item>Human reviewer: schmittj (no acceptance recorded; see the last
    section)

    <item>Agent assistance: one Claude Opus reviewer agent, coordinated by a
    Claude session. The agent read the pinned source text and wrote this
    report. No other model was used.

    <item>Content SHA-256: <verbatim|37a404dea24a3001c320680e4b25334e619d6865178c86e3d85993bb4000168f>
    (<verbatim|python3 scripts/check_blueprint.py --fingerprint YM-000022> at
    commit <verbatim|d4be082>, head of draft PR #111; equal to the value in
    the revision README)

    <item>Reviewed content: commit <verbatim|d4be082>, the single revision
    commit on top of <verbatim|47762e9>. File SHA-256:
    <verbatim|manuscript/pilots/running-coupling.tex>
    <verbatim|3f10d3ac67788342c85ed368691b8ea35b81bbc052ec1dd7a67c9a7e1d02a0ca>;
    <verbatim|correspondence.md> <verbatim|ab7053e8121e39802821ddbc2872160b91d4722aa686b66f25e0ccea9f17958c>;
    <verbatim|unit.json> <verbatim|cfc20482faefa90b34cca4d903b0b21620efd55e60dd333cbeb69b8b96986731>;
    <verbatim|revisions/mgubi-astra-22-repair-20261113/README.md>
    <verbatim|2cba60fb7c67fc7c761611f18ec5973b8b074061c85db89a1d539678dd157cd3>;
    <verbatim|manuscript/preamble.tex> <verbatim|0827ef17\<ldots\>90df>;
    <verbatim|manuscript/references.bib> <verbatim|2d5d1447\<ldots\>dbb7>.

    <item>Manuscript files and labels: <verbatim|manuscript/pilots/running-coupling.tex>
    (<verbatim|sec:running-coefficient>, <verbatim|eq:running>,
    <verbatim|prop:uniform-extraction>, <verbatim|prop:running-asymptotic>),
    <verbatim|manuscript/preamble.tex>, <verbatim|manuscript/references.bib>.

    <item>Source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>

    <item>Review task and PR: <hlink|issue
    #22|https://github.com/hairer/humanise-yang-mills/issues/22>, review
    claim by session <verbatim|schmittj-claude-review22-rev-20261113>; author
    revision in draft PR #111.

    <item>Outcome: no change requested (two NITs below). Every cited
    declaration exists under the stated name and path, and its type or
    definition says what the English says. This is an agent review without
    human acceptance.
  </itemize-minus>

  I am not an author of this unit.

  <section|Findings and evidence><label|findings-and-evidence>

  Evidence level: <strong|[S]> source text read at the pinned revision under
  <verbatim|Lean/>; <strong|[R]> the unit's retained elaboration output
  <verbatim|evidence/lean-inspection.txt>, read but not regenerated. I did
  not elaborate anything myself. The ten source files listed in the
  revision's <verbatim|source-checksums.txt> match
  <verbatim|Lean/SOURCES.sha256> (the seven-file
  <verbatim|evidence/check_sources.py> passes; I checked
  <verbatim|Wilson/Law.lean>, <verbatim|Gauge/MatrixGroup.lean>,
  <verbatim|Lattice/Faces.lean> against the manifest by hand).

  <subsection|Owned statements (unchanged by the
  revision)><label|owned-statements-unchanged-by-the-revision>

  <\enumerate>
    <item><verbatim|YM.Pert.Asymptotics.zeroUp_bound>
    (<verbatim|RawAxis.lean:15\U30>) [S, R]: for <verbatim|C : Family G>,
    <verbatim|C.Makes>, <verbatim|0 \<less\> \<varepsilon\>>, eventually in
    <verbatim|m>, <verbatim|\<forall\> N p, m \<leq\> N \<rightarrow\>
    \|C.path.\<beta\> N p m / C.S.scale m \<minus\> 2 * b0 G\| \<less\>
    \<varepsilon\>>. No simplicity hypothesis.
    <verbatim|prop:uniform-extraction> is the abstract generalisation (any
    <verbatim|A>, <verbatim|c>, <verbatim|s_m \<rightarrow\> \<infty\>>);
    specialised to <verbatim|A = bar>, <verbatim|c = 2b0> it is this lemma.

    <item><verbatim|YM.Pert.Asymptotics.comparison>
    (<verbatim|RawAxis.lean:36\U48>) [S, R]: hypotheses <verbatim|C.Makes>,
    <verbatim|G.Simple> (via <verbatim|include hc hg>),
    <verbatim|\<forall\>\<#1DA0\> i, i \<leq\> N i>; <verbatim|k>
    unconstrained; conclusion <verbatim|Tendsto (fun i =\<gtr\> regulatorRun
    C (N i) (k i) i * \<sqrt\>(log (C.S.a i)\<#207B\>\<onesuperior\>)) atTop
    (\<b-cal-N\> (\<sqrt\>(2 * b0 G))\<#207B\>\<onesuperior\>)>. Matches
    <verbatim|prop:running-asymptotic>.

    <item><verbatim|regulatorRun> (<verbatim|RawAxis.lean:35>) [R]:
    <verbatim|fun {G} C N p m =\<gtr\> (\<sqrt\>(C.path.\<beta\> N p
    m))\<#207B\>\<onesuperior\>>, no hypotheses despite following
    <verbatim|include>; the correspondence's totalisation remark is accurate.

    <item><verbatim|b0 G = 11 * G.casimir / (48 * \<pi\>^2)>,
    <verbatim|b0_normalizes : 2 * b0 G = G.slopeConstant>,
    <verbatim|slopeConstant = 11 * casimir / (24 * \<pi\>^2)>
    (<verbatim|Colors.lean:184>) [S].
  </enumerate>

  <subsection|Running input><label|running-input>

  <\enumerate>
    <assign|item-nr|4><item><verbatim|YM.RG.History.Running>
    (<verbatim|History.lean:229\U231>) [S]: <verbatim|\<forall\>
    \<varepsilon\> \<gtr\> 0, \<forall\>\<#1DA0\> m, \<forall\> N p, m
    \<leq\> N \<rightarrow\> \|A.\<beta\> N p m \<minus\>
    A.levels.clock.hatBeta m\| \<leq\> \<varepsilon\> * A.S.scale m>, with
    <verbatim|hatBeta m = bar + G.slopeConstant * schedule.scale m>
    (<verbatim|History.lean:79>). Reached through
    <verbatim|YM.Family.Makes.wilson : C.path.Selected>
    (<verbatim|Construction.lean:45>) and the field
    <verbatim|Selected.running> (<verbatim|History.lean:240>).
    <verbatim|History.S = levels.S = clock.schedule> and <verbatim|Family.S =
    C.path.levels.S> are abbreviations (<verbatim|History.lean:138,210>;
    <verbatim|Construction.lean:34>), so a single <verbatim|s_m> is faithful.
    <verbatim|eq:running> is this statement with <verbatim|2b_0(G)> for
    <verbatim|slopeConstant>.
  </enumerate>

  <subsection|New anchors added by the revision><label|new-anchors-added-by-the-revision>

  <\enumerate>
    <assign|item-nr|5><item><strong|Bare coefficient> [S].
    <verbatim|YM.RG.History.Selected.starts> (<verbatim|History.lean:237>):
    <verbatim|\<forall\> N p, (A.rep N p N).v = 0 \<wedge\> (A.rep N p
    N).eval = bare (A.\<beta\> N p N)>; <verbatim|bare> resolves to
    <verbatim|YM.Wilson.bare> (<verbatim|open Wilson> at
    <verbatim|History.lean:40>). <verbatim|YM.Wilson.bare \<beta\> U =
    Real.exp (\<minus\>\<beta\> * energy U)> (<verbatim|Law.lean:58>);
    <verbatim|YM.Wilson.energy U = \<Sigma\>_{p : Face (Per n)} G.price
    (faceValue U p)> (<verbatim|Law.lean:29>); <verbatim|YM.Gauge.price u = 1
    \<minus\> (G.mat u).trace.re / G.repDim>
    (<verbatim|MatrixGroup.lean:112>). <verbatim|YM.RG.Rep.eval U = exp
    (R.exponent U) * R.activities.gas R.p U> (<verbatim|History.lean:179>).
    So at stage <verbatim|m = N> the represented density equals
    <verbatim|exp(\<minus\>\<beta\>_{N,p,N} \<Sigma\>_p (1 \<minus\> r_G^{-1}
    Re tr U_p))>, and <verbatim|\<beta\>_{N,p,N}> is the multiplier of that
    energy, as the correspondence says; its description of
    <verbatim|Rep.eval> as "an exponential times an activity gas", not an
    action, is accurate. The closing remark of the section is justified by
    <verbatim|starts> (second conjunct), with the normalisation spelled out
    in the correspondence. NIT: the correspondence writes
    "<verbatim|hc.wilson.starts N p> identifies <verbatim|(C.path.rep N p
    N).eval> \<ldots\>"; strictly this is <verbatim|(hc.wilson.starts N
    p).2>.

    <item><strong|Divergence> [S]. <verbatim|YM.Schedule.denominator>
    (<verbatim|Scale.lean:39\U41>: <verbatim|0 \<mapsto\> 1>, <verbatim|k+1
    \<mapsto\> denominator k * block k>) and
    <verbatim|YM.Schedule.block_large : \<forall\> m, 3 \<leq\> (block
    m).val> (<verbatim|Scale.lean:31>), with <verbatim|a m = (denominator
    m)\<#207B\>\<onesuperior\>> (<verbatim|:99>) and <verbatim|scale m = log
    (a m)\<#207B\>\<onesuperior\>> (<verbatim|:115>). This is the text's
    product formula and <verbatim|B_j \<geq\> 3>. The source also requires
    <verbatim|B_j> odd (<verbatim|block_odd>), unused by the text.

    <item><strong|Representation and Lie algebra> [S]. <verbatim|YM.Gauge>
    (<verbatim|MatrixGroup.lean:23\U26>): <verbatim|n : \<bbb-N\>> and a
    closed subgroup of <verbatim|Matrix.unitaryGroup (Fin (n+1)) \<bbb-C\>>;
    <verbatim|repDim = n + 1>, <verbatim|dimPos : 0 \<less\> repDim>
    (<verbatim|:73\U75>), so <verbatim|r_G \<geq\> 1> is exactly
    <verbatim|dimPos>. <verbatim|YM.Gauge.Generates X := \<forall\> t :
    \<bbb-R\>, exp (t \<bullet\> X) \<in\> range G.mat>
    (<verbatim|Lie.lean:26>), <verbatim|YM.Gauge.lie> the real submodule with
    this carrier (<verbatim|:126\U135>), <verbatim|generates_skew : star X =
    \<minus\>X> (<verbatim|:42\U44>), <verbatim|bracket_mem : X*Y \<minus\>
    Y*X \<in\> G.lie> (<verbatim|:159\U176>). These support the text's
    derivative argument and its (implicit) use of bracket closure; the
    conventions agree with Hall, Definition 3.13 and Theorem 3.16 (checked
    against the versioned PDF, see the mathematics report).

    <item><strong|Simplicity> [S]. <verbatim|YM.Gauge.Simple>
    (<verbatim|Lie.lean:178\U182>): some <verbatim|X, Y \<in\> G.lie> with
    <verbatim|XY \<minus\> YX \<neq\> 0>, and every real submodule
    <verbatim|I \<leq\> G.lie> with <verbatim|[G.lie, I] \<subseteq\> I> is
    <verbatim|\<bot\>> or <verbatim|G.lie>. This is "nonabelian simple real
    Lie algebra" in the text.

    <item><strong|Casimir transport> [S]. <verbatim|frobInner>
    (<verbatim|Colors.lean:24\U35>) is the local instance
    <verbatim|\<llangle\>x,y\<rrangle\> = Re tr(x y^*)>, unnormalised.
    <verbatim|colorIso> (<verbatim|:52\U54>) is the standard orthonormal
    basis of <verbatim|G.Alg> rescaled by <verbatim|\<sqrt\>repDim>;
    <verbatim|trace_color> (<verbatim|:71\U75>) gives <verbatim|\<minus\>Re
    tr(colorMat c \<centerdot\> colorMat d) = repDim \<centerdot\>
    \<llangle\>c,d\<rrangle\>>, so <verbatim|colorMat> of the standard basis
    is orthonormal for <verbatim|\<minus\>r_G^{-1} Re tr(XY)>. <verbatim|ad c
    d = projectColor (colorMat c \<centerdot\> colorMat d \<minus\> colorMat
    d \<centerdot\> colorMat c)> (<verbatim|:136\U150>) and
    <verbatim|colorMat_ad> (<verbatim|:152\U154>, via <verbatim|bracket_mem>
    and <verbatim|colorMat_project_self>, <verbatim|:103\U104>) show the
    projection acts as the identity on brackets, so <verbatim|ad> is
    conjugate to the matrix commutator and <verbatim|casimir =
    \<minus\>(\<Sigma\>_i Tr(ad b_i \<circ\> ad b_i))/lieDim>
    (<verbatim|:180\U182>) equals the text's <verbatim|C_\<frak-g\>> for that
    particular orthonormal basis. The text's basis independence is a
    (correct) strengthening not present in the source. Lean's <verbatim|/
    lieDim> would be <verbatim|0> if <verbatim|lieDim = 0>; under
    <verbatim|Simple> this does not occur.

    <item><strong|Positivity in Lean versus the text> [S].
    <verbatim|YM.Gauge.casimir_pos> (<verbatim|Casimir.lean:160\U172>) bounds
    <verbatim|minusKilling x x \<gtr\> 0> for one non-central <verbatim|x>
    and then needs <verbatim|trace_adjoint> (<verbatim|:140\U158>), whose
    <verbatim|invariant_scalar> step uses the ideal clause of
    <verbatim|Simple>. The correspondence now says correctly that the
    manuscript's summed-commutator proof replaces this argument and uses only
    the nonabelian clause, and that <verbatim|comparison> obtains positivity
    through <verbatim|slopeConstant_pos> (<verbatim|:174\U176>).
  </enumerate>

  <subsection|Crosswalk locations><label|crosswalk-locations>

  <\enumerate>
    <assign|item-nr|11><item>Every fully qualified name in the table exists
    under that name (namespaces <verbatim|YM>, <verbatim|YM.Gauge>,
    <verbatim|YM.Schedule>, <verbatim|YM.RG>, <verbatim|YM.RG.History>,
    <verbatim|YM.Wilson>, <verbatim|YM.Pert.Asymptotics> checked) and lies in
    the stated line range; small offsets (e.g. <verbatim|frobInner> at
    <verbatim|24\U35> cited as <verbatim|25\U38>) are immaterial.

    <item>NIT: the correspondence's "Literature and editorial treatment"
    section still lists only Lebl, although the revision README relies on
    Hall for the one-parameter definition and bracket closure. See the
    mathematics report, required change 1.
  </enumerate>

  <subsection|Commands run><label|commands-run>

  <\shell-code>
    git diff d4be082~1 d4be082

    sed/grep reads of Lean/YM/Pert/Asymptotics/RawAxis.lean,
    Lean/YM/Source/Construction.lean (20\U50), Lean/YM/RG/History.lean
    (1\U90, 165\U245), Lean/YM/Wilson/Law.lean (1\U70),
    Lean/YM/Gauge/MatrixGroup.lean (15\U120), Lean/YM/Gauge/Lie.lean (1\U60,
    120\U184), Lean/YM/Gauge/Colors.lean (1\U186), Lean/YM/Gauge/Casimir.lean
    (1\U30, 100\U178), Lean/YM/Lattice/Scale.lean (20\U125)

    python3 blueprint/units/YM-000022/evidence/check_sources.py . \ \ \ \ \ #
    7 \<times\> OK

    sha256sum of Law.lean, MatrixGroup.lean, Faces.lean, each found in
    Lean/SOURCES.sha256

    python3 scripts/check_blueprint.py --fingerprint YM-000022
    \ \ \ \ \ \ \ \ # 37a404de\<ldots\>168f
  </shell-code>

  No Lean elaboration, axiom query, <verbatim|lake build> or kernel replay
  was run; statements of the five owned declarations rest on source text plus
  the retained <verbatim|evidence/lean-inspection.txt>. Not checked:
  <verbatim|Rep.exponent> beyond its definition, <verbatim|Activities.gas>,
  <verbatim|Face>/<verbatim|faceValue> details (I relied on <verbatim|energy>
  summing <verbatim|price> over faces), the remaining fields of
  <verbatim|Family.Makes>, and how <verbatim|Family.Makes> is produced.

  <section|Required changes and remaining
  uncertainty><label|required-changes-and-remaining-uncertainty>

  None required for this role. The two NITs (finding 6, <verbatim|.2> of
  <verbatim|starts>; finding 13, Hall missing from the correspondence's
  literature section) can be fixed together with the mathematics report's
  required change. The running estimate remains an unproved input, as the
  unit says.

  <section|Acceptance><label|acceptance>

  Not recorded. This is an agent review without human acceptance; any edit in
  response changes the fingerprint and needs renewed review.

  <ym-unit-nav||<hlink|YM-000022: Logarithmic asymptotics of the running
  inverse coefficient (draft)|../correspondence.tm><ym-nav-sep><hlink|evidence|../evidence/index.tm><ym-nav-sep><hlink|proof|../proof.tm>|<hlink|YM-000026
  \<rightarrow\>|../../YM-000026/correspondence.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|Review of a proof unit \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|acceptance|<tuple|3|4>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1.1|2>>
    <associate|auto-3|<tuple|1.2|2>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-5|<tuple|1.4|3>>
    <associate|auto-6|<tuple|1.5|4>>
    <associate|auto-7|<tuple|2|4>>
    <associate|auto-8|<tuple|3|4>>
    <associate|commands-run|<tuple|1.5|4>>
    <associate|crosswalk-locations|<tuple|1.4|3>>
    <associate|findings-and-evidence|<tuple|1|1>>
    <associate|new-anchors-added-by-the-revision|<tuple|1.3|2>>
    <associate|owned-statements-unchanged-by-the-revision|<tuple|1.1|2>>
    <associate|required-changes-and-remaining-uncertainty|<tuple|2|4>>
    <associate|review-of-a-proof-unit|<tuple|?|1>>
    <associate|running-input|<tuple|1.2|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Findings
      and evidence> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Owned statements (unchanged by the
      revision) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|Running input
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|New anchors added by the revision
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|Crosswalk locations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|Commands run
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Required
      changes and remaining uncertainty> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Acceptance>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>