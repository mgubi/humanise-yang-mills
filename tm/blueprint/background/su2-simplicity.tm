<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../outline.tm><ym-nav-sep><hlink|Unit
  plan|../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../index.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../glossary.tm><ym-nav-sep><hlink|Notation|../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../source/audit.tm><ym-nav-sep><hlink|Literature|../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../CONTRIBUTING.tm>>

  <ym-title|Real Lie-algebra simplicity for the defining SU(2)
  representation><label|real-lie-algebra-simplicity-for-the-defining-su2-representation>

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

    <with|par-left|1tab|Identify the complexification
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|Transfer the ideal conclusion back to real scalars
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|Check the nonabelian clause and boundary of the
    application <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Search and
    unresolved questions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>

    <with|par-left|1tab|Inspection and validation evidence
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>
  </table-of-contents>

  <\itemize-minus>
    <item>Literature task: <hlink|issue #5|https://github.com/hairer/humanise-yang-mills/issues/5>.

    <item>Source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>.

    <item>Status: source checked; draft application argument, not
    independently accepted.

    <item>Contributor and agent assistance: TrishenGunaratnam; research and
    drafting assisted by Codex, session <verbatim|TrishenGunaratnam-codex-01>.

    <item>Independent review: pending; no reviewed commit or review link yet.

    <item>Claim: <hlink|coordinator grant|https://github.com/hairer/humanise-yang-mills/issues/5#issuecomment-6797130245>,
    following the scoped request. The grant text says only \PCLAIM GRANTED\Q;
    the contributor instructed this session to proceed on the requested scope
    and expiry, 2026-11-11 18:00 UTC.
  </itemize-minus>

  <section|Result to be used><label|result-to-be-used>

  Put

  <\equation*>
    G=<around|{|U\<in\>M<rsub|2><around|(|\<bbb-C\>|)>:U<rsup|\<ast\>>*U=U*U<rsup|\<ast\>>=1,det
    U=1|}>,<space|2em>L=<around|{|X\<in\>M<rsub|2><around|(|\<bbb-C\>|)>:exp
    <around|(|t*X|)>\<in\>G<text| for every >t\<in\>\<bbb-R\>|}>.
  </equation*>

  The scalar field of <math|L> is <strong|real>, and its bracket is
  <math|<around|[|X,Y|]>=X*Y-Y*X>. The needed assertion is:

  <\enumerate>
    <item>Some <math|X,Y\<in\>L> have <math|<around|[|X,Y|]>\<ne\>0>.

    <item>Every real vector subspace <math|J\<subseteq\>M<rsub|2><around|(|\<bbb-C\>|)>>
    such that <math|J\<subseteq\>L> and <math|<around|[|L,J|]>\<subseteq\>J>
    equals either <math|0> or <math|L>.
  </enumerate>

  This is exactly nonabelian simplicity of the real Lie algebra
  <math|<with|math-font|Euler|s*u><around|(|2|)>>. It is not abstract-group
  simplicity of <math|G>.

  <section|Mathematical reference><label|mathematical-reference>

  The checked route uses a matrix Lie-algebra identification and a specific
  complex simplicity result, followed by the explicit application below.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Source
  and inspected version>>|<cell|<strong|Exact locator>>|<cell|<strong|Result
  used>>>|<row|<cell|Brian C. Hall, <em|An Elementary Introduction to Groups
  and Representations>, arXiv:math-ph/0005032v1, 31 May 2000,
  <hlink|versioned PDF|https://arxiv.org/pdf/math-ph/0005032v1>>|<cell|Chapter
  3, Definition 3.13, printed pp. 36\U37 (PDF pages 42\U43); Ÿ5.4, printed
  pp. 37\U38 (PDF pages 43\U44)>|<cell|The one-parameter definition of a
  matrix Lie algebra, and its identification for SU(n) as the skew-Hermitian
  traceless matrices.>>|<row|<cell|Alexander Kirillov, Jr., <em|Introduction
  to Lie Groups and Lie Algebras>, <hlink|author-hosted preliminary
  electronic version|https://www.math.stonybrook.edu/~kirillov/liegroups/liegroups.pdf>,
  inspected 11 November 2026>|<cell|Ÿ5.6, Definition 5.36 and Example 5.38,
  printed p. 80 (PDF page 80)>|<cell|Simplicity means nonabelian with no
  nonzero proper ideals; the complex Lie algebra sl(2,C) is simple.>>>>>

  The actual statements and the argument in Example 5.38 were inspected, not
  just search excerpts. Kirillov gives a proof of this specific example. No
  general classification theorem is needed. The author identifies this as a
  <hlink|preliminary version|https://www.math.stonybrook.edu/~kirillov/liegroups/>
  of his book. It has 177 PDF pages and contents beginning with \PPreface
  9\Q; the numbering here refers to that file, not an unchecked pagination in
  the 2008 Cambridge print edition. Hall's arXiv notes are not the 2003 or
  2015 Springer editions of his later textbook.

  <section|Match to the formalisation><label|match-to-the-formalisation>

  All paths below are relative to this repository; the imported source is
  pinned by <verbatim|source/upstream.json> to the revision above.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Qualified
  declaration>>|<cell|<strong|Source path>>|<cell|<strong|Meaning
  checked>>>|<row|<cell|<verbatim|YM.GaugeU>, <verbatim|YM.Gauge>,
  <verbatim|YM.Gauge.repDim>, <verbatim|YM.Gauge.mat>>|<cell|<verbatim|Lean/YM/Gauge/MatrixGroup.lean>>|<cell|The
  parameter <verbatim|n> indexes complex representation dimension
  <verbatim|n+1>; <verbatim|mat> forgets the unitary and subgroup subtype
  wrappers.>>|<row|<cell|<verbatim|YM.Next.Foundations.SUtwo>>|<cell|<verbatim|Lean/YM/Next/FOUNDATIONS/SU2.lean>>|<cell|<verbatim|n
  := 1>; the image is exactly determinant-one elements of U(2). Thus the
  matrices are 2 by 2, not 1 by 1.>>|<row|<cell|<verbatim|YM.Gauge.Generates>,
  <verbatim|YM.Gauge.lie>, <verbatim|YM.Gauge.mem_lie>,
  <verbatim|YM.Gauge.bracket_mem>, <verbatim|YM.Gauge.Simple>>|<cell|<verbatim|Lean/YM/Gauge/Lie.lean>>|<cell|All-real-time
  exponential generators, a real submodule with commutator bracket, and
  precisely the two simplicity clauses above.>>|<row|<cell|<verbatim|YangMills.GaugeGroup>,
  <verbatim|YangMills.GaugeGroup.IsSimple>>|<cell|<verbatim|Lean/PublicTheory.lean>>|<cell|The
  public Lie algebra is tied to the same exponential condition by its
  <verbatim|generates> field; ideals are real ambient matrix submodules
  contained in that algebra.>>|<row|<cell|<verbatim|YangMills.su2>,
  <verbatim|YangMills.su2Simple>, <verbatim|YangMills.su2Theory>>|<cell|<verbatim|Lean/ConcreteSU2.lean>>|<cell|<verbatim|su2>
  packages <verbatim|SUtwo> and its <verbatim|lie>; <verbatim|su2Simple> uses
  the internal theorem directly. <verbatim|su2Theory> applies
  <verbatim|jointExistence> to these inputs.>>|<row|<cell|<verbatim|YM.Examples.SU2.simple>>|<cell|<verbatim|Lean/YM/Examples/SU2.lean>>|<cell|Existing
  internal proof of <verbatim|SUtwo.Simple>. Its private matrix calculations
  are not a new exposition task.>>>>>

  The range of <verbatim|mat> is exactly <math|G>: its wrappers require
  unitarity and determinant one, and any matrix meeting these requirements
  supplies the two subtype witnesses. Hence the formal exponential condition
  is the displayed definition of <math|L>, with no additional restriction on
  its elements.

  The commutator is the usual mathematical convention, with no factor of
  <math|i>. Hall's identification therefore applies as stated:

  <\equation*>
    L=<around|{|X:X<rsup|\<ast\>>=-X,<math-up|tr>X=0|}>.
  </equation*>

  The hypotheses here are checked by the concrete matrix group above, not by
  assuming an arbitrary field named <verbatim|lieAlgebra> has the usual
  meaning. The real submodule and bracket closure are provided by
  <verbatim|YM.Gauge.lie> and <verbatim|YM.Gauge.bracket_mem>. The public
  packaging uses the same carrier.

  An ambient real submodule contained in <math|L> is equivalently a real
  vector subspace of <math|L>. Its stated closure under
  <math|<around|[|L,J|]>> is the ordinary Lie ideal condition; antisymmetry
  also gives <math|<around|[|J,L|]>\<subseteq\>J>. Thus no closedness of
  ideals, invariance under the whole group, or complex scalar closure is
  being silently added.

  <section|Application and remaining proof
  obligations><label|application-and-remaining-proof-obligations>

  The following bridge is supplied explicitly rather than identifying real
  and complex simplicity without justification. Its mathematical reasoning is
  an application proposed for review; it is not a claim that the Lean proof
  follows this route.

  <subsection|Identify the complexification><label|identify-the-complexification>

  Write <math|\<frak-s\>=<around|{|Z\<in\>M<rsub|2><around|(|\<bbb-C\>|)>:<math-up|tr>Z=0|}>>,
  with its complex vector-space structure and matrix bracket. For
  <math|Z\<in\>\<frak-s\>>, put

  <\equation*>
    X=<around|(|Z-Z<rsup|\<ast\>>|)>/2,<space|2em>Y=<around|(|Z+Z<rsup|\<ast\>>|)>/<around|(|2*i|)>.
  </equation*>

  Taking adjoints gives <math|X<rsup|\<ast\>>=-X> and
  <math|Y<rsup|\<ast\>>=-Y>. Their traces vanish since
  <math|<math-up|tr>Z=<math-up|tr>Z<rsup|\<ast\>>=0>, so <math|X,Y\<in\>L>,
  and <math|Z=X+i*Y>. This expression is unique: if <math|X=-i*Y> with both
  <math|X,Y> skew-Hermitian, then <math|-i*Y> is Hermitian, so <math|X> is
  both Hermitian and skew-Hermitian and must be zero, as must <math|Y>.

  Consequently <math|\<frak-s\>=L\<oplus\>i*L> as real vector spaces. The map

  <\equation*>
    L\<otimes\><rsub|\<bbb-R\>>\<bbb-C\>\<longrightarrow\>\<frak-s\>,<space|2em>X\<otimes\>z\<longmapsto\>z*X
  </equation*>

  is complex linear and bijective by this decomposition. It preserves the
  bracket because <math|<around|[|z*X,w*Y|]>=z*w*<around|[|X,Y|]>>. Thus this
  is the required complex Lie-algebra identification with
  <math|<with|math-font|Euler|s*l><rsub|2><around|(|\<bbb-C\>|)>>.

  <subsection|Transfer the ideal conclusion back to real
  scalars><label|transfer-the-ideal-conclusion-back-to-real-scalars>

  Let <math|J\<subseteq\>L> satisfy the real ideal condition. Inside
  <math|\<frak-s\>> form <math|J<rsub|\<bbb-C\>>=J+i*J>. It is a complex
  vector subspace: multiplication by <math|i> sends <math|a+i*b> to
  <math|-b+i*a>. For <math|x,y\<in\>L> and <math|a,b\<in\>J>,

  <\equation*>
    <around|[|x+i*y,a+i*b|]>=<around|[|x,a|]>-<around|[|y,b|]>+i*<around|(|<around|[|x,b|]>+<around|[|y,a|]>|)>\<in\>J+i*J.
  </equation*>

  Hence it is a complex Lie ideal of <math|\<frak-s\>>. If <math|J\<ne\>0>,
  then <math|J<rsub|\<bbb-C\>>\<ne\>0>. Applying Kirillov's Example 5.38
  gives <math|J<rsub|\<bbb-C\>>=\<frak-s\>>. For any <math|x\<in\>L>, write
  <math|x=a+i*b> with <math|a,b\<in\>J>. Uniqueness of the decomposition in
  <math|L\<oplus\>i*L> forces <math|a=x> and <math|b=0>, so <math|x\<in\>J>.
  Thus <math|J=L>. If <math|J=0>, the other alternative already holds. This
  proves exactly the second formal clause.

  <subsection|Check the nonabelian clause and boundary of the
  application><label|check-the-nonabelian-clause-and-boundary-of-the-application>

  The matrices

  <\equation*>
    A=<matrix|<tformat|<table|<row|<cell|i>|<cell|0>>|<row|<cell|0>|<cell|-i>>>>>,<space|1em>B=<matrix|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|-1>|<cell|0>>>>>,<space|1em>C=<matrix|<tformat|<table|<row|<cell|0>|<cell|i>>|<row|<cell|i>|<cell|0>>>>>
  </equation*>

  are skew-Hermitian and traceless, so belong to <math|L>. Direct
  multiplication gives <math|A*B=C>, <math|B*A=-C>, hence
  <math|<around|[|A,B|]>=2*C\<ne\>0>. This supplies the first formal clause
  independently of differences in textbook simplicity conventions. These are
  also the matrices used in the inspected internal proof.

  The combined argument supplies <verbatim|YangMills.su2Simple>. The only use
  inspected in <verbatim|YangMills.su2Theory> is passing that proof as the
  simplicity hypothesis to <verbatim|YangMills.jointExistence>. This note
  establishes no other hypothesis or conclusion of that theorem and gives no
  reconstruction or mass-gap result.

  No quotient by the centre is needed for this real Lie-algebra result.
  Indeed <math|<around|{|1,-1|}>> is a nontrivial proper central subgroup of
  <math|G>: both scalar matrices have determinant one, and <math|A\<in\>G> is
  neither of them. Thus an assertion that SU(2) is simple as an abstract
  group would be false here. Likewise, simple connectedness is a different
  property. Neither connectedness nor simple connectedness is used in the
  ideal-transfer argument, and no implication in the reverse direction from
  real simplicity to complex simplicity is assumed.

  There is no unmatched mathematical hypothesis identified for this
  particular source match. Independent verification of the carrier
  identification, the complexification bridge, and the references remains
  required before acceptance.

  <section|Search and unresolved questions><label|search-and-unresolved-questions>

  Searches on 11 November 2026 included <verbatim|su(2) simple real Lie
  algebra lecture notes university proof>, <verbatim|Brian Hall Lie groups
  Lie algebras SU(2) simple Lie algebra theorem pdf>, and
  <verbatim|site.math.stonybrook.edu kirillov lie groups book pdf simple
  sl(2)>. The existing background directory contained only its README; the
  bounded search of <verbatim|Bots/notes/>, the statement audit, and open PRs
  found no competing SU(2) literature note.

  <\itemize-minus>
    <item><strong|Selected:> Hall's versioned arXiv notes for the carrier
    identification; Kirillov's author-hosted electronic text for the specific
    simplicity result.

    <item><strong|Not used as evidence:> search snippets, Wikipedia entries,
    and third-party copies of Hall's Springer textbook. No theorem number
    from those editions is asserted to match the checked arXiv version.

    <item><strong|Alternative not pursued:> Knapp's author page for the
    second edition of <em|Lie Groups Beyond an Introduction> supplies
    bibliographic information but did not itself supply the needed theorem
    statement. A general classification route would add unnecessary
    machinery.

    <item><strong|Rejected substitutions:> a group simplicity assertion, a
    theorem about simple connectedness, and semisimplicity alone do not
    supply the target.

    <item><strong|Source-audit relation:>
    <verbatim|blueprint/public-statement.md> was inspected for the SU(2)
    roots. This note does not modify that audit; interpretation and
    correspondence remain subject to independent review.
  </itemize-minus>

  <subsection|Inspection and validation evidence><label|inspection-and-validation-evidence>

  The six files in the crosswalk were read in bounded excerpts or in full
  where short. Commands actually run included:

  <\shell-code>
    cat Lean/ConcreteSU2.lean templates/background-result.md

    cat Lean/YM/Examples/SU2.lean

    cat Lean/YM/Next/FOUNDATIONS/SU2.lean

    cat Lean/YM/Gauge/MatrixGroup.lean

    sed -n '1,90p' Lean/PublicTheory.lean

    sed -n '1,55p' Lean/YM/Gauge/Lie.lean

    sed -n '120,195p' Lean/YM/Gauge/Lie.lean

    sed -n '155,185p' blueprint/public-statement.md

    rg -n 'su2Simple\|su2Theory\|simplicity\|SU\\(2\\)' blueprint/background
    Bots/notes source/audit.md blueprint/public-statement.md
  </shell-code>

  Two preliminary path searches failed because guessed paths/globs did not
  exist; the correctly cased paths above were then read successfully. No
  mathematical conclusion relies on those failed searches. The six inspected
  source files were checked against <verbatim|Lean/SOURCES.sha256>; all
  matched.

  Structural validation: <verbatim|python3 scripts/check_blueprint.py> and
  <verbatim|git diff --no-index --check /dev/null
  blueprint/background/su2-simplicity.md> found no whitespace errors (exit
  status 1 denotes the new-file difference). These checks do not validate
  background-note references, mathematical truth, or independent acceptance.

  Not performed: a fresh Lean build, elaborated-type/axiom replay, or
  independent mathematical or Lean-correspondence review. This prose-only
  task preserves <verbatim|Lean/>; its correspondence evidence is source
  inspection, not a new kernel check. Existing axiom evidence is recorded
  separately in <verbatim|source/audit.md>. The author-hosted Kirillov URL is
  mutable; reviewers should recheck the named example and pagination in the
  version they inspect.
</body>

<\initial>
  <\collection>
    <associate|html-title|Real Lie-algebra simplicity for the defining SU(2)
    representation \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|application-and-remaining-proof-obligations|<tuple|4|4>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|4.1|4>>
    <associate|auto-6|<tuple|4.2|4>>
    <associate|auto-7|<tuple|4.3|4>>
    <associate|auto-8|<tuple|5|5>>
    <associate|auto-9|<tuple|5.1|5>>
    <associate|check-the-nonabelian-clause-and-boundary-of-the-application|<tuple|4.3|4>>
    <associate|identify-the-complexification|<tuple|4.1|4>>
    <associate|inspection-and-validation-evidence|<tuple|5.1|5>>
    <associate|match-to-the-formalisation|<tuple|3|2>>
    <associate|mathematical-reference|<tuple|2|2>>
    <associate|real-lie-algebra-simplicity-for-the-defining-su2-representation|<tuple|?|1>>
    <associate|result-to-be-used|<tuple|1|1>>
    <associate|search-and-unresolved-questions|<tuple|5|5>>
    <associate|transfer-the-ideal-conclusion-back-to-real-scalars|<tuple|4.2|4>>
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

      <with|par-left|<quote|1tab>|Identify the complexification
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|Transfer the ideal conclusion back to real
      scalars <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|Check the nonabelian clause and boundary of
      the application <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Search
      and unresolved questions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Inspection and validation evidence
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>
    </associate>
  </collection>
</auxiliary>