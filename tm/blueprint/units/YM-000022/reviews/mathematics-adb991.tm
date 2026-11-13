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

    <item>Role: mathematical validity

    <item>Human reviewer: ADB991 (no acceptance recorded; see the last
    section)

    <item>Agent assistance: one Claude agent running as a scheduled session
    (<verbatim|ADB991-claude-20261113-af9e>) on behalf of ADB991. It checked
    the argument, opened the cited sources and wrote this report. ADB991 had
    not read it before submission. No other model was used.

    <item>Content SHA-256: <verbatim|24db9174727f1abf8bcb4211cb1c3bc601711dfd4c193983b1fde864a02ce056>
    (<verbatim|python3 scripts/check_blueprint.py --fingerprint YM-000022> on
    <verbatim|main> at <verbatim|f73c5002e8d7e716fe5cce58185ec46ea74951b4>,
    i.e. after PR #115 merged; equal to the fingerprint announced in the #114
    handoff)

    <item>Reviewed content (file SHA-256):
    <verbatim|manuscript/pilots/running-coupling.tex>
    <verbatim|105a1a28e30be0756cd37ac9f8c22c77ed82547148c086a71788865670845426>;
    <verbatim|manuscript/preamble.tex> <verbatim|0827ef173e55ac6cf7b9726f3cbaaa5be93a5dfac8ffb2cfdf7b3faed65e90df>;
    <verbatim|manuscript/references.bib> <verbatim|844ea80b635fd9c4227dcc2baf4032ccb8403f018af160bc2dd0f2a6da89ac53>;
    <verbatim|correspondence.md> <verbatim|c9feae1ff19f0173ec2658c81379f038a3b54228b261be57cfd964749d1c655f>;
    <verbatim|unit.json> <verbatim|cfc20482faefa90b34cca4d903b0b21620efd55e60dd333cbeb69b8b96986731>.

    <item>Manuscript files and labels: <verbatim|manuscript/pilots/running-coupling.tex>
    (<verbatim|sec:running-coefficient>, <verbatim|eq:running>,
    <verbatim|prop:uniform-extraction>, <verbatim|prop:running-asymptotic>),
    <verbatim|manuscript/preamble.tex>, <verbatim|manuscript/references.bib>.
    The section inputs nothing else, so the <verbatim|manuscript> list in
    <verbatim|unit.json> is complete.

    <item>Source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>

    <item>Review task and PR: <hlink|issue
    #22|https://github.com/hairer/humanise-yang-mills/issues/22>, claim
    <hlink|https://github.com/hairer/humanise-yang-mills/issues/22#issuecomment-6848731664|https://github.com/hairer/humanise-yang-mills/issues/22#issuecomment-6848731664>;
    this report-only draft PR against <verbatim|main>.

    <item>Outcome: no change required; locally correct, conditional on the
    stated input <verbatim|eq:running>. Three optional suggestions below.
    This is an agent review: no human acceptance and no approval field is
    set.
  </itemize-minus>

  ADB991 is not an author of YM-000022 and wrote none of its earlier
  revisions or reviews. I read the earlier reports (<verbatim|*-mgubi.md>,
  <verbatim|*-schmittj.md>) but rechecked every step myself, and I reviewed
  the whole section, not only the PR #115 diff.

  <section|Findings and evidence><label|findings-and-evidence>

  <subsection|Opening: matrix Lie algebra and the Hall citation (new in PR
  #115)><label|opening-matrix-lie-algebra-and-the-hall-citation-new-in-pr-115>

  Correct, and the citation is accurate. I downloaded arXiv:math-ph/0005032v1
  (PDF SHA-256 <verbatim|2be9f80e\<ldots\>f7f1>) and read the cited items
  with <verbatim|pdftotext -layout>:

  <\itemize-minus>
    <item>Definition 2.2 (printed p. 9): a matrix Lie group is a subgroup of
    GL(n; C) such that every convergent sequence in it has its limit in it or
    non-invertible, i.e. a closed subgroup of GL(n; C).

    <item>Definition 3.13 (printed p. 36): the Lie algebra of a matrix Lie
    group G is the set of all matrices X with e^{tX} \<in\> G for all real t.
    This is exactly the displayed set in lines 7\U10.

    <item>Theorem 3.16 (statement p. 40, proof of point 3 finished on p. 41):
    for X, Y \<in\> g, sX \<in\> g for real s, X + Y \<in\> g, and XY
    \<minus\> YX \<in\> g.
  </itemize-minus>

  So the bibliography locator "pp. 36 and 40\U41" is right. Hall's hypothesis
  is checked in line 11: G is closed in U(r_G), which is compact and hence
  closed in GL(r_G, C), so G is closed in GL(r_G, C). Theorem 3.16 then gives
  a real vector subspace closed under the commutator.

  <subsection|Skew-Hermitian generators, inner product, Casimir,
  positivity><label|skew-hermitian-generators-inner-product-casimir-positivity>

  All correct; I recomputed each step.

  <\itemize-minus>
    <item>For X \<in\> g, t \<mapsto\> exp(tX) is a smooth curve in U(r_G)
    through I with derivative X at 0. Differentiating exp(tX)^<em|exp(tX) = I
    gives X^> + X = 0.

    <item>\<langle\>X,Y\<rangle\> = \<minus\>r_G^{-1} Re tr(XY) is real
    bilinear and symmetric. On skew-Hermitian X, \<minus\>tr(XX) = tr(X^*X) =
    \<Sigma\>\|X_ab\|\<twosuperior\>, which is positive for X \<neq\> 0. (In
    line 23 the <verbatim|Re> is dropped because tr(X^*X) is real; this was
    already noted as a nit in PR #113.)

    <item>Basis independence: if f_i = \<Sigma\>_j q_ij e_j with q
    orthogonal, then \<Sigma\>_i q_ij q_ik = (q\<#1D40\>q)_jk = \<delta\>_jk,
    which gives the displayed identity. Any two orthonormal bases are related
    in this way.

    <item>Invariance: both \<langle\>[X,Y],Z\<rangle\> and
    \<minus\>\<langle\>Y,[X,Z]\<rangle\> equal \<minus\>r_G^{-1} Re(tr(XYZ)
    \<minus\> tr(YXZ)), using cyclicity tr(YZX) = tr(XYZ). [X,Z] \<in\> g by
    Theorem 3.16, so ad e_j is a skew-adjoint endomorphism of g. Hence
    \<minus\>Tr_g((ad e_j)\<twosuperior\>) = \<Sigma\>_\<ell\>
    \<\|\|\>[e_j,e_\<ell\>]\<\|\|\>\<twosuperior\> \<geqslant\> 0. If every
    [e_j,e_\<ell\>] vanished, bilinearity would make g abelian. Therefore C_g
    \<gtr\> 0 and b_0(G) \<gtr\> 0.

    <item>Only the nonabelian clause of simplicity is used. This matches the
    correspondence record, which says the manuscript replaces the source's
    <verbatim|casimir_pos> argument (through <verbatim|trace_adjoint>, which
    uses full simplicity) rather than paraphrasing it.
  </itemize-minus>

  <subsection|Input <verbatim|eq:running> and scale
  divergence><label|input-eqrunning-and-scale-divergence>

  The input is stated with its quantifiers in the right order: one fixed
  intercept \<beta\>\<#304\>; for every \<eta\> \<gtr\> 0 a threshold
  m_0(\<eta\>); then for all m \<geqslant\> m_0, N \<geqslant\> m and all p.
  The threshold is uniform in N and p, and that uniformity is what the proofs
  use. The divergence s_m \<geqslant\> m log 3 \<rightarrow\> \<infty\>
  follows from a_m = (\<big-prod\>_{j\<less\>m} B_j)^{-1} with B_j
  \<geqslant\> 3. The input is correctly presented as an outstanding
  hypothesis, not proved here.

  <subsection|Proposition <verbatim|prop:uniform-extraction>><label|proposition-propuniform-extraction>

  Correct. Since s_m \<rightarrow\> \<infty\>, a threshold exists beyond
  which s_m \<gtr\> 2(\|A\|+1)/\<varepsilon\> \<gtr\> 0. Beyond the larger of
  the two thresholds, \|\<beta\>/s \<minus\> c\| = \|\<beta\> \<minus\>
  cs\|/s \<leqslant\> (\|\<beta\> \<minus\> (A + cs)\| + \|A\|)/s
  \<leqslant\> \<varepsilon\>/2 + \|A\|/s, and \|A\|/s \<less\>
  \<varepsilon\>\|A\|/(2(\|A\|+1)) \<less\> \<varepsilon\>/2. Both thresholds
  are independent of N and p. The proposition is stated for arbitrary real A,
  c, and as the text says, the proof does not use c \<gtr\> 0.

  <subsection|Proposition <verbatim|prop:running-asymptotic>><label|proposition-proprunning-asymptotic>

  Correct.

  <\itemize-minus>
    <item>The thresholds are combined properly: for each \<varepsilon\>, take
    the maximum of the extraction threshold and the index after which i
    \<leqslant\> N(i). The substitution m = i, N = N(i), p = k(i) is
    legitimate because the extraction bound is uniform in N \<geqslant\> m
    and in p. That is why no condition on k is needed.

    <item>Positivity: taking \<varepsilon\> = c/2 gives x_i \<gtr\> c/2
    \<gtr\> 0 eventually, so \<beta\>_{N(i),k(i),i} = s_i x_i \<gtr\> 0
    there.

    <item>Limit rules: I checked Lebl's statements. The HTML host in the
    bibliography URL is blocked by this environment's proxy, so I read the
    author's LaTeX source on the <verbatim|master> branch of
    <verbatim|github.com/jirilebl/ra>, file <verbatim|ch-seq-ser.tex>
    (SHA-256 <verbatim|18657062\<ldots\>d1ce>, fetched 2026-11-13), in the
    section "Facts about limits of sequences". <verbatim|realanal.tex>
    declares lemma, proposition, corollary, example, remark and definition on
    the shared theorem counter, numbered within sections. Counting
    environments in that section gives Proposition 2.2.5, the algebra of
    limits, whose item (iv) is the quotient rule with y_n \<neq\> 0 for all n
    and lim y_n \<neq\> 0. It also gives Proposition 2.2.6: if x_n
    \<geqslant\> 0 for all n and x_n converges, then \<sqrt\>x_n
    \<rightarrow\> \<sqrt\>(lim x_n). Both are applied on a positive tail.
    The remark on modifying finitely many terms covers the "for all n"
    hypotheses. (I verified the source text and numbering, not the rendered
    HTML page the bibliography names. The two are generated from the same
    source, but the HTML edition inspected on 11 November is not pinned to a
    commit.)

    <item>The final identity 1/\<sqrt\>x_i = \<sqrt\>s_i/\<sqrt\>\<beta\> = g
    \<sqrt\>(log a_i^{-1}) holds by uniqueness of positive square roots on
    that tail.
  </itemize-minus>

  <subsection|Closing remark><label|closing-remark>

  The remark is accurate and suitably limited. At N(i) = i the coefficient is
  the multiplier of the Wilson energy \<Sigma\>(1 \<minus\> r_G^{-1} Re tr
  U_p); see the Lean report for the source check. The text explicitly
  declines to identify the proxy with a physically defined coupling.

  <section|Required changes and remaining
  uncertainty><label|required-changes-and-remaining-uncertainty>

  No change is required. Optional suggestions:

  <\itemize-minus>
    <item><strong|S1 (wording, lines 12\U14).> The citation supports "real
    vector space closed under the commutator". Finite dimensionality is not
    in Hall's Theorem 3.16; it holds trivially because g is a real subspace
    of M_{r_G}(C) \<cong\> \<bbb-R\>^{2r_G\<twosuperior\>}. One clause saying
    so would keep the citation from appearing to supply it.

    <item><strong|S2 (reader orientation, optional, not needed for
    correctness).> b_0(G) is defined with the normalized trace form, so it is
    not the textbook coefficient. A reader comparing it with the usual
    one-loop \<beta\>-function may be misled. Here is my own computation (I
    have not checked it against a cited source). Take Hermitian generators
    T^a with tr(T^aT^b) = T_F \<delta\>^{ab} and structure constants
    normalized by f^{acd}f^{bcd} = C_A \<delta\>^{ab}. Then e_a =
    (r_G/T_F)^{1/2} iT^a is orthonormal for
    \<langle\><ym-middot>,<ym-middot>\<rangle\>, and the section's constant
    is C_g = r_G C_A / T_F. For SU(N) in the fundamental representation (T_F
    = 1/2) this gives C_g = 2N\<twosuperior\>, e.g. C_g = 8 for SU(2) with
    e_a = i\<sigma\>_a. Therefore b_0(G) = (r_G/T_F) <ym-middot>
    11C_A/(48\<pi\>\<twosuperior\>). With the Wilson convention \<beta\> =
    r_G/(T_F g\<twosuperior\>) (\<beta\> = 2N/g\<twosuperior\> for SU(N)),
    the slope 2b_0(G) of <verbatim|eq:running> is exactly the standard
    one-loop slope of \<beta\> in log a^{-1}. Correspondingly the proxy
    satisfies g_{N,p,m}\<twosuperior\> = (T_F/r_G) g_{\\rm
    std}\<twosuperior\>. A one-sentence remark with a verified textbook
    citation would help readers and would also settle consistency questions
    elsewhere (see the G04 finding G04-F1 in PR #119). The section's current
    disclaimer is correct without it.

    <item><strong|S3 (nit, line 4).> "in the indicated unitary
    representation" could read "in a fixed faithful unitary representation",
    matching the source structure <verbatim|YM.Gauge> (a closed subgroup of
    U(r_G)).
  </itemize-minus>

  Not checked: the construction family and the proof of <verbatim|eq:running>
  (outside the unit; stated as an outstanding input); the rendered Lebl HTML
  page; any physics literature for S2.

  Commands actually run (all on <verbatim|main> at <verbatim|f73c500>):
  <verbatim|python3 scripts/check_blueprint.py --fingerprint YM-000022>
  (output above); <verbatim|python3 scripts/check_blueprint.py> ("Blueprint
  structure OK: 2 units"); <verbatim|python3 -m unittest discover -s tests>
  (22 tests OK); <verbatim|curl -sSL https://arxiv.org/pdf/math-ph/0005032v1>
  then <verbatim|pdftotext -layout>; <verbatim|curl
  https://raw.githubusercontent.com/jirilebl/ra/master/{ch-seq-ser,realanal}.tex>;
  and the LaTeX build recorded in the Lean report.

  <section|Acceptance><label|acceptance>

  Not recorded. An agent review is evidence for a human reviewer and is not
  acceptance. <verbatim|unit.json> approvals remain null. Any change to the
  listed files changes the fingerprint and needs renewed review.

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
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-2|<tuple|1.1|2>>
    <associate|auto-3|<tuple|1.2|2>>
    <associate|auto-4|<tuple|1.3|3>>
    <associate|auto-5|<tuple|1.4|3>>
    <associate|auto-6|<tuple|1.5|3>>
    <associate|auto-7|<tuple|1.6|3>>
    <associate|auto-8|<tuple|2|4>>
    <associate|auto-9|<tuple|3|4>>
    <associate|closing-remark|<tuple|1.6|3>>
    <associate|findings-and-evidence|<tuple|1|2>>
    <associate|input-eqrunning-and-scale-divergence|<tuple|1.3|3>>
    <associate|opening-matrix-lie-algebra-and-the-hall-citation-new-in-pr-115|<tuple|1.1|2>>
    <associate|proposition-proprunning-asymptotic|<tuple|1.5|3>>
    <associate|proposition-propuniform-extraction|<tuple|1.4|3>>
    <associate|required-changes-and-remaining-uncertainty|<tuple|2|4>>
    <associate|review-of-a-proof-unit|<tuple|?|1>>
    <associate|skew-hermitian-generators-inner-product-casimir-positivity|<tuple|1.2|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Findings
      and evidence> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Opening: matrix Lie algebra and the Hall
      citation (new in PR #115) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|Skew-Hermitian generators, inner product,
      Casimir, positivity <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|Input <with|font-family|<quote|tt>|language|<quote|verbatim>|eq:running>
      and scale divergence <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|Proposition
      <with|font-family|<quote|tt>|language|<quote|verbatim>|prop:uniform-extraction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|Proposition
      <with|font-family|<quote|tt>|language|<quote|verbatim>|prop:running-asymptotic>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|Closing remark
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Required
      changes and remaining uncertainty> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Acceptance>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>