<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Independent review: Chapter7 weighted and vertex
  bounds><label|independent-review-chapter7-weighted-and-vertex-bounds>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Checks that
    passed> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Clarification
    sent to author> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Precise
    remaining classical stationary-jet issue>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Follow-up: the
    classical-jet gap was closed in the revised chapter>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>
  </table-of-contents>

  Reviewed current <verbatim|07-matching.tex>, especially
  <verbatim|ch07:integrand-input>, <verbatim|ch07:weighted>, centered
  quotient, and inherited loop argument. No Chapter7 edits by this reviewer.

  <section|Checks that passed><label|checks-that-passed>

  <\itemize-minus>
    <item>Actual centered change <verbatim|r=r_root-Ru> matches Chapter5's
    exact <verbatim|Q=M+d_cR>. The centered scalar gauge insertion is the
    smoothed mean, with unitary Bloch coefficient mu\<twosuperior\> m_l. The
    principal m_l is bounded below at fixed smoothing order on the real
    coarse cube. The triangular internal linear change has determinant one.

    <item>A weighted unit internal fine direction has normalized residue
    L\<twosuperior\> norm O(mu) and normalized first-difference norm
    O(mu\<twosuperior\>): Euclidean norms are respectively \<leqslant\>mu^-1
    and O(1), and normalized counting contributes L^-2=mu\<twosuperior\>.
    External smooth legs have the corresponding supremum powers by
    <verbatim|ch05:actual-bridge>.

    <item>The local weight-four argument supplies the necessary leading
    Wilson response for the specified action class (direct curvature energy,
    path-row squares, and curvature-degree\<geqslant\>3 atoms). Kinetic
    normalization H(0)=I fixes the weight-four coefficient. Each extra
    transported-field factor/derivative increases weight. Thus after two
    internal and n background derivatives the difference from Wilson has
    combined momentum order\<geqslant\>3\<minus\>n, n\<leqslant\>2.
    Exponential true-path-length bounds control the differentiated remainder
    uniformly; no period factor is needed.

    <item>First kinetic insertion has at least one coordinate difference,
    obtained from the zero constant coefficient by coordinate division;
    second insertion needs none. The count <verbatim|(n+2)+number of
    differences=4> gives normalized factor mu\<#2074\> with two internal
    L\<twosuperior\> legs and external supremum legs, canceled by the
    L\<#2074\> anchor sum. This checks the stated power, provided division is
    applied to the actual left-coordinate response, as the chapter specifies.

    <item>Radial integrand bounds are dimensionally consistent. Denominator
    error is O(T\<threesuperior\>)+O(mu\<twosuperior\>), first insertion
    error is O(T\<twosuperior\>)+O(mu\<twosuperior\>/T), inverse factors are
    O(T^-2). Two external momentum derivatives of the telescoped bubble
    therefore give O(T^-3+mu\<twosuperior\> T^-6). Local seagull contributes
    O(T^-2); regulator seagull contributes O(mu\<twosuperior\> T^-6). Both
    fit the asserted annular remainder, without invoking a seagull
    cancellation. The ball T\<approx\>mu costs O(mu^-4), compensated by its
    four-dimensional volume.

    <item>Regulator denominator floor <verbatim|x+mu\<twosuperior\>(mu\<twosuperior\>/(x+mu\<twosuperior\>))^9
    \<gtr\>= 2^-10(x+mu\<twosuperior\>)> is valid by splitting
    x\<leqslant\>mu\<twosuperior\> and x\<geqslant\>mu\<twosuperior\>.
    First/second background regulator responses have sizes
    mu\<twosuperior\>/T and mu\<twosuperior\>/T\<twosuperior\>.
    Differentiating in external momentum in the scaled norm retains these
    powers.

    <item>The centered frame equation is algebraically correct: writing F=Pi
    J0+S and imposing the weighted centering gives
    <verbatim|F=Pi1\<minus\>sum omega Pi S+S>. At flat background
    E\<minus\>1=0 and D(P\<minus\>Pi)(1)=0, so the next derivative depends on
    lower frame derivatives. With at most two internal slots, products
    require only L\<infty\>,L\<twosuperior\>,L\<onesuperior\>; averaged
    coordinate reads have bounded multiplicity on endpoint-pair space. The
    domination omega\<leqslant\>C_j nu follows from w\<leqslant\>L^-4 and
    O_j(L\<#2074\>) patch size.

    <item>Quotient coercivity is correct at the linear algebra level: gauge
    away nonprincipal longitudinal aliases, remove the centered scalar by the
    principal scalar alias, control nonprincipal transverse modes by
    curvature, then control the remaining principal vector with the least
    singular value c_j mu of M's principal coefficient. The same argument
    includes zero coarse momentum. Uniform bounds for the smoothed scalar
    mean require its alias row norm, supplied by the centered-box decay, not
    just an individual alias estimate.

    <item>Freezing the weights at a real coarse momentum while retaining the
    analytic block transform is a valid way to use holomorphic perturbation.
    A coarse displacement of fixed size changes q((p+2pi l)/L) by O(mu), and
    h_l\<geqslant\>mu. This avoids differentiating nonholomorphic weights.

    <item>Inherited-loop gain is checked: four vanishing link-momentum orders
    can be divided into two differences per leg on a smaller strip; each leg
    is O(L^-3), and the fine anchor sum L\<#2074\> leaves L^-2. The actual
    transport's gradient correction is annihilated by the insertion's Ward
    identities. Nonprincipal alias contributions retain order four because
    their transverse transport is O(p\<twosuperior\>); no ratio-uniform
    inverse of an individual alias is needed for this order statement.
  </itemize-minus>

  <section|Clarification sent to author><label|clarification-sent-to-author>

  The trace paragraph says the regulator mu\<twosuperior\> factor pays \Pboth
  the L\<twosuperior\> frame derivative and the two weighted-to-Euclidean
  conversions.\Q These are <strong|different terms>, not three simultaneous
  losses:

  <\itemize-minus>
    <item><verbatim|m_mu X>: the Euclidean output norm of X is O(mu^-2),
    absorbed by the trace norm O(mu\<twosuperior\>) of m_mu.

    <item><verbatim|P_f* M_mu P_f>: the two conversions cost mu^-1 each,
    absorbed by that same power mu\<twosuperior\> in this separate term.
  </itemize-minus>

  An interpretation that multiplies all three losses would leave mu^-2 and
  would be false. The author was asked to make the termwise allocation
  explicit. The available estimates support the separate allocations.

  <section|Precise remaining classical stationary-jet
  issue><label|precise-remaining-classical-stationary-jet-issue>

  Chapter5's actual stationary graph plus the path budget gives
  period-uniform fixed-L local jets, actual tangent identification, and a
  smooth representative with pre-L difference bounds. It does <strong|not by
  itself> give ratio-uniform stationary Taylor coefficients of orders3/4: its
  tree gap and supremum inverse may deteriorate with L.

  To derive those stronger coefficients, use the stationary chain identities

  <\itemize-minus>
    <item><verbatim|E'''(0)=f'''(0)[W,W,W]>;

    <item><verbatim|E''''(0)=f''''(0)[W,W,W,W] \<minus\> sum_(3 pairings)
    B_ij H_vert^-1 B_kl>, where <verbatim|B_ij=f'''(0)[W_i,W_j,\<centerdot\>]>
    on the vertical space.
  </itemize-minus>

  The exchange terms require (a) ratio-uniform compatible dual weighted
  bounds for B, (b) a ratio-uniform inverse on those gauge-annihilating
  functionals, and (c) translation/exponential kernel estimates for the
  complete contractions. The new completed quotient/inverse and vertex
  estimates in Chapter7 are plausible suppliers for (a)/(b), but they must
  actually be applied to these contractions; they cannot be replaced by
  citing the fixed-L Chapter5 implicit-function theorem. Common
  infinite-lattice coefficients are also required to turn finite-volume local
  jets into the exact periodized strip kernels used by classical matching.
  Parent and Chapter7 author were notified.

  No incorrect radial exponent or centering sign was found. This review
  checks the displayed power/norm mechanisms; it does not certify the full
  infinite RG trajectory or eliminate the incoming path-budget/coefficient
  compatibility conditions.

  <section|Follow-up: the classical-jet gap was closed in the revised
  chapter><label|follow-up-the-classical-jet-gap-was-closed-in-the-revised-chapter>

  The author added <verbatim|ch07:classical-uniform> and
  <verbatim|ch07:uniform-stationary-jets> with the missing stationary
  contractions. The gauge-annihilation argument checks: differentiate
  <verbatim|D_z S[R(v,z)a]=0> twice along full stationary tangents. The terms
  involving derivatives of R vanish by tangent orthogonality
  <verbatim|D\<twosuperior\>S[T,(0,z)]=0>, and DS(0)=0 removes the last term.
  Thus B annihilates gauge directions. For C=H+F*F and Cw=B, pairing with R a
  gives <verbatim|\<less\>FR a,Fw\<gtr\>=0>; surjectivity of FR implies Fw=0
  and hence Hw=B. The completed inverse therefore gives the same exchange
  pairing as the forest inverse. The weighted vertex and inverse bounds now
  give the pre-L cubic/quartic contractions; the common complex strip and
  exact periodized Fourier matrices give the required common kernels. This
  addresses the earlier issue, rather than merely citing Chapter5.

  The added classical-budget gain also checks. It compares actual fine
  vertices with Wilson vertices on the <strong|same> actual tangents and
  inverse, so no estimate for an inverse difference is required. Higher
  incoming coefficients do not alter that inverse once the quadratic
  metric/predictor data are fixed. Weight\<geqslant\>5 of the fine-action
  difference gives two differences in its cubic vertex and one in its quartic
  vertex. For the dual cubic remainder, differences on the one internal leg
  can be transferred to the two external legs by exact momentum conservation;
  at most two differences are required on an external leg. Their actual
  smooth bounds give P(A)/L. Expanding the exchange pairing into its baseline
  and delta-B terms yields the stated fixed-stage constant plus P_stage(A)/L,
  with the squared remainder absorbed into the polynomial. The baseline
  includes the block penalty and depends only on fixed Gaussian/predictor
  data. This conclusion requires A to denote the remaining nonlinear incoming
  budget, excluding changes to those fixed quadratic data, as the revised
  text states.
</body>

<\initial>
  <\collection>
    <associate|html-title|Independent review: Chapter7 weighted and vertex
    bounds \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|3>>
    <associate|checks-that-passed|<tuple|1|1>>
    <associate|clarification-sent-to-author|<tuple|2|2>>
    <associate|follow-up-the-classical-jet-gap-was-closed-in-the-revised-chapter|<tuple|4|3>>
    <associate|independent-review-chapter7-weighted-and-vertex-bounds|<tuple|?|1>>
    <associate|precise-remaining-classical-stationary-jet-issue|<tuple|3|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Checks
      that passed> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Clarification
      sent to author> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Precise
      remaining classical stationary-jet issue>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Follow-up:
      the classical-jet gap was closed in the revised chapter>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>