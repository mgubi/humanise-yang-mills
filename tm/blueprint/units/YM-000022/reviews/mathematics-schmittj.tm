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

    <item>Human reviewer: schmittj (no acceptance recorded; see the last
    section)

    <item>Agent assistance: one Claude Opus reviewer agent, coordinated by a
    Claude session. The agent checked the argument, opened the cited sources
    and wrote this report. No other model was used.

    <item>Content SHA-256: <verbatim|37a404dea24a3001c320680e4b25334e619d6865178c86e3d85993bb4000168f>
    (<verbatim|python3 scripts/check_blueprint.py --fingerprint YM-000022> at
    commit <verbatim|d4be082>, head of draft PR #111; this equals the
    fingerprint recorded in the revision README)

    <item>Reviewed content: commit <verbatim|d4be082> ("docs: repair
    running-coefficient positivity and source anchors"), the single revision
    commit on top of <verbatim|47762e9>. File SHA-256:
    <verbatim|manuscript/pilots/running-coupling.tex>
    <verbatim|3f10d3ac67788342c85ed368691b8ea35b81bbc052ec1dd7a67c9a7e1d02a0ca>;
    <verbatim|manuscript/preamble.tex> <verbatim|0827ef173e55ac6cf7b9726f3cbaaa5be93a5dfac8ffb2cfdf7b3faed65e90df>;
    <verbatim|manuscript/references.bib> <verbatim|2d5d144741d57e970b239c69184b7566f90aa9355293026cfe26f37f0f73dbb7>;
    <verbatim|correspondence.md> <verbatim|ab7053e8121e39802821ddbc2872160b91d4722aa686b66f25e0ccea9f17958c>;
    <verbatim|unit.json> <verbatim|cfc20482faefa90b34cca4d903b0b21620efd55e60dd333cbeb69b8b96986731>;
    <verbatim|revisions/mgubi-astra-22-repair-20261113/README.md>
    <verbatim|2cba60fb7c67fc7c761611f18ec5973b8b074061c85db89a1d539678dd157cd3>.

    <item>Manuscript files and labels: <verbatim|manuscript/pilots/running-coupling.tex>
    (<verbatim|sec:running-coefficient>, <verbatim|eq:running>,
    <verbatim|prop:uniform-extraction>, <verbatim|prop:running-asymptotic>),
    <verbatim|manuscript/preamble.tex>, <verbatim|manuscript/references.bib>.
    The list in <verbatim|unit.json> is complete for this section.

    <item>Source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>

    <item>Review task and PR: <hlink|issue
    #22|https://github.com/hairer/humanise-yang-mills/issues/22>, review
    claim by session <verbatim|schmittj-claude-review22-rev-20261113>; author
    revision in draft PR #111.

    <item>Outcome: changes requested (one small citation gap; the mathematics
    is otherwise correct). This is an agent review without human acceptance.
  </itemize-minus>

  I am not an author of this unit. The previous reviewer (mgubi) is now
  credited as an author of this revision, so the reports
  <verbatim|reviews/*-mgubi.md> cannot serve as review of the current
  fingerprint; this report is independent of them in that sense, although I
  read them.

  <section|Findings and evidence><label|findings-and-evidence>

  I reviewed the whole section, not only the diff, and recomputed every step.

  <subsection|Inner product and positive definiteness (new
  text)><label|inner-product-and-positive-definiteness-new-text>

  Correct. For <verbatim|X> in the Lie algebra, <verbatim|t \<mapsto\>
  exp(tX)> is a curve of unitary matrices with value <verbatim|I> and
  derivative <verbatim|X> at <verbatim|0>; differentiating
  <verbatim|exp(tX)^* exp(tX) = I> gives <verbatim|X^* + X = 0>. The form
  <verbatim|\<langle\>X,Y\<rangle\> = \<minus\>r_G^{-1} Re tr(XY)> is real
  bilinear and symmetric (<verbatim|tr(XY) = tr(YX)>). On skew-Hermitian
  matrices <verbatim|\<minus\>tr(XX) = tr(X^*X) = \<Sigma\>_{a,b}
  \|X_{ab}\|^2>, which is real and positive for <verbatim|X \<neq\> 0>, so
  the form is an inner product on <verbatim|\<frak-g\>>; the sign convention
  is right. The class of algebras is exactly the one the hypotheses give:
  real subalgebras of <verbatim|u(r_G)>, i.e. Lie algebras of closed
  subgroups of <verbatim|U(r_G)> (compact type). The display writes
  <verbatim|r_G^{-1} tr(X^*X)> without <verbatim|Re>; this is harmless
  because the trace is real (NIT).

  <subsection|Casimir constant, basis independence, nonzero dimension (new
  text)><label|casimir-constant-basis-independence-nonzero-dimension-new-text>

  Correct. If <verbatim|f_i = \<Sigma\>_j q_{ij} e_j> with <verbatim|q>
  orthogonal, linearity of <verbatim|ad> gives <verbatim|\<Sigma\>_i (ad
  f_i)^2 = \<Sigma\>_{j,k} (q\<#1D40\>q)_{jk} ad e_j ad e_k = \<Sigma\>_j (ad
  e_j)^2>; any two orthonormal bases are related by such a <verbatim|q>, so
  <verbatim|C_\<frak-g\>> is basis independent. A nonabelian algebra contains
  a nonzero element, so <verbatim|dim_\<bbb-R\> \<frak-g\> \<geq\> 1> and the
  division is legitimate. Only the nonabelian clause of simplicity is used
  here (and for positivity below); the section keeps the full simplicity
  hypothesis, which is harmless and matches the source.

  <subsection|Positivity of <verbatim|b_0(G)>><label|positivity-of-b_0g>

  Correct. I rechecked <verbatim|\<langle\>[X,Y],Z\<rangle\> =
  \<minus\>\<langle\>Y,[X,Z]\<rangle\>>: both sides equal
  <verbatim|\<minus\>r_G^{-1} Re(tr(XYZ) \<minus\> tr(YXZ))> after cycling
  <verbatim|tr(YZX) = tr(XYZ)>. Hence each <verbatim|ad e_j> is skew-adjoint,
  <verbatim|\<minus\>Tr_\<frak-g\>((ad e_j)^2) = Tr((ad e_j)\<#1D40\> ad e_j)
  = \<Sigma\>_\<ell\> \<\|\|\>[e_j,e_\<ell\>]\<\|\|\>^2>, and
  <verbatim|C_\<frak-g\> = (dim \<frak-g\>)^{-1} \<Sigma\>_{j,\<ell\>}
  \<\|\|\>[e_j,e_\<ell\>]\<\|\|\>^2>. If all <verbatim|[e_j,e_\<ell\>]>
  vanished, bilinearity would make <verbatim|\<frak-g\>> abelian; so
  <verbatim|C_\<frak-g\> \<gtr\> 0> and <verbatim|b_0(G) = 11
  C_\<frak-g\>/(48\<pi\>^2) \<gtr\> 0>.

  Normalisation check (my hand computation, offered for orientation; not a
  claim of the section): for <verbatim|SU(N)> in the defining representation,
  <verbatim|e_a = i\<sqrt\>(2N) T^a> with <verbatim|tr(T^aT^b) =
  \<delta\>_{ab}/2> is orthonormal, <verbatim|[e_a,e_b] =
  \<minus\>\<sqrt\>(2N) f_{abc} e_c>, so <verbatim|C_\<frak-g\> = 2N
  \<centerdot\> N(N^2\<minus\>1)/(N^2\<minus\>1) = 2N^2> and
  <verbatim|2b_0(G) = 11N^2/(12\<pi\>^2)>. With the conventional
  <verbatim|\<beta\> = 2N/g_{std}^2> and <verbatim|b_0^{std} =
  11N/(48\<pi\>^2)> one gets <verbatim|\<beta\> \<approx\> 2N \<centerdot\>
  2b_0^{std} log(a^{-1}) = 11N^2/(12\<pi\>^2) log(a^{-1})>, consistent with
  <verbatim|c = 2b_0(G)>. So the constant is the expected one; but
  <verbatim|b_0(G)> is <verbatim|2N b_0^{std}> for <verbatim|SU(N)>, and
  <verbatim|g = \<beta\>^{-1/2} = g_{std}/\<sqrt\>(2N)> (NIT; see suggestion
  3).

  <subsection|Scale divergence><label|scale-divergence>

  Correct: <verbatim|a_m^{-1} = \<Pi\>_{j\<less\>m} B_j> with integers
  <verbatim|B_j \<geq\> 3>, so <verbatim|s_m = \<Sigma\>_{j\<less\>m} log B_j
  \<geq\> m log 3 \<rightarrow\> \<infty\>>. Here <verbatim|s_0 = 0>; only
  eventual positivity is used.

  <subsection|The running estimate <verbatim|eq:running>><label|the-running-estimate-eqrunning>

  Stated correctly as an explicit outstanding input: one fixed intercept
  <verbatim|\<beta\>\<#304\>>, and for every <verbatim|\<eta\> \<gtr\> 0> a
  threshold <verbatim|m_0(\<eta\>)> uniform in <verbatim|N \<geq\> m> and
  <verbatim|p>. The section does not claim to prove it. Quantifier order
  (<verbatim|\<forall\>\<eta\> \<exists\>m_0 \<forall\>m \<geq\> m_0
  \<forall\>N \<geq\> m \<forall\>p>) matches what the propositions use.

  <subsection|<verbatim|prop:uniform-extraction>><label|propuniform-extraction>

  Correct. With <verbatim|\<eta\> = \<varepsilon\>/2> and <verbatim|s_m
  \<gtr\> 2(\|A\|+1)/\<varepsilon\>>: <verbatim|\|\<beta\>/s_m \<minus\> c\|
  \<leq\> \|\<beta\> \<minus\> (A + c s_m)\|/s_m + \|A\|/s_m \<leq\>
  \<varepsilon\>/2 + \|A\|/s_m>, and <verbatim|\|A\|/s_m \<less\>
  \<varepsilon\>\|A\|/(2(\|A\|+1)) \<less\> \<varepsilon\>/2>. Both
  thresholds depend on <verbatim|\<varepsilon\>> only. No sign of
  <verbatim|A> or <verbatim|c> is used.

  <subsection|<verbatim|prop:running-asymptotic>><label|proprunning-asymptotic>

  Correct, conditional on <verbatim|eq:running> and <verbatim|c = 2b_0(G)
  \<gtr\> 0>. Substituting <verbatim|m = i>, <verbatim|N = N(i)>, <verbatim|p
  = k(i)> is legitimate once <verbatim|i \<leq\> N(i)>; uniformity in
  <verbatim|p> is what frees <verbatim|k>. Taking <verbatim|\<varepsilon\> =
  c/2> gives <verbatim|x_i \<gtr\> c/2 \<gtr\> 0> and <verbatim|\<beta\> =
  s_i x_i \<gtr\> 0> eventually. Lebl's rules are applied on the positive
  tail, and the finite-modification remark handles their "for all
  <verbatim|n>" hypotheses. The identity <verbatim|1/\<sqrt\>x_i =
  \<sqrt\>s_i/\<sqrt\>\<beta\> = g \<sqrt\>(log a_i^{-1})> holds on that
  tail. There is only one limit, so no order-of-limits issue arises. NIT: the
  proposition's statement does not name its standing hypotheses (the fixed
  family with <verbatim|eq:running>, and the nonabelian/simple
  <verbatim|\<frak-g\>> giving <verbatim|c \<gtr\> 0>); they are only in the
  preceding paragraph and in the proof's first line.

  <subsection|Closing remark><label|closing-remark>

  Correct as worded. At <verbatim|N(i) = i> the coefficient is the one in the
  bare density <verbatim|exp(\<minus\>\<beta\> \<Sigma\>_faces (1 \<minus\>
  r_G^{-1} Re tr U_p))> (see the Lean-correspondence report). The section
  does not write this action out; doing so in one line would let readers
  compare with the usual Wilson normalisation (suggestion 4).

  <subsection|Literature><label|literature>

  Lebl, <em|Basic Analysis I>, Propositions 2.2.5(iv) and 2.2.6: I did not
  refetch the page; the previous mathematics review
  (<verbatim|reviews/mathematics-mgubi.md>) records its statements and hash,
  the propositions as quoted there are the standard ones and apply as used,
  and the scalar proofs are unchanged by this revision.

  Hall, arXiv:math-ph/0005032v1: I downloaded the versioned PDF on 13
  November 2026 (<verbatim|https://arxiv.org/pdf/math-ph/0005032v1>, 128
  pages, SHA-256 <verbatim|2be9f80ed20b18b361c759d386dfd6804d5f9b31cb94b547a29883fa78f8f7f1>)
  and read the cited passages. Chapter 3, Definition 3.13 (printed p. 36):
  the Lie algebra of a matrix Lie group is the set of <verbatim|X> with
  <verbatim|e^{tX} \<in\> G> for all real <verbatim|t>. Section 5.4 of
  Chapter 3 (printed p. 37): <verbatim|e^{tX}> is unitary for all
  <verbatim|t> iff <verbatim|X^* = \<minus\>X>, by differentiating at
  <verbatim|t = 0>. Theorem 3.16 (printed pp. 40\U41): <verbatim|g> is closed
  under real scalars, sums and <verbatim|XY \<minus\> YX>. Hall's "matrix Lie
  group" is a subgroup of <verbatim|GL(n;\<bbb-C\>)> closed in
  <verbatim|GL(n;\<bbb-C\>)>; a closed subgroup of <verbatim|U(r_G)> is one.
  The citations are precise and applicable. However, they appear only in the
  revision README; neither the manuscript nor the correspondence's literature
  section cites Hall (finding 1).

  <subsection|Build><label|build>

  I built <verbatim|manuscript/main.tex> out of tree with <verbatim|latexmk
  -pdf> (exit 0, three pages); the log has no warnings, undefined references
  or over/underfull boxes, and <verbatim|pdftotext> finds no <verbatim|??>. I
  did not visually inspect the rendered pages.

  <section|Required changes and remaining
  uncertainty><label|required-changes-and-remaining-uncertainty>

  <\enumerate>
    <item><strong|GAP (citation): define <verbatim|\<frak-g\>> and cite the
    facts that make it a Lie algebra.> The section never defines
    <verbatim|\<frak-g\>>; its first new sentence ("Since <verbatim|exp(tX)>
    is unitary for <verbatim|X \<in\> \<frak-g\>>") silently uses the
    one-parameter definition, and the definition of <verbatim|C_\<frak-g\>>
    needs <verbatim|ad e_j> to map <verbatim|\<frak-g\>> into itself, i.e.
    closure of <verbatim|\<frak-g\>> under commutators, which for the
    one-parameter set is a theorem (it needs the Lie product formula and
    closedness of <verbatim|G> for sums). The phrase "with nonabelian simple
    real Lie algebra <verbatim|\<frak-g\>>" presupposes this without
    reference. Smallest repair: one sentence, "Here <verbatim|\<frak-g\> = {X
    : e^{tX} \<in\> G for all t \<in\> \<bbb-R\>}>, a finite-dimensional real
    Lie algebra under <verbatim|[X,Y] = XY \<minus\> YX> [Hall, Definition
    3.13 and Theorem 3.16]", plus a <verbatim|references.bib> entry for the
    versioned arXiv source (and optionally Hall Ÿ5.4 next to the derivative
    argument). The author has already checked these passages; they should
    also be listed in the correspondence's literature section. The previous
    review raised this only as optional, so it is a new request.
  </enumerate>

  Suggestions, not required:

  <\enumerate>
    <assign|item-nr|1><item>State the standing hypotheses in
    <verbatim|prop:running-asymptotic> ("Assume <verbatim|eq:running>;
    <verbatim|\<frak-g\>> nonabelian").

    <item>Note that <verbatim|b_0(G)> is not the conventional one-loop
    coefficient: for <verbatim|SU(N)>, <verbatim|b_0(G) = 2N b_0^{std}> and
    <verbatim|g = g_{std}/\<sqrt\>(2N)> (my computation above; to be verified
    independently if included).

    <item>Write out the bare Wilson action <verbatim|\<beta\> \<Sigma\>_p (1
    \<minus\> r_G^{-1} Re tr U_p)> in the closing remark.
  </enumerate>

  Not checked: the running estimate <verbatim|eq:running> and the
  construction that is said to supply it (an explicit input of the unit);
  Lebl's page was not refetched; the rendered PDF was not inspected visually.

  <subsection|Commands run><label|commands-run>

  <\shell-code>
    git log --oneline -5; git diff d4be082~1 d4be082

    sha256sum manuscript/pilots/running-coupling.tex manuscript/preamble.tex
    manuscript/references.bib blueprint/units/YM-000022/{correspondence.md,unit.json}
    blueprint/units/YM-000022/revisions/mgubi-astra-22-repair-20261113/README.md

    python3 scripts/check_blueprint.py \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ #
    Blueprint structure OK: 2 units. Lean and mathematics were not verified.

    python3 scripts/check_blueprint.py --fingerprint YM-000022 \ \ #
    37a404de\<ldots\>168f

    curl -sSL -o hall.pdf https://arxiv.org/pdf/math-ph/0005032v1; pdftotext
    -layout hall.pdf hall.txt \ \ # scratch directory

    latexmk -pdf -interaction=nonstopmode -halt-on-error
    -outdir=\<less\>scratch\<gtr\> main.tex \ \ # exit 0
  </shell-code>

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
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|1.9|3>>
    <associate|auto-11|<tuple|1.10|3>>
    <associate|auto-12|<tuple|2|4>>
    <associate|auto-13|<tuple|2.1|4>>
    <associate|auto-14|<tuple|3|4>>
    <associate|auto-2|<tuple|1.1|2>>
    <associate|auto-3|<tuple|1.2|2>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-5|<tuple|1.4|2>>
    <associate|auto-6|<tuple|1.5|2>>
    <associate|auto-7|<tuple|1.6|3>>
    <associate|auto-8|<tuple|1.7|3>>
    <associate|auto-9|<tuple|1.8|3>>
    <associate|build|<tuple|1.10|3>>
    <associate|casimir-constant-basis-independence-nonzero-dimension-new-text|<tuple|1.2|2>>
    <associate|closing-remark|<tuple|1.8|3>>
    <associate|commands-run|<tuple|2.1|4>>
    <associate|findings-and-evidence|<tuple|1|2>>
    <associate|inner-product-and-positive-definiteness-new-text|<tuple|1.1|2>>
    <associate|literature|<tuple|1.9|3>>
    <associate|positivity-of-b_0g|<tuple|1.3|2>>
    <associate|proprunning-asymptotic|<tuple|1.7|3>>
    <associate|propuniform-extraction|<tuple|1.6|3>>
    <associate|required-changes-and-remaining-uncertainty|<tuple|2|4>>
    <associate|review-of-a-proof-unit|<tuple|?|1>>
    <associate|scale-divergence|<tuple|1.4|2>>
    <associate|the-running-estimate-eqrunning|<tuple|1.5|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Findings
      and evidence> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Inner product and positive definiteness
      (new text) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|Casimir constant, basis independence,
      nonzero dimension (new text) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|Positivity of
      <with|font-family|<quote|tt>|language|<quote|verbatim>|b_0(G)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|Scale divergence
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|The running estimate
      <with|font-family|<quote|tt>|language|<quote|verbatim>|eq:running>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|<with|font-family|<quote|tt>|language|<quote|verbatim>|prop:uniform-extraction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|<with|font-family|<quote|tt>|language|<quote|verbatim>|prop:running-asymptotic>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|Closing remark
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|Literature
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|Build <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Required
      changes and remaining uncertainty> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Commands run
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Acceptance>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>