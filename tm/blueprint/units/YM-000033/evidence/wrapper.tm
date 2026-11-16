<TeXmacs|2.1.5>

<style|<tuple|article|british|ym-outline|ym-manuscript>>

<\body>
  <\hide-preamble>
    <new-counter-group|proposition-env>

    <group-common-counter|proposition-env>

    <assign|display-proposition-env|<macro|nr|<the-section>.<arg|nr>>>

    <new-env|proposition|Proposition|proposition-env|render-theorem>

    <new-env|theorem|Theorem|proposition-env|render-theorem>

    <new-env|lemma|Lemma|proposition-env|render-theorem>

    <new-env|corollary|Corollary|proposition-env|render-theorem>

    <new-env|definition|Definition|proposition-env|render-theorem>

    <new-env|assumption|Input|proposition-env|render-theorem>

    <new-env|remark|Remark|proposition-env|render-remark>

    <assign|ym-section-resets|<macro|<reset-counter|proposition-env>>>

    <assign|paragraph-toc|<macro|name|>>

    <assign|subparagraph-toc|<macro|name|>>
  </hide-preamble>

  <ym-nav|<hlink|Home|../../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../index.tm><ym-nav-sep><hlink|Manuscript|../../../../manuscript/index.tm><ym-nav-sep><hlink|Monograph|../../../../manuscript/existence.tm><ym-nav-sep><hlink|Glossary|../../../glossary.tm><ym-nav-sep><hlink|Notation|../../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../../CONTRIBUTING.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> YM-000026|../../YM-000026/correspondence.tm>|<hlink|YM-000033:
  Selected trace sensor and weighted Ward limit
  (draft)|../correspondence.tm><ym-nav-sep><hlink|HANDOFF|../HANDOFF.tm><ym-nav-sep><ym-nav-here|evidence/wrapper><ym-nav-sep><hlink|validation|../validation.tm>|<hlink|YM-000034
  \<rightarrow\>|../../YM-000034/correspondence.tm>>

  <doc-data|<doc-title|YM-000033: Selected trace sensor and weighted Ward
  limit, evidence/wrapper>>

  <subsection|Free-reference rank from finite point
  probes><label|sec:ex-lattice-trace-free-rank>

  This section proves the finite-dimensional reference-rank facts used in the
  trace calibration. The calculation uses only four-dimensional Euclidean
  Green-function derivatives, the signed coordinate symmetries, and
  simplicity of the compact gauge Lie algebra. The divergence-rank conclusion
  also uses the compatible derivative plan specified below. All spaces below
  are real, even though polynomial coefficients are temporarily complexified
  to encode real observables.

  <subsubsection|Low-grade invariant labels>

  Write <math|\<frak-g\>> for the compact simple real gauge Lie algebra, with
  its invariant inner product, and <math|e<rsub|0>,e<rsub|1>,e<rsub|2>,e<rsub|3>>
  for the coordinate basis of <math|\<bbb-R\><rsup|4>>. A grade-<math|d>
  label is a polynomial in all radial jets, with jet order <math|r> having
  engineering weight <math|r+2>. In particular, grades four and five may
  include linear terms in higher jets; those terms are removed below by gauge
  simplicity. After that reduction, their nonlinear terms depend only on the
  curvature <math|F> and, at grade five, its first derivative <math|J>. A
  signed permutation <math|s> acts on a coordinate tensor by permuting its
  indices and multiplying by the product of the corresponding coordinate
  signs. The raw grade-four space consists of symmetric two-index arrays of
  grade-four labels, real under complex conjugation and covariant under this
  signed action. The raw grade-five space consists of one-index arrays of
  grade-five labels with the same reality and covariance conditions.

  The following elementary color fact is used repeatedly. If a real linear
  functional <math|\<ell\>> on <math|\<frak-g\>> is invariant under the
  adjoint action, then differentiating <math|\<ell\><around|(|<math-up|Ad><rsub|exp
  <around|(|t*x|)>><space|0.17em>y|)>=\<ell\><around|(|y|)>> at <math|t=0>
  gives <math|\<ell\><around|(|<around|[|x,y|]>|)>=0>. Simplicity and
  nonabelianity imply <math|<around|[|\<frak-g\>,\<frak-g\>|]>=\<frak-g\>>,
  hence <math|\<ell\>=0>. For an invariant real bilinear form <math|B>,
  define <math|T> by <math|B<around|(|x,y|)>=<around|\<langle\>|T*x,y|\<rangle\>>>.
  The invariance of <math|B> and of the positive inner product implies
  <math|T*<around|[|a,x|]>=<around|[|a,T*x|]>> for every <math|a,x>.
  Therefore its self-adjoint and skew-adjoint parts
  <math|S=<around|(|T+T<rsup|\<ast\>>|)>/2> and
  <math|A=<around|(|T-T<rsup|\<ast\>>|)>/2> both commute with the adjoint
  action. Every eigenspace of <math|S> is an ideal; the spectral theorem and
  simplicity show <math|S=\<lambda\>*I>. Also <math|-A<rsup|2>> is positive
  self-adjoint and commutes with the adjoint action, so the same argument
  gives <math|-A<rsup|2>=c*I> for some <math|c\<geqslant\>0>. If
  <math|c\<gtr\>0>, then <math|J=A/<sqrt|c>> is a skew-adjoint complex
  structure commuting with every <math|<math-up|ad><rsub|a>>. This implies
  <math|<math-up|ad><rsub|J*x>=J<math-up|ad><rsub|x>>. The right side is
  self-adjoint, because it is a product of commuting skew-adjoint operators,
  whereas the left side is skew-adjoint by invariance of the inner product.
  It must vanish; invertibility of <math|J> would then make every
  <math|<math-up|ad><rsub|x>> vanish, contradicting nonabelianity. Thus
  <math|c=0> and <math|A=0>, so <math|T=\<lambda\>*I>. Every invariant
  bilinear form is consequently a scalar multiple of the inner product.
  Applying this argument to real and imaginary parts covers complex-valued
  coefficients too. Consequently the color dependence of an invariant
  quadratic term is just the inner product. The engineering weights are
  <math|2> for <math|F> and <math|3> for its first derivative <math|J>; a jet
  of order <math|r> has weight <math|r+2>. At grade four or five, a monomial
  can therefore contain at most two factors. The possible terms are a
  constant, one linear functional of each jet of weight at most the grade, a
  symmetric quadratic form in <math|F>, and (only at grade five) a mixed
  bilinear form in <math|<around|(|F,J|)>>. Every linear jet term vanishes by
  the preceding color argument, including the higher-derivative linear terms
  allowed by these two grades. Under simultaneous reversal of all four
  coordinate signs, <math|F> is even while the output vector index and
  <math|J> are odd. Hence constants and quadratic <math|F> terms vanish in a
  covariant vector. Only the mixed term remains in grade five.

  The radial degree-zero and degree-one potentials are represented by the
  following spanning families, for <math|c\<in\>\<frak-g\>>:

  <\align*>
    <tformat|<table|<row|<cell|<around|(|\<ell\><rsup|0><rsub|i*j>*c|)><rsub|a><around|(|z|)>>|<cell|=<tfrac|1|2><around|(|\<delta\><rsub|a*j>*z<rsub|i>-\<delta\><rsub|a*i>*z<rsub|j>|)>*c,>>|<row|<cell|<around|(|\<ell\><rsup|1><rsub|r*k*l>*c|)><rsub|a><around|(|z|)>>|<cell|=<tfrac|1|3><around|(|\<delta\><rsub|a*l>*z<rsub|k>-\<delta\><rsub|a*k>*z<rsub|l>|)>*z<rsub|r>*c.>>>>
  </align*>

  The first family is antisymmetric in <math|i,j>; the second is
  antisymmetric in <math|k,l> and satisfies

  <\equation*>
    \<ell\><rsup|1><rsub|r*k*l>+\<ell\><rsup|1><rsub|k*l*r>+\<ell\><rsup|1><rsub|l*r*k>=0.
  </equation*>

  This identity follows by adding the three displayed quadratic monomials:
  each term cancels its opposite. The families span the actual radial jet
  spaces: for every degree-zero potential <math|A<rsub|0>> and degree-one
  potential <math|A<rsub|1>>, respectively,

  <\equation*>
    A<rsub|0>=<tfrac|1|2><big|sum><rsub|i,j>\<ell\><rsup|0><rsub|i*j><around|(|<math-up|curl><rsub|0><rsup|i*j><space|0.17em>A<rsub|0>|)>,<space|2em>A<rsub|1>=<tfrac|1|2><big|sum><rsub|r,k,l>\<ell\><rsup|1><rsub|r*k*l><around|(|<math-up|curl><rsub|1><rsup|r*k*l><space|0.17em>A<rsub|1>|)>.
  </equation*>

  Here a radial jet of index <math|r> is a homogeneous polynomial one-form
  <math|A=<around|(|A<rsub|a>|)>> of polynomial degree <math|r+1>, satisfying
  <math|<big|sum><rsub|i>z<rsub|i>*A<rsub|i><around|(|z|)>=0>. Its linear
  curl is the two-form <math|F<rsub|i*a><around|(|z|)>=\<partial\><rsub|i>*A<rsub|a><around|(|z|)>-\<partial\><rsub|a>*A<rsub|i><around|(|z|)>>;
  no nonlinear commutator is included in this jet calculation.
  Differentiating the radial identity with respect to <math|z<rsub|a>> and
  using Euler's identity gives

  <\equation*>
    <big|sum><rsub|i>z<rsub|i>*\<partial\><rsub|a>*A<rsub|i>=-A<rsub|a>,<space|2em><big|sum><rsub|i>z<rsub|i>*\<partial\><rsub|i>*A<rsub|a>=<around|(|r+1|)>*A<rsub|a>.
  </equation*>

  Subtracting proves the reconstruction formula

  <\equation>
    <label|eq:ex-trace-radial-reconstruction>A<rsub|a><around|(|z|)>=<frac|1|r+2>*<big|sum><rsub|i>z<rsub|i>*F<rsub|i*a><around|(|z|)>.
  </equation>

  In particular curl is injective on this radial homogeneous space: a zero
  curl forces every component of <math|A> to vanish. For <math|A<rsub|0>>,
  write <math|f<rsub|i*j>=\<partial\><rsub|i><around|(|A<rsub|0>|)><rsub|j>-\<partial\><rsub|j><around|(|A<rsub|0>|)><rsub|i>>,
  which is constant. For <math|A<rsub|1>>, write
  <math|j<rsub|r*k*l>=\<partial\><rsub|r>*<around|(|\<partial\><rsub|k><around|(|A<rsub|1>|)><rsub|l>-\<partial\><rsub|l><around|(|A<rsub|1>|)><rsub|k>|)>>,
  which is also constant. These are derivative values, with no factorial
  rescaling. Homogeneity gives <math|F<rsub|k*l><around|(|z|)>=<big|sum><rsub|r>z<rsub|r>*j<rsub|r*k*l>>
  in the second case. Thus <eqref|eq:ex-trace-radial-reconstruction> reads

  <\equation*>
    <around|(|A<rsub|0>|)><rsub|a><around|(|z|)>=<tfrac|1|2><big|sum><rsub|i>z<rsub|i>*f<rsub|i*a>,<space|2em><around|(|A<rsub|1>|)><rsub|a><around|(|z|)>=<tfrac|1|3><big|sum><rsub|r,k>z<rsub|k>*z<rsub|r>*j<rsub|r*k*a>.
  </equation*>

  Antisymmetry now checks the asserted spanning identities directly:

  <\align*>
    <tformat|<table|<row|<cell|<tfrac|1|2><big|sum><rsub|i,j><around|(|\<ell\><rsup|0><rsub|i*j>*f<rsub|i*j>|)><rsub|a><around|(|z|)>>|<cell|=<tfrac|1|4><around*|(|<big|sum><rsub|i>z<rsub|i>*f<rsub|i*a>-<big|sum><rsub|j>z<rsub|j>*f<rsub|a*j>|)>=<tfrac|1|2><big|sum><rsub|i>z<rsub|i>*f<rsub|i*a>,>>|<row|<cell|<tfrac|1|2><big|sum><rsub|r,k,l><around|(|\<ell\><rsup|1><rsub|r*k*l>*j<rsub|r*k*l>|)><rsub|a><around|(|z|)>>|<cell|=<tfrac|1|6><around*|(|<big|sum><rsub|r,k>z<rsub|k>*z<rsub|r>*j<rsub|r*k*a>-<big|sum><rsub|r,l>z<rsub|l>*z<rsub|r>*j<rsub|r*a*l>|)>=<tfrac|1|3><big|sum><rsub|r,k>z<rsub|k>*z<rsub|r>*j<rsub|r*k*a>.>>>>
  </align*>

  Equality as polynomial functions is equality of their symmetric
  coefficients, so these are identities of radial jets. A bilinear form in
  these slots is therefore determined by its values on pairs of legs; the
  legs need not be linearly independent. Signed covariance and pair
  antisymmetry follow from their displayed formulas. Commuting the ordinary
  partial derivatives in the definition of <math|j> gives
  <math|j<rsub|r*k*l>+j<rsub|k*l*r>+j<rsub|l*r*k>=0>, the Bianchi relation
  used below.

  For a grade-five vector label, let <math|M<rsub|p>> denote the mixed
  bilinear term in its low-grade decomposition. Choose a unit color vector
  <math|v> and define

  <\equation*>
    A<rsub|p;r;i*j;k*l>=M<rsub|p>*<around|(|\<ell\><rsup|0><rsub|i*j><around|(|v|)>,\<ell\><rsup|1><rsub|r*k*l><around|(|v|)>|)>.
  </equation*>

  Reality makes these coefficients real. The adjoint-invariant bilinear-form
  calculation shows that this unit color vector records the full color
  coefficient. The leg spanning identities show that the coefficients
  determine every <math|M<rsub|p>>. The cycle relation for
  <math|\<ell\><rsup|1>> gives the Bianchi relation for <math|A>. Hence
  <math|A<rsub|p;r;i*j;k*l>> is antisymmetric in <math|i,j> and in
  <math|k,l>, and obeys

  <\equation>
    A<rsub|p;r;i*j;k*l>=s<rsub|p>*s<rsub|r>*s<rsub|i>*s<rsub|j>*s<rsub|k>*s<rsub|l>*<space|0.17em>A<rsub|s<around|(|p|)>;s<around|(|r|)>;s<around|(|i|)>*s<around|(|j|)>;s<around|(|k|)>*s<around|(|l|)>><label|eq:ex-trace-signed-array>
  </equation>

  for every signed permutation, where the signs
  <math|s<rsub|a>\<in\><around|{|\<pm\>1|}>> are those of the coordinate
  reflection. The finite signed-coordinate orbit count in dimension four has
  the following explicit form: if a coefficient satisfying (1) is nonzero,
  then its two antisymmetric pairs have distinct entries, and either (i)
  <math|p=r> and the two pairs are parallel, or (ii) <math|p\<ne\>r> and
  there is a third coordinate <math|u>, distinct from <math|p,r>, such that
  the two pairs are <math|<around|(|p,u|)>,<around|(|r,u|)>> in either order.
  Permuting coordinates and reversing an antisymmetric pair reduces these
  cases to the four rows

  <\equation>
    <around|(|p,r;i*j;k*l|)>=<around|(|0,0;01;01|)>,<around|(|0,0;12;12|)>,<around|(|0,2;01;21|)>,<around|(|0,2;21;01|)>.<label|eq:ex-trace-orbit-representatives>
  </equation>

  To check the count directly, a reflection in coordinate <math|a> multiplies
  the coefficient by <math|-1> exactly when <math|a> belongs to an odd number
  of the six indices <math|p,r,i,j,k,l>; a nonzero entry requires even parity
  at every coordinate. If <math|p=r>, this forces the supports of the two
  antisymmetric pairs to agree, giving case (i). If <math|p\<ne\>r>, parity
  forces the pairs to share exactly one coordinate, distinct from both
  <math|p,r>, giving case (ii). Coordinate permutations put the resulting
  supports in the forms in (2), and antisymmetry fixes the order signs. This
  proves the stated orbit count.

  <\lemma>
    <dueto|Three probes determine every covariant vector
    label><label|lem:ex-trace-vector-probes>Let <math|A<rsub|p;r;i*j;k*l>> be
    a real array satisfying the antisymmetries, Bianchi relation, and signed
    covariance above. If

    <\equation*>
      A<rsub|0;0;01;01>=A<rsub|0;2;01;21>=A<rsub|0;2;21;01>=0,
    </equation*>

    then every coefficient of <math|A> vanishes.
  </lemma>

  <\proof>
    By the orbit count, it suffices to check the four rows in
    <eqref|eq:ex-trace-orbit-representatives>. Three are the displayed
    hypotheses. For the remaining row, use Bianchi in the differentiated pair
    with derivative index <math|0> and pair <math|12>:

    <\equation*>
      A<rsub|0;0;12;12>+A<rsub|0;1;12;20>+A<rsub|0;2;12;01>=0.
    </equation*>

    The third term is minus the third displayed probe by reversing the first
    pair <math|12> to <math|21>. Interchanging <math|1> and <math|2> carries
    the second term to the same third probe, up to the sign from reversing
    its first or differentiated pair. Both terms therefore vanish, so
    <math|A<rsub|0;0;12;12>=0>. Thus all four representatives vanish; signed
    covariance and antisymmetry propagate zero to every entry.
  </proof>

  <subsubsection|The raw spaces have dimensions at most four and three>

  For a raw grade-four tensor <math|Q=<around|(|Q<rsub|a*b>|)>>, choose a
  unit color vector <math|v>. The four real linear probes are: the real
  constant coefficient of <math|Q<rsub|00>>; and the coefficients of
  <math|<around|\<langle\>|F<rsub|01>,F<rsub|01>|\<rangle\>>> and
  <math|<around|\<langle\>|F<rsub|12>,F<rsub|12>|\<rangle\>>> in
  <math|Q<rsub|00>> and <math|<around|\<langle\>|F<rsub|01>,F<rsub|21>|\<rangle\>>>
  in <math|Q<rsub|02>>. If all four vanish, the constant vanishes.
  Polarization in the two <math|F> slots extracts the symmetric quadratic
  coefficient. For the quadratic coefficient array, signed parity says that
  if <math|a=b>, the two antisymmetric field pairs have the same support.
  Relative to the fixed output axis <math|a>, their common support either
  contains <math|a> or avoids <math|a>; coordinate permutations fixing
  <math|a> reduce these to the probes <math|Q<rsub|00>> on
  <math|<around|(|01,01|)>> and <math|<around|(|12,12|)>>. If
  <math|a\<ne\>b>, the two field-pair supports have symmetric difference
  <math|<around|{|a,b|}>>, so they share a third coordinate distinct from
  <math|a,b>. Coordinate permutation reduces this to <math|Q<rsub|02>> on
  <math|<around|(|01,21|)>>. Pair reversals change only signs; exchanging the
  output indices gives the same coefficient by
  <math|Q<rsub|a*b>=Q<rsub|b*a>>. These are exactly the three quadratic
  probes listed above. The invariant-color argument makes vanishing on the
  chosen unit color vector sufficient: every color coefficient is its inner
  product multiple. The linear term is zero by color simplicity. Thus these
  four probes are injective, and

  <\equation*>
    dim \<cal-R\><rsub|4>\<leqslant\>4,
  </equation*>

  where <math|\<cal-R\><rsub|4>> denotes the raw symmetric grade-four table
  space.

  For a raw grade-five vector <math|Q=<around|(|Q<rsub|p>|)>>, polarize the
  mixed term by evaluating the grade-zero and grade-one slots at
  <math|<around|(|F,J|)>>, <math|<around|(|F,0|)>>, <math|<around|(|0,J|)>>,
  and <math|<around|(|0,0|)>> and taking the alternating sum. This cancels
  the constant and pure-degree terms and leaves exactly the mixed bilinear
  coefficient. The three probes are the three entries in
  Lemma<nbsp><reference|lem:ex-trace-vector-probes>. The Bianchi identity
  supplies the fourth orbit representative, while the color argument and the
  all-coordinate reflection remove the other grades as shown above. Thus the
  probe map is injective into <math|\<bbb-R\><rsup|3>> and

  <\equation*>
    dim \<cal-R\><rsub|5>\<leqslant\>3.
  </equation*>

  This proves the two raw-dimension bounds without assuming a tensor
  classification beyond the finite parity count just given.

  <subsubsection|The normalized free stress basis>

  Let <math|\<nu\>=<around|(|4*\<pi\><rsup|2>|)><rsup|-1>> and
  <math|d<rsub|G>=dim \<frak-g\>\<gtr\>0>. The normalized four-dimensional
  massless Green function is <math|G<around|(|x|)>=\<nu\><around|\||x|\|><rsup|-2>>.
  At the unit vector <math|e<rsub|0>>, direct differentiation gives

  <\align>
    <tformat|<table|<row|<cell|\<partial\><rsub|i>*\<partial\><rsub|j>*G<around|(|e<rsub|0>|)>>|<cell|=-2*\<nu\>*\<delta\><rsub|i*j>+8*\<nu\>*\<delta\><rsub|i*0>*\<delta\><rsub|j*0>,<eq-number><label|eq:ex-trace-green-hessian>>>|<row|<cell|\<partial\><rsub|k>*\<partial\><rsub|i>*\<partial\><rsub|j>*G<around|(|e<rsub|0>|)>>|<cell|=8*\<nu\>*<around|(|\<delta\><rsub|i*j>*\<delta\><rsub|k*0>+\<delta\><rsub|k*i>*\<delta\><rsub|j*0>+\<delta\><rsub|i*0>*\<delta\><rsub|k*j>|)>-48*\<nu\>*\<delta\><rsub|i*0>*\<delta\><rsub|j*0>*\<delta\><rsub|k*0>.<eq-number><label|eq:ex-trace-green-third>>>>>
  </align>

  For example, differentiating <math|G> once gives
  <math|\<partial\><rsub|i>*G<around|(|x|)>=-2*\<nu\>*x<rsub|i><around|\||x|\|><rsup|-4>>.
  Differentiating again gives

  <\equation*>
    -2*\<nu\>*\<delta\><rsub|i*j>*<around|\||x*<around|\||<rsup|-4>+8*\<nu\>*x<rsub|i>*x<rsub|j>|\|>*x|\|><rsup|-6>.
  </equation*>

  One more derivative and <math|x=e<rsub|0>> give the displayed formulas.

  For antisymmetric index pairs define the free curl kernel

  <\equation*>
    C<rsub|a*b;k*m><around|(|x|)>=\<delta\><rsub|k*b>*\<partial\><rsub|a>*\<partial\><rsub|m>*G<around|(|x|)>-\<delta\><rsub|m*b>*\<partial\><rsub|a>*\<partial\><rsub|k>*G<around|(|x|)>-\<delta\><rsub|k*a>*\<partial\><rsub|b>*\<partial\><rsub|m>*G<around|(|x|)>+\<delta\><rsub|m*a>*\<partial\><rsub|b>*\<partial\><rsub|k>*G<around|(|x|)>,
  </equation*>

  and the two-contraction chain

  <\equation*>
    \<cal-C\><rsub|a*b,c*d;i*j,k*l><around|(|x|)>=C<rsub|a*b;i*j><around|(|x|)>*C<rsub|c*d;k*l><around|(|x|)>+C<rsub|a*b;k*l><around|(|x|)>*C<rsub|c*d;i*j><around|(|x|)>.
  </equation*>

  The Wick pairing of two separated point insertions with coefficient vector
  <math|w=<around|(|w<rsub|0>,w<rsub|1>,w<rsub|2>,w<rsub|3>|)>> is
  <math|d<rsub|G>> times

  <\equation*>
    \<cal-D\><rsub|w><rsup|a*b><around|(|H|)>=<choice|<tformat|<table|<row|<cell|w<rsub|1>*<big|sum><rsub|i>H<rsub|a*i,a*i>+w<rsub|2>*<big|sum><rsub|i,j>H<rsub|i*j,i*j>,>|<cell|a=b,>>|<row|<cell|w<rsub|3>*<big|sum><rsub|i>H<rsub|a*i,b*i>,>|<cell|a\<ne\>b,>>>>>
  </equation*>

  For fixed field pairs <math|<around|(|i*j,k*l|)>> set
  <math|H<rsub|p*q*r*s><around|(|x|)>=C<rsub|p*q;i*j><around|(|x|)>*C<rsub|r*s;k*l><around|(|x|)>+C<rsub|p*q;k*l><around|(|x|)>*C<rsub|r*s;i*j><around|(|x|)>>.
  The probe is <math|S<rsub|w><around|(|i*j,k*l;a*b;x|)>=d<rsub|G>*\<cal-D\><rsub|w><rsup|a*b><around|(|H<around|(|x|)>|)>>;
  the vacuum contribution to a one-point <math|00> entry is <math|w<rsub|0>>.
  Substitution of <eqref|eq:ex-trace-green-hessian> into the curl factors
  gives

  <\align>
    <tformat|<table|<row|<cell|S<rsub|w><around|(|01,01;00;e<rsub|0>|)>>|<cell|=d<rsub|G>*\<nu\><rsup|2>*<around|(|32*w<rsub|1>+64*w<rsub|2>|)>,<eq-number>>>|<row|<cell|S<rsub|w><around|(|12,12;00;e<rsub|0>|)>>|<cell|=d<rsub|G>*\<nu\><rsup|2>*<around|(|64*w<rsub|2>|)>,<eq-number>>>|<row|<cell|S<rsub|w><around|(|02,12;01;e<rsub|0>|)>>|<cell|=d<rsub|G>*\<nu\><rsup|2>*<around|(|-16*w<rsub|3>|)>.<eq-number><label|eq:ex-trace-vacuum-probes>>>>>
  </align>

  After factoring out <math|d<rsub|G>*\<nu\><rsup|2>>, the coefficient rows
  for these three probes, in columns <math|<around|(|w<rsub|1>,w<rsub|2>,w<rsub|3>|)>>,
  are

  <\equation*>
    <around|(|32,64,0|)>,<space|2em><around|(|0,64,0|)>,<space|2em><around|(|0,0,-16|)>.
  </equation*>

  These finite sums are evaluated by inserting the displayed Kronecker-delta
  Hessian into <math|C> and then into <math|H> and <math|\<cal-D\><rsub|w>>.
  The second equation recovers <math|w<rsub|2>>, the first then recovers
  <math|w<rsub|1>>, and the third recovers <math|w<rsub|3>>, since
  <math|d<rsub|G>*\<nu\><rsup|2>\<gtr\>0>. Together with the one-point vacuum
  coefficient <math|w<rsub|0>>, these four probes prove injectivity of the
  free stress coefficient map into the free stress table. The raw bound
  <math|dim \<cal-R\><rsub|4>\<leqslant\>4> and the surjective averaging
  projection from raw arrays to the free table show that the free table has
  dimension at most four. Thus the coefficient map is an isomorphism.

  <\lemma>
    <dueto|Free stress coefficient map is an
    isomorphism><label|lem:ex-trace-free-stress-basis>The four coefficient
    tensors consisting of the vacuum scalar, the two independent diagonal
    curvature contractions, and the off-diagonal shear contraction form a
    basis of the free symmetric grade-four stress table.
  </lemma>

  <\proof>
    The four probes above prove injectivity from a four-dimensional space;
    the raw upper bound proves equality of dimensions, hence bijectivity.
  </proof>

  <subsubsection|The two conserved free directions>

  Let <math|\<cal-T\><rsub|4>> be the free symmetric grade-four stress table
  and <math|K<rsub|0>=ker <around|(|<math-up|skim>:\<cal-T\><rsub|4>\<to\>\<bbb-R\>|)>>.
  Let <math|\<cal-V\><rsub|5>> be the grade-five vector table after imposing
  the free Maxwell equation. Fix on this same free field table a derivative
  plan, whose grade-raising maps on the complexified label spaces are
  <math|<with|math-font|cal*|D><rsub|a><rsup|<around|(|d|)>>:\<cal-F\><rsub|d>\<to\>\<cal-F\><rsub|d+1>>.
  They are complex-linear, commute with the real involution and have vector
  covariance:

  <\equation*>
    \<rho\><rsub|d+1><around|(|s|)>*<with|math-font|cal*|D><rsub|b><rsup|<around|(|d|)>>=<big|sum><rsub|a>s<rsub|a*b>*<with|math-font|cal*|D><rsub|a><rsup|<around|(|d|)>>*\<rho\><rsub|d><around|(|s|)>
  </equation*>

  for every signed permutation matrix <math|s>, where <math|\<rho\><rsub|d>>
  is its action on grade-<math|d> labels. Their compatibility with the smooth
  separated free correlations is as follows. For every grade-<math|d> label
  <math|B>, every finite spectator word <math|B<rsub|1>,\<ldots\>,B<rsub|n>>
  of arbitrary grades, and every pairwise distinct tuple
  <math|<around|(|x,x<rsub|1>,\<ldots\>,x<rsub|n>|)>>,

  <\equation>
    <label|eq:ex-trace-derivative-compatibility><around*|\<langle\>|<around|(|<with|math-font|cal*|D><rsub|a><rsup|<around|(|d|)>>*B|)><around|(|x|)>*<big|prod><rsub|k=1><rsup|n>B<rsub|k><around|(|x<rsub|k>|)>|\<rangle\>><rsub|0>=\<partial\><rsub|x<rsub|a>>*<around*|\<langle\>|B<around|(|x|)>*<big|prod><rsub|k=1><rsup|n>B<rsub|k><around|(|x<rsub|k>|)>|\<rangle\>><rsub|0>.
  </equation>

  The derivative is taken in the first insertion, holding every spectator
  fixed, within the open set of separated points. Here is the construction on
  the reference table used in this chapter. Represent a label by its
  invariant polynomial in curvature jets, using radial reconstruction to
  identify these with the radial labels. On a jet generator
  <math|\<partial\><rsup|\<alpha\>>*F<rsub|b*c>> define the translation
  derivation in direction <math|a> by <math|\<partial\><rsup|\<alpha\>>*F<rsub|b*c>\<mapsto\>\<partial\><rsup|\<alpha\>+e<rsub|a>>*F<rsub|b*c>>,
  and extend by the Leibniz rule. It increases engineering weight by one,
  annihilates constants, preserves invariant polynomials, and commutes with
  complex conjugation. Changing coordinates by a signed permutation in this
  formula gives exactly the displayed vector-covariance identity.

  To check its action on correlations, expand a Wick moment of any fixed
  finite word into its finite set of contractions. Each contraction is a
  product of differentiated curvature covariance kernels. All are smooth at
  separated positions. Differentiation in the distinguished position acts on
  each of its incident contractions once, by the product rule; raising the
  corresponding jet in that slot gives exactly that term. Summing proves
  <eqref|eq:ex-trace-derivative-compatibility> at polynomial level, for every
  spectator word, including the empty word. No differentiation under an
  infinite sum is involved.

  The field table is the quotient by labels with all separated moments zero.
  If a polynomial has zero field, its moments are identically zero on each
  open configuration space. Their derivatives are zero there as well. The
  identity just proved therefore shows that its translation derivation also
  has zero field. The derivation descends to the quotient and defines
  <math|<with|math-font|cal*|D><rsub|a><rsup|<around|(|d|)>>> independently
  of the representative. Reality, covariance and the unit identity descend
  with it. Thus the compatibility needed below holds on this particular
  reference table; it is not an additional choice of a derivative plan.
  Define the restricted divergence by

  <\equation*>
    <around|(|D<rsub|0>*T|)><rsub|b>=<big|sum><rsub|a=0><rsup|3><with|math-font|cal*|D><rsub|a><rsup|<around|(|4|)>>*T<rsub|a*b>,<space|2em>D<rsub|0>:K<rsub|0>\<longrightarrow\>\<cal-V\><rsub|5>.
  </equation*>

  Reality and the covariance law make this a real linear map to the stated
  vector table: the two transformed indices contracted in the sum cancel by
  orthogonality of <math|s>, leaving its vector action on <math|b>. Write
  <math|\<pi\>> for the quotient projection from the raw vector table onto
  <math|\<cal-V\><rsub|5>>. The projection is onto by the equivariant section
  obtained by averaging any real section over the finite signed permutation
  group. The equation-of-motion array is

  <\equation*>
    E<rsub|b>=<big|sum><rsub|i,a><around|\<langle\>|F<rsub|b*i>,\<partial\><rsub|a>*F<rsub|a*i>|\<rangle\>>.
  </equation*>

  It is a nonzero raw covariant vector: take a nonzero color vector <math|v>,
  set <math|F<rsub|01>=v> and <math|\<partial\><rsub|0>*F<rsub|01>=v> at one
  jet, with all other independent jet coordinates zero. The defining sum then
  evaluates its <math|b=0> component to <math|<around|\<langle\>|v,v|\<rangle\>>\<gtr\>0>.
  The Maxwell equation makes <math|E> vanish after the quotient. Thus the
  kernel of <math|\<pi\>> is nonzero. Rank\Unullity and <math|dim
  \<cal-R\><rsub|5>\<leqslant\>3> give <math|dim
  \<cal-V\><rsub|5>\<leqslant\>2>.

  Let <math|\<phi\><rsub|1>,\<phi\><rsub|2>> be the two linear functionals on
  <math|\<cal-V\><rsub|5>> obtained by correlating the component with output
  index <math|0> at <math|e<rsub|0>> with the respective quadratic curvature
  probes <math|<around|(|01,01|)>> and <math|<around|(|12,12|)>> at the
  origin. These are functionals of a vector label, not definitions by
  differentiating a stress correlation. As above,
  <math|S<rsub|w><around|(|i*j,k*l;a*b;x|)>> is the stress response with
  field-pair insertion <math|<around|(|i*j,k*l|)>>, output component
  <math|<around|(|a,b|)>>, and separation <math|x>. For the stress
  <math|T<rsub|w>> with coefficient vector <math|w> and zero skim, linearity
  and <eqref|eq:ex-trace-derivative-compatibility> give

  <\equation*>
    \<phi\><rsub|1>*<around|(|D<rsub|0>*T<rsub|w>|)>=<big|sum><rsub|u>\<partial\><rsub|u>*S<rsub|w><around|(|01,01;u*0;e<rsub|0>|)>,<space|2em>\<phi\><rsub|2>*<around|(|D<rsub|0>*T<rsub|w>|)>=<big|sum><rsub|u>\<partial\><rsub|u>*S<rsub|w><around|(|12,12;u*0;e<rsub|0>|)>.
  </equation*>

  Differentiating the chain product gives

  <\equation*>
    \<partial\><rsub|u>*\<cal-C\>=<around|(|\<partial\><rsub|u>*C<rsub|a*b;i*j>|)>*C<rsub|c*d;k*l>+C<rsub|a*b;i*j>*<around|(|\<partial\><rsub|u>*C<rsub|c*d;k*l>|)>+<around|(|\<partial\><rsub|u>*C<rsub|a*b;k*l>|)>*C<rsub|c*d;i*j>+C<rsub|a*b;k*l>*<around|(|\<partial\><rsub|u>*C<rsub|c*d;i*j>|)>.
  </equation*>

  Inserting <eqref|eq:ex-trace-green-hessian>\U
  <eqref|eq:ex-trace-green-third> and summing <math|u=0,1,2,3> gives

  <\align>
    <tformat|<table|<row|<cell|<big|sum><rsub|u>\<partial\><rsub|u>*S<rsub|w><around|(|01,01;u*0;e<rsub|0>|)>>|<cell|=d<rsub|G>*\<nu\><rsup|2>*<around|(|-256*w<rsub|1>-512*w<rsub|2>+128*w<rsub|3>|)>,<eq-number>>>|<row|<cell|<big|sum><rsub|u>\<partial\><rsub|u>*S<rsub|w><around|(|12,12;u*0;e<rsub|0>|)>>|<cell|=d<rsub|G>*\<nu\><rsup|2>*<around|(|-512*w<rsub|2>-128*w<rsub|3>|)>.<eq-number><label|eq:ex-trace-divergence-probes>>>>>
  </align>

  The two coefficient rows in <math|<around|(|w<rsub|1>,w<rsub|2>,w<rsub|3>|)>>
  are linearly independent. Consequently <math|\<phi\><rsub|1>\<circ\>D<rsub|0>>
  and <math|\<phi\><rsub|2>\<circ\>D<rsub|0>> are independent, so
  <math|\<phi\><rsub|1>,\<phi\><rsub|2>> are independent on
  <math|\<cal-V\><rsub|5>>. Together with the upper bound <math|dim
  \<cal-V\><rsub|5>\<leqslant\>2>, this gives <math|dim \<cal-V\><rsub|5>=2>,
  and <math|\<Phi\>=<around|(|\<phi\><rsub|1>,\<phi\><rsub|2>|)>:\<cal-V\><rsub|5>\<to\>\<bbb-R\><rsup|2>>
  is an isomorphism. The two probe equations have common kernel
  <math|\<bbb-R\>*<around|(|1,-1/4,1|)>> on
  <math|<around|(|w<rsub|1>,w<rsub|2>,w<rsub|3>|)>>: the second gives
  <math|w<rsub|2>=-w<rsub|3>/4>, and then the first gives
  <math|w<rsub|1>=w<rsub|3>>. The scalar coefficient <math|w<rsub|0>> is
  removed by zero skim. Thus the kernel of
  <math|<around|(|<math-up|skim>,\<Phi\>\<circ\>D<rsub|0>|)>> is exactly the
  Weyl line <math|<around|(|0,1,-1/4,1|)>>. Since <math|\<Phi\>> is an
  isomorphism, this also proves the Weyl tensor has zero divergence. The
  zero-skim domain has dimension three, and the restricted divergence has
  one-dimensional kernel, so it has rank two and is onto the two-dimensional
  target. Its kernel is precisely the Weyl line.

  <\proposition>
    <dueto|Free rank and closure dimensions><label|prop:ex-trace-free-closure-rank>Under
    the reality, signed covariance and separated-correlation compatibility
    assumptions on the derivative plan stated above, the free symmetric
    grade-four stress table has dimension four. The Maxwell-reduced
    grade-five vector table has dimension two. The free zero-skim divergence
    map is onto that vector table and its kernel is the one-dimensional Weyl
    line.
  </proposition>

  <\proof>
    The first assertion is Lemma<nbsp><reference|lem:ex-trace-free-stress-basis>.
    The previous paragraph proves the second and third assertions. The scalar
    skim is exactly the real one-point average of the <math|00> entry; it is
    not the tensor trace. The identification of the differentiated stress
    probes with the probes of <math|D<rsub|0>> uses
    <eqref|eq:ex-trace-derivative-compatibility>; the remaining steps are the
    explicit probe formulas and the finite-dimensional quotient argument just
    given.
  </proof>

  <subsection|A priced mission forces the weighted response to
  vanish><label|subsec:ex-trace-small-means>

  This section records the quantitative argument behind the weighted
  field-image estimate used by the trace receiver. It exposes the local
  price, scale, and detector inputs. It does not derive the mission's local
  price bound from the finite-volume estimates.

  Let <math|S> be the selected interacting table, and let
  <math|\<cal-U\><rsub|i><rsup|<around|(|d|)>>:E<rsub|d>\<to\>S<rsub|d>> be
  its scale chart from the reference grade space <math|E<rsub|d>> into the
  selected grade space <math|S<rsub|d>>. Here <math|E<rsub|d>> is the
  grade-<math|d> field space of the reference (standard) table; it carries a
  complex-antilinear real-structure involution and an action
  <math|R<around|(|s|)>> of the signed permutations <math|s> of the four
  axes. Let <math|\<cal-V\>> be the finite-dimensional real vector space of
  grade-five response arrays <math|y=<around|(|y<rsub|\<alpha\>>|)><rsub|\<alpha\>\<in\><math-up|Axis>>>,
  <math|y<rsub|\<alpha\>>\<in\>E<rsub|5>>, which are real and
  signed-equivariant: every <math|y<rsub|\<alpha\>>> is fixed by the
  real-structure involution, and

  <\equation*>
    R<around|(|s|)>*y<rsub|\<alpha\>>=<math-up|sign><around|(|s,\<alpha\>|)>*<space|0.17em>y<rsub|s*\<alpha\>><space|2em><text|for
    every signed permutation >s<text| and every axis >\<alpha\>,
  </equation*>

  where <math|<math-up|sign><around|(|s,\<alpha\>|)>> is the sign that
  <math|s> attaches to the axis <math|\<alpha\>>. Both conditions are part of
  the definition; signed equivariance alone defines a larger space. Let
  <math|\<cal-B\>> be the real vector space of arrays of raw grade-five
  labels defined by the same two conditions, with the conjugation and the
  signed-permutation action of the raw labels in place of those of
  <math|E<rsub|5>>. The normalized response map is a real-linear map
  <math|s<rsub|i>:\<cal-B\>\<to\>\<cal-V\>>. Write <math|j<rsub|i>> for the
  selected frame level and <math|k<rsub|i>> for its associated scale index,
  the summit index of <math|j<rsub|i>>; in particular
  <math|k<rsub|i>\<gtr\>j<rsub|i>>, and <math|j<rsub|i>\<to\>\<infty\>> along
  the selected sequence. Two distinct positive scales are used:

  <\equation*>
    z<rsub|i>=<wide|\<beta\>|^><rsub|k<rsub|i>>,<space|2em>\<zeta\><rsub|i>=\<zeta\><around|(|k<rsub|i>|)>,
  </equation*>

  where <math|\<zeta\><around|(|k|)>\<gtr\>0> is the arch scale at level
  <math|k>. The first, <math|z<rsub|i>>, appears in the polynomial weight and
  rate estimate; the second, <math|\<zeta\><rsub|i>>, is the Arch scale in
  the medium and cancels from the response identity below. Let
  <math|a<rsub|i>> be the field dilation at level <math|j<rsub|i>>,
  <math|b<rsub|i>> the frame scale, <math|m<rsub|i>> the frame cap, and
  <math|r<rsub|i>> the physical dilation. The selected scale relations are

  <\equation*>
    r<rsub|i>=a<rsub|i>*b<rsub|i>,<space|2em>0\<less\>b<rsub|i>\<leqslant\>m<rsub|i>,<space|2em>m<rsub|i>=<math-up|tiltcap><around|(|j<rsub|i>|)>.
  </equation*>

  Let <math|v<rsub|i>\<in\>\<cal-B\>> be the selected medium and
  <math|x<rsub|i>\<in\>\<cal-B\>> its core field. The three identities
  <eqref|eq:ex-trace-medium-core>\U<eqref|eq:ex-trace-night-scaling> below
  are used only for all sufficiently large <math|i>. They are hypotheses of
  Lemma<nbsp><reference|lem:ex-trace-small-means> and are not proved in this
  section; the first two are required only on such a tail, and the third
  requires <math|k<rsub|i>> to be at least the grade-five reference level,
  which holds for large <math|i> because <math|k<rsub|i>\<gtr\>j<rsub|i>\<to\>\<infty\>>.
  The core representation is

  <\equation>
    v<rsub|i><around|(|\<alpha\>|)>=\<zeta\><rsub|i><rsup|-1>*\<cal-E\><rsub|k<rsub|i>><around|(|x<rsub|i><around|(|\<alpha\>|)>|)>*<space|2em><around|(|\<alpha\>\<in\><math-up|Axis>|)>,<label|eq:ex-trace-medium-core>
  </equation>

  where <math|\<cal-E\><rsub|k>> is the core-to-strip map at scale index
  <math|k>. The response normalization is, for every <math|v\<in\>\<cal-B\>>
  and every axis <math|\<alpha\>>,

  <\equation>
    \<cal-U\><rsub|i><rsup|<around|(|5|)>><around|(|<around|(|s<rsub|i><around|(|v|)>|)><rsub|\<alpha\>>|)>=\<cal-V\><rsub|i><around|(|v<rsub|\<alpha\>>|)>,<label|eq:ex-trace-spun-response>
  </equation>

  where <math|\<cal-V\><rsub|i>=<math-up|Vault><around|(|S,Z,5,k<rsub|i>,c<rsub|i>|)>>
  is the grade-five strip evaluation at scale index <math|k<rsub|i>> with
  crown normalization <math|c<rsub|i>>. For a raw grade-five label <math|x>
  which is odd under central signed inversion, meaning
  <math|F<around|(|<math-up|archV>|)>*x=-x> (the night condition), the exact
  scaling identity is

  <\equation>
    \<cal-V\><rsub|i><around|(|\<cal-E\><rsub|k<rsub|i>><around|(|x|)>|)>=c<rsub|i>*P<rsub|5>*x,<space|2em>c<rsub|i>=\<zeta\><rsub|i>*<around|(|a<rsub|i>*b<rsub|i>|)><rsup|5>,<label|eq:ex-trace-night-scaling>
  </equation>

  where <math|P<rsub|5>=S.<math-up|project><rsub|5>> maps raw grade-five
  labels into <math|S<rsub|5>>. These are exact identities on the stated
  tail, assumed as hypotheses; they are not consequences of the estimate
  below. Every entry <math|y<rsub|\<alpha\>>> of an array
  <math|y\<in\>\<cal-B\>> satisfies the night condition: the central
  inversion fixes each axis and attaches the sign <math|-1> to it, so signed
  equivariance reads <math|F<around|(|<math-up|archV>|)>*y<rsub|\<alpha\>>=-y<rsub|\<alpha\>>>.
  In particular <eqref|eq:ex-trace-night-scaling> applies to
  <math|x=x<rsub|i><around|(|\<alpha\>|)>>.

  The tested configuration consists of two points. With <math|e<rsub|0>> the
  unit vector of axis <math|0>, put

  <\equation*>
    \<zeta\><rsub|i><rsup|<math-up|pt>>=<around*|(|b<rsub|i><rsup|-1>*<around|(|<around|\<lceil\>|b<rsub|i>|\<rceil\>>,1,1,1|)>,<space|0.17em>0|)>,<space|2em>\<zeta\><rsub|\<infty\>><rsup|<math-up|pt>>=<around|(|e<rsub|0>,0|)>.
  </equation*>

  The scale input is <math|b<rsub|i>\<to\>\<infty\>>; hence
  <math|\<zeta\><rsub|i><rsup|<math-up|pt>>\<to\>\<zeta\><rsub|\<infty\>><rsup|<math-up|pt>>>,
  the axial configuration. By <math|r<rsub|i>=a<rsub|i>*b<rsub|i>>, the
  dilated configuration <math|r<rsub|i>*\<zeta\><rsub|i><rsup|<math-up|pt>>=<around|(|a<rsub|i>*<around|(|<around|\<lceil\>|b<rsub|i>|\<rceil\>>,1,1,1|)>,0|)>>
  consists of two distinct points of the lattice of spacing <math|a<rsub|i>>,
  the kind of configuration at which the finite-volume price estimate is
  formulated. For a reference grade-four field <math|w\<in\>E<rsub|4>> and
  <math|Y\<in\>\<cal-V\>>, let <math|\<lambda\><rsub|i,w><around|(|Y|)>> be
  the two-point function of the selected table with entries
  <math|\<cal-U\><rsub|i><rsup|<around|(|5|)>><around|(|Y<rsub|0>|)>> and
  <math|\<cal-U\><rsub|i><rsup|<around|(|4|)>>*w>, at the shrinking
  configuration <math|r<rsub|i>*\<zeta\><rsub|i><rsup|<math-up|pt>>>; only
  the axis-<math|0> entry <math|Y<rsub|0>> of the array enters. Let
  <math|\<lambda\><rsub|w><around|(|Y|)>> be the two-point function of the
  reference table with entries <math|Y<rsub|0>> and <math|w> at
  <math|\<zeta\><rsub|\<infty\>><rsup|<math-up|pt>>>. Denote the
  selected-table two-point function at <math|r<rsub|i>*\<zeta\><rsub|i><rsup|<math-up|pt>>>
  on explicitly supplied grade-five and grade-four entries by
  <math|\<frak-p\><rsub|i,w>>; it is complex-linear in the grade-five entry.
  The local price input is the bound

  <\equation>
    <around*|\||\<frak-p\><rsub|i,w><around|(|a<rsub|i><rsup|5>*P<rsub|5>*x<rsub|i><around|(|0|)>,\<cal-U\><rsub|i><rsup|<around|(|4|)>>*w|)>|\|>\<leqslant\>\<Theta\><rsub|i>,<space|1em><text|eventually
    in >i<text| for each fixed >w,<label|eq:ex-trace-small-means-price>
  </equation>

  where

  <\equation*>
    \<Theta\><rsub|i>=exp <space|-0.17em><around*|(|-<frac|100|10<rsup|4>><around|(|log
    <wide|\<beta\>|^><rsub|j<rsub|i>>|)><rsup|48>|)>
  </equation*>

  is the positive local price allowance at the frame level <math|j<rsub|i>>.
  The bound <eqref|eq:ex-trace-small-means-price> follows from
  Proposition<nbsp><reference|prop:ex-trace-mission-price-transfer>, using
  the actual localizer, measured root estimates and constructed Crown of
  Subsection<nbsp><reference|sec:ex-lattice-trace-local-pairing>. The
  finite-volume three-term pairing estimate there uses the same paid labels
  as the mission, before the fixed-level ultrafilter passage. In particular
  no new label is chosen for each spectator test.

  The detector properties can now be verified for these same reference fields
  and selected charts.

  <\enumerate>
    <item><em|Separation at the axial configuration.> The reference
    identification <eqref|eq:scribe-reference-dictionary> preserves the real
    structure and signed motions, so it identifies <math|\<cal-V\>> with the
    reference vector table <math|\<cal-V\><rsub|5>> of
    Subsection<nbsp><reference|sec:ex-lattice-trace-free-rank>. Take the two
    grade-four fields represented by the quadratic curvature probes
    <math|<around|(|01,01|)>> and <math|<around|(|12,12|)>> there, and call
    them <math|w<rsub|1>,w<rsub|2>>. The definitions of the functionals give
    <math|\<lambda\><rsub|w<rsub|1>>=\<phi\><rsub|1>> and
    <math|\<lambda\><rsub|w<rsub|2>>=\<phi\><rsub|2>>: in both cases the
    output-index-<math|0> entry is inserted at <math|e<rsub|0>> and the
    quadratic probe at the origin. The isomorphism
    <math|\<Phi\>=<around|(|\<phi\><rsub|1>,\<phi\><rsub|2>|)>> proved after
    <eqref|eq:ex-trace-divergence-probes> therefore implies that
    <math|\<lambda\><rsub|w<rsub|1>><around|(|y|)>=\<lambda\><rsub|w<rsub|2>><around|(|y|)>=0>
    forces <math|y=0>. The covariance normalization is unchanged under the
    reference identification. Thus the full family
    <math|<around|{|\<lambda\><rsub|w>:w\<in\>E<rsub|4>|}>> separates
    <math|\<cal-V\>>.

    <item><em|Convergence of fixed tested pairings.> Fix
    <math|u\<in\>E<rsub|5>>, <math|w\<in\>E<rsub|4>>, and
    <math|\<xi\><rsub|i>\<to\><around|(|e<rsub|0>,0|)>>. A small closed ball
    about <math|<around|(|e<rsub|0>,0|)>> is a compact set of distinct-point
    configurations, and contains <math|\<xi\><rsub|i>> eventually. Apply the
    order-zero case of <eqref|eq:scribe-compact-comparison> on this compact
    set to the two fixed labels. Its uniform error tends to zero. The
    reference Wick correlation is smooth there, hence its value at
    <math|\<xi\><rsub|i>> tends to its value at
    <math|<around|(|e<rsub|0>,0|)>>. Their sum gives the required limit for
    the selected correlation at <math|r<rsub|i>*\<xi\><rsub|i>>. This uses
    exactly the completed maps <math|\<cal-U\><rsub|i><rsup|<around|(|5|)>>,\<cal-U\><rsub|i><rsup|<around|(|4|)>>>
    and radii of the gallery; coordinate ties at the limiting configuration
    cause no problem because its two points remain distinct.
  </enumerate>

  The finite detector is deduced from them as follows. The maps
  <math|y\<mapsto\>\<lambda\><rsub|w><around|(|y|)>>,
  <math|w\<in\>E<rsub|4>>, are real-linear functionals on the
  finite-dimensional space <math|\<cal-V\>> with zero common kernel
  by<nbsp>(1), so finitely many of them already have zero common kernel.
  Hence there are fixed reference fields <math|w<rsub|1>,\<ldots\>,w<rsub|m>\<in\>E<rsub|4>>
  such that the limiting pairings define an injective real-linear map

  <\equation*>
    \<Lambda\><around|(|y|)>=<around|(|\<lambda\><rsub|w<rsub|r>><around|(|y|)>|)><rsub|r=1><rsup|m>:\<cal-V\>\<longrightarrow\>\<bbb-C\><rsup|m>.
  </equation*>

  By<nbsp>(2), applied with <math|\<xi\><rsub|i>=\<zeta\><rsub|i><rsup|<math-up|pt>>>,
  <math|u=y<rsub|0>> and <math|w=w<rsub|r>>, the scale-dependent real-linear
  maps <math|\<Lambda\><rsub|i><around|(|y|)>=<around|(|\<lambda\><rsub|i,w<rsub|r>><around|(|y|)>|)><rsub|r=1><rsup|m>>
  converge to <math|\<Lambda\>> pointwise on <math|\<cal-V\>>, and therefore
  in operator norm, since <math|\<cal-V\>> is finite-dimensional. If
  <math|\<cal-V\>\<neq\><around|{|0|}>>, injectivity gives a positive minimum
  <math|2*c> of <math|<around|\<\|\|\>|\<Lambda\>*y|\<\|\|\>>> on its unit
  sphere, and <math|<around|\<\|\|\>|\<Lambda\><rsub|i>-\<Lambda\>|\<\|\|\>>\<leqslant\>c>
  for large <math|i>. Thus some <math|c\<gtr\>0> satisfies

  <\equation>
    <around|\<\|\|\>|\<Lambda\><rsub|i>*y|\<\|\|\>>\<geqslant\>c<around|\<\|\|\>|y|\<\|\|\>><space|2em><text|for
    all sufficiently large >i<text| and every
    >y\<in\>\<cal-V\>.<label|eq:ex-trace-small-means-detector>
  </equation>

  For <math|\<cal-V\>=<around|{|0|}>> the desired conclusion is immediate.
  The separation and compact comparison just verified are what permit this
  finite-dimensional lower bound.

  The scalar rate input is

  <\equation>
    z<rsub|i><rsup|p>*m<rsub|i><rsup|5>*\<Theta\><rsub|i>\<longrightarrow\>0<space|2em><text|for
    each fixed integer >p\<geqslant\>0.<label|eq:ex-trace-small-means-rate>
  </equation>

  It follows by multiplying three rate tickets for sequences indexed by the
  frame level <math|j> and then substituting
  <math|j=j<rsub|i>\<to\>\<infty\>>. The first follows from the summit-clock
  ratio in <eqref|eq:ex-lattice-scribe-clock-inputs>: eventually
  <math|<wide|\<beta\>|^><rsub|<math-up|summit><around|(|j|)>>\<leqslant\>2*<wide|\<beta\>|^><rsub|j>>,
  and <math|log <around|(|2*<wide|\<beta\>|^><rsub|j>|)>/<around|(|log
  <wide|\<beta\>|^><rsub|j>|)><rsup|48>\<to\>0>. The proof of that clock
  ratio uses only the selected scale schedule, not the small-means estimate
  being proved here. The second ticket is
  Lemma<nbsp><reference|lem:ex-lattice-trace-tiltcap-ticket>, and the third
  is immediate from the definition of <math|\<Theta\><rsub|i>>. Here a
  nonnegative sequence <math|f<rsub|j>> has a ticket of rate <math|\<rho\>>
  if, for every <math|\<rho\><rprime|'>\<gtr\>\<rho\>>,
  <math|f<rsub|j>\<leqslant\>exp <around|(|\<rho\><rprime|'><around|(|log
  <wide|\<beta\>|^><rsub|j>|)><rsup|48>|)>> for all sufficiently large
  <math|j>. The three tickets are: the scale <math|<wide|\<beta\>|^>> at the
  summit index of <math|j>, which for <math|j=j<rsub|i>> is <math|z<rsub|i>>
  itself, has a zero-rate ticket (it is eventually at most twice
  <math|<wide|\<beta\>|^><rsub|j>>); the cap
  <math|<math-up|tiltcap><around|(|j|)>> of
  Definition<nbsp><reference|def:ex-lattice-tiltcap> has a zero-rate ticket,
  hence so does its fifth power (Lemma<nbsp><reference|lem:ex-lattice-trace-tiltcap-ticket>);
  and <math|exp <around|(|-100*\<delta\><around|(|log
  <wide|\<beta\>|^><rsub|j>|)><rsup|48>|)>>, which is
  <math|\<Theta\><rsub|i>> for <math|j=j<rsub|i>>, has rate
  <math|-100*\<delta\>>, with the fixed constant <math|\<delta\>=10<rsup|-4>>
  of the definition of <math|\<Theta\><rsub|i>>. Ticket products add rates,
  so for fixed <math|p> the product has negative rate
  <math|-100*\<delta\>\<less\>0> and tends to zero, because
  <math|<wide|\<beta\>|^><rsub|j>\<to\>\<infty\>>.

  <\lemma>
    <dueto|Weighted field decay from the priced
    mission><label|lem:ex-trace-small-means>Assume that, for all sufficiently
    large <math|i>, the scale relations <math|r<rsub|i>=a<rsub|i>*b<rsub|i>>
    and <math|0\<less\>b<rsub|i>\<leqslant\>m<rsub|i>>, the medium
    representation <eqref|eq:ex-trace-medium-core>, the response identity
    <eqref|eq:ex-trace-spun-response> and the scaling identity
    <eqref|eq:ex-trace-night-scaling> for <math|x=x<rsub|i><around|(|0|)>>
    hold. Assume the price bound <eqref|eq:ex-trace-small-means-price> for
    each of the finitely many detector fields
    <math|w<rsub|1>,\<ldots\>,w<rsub|m>>, the detector bound
    <eqref|eq:ex-trace-small-means-detector>, and the rate
    <eqref|eq:ex-trace-small-means-rate>. Then, for each fixed integer
    <math|p\<geqslant\>0>,

    <\equation*>
      z<rsub|i><rsup|p>*s<rsub|i><around|(|v<rsub|i>|)>\<longrightarrow\>0<space|1em><text|in
      >\<cal-V\>.
    </equation*>
  </lemma>

  <\proof>
    Set <math|Y<rsub|i>=z<rsub|i><rsup|p>*s<rsub|i><around|(|v<rsub|i>|)>\<in\>\<cal-V\>>,
    and restrict to <math|i> so large that all the assumed identities and the
    finitely many price bounds hold. By the medium representation, response
    normalization, and night scaling, together with the real linearity of
    <math|s<rsub|i>>, <math|\<cal-U\><rsub|i><rsup|<around|(|5|)>>> and
    <math|\<cal-V\><rsub|i>>,

    <\equation*>
      \<cal-U\><rsub|i><rsup|<around|(|5|)>><around|(|<around|(|Y<rsub|i>|)><rsub|0>|)>=z<rsub|i><rsup|p>*\<zeta\><rsub|i><rsup|-1>*c<rsub|i>*P<rsub|5>*x<rsub|i><around|(|0|)>=z<rsub|i><rsup|p>*<around|(|a<rsub|i>*b<rsub|i>|)><rsup|5>*P<rsub|5>*x<rsub|i><around|(|0|)>.
    </equation*>

    The Arch scale <math|\<zeta\><rsub|i>> cancels; it is distinct from the
    polynomial weight <math|z<rsub|i>>. Linearity in the grade-five entry
    gives, for each detector field <math|w<rsub|r>>,

    <\equation*>
      \<lambda\><rsub|i,w<rsub|r>><around|(|Y<rsub|i>|)>=z<rsub|i><rsup|p>*b<rsub|i><rsup|5>*\<frak-p\><rsub|i,w<rsub|r>><around|(|a<rsub|i><rsup|5>*P<rsub|5>*x<rsub|i><around|(|0|)>,\<cal-U\><rsub|i><rsup|<around|(|4|)>>*w<rsub|r>|)>.
    </equation*>

    The local price bound and <math|b<rsub|i>\<leqslant\>m<rsub|i>> imply

    <\equation*>
      <around|\<\|\|\>|\<Lambda\><rsub|i>*Y<rsub|i>|\<\|\|\>>\<leqslant\><sqrt|m>*<space|0.17em>z<rsub|i><rsup|p>*m<rsub|i><rsup|5>*\<Theta\><rsub|i>\<longrightarrow\>0.
    </equation*>

    The detector lower bound gives <math|<around|\<\|\|\>|Y<rsub|i>|\<\|\|\>>\<leqslant\>c<rsup|-1>*<around|\<\|\|\>|\<Lambda\><rsub|i>*Y<rsub|i>|\<\|\|\>>\<to\>0>.
    This proves the desired limit in the full finite-dimensional response
    space.
  </proof>

  The lemma is applied to the selected medium <math|v<rsub|i>>. The proof
  identifies the mechanism: the powered local price controls finitely many
  separating coordinates, and the negative rate forces each coordinate to
  zero. The uniform local price receipt, mission construction, and detector
  convergence still depend on the selected finite-volume funding and chart
  construction.

  <subsection|Weighted price control for the trace
  receiver><label|sec:ex-lattice-trace-weighted-estimates>

  This section constructs the normalized response estimates and their scalar
  combination, which feeds the rank-one receiver lemma
  <reference|lem:ex-lattice-trace-weighted-price>. The chosen and reference
  fields use the same finite-volume response columns, arch and separation
  ultrafilter. We keep the field decay separate from price convergence: the
  former uses the priced mission and its detector.

  <\lemma>
    <dueto|Weighted price from a rank-one approximate
    kernel><label|lem:ex-lattice-trace-weighted-price>Let <math|E> and
    <math|H> be finite-dimensional real normed spaces. Let <math|f:E\<to\>H>
    and <math|U:H\<to\>E> be linear, with <math|f*U=<math-up|id><rsub|H>> and
    <math|ker f=\<bbb-R\>*x> for some <math|x\<ne\>0>. Suppose linear maps
    <math|v<rsub|i>:E\<to\>H> and <math|u<rsub|i>:H\<to\>E> satisfy

    <\equation*>
      v<rsub|i>\<longrightarrow\>f,<space|2em>u<rsub|i>\<longrightarrow\>U,<space|2em>v<rsub|i>*u<rsub|i>=<math-up|id><rsub|H><space|1em><text|eventually>.
    </equation*>

    Let <math|w<rsub|i>\<to\>x>, let <math|e<rsub|i>\<in\>\<bbb-R\>>, and let
    <math|\<rho\>:E\<to\>\<bbb-R\>> be a fixed linear functional. If

    <\equation*>
      e<rsub|i>*v<rsub|i><around|(|w<rsub|i>|)>\<longrightarrow\>0<space|1em><text|in
      >H,<space|2em>e<rsub|i>*\<rho\><around|(|w<rsub|i>|)>\<longrightarrow\>0,
    </equation*>

    then there are linear functionals <math|\<mu\><rsub|i>:H\<to\>\<bbb-R\>>
    with uniformly bounded operator norms and

    <\equation*>
      <around*|\||e<rsub|i>*<around|(|\<mu\><rsub|i>*v<rsub|i>-\<rho\>|)>|\|><rsub|E<rsup|\<ast\>>>\<longrightarrow\>0.
    </equation*>
  </lemma>

  <\proof>
    Choose a linear functional <math|\<lambda\>:E\<to\>\<bbb-R\>> with
    <math|\<lambda\><around|(|x|)>=1>, by extending <math|x> to a basis.
    Define

    <\equation*>
      A<around|(|y|)>=\<lambda\>*<around*|(|y-U*f<around|(|y|)>|)>.
    </equation*>

    Since <math|f*<around|(|y-U*f<around|(|y|)>|)>=0>, the kernel assumption
    gives <math|y-U*f<around|(|y|)>=a*x> for some scalar <math|a>. Applying
    <math|\<lambda\>> shows <math|a=A<around|(|y|)>>, and therefore

    <\equation>
      y=U*f<around|(|y|)>+A<around|(|y|)>*x.<label|eq:trace-weighted-estimates-display-star>
    </equation>

    Set <math|V<rsub|i>=u<rsub|i>*f+A\<otimes\>w<rsub|i>>, where
    <math|<around|(|A\<otimes\>w<rsub|i>|)><around|(|y|)>=A<around|(|y|)>*w<rsub|i>>.
    The convergence of <math|u<rsub|i>> and <math|w<rsub|i>> implies
    <math|V<rsub|i>-<math-up|id><rsub|E>=<around|(|u<rsub|i>-U|)>*f+A\<otimes\><around|(|w<rsub|i>-x|)>>,
    by (*). The right side tends to zero in operator norm. Once
    <math|<around|\<\|\|\>|V<rsub|i>-<math-up|id><rsub|E>|\<\|\|\>>\<less\>1>,
    the Neumann series gives an inverse and

    <\equation*>
      <around|\<\|\|\>|V<rsub|i><rsup|-1>-<math-up|id><rsub|E>|\<\|\|\>>\<leqslant\><frac|<around|\<\|\|\>|V<rsub|i>-<math-up|id><rsub|E>|\<\|\|\>>|1-<around|\<\|\|\>|V<rsub|i>-<math-up|id><rsub|E>|\<\|\|\>>>,
    </equation*>

    so <math|V<rsub|i><rsup|-1>\<to\><math-up|id><rsub|E>>.

    Put <math|\<mu\><rsub|i>=\<rho\>*u<rsub|i>>. These functionals have
    bounded norms because <math|u<rsub|i>\<to\>U>. For <math|y\<in\>E>, the
    exact identity <math|v<rsub|i>*u<rsub|i>=<math-up|id><rsub|H>> gives

    <\align*>
      <tformat|<table|<row|<cell|e<rsub|i>*<around|(|\<mu\><rsub|i>*v<rsub|i>-\<rho\>|)>*<around|(|V<rsub|i>*y|)>>|<cell|=e<rsub|i>*\<rho\>*<around*|(|u<rsub|i>*v<rsub|i>*<around|(|u<rsub|i>*f<around|(|y|)>+A<around|(|y|)>*w<rsub|i>|)>-u<rsub|i>*f<around|(|y|)>-A<around|(|y|)>*w<rsub|i>|)>>>|<row|<cell|>|<cell|=A<around|(|y|)>*<space|0.17em>e<rsub|i>*<around*|(|\<rho\>*<around|(|u<rsub|i>*v<rsub|i><around|(|w<rsub|i>|)>|)>-\<rho\><around|(|w<rsub|i>|)>|)>.>>>>
    </align*>

    The first term inside the final difference vanishes after weighting,
    because

    <\equation*>
      e<rsub|i>*\<rho\>*<around|(|u<rsub|i>*v<rsub|i><around|(|w<rsub|i>|)>|)>=\<rho\>*<around|(|u<rsub|i>*<around|(|e<rsub|i>*v<rsub|i><around|(|w<rsub|i>|)>|)>|)>
    </equation*>

    and <math|\<rho\>*u<rsub|i>> is uniformly bounded. The second term
    vanishes by hypothesis. Thus the left side tends to zero for every fixed
    <math|y>. In finite dimension, convergence on a basis implies
    operator-norm convergence, so <math|e<rsub|i>*<around|(|\<mu\><rsub|i>*v<rsub|i>-\<rho\>|)>*V<rsub|i>\<to\>0>.
    Multiplication by <math|V<rsub|i><rsup|-1>\<to\><math-up|id><rsub|E>>
    gives <math|e<rsub|i>*<around|(|\<mu\><rsub|i>*v<rsub|i>-\<rho\>|)>\<to\>0>
    in operator norm.
  </proof>

  Let <math|E> be a finite-dimensional real normed space, <math|H> a
  finite-dimensional real normed space, <math|s<rsub|i>:E\<to\>H> linear
  maps, and <math|\<rho\>:E\<to\>\<bbb-R\>> a fixed linear functional. Let
  <math|x\<in\>E> satisfy <math|\<rho\><around|(|x|)>=0>. For each <math|i>,
  let <math|b<rsub|i>\<geqslant\>1> with <math|b<rsub|i>\<to\>\<infty\>>, let
  <math|q<rsub|i>,r<rsub|i>\<in\>E>, and let <math|e<rsub|i>\<geqslant\>0>.
  Define

  <\equation*>
    m<rsub|i>=b<rsub|i><rsup|-1>*q<rsub|i>-r<rsub|i>.
  </equation*>

  Assume

  <\align>
    <tformat|<table|<row|<cell|b<rsub|i><rsup|-1>*q<rsub|i>>|<cell|\<longrightarrow\>0,>|<cell|sup<rsub|i><around|\||\<rho\><around|(|q<rsub|i>|)>|\|>>|<cell|\<less\>\<infty\>,>|<cell|r<rsub|i>>|<cell|\<longrightarrow\>-x,<eq-number><label|eq:ex-lattice-trace-response-limit>>>|<row|<cell|e<rsub|i>/b<rsub|i>>|<cell|\<longrightarrow\>0,>|<cell|e<rsub|i>*\<rho\>*<around|(|r<rsub|i>+x|)>>|<cell|\<longrightarrow\>0,>|<cell|b<rsub|i>*s<rsub|i><around|(|m<rsub|i>|)>>|<cell|\<longrightarrow\>0<space|1em><text|in
    >H.<eq-number><label|eq:ex-lattice-trace-response-weighted>>>>>
  </align>

  <\lemma>
    <dueto|The medium has both weighted null
    limits><label|lem:ex-lattice-trace-medium-receipts>Under
    <eqref|eq:ex-lattice-trace-response-limit>\U
    <eqref|eq:ex-lattice-trace-response-weighted>,

    <\equation*>
      m<rsub|i>\<longrightarrow\>x,<space|2em>e<rsub|i>*\<rho\><around|(|m<rsub|i>|)>\<longrightarrow\>0,<space|2em>e<rsub|i>*s<rsub|i><around|(|m<rsub|i>|)>\<longrightarrow\>0.
    </equation*>
  </lemma>

  <\proof>
    Since <math|b<rsub|i><rsup|-1>*q<rsub|i>\<to\>0> and
    <math|r<rsub|i>\<to\>-x>, <math|m<rsub|i>=b<rsub|i><rsup|-1>*q<rsub|i>-r<rsub|i>\<to\>x>.
    Since <math|\<rho\><around|(|x|)>=0>,

    <\equation*>
      e<rsub|i>*\<rho\><around|(|m<rsub|i>|)>=<around|(|e<rsub|i>/b<rsub|i>|)>*\<rho\><around|(|q<rsub|i>|)>-e<rsub|i>*\<rho\>*<around|(|r<rsub|i>+x|)>.
    </equation*>

    The first term tends to zero by boundedness of
    <math|\<rho\><around|(|q<rsub|i>|)>> and
    <math|e<rsub|i>/b<rsub|i>\<to\>0>, and the second by hypothesis. Also
    <math|e<rsub|i>/b<rsub|i>\<leqslant\>1> eventually, so

    <\equation*>
      <around|\<\|\|\>|e<rsub|i>*s<rsub|i><around|(|m<rsub|i>|)>|\<\|\|\>>=<around|(|e<rsub|i>/b<rsub|i>|)>*<around|\<\|\|\>|b<rsub|i>*s<rsub|i><around|(|m<rsub|i>|)>|\<\|\|\>>\<leqslant\><around|\<\|\|\>|b<rsub|i>*s<rsub|i><around|(|m<rsub|i>|)>|\<\|\|\>>\<longrightarrow\>0.
    </equation*>
  </proof>

  All sequences in the application below are already reindexed by a selected
  level <math|k<rsub|i>\<to\>\<infty\>>: <math|b<rsub|i>> is the arch scale
  at level <math|k<rsub|i>>, <math|q<rsub|i>> and <math|r<rsub|i>> are the
  chosen and reference responses there, and <math|s<rsub|i>> is the chart at
  index <math|i>. Precisely, <math|k<rsub|i>> is the summit index of the
  frame level of the <math|i>th selected chart. It is the level called the
  postselected level and denoted <math|n<rsub|i>> in
  Subsection<nbsp><reference|sec:trace-prosper-sensor>; it is not the initial
  level denoted <math|k<rsub|i>> there. This reindexing matters: the
  field-decay estimate is assumed, and used, only at the reindexed levels,
  not at every level. Write <math|p<rsub|i>=<wide|\<beta\>|^><rsub|k<rsub|i>>>
  and <math|A<rsub|a><around|(|i|)>=exp <around|(|a<around|(|log log
  p<rsub|i>|)><rsup|2>|)>>. The weight used is
  <math|e<rsub|i>=A<rsub|1/5><around|(|i|)>> at this selected level. The next
  subsection proves <math|e<rsub|i>/b<rsub|i>\<to\>0> and
  <math|e<rsub|i>\<leqslant\>p<rsub|i>>. The field input is supplied with
  weight <math|p<rsub|i>>; since <math|b<rsub|i>\<leqslant\>2*p<rsub|i>>,
  this gives <math|b<rsub|i>*s<rsub|i><around|(|m<rsub|i>|)>\<to\>0> as
  required above.

  In the selected construction, <math|E> is the real signed-equivariant space
  of grade-five coefficient arrays, <math|x> is its nonzero
  equation-of-motion direction, and <math|\<rho\>> is the free scalar price.
  The vectors <math|q<rsub|i>> and <math|r<rsub|i>> are respectively the
  transported chosen response and the transported reference response. Their
  combination <math|m<rsub|i>=b<rsub|i><rsup|-1>*q<rsub|i>-r<rsub|i>> is the
  medium used to build a response functional. The scale <math|b<rsub|i>> is
  the positive arch scale along the selected chart. Boundedness of
  <math|\<rho\><around|(|q<rsub|i>|)>> follows from the unweighted Ward-price
  limit; the weighted estimate on <math|\<rho\>*<around|(|r<rsub|i>+x|)>> is
  the scale-resolved reference-price comparison; and the last estimate is the
  field decay of the medium.

  Combining Lemma<nbsp><reference|lem:ex-lattice-trace-medium-receipts> with
  Lemma<nbsp><reference|lem:ex-lattice-trace-weighted-price>, under the chart
  hypotheses <math|s<rsub|i>\<to\>f>, <math|u<rsub|i>\<to\>U>,
  <math|f*U=<math-up|id>>, <math|ker f=\<bbb-R\>*x> with <math|x\<ne\>0>, and
  <math|s<rsub|i>*u<rsub|i>=<math-up|id>> eventually, gives bounded linear
  functionals <math|\<mu\><rsub|i>:H\<to\>\<bbb-R\>> and

  <\equation*>
    sup<rsub|i><around|\<\|\|\>|\<mu\><rsub|i>|\<\|\|\>>\<less\>\<infty\>,<space|2em><around*|\||e<rsub|i>*<around|(|\<mu\><rsub|i>*s<rsub|i>-\<rho\>|)>|\|><rsub|E<rsup|\<ast\>>>\<longrightarrow\>0.
  </equation*>

  This is the response-price estimate used by the two-direction trace
  correction. The displayed deduction is complete as a deduction from its
  hypotheses. In the selected construction it is carried out in
  Proposition<nbsp><reference|prop:trace-prosper-sensor>: that proposition
  takes the three limits of Lemma<nbsp><reference|lem:ex-lattice-trace-medium-receipts>
  as its marked-vector hypotheses, derives <math|s<rsub|i>\<to\>f> from them
  together with its own chart inputs, and then applies
  Lemma<nbsp><reference|lem:ex-lattice-trace-weighted-price>. The convergence
  <math|s<rsub|i>\<to\>f> is therefore not a consequence of the present
  paragraph, and the chart inputs of that proposition are distinct from the
  response estimates proved below. The field estimate uses the separately
  priced mission, with the exact same-medium identification at the end of
  this section.

  <subsubsection|The rate and medium calculation><label|subsec:ex-lattice-trace-source-rate>

  For the already selected levels <math|k<rsub|i>\<to\>\<infty\>>, write
  <math|p<rsub|i>=<wide|\<beta\>|^><rsub|k<rsub|i>>> for the running positive
  rate and <math|b<rsub|i>> for the arch scale at <math|k<rsub|i>>. The arch
  is the fixed-level ultrafilter limit of the running couplings
  <math|\<beta\><rsub|N,\<nu\>,k>>. On the ultrafilter-large set
  <math|N\<geqslant\>k>, the selected Wilson history gives
  <math|<wide|\<beta\>|^><rsub|k>/2\<leqslant\>\<beta\><rsub|N,\<nu\>,k>\<leqslant\>2*<wide|\<beta\>|^><rsub|k>>.
  The interval is closed, so its ultrafilter limit <math|b<around|(|k|)>>
  belongs to it. In particular <math|b<around|(|k|)>\<gtr\>0>. The clock
  tends to infinity; substitution <math|k=k<rsub|i>\<to\>\<infty\>> proves
  the scale comparison

  <\equation>
    <frac|1|2>*p<rsub|i>\<leqslant\>b<rsub|i>\<leqslant\>2*p<rsub|i>,<space|2em>p<rsub|i>\<longrightarrow\>\<infty\>.<label|eq:ex-lattice-trace-arch-comparison>
  </equation>

  The age weights are <math|A<rsub|a><around|(|i|)>=exp
  <around|(|a<around|(|log log p<rsub|i>|)><rsup|2>|)>>. They satisfy

  <\equation>
    A<rsub|a><around|(|i|)>*A<rsub|c><around|(|i|)>=A<rsub|a+c><around|(|i|)>,<space|2em>A<rsub|a><around|(|i|)>\<leqslant\>p<rsub|i><rsup|\<delta\>><space|1em><text|eventually
    for every fixed >a\<in\>\<bbb-R\><text| and every
    >\<delta\>\<gtr\>0.<label|eq:ex-lattice-trace-age-rules>
  </equation>

  For the second relation, take logarithms. Since <math|<around|(|log log
  p|)><rsup|2>=o<around|(|log p|)>>, eventually
  <math|<around|\||a|\|><around|(|log log
  p<rsub|i>|)><rsup|2>\<leqslant\>\<delta\>*log p<rsub|i>>. Exponentiation
  gives the bound. Also <math|A<rsub|a><around|(|i|)>\<to\>0> directly for
  <math|a\<less\>0>, since <math|<around|(|log log
  p<rsub|i>|)><rsup|2>\<to\>\<infty\>>.

  In particular, for <math|a\<in\><around|{|1/6,1/5|}>>,

  <\equation>
    0\<leqslant\><frac|A<rsub|a><around|(|i|)>|b<rsub|i>>\<leqslant\>2*p<rsub|i><rsup|a-1>\<longrightarrow\>0.<label|eq:ex-lattice-trace-age-over-arch>
  </equation>

  The same argument gives <math|A<rsub|a><around|(|i|)>\<leqslant\>p<rsub|i>>
  eventually, so an estimate with weight <math|p<rsub|i>> implies the
  corresponding estimate with weight <math|A<rsub|1/5><around|(|i|)>>.

  Here is the scalar deduction from the response and reference receipts. Let
  <math|q<rsub|i>> be the transported chosen response and <math|w<rsub|i>>
  the transported reference response. The local response estimate and the
  separated flux limit have the form

  <\equation>
    <around|\<\|\|\>|q<rsub|i>|\<\|\|\>>\<leqslant\>C*A<rsub|1/6><around|(|i|)>,<space|2em>\<rho\><around|(|q<rsub|i>|)>\<longrightarrow\>-\<kappa\>,<label|eq:ex-lattice-trace-response-inputs-source>
  </equation>

  while the reference chart and the reference-price comparison give

  <\equation>
    w<rsub|i>\<longrightarrow\>-x,<space|2em>\<rho\><around|(|x|)>=0,<space|2em>A<rsub|1/5><around|(|i|)>*\<rho\><around|(|w<rsub|i>|)>\<longrightarrow\>0.<label|eq:ex-lattice-trace-reference-inputs-source>
  </equation>

  Define <math|m<rsub|i>=b<rsub|i><rsup|-1>*q<rsub|i>-w<rsub|i>>. Then

  <\equation*>
    <around|\<\|\|\>|b<rsub|i><rsup|-1>*q<rsub|i>|\<\|\|\>>\<leqslant\>2*C*p<rsub|i><rsup|-5/6>\<longrightarrow\>0,
  </equation*>

  so <math|m<rsub|i>\<to\>x>. Since <math|\<rho\><around|(|q<rsub|i>|)>>
  converges it is bounded, and

  <\equation*>
    A<rsub|1/5><around|(|i|)>*\<rho\><around|(|m<rsub|i>|)>=<frac|A<rsub|1/5><around|(|i|)>|b<rsub|i>>*\<rho\><around|(|q<rsub|i>|)>-A<rsub|1/5><around|(|i|)>*\<rho\><around|(|w<rsub|i>|)>\<longrightarrow\>0
  </equation*>

  by <eqref|eq:ex-lattice-trace-age-over-arch> and
  <eqref|eq:ex-lattice-trace-reference-inputs-source>. Finally, if the local
  field estimate is <math|p<rsub|i>*<space|0.17em>s<rsub|i><around|(|m<rsub|i>|)>\<to\>0>,
  then <math|A<rsub|1/5><around|(|i|)>\<leqslant\>p<rsub|i>> gives
  <math|A<rsub|1/5><around|(|i|)>*s<rsub|i><around|(|m<rsub|i>|)>\<to\>0>.
  These are exactly the three limits consumed by the rank-one
  approximate-kernel lemma; the remaining price-receiver construction is its
  finite-dimensional argument, not another analytic estimate.

  The response and reference estimates are proved below from the local
  charged coefficient and the paid response column of the same finite-volume
  history. In particular the arch comparison is a closed-interval limit, and
  the transport error is the normalized bias of the Coffer construction;
  neither requires an additional rate assumption on the arch.

  <subsubsection|How the two weighted receipts are
  assembled><label|subsec:ex-lattice-trace-weighted-assembly>

  The weighted price receipt for the medium uses only the response-price
  limit, the reference-price cancellation, and the age-rate comparison just
  proved. It is therefore useful to distinguish it from the stronger estimate
  that supplies the weighted field image. If
  <math|\<rho\><around|(|q<rsub|i>|)>\<to\>-\<kappa\>>, then
  <math|<around|\||\<rho\><around|(|q<rsub|i>|)>|\|>\<leqslant\>M> eventually
  for some <math|M>; thus

  <\equation*>
    <around*|\||<frac|A<rsub|1/5><around|(|i|)>|b<rsub|i>>*\<rho\><around|(|q<rsub|i>|)>|\|>\<leqslant\>2*M*p<rsub|i><rsup|-4/5>\<longrightarrow\>0.
  </equation*>

  No weighted convergence rate for the response flux itself is needed here.
  The separate reference-chart estimate is the cancellation

  <\equation*>
    A<rsub|1/5><around|(|i|)>*\<rho\><around|(|w<rsub|i>|)>\<to\>0.
  </equation*>

  This identifies the precise roles of the two limits and avoids conflating a
  field-size estimate with a price estimate.

  For the field image, the construction proves the stronger statement
  <math|p<rsub|i>*s<rsub|i><around|(|m<rsub|i>|)>\<to\>0> in the
  finite-dimensional chart norm. The transfer to the weaker age weight is the
  monotonicity estimate <math|A<rsub|1/5><around|(|i|)>\<leqslant\>p<rsub|i>>;
  there is no loss from summing over a basis because the chart is a fixed
  finite-dimensional operator. The bound <math|<around|\<\|\|\>|q<rsub|i>|\<\|\|\>>=O<around|(|A<rsub|1/6><around|(|i|)>|)>>
  alone proves only <math|m<rsub|i>\<to\>x> and does not imply this field
  estimate. The latter is supplied by the local pricing argument and its
  finite-volume passage.

  <subsubsection|The response limits and the remaining
  estimates><label|subsec:ex-lattice-trace-weighted-route>

  The response-size and response-flux limits above follow from a concrete
  separation argument. Let <math|\<cal-T\>> be the linear map from the
  transported finite-volume coefficient field to the grade-five response, and
  let <math|\<lambda\>> be the flux functional on the transported fields. On
  the limiting field, their compatibility is
  <math|\<rho\>*<around|(|\<cal-T\>*v<rsub|i>|)>=\<lambda\><around|(|v<rsub|i>|)>>.
  At fixed level <math|i>, write <math|v<rsub|i><around|(|\<nu\>|)>> for the
  finite-volume transported field of the chosen response, indexed by the
  finite-volume index <math|\<nu\>> (a different object from the rate
  <math|p<rsub|i>>). The local charged-configuration estimate gives, on a set
  in the separation ultrafilter,

  <\align>
    <tformat|<table|<row|<cell|<around|\<\|\|\>|\<cal-T\>*v<rsub|i><around|(|\<nu\>|)>|\<\|\|\>>>|<cell|\<leqslant\>C<rsub|T>*A<rsub|1/6><around|(|i|)>,<eq-number>>>|<row|<cell|<around|\||\<lambda\><around|(|v<rsub|i><around|(|\<nu\>|)>|)>+\<kappa\>|\|>>|<cell|\<leqslant\>C<rsub|1>*A<rsub|-1/4><around|(|i|)>+C<rsub|2>*A<rsub|-1><around|(|i|)>+<frac|p<rsub|i><rsup|-30>+p<rsub|i><rsup|-100>|12>.<eq-number><label|eq:ex-lattice-trace-finite-response-price>>>>>
  </align>

  Here <math|C<rsub|T>,C<rsub|1>,C<rsub|2>> are fixed constants from the
  finite-dimensional coefficient, response, and flux maps. The first line is
  the field-cost part of the estimate; the second is the flux-price part. The
  transported field converges along that ultrafilter to the infinite volume
  field <math|v<rsub|i>>. Since <math|\<cal-T\>> and <math|\<lambda\>> are
  continuous linear maps, the inequalities pass to their limits. Therefore
  <math|q<rsub|i>=\<cal-T\>*v<rsub|i>> satisfies the response norm bound and
  <math|\<rho\><around|(|q<rsub|i>|)>=\<lambda\><around|(|v<rsub|i>|)>\<to\>-\<kappa\>>.
  Every term on the right tends to zero by
  <eqref|eq:ex-lattice-trace-age-rules>, proving
  <eqref|eq:ex-lattice-trace-response-inputs-source>.

  Here is the finite-volume derivation, including its normalization. Work in
  the fixed coefficient frame, with its supremum norm, and let <math|P>
  delete the unit coordinate. Thus <math|<around|\<\|\|\>|P*z|\<\|\|\>>\<leqslant\><around|\<\|\|\>|z|\<\|\|\>>>.
  The map <math|\<cal-T\>> is signed averaging followed by the fixed
  identification with real covariant arrays. Put
  <math|\<lambda\>=\<rho\>*\<cal-T\>>. Since the unit has zero vector flux,
  <math|\<lambda\>*P=\<lambda\>>. These are identities of these maps, not a
  norm assertion about the nonlinear local coefficient construction.

  At the fixed level <math|k<rsub|i>> write <math|\<vartheta\><rsub|i>> for
  the budget threshold, <math|X<rsub|i><around|(|\<nu\>|)>> for the chosen
  coefficient array, and <math|B<rsub|i><around|(|\<nu\>|)>> for the public
  labels produced from its atomic certificate. Its charge is
  <math|q=\<vartheta\><rsub|i><rsup|2>*A<rsub|1/6><around|(|i|)>>, and its
  attainment cost is at most <math|p<rsub|i>>. Apply the Bill specialization
  of Subsection<nbsp><reference|sec:ex-lattice-trace-coffer-supplier>, with
  <math|u=1>, separately to the four entries. It gives the actual columns
  <math|\<cal-C\><rsub|k<rsub|i>,\<nu\>>> of those labels and

  <\equation>
    <around|\<\|\|\>|X<rsub|i><around|(|\<nu\>|)>-\<cal-C\><rsub|k<rsub|i>,\<nu\>>*B<rsub|i><around|(|\<nu\>|)>|\<\|\|\>><rsub|\<infty\>>\<leqslant\>\<vartheta\><rsub|i><rsup|2>*A<rsub|-1/4><around|(|i|)>.<label|eq:trace-weighted-paid-bias>
  </equation>

  Indeed its column error is at most <math|4*<around|(|1+c<rsub|k<rsub|i>>|)>*\<vartheta\><rsub|i><rsup|2>*A<rsub|1/6><around|(|i|)>/A<rsub|1/2><around|(|i|)>>,
  and <math|4*<around|(|1+c<rsub|k<rsub|i>>|)>\<leqslant\>A<rsub|1/12><around|(|i|)>>
  eventually. The exponent is exactly <math|1/12+1/6-1/2=-1/4>. The tail is
  chosen before the period, volume and atomic certificate; taking a maximum
  over the four entries preserves it.

  The transported field and its local comparison are, by definition,

  <\equation*>
    v<rsub|i><around|(|\<nu\>|)>=\<vartheta\><rsub|i><rsup|-2>*P*\<cal-C\><rsub|k<rsub|i>,\<nu\>>*B<rsub|i><around|(|\<nu\>|)>,<space|2em>y<rsub|i><around|(|\<nu\>|)>=P*<around|(|\<vartheta\><rsub|i><rsup|-2>*X<rsub|i><around|(|\<nu\>|)>|)>.
  </equation*>

  The column here is exactly the one in the Coffer bias, so

  <\equation>
    <around|\<\|\|\>|v<rsub|i><around|(|\<nu\>|)>-y<rsub|i><around|(|\<nu\>|)>|\<\|\|\>><rsub|\<infty\>>\<leqslant\>A<rsub|-1/4><around|(|i|)>.<label|eq:trace-weighted-normalized-bias>
  </equation>

  No bound for <math|\<vartheta\><rsub|i><rsup|-2>> is lost: it cancels the
  factor <math|\<vartheta\><rsub|i><rsup|2>> in
  <eqref|eq:trace-weighted-paid-bias>. Proposition<nbsp><reference|prop:ex-lattice-charge-bounds>
  and the payment accuracy bound following it give

  <\equation*>
    <around|\<\|\|\>|y<rsub|i><around|(|\<nu\>|)>|\<\|\|\>>\<leqslant\>A<rsub|1/6><around|(|i|)>,<space|2em><around|\||\<lambda\><around|(|y<rsub|i><around|(|\<nu\>|)>|)>+\<kappa\>|\|>\<leqslant\>4<around|\<\|\|\>|\<lambda\>|\<\|\|\>>*A<rsub|-1><around|(|i|)>+<around|(|p<rsub|i><rsup|-30>+p<rsub|i><rsup|-100>|)>/12.
  </equation*>

  Since <math|A<rsub|-1/4>\<leqslant\>A<rsub|1/6>>, the triangle inequality
  now yields

  <\equation*>
    <around|\<\|\|\>|\<cal-T\>*v<rsub|i><around|(|\<nu\>|)>|\<\|\|\>>\<leqslant\>2<around|\<\|\|\>|\<cal-T\>|\<\|\|\>>*A<rsub|1/6><around|(|i|)>,
  </equation*>

  and

  <\equation*>
    <around|\||\<lambda\><around|(|v<rsub|i><around|(|\<nu\>|)>|)>+\<kappa\>|\|>\<leqslant\><around|\<\|\|\>|\<lambda\>|\<\|\|\>>*A<rsub|-1/4><around|(|i|)>+4<around|\<\|\|\>|\<lambda\>|\<\|\|\>>*A<rsub|-1><around|(|i|)>+<around|(|p<rsub|i><rsup|-30>+p<rsub|i><rsup|-100>|)>/12.
  </equation*>

  Thus <eqref|eq:ex-lattice-trace-finite-response-price> holds with
  <math|C<rsub|T>=2<around|\<\|\|\>|\<cal-T\>|\<\|\|\>>>,
  <math|C<rsub|1>=<around|\<\|\|\>|\<lambda\>|\<\|\|\>>> and
  <math|C<rsub|2>=4<around|\<\|\|\>|\<lambda\>|\<\|\|\>>>. The maximum norm
  on direction arrays is why no factor four occurs in the transport error.

  These fields really admit the fixed-level limit used above. Here is the
  uniform bound needed before invoking compactness. Write <math|c<rsub|j+1>>
  for the stage column allowance and <math|L<rsub|j>> for the block side. The
  adjacent calibrated-column inequality is

  <\equation*>
    <around|\||\<cal-C\><rsub|j,\<nu\>>*b|\|><rsub|<math-up|coeff>>\<leqslant\>c<rsub|j+1>*L<rsub|j><rsup|d>*<around|\||\<cal-C\><rsub|j+1,\<nu\>>*b|\|><rsub|<math-up|coeff>>.
  </equation*>

  At the reference level the column is <math|b> itself. Induction over the
  finitely many levels up to <math|k> gives

  <\equation>
    <around|\||b|\|><rsub|<math-up|coeff>>\<leqslant\>B<rsub|d,k>*<around|\||\<cal-C\><rsub|k,\<nu\>>*b|\|><rsub|<math-up|coeff>>,<space|2em>B<rsub|d,k>=<big|prod><rsub|0\<leqslant\>j\<less\>k>c<rsub|j+1>*L<rsub|j><rsup|d>.<label|eq:trace-weighted-column-inverse>
  </equation>

  The factors below the reference level only enlarge the bound, since they
  are at least one. This constant depends on <math|d,k> but not on the
  volume, period or label. The Bill column has coefficient size at most two
  by Lemma<nbsp><reference|lem:ex-trace-bill-column-size>, so its public
  label has norm at most <math|2*B<rsub|d,k>>. A finite-dimensional closed
  ball is compact; the fixed separation ultrafilter therefore gives a limit
  of these public labels. Changing labels outside its large set has no
  effect. The joint moving-label convergence defining the arch column sends
  this limit to the limit of <math|\<cal-C\><rsub|k<rsub|i>,\<nu\>>*B<rsub|i><around|(|\<nu\>|)>>.
  Applying the fixed maps <math|\<vartheta\><rsub|i><rsup|-2>*P> and
  <math|\<cal-T\>> gives precisely <math|q<rsub|i>>, not a second response
  chosen after taking the limit.

  The same argument applies to all three reference profiles, not just the one
  whose limit is the equation-of-motion vector. Write
  <math|P\<in\>{\<ast\>,0,1}> for the stress profile and the two correction
  profiles. Denote their finite-volume local probes by
  <math|c<rsub|i><rsup|P><around|(|\<nu\>|)>> and the corresponding
  transported fields by <math|v<rsub|i><rsup|P><around|(|\<nu\>|)>>. In the
  local radial chart, the canonical probe has zero unit coordinate and its
  paid coefficient is exactly <math|\<vartheta\><rsub|i><rsup|2>*c<rsub|i><rsup|P><around|(|\<nu\>|)>>.
  The first assertion follows by evaluating the probe at the zero field; the
  second is the definition of its weighted local projection.
  Subsection<nbsp><reference|subsec:trace-reference-atomic-certificate>
  supplies this full observable with charge
  <math|\<vartheta\><rsub|i><rsup|2>*A<rsub|1/6><around|(|i|)>> and
  attainment price at most <math|p<rsub|i>>. Applying
  <eqref|eq:trace-weighted-paid-bias> to this atomic coefficient and then
  deleting the unit coordinate gives

  <\equation>
    <around|\<\|\|\>|v<rsub|i><rsup|P><around|(|\<nu\>|)>-c<rsub|i><rsup|P><around|(|\<nu\>|)>|\<\|\|\>>\<leqslant\>A<rsub|-1/4><around|(|i|)>.<label|eq:trace-weighted-reference-bias>
  </equation>

  Thus the reference uses its own probe and its own paid public label; it is
  not compared to the chosen-response field
  <math|v<rsub|i><around|(|\<nu\>|)>>.

  Here is the precise finite-dimensional calibration needed for this passage.
  Let <math|a<rsup|P>\<in\>\<bbb-R\><rsup|3>> be the coefficient triple of
  the limiting profile and <math|V:\<bbb-R\><rsup|3>\<to\>E> the fixed raw
  vector map. The local probe classification proved in
  Subsection<nbsp><reference|subsec:trace-reference-local-calibration> gives
  triples <math|a<rsub|i><rsup|P><around|(|\<nu\>|)>> with

  <\equation>
    \<cal-T\>*c<rsub|i><rsup|P><around|(|\<nu\>|)>=V*a<rsub|i><rsup|P><around|(|\<nu\>|)>,<space|2em>\<rho\>*<around|(|V*a<rsub|i><rsup|P><around|(|\<nu\>|)>|)>=\<rho\>*<around|(|V*a<rsup|P>|)>.<label|eq:trace-weighted-calibration-price>
  </equation>

  For the two elementary correction profiles the triples are exactly
  <math|a<rsup|0>,a<rsup|1>>. For the stress profile the local stress probe
  tends to the negative Maxwell tensor. The injective grade-four
  stress-coordinate map of Lemma<nbsp><reference|lem:ex-trace-free-stress-basis>
  has a continuous left inverse, so its coefficient triples tend to
  <math|a<rsup|\<ast\>>=<around|(|-1,1/4,-1|)>>. This convergence is uniform
  in the local configurations on the late-level, sufficiently large-period
  sets: otherwise choose a violating sequence with levels and periods tending
  to infinity and apply the same local-probe limit and left inverse to that
  sequence. Consequently, for every <math|\<epsilon\>\<gtr\>0>,

  <\equation*>
    <around|\<\|\|\>|a<rsub|i><rsup|P><around|(|\<nu\>|)>-a<rsup|P>|\<\|\|\>>\<leqslant\>\<epsilon\>
  </equation*>

  on an ultrafilter-large set for every sufficiently large <math|i>.

  Put <math|U<rsub|i><rsup|P>=lim<rsub|\<nu\>\<to\>\<cal-L\>>
  \<cal-T\>*v<rsub|i><rsup|P><around|(|\<nu\>|)>> and
  <math|v<rsub|P>=V*a<rsup|P>>. By <eqref|eq:trace-weighted-reference-bias>,

  <\equation*>
    <around|\<\|\|\>|U<rsub|i><rsup|P>-v<rsub|P>|\<\|\|\>>\<leqslant\><around|\<\|\|\>|\<cal-T\>|\<\|\|\>>*A<rsub|-1/4><around|(|i|)>+<around|\<\|\|\>|V|\<\|\|\>>*\<epsilon\>
  </equation*>

  for every sufficiently large <math|i>. First let <math|i\<to\>\<infty\>>,
  then <math|\<epsilon\>*\<downarrow\>*0>, to obtain
  <math|U<rsub|i><rsup|P>\<to\>v<rsub|P>>. For the price, use the exact
  identity <eqref|eq:trace-weighted-calibration-price>, rather than the
  qualitative convergence of the triples. It gives directly

  <\equation*>
    <around|\||\<rho\><around|(|U<rsub|i><rsup|P>|)>-\<rho\><around|(|v<rsub|P>|)>|\|>\<leqslant\><around|\<\|\|\>|\<rho\>|\<\|\|\>><space|0.17em><around|\<\|\|\>|\<cal-T\>|\<\|\|\>>*A<rsub|-1/4><around|(|i|)>,<space|2em>A<rsub|1/5><around|(|i|)>*<around|\||\<rho\><around|(|U<rsub|i><rsup|P>|)>-\<rho\><around|(|v<rsub|P>|)>|\|>\<leqslant\><around|\<\|\|\>|\<rho\>|\<\|\|\>><space|0.17em><around|\<\|\|\>|\<cal-T\>|\<\|\|\>>*A<rsub|-1/20><around|(|i|)>\<longrightarrow\>0.
  </equation*>

  For <math|P=\<ast\>>, the equation-of-motion identification is
  <math|v<rsub|\<ast\>>=-x> and <math|\<rho\><around|(|x|)>=0>; taking
  <math|w<rsub|i>=U<rsub|i><rsup|\<ast\>>> proves
  <eqref|eq:ex-lattice-trace-reference-inputs-source>. The other two cases
  are the weighted correction-profile estimates used by the scribe. No rate
  of convergence of <math|a<rsub|i><rsup|\<ast\>><around|(|\<nu\>|)>> to
  <math|a<rsup|\<ast\>>> has been assumed.

  The remaining chart-field input required by the general lemma is the exact
  limit

  <\equation>
    p<rsub|i>*<space|0.17em>s<rsub|i><around|(|m<rsub|i>|)>\<longrightarrow\>0.<label|eq:ex-lattice-trace-chart-field-decay>
  </equation>

  It is independent of the response-size and flux estimates above. It is the
  conclusion of Lemma<nbsp><reference|lem:ex-trace-small-means> with exponent
  <math|1>, applied to the present medium: in the notation of that lemma,
  <math|z<rsub|i>=p<rsub|i>>, <math|\<zeta\><rsub|i>=b<rsub|i>>, and its
  medium <math|v<rsub|i>> is the present <math|m<rsub|i>>. The hypotheses of
  that lemma are the scale relations, the core representation
  <eqref|eq:ex-trace-medium-core> of this medium, the response and scaling
  identities, the local price bound for finitely many detector fields, the
  detector lower bound <eqref|eq:ex-trace-small-means-detector>, and the
  scalar rate <eqref|eq:ex-trace-small-means-rate>. The detector lower bound
  is essential. Bounds for the pairings of
  <math|s<rsub|i><around|(|m<rsub|i>|)>> with finitely many tested fields
  give a bound for its norm only because those tests separate the
  finite-dimensional response space with a lower bound uniform in <math|i>;
  finite dimensionality alone does not provide this. All the hypotheses
  listed are inputs to this step, and no claim that they follow from the
  scalar rate calculation is made here.

  For completeness the medium identity uses the same arch column as these
  limits. Let <math|R> denote signed averaging, <math|\<cal-E\><rsub|k>> the
  normalized core column of the arch, and
  <math|a<rsub|k>,a<rsub|k><rsup|\<ast\>>> the limiting public chosen and
  stress labels. Signed equivariance of the same-history columns gives
  <math|R*\<cal-E\><rsub|k>=\<cal-E\><rsub|k>*R>, componentwise. Hence, with
  <math|b=b<around|(|k|)>\<gtr\>0>,

  <\equation*>
    b<rsup|-1>*R*\<cal-E\><rsub|k>*a<rsub|k>-R*\<cal-E\><rsub|k>*a<rsub|k><rsup|\<ast\>>=b<rsup|-1>*\<cal-E\><rsub|k>*R*<around|(|a<rsub|k>-b*a<rsub|k><rsup|\<ast\>>|)>.
  </equation*>

  The left side is exactly the medium already constructed, and the right side
  is the core representation <eqref|eq:ex-trace-medium-core>, with
  <math|x<rsub|i>=R*<around|(|a<rsub|k<rsub|i>>-b<rsub|i>*a<rsub|k<rsub|i>><rsup|\<ast\>>|)>>.
  Both terms in this identity use the same arch: replacing one by a
  separately chosen column limit would invalidate it. The response identity
  in the small-means lemma is the defining normalization of <math|s<rsub|i>>.
  Central inversion acts as minus the identity on these vector arrays, so its
  odd-grade scaling identity applies. Thus, when the same core is inserted in
  the priced mission of Proposition<nbsp><reference|prop:ex-trace-mission-price-transfer>,
  the resulting field is the present <math|s<rsub|i><around|(|m<rsub|i>|)>>.
  The detector and the price used there remain the substantive field
  estimates, rather than consequences of the coefficient-size bound just
  proved.

  <subsection|The trace sensor and its weighted Ward
  limit><label|sec:trace-prosper-sensor>

  Fix one selected family and a gauge group given as a closed subgroup of a
  finite-dimensional unitary group, whose real Lie algebra is nonabelian and
  simple. Let <math|E> be the real finite-dimensional space of grade-five
  vector coefficient arrays obeying the reality and signed covariance
  conditions, and let <math|H> be the corresponding reference vector table
  space. The free projection <math|f:E\<to\>H> applies the reference field
  projection in each vector component. Let <math|x\<in\>E> be the coefficient
  array of the free equation of motion. The free rank calculation in
  Subsection<nbsp><reference|sec:ex-lattice-trace-free-rank> gives
  <math|x\<ne\>0> and <math|ker f=\<bbb-R\>*x>. To fix the free Ward
  normalization, write the raw equation-of-motion array as
  <math|J<rsup|<around|(|3|)>><rsub|b>=<big|sum><rsub|i,a><around|\<langle\>|F<rsub|b*i>,\<partial\><rsub|a>*F<rsub|a*i>|\<rangle\>>>,
  and let

  <\equation*>
    <around|(|J<rsup|<around|(|1|)>>|)><rsub|b>=<big|sum><rsub|i><around|\<langle\>|F<rsub|b*i>,\<partial\><rsub|b>*F<rsub|b*i>|\<rangle\>>,<space|2em><around|(|J<rsup|<around|(|2|)>>|)><rsub|b>=<big|sum><rsub|i,j><around|\<langle\>|F<rsub|i*j>,\<partial\><rsub|b>*F<rsub|i*j>|\<rangle\>>.
  </equation*>

  Here <math|F> and <math|\<partial\>*F> are the free curvature jet and its
  first derivative, and the inner product is the gauge-invariant real color
  inner product. Each array is real and invariant under the color action. For
  a coordinate reflection, every contracted index contributes its sign twice,
  leaving only the sign of the output index <math|b>; permutations merely
  relabel the sums. Thus each array has the required signed-vector
  covariance. These three arrays form a basis of the raw vector space. To see
  independence, choose a unit color vector and evaluate the zeroth component
  on three jets. In each, the only nonzero curvature pair, up to
  antisymmetry, is respectively <math|F<rsub|12>>, <math|F<rsub|01>>, and
  <math|F<rsub|01>>. The nonzero derivative entries, again up to
  antisymmetry, are respectively

  <\equation*>
    <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-halign|l>|<cwith|1|-1|2|2|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|\<partial\><rsub|0>*F<rsub|12>=1,<space|1em>\<partial\><rsub|1>*F<rsub|20>=-<tfrac|1|2>,<space|1em>\<partial\><rsub|2>*F<rsub|01>=-<tfrac|1|2>,>>|<row|<cell|2>|<cell|\<partial\><rsub|0>*F<rsub|01>=1,<space|1em>\<partial\><rsub|2>*F<rsub|21>=-1,>>|<row|<cell|3>|<cell|\<partial\><rsub|0>*F<rsub|01>=1.>>>>>
  </equation*>

  Each scalar stands for that scalar times the chosen color vector. These
  jets satisfy the Bianchi identity; for example a curvature jet
  <math|<around|(|F<rsub|a*b>,K<rsub|c*a*b>|)>> with
  <math|K<rsub|c*a*b>+K<rsub|a*b*c>+K<rsub|b*c*a>=0> is realized by the
  polynomial potential <math|A<rsub|b><around|(|z|)>=<tfrac|1|2>z<rsup|a>*F<rsub|a*b>+<tfrac|1|3>z<rsup|a>*z<rsup|c>*K<rsub|c*a*b>>.
  It is in radial gauge, since <math|z<rsup|b>*A<rsub|b><around|(|z|)>=0> by
  antisymmetry in <math|a,b>. Its curl at the origin is <math|F<rsub|a*b>>,
  and its first curl derivative is

  <\equation*>
    \<partial\><rsub|c>*<around|(|\<partial\><rsub|a>*A<rsub|b>-\<partial\><rsub|b>*A<rsub|a>|)><around|(|0|)>=<tfrac|1|3><around|(|2*K<rsub|c*a*b>-K<rsub|a*b*c>-K<rsub|b*c*a>|)>=K<rsub|c*a*b>,
  </equation*>

  where the last equality uses the cyclic identity. Direct substitution gives
  the evaluation matrix

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|0>|<cell|2>|<cell|0>>|<row|<cell|1>|<cell|2>|<cell|0>>|<row|<cell|1>|<cell|2>|<cell|1>>>>><space|1em><text|for
    ><around|(|J<rsup|<around|(|1|)>><rsub|0>,J<rsup|<around|(|2|)>><rsub|0>,J<rsup|<around|(|3|)>><rsub|0>|)>.
  </equation*>

  Its determinant is nonzero. The free-rank calculation gives the matching
  upper bound three for the raw vector dimension, so the arrays form a basis.
  The label-coordinate identification carries <math|x> to
  <math|J<rsup|<around|(|3|)>>>. Every raw vector therefore has unique real
  coordinates <math|<around|(|w<rsub|0>,w<rsub|1>,w<rsub|2>|)>> in the form

  <\equation*>
    2*<around|(|w<rsub|0>-w<rsub|2>|)>*J<rsup|<around|(|1|)>>+<around|(|2*w<rsub|1>+<tfrac|1|2>w<rsub|2>|)>*J<rsup|<around|(|2|)>>+w<rsub|2>*J<rsup|<around|(|3|)>>.
  </equation*>

  Indeed, the <math|J<rsup|<around|(|3|)>>> coefficient determines
  <math|w<rsub|2>>, and the other two coefficients then determine
  <math|w<rsub|0>> and <math|w<rsub|1>>. To see the Ward normalization, let
  <math|\<cal-I\>=<big|sum><rsub|i,j><around|\<langle\>|F<rsub|i*j>,F<rsub|i*j>|\<rangle\>>>
  and consider the centered stress tensor with diagonal entries
  <math|T<rsub|a*a>=w<rsub|0>*<big|sum><rsub|i><around|\<langle\>|F<rsub|a*i>,F<rsub|a*i>|\<rangle\>>+w<rsub|1>*\<cal-I\>>
  and off-diagonal entries <math|T<rsub|a*b>=w<rsub|2>*<big|sum><rsub|i><around|\<langle\>|F<rsub|a*i>,F<rsub|b*i>|\<rangle\>>>.
  Its divergence has the displayed raw-vector coordinates. Indeed the
  diagonal derivatives contribute <math|2*w<rsub|0>*J<rsup|<around|(|1|)>>+2*w<rsub|1>*J<rsup|<around|(|2|)>>>.
  For the off-diagonal term, first sum over all <math|a>. One product-rule
  term is <math|J<rsup|<around|(|3|)>>>. For the other, write
  <math|B=<big|sum><rsub|a,i><around|\<langle\>|F<rsub|a*i>,\<partial\><rsub|a>*F<rsub|b*i>|\<rangle\>>>.
  The cyclic Bianchi identity, antisymmetry, and interchange of <math|a,i>
  give

  <\equation*>
    B=<big|sum><rsub|a,i><around|\<langle\>|F<rsub|a*i>,\<partial\><rsub|b>*F<rsub|a*i>|\<rangle\>>-<big|sum><rsub|a,i><around|\<langle\>|F<rsub|a*i>,\<partial\><rsub|i>*F<rsub|a*b>|\<rangle\>>=J<rsup|<around|(|2|)>>-B.
  </equation*>

  Hence the two terms sum to <math|J<rsup|<around|(|3|)>>+<tfrac|1|2>J<rsup|<around|(|2|)>>>.
  Removing <math|a=b> subtracts <math|2*J<rsup|<around|(|1|)>>>. Its trace is
  <math|<around|(|w<rsub|0>+4*w<rsub|1>|)>*\<cal-I\>>. The scalar
  normalization is <math|\<cal-I\>/4>, and the free Ward functional
  <math|\<rho\>:E\<to\>\<bbb-R\>> is minus the coefficient of that scalar
  label in the trace. The label is nonzero, as seen by taking
  <math|F<rsub|01>> to be a unit color vector and the other independent
  curvature components to be zero. Hence <math|\<rho\>=-4*<around|(|w<rsub|0>+4*w<rsub|1>|)>>
  on the above coordinates. In particular <math|J<rsup|<around|(|3|)>>> has
  coordinates <math|<around|(|1,-<tfrac|1|4>,1|)>> and
  <math|\<rho\><around|(|x|)>=0>.

  Let <math|k<rsub|i>> be the selected initial levels, with
  <math|k<rsub|i>\<to\>\<infty\>>. Fix the reference level <math|j<rsub|0>>
  of the grade-five coefficient space. All finite-volume maps and estimates
  below are used at levels <math|j\<geqslant\>j<rsub|0>>; in particular,
  <math|k<rsub|i>\<geqslant\>j<rsub|0>> eventually. The running rate is
  <math|<wide|\<beta\>|^><rsub|n>=<wide|\<beta\>|\<bar\>>+\<gamma\>*\<ell\><rsub|n>>,
  where <math|\<gamma\>\<gtr\>0>, <math|<wide|\<beta\>|^><rsub|n>\<gtr\>1>,
  and the schedule scale <math|\<ell\><rsub|n>\<to\>\<infty\>>. For a level
  <math|j>, let <math|q<around|(|j|)>\<gtr\>j> be the first level whose
  logarithmic scale separation from <math|j> is at least <math|<around|(|log
  <wide|\<beta\>|^><rsub|j>|)><rsup|48>>, and put
  <math|n<rsub|i>=q<around|(|k<rsub|i>|)>>. Consequently
  <math|n<rsub|i>\<to\>\<infty\>>, <math|<wide|\<beta\>|^><rsub|n<rsub|i>>\<to\>\<infty\>>,
  and the positive weight

  <\equation>
    \<frak-a\><rsub|i>=exp <space|-0.17em><around*|{|<frac|1|5><around*|(|log
    log <wide|\<beta\>|^><rsub|n<rsub|i>>|)><rsup|2>|}>\<longrightarrow\>\<infty\>.<label|eq:trace-sensor-weight>
  </equation>

  This is the <math|1/5> age weight at the <em|postselected> level
  <math|n<rsub|i>>; it is not the reciprocal chart scale.

  We shall use the following clock and arch inputs. The schedule has natural
  block sizes <math|L<rsub|j>> and real increments
  <math|\<ell\><rsub|j+1>-\<ell\><rsub|j>=log L<rsub|j>>, with
  <math|L<rsub|j>\<geqslant\>3> and, eventually,
  <math|L<rsub|j>\<leqslant\>log <wide|\<beta\>|^><rsub|j>>. The clock offset
  <math|<wide|\<beta\>|\<bar\>>> and the arch scales <math|b<rsub|j>> are
  positive, and for every <math|\<varepsilon\>\<gtr\>0>,

  <\equation>
    <around|\||b<rsub|j>-<wide|\<beta\>|^><rsub|j>|\|>\<leqslant\>\<varepsilon\>*\<ell\><rsub|j><space|1em><text|for
    all sufficiently large >j.<label|eq:trace-sensor-clock-input>
  </equation>

  These are selected-run inputs.

  <\lemma>
    <dueto|Arch-scale ratio><label|lem:trace-sensor-arch-ratio> Under the
    clock inputs above, <math|b<rsub|k<rsub|i>>/b<rsub|n<rsub|i>>\<to\>1>.
  </lemma>

  <\proof>
    Put <math|\<chi\>=<wide|\<beta\>|^><rsub|k>> and <math|g=<around|(|log
    \<chi\>|)><rsup|48>>, and let <math|q<around|(|k|)>=m+1>. By minimality,
    <math|\<ell\><rsub|m>-\<ell\><rsub|k>\<leqslant\>g>: if <math|m=k> it is
    zero, and otherwise the preceding level has not reached the threshold.
    For large <math|k>, <math|\<gamma\>*g\<leqslant\>\<chi\>>, so
    <math|<wide|\<beta\>|^><rsub|m>\<leqslant\>2*\<chi\>>. The last increment
    obeys

    <\equation*>
      \<ell\><rsub|m+1>-\<ell\><rsub|m>=log
      L<rsub|m>\<leqslant\>L<rsub|m>\<leqslant\>log
      <wide|\<beta\>|^><rsub|m>\<leqslant\>log
      <around|(|2*\<chi\>|)>\<leqslant\>g.
    </equation*>

    Consequently <math|0\<leqslant\>\<ell\><rsub|q<around|(|k|)>>-\<ell\><rsub|k>\<leqslant\>2*g>,
    and therefore

    <\equation*>
      <frac|<wide|\<beta\>|^><rsub|q<around|(|k|)>>|<wide|\<beta\>|^><rsub|k>>=1+\<gamma\>*<frac|\<ell\><rsub|q<around|(|k|)>>-\<ell\><rsub|k>|<wide|\<beta\>|^><rsub|k>>\<longrightarrow\>1,
    </equation*>

    because <math|<around|(|log \<chi\>|)><rsup|48>/\<chi\>\<to\>0>. Also
    <math|<wide|\<beta\>|^><rsub|j>=<wide|\<beta\>|\<bar\>>+\<gamma\>*\<ell\><rsub|j>\<geqslant\>\<gamma\>*\<ell\><rsub|j>>,
    so <eqref|eq:trace-sensor-clock-input> gives
    <math|b<rsub|j>/<wide|\<beta\>|^><rsub|j>\<to\>1>. Since both
    <math|k<rsub|i>> and <math|n<rsub|i>=q<around|(|k<rsub|i>|)>> tend to
    infinity,

    <\equation>
      <frac|b<rsub|k<rsub|i>>|b<rsub|n<rsub|i>>>\<longrightarrow\>1.<label|eq:trace-sensor-arch-ratio>
    </equation>
  </proof>

  Write <math|s<rsub|i>:E\<to\>H> for the selected, normalized grade-five
  chart map. For one vector component let <math|<math-ss|V>> be the complex
  coefficient space, <math|\<cal-F\>> the reference field space and
  <math|S<rsub|5>> the selected interacting field space. The interacting
  projection is <math|P:<math-ss|V>\<to\>S<rsub|5>>, the scale-<math|i>
  identification is a linear isomorphism <math|X<rsub|i>:\<cal-F\>\<to\>S<rsub|5>>,
  and the selected terminal lift is <math|Y<rsub|i>:\<cal-F\>\<to\><math-ss|V>>.
  Write <math|M<rsub|i>:<math-ss|V>\<to\><math-ss|V>> for the invertible arch
  map at <math|n<rsub|i>>, <math|t<rsub|i>\<gtr\>0> for the threshold there,
  and <math|<math-up|core>:<math-ss|V>\<to\><math-ss|V>> for the projection
  deleting the unit coordinate: if <math|e<rsub|0>> is the unit coordinate
  vector, then <math|<math-up|core><space|0.17em>v=v-v<rsub|0>*e<rsub|0>>.
  These component maps are complex-linear; <math|s<rsub|i>> and
  <math|u<rsub|i>> act real-linearly on the corresponding covariant arrays.
  With arch scale <math|b<rsub|n>\<gtr\>0> and dilation radius
  <math|r<rsub|i>\<gtr\>0>, set <math|c<rsub|i>=b<rsub|n<rsub|i>>*r<rsub|i><rsup|5>>.
  On an eventual common tail, for each vector component indexed by
  <math|\<alpha\>>,

  <\equation>
    <around|(|s<rsub|i>*y|)><rsub|\<alpha\>>=X<rsub|i><rsup|-1>*P*<around|(|c<rsub|i>*t<rsub|i><rsup|2>*M<rsub|i><rsup|-1>*y<rsub|\<alpha\>>|)>,<space|2em><around|(|u<rsub|i>*h|)><rsub|\<alpha\>>=c<rsub|i><rsup|-1>*t<rsub|i><rsup|-2><math-up|core><space|0.17em>M<rsub|i>*Y<rsub|i>*h<rsub|\<alpha\>>.<label|eq:trace-sensor-selected-formulas>
  </equation>

  The second formula is for the selected lift. Its well-definedness as a map
  into <math|E> follows from the chart symmetries below. On the finitely many
  indices outside this tail, choose arbitrary real-linear maps
  <math|u<rsub|i>:H\<to\>E>. The limiting right inverse <math|U> applies the
  fixed reference lift to each component. For that lift, the reference field
  is the quotient of the coefficient space by its free equation subspace
  <math|K>. For the finite signed-permutation group <math|\<Gamma\>>, write
  <math|g*z> for the action on <math|z\<in\><math-ss|V>> and equip
  <math|<math-ss|V>> with the Hermitian form

  <\equation*>
    <around|\<langle\>|z,w|\<rangle\>><rsub|\<ast\>>=<big|sum><rsub|g\<in\>\<Gamma\>><big|sum><rsub|a><wide|<around|(|g*z|)><rsub|a>|\<bar\>><around|(|g*w|)><rsub|a>.
  </equation*>

  It is positive definite because the identity term occurs. Reindexing the
  sum proves invariance under <math|\<Gamma\>>; conjugation is antiunitary
  because it commutes with this action. The free equations are real and
  signed permutation equivariant; their vanishing subspace <math|K> is
  therefore stable under these symmetries. Each quotient class has a unique
  representative in <math|K<rsup|\<perp\>>>, and taking that representative
  is a linear section intertwining the signed action and conjugation. Applied
  componentwise, it therefore maps <math|H> into <math|E> and satisfies
  <math|f*U=<math-up|id><rsub|H>>. These formulas use the same selected
  history and the same index <math|i>; the symbols <math|n<rsub|i>> and
  <math|b<rsub|n>> are as above (with <math|b<rsub|n>> denoting the arch
  scale). The following identities hold on a common tail. The first was just
  proved; the second is a terminal projection hypothesis, and the third
  follows from the chart symmetries as shown below:

  <\equation>
    f*U=<math-up|id><rsub|H>,<space|2em>P*Y<rsub|i>=X<rsub|i>,<space|2em><math-up|core><space|0.17em>M<rsub|i>*Y<rsub|i>*h<rsub|\<alpha\>>=M<rsub|i>*Y<rsub|i>*h<rsub|\<alpha\>>.<label|eq:trace-sensor-chart>
  </equation>

  The last equality holds simultaneously for every <math|h\<in\>H> and every
  component <math|\<alpha\>>. On the same tail, <math|Y<rsub|i>> and
  <math|M<rsub|i>> intertwine signed permutations and conjugation. Thus
  <math|M<rsub|i>*Y<rsub|i>> carries real covariant arrays to real covariant
  arrays. Inversion of all four axes acts by <math|-1> on each lifted
  component and fixes the unit coefficient, so that coefficient vanishes; the
  core deletes only that coefficient. This proves the last identity in
  <eqref|eq:trace-sensor-chart>. The scalar
  <math|c<rsub|i><rsup|-1>*t<rsub|i><rsup|-2>> is real, so the second formula
  in <eqref|eq:trace-sensor-selected-formulas> also defines a real-linear map
  <math|u<rsub|i>:H\<to\>E>. The chart identities imply, on this same tail,

  <\align*>
    <tformat|<table|<row|<cell|<around|(|s<rsub|i>*u<rsub|i>*h|)><rsub|\<alpha\>>>|<cell|=X<rsub|i><rsup|-1>*P*<space|-0.17em><around*|(|c<rsub|i>*t<rsub|i><rsup|2>*M<rsub|i><rsup|-1>*<around|(|c<rsub|i><rsup|-1>*t<rsub|i><rsup|-2><math-up|core><space|0.17em>M<rsub|i>*Y<rsub|i>*h<rsub|\<alpha\>>|)>|)>>>|<row|<cell|>|<cell|=X<rsub|i><rsup|-1>*P*<around|(|Y<rsub|i>*h<rsub|\<alpha\>>|)>=h<rsub|\<alpha\>>.>>>>
  </align*>

  Thus <math|s<rsub|i>*u<rsub|i>=<math-up|id><rsub|H>> eventually, uniformly
  over <math|h>. The construction of the chart and its symmetry and terminal
  projection properties are assumed here, not consequences of the limiting
  rank alone.

  We also record the quantitative inputs behind convergence of the selected
  right inverses. For any level <math|j>, write
  <math|\<vartheta\><rsub|j>\<gtr\>0> for its threshold,
  <math|M<around|(|j|)>> for its arch map, and
  <math|W<rsub|j>=\<vartheta\><rsub|j><rsup|-2><math-up|core><space|0.17em>M<around|(|j|)>>;
  thus <math|M<rsub|i>=M<around|(|n<rsub|i>|)>> and
  <math|t<rsub|i>=\<vartheta\><rsub|n<rsub|i>>>. Let
  <math|<around|\||\<cdummy\>|\|><rsub|1>> be the sum of absolute values of
  the finite coefficient coordinates, and set

  <\equation*>
    D<rsub|i>=b<rsub|k<rsub|i>>*r<rsub|i><rsup|5>,<space|1em>\<eta\><rsub|i>=exp
    <space|-0.17em><around*|{|-<tfrac|1|2><around|(|log log
    <wide|\<beta\>|^><rsub|k<rsub|i>>|)><rsup|2>|}>,<space|1em>\<delta\><rsub|i>=exp
    <space|-0.17em><around*|{|-<tfrac|2|5><around|(|log log
    <wide|\<beta\>|^><rsub|k<rsub|i>>|)><rsup|2>|}>.
  </equation*>

  Both <math|\<eta\><rsub|i>> and <math|\<delta\><rsub|i>> tend to zero. For
  fixed <math|h\<in\>H> and component <math|\<alpha\>>, write
  <math|y<rsub|i>=Y<rsub|i>*h<rsub|\<alpha\>>> and
  <math|p=<around|(|U*h|)><rsub|\<alpha\>>>. The next two estimates follow
  from the finite-volume inputs listed in (S1)\U(S6) below; they are derived
  consequences, not new sensor hypotheses.

  <\lemma>
    <dueto|Initial-level price><label|lem:trace-sensor-initial-price> Under
    those inputs, for each fixed <math|h> and <math|\<alpha\>>, eventually

    <\equation>
      <around|\||W<rsub|k<rsub|i>>*y<rsub|i>-D<rsub|i>*p|\|><rsub|1>\<leqslant\>2*\<eta\><rsub|i>*D<rsub|i><around|\||p|\|><rsub|1>.<label|eq:trace-sensor-initial-price>
    </equation>
  </lemma>

  <\proof>
    The finite-volume indices are pairs <math|\<omega\>=<around|(|N,\<nu\>|)>\<in\>\<bbb-N\><rsup|2>>,
    where <math|N> is the mesh cutoff index and <math|\<nu\>> the period
    index. Fix the selected ultrafilter <math|\<cal-L\>> refining the fused
    order of these pairs. Write <math|\<cal-F\><rsub|<math-up|fuse>>> for its
    fused-order filter; the refinement is
    <math|\<cal-L\>\<leqslant\>\<cal-F\><rsub|<math-up|fuse>>> in the filter
    order; it contains both coordinate tails, which are the consequences used
    below. The initial-level estimate follows from a finite-volume estimate
    on this ultrafilter. For each sufficiently large <math|i>, fixed <math|h>
    and component <math|\<alpha\>>, use the same <math|y<rsub|i>> and
    <math|p> as above. Suppose finite-volume coefficients
    <math|Z<rsub|i><around|(|\<omega\>|)>> and normalizations
    <math|B<rsub|i><around|(|\<omega\>|)>>, positive on an ultrafilter-large
    set, satisfy

    <\equation>
      <around|\||Z<rsub|i><around|(|\<omega\>|)>-B<rsub|i><around|(|\<omega\>|)>*p|\|><rsub|1>\<leqslant\>2*\<eta\><rsub|i>*B<rsub|i><around|(|\<omega\>|)><around|\||p|\|><rsub|1><space|1em><text|on
      an ultrafilter-large set>,<label|eq:trace-sensor-finite-price>
    </equation>

    and converge along that ultrafilter to <math|W<rsub|k<rsub|i>>*y<rsub|i>>
    and <math|D<rsub|i>>, respectively. These limits have a common source.
    Let <math|<math-up|Col><rsub|j><around|(|\<omega\>|)>> be the
    finite-volume transport at level <math|j>. Assume that for each fixed
    admissible <math|j>, whenever <math|v<around|(|\<omega\>|)>\<to\>v> along
    the selected ultrafilter, <math|<math-up|Col><rsub|j><around|(|\<omega\>|)>*v<around|(|\<omega\>|)>\<to\>M<around|(|j|)>*v>;
    also assume the finite-volume running parameter at level <math|j> tends
    to <math|b<rsub|j>>. Write <math|\<beta\><rsub|i><around|(|\<omega\>|)>>
    for that parameter at <math|k<rsub|i>>. The selected finite-volume lift
    satisfies <math|\<lambda\><rsub|i><around|(|\<omega\>|)>\<to\>y<rsub|i>>.
    The definitions give

    <\equation*>
      Z<rsub|i><around|(|\<omega\>|)>=\<vartheta\><rsub|k<rsub|i>><rsup|-2><math-up|coreCol><rsub|k<rsub|i>><around|(|\<omega\>|)>*\<lambda\><rsub|i><around|(|\<omega\>|)>,<space|2em>B<rsub|i><around|(|\<omega\>|)>=\<beta\><rsub|i><around|(|\<omega\>|)>*r<rsub|i><rsup|5>.
    </equation*>

    The two stated limits follow by continuity of <math|<math-up|core>>, with
    <math|i> fixed. The joint transport and lift convergence remain
    hypotheses; the finite-volume price follows from the tested-map estimates
    below. Continuity of the coefficient norm and the closedness of the
    inequality give <eqref|eq:trace-sensor-initial-price>. The ultrafilter
    limit is taken for each fixed <math|i> before the limit
    <math|i\<to\>\<infty\>>.

    The finite-volume price has a useful decomposition into its tested-map
    and calibration inputs. Fix <math|i> and
    <math|\<omega\>=<around|(|N,\<nu\>|)>> with <math|N\<gtr\>k<rsub|i>>;
    suppress both indices, and let <math|<math-ss|A>> and <math|<math-ss|T>>
    be the transported reference map and its tested approximation. They are
    complex-linear endomorphisms <math|<math-ss|A>,<math-ss|T>:<math-ss|V>\<to\><math-ss|V>>
    of the finite complex coefficient space and send the reference unit
    <math|\<b-1\>> to the unit coordinate vector <math|e<rsub|0>>. Assume
    that <math|<math-ss|A>> is injective and, for every input <math|v>,

    <\equation>
      <around|\||<math-ss|A>v-<math-ss|T>v|\|><rsub|1>\<leqslant\><tfrac|1|2><around|\||<math-ss|A>v|\|><rsub|1>,<space|2em><around|\||<math-ss|A>v-<math-ss|T>v|\|><rsub|1>\<leqslant\>\<eta\><rsub|i><around|\||<math-ss|A>v|\|><rsub|1>.<label|eq:trace-sensor-tested-price>
    </equation>

    These are separate tested-map and relative-price estimates. The first
    also shows that <math|<math-ss|T>> is injective: if
    <math|<math-ss|T>v=0>, then <math|<around|\||<math-ss|A>v|\|><rsub|1>\<leqslant\><tfrac|1|2><around|\||<math-ss|A>v|\|><rsub|1>>,
    so <math|<math-ss|A>v=0> and <math|v=0>. Since <math|<math-ss|V>> is
    finite-dimensional, <math|<math-ss|T>> is invertible. For a given
    <math|v>, put <math|c=<around|(|<math-ss|T>v|)><rsub|0>\<in\>\<bbb-C\>>
    and <math|v<rsup|\<circ\>>=v-c*\<b-1\>>. Then
    <math|<math-ss|T>v<rsup|\<circ\>>=<math-up|core><math-ss|T>v> and
    <math|<math-up|core><math-ss|A>v<rsup|\<circ\>>=<math-up|core><math-ss|A>v>.
    The first bound in <eqref|eq:trace-sensor-tested-price> and the triangle
    inequality give <math|<around|\||<math-ss|A>v<rsup|\<circ\>>|\|><rsub|1>\<leqslant\>2<around|\||<math-ss|T>v<rsup|\<circ\>>|\|><rsub|1>>.
    Applying <math|<math-up|core>> to the second bound, and using its
    nonexpansiveness, yields

    <\equation>
      <around|\||<math-up|core><math-ss|A>v-<math-up|core><math-ss|T>v|\|><rsub|1>\<leqslant\>2*\<eta\><rsub|i><around|\||<math-up|core><math-ss|T>v|\|><rsub|1>.<label|eq:trace-sensor-centered-price>
    </equation>

    For the particular selected lift <math|v=\<lambda\><rsub|i><around|(|\<omega\>|)>>,
    its definition identifies the tested image and finite-volume
    normalization. Write <math|d<rsub|k<rsub|i>>\<gtr\>0> for the lattice
    spacing at <math|k<rsub|i>>, put <math|\<sigma\><rsub|i>=r<rsub|i>/d<rsub|k<rsub|i>>>,
    and let <math|\<beta\><rsub|i><around|(|\<omega\>|)>\<gtr\>0> be the
    finite-volume running parameter. The transported reference map is
    <math|<math-ss|A>=d<rsub|k<rsub|i>><rsup|-5><math-up|Col><rsub|k<rsub|i>><around|(|\<omega\>|)>>,
    which explains the normalization of <math|Z<rsub|i>> below. The vector
    covariance of <math|h> makes each <math|h<rsub|\<alpha\>>> odd under
    total inversion; the reference lift intertwines that action, so
    <math|p=<around|(|U*h|)><rsub|\<alpha\>>> is odd as well. We recall the
    short degree argument for the reference frame. Its basis elements are
    homogeneous in position degree and factor degree, and the only
    factor-degree-zero basis element is the unit. Each jet factor has
    position weight at least two; since the frame has degree at most five, a
    nonunit basis element has at most two factors. A one-factor invariant
    vanishes by the invariant-linear-form argument in the low-grade label
    calculation of Subsection<nbsp><reference|sec:ex-lattice-trace-free-rank>.
    Thus every nonunit basis element has exactly two factors and position
    degree four or five. Total inversion acts on a homogeneous
    position-degree-<math|d> label by <math|<around|(|-1|)><rsup|d>>: a jet
    of order <math|r> has both inversion sign
    <math|<around|(|-1|)><rsup|r+2>> and position weight <math|r+2>.
    Consequently every nonzero nonunit coordinate of the odd vector <math|p>
    has position degree five and factor degree two. The identities used here
    are

    <\equation>
      <math-up|core><math-ss|T>\<lambda\><rsub|i>=\<beta\><rsub|i>*\<vartheta\><rsub|k<rsub|i>><rsup|2>*\<sigma\><rsub|i><rsup|5>*p,<space|2em>Z<rsub|i>=\<vartheta\><rsub|k<rsub|i>><rsup|-2>*d<rsub|k<rsub|i>><rsup|5><math-up|core><math-ss|A>\<lambda\><rsub|i>,<space|2em>B<rsub|i>=\<beta\><rsub|i>*r<rsub|i><rsup|5>.<label|eq:trace-sensor-finite-calibration>
    </equation>

    The first identity follows from the definition of the selected
    finite-volume lift and the grade-five scaling rule. Put
    <math|\<xi\>=<around|(|<sqrt|\<beta\><rsub|i>>|)><rsup|-1>/\<vartheta\><rsub|k<rsub|i>>>.
    For a frame coordinate <math|\<iota\>> with position degree
    <math|d<rsub|\<iota\>>> and factor degree <math|n<rsub|\<iota\>>>, define
    the position and factor dilations by

    <\equation*>
      <around|(|<math-up|Pos><rsub|t><space|0.17em>v|)><rsub|\<iota\>>=t<rsup|d<rsub|\<iota\>>>*v<rsub|\<iota\>>,<space|2em><around|(|<math-up|Dil><rsub|t><space|0.17em>v|)><rsub|\<iota\>>=t<rsup|n<rsub|\<iota\>>>*v<rsub|\<iota\>>.
    </equation*>

    For <math|t\<gtr\>0>, these coordinate formulas give
    <math|<math-up|Dil><rsub|t><rsup|-1>=<math-up|Dil><rsub|t<rsup|-1>>>. On
    the selected tail, where <math|i\<geqslant\>5>, the finite-volume lift is

    <\equation*>
      \<lambda\><rsub|i>=<math-ss|T><rsup|-1><math-up|Dil><rsub|\<xi\><rsup|-1>><space|0.17em><math-up|Pos><rsub|\<sigma\><rsub|i>><space|0.17em>p.
    </equation*>

    Consequently <math|<math-up|Dil><rsub|\<xi\>><math-ss|T>\<lambda\><rsub|i>=<math-up|Pos><rsub|\<sigma\><rsub|i>><space|0.17em>p>.
    The reference section <math|p> is odd and has nonunit degree five, so
    this weight is <math|\<sigma\><rsub|i><rsup|5>*p>. On these nonunit
    coordinates the inverse coefficient dilation
    <math|<math-up|Dil><rsub|\<xi\><rsup|-1>>> acts by
    <math|\<xi\><rsup|-2>>. Applying that inverse and <math|<math-up|core>>,
    with <math|<math-up|core><space|0.17em>p=p>, gives the first identity in
    <eqref|eq:trace-sensor-finite-calibration>, because
    <math|\<xi\><rsup|-2>=\<beta\><rsub|i>*\<vartheta\><rsub|k<rsub|i>><rsup|2>>.
    This is an exact conversion of the lift and grading normalizations. The
    other two identities specify the actual normalization. Multiplying
    <eqref|eq:trace-sensor-centered-price> by
    <math|\<vartheta\><rsub|k<rsub|i>><rsup|-2>*d<rsub|k<rsub|i>><rsup|5>>
    and using <math|r<rsub|i>=d<rsub|k<rsub|i>>*\<sigma\><rsub|i>> gives
    exactly <eqref|eq:trace-sensor-finite-price>. Thus the tested-map
    estimates, selected-lift construction and finite-volume limits are the
    remaining inputs for the initial-level price, rather than an additional
    assumed sensor bound.
  </proof>

  <\lemma>
    <dueto|Transport price><label|lem:trace-sensor-transport-price> Under
    (S1)\U(S6), for each fixed <math|h> and <math|\<alpha\>>, eventually

    <\equation>
      <around|\||W<rsub|k<rsub|i>>*y<rsub|i>-W<rsub|n<rsub|i>>*y<rsub|i>|\|><rsub|1>\<leqslant\>\<delta\><rsub|i>*<around|\||W<rsub|n<rsub|i>>*y<rsub|i>|\|><rsub|1>.<label|eq:trace-sensor-transport-price>
    </equation>
  </lemma>

  <\proof>
    For the one-step input, fix <math|i>, <math|h> and <math|\<alpha\>> and
    write <math|N<rsub|i>=n<rsub|i>-k<rsub|i>\<gtr\>0>. On a set belonging to
    the selected ultrafilter, suppose there are finite-volume
    coefficient-vector functions <math|z<rsub|j><around|(|\<omega\>|)>> for
    <math|k<rsub|i>\<leqslant\>j\<leqslant\>n<rsub|i>>, all formed from the
    same terminal label <math|y<rsub|i>>, with

    <\equation>
      <around|\||z<rsub|j><around|(|\<omega\>|)>-z<rsub|j+1><around|(|\<omega\>|)>|\|><rsub|1>\<leqslant\><frac|\<delta\><rsub|i>|2*N<rsub|i>><around|\||z<rsub|j+1><around|(|\<omega\>|)>|\|><rsub|1>*<space|1em><around|(|k<rsub|i>\<leqslant\>j\<less\>n<rsub|i>|)>.<label|eq:trace-sensor-step-input>
    </equation>

    Here <math|z<rsub|j><around|(|\<omega\>|)>=\<vartheta\><rsub|j><rsup|-2><math-up|coreCol><rsub|j><around|(|\<omega\>|)>*y<rsub|i>>.
    For each fixed <math|j> in this finite interval, the joint transport
    input above, applied to the constant label <math|y<rsub|i>>, gives the
    ultrafilter limit <math|W<rsub|j>*y<rsub|i>>. We derive the one-step
    price below from the underlying residual and budget inputs, and now prove
    <eqref|eq:trace-sensor-transport-price> from it.

    Fix <math|\<omega\>> in that set and abbreviate
    <math|z<rsub|j>=z<rsub|j><around|(|\<omega\>|)>>. Put
    <math|a=\<delta\><rsub|i>/N<rsub|i>>. For large <math|i> we have
    <math|\<delta\><rsub|i>\<leqslant\>1>. Backward induction gives, for
    every <math|j> in the interval,

    <\equation*>
      <around|\||z<rsub|j>-z<rsub|n<rsub|i>>|\|><rsub|1>\<leqslant\>a*<around|(|n<rsub|i>-j|)><around|\||z<rsub|n<rsub|i>>|\|><rsub|1>.
    </equation*>

    It is immediate at <math|j=n<rsub|i>>. At the induction step, the bound
    at <math|j+1> and <math|a*N<rsub|i>\<leqslant\>1> give
    <math|<around|\||z<rsub|j+1>|\|><rsub|1>\<leqslant\>2<around|\||z<rsub|n<rsub|i>>|\|><rsub|1>>.
    The one-step input therefore bounds <math|<around|\||z<rsub|j>-z<rsub|j+1>|\|><rsub|1>>
    by <math|a<around|\||z<rsub|n<rsub|i>>|\|><rsub|1>>, and the triangle
    inequality proves the next step. At <math|j=k<rsub|i>> this is
    <math|<around|\||z<rsub|k<rsub|i>>-z<rsub|n<rsub|i>>|\|><rsub|1>\<leqslant\>\<delta\><rsub|i><around|\||z<rsub|n<rsub|i>>|\|><rsub|1>>.
    Passing to the ultrafilter limit in the finite-dimensional coefficient
    space yields <eqref|eq:trace-sensor-transport-price>. The finite
    intersection over the interval is taken before this limit, for each fixed
    <math|i>; no uniform limit in <math|i> or new choice of history is used.

    The one-step price follows from the following assumptions. Write
    <math|<wide|z|~><rsub|j>=<math-up|Col><rsub|j><around|(|\<omega\>|)>*y<rsub|i>>
    for the finite-volume coefficient before threshold normalization; thus
    <math|z<rsub|j>=\<vartheta\><rsub|j><rsup|-2><math-up|core><wide|z|~><rsub|j>>.
    Let the deterministic block transport be
    <math|<around|(|<math-up|Block><rsub|j><space|0.17em>v|)><rsub|\<iota\>>=L<rsub|j><rsup|5-d<rsub|\<iota\>>>*v<rsub|\<iota\>>>.
    For <math|a\<in\>\<bbb-R\>> and level <math|j>, put

    <\equation*>
      A<rsub|a><around|(|j|)>=exp <space|-0.17em><around*|{|a<around|(|log
      log <wide|\<beta\>|^><rsub|j>|)><rsup|2>|}>,<space|2em>g<rsub|j>=<frac|2*<around|(|1+C<rsub|j+1>|)>|A<rsub|1/2>*<around|(|j+1|)>>,
    </equation*>

    where <math|C<rsub|j>\<geqslant\>0> is the selected real column budget.
    The budget input is <math|C<rsub|j>\<leqslant\>log
    <wide|\<beta\>|^><rsub|j>> eventually. For all levels in the interval, on
    the same ultrafilter-large set, assume

    <\align>
      <tformat|<table|<row|<cell|<frac|\<vartheta\><rsub|j+1>|\<vartheta\><rsub|j>>>|<cell|\<leqslant\>2,>|<cell|<around|\||<wide|z|~><rsub|j>-<math-up|Dil><rsub|\<vartheta\><rsub|j>/\<vartheta\><rsub|j+1>><space|0.17em><math-up|Block><rsub|j><wide|z|~><rsub|j+1>|\|><rsub|1>>|<cell|\<leqslant\>g<rsub|j><around|\||<math-up|core><wide|z|~><rsub|j+1>|\|><rsub|1>.<eq-number><label|eq:trace-sensor-raw-step>>>>>
    </align>

    In the selected construction, for each fixed level <math|j> the residual
    and threshold bounds hold for all sufficiently large <math|\<nu\>>,
    uniformly in <math|N\<gtr\>j> and the terminal label. For fixed <math|i>,
    take the maximum of the finitely many period thresholds for
    <math|k<rsub|i>\<leqslant\>j\<less\>n<rsub|i>> and also require
    <math|N\<geqslant\>n<rsub|i>>; their intersection belongs to the same
    ultrafilter. This justifies using one large set for the entire finite
    interval, without a uniform choice over <math|i>.

    The terminal label <math|y<rsub|i>> is odd under inversion of all axes,
    and the finite-volume transport preserves that inversion; hence every
    <math|<wide|z|~><rsub|j>> is odd. The reference-frame classification used
    above therefore shows that a nonzero nonunit coordinate of
    <math|<wide|z|~><rsub|j+1>> has position degree five and factor degree
    two. On a coordinate of position degree <math|d>, block transport
    multiplies by <math|L<rsub|j><rsup|5-d>>; on one of factor degree
    <math|n>, coefficient dilation by <math|t> multiplies by
    <math|t<rsup|n>>. Thus, on every nonunit coordinate of
    <math|<wide|z|~><rsub|j+1>>, the block factor is one and the dilation
    factor is <math|<around|(|\<vartheta\><rsub|j>/\<vartheta\><rsub|j+1>|)><rsup|2>>.
    The core deletes the unit coordinate, so

    <\equation>
      <math-up|coreDil><rsub|\<vartheta\><rsub|j>/\<vartheta\><rsub|j+1>><space|0.17em><math-up|Block><rsub|j><wide|z|~><rsub|j+1>=<around*|(|<frac|\<vartheta\><rsub|j>|\<vartheta\><rsub|j+1>>|)><rsup|2><math-up|core><wide|z|~><rsub|j+1>.<label|eq:trace-sensor-grade-scaling>
    </equation>

    The core projection is nonexpansive in
    <math|<around|\||\<cdummy\>|\|><rsub|1>>. Applying <math|<math-up|core>>
    to the residual and dividing by <math|\<vartheta\><rsub|j><rsup|2>> gives

    <\equation*>
      <around|\||z<rsub|j>-z<rsub|j+1>|\|><rsub|1>\<leqslant\>g<rsub|j><around*|(|<frac|\<vartheta\><rsub|j+1>|\<vartheta\><rsub|j>>|)><rsup|2><around|\||z<rsub|j+1>|\|><rsub|1>\<leqslant\>4*g<rsub|j><around|\||z<rsub|j+1>|\|><rsub|1>.
    </equation*>

    We verify that <math|4*g<rsub|j>\<leqslant\>\<delta\><rsub|i>/<around|(|2*N<rsub|i>|)>>
    uniformly for <math|k<rsub|i>\<leqslant\>j\<less\>n<rsub|i>> when
    <math|i> is large. Put <math|\<chi\>=<wide|\<beta\>|^><rsub|k<rsub|i>>>.
    The clock estimates already proved imply
    <math|<wide|\<beta\>|^><rsub|n<rsub|i>>\<leqslant\>2*\<chi\>> eventually.
    Since each increment <math|log L<rsub|j>\<geqslant\>1>, the overshoot
    bound gives <math|N<rsub|i>\<leqslant\>2<around|(|log
    \<chi\>|)><rsup|48>>. For large <math|i> we have
    <math|\<chi\>\<geqslant\>e>, so <math|t\<mapsto\>exp
    <around|{|<tfrac|1|2><around|(|log log t|)><rsup|2>|}>> is increasing for
    <math|t\<geqslant\>\<chi\>>. Monotonicity of the clock then gives
    <math|C<rsub|j+1>\<leqslant\>2*log \<chi\>> and
    <math|A<rsub|1/2>*<around|(|j+1|)>\<geqslant\>A<rsub|1/2><around|(|k<rsub|i>|)>>
    for large <math|i>. Therefore

    <\equation*>
      2*N<rsub|i>*<around|(|4*g<rsub|j>|)>\<leqslant\><frac|32<around|(|log
      \<chi\>|)><rsup|48>*<around|(|1+2*log
      \<chi\>|)>|A<rsub|1/2><around|(|k<rsub|i>|)>>\<leqslant\>A<rsub|-2/5><around|(|k<rsub|i>|)>=\<delta\><rsub|i>.
    </equation*>

    The last inequality follows because every fixed power of <math|log
    \<chi\>> is eventually bounded by <math|A<rsub|1/10><around|(|k<rsub|i>|)>>:
    after taking logarithms this is linear versus quadratic growth in
    <math|log log \<chi\>>. This proves <eqref|eq:trace-sensor-step-input>.
    The residual, preservation of oddness, threshold and column-budget bounds
    remain hypotheses; the degree classification, grade-scaling identity,
    price calculation and telescoping above prove their consequence.
  </proof>

  <\lemma>
    <dueto|Convergence of the selected lifts><label|lem:trace-sensor-lift-limit>
    Under (S1)\U(S6), <math|u<rsub|i>\<to\>U> in operator norm.
  </lemma>

  <\proof>
    The preceding estimates prove <math|u<rsub|i>*h\<to\>U*h>. Indeed put
    <math|<math-ss|L><rsub|i>=D<rsub|i><rsup|-1>*W<rsub|k<rsub|i>>*y<rsub|i>>
    and <math|<math-ss|R><rsub|i>=D<rsub|i><rsup|-1>*W<rsub|n<rsub|i>>*y<rsub|i>>.
    The first estimate gives <math|<around|\||<math-ss|L><rsub|i>-p|\|><rsub|1>\<leqslant\>2*\<eta\><rsub|i><around|\||p|\|><rsub|1>>,
    and the second gives <math|<around|\||<math-ss|L><rsub|i>-<math-ss|R><rsub|i>|\|><rsub|1>\<leqslant\>\<delta\><rsub|i><around|\||<math-ss|R><rsub|i>|\|><rsub|1>>.
    For <math|\<delta\><rsub|i>\<less\>1>, the triangle inequality gives
    <math|<around|\||<math-ss|R><rsub|i>|\|><rsub|1>\<leqslant\><around|(|1+2*\<eta\><rsub|i>|)>*<around|(|1-\<delta\><rsub|i>|)><rsup|-1><around|\||p|\|><rsub|1>>
    and hence

    <\equation*>
      <around|\||<math-ss|R><rsub|i>-p|\|><rsub|1>\<leqslant\><frac|2*\<eta\><rsub|i>+\<delta\><rsub|i>|1-\<delta\><rsub|i>><around|\||p|\|><rsub|1>.
    </equation*>

    Since <math|c<rsub|i>=b<rsub|n<rsub|i>>*r<rsub|i><rsup|5>>, the formula
    for <math|u<rsub|i>> gives <math|<around|(|u<rsub|i>*h|)><rsub|\<alpha\>>=<around|(|b<rsub|k<rsub|i>>/b<rsub|n<rsub|i>>|)><math-ss|R><rsub|i>>.
    Thus the component error is at most

    <\equation*>
      <around*|(|<around*|\||<frac|b<rsub|k<rsub|i>>|b<rsub|n<rsub|i>>>-1|\|>+<frac|b<rsub|k<rsub|i>>|b<rsub|n<rsub|i>>>*<frac|2*\<eta\><rsub|i>+\<delta\><rsub|i>|1-\<delta\><rsub|i>>|)><around|\||p|\|><rsub|1>,
    </equation*>

    which tends to zero. There are finitely many components, so
    <math|u<rsub|i>*h\<to\>U*h> in <math|E>; finite dimensionality upgrades
    this pointwise convergence to operator-norm convergence.
  </proof>

  We collect the inputs used in the preceding lemmas and the proposition.
  They concern one selected family, one chart and one ultrafilter throughout;
  none is a new assumption of a sensor estimate.

  <\enumerate>
    <item*|(S1)>The selected levels <math|k<rsub|i>\<to\>\<infty\>> and the
    schedule has <math|<wide|\<beta\>|^><rsub|j>=<wide|\<beta\>|\<bar\>>+\<gamma\>*\<ell\><rsub|j>\<gtr\>1>,
    with <math|<wide|\<beta\>|\<bar\>>,\<gamma\>\<gtr\>0> and
    <math|\<ell\><rsub|j>\<to\>\<infty\>>. Its increments satisfy
    <math|\<ell\><rsub|j+1>-\<ell\><rsub|j>=log L<rsub|j>>, with
    <math|L<rsub|j>\<geqslant\>3> and eventually
    <math|L<rsub|j>\<leqslant\>log <wide|\<beta\>|^><rsub|j>>. The arch
    scales <math|b<rsub|j>> are positive and, for every
    <math|\<varepsilon\>\<gtr\>0>, satisfy
    <math|<around|\||b<rsub|j>-<wide|\<beta\>|^><rsub|j>|\|>\<leqslant\>\<varepsilon\>*\<ell\><rsub|j>>
    eventually in <math|j>. The postselected level
    <math|n<rsub|i>=q<around|(|k<rsub|i>|)>\<gtr\>k<rsub|i>> is the first
    level at logarithmic separation at least <math|<around|(|log
    <wide|\<beta\>|^><rsub|k<rsub|i>>|)><rsup|48>>, and the weight is
    <eqref|eq:trace-sensor-weight>.

    <item*|(S2)>The finite-dimensional real spaces <math|E,H>, projection
    <math|f>, nonzero <math|x>, <math|ker f=\<bbb-R\>*x> and Ward form
    <math|\<rho\>> are the free data fixed above. The chart maps
    <math|s<rsub|i>>, <math|X<rsub|i>>, <math|Y<rsub|i>>, <math|M<rsub|i>>
    and positive scales use the same selected family and satisfy
    <eqref|eq:trace-sensor-selected-formulas> and
    <math|P*Y<rsub|i>=X<rsub|i>> on a common eventual tail for every field.
    The chart maps intertwine the signed permutations and conjugation there;
    the reference section <math|U> has <math|f*U=<math-up|id><rsub|H>>.

    <item*|(S3)>The selected ultrafilter <math|\<cal-L\>> refines the fused
    order. For each fixed admissible <math|j>,
    <math|<math-up|Col><rsub|j><around|(|\<omega\>|)>*v<around|(|\<omega\>|)>\<to\>M<around|(|j|)>*v>
    whenever <math|v<around|(|\<omega\>|)>\<to\>v> along <math|\<cal-L\>>;
    the finite running parameter tends to <math|b<rsub|j>>. For each fixed
    sufficiently large <math|i> and each field component, the selected
    finite-volume lift <math|\<lambda\><rsub|i><around|(|\<omega\>|)>>
    converges to <math|Y<rsub|i>*h<rsub|\<alpha\>>> along this same
    ultrafilter. All these volume limits are taken before
    <math|i\<to\>\<infty\>>.

    <item*|(S4)>On the selected tail, for every period and every
    <math|N\<gtr\>k<rsub|i>>, the complex-linear endomorphisms
    <math|<math-ss|A>,<math-ss|T>> of <math|<math-ss|V>> send the reference
    unit to <math|e<rsub|0>>, <math|<math-ss|A>> is injective, and the two
    bounds <eqref|eq:trace-sensor-tested-price> hold for every coefficient
    vector. For each fixed <math|h> and component, the selected lift is

    <\equation*>
      \<lambda\><rsub|i>=<math-ss|T><rsup|-1><math-up|Dil><rsub|\<xi\><rsup|-1>><space|0.17em><math-up|Pos><rsub|\<sigma\><rsub|i>><around|(|U*h|)><rsub|\<alpha\>>,<space|2em>\<xi\>=<around|(|<sqrt|\<beta\><rsub|i>>|)><rsup|-1>/\<vartheta\><rsub|k<rsub|i>>.
    </equation*>

    Further, <math|<math-ss|A>=d<rsub|k<rsub|i>><rsup|-5><math-up|Col><rsub|k<rsub|i>>>,
    with positive <math|\<beta\><rsub|i>>, <math|d<rsub|k<rsub|i>>>,
    <math|r<rsub|i>>, and <math|\<sigma\><rsub|i>=r<rsub|i>/d<rsub|k<rsub|i>>>.
    The calibration identities <eqref|eq:trace-sensor-finite-calibration> are
    derived from these data and the grading, as shown in the proof.

    <item*|(S5)>For each fixed level <math|j\<geqslant\>j<rsub|0>>,
    eventually in the period index <math|\<nu\>>, uniformly for every
    <math|N\<gtr\>j> and every terminal coefficient label, the threshold
    ratio and residual bounds <eqref|eq:trace-sensor-raw-step> hold with
    <math|<wide|z|~><rsub|j>=<math-up|Col><rsub|j><around|(|\<omega\>|)>*v>
    for that label <math|v>. For each fixed <math|i> their finite
    intersection over <math|k<rsub|i>\<leqslant\>j\<less\>n<rsub|i>>,
    together with <math|N\<geqslant\>n<rsub|i>>, is taken along the same
    fused-order ultrafilter; no tail uniform in <math|i> is assumed.

    <item*|(S6)>The selected column budgets obey
    <math|C<rsub|j>\<leqslant\>log <wide|\<beta\>|^><rsub|j>> eventually. The
    reference lift is odd under total inversion and the finite-volume
    transport preserves oddness; the grade-five frame and block/dilation
    rules are those used above. These inputs purchase the transport estimate,
    rather than assuming it.

    <item*|(S7)>The marked sequence <math|v<rsub|i>\<in\>E> has the three
    limits in <eqref|eq:trace-sensor-marked> below. It is arbitrary subject
    to those limits; it need not be the later medium example.
  </enumerate>

  <\proposition>
    <dueto|Selected trace sensor><label|prop:trace-prosper-sensor>Assume
    (S1)\U(S6). By Lemmas<nbsp><reference|lem:trace-sensor-arch-ratio>,
    <reference|lem:trace-sensor-initial-price>,
    <reference|lem:trace-sensor-transport-price> and
    <reference|lem:trace-sensor-lift-limit>, the stated chart has an eventual
    right inverse and <math|u<rsub|i>\<to\>U> in operator norm. Suppose a
    sequence <math|v<rsub|i>\<in\>E> satisfies, in the indicated norms,

    <\equation>
      v<rsub|i>\<longrightarrow\>x,<space|2em>\<frak-a\><rsub|i>*s<rsub|i><around|(|v<rsub|i>|)>\<longrightarrow\>0<text|in
      >H,<space|2em>\<frak-a\><rsub|i>*\<rho\><around|(|v<rsub|i>|)>\<longrightarrow\>0<text|in
      >\<bbb-R\>.<label|eq:trace-sensor-marked>
    </equation>

    Then <math|s<rsub|i>\<to\>f> in operator norm. Moreover there are linear
    functionals <math|\<mu\><rsub|i>:H\<to\>\<bbb-R\>> and
    <math|C\<geqslant\>0> such that, for all sufficiently large <math|i>,
    <math|<around|\||\<mu\><rsub|i><around|(|h|)>|\|>\<leqslant\>C<around|\<\|\|\>|h|\<\|\|\>>>
    for every <math|h\<in\>H>, and for every <math|\<varepsilon\>\<gtr\>0>,
    for all sufficiently large <math|i>,

    <\equation>
      <around|\||\<frak-a\><rsub|i>*<around|(|\<mu\><rsub|i>*<around|(|s<rsub|i>*y|)>-\<rho\><around|(|y|)>|)>|\|>\<leqslant\>\<varepsilon\><around|\<\|\|\>|y|\<\|\|\>><space|1em><text|for
      every >y\<in\>E.<label|eq:trace-sensor-conclusion>
    </equation>

    The tail in the second assertion may depend on <math|\<varepsilon\>>, but
    is uniform in <math|y>.
  </proposition>

  <\proof>
    Since <math|\<frak-a\><rsub|i>\<gtr\>0> and
    <math|\<frak-a\><rsub|i>\<to\>\<infty\>>, the first weighted limit in
    <eqref|eq:trace-sensor-marked> implies
    <math|s<rsub|i><around|(|v<rsub|i>|)>\<to\>0>. Choose a linear functional
    <math|A:E\<to\>\<bbb-R\>> for which <math|y=U*f<around|(|y|)>+A<around|(|y|)>*x>
    for every <math|y>: indeed <math|y-U*f<around|(|y|)>> lies in <math|ker
    f>, and its coefficient along the nonzero <math|x> is linear. Define
    <math|T<rsub|i>=u<rsub|i>*f+A\<otimes\>v<rsub|i>>. The chart and
    marked-vector limits imply <math|T<rsub|i>\<to\><math-up|id><rsub|E>> in
    operator norm. For sufficiently large <math|i>, <math|T<rsub|i>> is
    invertible and <math|T<rsub|i><rsup|-1>\<to\><math-up|id><rsub|E>>, by
    the geometric series for <math|<math-up|id><rsub|E>-T<rsub|i>>.

    On the common right-inverse tail,

    <\equation*>
      s<rsub|i>*T<rsub|i>*y=f<around|(|y|)>+A<around|(|y|)>*s<rsub|i><around|(|v<rsub|i>|)>.
    </equation*>

    This also gives a bound without assuming the norms of <math|s<rsub|i>> in
    advance. Put <math|\<epsilon\><rsub|i>=<around|\<\|\|\>|T<rsub|i>-<math-up|id><rsub|E>|\<\|\|\>>>;
    for <math|\<epsilon\><rsub|i>\<less\>1>,

    <\equation*>
      <around|\<\|\|\>|s<rsub|i>-f|\<\|\|\>>\<leqslant\><frac|<around|\<\|\|\>|A|\<\|\|\>><space|0.17em>\<\|\|\>s<rsub|i><around|(|v<rsub|i>|)>\<\|\|\>+<around|\<\|\|\>|f|\<\|\|\>>*\<epsilon\><rsub|i>|1-\<epsilon\><rsub|i>>.
    </equation*>

    Indeed subtract <math|f*T<rsub|i>> from the displayed identity and
    multiply on the right by <math|T<rsub|i><rsup|-1>>. Both terms in the
    numerator tend to zero, proving <math|s<rsub|i>\<to\>f>. Now apply the
    weighted rank-one receiver lemma (Lemma<nbsp><reference|lem:ex-lattice-trace-weighted-price>)
    with <math|<around|(|v<rsub|i>,u<rsub|i>,w<rsub|i>,e<rsub|i>|)>> there
    equal to <math|<around|(|s<rsub|i>,u<rsub|i>,v<rsub|i>,\<frak-a\><rsub|i>|)>>
    here. Its two weighted hypotheses are precisely the last two limits in
    <eqref|eq:trace-sensor-marked>; its other hypotheses follow from the
    preceding paragraph and <eqref|eq:trace-sensor-chart>. It gives
    <math|\<mu\><rsub|i>=\<rho\>*u<rsub|i>> with bounded norms and
    <math|<around|\<\|\|\>|\<frak-a\><rsub|i>*<around|(|\<mu\><rsub|i>*s<rsub|i>-\<rho\>|)>|\<\|\|\>><rsub|E<rsup|\<ast\>>>\<to\>0>.
    The definition of operator norm then gives
    <eqref|eq:trace-sensor-conclusion>, with one tail uniform in <math|y>.
  </proof>

  The marked-vector assumptions are separate analytic inputs. In the selected
  construction let <math|<math-ss|q><rsub|j>> and <math|<math-ss|w><rsub|j>>
  be the transported chosen and reference responses, and set
  <math|m<rsub|j>=b<rsub|j><rsup|-1><math-ss|q><rsub|j>-<math-ss|w><rsub|j>>.
  The scalar assembly in Subsection<nbsp><reference|sec:ex-lattice-trace-weighted-estimates>,
  applied at the postselected levels and under its stated response, price and
  scale inputs, gives <math|m<rsub|n<rsub|i>>\<to\>x> and
  <math|\<frak-a\><rsub|i>*\<rho\><around|(|m<rsub|n<rsub|i>>|)>\<to\>0>. In
  particular, the scale comparison above and
  <math|<wide|\<beta\>|^><rsub|n<rsub|i>>\<to\>\<infty\>> give
  <math|b<rsub|n<rsub|i>>\<geqslant\>1> after discarding finitely many terms;
  the cited scalar calculation supplies <math|\<frak-a\><rsub|i>/b<rsub|n<rsub|i>>\<to\>0>.
  The distinct priced-mission argument in
  Lemma<nbsp><reference|lem:ex-trace-small-means> gives the stronger field
  estimate <math|<wide|\<beta\>|^><rsub|n<rsub|i>>*s<rsub|i><around|(|m<rsub|n<rsub|i>>|)>\<to\>0>,
  under its stated medium-core representation, oddness, response and scaling
  identities, detector and local-price bounds, and scalar rate input. For
  large <math|t>, <math|<tfrac|1|5><around|(|log log
  t|)><rsup|2>\<leqslant\>log t>, so <math|A<rsub|1/5><around|(|n<rsub|i>|)>\<leqslant\><wide|\<beta\>|^><rsub|n<rsub|i>>>
  eventually. Therefore

  <\equation*>
    <around|\<\|\|\>|\<frak-a\><rsub|i>*s<rsub|i><around|(|m<rsub|n<rsub|i>>|)>|\<\|\|\>>\<leqslant\><around|\<\|\|\>|<wide|\<beta\>|^><rsub|n<rsub|i>>*s<rsub|i><around|(|m<rsub|n<rsub|i>>|)>|\<\|\|\>>\<longrightarrow\>0.
  </equation*>

  Thus the same selected medium supplies all three marked-vector limits in
  the proposition, subject to those two separate groups of inputs. For the
  selected construction, Subsection<nbsp><reference|sec:ex-lattice-trace-scribe-producer>
  identifies the chart, the tested finite-volume readout and the probe
  estimates on this same history and applies the proposition.

  <ym-unit-nav|<hlink|\<leftarrow\> YM-000026|../../YM-000026/correspondence.tm>|<hlink|YM-000033:
  Selected trace sensor and weighted Ward limit
  (draft)|../correspondence.tm><ym-nav-sep><hlink|HANDOFF|../HANDOFF.tm><ym-nav-sep><ym-nav-here|evidence/wrapper><ym-nav-sep><hlink|validation|../validation.tm>|<hlink|YM-000034
  \<rightarrow\>|../../YM-000034/correspondence.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|YM-000033: Selected trace sensor and weighted Ward
    limit, evidence/wrapper \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|3.3|15>>
    <associate|auto-11|<tuple|4|18>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|4>>
    <associate|auto-4|<tuple|1.3|4>>
    <associate|auto-5|<tuple|1.4|5>>
    <associate|auto-6|<tuple|2|7>>
    <associate|auto-7|<tuple|3|11>>
    <associate|auto-8|<tuple|3.1|13>>
    <associate|auto-9|<tuple|3.2|14>>
    <associate|eq:ex-lattice-trace-age-over-arch|<tuple|23|14>>
    <associate|eq:ex-lattice-trace-age-rules|<tuple|22|13>>
    <associate|eq:ex-lattice-trace-arch-comparison|<tuple|21|13>>
    <associate|eq:ex-lattice-trace-chart-field-decay|<tuple|33|17>>
    <associate|eq:ex-lattice-trace-finite-response-price|<tuple|27|15>>
    <associate|eq:ex-lattice-trace-reference-inputs-source|<tuple|25|14>>
    <associate|eq:ex-lattice-trace-response-inputs-source|<tuple|24|14>>
    <associate|eq:ex-lattice-trace-response-limit|<tuple|19|12>>
    <associate|eq:ex-lattice-trace-response-weighted|<tuple|20|12>>
    <associate|eq:ex-trace-derivative-compatibility|<tuple|9|6>>
    <associate|eq:ex-trace-divergence-probes|<tuple|11|7>>
    <associate|eq:ex-trace-green-hessian|<tuple|4|4>>
    <associate|eq:ex-trace-green-third|<tuple|5|4>>
    <associate|eq:ex-trace-medium-core|<tuple|12|8>>
    <associate|eq:ex-trace-night-scaling|<tuple|14|8>>
    <associate|eq:ex-trace-orbit-representatives|<tuple|3|3>>
    <associate|eq:ex-trace-radial-reconstruction|<tuple|1|2>>
    <associate|eq:ex-trace-signed-array|<tuple|2|3>>
    <associate|eq:ex-trace-small-means-detector|<tuple|16|10>>
    <associate|eq:ex-trace-small-means-price|<tuple|15|9>>
    <associate|eq:ex-trace-small-means-rate|<tuple|17|10>>
    <associate|eq:ex-trace-spun-response|<tuple|13|8>>
    <associate|eq:ex-trace-vacuum-probes|<tuple|8|5>>
    <associate|eq:trace-sensor-arch-ratio|<tuple|36|20>>
    <associate|eq:trace-sensor-centered-price|<tuple|42|22>>
    <associate|eq:trace-sensor-chart|<tuple|38|21>>
    <associate|eq:trace-sensor-clock-input|<tuple|35|19>>
    <associate|eq:trace-sensor-conclusion|<tuple|49|26>>
    <associate|eq:trace-sensor-finite-calibration|<tuple|43|22>>
    <associate|eq:trace-sensor-finite-price|<tuple|40|21>>
    <associate|eq:trace-sensor-grade-scaling|<tuple|47|24>>
    <associate|eq:trace-sensor-initial-price|<tuple|39|21>>
    <associate|eq:trace-sensor-marked|<tuple|48|26>>
    <associate|eq:trace-sensor-raw-step|<tuple|46|24>>
    <associate|eq:trace-sensor-selected-formulas|<tuple|37|20>>
    <associate|eq:trace-sensor-step-input|<tuple|45|23>>
    <associate|eq:trace-sensor-tested-price|<tuple|41|22>>
    <associate|eq:trace-sensor-transport-price|<tuple|44|23>>
    <associate|eq:trace-sensor-weight|<tuple|34|19>>
    <associate|eq:trace-weighted-calibration-price|<tuple|32|17>>
    <associate|eq:trace-weighted-column-inverse|<tuple|30|16>>
    <associate|eq:trace-weighted-estimates-display-star|<tuple|18|11>>
    <associate|eq:trace-weighted-normalized-bias|<tuple|29|16>>
    <associate|eq:trace-weighted-paid-bias|<tuple|28|15>>
    <associate|eq:trace-weighted-reference-bias|<tuple|31|16>>
    <associate|lem:ex-lattice-trace-medium-receipts|<tuple|0.6|12>>
    <associate|lem:ex-lattice-trace-weighted-price|<tuple|0.5|11>>
    <associate|lem:ex-trace-free-stress-basis|<tuple|0.2|5>>
    <associate|lem:ex-trace-small-means|<tuple|0.4|10>>
    <associate|lem:ex-trace-vector-probes|<tuple|0.1|3>>
    <associate|lem:trace-sensor-arch-ratio|<tuple|0.7|20>>
    <associate|lem:trace-sensor-initial-price|<tuple|0.8|21>>
    <associate|lem:trace-sensor-lift-limit|<tuple|0.10|25>>
    <associate|lem:trace-sensor-transport-price|<tuple|0.9|23>>
    <associate|prop:ex-trace-free-closure-rank|<tuple|0.3|7>>
    <associate|prop:trace-prosper-sensor|<tuple|0.11|26>>
    <associate|sec:ex-lattice-trace-free-rank|<tuple|1|1>>
    <associate|sec:ex-lattice-trace-weighted-estimates|<tuple|3|11>>
    <associate|sec:trace-prosper-sensor|<tuple|4|18>>
    <associate|subsec:ex-lattice-trace-source-rate|<tuple|3.1|13>>
    <associate|subsec:ex-lattice-trace-weighted-assembly|<tuple|3.2|14>>
    <associate|subsec:ex-lattice-trace-weighted-route|<tuple|3.3|15>>
    <associate|subsec:ex-trace-small-means|<tuple|2|7>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <with|par-left|<quote|1tab>|1<space|2spc>Free-reference rank from
      finite point probes <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>>

      <with|par-left|<quote|2tab>|<with|font-size|<quote|0.92>|1.1<space|2spc>Low-grade
      invariant labels <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>>

      <with|par-left|<quote|2tab>|<with|font-size|<quote|0.92>|1.2<space|2spc>The
      raw spaces have dimensions at most four and three
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>>

      <with|par-left|<quote|2tab>|<with|font-size|<quote|0.92>|1.3<space|2spc>The
      normalized free stress basis <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>>

      <with|par-left|<quote|2tab>|<with|font-size|<quote|0.92>|1.4<space|2spc>The
      two conserved free directions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>>

      <with|par-left|<quote|1tab>|2<space|2spc>A priced mission forces the
      weighted response to vanish <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|3<space|2spc>Weighted price control for the
      trace receiver <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|2tab>|<with|font-size|<quote|0.92>|3.1<space|2spc>The
      rate and medium calculation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>>

      <with|par-left|<quote|2tab>|<with|font-size|<quote|0.92>|3.2<space|2spc>How
      the two weighted receipts are assembled
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>>

      <with|par-left|<quote|2tab>|<with|font-size|<quote|0.92>|3.3<space|2spc>The
      response limits and the remaining estimates
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>>

      <with|par-left|<quote|1tab>|4<space|2spc>The trace sensor and its
      weighted Ward limit <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>
    </associate>
  </collection>
</auxiliary>