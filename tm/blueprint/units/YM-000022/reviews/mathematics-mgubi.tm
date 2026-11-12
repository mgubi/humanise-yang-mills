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

    <item>Human reviewer: mgubi (no acceptance recorded; see the last
    section)

    <item>Agent assistance: Claude Code (Claude Fable 5.2) checked the
    argument and wrote this report; a web-fetch subagent made a first read of
    the cited page, which I then repeated directly.

    <item>Content SHA-256: <verbatim|367b5982bb56035d3f0cbf81641d1f0564c27a48169707b9aa64a5cf3c0b0aa2>

    <item>Manuscript files and labels: <verbatim|manuscript/pilots/running-coupling.tex>
    (<verbatim|sec:running-coefficient>, <verbatim|eq:running>,
    <verbatim|prop:uniform-extraction>, <verbatim|prop:running-asymptotic>),
    <verbatim|manuscript/preamble.tex>, <verbatim|manuscript/references.bib>

    <item>Source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>

    <item>Review task and PR: <hlink|issue
    #22|https://github.com/hairer/humanise-yang-mills/issues/22>, claim
    <hlink|https://github.com/hairer/humanise-yang-mills/issues/22#issuecomment-6817176547|https://github.com/hairer/humanise-yang-mills/issues/22#issuecomment-6817176547>

    <item>Outcome: changes requested (two small gaps in the positivity
    paragraph). The two propositions and their proofs are correct as written,
    conditional on the stated input <verbatim|eq:running>.
  </itemize-minus>

  I am not an author of this unit. This is an agent-assisted review; it is
  not a human acceptance.

  <section|Findings and evidence><label|findings-and-evidence>

  <subsection|Proposition <verbatim|prop:uniform-extraction>><label|proposition-propuniform-extraction>

  Correct. With <verbatim|\<eta\> = \<varepsilon\>/2> and <verbatim|s_m
  \<gtr\> 2(\|A\|+1)/\<varepsilon\>>: <verbatim|\|\<beta\>/s \<minus\> c\| =
  \|\<beta\> \<minus\> c s\|/s \<leq\> (\|\<beta\> \<minus\> (A + c s)\| +
  \|A\|)/s \<leq\> \<varepsilon\>/2 + \|A\|/s>, and <verbatim|\|A\|/s
  \<less\> \<varepsilon\>\|A\|/(2(\|A\|+1)) \<less\> \<varepsilon\>/2>. Both
  thresholds depend only on <verbatim|\<varepsilon\>>, so the bound is
  uniform in <verbatim|N \<geq\> m> and <verbatim|p>. The enlargement of the
  threshold uses only <verbatim|s_m \<rightarrow\> +\<infty\>>. No sign
  condition on <verbatim|c> or <verbatim|A> is used, as the text says.

  <subsection|Proposition <verbatim|prop:running-asymptotic>><label|proposition-proprunning-asymptotic>

  Correct.

  <\itemize-minus>
    <item>The substitution <verbatim|m = i>, <verbatim|N = N(i)>, <verbatim|p
    = k(i)> is legitimate once <verbatim|i \<leq\> N(i)>, and uniformity in
    <verbatim|p> is what frees <verbatim|k>.

    <item><verbatim|\<varepsilon\> = c/2> gives <verbatim|x_i \<gtr\> c/2
    \<gtr\> 0>, and <verbatim|s_i \<gtr\> 0> on the same tail, so
    <verbatim|\<beta\> = s_i x_i \<gtr\> 0>.

    <item>The identity <verbatim|1/\<sqrt\>x_i = \<sqrt\>s_i/\<sqrt\>\<beta\>
    = g\<centerdot\>\<sqrt\>(log a_i^{-1})> holds on the positive tail.

    <item>The cited rules require their hypotheses for every index
    (<verbatim|x_n \<geq\> 0> for all <verbatim|n>; <verbatim|y_n \<neq\> 0>
    for all <verbatim|n> and nonzero limit). The text applies them on a tail
    and then observes that altering finitely many terms does not affect
    convergence. That is sufficient.
  </itemize-minus>

  <subsection|The citation><label|the-citation>

  I downloaded <hlink|https://jirilebl.github.io/ra/html/sec_factslimsseqs.html|https://jirilebl.github.io/ra/html/sec_factslimsseqs.html>
  on 12 November 2026 (SHA-256 of the HTML
  <verbatim|2bf861b19ffb89c27fd781ee16eb71da011463127982dad8fb791f3c7f78a100>)
  and read the two statements.

  <\itemize-minus>
    <item>Proposition 2.2.5 assumes <verbatim|{x_n}>, <verbatim|{y_n}>
    convergent; item (iv) adds <verbatim|lim y_n \<neq\> 0> and <verbatim|y_n
    \<neq\> 0> for all <verbatim|n>, and concludes <verbatim|lim x_n/y_n =
    lim x_n / lim y_n>.

    <item>Proposition 2.2.6 assumes <verbatim|{x_n}> convergent with
    <verbatim|x_n \<geq\> 0> for all <verbatim|n>, and concludes
    <verbatim|lim \<sqrt\>x_n = \<sqrt\>(lim x_n)>.
  </itemize-minus>

  Both are as the unit describes and both apply. The page shows no version
  number or date; the bibliography entry's "inspected" date is therefore the
  only version identifier, which the unit already acknowledges.

  <subsection|Scale divergence><label|scale-divergence>

  Correct: <verbatim|a_m^{-1} = \<big-prod\>_{j\<less\>m} B_j> with
  <verbatim|B_j \<geq\> 3> gives <verbatim|s_m = \<big-sum\>_{j\<less\>m} log
  B_j \<geq\> m log 3>. Note <verbatim|s_0 = 0>; the propositions only use
  <verbatim|s_m \<gtr\> 0> eventually, and the text arranges that.

  <subsection|Positivity of <verbatim|b_0(G)>><label|positivity-of-b_0g>

  The argument is right, with two unstated steps.

  <\itemize-minus>
    <item>The invariance identity holds: <verbatim|tr([X,Y]Z) + tr(Y[X,Z]) =
    tr(XYZ) \<minus\> tr(YZX) = 0>.

    <item>Given an inner product for which each <verbatim|ad e_j> is
    skew-adjoint, <verbatim|\<minus\>Tr((ad e_j)\<twosuperior\>) = Tr((ad
    e_j)^T ad e_j) = \<big-sum\>_\<ell\> \<\|\|\>[e_j,e_\<ell\>]\<\|\|\>\<twosuperior\>>.
    If <verbatim|[X,Y] \<neq\> 0> for some <verbatim|X, Y \<in\> \<frak-g\>>,
    bilinearity gives some <verbatim|[e_j,e_\<ell\>] \<neq\> 0>. So
    <verbatim|C_\<frak-g\> \<gtr\> 0>.
  </itemize-minus>

  <section|Required changes and remaining
  uncertainty><label|required-changes-and-remaining-uncertainty>

  <\enumerate>
    <item><strong|State why <verbatim|\<langle\>X,Y\<rangle\> =
    \<minus\>r_G^{-1} Re tr(XY)> is an inner product on
    <verbatim|\<frak-g\>>.> The text calls <verbatim|(e_j)> an orthonormal
    basis and uses norms, but never says the form is positive definite. It
    is, because <verbatim|\<frak-g\>> consists of skew-Hermitian matrices
    (<verbatim|G \<subset\> U(r_G)>), so <verbatim|\<minus\>tr(X\<twosuperior\>)
    = tr(X^*X) \<gtr\> 0> for <verbatim|X \<neq\> 0>. One sentence is needed;
    without it the display <verbatim|\<big-sum\>\<\|\|\>[e_j,e_\<ell\>]\<\|\|\>\<twosuperior\>>
    is not justified.

    <item><strong|State that <verbatim|C_\<frak-g\>> does not depend on the
    orthonormal basis, and that <verbatim|dim \<frak-g\> \<geq\> 1>.> The
    definition says "an orthonormal basis". Independence holds because
    <verbatim|\<big-sum\>_j (ad e_j)\<twosuperior\>> is unchanged under an
    orthogonal change of basis. The division by <verbatim|dim \<frak-g\>> is
    harmless because a nonabelian algebra is nonzero; the hypotheses give
    this but the text does not say it. Closure of <verbatim|\<frak-g\>> under
    brackets is the standard fact for the Lie algebra of a closed matrix
    group and could be mentioned with a reference to the existing background
    note on SU(2) or a textbook.
  </enumerate>

  Suggestions, not required:

  <\enumerate>
    <assign|item-nr|2><item>A normalisation example would help readers
    compare with the usual one-loop coefficient. By my hand computation (not
    checked against the source or a reference), for <verbatim|SU(N)> in its
    defining representation <verbatim|C_\<frak-g\> = 2N\<twosuperior\>>, so
    <verbatim|2b_0 = 11N\<twosuperior\>/(12\<pi\>\<twosuperior\>)>, which is
    the standard <verbatim|\<beta\> = 2N/g\<twosuperior\>> running. If
    included it should be verified by someone else.

    <item>The symbol <verbatim|g> for <verbatim|\<beta\>^{-1/2}> invites
    reading it as the usual coupling; with the normalisation above the two
    differ by the factor <verbatim|\<sqrt\>(2N)>. The closing paragraph's
    caveat covers the physical identification but not this constant.
  </enumerate>

  Not checked: the running estimate <verbatim|eq:running> itself (an explicit
  input of the unit); whether the manuscript's reading of <verbatim|\<beta\>>
  as "the action coefficient" is justified beyond the declarations listed in
  the Lean-correspondence report. I built <verbatim|manuscript/main.tex> out
  of tree with <verbatim|latexmk -pdf> (exit 0; no undefined references in
  the final pass; <verbatim|pdftotext> finds no <verbatim|??>) but did not
  inspect the rendered pages visually.

  <section|Acceptance><label|acceptance>

  Not recorded. This report is agent-assisted evidence for a human reviewer.
  Any edit made in response changes the content fingerprint and needs a
  renewed check.

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
    <associate|acceptance|<tuple|3|3>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-5|<tuple|1.4|2>>
    <associate|auto-6|<tuple|1.5|2>>
    <associate|auto-7|<tuple|2|2>>
    <associate|auto-8|<tuple|3|3>>
    <associate|findings-and-evidence|<tuple|1|1>>
    <associate|positivity-of-b_0g|<tuple|1.5|2>>
    <associate|proposition-proprunning-asymptotic|<tuple|1.2|1>>
    <associate|proposition-propuniform-extraction|<tuple|1.1|1>>
    <associate|required-changes-and-remaining-uncertainty|<tuple|2|2>>
    <associate|review-of-a-proof-unit|<tuple|?|1>>
    <associate|scale-divergence|<tuple|1.4|2>>
    <associate|the-citation|<tuple|1.3|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Findings
      and evidence> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Proposition
      <with|font-family|<quote|tt>|language|<quote|verbatim>|prop:uniform-extraction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|Proposition
      <with|font-family|<quote|tt>|language|<quote|verbatim>|prop:running-asymptotic>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|The citation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|Scale divergence
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|Positivity of
      <with|font-family|<quote|tt>|language|<quote|verbatim>|b_0(G)>
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