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

    <item>Human reviewer: ADB991 (no acceptance recorded; see the last
    section)

    <item>Agent assistance: one Claude agent running as a scheduled session
    (<verbatim|ADB991-claude-20261113-af9e>) on behalf of ADB991. It read the
    pinned source text and wrote this report. ADB991 had not read it before
    submission. No other model was used.

    <item>Content SHA-256: <verbatim|24db9174727f1abf8bcb4211cb1c3bc601711dfd4c193983b1fde864a02ce056>
    (<verbatim|python3 scripts/check_blueprint.py --fingerprint YM-000022> on
    <verbatim|main> at <verbatim|f73c5002e8d7e716fe5cce58185ec46ea74951b4>,
    after PR #115 merged)

    <item>Reviewed content (file SHA-256):
    <verbatim|manuscript/pilots/running-coupling.tex>
    <verbatim|105a1a28\<ldots\>5426>; <verbatim|manuscript/preamble.tex>
    <verbatim|0827ef17\<ldots\>90df>; <verbatim|manuscript/references.bib>
    <verbatim|844ea80b\<ldots\>ac53>; <verbatim|correspondence.md>
    <verbatim|c9feae1f\<ldots\>655f>; <verbatim|unit.json>
    <verbatim|cfc20482\<ldots\>6731> (full hashes in
    <verbatim|mathematics-adb991.md>).

    <item>Manuscript files and labels: <verbatim|manuscript/pilots/running-coupling.tex>
    (<verbatim|sec:running-coefficient>, <verbatim|eq:running>,
    <verbatim|prop:uniform-extraction>, <verbatim|prop:running-asymptotic>),
    <verbatim|manuscript/preamble.tex>, <verbatim|manuscript/references.bib>.
    The list is complete.

    <item>Source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>

    <item>Review task and PR: <hlink|issue
    #22|https://github.com/hairer/humanise-yang-mills/issues/22>, claim
    <hlink|https://github.com/hairer/humanise-yang-mills/issues/22#issuecomment-6848731664|https://github.com/hairer/humanise-yang-mills/issues/22#issuecomment-6848731664>;
    this report-only draft PR against <verbatim|main>.

    <item>Outcome: no change required; one nit. This is an agent review: no
    human acceptance and no approval field is set.
  </itemize-minus>

  ADB991 is not an author of YM-000022 and wrote none of its earlier
  revisions or reviews.

  <section|Findings and evidence><label|findings-and-evidence>

  Evidence level: <strong|[S]> means I read the source text under
  <verbatim|Lean/> at the pinned revision. Nothing was elaborated: this
  environment cannot reach the Mathlib sources or cache, so <verbatim|lake
  build> and <verbatim|#print axioms> were not run. The unit's retained
  <verbatim|evidence/lean-inspection.txt> was not regenerated.
  <verbatim|python3 blueprint/units/YM-000022/evidence/check_sources.py>
  reports OK for all 7 inspected files against
  <verbatim|Lean/SOURCES.sha256>.

  PR #115 changed no Lean anchor in the table. It added a literature
  paragraph and a status paragraph to <verbatim|correspondence.md> and
  changed the opening of the section. I nevertheless rechecked the whole
  table against the current text.

  <subsection|The new opening against the
  source><label|the-new-opening-against-the-source>

  <\enumerate>
    <item><strong|Lie algebra definition> [S]. <verbatim|YM.Gauge.Generates X
    := \<forall\> t : \<bbb-R\>, exp (t \<bullet\> X) \<in\> range G.mat>
    (<verbatim|Lie.lean:26>), and <verbatim|YM.Gauge.lie> is the real
    submodule with this carrier (<verbatim|Lie.lean:126\U134>). This is
    exactly the displayed set {X : exp(tX) \<in\> G for every real t}, with G
    identified with <verbatim|range G.mat>, as the correspondence states. It
    is also Hall's Definition 3.13.

    <item><strong|Closedness> [S]. <verbatim|YM.Gauge>
    (<verbatim|MatrixGroup.lean:23\U26>) is a natural number <verbatim|n>
    together with a <verbatim|Subgroup> of <verbatim|Matrix.unitaryGroup (Fin
    (n+1)) \<bbb-C\>> satisfying <verbatim|IsClosed> in the unitary group.
    This is the text's "closed matrix subgroup of U(r_G)", with <verbatim|r_G
    = repDim = n + 1> and <verbatim|dimPos : 0 \<less\> repDim>
    (<verbatim|:73\U75>). The text's step "U(r_G) closed in GL, so G closed
    in GL" is ordinary topology. The source does not need it, because it
    proves bracket closure itself.

    <item><strong|Skew-Hermitian generators and bracket closure> [S].
    <verbatim|generates_skew : G.Generates X \<rightarrow\> star X = -X>
    (<verbatim|Lie.lean:42\U44>, via <verbatim|tangent_skew>), and
    <verbatim|bracket_mem : X \<in\> G.lie \<rightarrow\> Y \<in\> G.lie
    \<rightarrow\> X*Y - Y*X \<in\> G.lie> (<verbatim|Lie.lean:159\U176>).
    The source proves bracket closure by differentiating conjugation and
    using that <verbatim|G.lie> is closed (<verbatim|closed_lie>, by finite
    dimensionality). That is Hall's own proof of Theorem 3.16(3). The
    citation therefore replaces, rather than misdescribes, the formal
    argument.

    <item><strong|Simplicity> [S]. <verbatim|YM.Gauge.Simple>
    (<verbatim|Lie.lean:178\U182>) consists of a nonabelian clause (some X, Y
    \<in\> <verbatim|G.lie> with XY \<minus\> YX \<neq\> 0) and an ideal
    clause over real submodules. This is "nonabelian simple real Lie
    algebra".
  </enumerate>

  <subsection|Casimir and slope><label|casimir-and-slope>

  <\enumerate>
    <assign|item-nr|4><item>[S] <verbatim|casimir = \<minus\>(\<Sigma\>_i
    trace(ad b_i \<circ\> ad b_i)) / lieDim> over the standard basis of
    <verbatim|Color = EuclideanSpace \<bbb-R\> (Fin lieDim)>
    (<verbatim|Colors.lean:180\U182>). <verbatim|trace_color>
    (<verbatim|:71\U75>) gives \<minus\>Re tr(colorMat c <ym-middot> colorMat
    d) = repDim <ym-middot> \<langle\>c, d\<rangle\>. Hence
    <verbatim|colorMat> sends the standard basis to an orthonormal basis of g
    for the text's form \<minus\>r_G^{-1} Re tr(XY). <verbatim|colorMat_ad>
    (<verbatim|:152\U154>) identifies <verbatim|ad> with the matrix
    commutator. So <verbatim|casimir> is the text's C_g computed in one
    orthonormal basis. The text proves basis independence separately, which
    the source does not need. <verbatim|slopeConstant =
    11\<centerdot\>casimir/(24\<pi\>\<twosuperior\>)> (<verbatim|:184>),
    <verbatim|b0 G = 11\<centerdot\>casimir/(48\<pi\>\<twosuperior\>)> and
    <verbatim|b0_normalizes : 2*b0 G = slopeConstant>
    (<verbatim|RawAxis.lean:13\U14>) match the text's b_0(G) and c = 2b_0(G).

    <item>[S] Positivity: the source uses <verbatim|slopeConstant_pos>
    \<leftarrow\> <verbatim|casimir_pos> \<leftarrow\>
    <verbatim|trace_adjoint> (<verbatim|Casimir.lean:140\U176>), which needs
    the ideal clause. The text gives a different, valid argument using only
    the nonabelian clause, and the correspondence says so. Both lead to the
    same conclusion under the source's hypothesis <verbatim|G.Simple>.
  </enumerate>

  <subsection|Owned statements><label|owned-statements>

  <\enumerate>
    <assign|item-nr|6><item><verbatim|zeroUp_bound>
    (<verbatim|RawAxis.lean:15\U30>) [S]: from <verbatim|C.Makes> and
    <verbatim|0 \<less\> \<varepsilon\>>, eventually in m, for all N and p
    with m \<leqslant\> N, \|\<beta\>_{N,p,m}/s_m \<minus\> 2b0\| \<less\>
    \<varepsilon\>. There is no simplicity hypothesis, because
    <verbatim|include hc hg> comes after this lemma (line 33).
    <verbatim|prop:uniform-extraction> is the abstract version with arbitrary
    A and c. The source instantiates it with A = <verbatim|clock.bar> and c =
    <verbatim|slopeConstant>, via <verbatim|hc.wilson.running>
    (<verbatim|Construction.lean:44\U45>,
    <verbatim|History.lean:229\U231,240>).

    <item><verbatim|regulatorRun> (<verbatim|:35>) and <verbatim|comparison>
    (<verbatim|:36\U48>) [S]. The hypotheses are <verbatim|C.Makes>,
    <verbatim|G.Simple> and <verbatim|\<forall\>\<#1DA0\> i, i \<leq\> N i>;
    k is unconstrained. The conclusion is that
    (\<sqrt\>\<beta\>_{N(i),k(i),i})\<#207B\>\<onesuperior\> <ym-middot>
    \<sqrt\>(log (a_i)\<#207B\>\<onesuperior\>) tends to
    (\<sqrt\>(2b0))\<#207B\>\<onesuperior\>. This matches
    <verbatim|prop:running-asymptotic>. The text adds the eventual positivity
    of \<beta\>, which the source never states but which follows inside the
    proof (the text derives it). The correspondence's remark on the totalized
    \<sqrt\> and \<#207B\>\<onesuperior\> is accurate.

    <item>Running input [S]. <verbatim|Running>
    (<verbatim|History.lean:229\U231>) says: for every \<varepsilon\> \<gtr\>
    0, eventually in m, for all N, p with m \<leqslant\> N, \|\<beta\>
    \<minus\> hatBeta m\| \<leqslant\> \<varepsilon\> <ym-middot> scale m,
    where <verbatim|hatBeta m = bar + slopeConstant \<centerdot\> scale m>
    (<verbatim|:79>). This is <verbatim|eq:running> with \<eta\> =
    \<varepsilon\>, and <verbatim|bar> is a fixed field of the
    <verbatim|Calendar> (<verbatim|:64\U73>). The source's <verbatim|bar_pos>
    is not used by the text, as the correspondence notes.

    <item>Schedule [S]. <verbatim|block_large : 3 \<leq\> (block m).val>
    (<verbatim|Scale.lean:31>). <verbatim|denominator> (<verbatim|:39\U41>)
    is the product of blocks, <verbatim|a m = (denominator
    m)\<#207B\>\<onesuperior\>> (<verbatim|:99>), and <verbatim|scale m = log
    (a m)\<#207B\>\<onesuperior\>> (<verbatim|:115>). These are the text's
    B_j \<geqslant\> 3, a_m and s_m.

    <item>Closing remark [S]. <verbatim|Selected.starts>
    (<verbatim|History.lean:237>) gives <verbatim|(A.rep N p N).eval = bare
    (A.\<beta\> N p N)>, with <verbatim|bare> resolving to
    <verbatim|YM.Wilson.bare> through <verbatim|open Wilson>
    (<verbatim|History.lean:40>). <verbatim|bare \<beta\> U =
    exp(\<minus\>\<beta\> \<centerdot\> energy U)> (<verbatim|Law.lean:58>),
    <verbatim|energy = \<Sigma\>_faces price> (<verbatim|Law.lean:29>) and
    <verbatim|price u = 1 \<minus\> Re tr(mat u)/repDim>
    (<verbatim|MatrixGroup.lean:112>). This supports "at N(i) = i the
    coefficient is the bare lattice action coefficient" for the Wilson action
    normalized by (1/r_G) Re tr.
  </enumerate>

  <subsection|Crosswalk locations><label|crosswalk-locations>

  <\enumerate>
    <assign|item-nr|11><item>Every qualified name in the table exists under
    the stated name and in the stated file, inside or within a line or two of
    the stated range. For example, <verbatim|YM.Family.S> is at
    <verbatim|Construction.lean:34> inside the cited <verbatim|32\U35>, and
    <verbatim|frobInner> occupies <verbatim|Colors.lean:24\U35> against the
    cited <verbatim|25\U38>. The offsets are immaterial.

    <item>NIT. The PR #113 nit (the Hall citation missing from the
    correspondence) is resolved: the "Literature and editorial treatment"
    section now records Hall v1 with locators. I checked those locators
    against the PDF (see the mathematics report). A further nit: the rendered
    Hall bibliography item prints "31 May 2000, 2000." because both
    <verbatim|howpublished> and <verbatim|year> carry the year. This is
    cosmetic.
  </enumerate>

  <section|Required changes and remaining
  uncertainty><label|required-changes-and-remaining-uncertainty>

  None required. Not done here: elaboration, <verbatim|#print axioms>, and
  regeneration of <verbatim|evidence/lean-inspection.txt> (Mathlib
  unreachable from this environment). The claims above about elaborated types
  rest on source text only, together with the unit's retained inspection
  output, which I did not regenerate.

  Commands actually run (on <verbatim|main> at <verbatim|f73c500>):

  <\shell-code>
    python3 scripts/check_blueprint.py --fingerprint YM-000022 \ \ #
    24db9174\<ldots\>ce056

    python3 scripts/check_blueprint.py \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ #
    Blueprint structure OK: 2 units

    python3 -m unittest discover -s tests
    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ # Ran 22 tests, OK

    python3 blueprint/units/YM-000022/evidence/check_sources.py \ \ # 7 x OK

    git diff 0a24993 f0c6056 \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ #
    PR #115 content

    sed -n / grep reads of Lean/YM/Pert/Asymptotics/RawAxis.lean,
    Lean/YM/Gauge/{Lie,Colors,Casimir,MatrixGroup}.lean,

    \ \ Lean/YM/RG/History.lean (40, 60\U80, 170\U242),
    Lean/YM/Source/Construction.lean (25\U50),

    \ \ Lean/YM/Lattice/Scale.lean (25\U45, 95\U122), Lean/YM/Wilson/Law.lean
    (29, 58)

    cd manuscript && latexmk -pdf -interaction=nonstopmode -halt-on-error
    -outdir=build main.tex

    \ \ # exit 0, 3 pages, no undefined references or LaTeX warnings; pages
    rendered with pdftoppm and inspected
  </shell-code>

  <section|Acceptance><label|acceptance>

  Not recorded. An agent review is evidence for a human reviewer and is not
  acceptance. <verbatim|unit.json> approvals remain null.

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
    <associate|auto-6|<tuple|2|3>>
    <associate|auto-7|<tuple|3|4>>
    <associate|casimir-and-slope|<tuple|1.2|2>>
    <associate|crosswalk-locations|<tuple|1.4|3>>
    <associate|findings-and-evidence|<tuple|1|1>>
    <associate|owned-statements|<tuple|1.3|2>>
    <associate|required-changes-and-remaining-uncertainty|<tuple|2|3>>
    <associate|review-of-a-proof-unit|<tuple|?|1>>
    <associate|the-new-opening-against-the-source|<tuple|1.1|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Findings
      and evidence> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|The new opening against the source
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|Casimir and slope
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|Owned statements
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|Crosswalk locations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Required
      changes and remaining uncertainty> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Acceptance>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>