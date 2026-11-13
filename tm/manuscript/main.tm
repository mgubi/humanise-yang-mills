<TeXmacs|2.1.5>

<style|<tuple|article|british|ym-outline|ym-manuscript>>

<\body>
  <\hide-preamble>
    <new-counter-group|proposition-env>

    <group-common-counter|proposition-env>

    <assign|display-proposition-env|<macro|nr|<the-section>.<arg|nr>>>

    <new-env|proposition|Proposition|proposition-env|render-theorem>

    <assign|ym-section-resets|<macro|<reset-counter|proposition-env>>>

    \;
  </hide-preamble>

  <ym-nav|<hlink|Home|../index.tm><ym-nav-sep><hlink|The
  theorem|../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|index.tm><ym-nav-sep><hlink|Glossary|../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../source/audit.tm><ym-nav-sep><hlink|Literature|../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../CONTRIBUTING.tm>>

  <doc-data|<doc-title|Yang--Mills: mathematical
  exposition>|<doc-author|<author-data|<author-name|Contributors to Humanise
  Yang--Mills>>>|<doc-date|Draft>>

  <no-indent>This is a developing manuscript. Included sections are drafts
  pending independent mathematical and source-correspondence review.
  Outstanding inputs are stated explicitly; inclusion does not certify the
  complete construction.

  <section|Logarithmic asymptotics of the running inverse
  coefficient><label|sec:running-coefficient>

  Let <math|G\<subset\>U<around|(|r<rsub|G>|)>> be a closed matrix subgroup,
  in the indicated unitary representation, with nonabelian simple real Lie
  algebra <math|\<frak-g\>>, where <math|r<rsub|G>\<geqslant\>1>. Explicitly,

  <\equation*>
    \<frak-g\>=<around|{|X\<in\>M<rsub|r<rsub|G>><around|(|\<bbb-C\>|)>:exp
    <around|(|t*X|)>\<in\>G<text| for every >t\<in\>\<bbb-R\>|}>.
  </equation*>

  Since <math|U<around|(|r<rsub|G>|)>> is closed in
  <math|<math-up|GL><around|(|r<rsub|G>,\<bbb-C\>|)>>, so is <math|G>. Thus
  Hall's matrix Lie group results apply: this set is a finite-dimensional
  real vector space closed under <math|<around|[|X,Y|]>=X*Y-Y*X>
  <cite-detail|hall2000|Definition<nbsp>3.13 and Theorem<nbsp>3.16>. Since
  <math|exp <around|(|t*X|)>> is unitary for <math|X\<in\>\<frak-g\>> and
  real <math|t>, differentiating <math|exp <around|(|t*X|)><rsup|\<ast\>>*exp
  <around|(|t*X|)>=I> at <math|t=0> gives <math|X<rsup|\<ast\>>=-X>. Thus the
  symmetric real bilinear form <math|<around|\<langle\>|X,Y|\<rangle\>>=-r<rsub|G><rsup|-1><math-up|Retr><around|(|X*Y|)>>
  is positive definite: for <math|X\<ne\>0>,

  <\equation*>
    <around|\<langle\>|X,X|\<rangle\>>=r<rsub|G><rsup|-1><math-up|tr><around|(|X<rsup|\<ast\>>*X|)>=r<rsub|G><rsup|-1>*<big|sum><rsub|a,b><around|\||X<rsub|a*b>|\|><rsup|2>\<gtr\>0.
  </equation*>

  Nonabelianness implies <math|\<frak-g\>\<ne\><around|{|0|}>>, so
  <math|dim<rsub|\<bbb-R\>> \<frak-g\>\<geqslant\>1>. Write

  <\equation*>
    b<rsub|0><around|(|G|)>=<frac|11*<space|0.17em>C<rsub|\<frak-g\>>|48*\<pi\><rsup|2>>,<space|2em>C<rsub|\<frak-g\>>=-<frac|1|dim<rsub|\<bbb-R\>>
    \<frak-g\>>*<big|sum><rsub|j><math-up|Tr><rsub|\<frak-g\>><around*|(|<around|(|<math-up|ad><space|0.17em>e<rsub|j>|)><rsup|2>|)>,
  </equation*>

  where <math|<around|(|e<rsub|j>|)>> is an orthonormal basis for this inner
  product and <math|<math-up|ad><space|0.17em>X<around|(|Y|)>=<around|[|X,Y|]>=X*Y-Y*X>.
  Here <math|<math-up|Tr><rsub|\<frak-g\>>> is the real trace of an
  endomorphism of <math|\<frak-g\>>. This constant is independent of the
  orthonormal basis: if <math|f<rsub|i>=<big|sum><rsub|j>q<rsub|i*j>*e<rsub|j>>
  with <math|q> orthogonal, then

  <\equation*>
    <big|sum><rsub|i><around|(|<math-up|ad><space|0.17em>f<rsub|i>|)><rsup|2>=<big|sum><rsub|j,k><around*|(|<big|sum><rsub|i>q<rsub|i*j>*q<rsub|i*k>|)><math-up|ad><space|0.17em>e<rsub|j><math-up|ad><space|0.17em>e<rsub|k>=<big|sum><rsub|j><around|(|<math-up|ad><space|0.17em>e<rsub|j>|)><rsup|2>.
  </equation*>

  Taking traces proves the assertion. Invariance of the matrix trace gives
  <math|<around|\<langle\>|<around|[|X,Y|]>,Z|\<rangle\>>=-<around|\<langle\>|Y,<around|[|X,Z|]>|\<rangle\>>>,
  so each <math|<math-up|ad><space|0.17em>e<rsub|j>> is skew-adjoint.
  Consequently <math|-<math-up|Tr><rsub|\<frak-g\>><around|(|<around|(|<math-up|ad><space|0.17em>e<rsub|j>|)><rsup|2>|)>=<big|sum><rsub|\<ell\>><around|\<\|\|\>|<around|[|e<rsub|j>,e<rsub|\<ell\>>|]>|\<\|\|\>><rsup|2>>.
  If every basis commutator vanished, bilinearity would make all commutators
  vanish. Noncommutativity therefore makes at least one term in the resulting
  double sum positive. In particular, <math|b<rsub|0><around|(|G|)>\<gtr\>0>.

  <paragraph|Input from the lattice construction.> Fix a construction family
  <math|\<cal-C\>> satisfying the construction conditions. For
  <math|N,p,m\<in\>\<bbb-N\>> with <math|m\<leqslant\>N>, let
  <math|\<beta\><rsub|N,p,m>> be its action coefficient at stage <math|m> of
  the trajectory started at lattice level <math|N> and period index <math|p>.
  The spacing at stage <math|m> is <math|a<rsub|m>=<around|(|<big|prod><rsub|j\<less\>m>B<rsub|j>|)><rsup|-1>>,
  where each block factor <math|B<rsub|j>> is an integer at least <math|3>.
  Thus <math|s<rsub|m>=log <around|(|a<rsub|m><rsup|-1>|)>=<big|sum><rsub|j\<less\>m>log
  B<rsub|j>\<geqslant\>m*log 3>, so <math|s<rsub|m>\<to\>+\<infty\>>. The
  running estimate for the family provides a fixed reference intercept
  <math|<wide|\<beta\>|\<bar\>>> and, for every <math|\<eta\>\<gtr\>0>, a
  threshold <math|m<rsub|0><around|(|\<eta\>|)>> such that

  <\equation>
    <around*|\||\<beta\><rsub|N,p,m>-<around*|(|<wide|\<beta\>|\<bar\>>+2*b<rsub|0><around|(|G|)>*s<rsub|m>|)>|\|>\<leqslant\>\<eta\>*s<rsub|m>*<space|2em><around*|(|m\<geqslant\>m<rsub|0><around|(|\<eta\>|)>,N\<geqslant\>m,p\<in\>\<bbb-N\>|)>.<label|eq:running>
  </equation>

  The threshold is uniform over the starting level and period index. We use
  the running estimate as an input to the comparison below.

  <\proposition>
    <dueto|Uniform extraction><label|prop:uniform-extraction>Let
    <math|s<rsub|m>\<to\>+\<infty\>>, and let <math|A,c\<in\>\<bbb-R\>> be
    fixed. Suppose the real coefficients <math|\<beta\><rsub|N,p,m>> satisfy,
    for every <math|\<eta\>\<gtr\>0>, an estimate
    <math|<around|\||\<beta\><rsub|N,p,m>-<around|(|A+c*s<rsub|m>|)>|\|>\<leqslant\>\<eta\>*s<rsub|m>>
    for all sufficiently large <math|m>, uniformly over <math|N\<geqslant\>m>
    and <math|p\<in\>\<bbb-N\>>. Then for every
    <math|\<varepsilon\>\<gtr\>0>, for all sufficiently large <math|m> one
    has <math|s<rsub|m>\<gtr\>0> and

    <\equation*>
      <around*|\||<frac|\<beta\><rsub|N,p,m>|s<rsub|m>>-c|\|>\<less\>\<varepsilon\><space|2em><around|(|N\<geqslant\>m,p\<in\>\<bbb-N\>|)>.
    </equation*>
  </proposition>

  <\proof>
    Fix <math|\<varepsilon\>\<gtr\>0>. Use the assumed estimate with
    <math|\<eta\>=\<varepsilon\>/2>, and enlarge its threshold so that
    <math|s<rsub|m>\<gtr\>2*<around|(|<around|\||A|\|>+1|)>/\<varepsilon\>\<gtr\>0>.
    Then, for every <math|N\<geqslant\>m> and <math|p>,

    <\equation*>
      <around*|\||<frac|\<beta\><rsub|N,p,m>|s<rsub|m>>-c|\|>\<leqslant\><frac|<around|\||\<beta\><rsub|N,p,m>-<around|(|A+c*s<rsub|m>|)>|\|>|s<rsub|m>>+<frac|<around|\||A|\|>|s<rsub|m>>\<leqslant\><frac|\<varepsilon\>|2>+<frac|<around|\||A|\|>|s<rsub|m>>\<less\>\<varepsilon\>.
    </equation*>

    Both thresholds are independent of <math|N,p>. No positivity assumption
    on <math|c> is used in this proposition.
  </proof>

  <\proposition>
    <dueto|Logarithmic asymptotic><label|prop:running-asymptotic>Let
    <math|N,k:\<bbb-N\>\<to\>\<bbb-N\>> be arbitrary sequences with
    <math|i\<leqslant\>N<around|(|i|)>> for all sufficiently large <math|i>.
    For <math|\<beta\><rsub|N,p,m>\<gtr\>0> set
    <math|g<rsub|N,p,m>=<around|(|<sqrt|\<beta\><rsub|N,p,m>>|)><rsup|-1>>.
    Then <math|\<beta\><rsub|N<around|(|i|)>,k<around|(|i|)>,i>\<gtr\>0> for
    all sufficiently large <math|i>, and

    <\equation*>
      lim<rsub|i\<to\>\<infty\>> g<rsub|N<around|(|i|)>,k<around|(|i|)>,i>*<sqrt|log
      <around|(|a<rsub|i><rsup|-1>|)>>=<frac|1|<sqrt|2*b<rsub|0><around|(|G|)>>>.
    </equation*>
  </proposition>

  <\proof>
    Apply Proposition<nbsp><reference|prop:uniform-extraction> to
    <eqref|eq:running>, with <math|A=<wide|\<beta\>|\<bar\>>> and
    <math|c=2*b<rsub|0><around|(|G|)>\<gtr\>0>. For each
    <math|\<varepsilon\>\<gtr\>0>, enlarge the resulting threshold until
    <math|i\<leqslant\>N<around|(|i|)>> holds. Substituting <math|m=i>,
    <math|N=N<around|(|i|)>> and <math|p=k<around|(|i|)>> gives

    <\equation*>
      <around*|\||<frac|\<beta\><rsub|N<around|(|i|)>,k<around|(|i|)>,i>|s<rsub|i>>-c|\|>\<less\>\<varepsilon\>
    </equation*>

    for every subsequent <math|i>. Thus <math|x<rsub|i>=\<beta\><rsub|N<around|(|i|)>,k<around|(|i|)>,i>/s<rsub|i>\<to\>c>
    on the tail where <math|s<rsub|i>\<gtr\>0>. Taking
    <math|\<varepsilon\>=c/2> shows <math|x<rsub|i>\<gtr\>c/2\<gtr\>0>
    eventually; hence <math|\<beta\><rsub|N<around|(|i|)>,k<around|(|i|)>,i>=s<rsub|i>*x<rsub|i>\<gtr\>0>
    there. No condition on the sequence <math|k> was needed, because the
    original threshold was uniform in <math|p>.

    On this positive tail the square-root limit rule
    <cite-detail|lebl|Proposition<nbsp>2.2.6> gives
    <math|<sqrt|x<rsub|i>>\<to\><sqrt|c>>. All denominator terms and their
    limit are nonzero, so the quotient rule
    <cite-detail|lebl|Proposition<nbsp>2.2.5(iv)>, with constant numerator
    <math|1>, gives <math|1/<sqrt|x<rsub|i>>\<to\>1/<sqrt|c>>. Finally,

    <\equation*>
      <frac|1|<sqrt|x<rsub|i>>>=<frac|<sqrt|s<rsub|i>>|<sqrt|\<beta\><rsub|N<around|(|i|)>,k<around|(|i|)>,i>>>=g<rsub|N<around|(|i|)>,k<around|(|i|)>,i>*<sqrt|log
      <around|(|a<rsub|i><rsup|-1>|)>>.
    </equation*>

    The first identity follows by squaring the positive quantities
    <math|<sqrt|x<rsub|i>>> and <math|<sqrt|\<beta\><rsub|N<around|(|i|)>,k<around|(|i|)>,i>>/<sqrt|s<rsub|i>>>
    and using uniqueness of the nonnegative square root. All expressions are
    interpreted on the positive tail and may be assigned arbitrary values at
    earlier indices: changing finitely many terms preserves convergence by
    enlarging each tolerance's threshold beyond those indices. This proves
    the stated limit.
  </proof>

  At <math|N<around|(|i|)>=i> the coefficient is the bare lattice action
  coefficient. For a general admissible <math|N<around|(|i|)>>, the
  comparison concerns the coefficient read from the trajectory at spacing
  <math|a<rsub|i>>. Relating this inverse-square-root proxy to a coupling
  defined through a physical observable would require a separate matching
  theorem.

  <\bibliography|bib|tm-plain|references>
    <\bib-list|2>
      <bibitem*|1><label|bib-hall2000>Brian<nbsp>C.<nbsp>Hall. <newblock>An
      elementary introduction to groups and representations.
      <newblock>arXiv:math-ph/0005032v1, 31 May 2000, 2000. <newblock>Chapter
      3, Definition 3.13 and Theorem 3.16, pp. 36 and 40\U41.
      <slink|https://arxiv.org/pdf/math-ph/0005032v1>.<newblock>

      <bibitem*|2><label|bib-lebl>Ji°í Lebl.
      <newblock><with|font-shape|italic|Basic Analysis: Introduction to Real
      Analysis>, <localize|volume><nbsp>I. <newblock>Author-maintained
      electronic edition, n.d. <newblock>HTML edition, Section 2.2,
      Propositions 2.2.5(iv) and 2.2.6; inspected 11 November 2026.
      <slink|https://jirilebl.github.io/ra/html/sec_factslimsseqs.html>.<newblock>
    </bib-list>
  </bibliography>
</body>

<\initial>
  <\collection>
    <associate|html-title|Yang\UMills: mathematical exposition \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1|2>>
    <associate|auto-3|<tuple|1.2|3>>
    <associate|bib-hall2000|<tuple|1|3>>
    <associate|bib-lebl|<tuple|2|3>>
    <associate|eq:running|<tuple|1|2>>
    <associate|prop:running-asymptotic|<tuple|1.2|2>>
    <associate|prop:uniform-extraction|<tuple|1.1|2>>
    <associate|sec:running-coefficient|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      hall2000

      lebl

      lebl
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Logarithmic
      asymptotics of the running inverse coefficient>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|3tab>|<with|font-size|<quote|0.92>|Input from the
      lattice construction. <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|References>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>