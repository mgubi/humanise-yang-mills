<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../outline.tm><ym-nav-sep><hlink|Unit
  plan|../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../index.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../glossary.tm><ym-nav-sep><hlink|Notation|../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../source/audit.tm><ym-nav-sep><hlink|Literature|../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../CONTRIBUTING.tm>>

  <ym-title|Baªaban's gauge averaging and gauge fixing against the
  patch-frame interface><label|baÅ‚abans-gauge-averaging-and-gauge-fixing-against-the-patch-frame-interface>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Result to be
    used> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Mathematical
    reference> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Match to the
    formalisation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Application and
    remaining proof obligations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Search and
    unresolved questions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Evidence>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>
  </table-of-contents>

  <\itemize-minus>
    <item>Literature task: <hlink|issue #15|https://github.com/hairer/humanise-yang-mills/issues/15>.

    <item>Source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>.

    <item>Status: source checked; author draft. <strong|Outcome: no citable
    theorem match was found in the passages read.> The papers below are
    antecedents of three ideas in the interface, not a source for its
    definitions or for <verbatim|YM.RG.Patch.Branches>.

    <item>Contributor and agent assistance: schmittj; source reading,
    comparison and drafting assisted by Claude, session
    <verbatim|schmittj-claude-issue15-20261112>, with one Claude subagent for
    the Lean-side reading and one Codex (<verbatim|gpt-6-astra>) pass used as
    an author-side cross-check. Neither is an independent review.

    <item>Independent review: pending; no reviewed commit or review link yet.

    <item>Claim: <hlink|self-claim|https://github.com/hairer/humanise-yang-mills/issues/15#issuecomment-6822041873>,
    until 2026-11-13 11:00 UTC.

    <item>Search lead: Scott Armstrong's <hlink|provenance
    review|https://github.com/scottnarmstrong/yang-mills-informalization/blob/7cebbf05447136e0a61ac9c0417a181f4df06ebf/provenance.md>,
    observations 04 and 05. It is the lead, not the mathematical citation.
  </itemize-minus>

  All Lean paths are relative to <verbatim|Lean/>. Evidence levels:
  <strong|(S)> read in the source statement or definition; <strong|(P)> a
  reading of a proof script, not checked by building; <strong|(I)> an
  inference from definitions made in this note; <strong|(R)> read in the
  cited paper on the stated page.

  <section|Result to be used><label|result-to-be-used>

  The interface that provisional unit PU-01 needs is the following
  well-posedness statement. It is established in the pinned source itself and
  not by any of the papers examined here.

  <strong|Setting (S).> A gauge group <math|G> is a closed subgroup of
  <math|U<around|(|N|)>>, <math|N\<geqslant\>1>, with no further hypothesis:
  <verbatim|YM.Gauge> (<verbatim|YM/Gauge/MatrixGroup.lean>) has only the
  fields <verbatim|n>, <verbatim|imageGroup>, <verbatim|closed_imageGroup>,
  so finite, abelian and disconnected groups are included. Write
  <math|s<around|(|u|)>=1-<math-up|Retr><around|(|u|)>/N>
  (<verbatim|YM.Gauge.price>) and <math|<around|\<lvert\>|u|\<rvert\>><rsub|c>=<around|\<lVert\>|u-1|\<rVert\>><rsub|H*S>/<sqrt|N>>
  (<verbatim|YM.Gauge.chord>); then <math|<around|\<lvert\>|u|\<rvert\>><rsub|c><rsup|2>=2*s<around|(|u|)>>
  (<verbatim|YM.Gauge.chord_price>). A patch (<verbatim|YM.RG.Patch>) is the
  cube <math|\<Lambda\>=<around|[|-R,R|]><rsup|4>\<cap\>\<bbb-Z\><rsup|4>>
  with <math|R=<around|(|J+3|)>*L>, <math|L\<geqslant\>3> odd,
  <math|J\<geqslant\>4>. For <math|x,y\<in\>\<bbb-Z\><rsup|4>> and a
  permutation <math|l> of the four axes, <math|\<Gamma\><rsub|l><around|(|x,y|)>>
  is the lattice path from <math|x> to <math|y> that corrects the coordinates
  in the order <math|l<around|(|0|)>,l<around|(|1|)>,l<around|(|2|)>,l<around|(|3|)>>,
  one straight leg per axis (<verbatim|YM.Lattice.route x y l>,
  <verbatim|YM/Lattice/Box.lean>), and <math|U<around|(|\<Gamma\>|)>> is the
  product of link variables along <math|\<Gamma\>>, first link leftmost
  (<verbatim|YM.Lattice.travel>, <verbatim|YM/Lattice/Path.lean>).

  <strong|Frame functional (S).> For <math|h:\<Lambda\>\<to\>G>,

  <\equation*>
    <math-up|score><around|(|U,h|)>=<frac|1|24<space|0.17em><around|\||\<Lambda\>|\|><rsup|2>>*<big|sum><rsub|x,y\<in\>\<Lambda\>><big|sum><rsub|l\<in\>S<rsub|4>>s*<around*|(|h<around|(|x|)>*<space|0.17em>U<around|(|\<Gamma\><rsub|l><around|(|x,y|)>|)>*<space|0.17em>h<around|(|y|)><rsup|-1>|)>,
  </equation*>

  which is <verbatim|YM.RG.Patch.score>. A frame is <em|minimising> if
  <math|h<around|(|0|)>=1> and it minimises the score among frames with
  <math|h<around|(|0|)>=1> (<verbatim|YM.RG.Patch.minimizing>). Existence is
  by compactness (<verbatim|YM.RG.Patch.min_exists>). The small-holonomy
  branch (<verbatim|YM.RG.Patch.usesMin>) is: for all
  <math|x,y\<in\>\<Lambda\>> and all orders <math|l,k>,
  <math|<around*|\<lvert\>|U<around|(|\<Gamma\><rsub|l><around|(|0,x|)>|)>*<space|0.17em>U<around|(|\<Gamma\><rsub|k><around|(|x,y|)>|)>*<space|0.17em>U<around|(|\<Gamma\><rsub|l><around|(|0,y|)>|)><rsup|-1>|\<rvert\>><rsub|c>\<less\><text|<with|font-family|tt|frame_cut>>>.

  <strong|Bond functional (S).> For <math|Y:\<Lambda\>\<to\>G> and
  <math|u\<in\>G>, <math|<math-up|bondCost><around|(|Y,u|)>=<big|sum><rsub|x>w<around|(|x|)>*<space|0.17em>s*<around|(|Y<around|(|x|)>*u<rsup|-1>|)>>,
  where <math|w> is the <math|J>-fold convolution of the uniform probability
  on the centred block <math|<around|[|-<around|\<lfloor\>|L/2|\<rfloor\>>,<around|\<lfloor\>|L/2|\<rfloor\>>|]><rsup|4>>
  (<verbatim|YM.RG.Patch.weight>, <verbatim|bondCost>). By
  <verbatim|YM.Branch.min_iff> (<verbatim|YM/Branch/Center.lean>), for
  weights summing to <math|1>, <math|u> minimises
  <math|<big|sum><rsub|i>w<rsub|i>*s*<around|(|f<rsub|i>*u<rsup|-1>|)>> if
  and only if <math|u> is a Hilbert\USchmidt-nearest point of <math|G> to the
  matrix <math|<big|sum><rsub|i>w<rsub|i>*f<rsub|i>>. The branch
  <verbatim|usesBest> is <math|<math-up|bondCost><around|(|Y,<text|<with|font-family|tt|best>><space|0.17em>Y|)>\<less\><text|<with|font-family|tt|predictor_cut>>>,
  with <verbatim|best Y> a chosen minimiser.

  <strong|Statements (S).>

  <\enumerate>
    <item><verbatim|YM.RG.frame_unique> (<verbatim|YM/Branch/Uniform.lean>):
    there is <math|\<delta\><around|(|G|)>\<gtr\>0> such that for every
    <verbatim|KernelChoices> with <verbatim|frame_cut>
    <math|\<leqslant\>\<delta\><around|(|G|)>>, every patch and every
    <math|U> on the branch <verbatim|usesMin>, there is exactly one
    minimising frame, that is, exactly one minimiser among frames with
    <math|h<around|(|0|)>=1>.

    <item><verbatim|YM.RG.predictor_unique>
    (<verbatim|YM/Branch/Uniform.lean>): there is
    <math|\<varepsilon\><around|(|G|)>\<gtr\>0> such that for every
    <verbatim|KernelChoices> with <verbatim|predictor_cut>
    <math|\<leqslant\>\<varepsilon\><around|(|G|)>>, every patch and every
    <math|Y> on the branch <verbatim|usesBest>, the minimiser of
    <math|<math-up|bondCost><around|(|Y,\<cdot\>|)>> is unique.

    <item><verbatim|YM.Axial.eligible> (<verbatim|YM/Branch/Pick.lean>): if
    <math|16\<leqslant\>> <verbatim|axial_factor>, then for every patch,
    every <math|U>, with no smallness assumption, and <strong|each> of the 24
    axis orders <math|l> there is a root <math|r\<in\>\<Lambda\>> with
  </enumerate>

  <\equation*>
    <big|sum><rsub|b><around*|\<lvert\>|a<around|(|b<rsub|->|)>*<space|0.17em>U<around|(|b|)>*<space|0.17em>a<around|(|b<rsub|+>|)><rsup|-1>|\<rvert\>><rsub|c>\<leqslant\><text|<with|font-family|tt|axial_factor>>\<cdot\><around|(|2*R+1|)>*<big|sum><rsub|p><around*|\<lvert\>|U*<around|(|\<partial\>*p|)>|\<rvert\>><rsub|c>,<space|2em>a<around|(|x|)>=U<around|(|\<Gamma\><rsub|l><around|(|r,x|)>|)>.
  </equation*>

  Here <math|b> runs once over the positively oriented links with both
  endpoints in <math|\<Lambda\>>, and <math|p> once over the plaquettes in
  the six coordinate planes <math|i\<less\>j> all of whose corners lie in
  <math|\<Lambda\>> (<verbatim|YM.RG.Patch.axialCost>, <verbatim|facesum>,
  <verbatim|eligible>). 4. <verbatim|YM.Axial.viable>
  (<verbatim|YM/Branch/Pick.lean>): for every <math|G> and every
  <math|\<kappa\>\<gtr\>0> there is one <verbatim|KernelChoices> <math|C>
  with penalty <math|\<kappa\>> such that <verbatim|P.Branches C G> holds for
  <strong|every> patch <math|P>. The three fields of <verbatim|Branches> are
  <verbatim|frame_unique>, <verbatim|predictor_unique> and
  <verbatim|axial_exists> (non-emptiness of the set of eligible tags). The
  statement does not expose the other entries of <math|C>; its proof takes
  <verbatim|frame_cut> <math|=\<delta\><around|(|G|)>>,
  <verbatim|predictor_cut> <math|=\<varepsilon\><around|(|G|)>>,
  <verbatim|axial_factor> <math|=16> (P).

  The thresholds <math|\<delta\><around|(|G|)>,\<varepsilon\><around|(|G|)>>
  do not depend on <math|L> or <math|J> and are not explicit; they come from
  a tubular neighbourhood of <math|G> in <math|M<rsub|N><around|(|\<bbb-C\>|)>>
  (<verbatim|YM.Gauge.nearest_tube>, <verbatim|YM.Gauge.nearest_approximate>,
  <verbatim|YM/Gauge/Nearest.lean>).

  The issue text describes the three fields of <verbatim|Branches> as
  obligations "packaged" in the structure. That is how consumers see them:
  the structure is a hypothesis of many downstream lemmas. They are, however,
  discharged in the source for every <verbatim|Gauge> by
  <verbatim|YM.Axial.viable>; downstream wrappers such as
  <verbatim|YM.Next.Foundations.branches>
  (<verbatim|YM/Next/FOUNDATIONS/Primary.lean>) expose that construction.
  <verbatim|YM.Axial.eligible> and <verbatim|YM.Branch.weighted_unique> are
  marked <verbatim|used> in <verbatim|Lean/verification/declaration-usage.tsv>.

  <section|Mathematical reference><label|mathematical-reference>

  Three papers were read in the journal scans, on the pages listed. Nothing
  outside those pages is asserted. Page numbers are journal pages.

  <\itemize-minus>
    <item><strong|[B-RG-I]> T. Baªaban, <em|Renormalization group approach to
    lattice gauge field theories. I. Generation of effective actions in a
    small field approximation and a coupling constant renormalization in four
    dimensions>, Comm. Math. Phys. <strong|109> (1987), 249\U301, <hlink|DOI
    10.1007/BF01215223|https://doi.org/10.1007/BF01215223>. Read: pp.
    251\U255, Eqs. (0.1)\U(0.19); p. 256 around Eq. (0.21) in the text layer
    only.

    <item><strong|[B-Average]> T. Baªaban, <em|Averaging operations for
    lattice gauge theories>, Comm. Math. Phys. <strong|98> (1985), 17\U51,
    <hlink|DOI 10.1007/BF01211042|https://doi.org/10.1007/BF01211042>. Read:
    pp. 17\U20, Eqs. (1)\U(17); pp. 35\U37 with Proposition 3; pp. 42\U44
    with Propositions 5\U7.

    <item><strong|[B-Gauge]> T. Baªaban, <em|Spaces of regular gauge field
    configurations on a lattice and gauge fixing conditions>, Comm. Math.
    Phys. <strong|99> (1985), 75\U102, <hlink|DOI
    10.1007/BF01466594|https://doi.org/10.1007/BF01466594>. Read: pp. 81\U84
    with Theorem 2; pp. 99\U100 with Propositions 6\U7.
  </itemize-minus>

  What these pages contain (R). Norms in the papers are the papers' own:
  [B-Average] distinguishes a Hilbert\USchmidt norm from the operator norm
  and states most estimates in the latter; they are not the normalised chord
  <math|<around|\<lvert\>|\<cdummy\>|\<rvert\>><rsub|c>> above.

  <\enumerate>
    <item><em|Setting.> [B-RG-I] pp. 251\U252: field configurations take
    values in a compact Lie group <math|G>, assumed semisimple and a Lie
    subgroup of a group of unitary matrices, with the remark that a bigger
    part of the considerations does not depend on semisimplicity; <math|L> is
    an odd integer <math|\<gtr\>11>; blocks are centred at coarse lattice
    points; the action is <math|<big|sum><rsub|p>\<varepsilon\><rsup|d-4>*<around|[|1-<math-up|Retr>U*<around|(|\<partial\>*p|)>|]>>
    with <math|<math-up|tr>1=1>, Eq. (0.2). [B-Average] pp. 17\U18:
    <math|L\<gtr\>1> is a fixed integer, blocks are
    <math|B<around|(|y|)>=<around|{|x:y<rsub|\<mu\>>\<leqslant\>x<rsub|\<mu\>>\<less\>y<rsub|\<mu\>>+L*\<eta\>|}>>,
    so <math|y> is a corner, and <math|G> is a Lie subgroup of
    <math|U<around|(|N|)>>; p. 20 obtains <math|G> by applying
    <math|e<rsup|i*A>> to the Lie algebra.

    <item><em|Contours.> [B-RG-I] p. 252: for <math|x> in the block
    <math|B<around|(|y|)>>, <math|\<b-up-G\><around|(|y,x|)>> is the family
    of shortest contours from <math|y> to <math|x> obtained from all
    permutations of the axes with non-zero displacement, one straight leg per
    axis.

    <item><em|Averaged link variables.> [B-Average] Eq. (15), p. 19:
    <math|<wide|U|\<bar\>><rsub|c>=exp <around*|[|i*<big|sum><rsub|x\<in\>B<around|(|c<rsub|->|)>>L<rsup|-d><tfrac|1|i>log
    U<around|(|\<Gamma\><rsub|c,x>|)>*U<around|(|c|)><rsup|-1>|]>*U<around|(|c|)>>,
    an explicit formula with uniform weight over one block, where
    <math|\<Gamma\><rsub|c,x>> runs from the block base point
    <math|c<rsub|->> through <math|x> to <math|c<rsub|+>>. It satisfies the
    covariance requirement (11), <math|<wide|U<rsup|u>|\<bar\>>=<around|(|<wide|U|\<bar\>>|)><rsup|u>>.
    [B-RG-I] Eq. (0.4), p. 253, is the variant symmetrised over
    <math|\<b-up-G\><around|(|c<rsub|->,x|)>> and
    <math|\<b-up-G\><around|(|c<rsub|+>,x<rprime|'>|)>> for complexified
    configurations; Eq. (0.12), p. 254, the variant built on averaged contour
    variables. [B-Average] p. 42 says that the average is formally defined
    for all configurations, with good control on configurations satisfying
    the regularity condition (52).

    <item><em|Group mean.> [B-RG-I] Eqs. (0.5)\U(0.9), p. 253: an axiomatic
    average <math|M<around|(|<around|{|\<b-up-U\><rsub|j>|}>|)>>, a
    <math|G<rsup|c>>-valued analytic function of finitely many elements of
    the complexified group <math|G<rsup|c>> of sufficiently small diameter,
    with <math|M<around|(|<around|{|\<b-up-U\><rsub|j><rsup|-1>|}>|)>=M<around|(|<around|{|\<b-up-U\><rsub|j>|}>|)><rsup|-1>>,
    <math|M<around|(|<around|{|u*\<b-up-U\><rsub|j>*v|}>|)>=u*M<around|(|<around|{|\<b-up-U\><rsub|j>|}>|)>*v>,
    permutation invariance, first-order agreement with the arithmetic mean of
    logarithms, and the property that it maps <math|G> to <math|G>. Eq.
    (0.10) recalls a definition equivalent to Federbush's: the
    <math|\<b-up-U\>\<in\>G<rsup|c>> near the <math|\<b-up-U\><rsub|j>> with
    <math|<big|sum><rsub|j><tfrac|1|i>log
    \<b-up-U\><rsub|j>*\<b-up-U\><rsup|-1>=0>. The paper states that its
    considerations "are valid universally for all averages satisfying the
    above properties". The mean is used to define
    <math|\<b-up-U\><around|(|y,x|)>=M<around|(|<around|{|\<b-up-U\><around|(|\<Gamma\>|)>|}><rsub|\<Gamma\>\<in\>\<b-up-G\><around|(|y,x|)>>|)>>,
    Eq. (0.11).

    <item><em|Gauge fixing.> [B-RG-I] pp. 254\U255: the renormalization
    integrals are restricted to small-field configurations,
    <math|<around|\||U*<around|(|\<partial\>*p|)>-1|\|>\<less\>\<varepsilon\><rsub|0>>.
    The residual invariance under <math|u> with <math|u<around|(|y|)>=1> at
    coarse points is removed by a Faddeev\UPopov argument: one inserts, for
    <math|y> coarse and <math|x\<in\>B<around|(|y|)>>, <math|x\<ne\>y>, the
    normalised factors <math|z<rsup|-1>*exp
    <around|[|-<tfrac|1|\<alpha\>><around|(|1-<math-up|Retr>U<around|(|y,x|)>|)>|]>*<space|0.17em>\<chi\><around|(|<around|{|<around|\||U<around|(|y,x|)>-1|\|>\<less\>\<varepsilon\><rsub|0>|}>|)>>,
    Eqs. (0.14)\U(0.16).

    <item><em|Kernel.> [B-Average] Eq. (10) and [B-RG-I] Eq. (0.17): the
    transformation is <math|<big|int>d*U*<space|0.17em><big|prod><rsub|c>\<delta\>*<around|(|<wide|U|\<bar\>><around|(|c|)>*V<rsup|-1><around|(|c|)>|)>*\<cdots\>>.
    [B-RG-I] Eq. (0.13) allows a general gauge-invariant kernel
    <math|t<around|(|V,U|)>>.

    <item><em|Regularity of the average.> [B-Average] Proposition 3, p. 36:
    under the assumptions of that section on <math|V<rsub|0>> and
    <math|V<rsub|1>=e<rsup|i*A>> with <math|\<alpha\><rsub|0>,\<alpha\><rsub|1>\<leqslant\>c<rsub|3>>,
    where <math|c<rsub|3>> depends on <math|d> and <math|L>, the function
    <math|Q<around|(|V<rsub|0>,A|)>=<tfrac|1|i>log <wide|V|\<bar\>><rsub|1>>
    is analytic in <math|A> and <math|Q<around|(|V<rsub|0>,A,c|)>=L*<around|(|Q<around|(|V<rsub|0>|)>*A|)><rsub|c>+C<around|(|V<rsub|0>,A,c|)>>,
    Eq. (122), with the linear form <math|Q<around|(|V<rsub|0>|)>*A> given by
    (124) and the remainder bounded as in (123). Proposition 6, p. 43: if
    <math|U<rsub|0>> satisfies (52), then
    <math|<wide|U<rprime|'>*U<rsub|0>|\<bar\>><rsup|<space|0.17em>k>> is
    analytic in <math|A<rprime|'>=<tfrac|1|i*\<eta\>>log U<rprime|'>> for
    <math|<around|\||A<rprime|'>|\|>\<less\>\<alpha\><rsub|1>>, with the
    bound (164). Proposition 7, p. 43: under the same assumptions
    <math|Q<rsub|k><around|(|U<rprime|'>*U<rsub|0>,\<eta\>*A|)>> is analytic
    in <math|A<rprime|'>> and <math|A> jointly, and Proposition 4 holds
    uniformly in <math|A<rprime|'>>.

    <item><em|Uniqueness in gauge fixing.> [B-Gauge] Theorem 2, p. 83: for
    <math|U<rsub|0>>, <math|U<rprime|'>*U<rsub|0>> satisfying (1.33)\U(1.35)
    with <math|\<alpha\><rsub|0>+\<alpha\><rsub|1>\<leqslant\>c<rsub|1>>
    there exists exactly one gauge transformation <math|u> satisfying the
    multi-scale averaged constraints (1.29),
    <math|<around|(|<wide|R<rsub|0>*u|\<bar\>><rsup|<space|0.17em>j>|)><around|(|y|)>=1>
    for <math|y\<in\>\<Lambda\><rsub|j>>, <math|j=0,\<ldots\>,k>, such that
    the transformed configuration <math|U<rsub|1>=U<rprime|'><rsup|u<rsup|-1>>>
    (the action being the background-dependent one of that paper) satisfies
    (1.36)\U(1.39): the bounds on <math|A=<tfrac|1|i*\<eta\>>log U<rsub|1>>,
    the averaging equations <math|Q<rsub|j><around|(|U<rsub|0>,\<eta\>*A|)>=B>
    and the Landau-type condition <math|R<around|(|U<rsub|0>|)>*D<rsup|\<eta\>\<ast\>><rsub|U<rsub|0>>*A=0>.
    Page 99 shows that the additional regularity condition in (1.33) can be
    dropped. Proposition 7, p. 100, is the converse passage to the axial
    gauge.

    <item><em|A neighbouring result, not examined.> [B-RG-I] p. 256, Eq.
    (0.21), considers the gauge action restricted to configurations with
    fixed averages and refers to another paper for a unique critical orbit
    consisting of minima in a space of regular configurations. This concerns
    the background field of the action, not the frame or predictor above.
  </enumerate>

  <section|Match to the formalisation><label|match-to-the-formalisation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Item>>|<cell|<strong|Baªaban
  (R)>>|<cell|<strong|Pinned source (S)>>|<cell|<strong|Verdict>>>|<row|<cell|Group>|<cell|[B-RG-I]:
  compact, semisimple, Lie subgroup of unitary matrices; [B-Average]: Lie
  subgroup of <math|U<around|(|N|)>>, described through the exponential of
  its Lie algebra>|<cell|any closed subgroup of
  <math|U<around|(|N|)>>>|<cell|Lean is at least as general. Applicability of
  the papers' statements to disconnected or finite <math|G> was not
  established>>|<row|<cell|Normalisation>|<cell|<math|1-<math-up|Retr>U>,
  <math|<math-up|tr>1=1>>|<cell|<verbatim|price>
  <math|=1-<math-up|Retr>/N>>|<cell|same>>|<row|<cell|Paths>|<cell|<math|\<b-up-G\><around|(|y,x|)>>:
  one contour per permutation of the axes with non-zero displacement,
  <math|x\<in\>B<around|(|y|)>>>|<cell|<verbatim|route y x l>,
  <math|l\<in\>S<rsub|4>>, for any two points>|<cell|same family of
  one-leg-per-axis contours. The uniform average over the 24 orders equals
  the uniform average over <math|\<b-up-G\><around|(|y,x|)>>, since with
  <math|k> non-zero displacements each contour arises from <math|24/k!>
  orders (I). Lean uses it for all pairs in the
  patch>>|<row|<cell|Block>|<cell|[B-RG-I]: centred blocks of side <math|L>,
  <math|L> odd <math|\<gtr\>11>; [B-Average]: cornered blocks,
  <math|L\<gtr\>1>; uniform weight <math|L<rsup|-d>> over one
  block>|<cell|overlapping patches of radius <math|<around|(|J+3|)>*L>,
  weight <math|w> a <math|J>-fold convolution, <math|J\<geqslant\>4>,
  <math|L\<geqslant\>3> odd>|<cell|different geometry>>|<row|<cell|Link
  average>|<cell|explicit exponential of averaged logarithms, (15), (0.4),
  (0.12); controlled on regular configurations>|<cell|global minimiser of
  <verbatim|bondCost>, i.e. nearest point of <math|G> to the Euclidean mean
  of frame-corrected straight transports, with a sampled
  fallback>|<cell|different operation>>|<row|<cell|Group mean
  axioms>|<cell|(0.5)\U(0.9), analytic, on <math|G<rsup|c>>, small
  diameter>|<cell|<verbatim|YM.RG.Patch.bond_gauge> gives the analogue of
  (0.6) and <verbatim|YM.RG.Patch.bond_inv> of (0.5)
  (<verbatim|YM/Branch/Predict.lean>, both under <verbatim|Branches>); no
  analyticity statement in <verbatim|YM/Branch/>>|<cell|partial analogy; the
  source does not verify the axioms>>|<row|<cell|Gauge
  fixing>|<cell|symmetrised axial fixing by normalised exponential factors
  inside the integral, Faddeev\UPopov, small field>|<cell|observation-side
  frame: the unique minimising frame on the branch <verbatim|usesMin>, a
  random eligible axial frame otherwise>|<cell|different
  mechanism>>|<row|<cell|Uniqueness>|<cell|[B-Gauge] Thm 2: a unique
  transformation obeying (1.29) whose result satisfies
  (1.36)\U(1.39)>|<cell|<verbatim|frame_unique>: uniqueness of the minimiser
  of <verbatim|score> among all frames with <math|h<around|(|0|)>=1>,
  threshold uniform in the patch>|<cell|different statement; no implication
  either way was found>>|<row|<cell|Kernel>|<cell|<math|\<delta\>*<around|(|<wide|U|\<bar\>>*V<rsup|-1>|)>>>|<cell|<math|<big|sum><rsub|t>\<mu\><rsub|U><around|(|t|)>*<big|prod><rsub|b>Z<rsup|-1>*exp
  <around*|(|-\<beta\>*\<kappa\>*<space|0.17em>s*<around|(|V<rsub|b>*Q<rsub|b><around|(|U,t|)><rsup|-1>|)>|)>>
  with respect to product probability Haar measure, <math|t> ranging over tag
  assignments with weights <math|\<mu\><rsub|U>>
  (<verbatim|YM.RG.StepData.density>, <verbatim|YM/RG/Block.lean>)>|<cell|different>>|<row|<cell|Fallback>|<cell|no
  tagged fallback on the pages read>|<cell|<verbatim|axial_exists>, valid for
  every configuration>|<cell|no counterpart found>>>>>

  Conclusions, all limited to the passages read.

  <\enumerate>
    <item><strong|<verbatim|min_exists> and <verbatim|bond_min>> are
    compactness statements (a continuous function on a compact set attains
    its minimum). They need no reference.

    <item><strong|<verbatim|Branches> is not supplied by these passages.>
    None of the statements read concerns a global minimiser of a chordal
    cost, the nearest-point projection onto <math|G>, or a bound for an axial
    gauge on arbitrary configurations. [B-Gauge] Theorem 2 is a uniqueness
    theorem for a different gauge condition under multi-scale regularity
    hypotheses that have no counterpart in <verbatim|usesMin>. The projection
    <math|R<around|(|U<rsub|0>|)>> there acts on field configurations and is
    not a nearest-point projection onto the group.

    <item><strong|What may be cited> is historical and structural: the
    permutation-symmetrised contour families ([B-RG-I] p. 252), the
    requirement that block averaging commute with gauge transformations
    ([B-Average] Eq. (11)), the idea of a group-valued mean with the
    invariances (0.5)\U(0.7), and gauge fixing normalised at coarse lattice
    points. These are attributions for an introduction, not steps of a proof.

    <item><strong|The predictor with a tagged fallback> has a closer formal
    antecedent in OpenAI, <em|Sharp mass bounds for the two-dimensional O(4)
    model> (preprint, 23 September 2026), Eq. (5.2), p. 39 (R): there the
    block mean <math|m<rsub|Y>> is normalised when
    <math|<around|\||m<rsub|Y>|\|>\<geqslant\><tfrac|1|2>> and otherwise
    replaced by a constituent spin sampled with the block weights, and the
    kernel is a normalised exponential of the squared chordal distance on
    <math|S<rsup|3>>. This agrees with Scott Armstrong's assessment. That
    paper treats spins, so it has no frames.
  </enumerate>

  <section|Application and remaining proof
  obligations><label|application-and-remaining-proof-obligations>

  Proposed treatment for the consuming unit (provisional PU-01, block-spin
  map and symmetric gauge fixing): <strong|prove in detail>, following the
  source, and cite Baªaban only for attribution. In the source the argument
  occupies about 1,030 lines in <verbatim|YM/Branch/{Pick,Slide,Uniform,Synchronize,Center}.lean>,
  <verbatim|YM/Lattice/Foliation.lean> and <verbatim|YM/Gauge/Nearest.lean>,
  plus about 550 lines of Lie-group charts in
  <verbatim|YM/Gauge/{Chart,Lie,Colors}.lean>. Its mathematical steps, as
  read from the proof scripts (P):

  <\enumerate>
    <item><em|Nearest-point projection.> For a closed subgroup
    <math|G\<subset\>U<around|(|N|)>> there is a tube around <math|G> in
    <math|M<rsub|N><around|(|\<bbb-C\>|)>>, of radius uniform by invariance,
    on which the Hilbert\USchmidt-nearest point of <math|G> is unique; at
    <math|1> the projection has strict derivative equal to the orthogonal
    projection onto the Lie algebra (<verbatim|YM.Gauge.nearest_tube>,
    <verbatim|YM.Gauge.focus_deriv>, <verbatim|YM.Gauge.nearest_approximate>,
    all in <verbatim|YM/Gauge/Nearest.lean>; the construction uses the
    inverse function theorem). This is the tubular-neighbourhood statement
    for a compact embedded submanifold and is a candidate for <strong|cite
    and apply>; a precise reference still has to be selected and checked,
    including for groups that are not connected.

    <item><em|Predictor.> By Jensen's inequality and
    <math|2*N*<space|0.17em>s*<around|(|u*v<rsup|-1>|)>=<around|\<lVert\>|u-v|\<rVert\>><rsub|H*S><rsup|2>>
    (<verbatim|YM.Branch.price_diff>), a small value of <verbatim|bondCost>
    puts the Euclidean mean in the tube, so its nearest group point is unique
    (<verbatim|YM.Branch.weighted_unique>, <verbatim|YM/Branch/Center.lean>).

    <item><em|Frame.> In <verbatim|YM/Branch/Synchronize.lean>: any global
    minimiser of the unnormalised cost satisfies, at each point, a
    nearest-point equation for an averaged "feedback" matrix
    (<verbatim|YM.Branch.Pairs.self_consistent>); comparing with the trivial
    frame bounds the spread of a minimiser
    (<verbatim|YM.Branch.Pairs.compare_energy>); after left translation so
    that the centroid defect is normal to <math|G>, the maximal difference
    <math|u> of two minimisers satisfies <math|u\<leqslant\>u/4+u/4>. Hence
    two global minimisers differ by a common left factor, which is the
    statement of <verbatim|YM.Branch.align>; its threshold does not depend on
    the number of points or paths. <verbatim|YM.RG.frame_unique> follows on
    imposing <math|h<around|(|0|)>=1>. The final comparison of minimisers is
    a contraction estimate, not a local uniqueness argument at a critical
    point.

    <item><em|Axial fallback.> Induction over the axes: choose the layer with
    least plaquette sum, apply the induction hypothesis there, and transport
    along the last axis, where each step changes a link by at most one
    plaquette (<verbatim|YM.Axial.total_slab> and
    <verbatim|YM.Axial.existence> in <verbatim|YM/Branch/Pick.lean>, with the
    comparison estimates <verbatim|variation>, <verbatim|slide_le>,
    <verbatim|window_le> in <verbatim|YM/Branch/Slide.lean>). This yields the
    constant <math|4\<cdot\>4=16>.
  </enumerate>

  Each consuming proof must also check, and this note does not: gauge and
  lattice covariance of the frame and of the kernel
  (<verbatim|YM.RG.Patch.frame_gauged>, <verbatim|YM.RG.StepData.covary>,
  <verbatim|YM.RG.StepData.channel>); normalisation of the kernel
  (<verbatim|YM.RG.StepData.density_total>); continuity of the selected frame
  on its branch (<verbatim|YM.RG.Patch.selected_cont>). All five have
  <verbatim|Branches> as a hypothesis. It must further show how the
  small-field region of the RG step implies <verbatim|usesMin> and
  <verbatim|usesBest>. For <verbatim|usesMin> only the sufficient condition
  <verbatim|YM.Push.Uniform.minimizing_used>
  (<verbatim|YM/Push/STATIONARY_UNIFORM/FrameMin.lean>) was read: if all
  transports <math|U<around|(|\<Gamma\><rsub|l><around|(|i,j|)>|)>> between
  patch points have chord at most <math|r> and <math|3*r\<less\>>
  <verbatim|frame_cut>, then <verbatim|usesMin> holds. For
  <verbatim|usesBest> nothing was read.

  <section|Search and unresolved questions><label|search-and-unresolved-questions>

  <\itemize-minus>
    <item>Not read in full: [B-Average] ŸŸB\UD and [B-Gauge] ŸŸD\UF, of which
    only the pages listed above were inspected. Not read at all: B-Var (Comm.
    Math. Phys. 102 (1985), 277\U309), whose Theorem 1 Scott Armstrong cites
    for a unique small critical orbit and which is presumably the paper
    behind [B-RG-I] Eq. (0.21); B-Prop-I; Federbush's preprints cited as [35]
    in [B-RG-I] for the mean (0.10). A match in those places is not excluded.
    By the lead's own description B-Var concerns a constrained problem with
    fixed averages.

    <item>Unverified leads for step 1 and for the frame functional,
    <strong|not read>: the literature on extrinsic (chordal, projected
    arithmetic) means on matrix groups and on synchronisation over a group
    with a complete measurement graph, where functionals of the form
    <math|<big|sum><around|\<lVert\>|h<around|(|x|)>*W<around|(|x,y|)>-h<around|(|y|)>|\<rVert\>><rsup|2>>
    are standard. Whether any published theorem gives uniqueness of global
    minimisers modulo a common factor, uniformly in the number of points, as
    <verbatim|YM.Branch.align> does, is open. No novelty claim is made.

    <item>Open on the Lean side: explicit sizes of
    <math|\<delta\><around|(|G|)>,\<varepsilon\><around|(|G|)>>; the role of
    <math|J\<geqslant\>4> and <math|L> odd, which the proofs of the three
    fields do not use; regularity of the selected frame beyond continuity,
    which the header of <verbatim|YM/Branch/Synchronize.lean> says is not
    tracked there.

    <item>Whether the linearisation of the Lean predictor at <math|U=1>
    agrees with Baªaban's linear average [B-Average] Eq. (14) was not
    examined; the weights differ (<math|w> against uniform), so exact
    agreement is not expected.
  </itemize-minus>

  <section|Evidence><label|evidence>

  Commands were run in a worktree at repository commit
  <verbatim|5535cc1579029c69155b0d0a89c13b819bf0f5f1>. No Lean build or axiom
  query was run for this note; all Lean evidence is from reading source text.

  <\itemize-minus>
    <item><verbatim|Lean/YM/RG/Patch.lean> read in full (187 lines).
    Statements re-read directly: <verbatim|sed -n 134,144p
    YM/Branch/Pick.lean> (<verbatim|YM.Axial.viable>), <verbatim|sed -n
    16,22p> and <verbatim|56,62p YM/Branch/Uniform.lean>, <verbatim|sed -n
    68,76p> and <verbatim|93,98p YM/Branch/Center.lean>, <verbatim|sed -n
    1,24p> and <verbatim|229,236p YM/Branch/Synchronize.lean>, <verbatim|sed
    -n 19,27p> and <verbatim|109,116p YM/Gauge/MatrixGroup.lean>,
    <verbatim|sed -n 68,72p YM/Next/FOUNDATIONS/Primary.lean>.

    <item><verbatim|grep -rnE "frame_unique\|predictor_unique\|axial_exists"
    --include=*.lean Lean/>: the three fields, the two theorems in
    <verbatim|YM/Branch/Uniform.lean>, their use in
    <verbatim|YM/Branch/Pick.lean>, and projections in consumers.

    <item><verbatim|grep -n "weighted_unique\\\|Axial.eligible"
    Lean/verification/declaration-usage.tsv>: both marked <verbatim|used>.

    <item><verbatim|grep -nE "\\bsorry\\b\|^axiom "> over
    <verbatim|YM/Branch/*.lean>, <verbatim|YM/Gauge/*.lean>,
    <verbatim|YM/RG/{Patch,Block,Measurable}.lean>,
    <verbatim|YM/Lattice/{Foliation,Route}.lean>: no output.

    <item>A Claude subagent read in full <verbatim|YM/Branch/*.lean>,
    <verbatim|YM/Gauge/{MatrixGroup,Nearest}.lean>,
    <verbatim|YM/Lattice/{Box,Path}.lean>,
    <verbatim|YM/RG/{Block,Measurable,Activities}.lean>;
    <verbatim|YM/Gauge/{Chart,Lie,Colors}.lean> only at the level of
    declaration headers. The proof summaries above rest on that reading and
    are marked (P).

    <item>A Codex <verbatim|gpt-6-astra> read-only pass checked a first draft
    of this note against the source and the papers' text layers. It confirmed
    that every cited declaration exists and reported 29 corrections, which
    are incorporated here; among them the file attributions of
    <verbatim|YM.Axial.viable>, <verbatim|total_slab> and
    <verbatim|existence>, the "modulo a common left factor" form of
    <verbatim|YM.Branch.align>, the cornered blocks of [B-Average], and the
    averaged form of [B-Gauge] (1.29). This is author-side checking by a
    second model, not an independent review.

    <item>Papers: journal PDFs obtained through an institutional
    subscription; the pages listed were rendered and read as images, the text
    layer being used for searching and for p. 256 of [B-RG-I]. SHA-256 of the
    files read: [B-RG-I] <verbatim|1c2d2e500fd1e6a1a7981fed259cc2354ebcf64e473fd564bfc3f2c4d7dfbe2a>,
    [B-Average] <verbatim|03409ad81885593d65535550eafac08639e66123d4acf92462847ae2ee4dd7d6>,
    [B-Gauge] <verbatim|83e4f18397b7f4c26e23cab7f9894aa1ee13043837f81da1a68adc346e176c23>;
    O(4) preprint <verbatim|e87f407df77777cadabcce10347533a68e7744be365ecd40c9602acc1129baac>.

    <item><verbatim|python3 scripts/check_blueprint.py>, run after adding
    this file: <verbatim|Blueprint structure OK: 2 units. Lean and
    mathematics were not verified.> The checker does not validate background
    notes.
  </itemize-minus>
</body>

<\initial>
  <\collection>
    <associate|html-title|Baªaban's gauge averaging and gauge fixing against
    the patch-frame interface \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|application-and-remaining-proof-obligations|<tuple|4|6>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-3|<tuple|3|5>>
    <associate|auto-4|<tuple|4|6>>
    <associate|auto-5|<tuple|5|7>>
    <associate|auto-6|<tuple|6|8>>
    <associate|baÅ‚abans-gauge-averaging-and-gauge-fixing-against-the-patch-frame-interface|<tuple|?|1>>
    <associate|evidence|<tuple|6|8>>
    <associate|match-to-the-formalisation|<tuple|3|5>>
    <associate|mathematical-reference|<tuple|2|3>>
    <associate|result-to-be-used|<tuple|1|1>>
    <associate|search-and-unresolved-questions|<tuple|5|7>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Result
      to be used> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Mathematical
      reference> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Match
      to the formalisation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Application
      and remaining proof obligations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Search
      and unresolved questions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Evidence>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>