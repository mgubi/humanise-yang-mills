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

  <ym-unit-nav|<hlink|\<leftarrow\> YM-000033|../../YM-000033/correspondence.tm>|<hlink|YM-000034:
  Trace branch moment limits and weighted washout
  (draft)|../correspondence.tm><ym-nav-sep><hlink|HANDOFF|../HANDOFF.tm><ym-nav-sep><ym-nav-here|evidence/wrapper><ym-nav-sep><hlink|validation|../validation.tm>|>

  <doc-data|<doc-title|YM-000034: Trace branch moment limits and weighted
  washout, evidence/wrapper>>

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
  define <math|T> by <math|B*<around|(|x,y|)>=<around|\<langle\>|T*x,y|\<rangle\>>>.
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
    A<rsub|p;r;i*j;k*l>=M<rsub|p><around|(|\<ell\><rsup|0><rsub|i*j><around|(|v|)>,\<ell\><rsup|1><rsub|r*k*l><around|(|v|)>|)>.
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
  The probe is <math|S<rsub|w>*<around|(|i*j,k*l;a*b;x|)>=d<rsub|G>*\<cal-D\><rsub|w><rsup|a*b><around|(|H<around|(|x|)>|)>>;
  the vacuum contribution to a one-point <math|00> entry is <math|w<rsub|0>>.
  Substitution of <eqref|eq:ex-trace-green-hessian> into the curl factors
  gives

  <\align>
    <tformat|<table|<row|<cell|S<rsub|w>*<around|(|01,01;00;e<rsub|0>|)>>|<cell|=d<rsub|G>*\<nu\><rsup|2>*<around|(|32*w<rsub|1>+64*w<rsub|2>|)>,<eq-number>>>|<row|<cell|S<rsub|w>*<around|(|12,12;00;e<rsub|0>|)>>|<cell|=d<rsub|G>*\<nu\><rsup|2>*<around|(|64*w<rsub|2>|)>,<eq-number>>>|<row|<cell|S<rsub|w>*<around|(|02,12;01;e<rsub|0>|)>>|<cell|=d<rsub|G>*\<nu\><rsup|2>*<around|(|-16*w<rsub|3>|)>.<eq-number><label|eq:ex-trace-vacuum-probes>>>>>
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
  <math|S<rsub|w>*<around|(|i*j,k*l;a*b;x|)>> is the stress response with
  field-pair insertion <math|<around|(|i*j,k*l|)>>, output component
  <math|<around|(|a,b|)>>, and separation <math|x>. For the stress
  <math|T<rsub|w>> with coefficient vector <math|w> and zero skim, linearity
  and <eqref|eq:ex-trace-derivative-compatibility> give

  <\equation*>
    \<phi\><rsub|1>*<around|(|D<rsub|0>*T<rsub|w>|)>=<big|sum><rsub|u>\<partial\><rsub|u>*S<rsub|w>*<around|(|01,01;u*0;e<rsub|0>|)>,<space|2em>\<phi\><rsub|2>*<around|(|D<rsub|0>*T<rsub|w>|)>=<big|sum><rsub|u>\<partial\><rsub|u>*S<rsub|w>*<around|(|12,12;u*0;e<rsub|0>|)>.
  </equation*>

  Differentiating the chain product gives

  <\equation*>
    \<partial\><rsub|u>*\<cal-C\>=<around|(|\<partial\><rsub|u>*C<rsub|a*b;i*j>|)>*C<rsub|c*d;k*l>+C<rsub|a*b;i*j>*<around|(|\<partial\><rsub|u>*C<rsub|c*d;k*l>|)>+<around|(|\<partial\><rsub|u>*C<rsub|a*b;k*l>|)>*C<rsub|c*d;i*j>+C<rsub|a*b;k*l>*<around|(|\<partial\><rsub|u>*C<rsub|c*d;i*j>|)>.
  </equation*>

  Inserting <eqref|eq:ex-trace-green-hessian>\U
  <eqref|eq:ex-trace-green-third> and summing <math|u=0,1,2,3> gives

  <\align>
    <tformat|<table|<row|<cell|<big|sum><rsub|u>\<partial\><rsub|u>*S<rsub|w>*<around|(|01,01;u*0;e<rsub|0>|)>>|<cell|=d<rsub|G>*\<nu\><rsup|2>*<around|(|-256*w<rsub|1>-512*w<rsub|2>+128*w<rsub|3>|)>,<eq-number>>>|<row|<cell|<big|sum><rsub|u>\<partial\><rsub|u>*S<rsub|w>*<around|(|12,12;u*0;e<rsub|0>|)>>|<cell|=d<rsub|G>*\<nu\><rsup|2>*<around|(|-512*w<rsub|2>-128*w<rsub|3>|)>.<eq-number><label|eq:ex-trace-divergence-probes>>>>>
  </align>

  The two coefficient rows in <math|<around|(|w<rsub|1>,w<rsub|2>,w<rsub|3>|)>>
  are linearly independent. Consequently <math|\<phi\><rsub|1>\<circ\>D<rsub|0>>
  and <math|\<phi\><rsub|2>\<circ\>D<rsub|0>> are independent, so
  <math|\<phi\><rsub|1>,\<phi\><rsub|2>> are independent on
  <math|\<cal-V\><rsub|5>>. Together with the upper bound <math|dim
  \<cal-V\><rsub|5>\<leqslant\>2>, this gives <math|dim \<cal-V\><rsub|5>=2>,
  and <math|\<Phi\>=<around|(|\<phi\><rsub|1>,\<phi\><rsub|2>|)>:\<cal-V\><rsub|5>\<to\>\<bbb-R\><rsup|2>>
  is an isomorphism. The two probe equations have common kernel
  <math|\<bbb-R\><around|(|1,-1/4,1|)>> on
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

  <subsection|Branch moments and trace washout><label|sec:ex-trace-branch-moments>

  Fix a closed subgroup of a finite-dimensional unitary group whose real Lie
  algebra is nonabelian and simple; the group itself may be disconnected.
  Work on one selected history and with the same three tensor families and
  chart as in the physical stress construction. All spaces below are finite
  dimensional. The four coordinate axes form the set
  <math|I=<around|{|0,1,2,3|}>>. Let <math|E<rsub|4>> be the complex space of
  grade-four labels, let <math|\<cal-F\><rsub|4><rsup|<math-up|int>>> be the
  grade-four field space of the selected interacting table, and let
  <math|\<cal-F\><rsub|4><rsup|0>> be that of the standard table. The maps
  are complex linear unless stated otherwise. Write
  <math|\<pi\>:E<rsub|4>\<to\>\<cal-F\><rsub|4><rsup|<math-up|int>>> and
  <math|\<pi\><rsub|0>:E<rsub|4>\<to\>\<cal-F\><rsub|4><rsup|0>> for the
  projections, <math|\<frak-c\>> and <math|\<frak-c\><rsub|0>> for centering,
  and <math|\<b-1\><rsub|4>,\<b-1\><rsub|4><rsup|0>> for the corresponding
  unit fields. Thus <math|\<frak-c\>*f=f-<around|\<langle\>|f|\<rangle\>>*\<b-1\><rsub|4>>.
  The centering map is idempotent and its range is the space of centered
  fields, using the table unit law <math|<around|\<langle\>|\<b-1\><rsub|4>|\<rangle\>>=1>;
  the standard table has the same unit law.

  The branch set is <math|<around|{|0,-,+|}>>: <math|0> is the principal
  branch, <math|-> is the false correction and <math|+> is the true
  correction. In the underlying finite-volume construction these are
  respectively the selected principal field and the two fixed correction
  fields. To specify the choice, let <math|J<rsub|a*c>,Q<rsub|d>,H<rsub|a*c*d>>
  be the selected tensor, trace-current and antisymmetry fields at a finite
  volume. Let a superscript <math|<around|[|r|]>> denote the same finite
  localization of each field and let <math|\<nabla\><rsub|d>> be the forward
  lattice difference. At localization radius <math|r> the principal field is

  <\equation*>
    J<rsup|0><rsub|a*c>=<choice|<tformat|<table|<row|<cell|<big|sum><rsub|d>\<nabla\><rsub|d>*Q<rsub|d><rsup|<around|[|r|]>>-<big|sum><rsub|j\<ne\>0>J<rsub|j*j><rsup|<around|[|r|]>>,>|<cell|a=c=0,>>|<row|<cell|J<rsub|c*a><rsup|<around|[|r|]>>-<big|sum><rsub|d>\<nabla\><rsub|d>*H<rsub|c*a*d><rsup|<around|[|r|]>>,>|<cell|c\<less\>a,>>|<row|<cell|J<rsub|a*c><rsup|<around|[|r|]>>,>|<cell|<text|otherwise>.>>>>>
  </equation*>

  At scale <math|k> the principal field's common localization radius is
  <math|\<varrho\><rsub|k>=1000<around|\<lceil\>|<around|(|log
  <wide|\<beta\>|^><rsub|k>|)><rsup|2>|\<rceil\>>>, where
  <math|<wide|\<beta\>|^><rsub|k>> is the positive clock introduced below;
  here <math|r=\<varrho\><rsub|k>>. In particular
  <math|<big|sum><rsub|a>J<rsup|0><rsub|a*a>=<big|sum><rsub|d>\<nabla\><rsub|d>*Q<rsub|d><rsup|<around|[|r|]>>>
  exactly. For the two corrections, let <math|B<rsub|a*d,c*d>> be the real
  inner product of the two lattice curvatures with the common index <math|d>,
  evaluated at the same lattice site. Their components are

  <\equation*>
    J<rsup|-><rsub|a*c>=<choice|<tformat|<table|<row|<cell|0,>|<cell|a=c,>>|<row|<cell|<big|sum><rsub|d>B<rsub|a*d,c*d>,>|<cell|a\<ne\>c,>>>>><space|2em>J<rsup|+><rsub|a*c>=<choice|<tformat|<table|<row|<cell|<frac|1|4>*<big|sum><rsub|j,d>B<rsub|j*d,j*d>,>|<cell|a=c,>>|<row|<cell|0,>|<cell|a\<ne\>c.>>>>>
  </equation*>

  These formulas are translated from the origin to the relevant lattice site.
  The three branches use the same extraction ultrafilter, finite-volume
  choices and scale history, with no new subsequence; their recorded labels
  may differ. At scale <math|k>, let <math|x<rsup|b><rsub|k>*<around|(|a,c|)>\<in\>E<rsub|4>>
  be the recorded label of <math|J<rsup|b><rsub|a*c>>, with
  <math|a,c\<in\>I>. Let <math|<math-ss|R>> be the real-linear finite
  signed-symmetry average on arrays of labels and set

  <\equation*>
    <math-up|sym><around|(|x|)><rsub|a*c>=<tfrac|1|2><around|(|x<rsub|a*c>+x<rsub|c*a>|)>,<space|2em>t<rsup|b><rsub|k>=\<frak-c\>*<space|0.17em>\<pi\><math-ss|R><math-up|sym><around|(|x<rsup|b><rsub|k>|)>.
  </equation*>

  The notation means componentwise application of <math|\<pi\>> and
  <math|\<frak-c\>>. The symmetry average permutes the axes and applies the
  corresponding label map, with the two tensor signs; it includes the
  real-structure average. Its normalized weights sum to one. The table
  projection intertwines these label motions with the corresponding
  real-linear field motions, and those field motions are fixed, bounded maps.
  In particular, for a diagonal trace, reindexing the axes cancels the
  squared signs. Put <math|<math-up|tr><space|0.17em>t=<big|sum><rsub|a\<in\>I>t<rsub|a*a>>.

  For a triple <math|w=<around|(|w<rsub|1>,w<rsub|2>,w<rsub|3>|)>\<in\>\<bbb-R\><rsup|3>>,
  define the label-valued material tensor by

  <\equation>
    \<cal-S\><around|(|w|)><rsub|a*c>=<choice|<tformat|<table|<row|<cell|w<rsub|1>*<big|sum><rsub|j>P<rsub|a*j,a*j>+w<rsub|2>*<big|sum><rsub|i,j>P<rsub|i*j,i*j>,>|<cell|a=c,>>|<row|<cell|w<rsub|3>*<big|sum><rsub|j>P<rsub|a*j,c*j>,>|<cell|a\<ne\>c,>>>>><space|2em>M<around|(|w|)><rsub|a*c>=\<pi\><rsub|0>*\<cal-S\><around|(|w|)><rsub|a*c>.<label|eq:ex-branch-material>
  </equation>

  Here <math|P<rsub|i*j,k*l>\<in\>E<rsub|4>> is the coordinate representative
  of the label whose value on a Taylor jet is the real color inner product
  <math|<around|\<langle\>|F<rsub|i*j>,F<rsub|k*l>|\<rangle\>>>; no
  additional factor is included. The axis sums are ordered. There is no
  scalar-unit term in <eqref|eq:ex-branch-material>; the full four-component
  coefficient is <math|<around|(|0,w<rsub|1>,w<rsub|2>,w<rsub|3>|)>>. The map
  <math|w\<mapsto\>\<cal-S\><around|(|w|)>> is injective. To see this, let
  <math|v> be a nonzero real color vector. On a jet with only
  <math|F<rsub|01>=v> and <math|F<rsub|10>=-v>, the <math|<around|(|2,2|)>>
  and <math|<around|(|0,0|)>> entries are respectively
  <math|2*w<rsub|2>*<around|\<langle\>|v,v|\<rangle\>>> and
  <math|<around|(|w<rsub|1>+2*w<rsub|2>|)>*<around|\<langle\>|v,v|\<rangle\>>>;
  if the tensor is zero, <math|w<rsub|2>=w<rsub|1>=0>. On a jet with
  <math|F<rsub|02>=F<rsub|12>=v> and their antisymmetric partners, its
  <math|<around|(|0,1|)>> entry is <math|w<rsub|3>*<around|\<langle\>|v,v|\<rangle\>>>,
  so <math|w<rsub|3>=0>. Exchange of the curvature pairs shows
  <math|\<cal-S\><around|(|w|)><rsub|a*c>=\<cal-S\><around|(|w|)><rsub|c*a>>.
  A signed permutation sends <math|F<rsub|i*j>> to
  <math|\<epsilon\><rsub|i>*\<epsilon\><rsub|j>*F<rsub|\<sigma\><around|(|i|)>*\<sigma\><around|(|j|)>>>.
  In a contracted pair the repeated sign squares to one, and reindexing the
  sums gives the two tensor signs. The diagonal terms transform likewise, and
  both the curvature-pair labels and real coefficients are fixed by the real
  structure. Thus the signed and real symmetry average fixes
  <math|\<cal-S\><around|(|w|)>>. The branch coefficients are

  <\equation>
    w<rsup|0>=<around|(|-1,<tfrac|1|4>,-1|)>,<space|2em>w<rsup|->=<around|(|0,0,1|)>,<space|2em>w<rsup|+>=<around|(|0,<tfrac|1|4>,0|)>.<label|eq:ex-branch-coefficients>
  </equation>

  Define the normalized scalar field <math|\<cal-O\>=\<pi\><rsub|0><around|(|<tfrac|1|4><big|sum><rsub|i,j>P<rsub|i*j,i*j>|)>>.
  Taking the four diagonal entries in <eqref|eq:ex-branch-material> gives,
  for every <math|w>,

  <\equation>
    <math-up|tr><space|0.17em>M<around|(|w|)>=4*<around|(|w<rsub|1>+4*w<rsub|2>|)>*\<cal-O\>.<label|eq:ex-branch-material-trace>
  </equation>

  Consequently

  <\equation>
    <math-up|tr><space|0.17em>M<around|(|w<rsup|0>|)>=<math-up|tr><space|0.17em>M<around|(|w<rsup|->|)>=0,<space|2em><math-up|tr><space|0.17em>M<around|(|w<rsup|+>|)>=4*\<cal-O\>.<label|eq:ex-branch-three-traces>
  </equation>

  We use the standard-table one-point fact that each curvature-pair label has
  expectation zero and the unit has expectation one. In the free table the
  pair labels are Wick ordered. Thus the expectation of each
  <math|M<around|(|w|)><rsub|a*c>> is zero because its unit coefficient is
  zero. Hence <math|\<frak-c\><rsub|0>*\<pi\><rsub|0>*\<cal-S\><around|(|w|)>=M<around|(|w|)>>.

  Let <math|k<rsub|i>> be the selected level, tending to infinity with the
  chart index <math|i>, and let <math|<wide|\<beta\>|^><rsub|k>\<gtr\>0> and
  <math|a<rsub|k>\<gtr\>0> be its inverse-coupling clock and mesh. Denote by
  <math|B<rsub|k>:E<rsub|4>\<to\>E<rsub|4>> the selected transport, by
  <math|U<rsub|i>:\<cal-F\><rsub|4><rsup|0>\<to\>\<cal-F\><rsub|4><rsup|<math-up|int>>>
  the chart isomorphism, and by <math|\<omega\><rsub|i>\<gtr\>0> its
  grade-four normalization factor. Explicitly
  <math|\<omega\><rsub|i>=\<beta\><rsub|Z><around|(|k<rsub|i>|)>*r<rsub|i><rsup|4>>,
  where <math|r<rsub|i>> is the chart radius and <math|\<beta\><rsub|Z>> is
  the associated effective coupling. More explicitly, if <math|A<rsub|k>> is
  the selected label automorphism of <math|E<rsub|4>>, <math|K> is the core
  projection and <math|\<vartheta\><rsub|k>\<gtr\>0> is the threshold, then

  <\equation*>
    B<rsub|k>=\<vartheta\><rsub|k><rsup|-2>*K*A<rsub|k>,<space|2em>V<rsub|k,c>=\<pi\>*<space|0.17em><around|(|c*\<vartheta\><rsub|k><rsup|2>*A<rsub|k><rsup|-1>|)>.
  </equation*>

  The centered moment map and the scaled field map are

  <\equation>
    <math-ss|M><rsub|i>=U<rsub|i><rsup|-1>*\<frak-c\>*V<rsub|k<rsub|i>,\<omega\><rsub|i>>:E<rsub|4>\<to\>\<cal-F\><rsub|4><rsup|0>,<space|2em><math-ss|P><rsub|i>=\<omega\><rsub|i>*U<rsub|i><rsup|-1>:\<cal-F\><rsub|4><rsup|<math-up|int>>\<to\>\<cal-F\><rsub|4><rsup|0>.<label|eq:ex-branch-moment-map>
  </equation>

  The transport and chart normalization give, for all sufficiently large
  <math|i>,

  <\equation>
    <math-ss|M><rsub|i>B<rsub|k<rsub|i>>*x=<math-ss|P><rsub|i>\<frak-c\>*\<pi\>*x*<space|1em><around|(|x\<in\>E<rsub|4>|)>.<label|eq:ex-branch-chart-identity>
  </equation>

  To see the normalization, <math|V<rsub|k,c>*B<rsub|k>*x=c*\<pi\>*A<rsub|k><rsup|-1>*K*A<rsub|k>*x>.
  The difference between <math|A<rsub|k><rsup|-1>*K*A<rsub|k>*x> and <math|x>
  is a multiple of <math|A<rsub|k><rsup|-1>*e<rsub|0>>, where
  <math|e<rsub|0>> is the scalar coordinate label. At the selected cutoff
  <math|A<rsub|k>> sends the reference unit label to
  <math|a<rsub|k><rsup|4>*e<rsub|0>>. The reference unit projects to
  <math|\<b-1\><rsub|4>>, so <math|\<pi\>*A<rsub|k><rsup|-1>*e<rsub|0>=a<rsub|k><rsup|-4>*\<b-1\><rsub|4>>
  and centering removes the difference. Applying <math|U<rsub|i><rsup|-1>>
  yields the identity. The cutoff after which this holds is fixed before
  taking <math|i\<to\>\<infty\>>. Let <math|W<rsup|b><rsub|k>=<math-ss|R><around|(|B<rsub|k>*x<rsup|b><rsub|k>|)>>,
  componentwise, and <math|W<rsup|b>=\<cal-S\><around|(|w<rsup|b>|)>>. The
  following are the incoming chart limits, stated in their actual limit
  order:

  <\align>
    <tformat|<table|<row|<cell|W<rsup|b><rsub|k>>|<cell|\<longrightarrow\>W<rsup|b>>|<cell|>|<cell|<around|(|k\<to\>\<infty\>,b=0,-,+|)>,<eq-number><label|eq:ex-branch-coefficient-input>>>|<row|<cell|<math-ss|M><rsub|i>>|<cell|\<longrightarrow\><math-ss|M><rsub|\<infty\>>\<assign\>\<frak-c\><rsub|0>*\<pi\><rsub|0>>|<cell|>|<cell|<text|in
    operator norm as >i\<to\>\<infty\>.<eq-number><label|eq:ex-branch-moment-input>>>>>
  </align>

  These limits depend on the selected finite-volume transport and chart
  estimates. In the first, the separation-ultrafilter limit is taken at fixed
  <math|k> before <math|k\<to\>\<infty\>>. The existing weighted-estimate
  construction uses the same reference coefficient limit, and its
  quantitative inputs remain subject to the gaps recorded there. We record
  the actual finite-volume passage yielding
  <eqref|eq:ex-branch-coefficient-input>. Let
  <math|T:\<bbb-R\><rsup|3>\<to\>E<rsub|4><rsup|I\<times\>I>> send <math|w>
  to <math|\<cal-S\><around|(|w|)>>. For each <math|k> let
  <math|R<rsub|k><around|(|u|)>> be the recorded finite-volume coefficient
  array before symmetry averaging and <math|C<rsup|b><rsub|k><around|(|u|)>>
  the corresponding finite-volume branch coefficient, with <math|u> the
  separation parameter. Equip these arrays with the finite-product supremum
  norm induced by the coordinate norm. The incoming estimates say that the
  nonnegative loss

  <\equation*>
    \<delta\><rsub|k>=exp <space|-0.17em><around*|[|-<tfrac|1|4><around|(|log
    log <wide|\<beta\>|^><rsub|k>|)><rsup|2>|]>
  </equation*>

  satisfies, eventually in <math|k> and on an ultrafilter-large set of
  <math|u>,

  <\equation*>
    <around|\<\|\|\>|R<rsub|k><around|(|u|)>-C<rsup|b><rsub|k><around|(|u|)>|\<\|\|\>>\<leqslant\>\<delta\><rsub|k>.
  </equation*>

  The threshold normalization explains this loss. For one component, let
  <math|z> be its local coefficient, <math|\<xi\>> its purchased readout,
  <math|\<Gamma\>> the finite-volume column map, and <math|v> the purchased
  label. The local pricing and zero-scalar identities give
  <math|\<xi\>=\<vartheta\><rsub|k><rsup|2>*z> and <math|K*z=z>; the
  purchased bias says <math|<around|\<\|\|\>|\<xi\>-\<Gamma\>*v|\<\|\|\>><rsub|<math-up|c>>\<leqslant\>\<vartheta\><rsub|k><rsup|2>*\<delta\><rsub|k>>,
  with <math|\<vartheta\><rsub|k>\<gtr\>0>. The recorded coefficient is
  <math|\<vartheta\><rsub|k><rsup|-2>*K*\<Gamma\>*v>. Write
  <math|<around|\<\|\|\>|\<cdummy\>|\<\|\|\>><rsub|<math-up|c>>> for the sum
  of the absolute coordinate values. Since <math|K> contracts the coordinate
  supremum norm and that norm is bounded by
  <math|<around|\<\|\|\>|\<cdummy\>|\<\|\|\>><rsub|<math-up|c>>>, the bias
  gives

  <\equation*>
    <around|\<\|\|\>|z-\<vartheta\><rsub|k><rsup|-2>*K*\<Gamma\>*v|\<\|\|\>><rsub|\<infty\>>\<leqslant\>\<vartheta\><rsub|k><rsup|-2>*<around|\<\|\|\>|\<xi\>-\<Gamma\>*v|\<\|\|\>><rsub|<math-up|c>>\<leqslant\>\<delta\><rsub|k>.
  </equation*>

  Taking the maximum over the finitely many components gives the displayed
  array estimate. The weighted readout acts on each coordinate by the
  threshold raised to its color-factor count. The simple-group low-grade
  classification gives count two at every non-scalar coordinate; the scalar
  coordinate of <math|z> is its zero-jet evaluation, which equals the
  observable's value at the identity and vanishes for these branches. Thus
  the weighted-readout definition gives <math|\<xi\>=\<vartheta\><rsub|k><rsup|2>*z>
  coordinate by coordinate. The local identification of this weighted
  readout, the zero-jet reading, and the purchased bias are inputs here. The
  selected clock tends to infinity, so <math|\<delta\><rsub|k>\<to\>0>: its
  logarithm is minus one quarter of a quantity tending to infinity. Also, for
  each <math|\<varepsilon\>\<gtr\>0>, eventually in <math|k> and on an
  ultrafilter-large set of <math|u> there is <math|w=w*<around|(|k,u|)>> with
  <math|<around|\<\|\|\>|w-w<rsup|b>|\<\|\|\>>\<leqslant\>\<varepsilon\>> and
  <math|<math-ss|R>C<rsup|b><rsub|k><around|(|u|)>=T*w>. The two correction
  branches use their displayed coefficient triples exactly; the principal
  coefficient is controlled only asymptotically. Finally, at every
  sufficiently large fixed <math|k> the ultrafilter limit of
  <math|<math-ss|R>R<rsub|k><around|(|u|)>> is the previously defined
  <math|W<rsup|b><rsub|k>>.

  Intersecting the two large sets at fixed <math|k> gives

  <\equation*>
    <around|\<\|\|\>|<math-ss|R>R<rsub|k><around|(|u|)>-T*w<rsup|b>|\<\|\|\>>\<leqslant\><around|\<\|\|\>|<math-ss|R>|\<\|\|\>>*\<delta\><rsub|k>+<around|\<\|\|\>|T|\<\|\|\>>*\<varepsilon\>.
  </equation*>

  The norm is continuous and the displayed closed ball is preserved by the
  ultrafilter limit, so the same bound holds with <math|W<rsup|b><rsub|k>> on
  the left. First let <math|k\<to\>\<infty\>>, then let
  <math|\<varepsilon\>*\<downarrow\>*0>: this proves
  <eqref|eq:ex-branch-coefficient-input>. The purchased bias and the
  existence of the finite-volume coefficient witnesses are retained inputs;
  this finite-dimensional passage does not construct them.

  The principal witness can be obtained from the local projection and the
  canonical stress classification, subject to the following local inputs.
  Assume the coefficient projection is linear on the finite sums below and
  annihilates each forward difference of the localized trace and antisymmetry
  currents. Assume also that the local principal coefficients have zero
  scalar coordinate. The exact finite-volume antisymmetry identity expresses
  each difference between transposed entries as a sum of those forward
  differences. Their projected coefficients therefore form a symmetric array.
  Its finite signed and real-structure average is a real covariant symmetric
  tensor with zero scalar coordinate. The free stress classification in
  Subsection<nbsp><reference|sec:ex-lattice-trace-free-rank> expresses it as
  <math|T*w> for a triple <math|w>, giving the required witness. The
  trace-current identity and the same vanishing give
  <math|<math-up|tr><space|0.17em>T*w=0>; evaluation on a nonzero <math|01>
  curvature jet yields <math|w<rsub|1>+4*w<rsub|2>=0>. This exact local
  constraint does not give a rate for the recorded field trace. The
  difference-projection identity follows from the local affine-test identity:
  translating an affine test changes its potential by an infinitesimal gauge
  term. The current's first variation at the identity vanishes: global gauge
  invariance makes its restriction to each link an invariant linear
  functional on the simple color algebra. Such a functional annihilates all
  brackets, which span the nonabelian simple algebra, so it is zero.
  Differentiating gauge invariance at the identity then shows that the
  Hessian annihilates an infinitesimal gauge direction in either argument:
  the mixed derivative of the gauge action is multiplied by the already
  vanishing first variation. This also uses the local realization of the
  gauge term on the nonwrapping support. The Hessian therefore agrees on the
  original and translated affine tests. The forward difference consequently
  has zero Hessian on each such test direction paired with itself. Its value
  at the identity is also zero, and the grade-four jet-reading identity makes
  every jet evaluation of its local coefficient zero; the coefficient itself
  is zero. This application uses the affine translation identity, local
  regularity and nonwrapping of its designated neighborhood, Taylor order at
  least four, side length at least <math|40>, and the selected local
  certificates for the antisymmetry currents and their differences. In the
  selected construction the same finite-volume certificate supplies these
  local current and difference bounds for every axis on a common
  ultrafilter-large set at each sufficiently large scale. The existence of
  those choices and their local bounds remains an input here; the
  finite-dimensional classification does not itself produce them.

  For the principal branch, the closeness of these witnesses has a useful
  sequential reduction. Let <math|t<rsub|n>\<to\>\<infty\>> be any sequence
  of inverse couplings and let the finite-volume data be admissible at each
  <math|t<rsub|n>>, with side length tending to infinity, the prescribed
  nonwrapping neighborhood, and Taylor order at least four. The local
  comparison supplies two Hessian estimates for each fixed pair of the
  finitely supported elementary test directions of total degree at most four.
  Fixing a pair of tensor indices, let <math|Q<rsub|n>> be the corresponding
  unmodified local observable and <math|<wide|Q|~><rsub|n>> its principal
  modification; their second derivatives on those directions differ by at
  most <math|16*t<rsub|n><rsup|-30>>, while the derivative of
  <math|Q<rsub|n>> differs from the prescribed limiting bilinear form by at
  most <math|t<rsub|n><rsup|-100>>. For the first bound, write the Hessian of
  <math|Q<rsub|n>-<wide|Q|~><rsub|n>> in lattice coordinates. If
  <math|r<rsub|i>> is the distance weight of coordinate <math|i>, each
  elementary direction has <math|<around|\||v<rsub|i>|\|>\<leqslant\>4*<around|(|1+r<rsub|i>|)><rsup|2>>.
  Thus the product of coordinates from the two directions is at most
  <math|16*<around|(|1+max <around|(|r<rsub|i>,r<rsub|j>|)>|)><rsup|4>>. The
  weighted Hessian coefficient sum controlling the modification dominates
  this polynomial weight and is at most <math|t<rsub|n><rsup|-30>>; summing
  the coordinate expansion gives the factor <math|16>. The weighted
  coefficient estimate and the elementary direction bound are the local
  inputs used here. The canonical quadratic stencil has derivatives
  converging to that same form as the side length grows. Thus the
  corresponding derivative of <math|<wide|Q|~><rsub|n>> and that of the
  canonical stencil have the same limit. These estimates use the local
  regularity and comparison inputs and are not consequences of the later
  field limit.

  The resulting Taylor-coefficient convergence follows as follows. A
  first-order jet produces a lattice test direction which is a finite linear
  combination of those elementary directions. Bilinearity and the preceding
  bounds therefore give convergence of the second derivative on this test
  direction paired with itself. The grade-four jet-reading identity expresses
  the label evaluated at a jet as the observable's value at the identity plus
  one half of this second derivative. For the principal observable the
  identity value is zero, and the same identity for the canonical stencil
  identifies the limit with the evaluation of the canonical stress label.
  This uses the jet-reading and canonical-stencil identities under the
  simple-group, regularity, nonwrapping and order hypotheses; they are
  external inputs here. The jet evaluations separate the finite-dimensional
  label space, so finitely many of them already separate it. Their joint
  linear map has a continuous left inverse onto its image. Consequently the
  unsymmetrized coefficient array <math|C<rsub|n>> tends entrywise to
  <math|T*w<rsup|0>>. The limiting material array is fixed by the finite
  symmetry average, so <math|<math-ss|R>C<rsub|n>\<to\>T*w<rsup|0>>. If
  <math|w<rsub|n>> is any associated coefficient witness with
  <math|<math-ss|R>C<rsub|n>=T*w<rsub|n>>, then
  <math|w<rsub|n>\<to\>w<rsup|0>>. Indeed, the material coefficient map is
  injective by the curvature-jet calculation above; choose a fixed linear
  left inverse on its finite-dimensional range and apply it to the
  convergence.

  This sequential statement yields the eventual uniform estimate required
  above. Otherwise, for some <math|\<varepsilon\>\<gtr\>0>, choose
  counterexamples with <math|t<rsub|n>\<geqslant\>n> and
  <math|<around|\<\|\|\>|w<rsub|n>-w<rsup|0>|\<\|\|\>>\<geqslant\>\<varepsilon\>>.
  Their admissible side length <math|N<rsub|n>> satisfies
  <math|N<rsub|n>\<gtr\>20*<around|(|H<around|(|t<rsub|n>|)>+10|)>>, with
  <math|H> the neighborhood radius defined below. Since
  <math|H<around|(|t<rsub|n>|)>\<to\>\<infty\>>, the chosen data meet the
  sequential hypotheses. The preceding convergence is a contradiction. The
  local projection certificates, weighted Hessian bound, unmodified Hessian
  comparison, jet-reading identities and neighborhood-size growth are
  retained inputs. For the two correction branches the coefficient identities
  follow directly from their finite-volume curvature products. The curvature
  vanishes at the identity configuration, so for a lattice test direction
  <math|v>,

  <\equation*>
    <tfrac|1|2>D<rsup|2>*<around|\<langle\>|F<rsub|i*j>,F<rsub|k*l>|\<rangle\>><rsub|1><around|[|v,v|]>=<around|\<langle\>|D*F<rsub|i*j><around|(|1|)><around|[|v|]>,D*F<rsub|k*l><around|(|1|)><around|[|v|]>|\<rangle\>>.
  </equation*>

  On the affine test associated with a degree-zero radial jet, the two
  linearized lattice curvatures are exactly the corresponding components of
  that jet, provided the test stencil is nonwrapping. The grade-four
  jet-reading identity then identifies this Hessian with
  <math|P<rsub|i*j,k*l>>. Taking the displayed finite sums gives
  <math|w<rsup|->=<around|(|0,0,1|)>> and
  <math|w<rsup|+>=<around|(|0,<tfrac|1|4>,0|)>> entry by entry, including
  their zero entries. Their material tensors are invariant under the finite
  tensor-symmetry average, so the same identities hold after that average.
  This uses the local curvature-stencil and jet-reading identities as inputs
  and does not infer an exact finite-volume equality from a continuum limit.

  The same local identities give a useful, but slower, trace estimate. For
  <math|b\<in\><around|{|0,-|}>> the trace of
  <math|<math-ss|R>C<rsup|b><rsub|k><around|(|u|)>> is zero on the relevant
  large set: for <math|b=0> this is the exact local constraint above, and for
  <math|b=-> it follows from the zero diagonal. Applying the finite trace map
  to <math|<math-ss|R><around|(|R<rsub|k><around|(|u|)>-C<rsup|b><rsub|k><around|(|u|)>|)>>
  and then taking the fixed-scale ultrafilter limit gives

  <\equation*>
    <around|\<\|\|\>|<math-up|tr><space|0.17em>W<rsup|b><rsub|k>|\<\|\|\>>\<leqslant\>4<around|\<\|\|\>|<math-ss|R>|\<\|\|\>>*\<delta\><rsub|k><space|2em>(b=0,-).
  </equation*>

  The factor four counts the diagonal entries. This does not prove the
  weighted trace limit: for each fixed <math|p\<gtr\>0>,
  <math|<wide|\<beta\>|^><rsub|k><rsup|p>*\<delta\><rsub|k>\<to\>\<infty\>>.
  Indeed, for <math|y=log <wide|\<beta\>|^><rsub|k>>, the bound <math|log
  y\<leqslant\>4*y<rsup|1/4>> makes the logarithm of this product at least
  <math|p*y-4*<sqrt|y>\<to\>\<infty\>>. On the other hand,
  <math|<around|(|log <wide|\<beta\>|^><rsub|k>|)><rsup|m>*\<delta\><rsub|k>\<to\>0>
  for every fixed <math|m\<in\>\<bbb-N\>>, since its logarithm is <math|m*log
  y-<around|(|log y|)><rsup|2>/4>. The fast recording argument below supplies
  a stronger estimate.

  The moment-map convergence is a separate grade-four chart input: the
  normalized transported lift tends to the core projection, the scalar
  complement is annihilated by centering, and the chart expectations
  converge. On the finite-dimensional label space, these statements give
  operator-norm convergence. We spell out the selected two-scale passage
  behind the normalized lift. Let <math|m<rsub|i>> be the selected initial
  level, so <math|m<rsub|i>\<to\>\<infty\>>, and let <math|k<rsub|i>> be its
  prescribed summit. The simple group's grade-four reference projection is an
  isomorphism. To see this, use the low-grade decomposition in
  Subsection<nbsp><reference|sec:ex-lattice-trace-free-rank>: after the
  invariant linear terms vanish, a grade-four label is a constant plus a
  quadratic expression depending only on its degree-zero radial jet. Every
  such jet is realized by a constant-curvature affine Maxwell solution: for
  prescribed antisymmetric <math|F<rsub|a*b>> take
  <math|A<rsub|b><around|(|x|)>=<frac|1|2>*<big|sum><rsub|a>F<rsub|a*b>*x<rsub|a>>.
  Its curvature is <math|F>, and all curvature derivatives, including the
  Maxwell divergence, vanish. A label in the free equation ideal therefore
  vanishes on every degree-zero jet and hence on every jet. The standard
  table identifies the kernel of its projection with that equation ideal, an
  earlier free-table input. The kernel is zero, and the projection is onto by
  construction. In particular <math|\<cal-O\>\<ne\>0>: on an affine Maxwell
  solution with <math|F<rsub|01>=v>, <math|F<rsub|10>=-v> and all other
  curvature components zero, its unprojected label evaluates to
  <math|<tfrac|1|2><around|\<langle\>|v,v|\<rangle\>>\<gtr\>0> for any
  nonzero color vector <math|v>. Injectivity preserves its nonvanishing. All
  three material tensors are nonzero: every <math|w<rsup|b>\<ne\>0>, and both
  the material coefficient map and <math|\<pi\><rsub|0>> are injective. In
  particular the false material tensor is nonzero although its trace vanishes
  by <eqref|eq:ex-branch-three-traces>. Write
  <math|\<ell\>=\<pi\><rsub|0><rsup|-1>>. Let
  <math|Y<rsub|i>:\<cal-F\><rsub|4><rsup|0>\<to\>E<rsub|4>> be the selected
  label lift, and set <math|\<varpi\><rsub|i>=\<beta\><rsub|Z><around|(|m<rsub|i>|)>*r<rsub|i><rsup|4>\<gtr\>0>.
  For each fixed <math|z\<in\>\<cal-F\><rsub|4><rsup|0>>, the incoming local
  chart estimates and the scale comparison below give

  <\align>
    <tformat|<table|<row|<cell|\<varpi\><rsub|i><rsup|-1>*B<rsub|m<rsub|i>>*Y<rsub|i>*z>|<cell|\<longrightarrow\>K*\<ell\>*z,<eq-number><label|eq:ex-branch-lift-initial>>>|<row|<cell|<around|\<\|\|\>|B<rsub|m<rsub|i>>*Y<rsub|i>*z-B<rsub|k<rsub|i>>*Y<rsub|i>*z|\<\|\|\>>>|<cell|\<leqslant\>\<varepsilon\><rsub|i>*<around|\<\|\|\>|B<rsub|k<rsub|i>>*Y<rsub|i>*z|\<\|\|\>>,<space|1em>\<varepsilon\><rsub|i>\<longrightarrow\>0,<eq-number><label|eq:ex-branch-lift-stability>>>|<row|<cell|<frac|\<beta\><rsub|Z><around|(|m<rsub|i>|)>|\<beta\><rsub|Z><around|(|k<rsub|i>|)>>>|<cell|\<longrightarrow\>1.<eq-number><label|eq:ex-branch-lift-beta-ratio>>>>>
  </align>

  The first convergence comes from the fixed-grade local lift estimate after
  division by <math|\<varpi\><rsub|i>>: for each fixed <math|z> its error is
  bounded by a constant depending on <math|z> times <math|exp
  <around|[|-<tfrac|1|2><around|(|log log
  <wide|\<beta\>|^><rsub|m<rsub|i>>|)><rsup|2>|]>>, which tends to zero. We
  spell out its finite-volume normalization. At a fixed initial level
  <math|m>, write <math|\<cal-N\>> for the column map normalized by
  <math|a<rsub|m><rsup|-4>>, <math|\<cal-T\>> for the local chart map, and
  let <math|\<alpha\>> denote the displayed exponential error. The selected
  chart inputs give <math|\<cal-N\>*u<rsub|<math-up|ref>>=\<cal-T\>*u<rsub|<math-up|ref>>=e<rsub|0>>
  and, for every <math|y>,

  <\equation*>
    <around|\<\|\|\>|\<cal-N\>*y-\<cal-T\>*y|\<\|\|\>><rsub|<math-up|c>>\<leqslant\>\<alpha\>*<around|\<\|\|\>|\<cal-N\>*y|\<\|\|\>><rsub|<math-up|c>>,<space|2em><around|\<\|\|\>|\<cal-N\>*y-\<cal-T\>*y|\<\|\|\>><rsub|<math-up|c>>\<leqslant\><tfrac|1|2><around|\<\|\|\>|\<cal-N\>*y|\<\|\|\>><rsub|<math-up|c>>.
  </equation*>

  The second estimate and the triangle inequality give
  <math|<around|\<\|\|\>|\<cal-N\>*y|\<\|\|\>><rsub|<math-up|c>>\<leqslant\>2*<around|\<\|\|\>|\<cal-T\>*y|\<\|\|\>><rsub|<math-up|c>>>.
  For any <math|v>, take <math|y=v-<around|(|\<cal-T\>*v|)><rsub|0>*u<rsub|<math-up|ref>>>.
  Then <math|\<cal-T\>*y=K*\<cal-T\>*v> and
  <math|K*\<cal-N\>*y=K*\<cal-N\>*v>, so the coefficient norm's contraction
  under <math|K> gives

  <\equation*>
    <around|\<\|\|\>|K*<around|(|\<cal-N\>*v-\<cal-T\>*v|)>|\<\|\|\>><rsub|<math-up|c>>\<leqslant\>2*\<alpha\>*<around|\<\|\|\>|K*\<cal-T\>*v|\<\|\|\>><rsub|<math-up|c>>.
  </equation*>

  At grade four the non-scalar coordinates of every label have the required
  homogeneous grade, by the low-grade simple-group classification. For the
  actual finite-volume lift <math|L> of a reference label <math|v>, the
  selected lift identity is <math|K*\<cal-T\>*L*v=\<beta\><rsub|m,u>*\<vartheta\><rsub|m><rsup|2>*h<rsup|4>*K*v>,
  where <math|\<beta\><rsub|m,u>\<gtr\>0>,
  <math|\<vartheta\><rsub|m>\<gtr\>0>, <math|h\<geqslant\>0> and the physical
  radius is <math|a<rsub|m>*h>. The finite-volume counterpart of
  <math|B<rsub|m>*L*v> is <math|\<vartheta\><rsub|m><rsup|-2>*a<rsub|m><rsup|4>*K*\<cal-N\>*L*v>.
  Substituting <math|L*v> into the preceding inequality yields

  <\equation*>
    <around*|\||\<vartheta\><rsub|m><rsup|-2>*a<rsub|m><rsup|4>*K*\<cal-N\>*L*v-\<beta\><rsub|m,u>*<around|(|a<rsub|m>*h|)><rsup|4>*K*v|\|><rsub|<math-up|c>>\<leqslant\>2*\<alpha\>*<space|0.17em>\<beta\><rsub|m,u>*<around|(|a<rsub|m>*h|)><rsup|4>*<around|\<\|\|\>|K*v|\<\|\|\>><rsub|<math-up|c>>.
  </equation*>

  At fixed <math|i> the selected lifts and couplings have their common
  separation-ultrafilter limits, and the selected physical radius is
  <math|r<rsub|i>>. The steep transport property gives the limit of the
  finite-volume transport applied to those moving lifts. Passing to these
  limits gives the stated initial-level estimate; no separate limit of
  <math|\<cal-T\>> is needed. The two finite-volume chart inequalities, lift
  identity and selected limits are the inputs used in this reduction.

  The second estimate is the comparison over the actual interval from the
  initial level to its summit. Its coefficient-size error is

  <\equation*>
    <math-up|part><around|(|m<rsub|i>|)>=exp
    <space|-0.17em><around*|[|-<tfrac|2|5><around|(|log log
    <wide|\<beta\>|^><rsub|m<rsub|i>>|)><rsup|2>|]>.
  </equation*>

  The norm is any fixed norm on <math|E<rsub|4>>; equivalence with the
  coefficient norm transfers the estimate with <math|\<varepsilon\><rsub|i>>
  equal to a fixed positive multiple of <math|<math-up|part><around|(|m<rsub|i>|)>>.
  This tends to zero because the hatted clock at the cofinal initial levels
  tends to infinity. The finite-volume inputs behind these comparisons belong
  to the selected history; they do not follow from a generic chart.

  The interval comparison follows from the actual one-step column bound and
  the scheduled sum budget. At one step, let <math|w> and <math|v> be the
  finite-volume column values at the earlier and later levels, with positive
  thresholds <math|a,b>. The selected one-step input gives
  <math|b/a\<leqslant\>2> and a comparison value <math|X> with

  <\equation*>
    <around|\<\|\|\>|w-X|\<\|\|\>><rsub|<math-up|c>>\<leqslant\>g*<around|\<\|\|\>|K*v|\<\|\|\>><rsub|<math-up|c>>,<space|2em>K*X=<around|(|a/b|)><rsup|2>*K*v.
  </equation*>

  Here <math|g> is the step's nonnegative column error; the second identity
  uses the grade-four homogeneity just noted. Thus

  <\equation*>
    <around|\<\|\|\>|a<rsup|-2>*K*w-b<rsup|-2>*K*v|\<\|\|\>><rsub|<math-up|c>>\<leqslant\>a<rsup|-2>*g*<around|\<\|\|\>|K*v|\<\|\|\>><rsub|<math-up|c>>\<leqslant\>4*g*<around|\<\|\|\>|b<rsup|-2>*K*v|\<\|\|\>><rsub|<math-up|c>>.
  </equation*>

  This is the one-step estimate with coefficient <math|4*g>; the threshold
  and column comparison are selected-construction inputs. To see the
  accumulation, fix a finite-volume label and write <math|u<rsub|j>> for its
  transported value at level <math|j> between an initial level <math|m> and
  its summit <math|k>. Put <math|N=k-m\<gtr\>0> and
  <math|x=<math-up|part><around|(|m|)>\<leqslant\>1>. The selected one-step
  and schedule inputs state that

  <\equation*>
    <around|\<\|\|\>|u<rsub|j>-u<rsub|j+1>|\<\|\|\>><rsub|<math-up|c>>\<leqslant\><frac|x|2*N><around|\<\|\|\>|u<rsub|j+1>|\<\|\|\>><rsub|<math-up|c>>,<space|2em>m\<leqslant\>j\<less\>k.
  </equation*>

  Backward induction gives, for every <math|m\<leqslant\>j\<leqslant\>k>,

  <\equation*>
    <around|\<\|\|\>|u<rsub|j>-u<rsub|k>|\<\|\|\>><rsub|<math-up|c>>\<leqslant\><frac|x*<around|(|k-j|)>|N><around|\<\|\|\>|u<rsub|k>|\<\|\|\>><rsub|<math-up|c>>.
  </equation*>

  Indeed, if this is known at <math|j+1>, the triangle inequality and
  <math|x\<leqslant\>1> give <math|<around|\<\|\|\>|u<rsub|j+1>|\<\|\|\>><rsub|<math-up|c>>\<leqslant\>2<around|\<\|\|\>|u<rsub|k>|\<\|\|\>><rsub|<math-up|c>>>.
  Add the one-step error to the induction bound to obtain the next case; the
  case <math|j=k> is zero. For fixed <math|m,k> and label, the finite-volume
  estimates hold together for the finitely many levels on an
  ultrafilter-large set. Passing to the fixed-scale transport limits gives
  the stated comparison. The threshold and column comparison and the schedule
  hypotheses remain selected-construction inputs; the induction does not
  establish them.

  For the scale ratio, the selected finite-volume running estimate says that
  for every <math|\<epsilon\>\<gtr\>0>, eventually in <math|j>,

  <\equation*>
    <around|\||\<beta\><rsub|j,u>-<wide|\<beta\>|^><rsub|j>|\|>\<leqslant\>\<epsilon\>*s<rsub|j>
  </equation*>

  on an ultrafilter-large set of finite-volume parameters <math|u>. At each
  fixed <math|j>, the same ultrafilter sends <math|\<beta\><rsub|j,u>> to
  <math|\<beta\><rsub|Z><around|(|j|)>>; passing to the closed interval gives
  the same estimate for <math|\<beta\><rsub|Z><around|(|j|)>>. The affine
  clock satisfies <math|<wide|\<beta\>|^><rsub|j>\<geqslant\>b*s<rsub|j>> for
  its positive slope <math|b>. For any <math|\<delta\>\<gtr\>0>, choose
  <math|\<epsilon\>=b*\<delta\>/2> and divide by the positive clock. This
  proves <math|\<beta\><rsub|Z><around|(|j|)>/<wide|\<beta\>|^><rsub|j>\<to\>1>.
  The running estimate and the fixed-scale limit are upstream inputs. The
  summit clock estimate follows from the first-crossing and block-size
  properties of the selected schedule. Write <math|g<rsub|j>> for the gap
  from level <math|j> to its summit and <math|b> for the fixed slope
  constant. Set <math|<math-up|Gate><around|(|x|)>=<around|(|log
  x|)><rsup|48>>. For <math|x\<geqslant\>1>, the inequality
  <math|t\<leqslant\>e<rsup|t>> with <math|t=<around|(|log x|)>/96> gives
  <math|<around|(|log x|)><rsup|48>/x\<leqslant\>96<rsup|48>*x<rsup|-1/2>>,
  so the gate ratio tends to zero. The selected clock tends to infinity.

  The summit is the first later level at which the scale gap reaches the
  gate. Let <math|q> be its preceding level and put
  <math|x=<wide|\<beta\>|^><rsub|j>>. By the first-crossing property,
  <math|0\<leqslant\>s<rsub|q>-s<rsub|j>\<leqslant\><math-up|Gate><around|(|x|)>>.
  The affine clock identity then gives <math|<wide|\<beta\>|^><rsub|q>\<leqslant\>x+b<math-up|Gate><around|(|x|)>\<leqslant\>2*x>
  eventually. The selected schedule has <math|L<rsub|q>\<geqslant\>1> and
  bounds <math|L<rsub|q>> by <math|log <wide|\<beta\>|^><rsub|q>>; its scale
  increment is <math|s<rsub|q+1>-s<rsub|q>=log L<rsub|q>>. Since <math|log
  L<rsub|q>\<leqslant\>L<rsub|q>>, for large <math|x>,

  <\equation*>
    s<rsub|q+1>-s<rsub|q>\<leqslant\>log <wide|\<beta\>|^><rsub|q>\<leqslant\>log
    <around|(|2*x|)>\<leqslant\><math-up|Gate><around|(|x|)>.
  </equation*>

  Adding the pre-crossing gap and this last increment gives
  <math|0\<leqslant\>g<rsub|j>\<leqslant\>2<math-up|Gate><around|(|<wide|\<beta\>|^><rsub|j>|)>>.
  Consequently,

  <\equation*>
    <wide|\<beta\>|^><rsub|<math-up|summit><around|(|j|)>>=<wide|\<beta\>|^><rsub|j>+b*g<rsub|j>,<space|2em>0\<leqslant\><frac|g<rsub|j>|<wide|\<beta\>|^><rsub|j>>\<leqslant\>2*<frac|<math-up|Gate><around|(|<wide|\<beta\>|^><rsub|j>|)>|<wide|\<beta\>|^><rsub|j>>\<longrightarrow\>0.
  </equation*>

  The first-crossing definition and block-size schedule bound are the inputs
  used here. Dividing the identity by the positive
  <math|<wide|\<beta\>|^><rsub|j>> yields
  <math|<wide|\<beta\>|^><rsub|<math-up|summit><around|(|j|)>>/<wide|\<beta\>|^><rsub|j>\<to\>1>,
  and hence the same limit along <math|j=m<rsub|i>>. Since both levels are
  cofinal and the denominators are positive,

  <\equation*>
    <frac|\<beta\><rsub|Z><around|(|m<rsub|i>|)>|\<beta\><rsub|Z><around|(|k<rsub|i>|)>>=<frac|\<beta\><rsub|Z><around|(|m<rsub|i>|)>/<wide|\<beta\>|^><rsub|m<rsub|i>>|<around*|(|\<beta\><rsub|Z><around|(|k<rsub|i>|)>/<wide|\<beta\>|^><rsub|k<rsub|i>>|)>*<around*|(|<wide|\<beta\>|^><rsub|k<rsub|i>>/<wide|\<beta\>|^><rsub|m<rsub|i>>|)>>\<longrightarrow\>1.
  </equation*>

  Thus <eqref|eq:ex-branch-lift-beta-ratio> follows from these two explicit
  scale estimates.

  The same bounds also explain the scheduled budget used in the backward
  induction. Put <math|x=<wide|\<beta\>|^><rsub|m>> and <math|N=k-m>, where
  <math|k> is the summit. Every scale increment is at least one, so the gap
  bound gives <math|N\<leqslant\>2<around|(|log x|)><rsup|48>>. For all large
  <math|m>, the summit clock is at most <math|2*x>, and the scheduled column
  factor <math|p<rsub|j>> at each step satisfies
  <math|p<rsub|j>\<leqslant\>2*log x>. Let <math|c<rsub|j>=exp
  <around|[|<tfrac|1|2><around|(|log log <wide|\<beta\>|^><rsub|j+1>|)><rsup|2>|]>>;
  clock monotonicity gives <math|c<rsub|j>\<geqslant\>exp
  <around|[|<tfrac|1|2><around|(|log log x|)><rsup|2>|]>> at these levels.
  The one-step coefficient in the selected construction is
  <math|8*<around|(|1+p<rsub|j>|)>/c<rsub|j>>. To bound it by
  <math|<math-up|part><around|(|m|)>/<around|(|2*N|)>>, it is enough that

  <\equation*>
    16*N*<around|(|1+2*log x|)>\<leqslant\>exp
    <around|[|<tfrac|1|10><around|(|log log x|)><rsup|2>|]>.
  </equation*>

  Using the bound on <math|N>, the left side is at most
  <math|32*<around|(|1+2*log x|)><around|(|log x|)><rsup|48>>. With
  <math|y=log log x>, this is at most <math|96*e<rsup|49*y>> for large
  <math|x>, whereas the ratio of the right side to <math|96*e<rsup|49*y>>
  tends to infinity. This proves the scheduled budget from the clock, block
  and column bounds. The underlying threshold and column comparison remains
  an input; it is not a consequence of this numerical calculation.

  To combine them, put <math|X<rsub|i>=\<varpi\><rsub|i><rsup|-1>*B<rsub|m<rsub|i>>*Y<rsub|i>*z>
  and <math|Z<rsub|i>=\<varpi\><rsub|i><rsup|-1>*B<rsub|k<rsub|i>>*Y<rsub|i>*z>.
  The stability estimate gives <math|<around|\<\|\|\>|X<rsub|i>-Z<rsub|i>|\<\|\|\>>\<leqslant\>\<varepsilon\><rsub|i><around|\<\|\|\>|Z<rsub|i>|\<\|\|\>>>.
  Since <math|X<rsub|i>> converges, it is bounded; eventually
  <math|\<varepsilon\><rsub|i>\<leqslant\>1/2>, so
  <math|<around|\<\|\|\>|Z<rsub|i>|\<\|\|\>>\<leqslant\>2<around|\<\|\|\>|X<rsub|i>|\<\|\|\>>>.
  Consequently <math|Z<rsub|i>-X<rsub|i>\<to\>0>. Multiplication by
  <eqref|eq:ex-branch-lift-beta-ratio> changes the denominator from
  <math|\<beta\><rsub|Z><around|(|m<rsub|i>|)>*r<rsub|i><rsup|4>> to
  <math|\<beta\><rsub|Z><around|(|k<rsub|i>|)>*r<rsub|i><rsup|4>=\<omega\><rsub|i>>,
  giving

  <\equation>
    \<omega\><rsub|i><rsup|-1>*B<rsub|k<rsub|i>>*Y<rsub|i>*z\<longrightarrow\>K*\<ell\>*z.<label|eq:ex-branch-lift-summit>
  </equation>

  The same <math|Y<rsub|i>>, <math|r<rsub|i>>, transport and history occur at
  both levels; the ratio is not a comparison between independently selected
  charts.

  Now put

  <\equation*>
    D<rsub|i>=\<omega\><rsub|i><rsup|-1>*B<rsub|k<rsub|i>>,<space|2em>\<cal-A\><rsub|i>=D<rsub|i>*Y<rsub|i>*\<pi\><rsub|0>+<around|(|1-K|)>:E<rsub|4>\<longrightarrow\>E<rsub|4>.
  </equation*>

  The limit <eqref|eq:ex-branch-lift-summit>,
  <math|\<ell\>*\<pi\><rsub|0>=1>, and a finite basis give
  <math|\<cal-A\><rsub|i>\<to\>1> in operator norm; here <math|K> is the core
  projection on the fixed label space. Also <math|<math-ss|M><rsub|i>>
  annihilates the scalar complement <math|1-K>, and eventually
  <math|\<pi\>*Y<rsub|i>=U<rsub|i>>. Thus, on <math|x\<in\>E<rsub|4>>, the
  chart identity gives

  <\equation*>
    <math-ss|M><rsub|i>\<cal-A\><rsub|i>*x=\<pi\><rsub|0>*x-<around|\<langle\>|U<rsub|i>*\<pi\><rsub|0>*x|\<rangle\>>*\<b-1\><rsub|4><rsup|0>\<longrightarrow\>\<pi\><rsub|0>*x-<around|\<langle\>|\<pi\><rsub|0>*x|\<rangle\>>*\<b-1\><rsub|4><rsup|0>=<math-ss|M><rsub|\<infty\>>x.
  </equation*>

  The expectation convergence is the one-point case of the selected chart
  correlation limit. For a fixed standard field <math|z>, its one-point
  function at the origin is <math|<around|\<langle\>|z|\<rangle\>><rsub|0>>;
  the rescaled interacting one-point function at the origin is
  <math|<around|\<langle\>|U<rsub|i>*z|\<rangle\>>>. The selected chart
  convergence at this one-point configuration therefore gives
  <math|<around|\<langle\>|U<rsub|i>*z|\<rangle\>>\<to\><around|\<langle\>|z|\<rangle\>><rsub|0>>.
  It uses the chart's one-point convergence and the two table hierarchies as
  inputs. Eventual transport of the unit is another selected-chart input. A
  finite basis upgrades the displayed pointwise convergence to operator-norm
  convergence. Eventually <math|<around|\<\|\|\>|\<cal-A\><rsub|i>-1|\<\|\|\>>\<less\>1/2>,
  so the geometric series gives <math|<around|\<\|\|\>|\<cal-A\><rsub|i><rsup|-1>|\<\|\|\>>\<leqslant\>2>
  and <math|<around|\<\|\|\>|\<cal-A\><rsub|i><rsup|-1>-1|\<\|\|\>>\<leqslant\>2*<around|\<\|\|\>|\<cal-A\><rsub|i>-1|\<\|\|\>>\<to\>0>.
  Since <math|<math-ss|M><rsub|i>=<around|(|<math-ss|M><rsub|i>\<cal-A\><rsub|i>|)>*\<cal-A\><rsub|i><rsup|-1>>,
  this proves <eqref|eq:ex-branch-moment-input>. The normalized local lift
  and one-point chart convergence remain upstream dependencies. Neither limit
  alone supplies a trace rate.

  <\proposition>
    <dueto|Three branch field limits><label|prop:ex-branch-moments>Assume
    <eqref|eq:ex-branch-coefficient-input>\U
    <eqref|eq:ex-branch-moment-input>, the chart identity and projection
    equivariance above, and eventual equivariance of <math|B<rsub|k>> under
    every signed motion and the real-structure involution. Then

    <\equation*>
      <math-ss|P><rsub|i>t<rsup|0><rsub|k<rsub|i>>\<longrightarrow\>M<around|(|w<rsup|0>|)>,<space|2em><math-ss|P><rsub|i>t<rsup|-><rsub|k<rsub|i>>\<longrightarrow\>M<around|(|w<rsup|->|)>,<space|2em><math-ss|P><rsub|i>t<rsup|+><rsub|k<rsub|i>>\<longrightarrow\>M<around|(|w<rsup|+>|)>
    </equation*>

    in the finite product <math|<around|(|\<cal-F\><rsub|4><rsup|0>|)><rsup|I\<times\>I>>.
  </proposition>

  <\proof>
    The finite symmetry average commutes with symmetrization. For
    sufficiently large <math|k>, the selected transport intertwines every
    signed motion and the real-structure involution: this follows by taking
    its defining fixed-scale separation limit of the corresponding
    finite-volume transport identities. The core projection also commutes:
    the scalar label is fixed and its coordinate is preserved, up to
    conjugation under the real structure. Using equivariance and the chart
    identity gives, eventually,

    <\equation>
      <around|(|<math-ss|P><rsub|i>t<rsup|b><rsub|k<rsub|i>>|)><rsub|a*c>=<tfrac|1|2><around*|(|<math-ss|M><rsub|i>W<rsup|b><rsub|k<rsub|i>><around|(|a,c|)>+<math-ss|M><rsub|i>W<rsup|b><rsub|k<rsub|i>><around|(|c,a|)>|)>.<label|eq:ex-branch-chart-array>
    </equation>

    Indeed, apply <eqref|eq:ex-branch-chart-identity> to each term of the
    finite symmetry average; the scalar signs and coefficients are real, so
    commute with both maps. Since <math|k<rsub|i>\<to\>\<infty\>>,
    <math|W<rsup|b><rsub|k<rsub|i>><around|(|a,c|)>\<to\>W<rsup|b><around|(|a,c|)>>.
    For any convergent <math|v<rsub|i>\<to\>v> in <math|E<rsub|4>>,

    <\equation*>
      <around|\<\|\|\>|<math-ss|M><rsub|i>v<rsub|i>-<math-ss|M><rsub|\<infty\>>v|\<\|\|\>>\<leqslant\><around|\<\|\|\>|<math-ss|M><rsub|i>-<math-ss|M><rsub|\<infty\>>|\<\|\|\>><space|0.17em>\<\|\|\>v<rsub|i>\<\|\|\>+<around|\<\|\|\>|<math-ss|M><rsub|\<infty\>>|\<\|\|\>>*<space|0.17em><around|\<\|\|\>|v<rsub|i>-v|\<\|\|\>>\<longrightarrow\>0.
    </equation*>

    Apply this to both entries in <eqref|eq:ex-branch-chart-array>. The limit
    is <math|<math-up|sym><around|(|\<frak-c\><rsub|0>*\<pi\><rsub|0>*\<cal-S\><around|(|w<rsup|b>|)>|)>>,
    which is <math|M<around|(|w<rsup|b>|)>> by symmetry and zero expectation.
    There are only sixteen entries, so coordinate convergence is convergence
    of the entire tensor. This proves all three limits without exchanging an
    infinite sum and a limit.
  </proof>

  <subsubsection|The fast trace from localized
  recordings><label|subsec:ex-branch-fast-trace>

  We now derive the raw fast-trace statement used in the weighted limit. Let
  <math|s<rsub|k>\<to\>\<infty\>> be the logarithmic scale of the selected
  schedule and <math|a<rsub|k>=e<rsup|-s<rsub|k>>> for the mesh above. A
  sequence is <em|fast> if its norm is <math|O<around|(|e<rsup|-\<eta\>*s<rsub|k>>|)>>
  for some <math|\<eta\>\<gtr\>0>; a scalar sequence or operator family is
  <em|subexponential> if its norm is <math|O<around|(|e<rsup|\<epsilon\>*s<rsub|k>>|)>>
  for every <math|\<epsilon\>\<gtr\>0>. A finite sum of fast sequences is
  fast, with the minimum of finitely many positive decay exponents.

  We make the local recording input explicit. Write <math|E<rsub|3>> and
  <math|\<cal-F\><rsub|3><rsup|<math-up|int>>> for the finite-dimensional
  grade-three label and field spaces of the same interacting table, and
  <math|\<pi\><rsub|d>:E<rsub|d>\<to\>\<cal-F\><rsub|d><rsup|<math-up|int>>>
  for its grade-<math|d> projection, with <math|\<pi\><rsub|4>=\<pi\>>. For
  each admissible separated test <math|\<sigma\>>, the table gives linear
  functionals <math|L<rsup|\<sigma\>><rsub|d><around|(|z|)>:\<cal-F\><rsub|d><rsup|<math-up|int>>\<to\>\<bbb-C\>>
  for <math|d=3,4> and <math|z> near the origin. They are continuous in
  <math|z> and <math|L<rsup|\<sigma\>><rsub|d><around|(|0|)>=\<lambda\><rsup|\<sigma\>><rsub|d>>.
  In particular,

  <\equation>
    lim<rsub|z\<to\>0><around|\<\|\|\>|L<rsup|\<sigma\>><rsub|d><around|(|z|)>-\<lambda\><rsup|\<sigma\>><rsub|d>|\<\|\|\>>=0*<space|1em><around|(|d=3,4|)>,<space|2em><big|cap><rsub|\<sigma\>>ker
    \<lambda\><rsup|\<sigma\>><rsub|4>=<around|{|0|}>.<label|eq:ex-branch-test-properties>
  </equation>

  The convergence is in operator norm by finite dimensionality. Thus finitely
  many of the functionals <math|\<lambda\><rsup|\<sigma\>><rsub|4>> already
  separate <math|\<cal-F\><rsub|4><rsup|<math-up|int>>>. This follows from
  the field-separation and smoothness properties of the selected hierarchy:
  approximate a separated configuration by generic grid configurations at
  increasingly fine scales. Subtracting the first grid address places the
  insertion at the origin without changing relative positions. Translation
  invariance preserves the correlation, and spectator fields have
  representative tokens, so these are allowed tests. By continuity, a field
  annihilated by them has all separated correlations zero and is zero by
  field separation. These hierarchy and grid-density properties are retained
  inputs; finite dimensionality alone does not imply separation.

  Every grade-three field is a multiple of the unit. Indeed, each
  color-valued jet-coordinate factor has grade at least two, so a grade-three
  label has at most one factor. Its invariant linear part vanishes by the
  low-grade color argument of Subsection<nbsp><reference|sec:ex-lattice-trace-free-rank>;
  only the scalar label remains. The field projection is onto and sends the
  scalar label to a nonzero reference-scale multiple of the unit, so the same
  is true of <math|\<cal-F\><rsub|3><rsup|<math-up|int>>>. Finally, inserting
  the unit leaves a separated correlation independent of its insertion point.
  Thus, in a sufficiently small separated neighborhood,

  <\equation>
    L<rsup|\<sigma\>><rsub|3><around|(|z|)>=L<rsup|\<sigma\>><rsub|3><around|(|0|)>.<label|eq:ex-branch-grade-three-unit>
  </equation>

  The grading, quotient projection, unit and field-separation statements here
  are the ones belonging to the same selected table; they are not inferred
  from the branch limit.

  The incoming recording estimates are the following. For every test
  <math|\<sigma\>> there is a radius <math|c<rsub|\<sigma\>>\<gtr\>0>. For
  each <math|d\<in\>I> the localized current
  <math|Q<rsub|d><rsup|<around|[|r|]>>> and its forward difference have
  recorded fields <math|v<rsub|d,k>\<in\>\<cal-F\><rsub|3><rsup|<math-up|int>>>
  and <math|w<rsub|d,k>\<in\>\<cal-F\><rsub|4><rsup|<math-up|int>>>. For
  every branch <math|b\<in\><around|{|0,-|}>>, the diagonal tensor recordings
  are the already defined <math|\<pi\>*x<rsup|b><rsub|k>*<around|(|a,a|)>\<in\>\<cal-F\><rsub|4><rsup|<math-up|int>>>.
  Their finite-volume tested correlations, denoted respectively by
  <math|F<rsup|\<sigma\>><rsub|d,k,u><around|(|j|)>>,
  <math|G<rsup|\<sigma\>><rsub|d,k,u><around|(|j|)>> and
  <math|T<rsup|\<sigma\>,b><rsub|a,k,u>>, satisfy, with fast nonnegative
  errors, the following estimates. For all sufficiently large <math|k> and
  each integer <math|j> with <math|<around|\||j|\|>*a<rsub|k>\<leqslant\>c<rsub|\<sigma\>>>,
  the appropriate inequalities hold for <math|u> in an ultrafilter-large set.
  A common radius is obtained by taking the minimum of the finitely many
  radii for these current, difference and tensor insertions; the
  corresponding eventual scale cutoff is the maximum of finitely many
  cutoffs:

  <\align>
    <tformat|<table|<row|<cell|<around|\||F<rsup|\<sigma\>><rsub|d,k,u><around|(|j|)>-L<rsup|\<sigma\>><rsub|3>*<around|(|j*a<rsub|k>*e<rsub|d>|)>*v<rsub|d,k>|\|>>|<cell|\<leqslant\>E<rsup|\<sigma\>><rsub|d,k>,<eq-number><label|eq:ex-branch-book-current>>>|<row|<cell|<around|\||G<rsup|\<sigma\>><rsub|d,k,u><around|(|j|)>-L<rsup|\<sigma\>><rsub|4>*<around|(|j*a<rsub|k>*e<rsub|d>|)>*w<rsub|d,k>|\|>>|<cell|\<leqslant\>D<rsup|\<sigma\>><rsub|d,k>,<eq-number><label|eq:ex-branch-book-difference>>>|<row|<cell|<around|\||T<rsup|\<sigma\>,b><rsub|a,k,u>-\<lambda\><rsup|\<sigma\>><rsub|4>*<around|(|\<pi\>*x<rsup|b><rsub|k>*<around|(|a,a|)>|)>|\|>>|<cell|\<leqslant\>H<rsup|\<sigma\>,b><rsub|a,k>.<eq-number><label|eq:ex-branch-book-tensor>>>>>
  </align>

  Here <math|e<rsub|d>> is the <math|d>th coordinate vector; <math|E,D,H> are
  fast sequences, possibly with test- and component-dependent exponents. The
  same separation ultrafilter is used in every line. The last line is at zero
  displacement. The finite-volume correlation is linear in its inserted
  observable, and for each <math|\<sigma\>> the forward-difference identity
  holds for all integers <math|j> on an ultrafilter-large set, for all
  sufficiently large <math|k>:

  <\equation>
    G<rsup|\<sigma\>><rsub|d,k,u><around|(|j|)>=a<rsub|k><rsup|-1>*<around*|(|F<rsup|\<sigma\>><rsub|d,k,u>*<around|(|j+1|)>-F<rsup|\<sigma\>><rsub|d,k,u><around|(|j|)>|)>.<label|eq:ex-branch-recorded-difference>
  </equation>

  Here <math|a<rsub|k><rsup|-1>=a<rsub|k><rsup|-4>/a<rsub|k><rsup|-3>>, the
  ratio of the two grade normalizations; translation covariance identifies
  the displaced current values. The localized current and its difference are
  recorded using the same finite-volume choices and volumes. The exact
  finite-volume branch formulas, after applying the same linear tested
  correlation, give for each test <math|\<sigma\>> and all sufficiently large
  <math|k>, on an ultrafilter-large set of <math|u>,

  <\equation>
    <big|sum><rsub|a>T<rsup|\<sigma\>,-><rsub|a,k,u>=0,<space|2em><big|sum><rsub|a>T<rsup|\<sigma\>,0><rsub|a,k,u>=<big|sum><rsub|d>G<rsup|\<sigma\>><rsub|d,k,u><around|(|0|)>.<label|eq:ex-branch-recorded-traces>
  </equation>

  The construction supplies these estimates using its local recording,
  selected trace-current localization, field hierarchy and point-limit
  inputs. The estimates, low-grade unit statement and separating property use
  the upstream table and hierarchy inputs just stated; the finite-volume
  price production behind the estimates is not proved in this subsection.
  They are more primitive than the assertion that either branch trace is
  fast.

  The following root-price mechanism identifies a more primitive sufficient
  input for the three recording estimates. Fix one of the finitely many
  insertions above, its grade <math|d\<in\><around|{|3,4|}>>, and a separated
  test <math|\<sigma\>>. At scale <math|k> and finite-volume parameter
  <math|u>, let <math|A<rsub|k,u>> be the actual inserted observable and
  <math|O<rsub|k,u><around|(|v<rsub|k,u>|)>> the observable made from its
  selected local label <math|v<rsub|k,u>\<in\>E<rsub|d>>. The actual
  insertion already includes the grade-<math|d> factor
  <math|a<rsub|k><rsup|-d>> and transport to the comparison volume;
  <math|O<rsub|k,u>> is the corresponding reference-scale observable. The
  following finite-dimensional selection explains how the same limiting label
  is obtained for all tests. The purchased finite-volume recording supplies a
  coefficient <math|\<xi\><rsub|k,u>>, a label <math|v<rsub|k,u>>, and the
  actual column map <math|C<rsub|k,u>> on an ultrafilter-large set, with

  <\equation>
    <around|\<\|\|\>|\<xi\><rsub|k,u>|\<\|\|\>><rsub|<math-up|c>>\<leqslant\>1,<space|2em><around|\<\|\|\>|\<xi\><rsub|k,u>-C<rsub|k,u>*v<rsub|k,u>|\<\|\|\>><rsub|<math-up|c>>\<leqslant\>1,<space|2em><around|\<\|\|\>|v<rsub|k,u>|\<\|\|\>>\<leqslant\>M<rsub|d,k>*<around|\<\|\|\>|C<rsub|k,u>*v<rsub|k,u>|\<\|\|\>><rsub|<math-up|c>>.<label|eq:ex-branch-recording-compactness>
  </equation>

  Here <math|<around|\<\|\|\>|\<cdummy\>|\<\|\|\>><rsub|<math-up|c>>> is the
  fixed coefficient norm, and <math|M<rsub|d,k>=exp
  <around|(|\<ell\><rsub|k>+d*s<rsub|k>|)>> and
  <math|\<ell\><rsub|k>=<big|sum><rsub|j\<less\>k>log \<zeta\><rsub|j+1>> for
  the calibrated column factors <math|\<zeta\><rsub|j+1>\<geqslant\>1>. The
  previously established column estimate gives
  <math|\<ell\><rsub|k>=o<around|(|s<rsub|k>|)>>, so
  <math|e<rsup|\<ell\><rsub|k>>> is subexponential. The middle bound is a
  convenient weakening of the purchased bias bound
  <math|\<vartheta\><rsub|k><rsup|2>*exp <around|[|-<tfrac|1|4><around|(|log
  log <wide|\<beta\>|^><rsub|k>|)><rsup|2>|]>>, using
  <math|\<vartheta\><rsub|k>\<leqslant\>1>. It is not a replacement for the
  root-price purchase below. The inverse bound follows by multiplying the
  calibrated one-step factors <math|\<zeta\><rsub|j+1>*L<rsub|j><rsup|d>>
  from the reference level, where the column is the identity. All factors are
  at least one, <math|<big|sum><rsub|j\<less\>k>log L<rsub|j>=s<rsub|k>>, and
  the label norm is bounded by the coefficient norm. The calibration,
  reference identity and common choice of column map and label remain inputs.

  When constructing a history from these purchased data, for each fixed
  sufficiently large <math|k> choose <math|v<rsub|k,u>> once together with
  its full purchase certificate on the ultrafilter-large set where that
  certificate is available, and define it arbitrarily elsewhere. In
  particular, <eqref|eq:ex-branch-recording-compactness> holds on that set.
  By the triangle inequality its norm is at most <math|2*M<rsub|d,k>> on that
  set. The closed ball of that radius is compact because <math|E<rsub|d>> is
  finite dimensional, so the ultrafilter has a limit
  <math|x<rsub|k>\<in\>E<rsub|d>> in the ball. The choice is made before any
  test is selected; this one <math|x<rsub|k>> works for every fixed test and
  satisfies <math|<around|\<\|\|\>|x<rsub|k>|\<\|\|\>>\<leqslant\>2*M<rsub|d,k>>.
  Since <math|\<ell\><rsub|k>=o<around|(|s<rsub|k>|)>>, for every
  <math|\<epsilon\>\<gtr\>0> this also gives
  <math|<around|\<\|\|\>|x<rsub|k>|\<\|\|\>>=O<around|(|e<rsup|<around|(|d+\<epsilon\>|)>*s<rsub|k>>|)>>;
  the bound is grade-dependent and need not be subexponential. For an already
  selected history, retain its original labels and their existing ultrafilter
  limit instead: the compactness construction by itself does not identify a
  newly chosen limit with that history's limit. The root-price step below
  uses the labels and limit from one and the same history.

  For the root-price step assume:

  <\enumerate>
    <item>for this test, some <math|c<rsub|\<sigma\>>\<gtr\>0> and
    <math|B<rsub|\<sigma\>>\<geqslant\>0> satisfy, for every sufficiently
    large <math|k>, axis <math|a\<in\>I> and integer <math|\<ell\>> with
    <math|<around|\||\<ell\>|\|>*a<rsub|k>\<leqslant\>c<rsub|\<sigma\>>>, on
    an ultrafilter-large set of <math|u>,

    <\equation*>
      <around|\||\<cal-C\><rsup|\<sigma\>><rsub|k,u><around|(|\<ell\>,a;A<rsub|k,u>|)>-\<cal-C\><rsup|\<sigma\>><rsub|k,u><around|(|\<ell\>,a;O<rsub|k,u><around|(|v<rsub|k,u>|)>|)>|\|>\<leqslant\>B<rsub|\<sigma\>>*E<rsub|k>,
    </equation*>

    where <math|E<rsub|k>> is fast and <math|\<cal-C\>> is the ordinary
    finite-volume tested correlation, linear in the insertion;

    <item>for each sufficiently large fixed <math|k>, axis <math|a>, integer
    <math|\<ell\>> with <math|<around|\||\<ell\>|\|>*a<rsub|k>\<leqslant\>c<rsub|\<sigma\>>>,
    and fixed <math|v\<in\>E<rsub|d>>, the correlation of
    <math|O<rsub|k,u><around|(|v|)>> converges along the same ultrafilter to
    <math|L<rsup|\<sigma\>><rsub|d>*<around|(|\<ell\>*a<rsub|k>*e<rsub|a>|)>*\<pi\><rsub|d>*v>.
  </enumerate>

  The first assumption applies the rooted price to the actual-minus-local
  insertion, using selected funding, interior and locality estimates. The
  second is the fixed-label point limit in the same table. To apply it to the
  moving labels, choose a basis <math|<around|(|e<rsub|j>|)>> of
  <math|E<rsub|d>> and write <math|v<rsub|k,u>=<big|sum><rsub|j>c<rsub|j><around|(|u|)>*e<rsub|j>>,
  with <math|c<rsub|j><around|(|u|)>\<to\>c<rsub|j>> along the ultrafilter.
  Linearity of the local insertion and correlation gives a finite sum of
  <math|c<rsub|j><around|(|u|)>> times the correlations for the fixed basis
  vectors. The product and finite-sum limit rules therefore give

  <\equation*>
    \<cal-C\><rsup|\<sigma\>><rsub|k,u><around|(|\<ell\>,a;O<rsub|k,u><around|(|v<rsub|k,u>|)>|)>\<longrightarrow\>L<rsup|\<sigma\>><rsub|d>*<around|(|\<ell\>*a<rsub|k>*e<rsub|a>|)>*\<pi\><rsub|d>*x<rsub|k>.
  </equation*>

  This uses the existing fixed-scale label limit, including for an already
  chosen history. Fix a lower scale <math|h> at least the test's native
  scale. A comparison scale is open when <math|h\<leqslant\>j> and
  <math|b<rsub|j><rsup|2>\<leqslant\>a<rsub|h>/a<rsub|j>>, where
  <math|b<rsub|j>> is its cover size. Let
  <math|<math-up|basin><around|(|h|)>> be the first open scale and choose
  <math|j=max <around|{|<math-up|basin><around|(|h|)>,<math-up|ref><around|(|d|)>|}>>.
  Such a scale exists: the cover-growth and mesh bounds give
  <math|a<rsub|j+1>*b<rsub|j+1><rsup|2>\<leqslant\><around|(|2/3|)>*a<rsub|j>*b<rsub|j><rsup|2>>.
  Iterating gives <math|a<rsub|j>*b<rsub|j><rsup|2>\<leqslant\><around|(|2/3|)><rsup|j-h>*a<rsub|h>*b<rsub|h><rsup|2>\<to\>0>
  for <math|j\<geqslant\>h>. Opening persists at finer scales, so this choice
  of <math|j> is open. At each allowed later level <math|k\<gtr\>j>, the
  finite-volume purchase gives the actual-minus-local insertion the rooted
  price

  <\equation>
    P<rsub|d,h,j><around|(|k|)>=<frac|2<space|0.17em><math-up|stake><rsub|h,j><space|0.17em>a<rsub|j><rsup|-d>|\<varphi\><rsub|d,j>>*<space|0.17em><wide|\<beta\>|^><rsub|k><rsup|4>*<space|0.17em>exp
    <space|-0.17em><around*|[|-<frac|s<rsub|k>-s<rsub|j>|8>|]>.<label|eq:ex-branch-native-root-price>
  </equation>

  Here <math|<math-up|stake><rsub|h,j>=exp
  <around|[|<around|(|a<rsub|h>/a<rsub|j>|)><rsup|4>*\<cal-T\><rsub|j>+5|]>>,
  where <math|\<cal-T\><rsub|j>> is the selected per-site treasury, and
  <math|\<varphi\><rsub|d,j>=<wide|\<beta\>|^><rsub|j><rsup|-\<nu\><rsub|d>>>,
  where <math|\<nu\><rsub|d>> is the fixed reference-label degree bound plus
  four. Both are positive and fixed once <math|d,h,j> are chosen. This is the
  actual purchased price. Since the hatted clock is affine in
  <math|s<rsub|k>>, its fourth power is subexponential: for
  <math|s\<geqslant\>0> and <math|\<epsilon\>\<gtr\>0>, the exponential
  series gives <math|s<rsup|4>\<leqslant\>24*\<epsilon\><rsup|-4>*e<rsup|\<epsilon\>*s>>.
  Thus, for every <math|0\<less\>\<eta\>\<less\>1/8>,
  <math|P<rsub|d,h,j><around|(|k|)>=O<around|(|e<rsup|-\<eta\>*s<rsub|k>>|)>>
  and is fast. The containing-window radius has an explicit bound. Put
  <math|r<around|(|x|)>=<around|\<lceil\>|<around|(|log
  x|)><rsup|2>|\<rceil\>>>, <math|q<around|(|x|)>=r<around|(|x|)><rsup|60>+1100>,
  and

  <\equation*>
    H<around|(|x|)>=1800*<around|(|1001*r<around|(|x|)>|)>+4*<around|(|1000*r<around|(|x|)>+2|)>,<space|2em>N<rsub|0>=4000001<rsup|4>.
  </equation*>

  The selected radius is <math|R<rsub|k>=R<around|(|<wide|\<beta\>|^><rsub|k>|)>>,
  where

  <\equation*>
    R<around|(|x|)>=max <around|{|H<around|(|x|)>+18+q<around|(|x|)>*<around|(|4*r<around|(|x|)>+2|)>+2*r<around|(|x|)>,<space|0.17em>2*<around|(|<around|(|N<rsub|0>+q<around|(|x|)>|)>*<around|(|4*r<around|(|x|)>+2|)>+10*r<around|(|x|)>|)>+1|}>.
  </equation*>

  For <math|x\<geqslant\>e>, <math|r<around|(|x|)>\<leqslant\>1+<around|(|log
  x|)><rsup|2>>, so this expression is at most a constant times
  <math|<around|(|1+log x|)><rsup|122>>. Also <math|log
  x\<leqslant\>32*x<rsup|1/32>>, whence <math|R<around|(|x|)>=O<around|(|x<rsup|122/32>|)>=o<around|(|x<rsup|4>|)>>.
  Consequently <math|R<rsub|k>\<leqslant\><wide|\<beta\>|^><rsub|k><rsup|4>>
  eventually and <math|a<rsub|k>*R<rsub|k>\<to\>0>. This radius includes the
  support enlargement and is distinct from the principal localization radius
  <math|\<varrho\><rsub|k>>: in particular
  <math|R<around|(|x|)>\<geqslant\>H<around|(|x|)>+18>, so the local
  regularity neighborhood of radius <math|H<around|(|x|)>+1> lies in the
  window. The local symmetry, measurability and size bounds needed for the
  interior certificate remain inputs. The selected geometric tail is
  <math|<math-up|tail><rsub|k>=30*a<rsub|k>*<around|(|J<rsub|k>+5|)>>, where
  <math|J<rsub|k>\<geqslant\>0> is the schedule's integer clock. The schedule
  gives <math|a<rsub|k+1>\<leqslant\>a<rsub|k>/3> and
  <math|J<rsub|k+1>\<leqslant\>J<rsub|k>+1>. Hence

  <\equation*>
    <math-up|tail><rsub|k+1>\<leqslant\>10*a<rsub|k>*<around|(|J<rsub|k>+6|)>\<leqslant\><tfrac|2|3><math-up|tail><rsub|k>,
  </equation*>

  so the tail tends to zero geometrically. These two limits eventually give
  the geometric room inequality

  <\equation*>
    2*<around|(|a<rsub|k>*R<rsub|k>+<math-up|tail><rsub|k>|)>\<less\>a<rsub|h>.
  </equation*>

  It is this inequality that allows the localized observable to sit in the
  actual fixed test chamber before applying the purchased root bound. To
  connect that bound to the first assumption, put
  <math|f<rsub|k,u>=A<rsub|k,u>-O<rsub|k,u><around|(|v<rsub|k,u>|)>>. The
  purchase and localization say that, on an ultrafilter-large set, this
  difference is interior to the chamber at level <math|h> and its root-test
  size is at most <math|P<rsub|d,h,j><around|(|k|)>>. The separated spectator
  estimate supplies a constant <math|B<rsub|\<sigma\>>\<geqslant\>0>,
  independent of <math|k>, and a possibly smaller displacement radius, such
  that

  <\equation*>
    <around*|\||\<cal-C\><rsup|\<sigma\>><rsub|k,u><around|(|\<ell\>,a;f<rsub|k,u>|)>|\|>\<leqslant\>B<rsub|\<sigma\>><math-up|root><rsub|h,u><around|(|f<rsub|k,u>|)>.
  </equation*>

  The spectator input places the <math|n> translated factors in distinct
  cells and bounds each root-test size by a common <math|A\<geqslant\>0>,
  uniformly in <math|k> and displacements of size at most <math|a<rsub|h>/8>.
  The rooted moment inequality gives the bound with
  <math|B<rsub|\<sigma\>>=A<rsup|n>>; its integrability and separation
  conditions are part of that input. To see the room for the local
  representatives, choose a finer level <math|j<rprime|'>\<geqslant\>h+1>
  with <math|24*a<rsub|j<rprime|'>>\<less\>a<rsub|h>> at which the spectator
  input supplies a common bound for its finitely many tokens and frames. It
  follows from the centered-representative hypothesis, using exponent and
  error allowances <math|1>, then summing the finitely many bounds and
  intersecting their eventual sets. The displacement and three fine-mesh
  widths together are less than <math|a<rsub|h>/4>, inside the coarse cell's
  one-third margin. For sufficiently large period the spectator addresses and
  the insertion address occupy distinct cells. By correlation linearity, the
  first assumption follows with <math|E<rsub|k>=P<rsub|d,h,j><around|(|k|)>>
  after intersecting the relevant large sets. The local representative and
  its root bound still use the spectator input. The cover-growth bound,
  purchase, localization, spectator estimate and the displayed mesh and
  integer-clock bounds remain inputs from the selected construction; this
  argument does not establish those purchases.

  For each fixed <math|k> and displacement, the moving-label limit makes the
  local correlation differ from its limit by at most <math|a<rsub|k>> on an
  ultrafilter-large set. Intersect that set with the root-price set and use
  the triangle inequality. The resulting recording error is at most
  <math|B<rsub|\<sigma\>>*E<rsub|k>+a<rsub|k>>, which is fast because
  <math|a<rsub|k>=e<rsup|-s<rsub|k>>>. This proves the corresponding instance
  of <eqref|eq:ex-branch-book-current>\U<eqref|eq:ex-branch-book-tensor> from
  the displayed root-price and point-limit inputs. It does not construct the
  underlying purchased root bound. The radius can be reduced so that all
  moved test configurations remain separated.

  <\proposition>
    <dueto|Localized current and raw trace
    decay><label|prop:ex-branch-raw-fast>Assume the recording bounds
    <eqref|eq:ex-branch-book-current>\U <eqref|eq:ex-branch-book-tensor>, the
    finite-volume linearity and identities
    <eqref|eq:ex-branch-recorded-difference> and
    <eqref|eq:ex-branch-recorded-traces>, and the test separation, continuity
    and grade-three unit properties <eqref|eq:ex-branch-test-properties> and
    <eqref|eq:ex-branch-grade-three-unit>. Then for each <math|d> the
    recorded difference <math|w<rsub|d,k>> is fast, and so are both
    unaveraged projected traces

    <\equation*>
      y<rsup|0><rsub|k>=<big|sum><rsub|a>\<pi\>*x<rsup|0><rsub|k>*<around|(|a,a|)>,<space|2em>y<rsup|-><rsub|k>=<big|sum><rsub|a>\<pi\>*x<rsup|-><rsub|k>*<around|(|a,a|)>.
    </equation*>
  </proposition>

  <\proof>
    We first record the finite-dimensional detection step. Choose finitely
    many <math|\<lambda\><rsup|\<sigma\>><rsub|4>> whose joint map is
    injective. If for each such <math|\<sigma\>> linear functionals
    <math|\<Lambda\><rsup|\<sigma\>><rsub|k>> converge pointwise to
    <math|\<lambda\><rsup|\<sigma\>><rsub|4>>, finite dimensionality gives
    convergence in operator norm. If <math|\<cal-F\><rsub|4><rsup|<math-up|int>>=<around|{|0|}>>
    the conclusion is immediate. Otherwise the joint limiting map has a
    positive minimum on the unit sphere. Consequently, for all large <math|k>
    and every <math|z\<in\>\<cal-F\><rsub|4><rsup|<math-up|int>>>,

    <\equation>
      <around|\<\|\|\>|z|\<\|\|\>>\<leqslant\>C*max<rsub|\<sigma\>><around|\||\<Lambda\><rsup|\<sigma\>><rsub|k>*z|\|>.<label|eq:ex-branch-moving-detector>
    </equation>

    Thus fast bounds on these finitely many moving tests imply a fast field
    bound, even when their exponents depend on <math|\<sigma\>>.

    Fix <math|d> and a test <math|\<sigma\>>. Decrease the decay exponent if
    necessary so that <math|0\<less\>\<eta\>\<less\>1> and
    <math|E<rsup|\<sigma\>><rsub|d,k>=O<around|(|e<rsup|-\<eta\>*s<rsub|k>>|)>>.
    Choose <math|0\<less\>\<tau\>\<less\>\<eta\>> and set

    <\equation*>
      n<rsub|k>=<around*|\<lceil\>|e<rsup|<around|(|1-\<tau\>|)>*s<rsub|k>>|\<rceil\>>,<space|2em>h<rsub|k>=a<rsub|k>*n<rsub|k>.
    </equation*>

    The ceiling bound gives

    <\equation*>
      e<rsup|-\<tau\>*s<rsub|k>>\<leqslant\>h<rsub|k>\<leqslant\>e<rsup|-\<tau\>*s<rsub|k>>+e<rsup|-s<rsub|k>>.
    </equation*>

    Thus <math|n<rsub|k>\<geqslant\>1>, <math|h<rsub|k>\<to\>0>, and
    <math|E<rsup|\<sigma\>><rsub|d,k>/h<rsub|k>=O<around|(|e<rsup|-<around|(|\<eta\>-\<tau\>|)>*s<rsub|k>>|)>>.
    For large <math|k> all the points <math|j*a<rsub|k>*e<rsub|d>>,
    <math|0\<leqslant\>j\<leqslant\>n<rsub|k>>, lie inside the recording
    neighborhood. Define the moving functional

    <\equation*>
      \<Lambda\><rsup|\<sigma\>><rsub|k>=<frac|1|n<rsub|k>>*<big|sum><rsub|j=0><rsup|n<rsub|k>-1>L<rsup|\<sigma\>><rsub|4>*<around|(|j*a<rsub|k>*e<rsub|d>|)>.
    </equation*>

    Continuity at zero implies <math|\<Lambda\><rsup|\<sigma\>><rsub|k>*z\<to\>\<lambda\><rsup|\<sigma\>><rsub|4>*z>
    for every fixed <math|z>: every term in the average lies within distance
    <math|h<rsub|k>> of zero. At each fixed <math|k> intersect the finitely
    many ultrafilter-large sets needed for the two endpoint current
    estimates, the <math|n<rsub|k>> difference estimates, and the exact
    difference identity. This intersection is nonempty. On it
    <eqref|eq:ex-branch-grade-three-unit> gives a common value
    <math|C<rsub|d,k><rsup|\<sigma\>>=L<rsup|\<sigma\>><rsub|3><around|(|0|)>*v<rsub|d,k>>
    at both endpoints. Telescoping <eqref|eq:ex-branch-recorded-difference>
    and using the recording errors therefore yields

    <\equation*>
      <around|\||\<Lambda\><rsup|\<sigma\>><rsub|k>*w<rsub|d,k>|\|>\<leqslant\>D<rsup|\<sigma\>><rsub|d,k>+<frac|2*E<rsup|\<sigma\>><rsub|d,k>|a<rsub|k>*n<rsub|k>>.
    </equation*>

    The right side is fast. This construction may use a different
    <math|n<rsub|k>> for each of the finitely many tests; applying
    <eqref|eq:ex-branch-moving-detector> proves that <math|w<rsub|d,k>> is
    fast. The finite intersection at fixed <math|k> is essential: no common
    infinite intersection of ultrafilter-large sets is used.

    For the false branch the first identity in
    <eqref|eq:ex-branch-recorded-traces> is exactly zero. For a fixed
    separating test, intersect the four sets in
    <eqref|eq:ex-branch-book-tensor> with that exact identity and use
    linearity. The triangle inequality gives
    <math|<around|\||\<lambda\><rsup|\<sigma\>><rsub|4><around|(|y<rsup|-><rsub|k>|)>|\|>\<leqslant\><big|sum><rsub|a>H<rsup|\<sigma\>,-><rsub|a,k>>,
    which is fast. The fixed-test version of
    <eqref|eq:ex-branch-moving-detector> proves the false trace is fast.

    For the principal branch, the second identity in
    <eqref|eq:ex-branch-recorded-traces> gives the sum of the four forward
    differences. Intersect the four tensor-recording sets with the four
    difference-recording sets at <math|j=0> and with this identity. Linearity
    gives

    <\equation*>
      <around*|\||\<lambda\><rsup|\<sigma\>><rsub|4>*<around*|(|y<rsup|0><rsub|k>-<big|sum><rsub|d>w<rsub|d,k>|)>|\|>\<leqslant\><big|sum><rsub|a>H<rsup|\<sigma\>,0><rsub|a,k>+<big|sum><rsub|d>D<rsup|\<sigma\>><rsub|d,k>.
    </equation*>

    The detector bound makes the difference fast. The already proved fastness
    of each <math|w<rsub|d,k>> and finiteness of <math|I> now imply that
    <math|y<rsup|0><rsub|k>> is fast.
  </proof>

  Under the displayed fixed-scale root-price inputs, the same proof gives the
  more explicit bound

  <\equation>
    <around|\<\|\|\>|y<rsup|0><rsub|k>|\<\|\|\>>+<around|\<\|\|\>|y<rsup|-><rsub|k>|\<\|\|\>>=O<around*|(|<around|(|1+s<rsub|k>|)><rsup|5>*e<rsup|-s<rsub|k>/8>|)>.<label|eq:ex-branch-raw-rate>
  </equation>

  Indeed, for the finitely many required tests and insertions, each recording
  error is <math|O<around|(|<around|(|1+s<rsub|k>|)><rsup|4>*e<rsup|-s<rsub|k>/8>|)>>:
  the fourth power of the affine clock has polynomial growth and the
  point-limit tolerance is <math|a<rsub|k>=e<rsup|-s<rsub|k>>>. In the
  sampling argument choose instead

  <\equation*>
    n<rsub|k>=<around*|\<lceil\>|<frac|e<rsup|s<rsub|k>>|1+s<rsub|k>>|\<rceil\>>,<space|2em>h<rsub|k>=a<rsub|k>*n<rsub|k>.
  </equation*>

  Then <math|<around|(|1+s<rsub|k>|)><rsup|-1>\<leqslant\>h<rsub|k>\<leqslant\><around|(|1+s<rsub|k>|)><rsup|-1>+e<rsup|-s<rsub|k>>>,
  so <math|h<rsub|k>\<to\>0> and the endpoint error divided by
  <math|h<rsub|k>> is <math|O<around|(|<around|(|1+s<rsub|k>|)><rsup|5>*e<rsup|-s<rsub|k>/8>|)>>.
  The moving detectors and finite trace comparisons now give
  <eqref|eq:ex-branch-raw-rate>. In particular, the bound is
  <math|O<around|(|e<rsup|-\<kappa\>*s<rsub|k>>|)>> for every
  <math|0\<less\>\<kappa\>\<less\>1/8>. Its constants depend on the finite
  tests; the price and point-limit statements remain inputs.

  For the remaining weighted step, let <math|S<rsub|k,u>> be the
  finite-volume transport whose fixed-<math|k> separation limit is
  <math|B<rsub|k>>. With the same accumulated column logarithm
  <math|\<ell\><rsub|k>> as above, the selected calibration gives a fixed
  cutoff <math|k<rsub|0>> such that, for every <math|k\<geqslant\>k<rsub|0>>
  and every <math|v\<in\>E<rsub|4>>, the bound

  <\equation*>
    <around|\<\|\|\>|S<rsub|k,u>*v|\<\|\|\>>\<leqslant\>C*<wide|\<beta\>|^><rsub|k>*e<rsup|\<ell\><rsub|k>><around|\<\|\|\>|v|\<\|\|\>>
  </equation*>

  on an ultrafilter-large set of <math|u>. Here <math|C> depends only on the
  fixed finite-dimensional label coordinates. The closed-ball limit gives the
  same bound for <math|B<rsub|k>*v>, and taking the supremum over
  <math|<around|\<\|\|\>|v|\<\|\|\>>\<leqslant\>1> gives

  <\equation>
    <around|\<\|\|\>|B<rsub|k>|\<\|\|\>>\<leqslant\>C*<wide|\<beta\>|^><rsub|k>*e<rsup|\<ell\><rsub|k>><space|2em><text|for
    all sufficiently large >k.<label|eq:ex-branch-transport-bound>
  </equation>

  This passage fixes <math|k> and <math|v> before taking the separation
  limit; it does not require a common ultrafilter-large set for infinitely
  many <math|v>. The accumulated-column estimate gives
  <math|\<ell\><rsub|k>=o<around|(|s<rsub|k>|)>>, so
  <math|e<rsup|\<ell\><rsub|k>>> is subexponential. The clock is affine in
  <math|s<rsub|k>>; since <math|s\<leqslant\>\<epsilon\><rsup|-1>*e<rsup|\<epsilon\>*s>>
  for <math|s\<geqslant\>0> and <math|\<epsilon\>\<gtr\>0>,
  <math|<wide|\<beta\>|^><rsub|k>> and hence
  <math|<around|\<\|\|\>|B<rsub|k>|\<\|\|\>>> are subexponential as well. The
  finite-volume column calibration and fixed-scale transport limit are
  upstream inputs. The Crown, Eve and weighted-estimate chapters supply parts
  of the selected local prices under their construction hypotheses.

  <\proposition>
    <dueto|Principal and false trace washout><label|prop:ex-branch-washout>Under
    the recording and test inputs of Proposition<nbsp><reference|prop:ex-branch-raw-fast>,
    the transport bound <eqref|eq:ex-branch-transport-bound> with
    <math|\<ell\><rsub|k>=o<around|(|s<rsub|k>|)>> and the affine clock,
    <eqref|eq:ex-branch-moment-input>, the chart identity
    <eqref|eq:ex-branch-chart-identity> and the stated projection
    equivariance, for each fixed <math|p\<in\>\<bbb-N\>> and each
    <math|b\<in\><around|{|0,-|}>>,

    <\equation>
      <wide|\<beta\>|^><rsub|k<rsub|i>><rsup|<space|0.17em>p><space|0.17em><math-up|tr><around|(|<math-ss|P><rsub|i>t<rsup|b><rsub|k<rsub|i>>|)>\<longrightarrow\>0<space|1em><text|in
      >\<cal-F\><rsub|4><rsup|0>.<label|eq:ex-branch-washout>
    </equation>

    In particular the assertion holds for <math|p=1>. The true branch is
    treated separately below.
  </proposition>

  <\proof>
    First, diagonal symmetrization changes nothing. Let <math|\<cal-G\>> be
    the finite signed and real-structure symmetry set, and let
    <math|\<rho\><rsub|g>> denote the corresponding real-linear field action.
    In each term of the symmetry average the square of the tensor sign is one
    and the axis permutation is bijective. Using projection equivariance
    gives

    <\equation*>
      q<rsup|b><rsub|k>\<assign\><math-up|tr><space|0.17em>t<rsup|b><rsub|k>=<frac|1|<around|\||\<cal-G\>|\|>>*<big|sum><rsub|g\<in\>\<cal-G\>>\<frak-c\>*<space|0.17em>\<rho\><rsub|g><around|(|y<rsup|b><rsub|k>|)>.
    </equation*>

    These fixed real-linear maps are bounded in finite dimension. Thus a
    constant <math|C> independent of <math|k> satisfies
    <math|<around|\<\|\|\>|q<rsup|b><rsub|k>|\<\|\|\>>\<leqslant\>C<around|\<\|\|\>|y<rsup|b><rsub|k>|\<\|\|\>>>,
    and Proposition<nbsp><reference|prop:ex-branch-raw-fast> makes
    <math|q<rsup|b><rsub|k>> fast. It is centered, because each
    <math|t<rsup|b><rsub|k>*<around|(|a,c|)>> is centered and centering is
    linear.

    Choose a fixed linear representative <math|R:\<cal-F\><rsub|4><rsup|<math-up|int>>\<to\>E<rsub|4>>
    with <math|\<pi\>*R=<math-up|id>> and set
    <math|r<rsup|b><rsub|k>=R*q<rsup|b><rsub|k>>. It is also fast. For the
    fixed integer <math|p>, <eqref|eq:ex-branch-transport-bound> and the
    clock give subexponential growth of <math|<wide|\<beta\>|^><rsup|p><rsub|k>*B<rsub|k>>
    and hence

    <\equation*>
      <wide|\<beta\>|^><rsub|k><rsup|<space|0.17em>p>*B<rsub|k>*r<rsup|b><rsub|k>\<longrightarrow\>0.
    </equation*>

    For example, if <math|<around|\<\|\|\>|r<rsup|b><rsub|k>|\<\|\|\>>\<leqslant\>C*e<rsup|-\<eta\>*s<rsub|k>>>,
    use the subexponential bound with exponent <math|\<eta\>/2> on the
    combined factor. Composing with the cofinal sequence <math|k<rsub|i>>
    preserves the limit. The norms of <math|<math-ss|M><rsub|i>> are
    eventually bounded by <eqref|eq:ex-branch-moment-input>. Hence their
    images of the last sequence tend to zero. Since <math|q<rsup|b><rsub|k>>
    is centered and <math|\<pi\>*R*q<rsup|b><rsub|k>=q<rsup|b><rsub|k>>, the
    chart identity yields, for all sufficiently large <math|i>,

    <\equation*>
      <math-ss|M><rsub|i><around|(|<wide|\<beta\>|^><rsub|k<rsub|i>><rsup|<space|0.17em>p>*B<rsub|k<rsub|i>>*r<rsup|b><rsub|k<rsub|i>>|)>=<wide|\<beta\>|^><rsub|k<rsub|i>><rsup|<space|0.17em>p><math-ss|P><rsub|i>q<rsup|b><rsub|k<rsub|i>>=<wide|\<beta\>|^><rsub|k<rsub|i>><rsup|<space|0.17em>p><math-up|tr><around|(|<math-ss|P><rsub|i>t<rsup|b><rsub|k<rsub|i>>|)>.
    </equation*>

    This proves <eqref|eq:ex-branch-washout>. The estimate is for each fixed
    <math|p>; it is not a uniform assertion over a growing exponent.
  </proof>

  With the explicit root-price and point-limit inputs, the quantitative raw
  rate gives more: for each fixed <math|p\<in\>\<bbb-N\>> and
  <math|b\<in\><around|{|0,-|}>>,

  <\equation*>
    <around*|\||<wide|\<beta\>|^><rsub|k<rsub|i>><rsup|<space|0.17em>p><math-up|tr><around|(|<math-ss|P><rsub|i>t<rsup|b><rsub|k<rsub|i>>|)>|\|>=O<space|-0.17em><around*|(|<around|(|1+s<rsub|k<rsub|i>>|)><rsup|p+6>*e<rsup|\<ell\><rsub|k<rsub|i>>-s<rsub|k<rsub|i>>/8>|)>.
  </equation*>

  Indeed, the raw bound contributes <math|<around|(|1+s|)><rsup|5>*e<rsup|-s/8>>,
  while <math|<wide|\<beta\>|^><rsup|p><around|\<\|\|\>|B|\<\|\|\>>> is
  bounded by a constant times <math|<around|(|1+s|)><rsup|p+1>*e<rsup|\<ell\>>>;
  the moment maps are eventually bounded. Since
  <math|\<ell\><rsub|k>=o<around|(|s<rsub|k>|)>>, the right side is
  <math|O<around|(|e<rsup|-\<kappa\>*s<rsub|k<rsub|i>>>|)>> for every
  <math|0\<less\>\<kappa\>\<less\>1/8>. The constants can depend on <math|p>
  and <math|\<kappa\>>.

  The true branch instead has the unweighted limiting trace
  <math|4*\<cal-O\>> by Proposition<nbsp><reference|prop:ex-branch-moments>
  and <eqref|eq:ex-branch-three-traces>. This limit is nonzero, so the
  unweighted trace norm is eventually at least
  <math|2<around|\<\|\|\>|\<cal-O\>|\<\|\|\>>\<gtr\>0>. Since
  <math|<wide|\<beta\>|^><rsub|k<rsub|i>>\<to\>\<infty\>>, the norm of the
  true-branch trace multiplied by <math|<wide|\<beta\>|^><rsub|k<rsub|i>><rsup|<space|0.17em>p>>
  diverges for each fixed <math|p\<geqslant\>1>. These consequences do not
  construct the physical tensor or close the quantitative chart inputs.

  <ym-unit-nav|<hlink|\<leftarrow\> YM-000033|../../YM-000033/correspondence.tm>|<hlink|YM-000034:
  Trace branch moment limits and weighted washout
  (draft)|../correspondence.tm><ym-nav-sep><hlink|HANDOFF|../HANDOFF.tm><ym-nav-sep><ym-nav-here|evidence/wrapper><ym-nav-sep><hlink|validation|../validation.tm>|>
</body>

<\initial>
  <\collection>
    <associate|html-title|YM-000034: Trace branch moment limits and weighted
    washout, evidence/wrapper \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|4>>
    <associate|auto-4|<tuple|1.3|4>>
    <associate|auto-5|<tuple|1.4|5>>
    <associate|auto-6|<tuple|2|8>>
    <associate|auto-7|<tuple|2.1|17>>
    <associate|eq:ex-branch-book-current|<tuple|27|18>>
    <associate|eq:ex-branch-book-difference|<tuple|28|18>>
    <associate|eq:ex-branch-book-tensor|<tuple|29|18>>
    <associate|eq:ex-branch-chart-array|<tuple|24|17>>
    <associate|eq:ex-branch-chart-identity|<tuple|17|9>>
    <associate|eq:ex-branch-coefficient-input|<tuple|18|10>>
    <associate|eq:ex-branch-coefficients|<tuple|13|9>>
    <associate|eq:ex-branch-grade-three-unit|<tuple|26|18>>
    <associate|eq:ex-branch-lift-beta-ratio|<tuple|22|13>>
    <associate|eq:ex-branch-lift-initial|<tuple|20|13>>
    <associate|eq:ex-branch-lift-stability|<tuple|21|13>>
    <associate|eq:ex-branch-lift-summit|<tuple|23|16>>
    <associate|eq:ex-branch-material|<tuple|12|9>>
    <associate|eq:ex-branch-material-trace|<tuple|14|9>>
    <associate|eq:ex-branch-moment-input|<tuple|19|10>>
    <associate|eq:ex-branch-moment-map|<tuple|16|9>>
    <associate|eq:ex-branch-moving-detector|<tuple|34|21>>
    <associate|eq:ex-branch-native-root-price|<tuple|33|20>>
    <associate|eq:ex-branch-raw-rate|<tuple|35|22>>
    <associate|eq:ex-branch-recorded-difference|<tuple|30|18>>
    <associate|eq:ex-branch-recorded-traces|<tuple|31|18>>
    <associate|eq:ex-branch-recording-compactness|<tuple|32|19>>
    <associate|eq:ex-branch-test-properties|<tuple|25|17>>
    <associate|eq:ex-branch-three-traces|<tuple|15|9>>
    <associate|eq:ex-branch-transport-bound|<tuple|36|23>>
    <associate|eq:ex-branch-washout|<tuple|37|23>>
    <associate|eq:ex-trace-derivative-compatibility|<tuple|9|6>>
    <associate|eq:ex-trace-divergence-probes|<tuple|11|7>>
    <associate|eq:ex-trace-green-hessian|<tuple|4|4>>
    <associate|eq:ex-trace-green-third|<tuple|5|4>>
    <associate|eq:ex-trace-orbit-representatives|<tuple|3|3>>
    <associate|eq:ex-trace-radial-reconstruction|<tuple|1|2>>
    <associate|eq:ex-trace-signed-array|<tuple|2|3>>
    <associate|eq:ex-trace-vacuum-probes|<tuple|8|5>>
    <associate|lem:ex-trace-free-stress-basis|<tuple|0.2|5>>
    <associate|lem:ex-trace-vector-probes|<tuple|0.1|3>>
    <associate|prop:ex-branch-moments|<tuple|0.4|16>>
    <associate|prop:ex-branch-raw-fast|<tuple|0.5|21>>
    <associate|prop:ex-branch-washout|<tuple|0.6|23>>
    <associate|prop:ex-trace-free-closure-rank|<tuple|0.3|7>>
    <associate|sec:ex-lattice-trace-free-rank|<tuple|1|1>>
    <associate|sec:ex-trace-branch-moments|<tuple|2|8>>
    <associate|subsec:ex-branch-fast-trace|<tuple|2.1|17>>
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

      <with|par-left|<quote|1tab>|2<space|2spc>Branch moments and trace
      washout <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|2tab>|<with|font-size|<quote|0.92>|2.1<space|2spc>The
      fast trace from localized recordings
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>>
    </associate>
  </collection>
</auxiliary>