<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Check of the restarted comparison and the uniform difference
  supplier><label|check-of-the-restarted-comparison-and-the-uniform-difference-supplier>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1. Objects that
    must remain identical> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2. Endpoint
    re-expression: stronger suppression> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3. Closure on
    the actual restarted history> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4. Support
    reserve at construction time> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Joint
    Gaussian comparison: the later guarded route>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Higher modes
    and the original denominator> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. Root
    normalization and finite detectors> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|8. Final
    absorption and its independent inputs>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|9. Concrete
    writing consequences> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>
  </table-of-contents>

  Checked against the supplied Martin sources, 2026-11-18. This note follows
  a particular implication chain. It independently checks the displayed
  algebra, quantifier changes and object identifications described below; it
  does <strong|not> certify the primitive covariance, stationary-background
  or nonlinear RG estimates.

  <strong|Conclusion.> Martin contains a detailed route addressing Trish's
  conditional Gaussian-comparison caveat, including later replacement
  arguments that are easy to miss: a joint guarded Gaussian lemma, a stronger
  support-exponent construction, the complete opening polynomial, and an
  application to the selected chart. The final detector/absorption argument
  uses finite-cutoff ranks and estimates, so it does not require continuum
  rank to prove uniform difference bounds. The remaining verification
  boundary is the actual local Gaussian/energy/room hypotheses and their
  simultaneous supply by the selected schedule. No contradiction or
  definitive global gap has been established by this check.

  All filenames abbreviate Martin/existence/. Labels are stable locators;
  line numbers refer to the supplied snapshot.

  <section|1. Objects that must remain identical><label|1-objects-that-must-remain-identical>

  Fix the selected history, cutoff <math|N>, volume <math|p>, and comparison
  level <math|k>. The original insertion family is fixed before comparison.
  Its complete unnormalized marked density at cutoff <math|N> is
  <math|q<rsub|N>>; its actual push to level <math|k> is <math|q<rsub|k>>. In
  general <math|q<rsub|k>> contains higher connected modes and is not the
  unmarked density multiplied by singleton insertions.

  The comparison restarts <strong|below <math|k>> with constant actual
  coupling <math|\<beta\><rsub|N,p,k>>. The clock parameters
  <math|x<rsub|i>=<wide|\<beta\>|^><rsub|i>> still vary with <math|i>. The
  paths, clips, adjacent quadratic data and installed block geometry are
  retained. The restarted activities are newly constructed and need not equal
  the original lower-level activities.

  At each step, the exact identity pushes the genuine incoming density. The
  neutral representation deletes only its additive remainder and is used in
  estimates. That deletion leaves unchanged the Gaussian precision and affine
  mean built from path, clip, coupling, field, forest, tag and store. It does
  change the interacting density. This distinction is explicit in
  actual-local-compiler-handoff.tex, proof of lem:actual-neutral-warning
  (257\U321).

  The invariant across normalized block-kernel sequences is every coefficient
  integral, including the empty coefficient, not equality of lower-level
  densities. The common denominator remains the original Wilson partition
  function.

  <section|2. Endpoint re-expression: stronger
  suppression><label|2-endpoint-re-expression-stronger-suppression>

  Source: restarted-rank-history.tex, endpoint construction (211),
  prop:restart-endpoint (243).

  There are <strong|two different slow functions>:

  <\equation*>
    H<rsub|s>=e<rsup|<around|(|log log s|)><rsup|2>>,<space|2em>h<rsub|s>=e<rsup|<around|(|log
    log s|)><rsup|3/2>>.
  </equation*>

  The original threshold/radius are <math|t=s<rsup|-1/2>*H<rsub|s>>,
  <math|M=<around|\<lceil\>|<around|(|log s|)><rsup|2>|\<rceil\>>>; the
  restarted ones are <math|\<tau\>=s<rsup|-1/2>*h<rsub|s>>,
  <math|B=M<rsup|2>>. Thus <math|2*\<tau\>\<leqslant\>t> eventually. This is
  not a notational variant of one threshold.

  For the piecewise clipped term <math|d<rsub|t>>, the source uses

  <\equation*>
    \<Delta\><around|(|r|)>=d<rsub|t><around|(|r|)>-d<rsub|\<tau\>><around|(|r|)>\<geqslant\>0,<space|2em>\<Delta\><around|(|r|)>\<geqslant\>c<rsub|<math-up|lin>>*\<tau\><rsup|2>*<space|1em><around|(|r\<gtr\>\<tau\>|)>.
  </equation*>

  The ranges check directly. For <math|\<tau\>\<less\>r\<leqslant\>t>,
  <math|\<Delta\><around|(|r|)>=c<rsub|<math-up|dir>>*r<rsup|2>/2-c<rsub|<math-up|lin>>*\<tau\>*r\<geqslant\><around|(|c<rsub|<math-up|dir>>/2-c<rsub|<math-up|lin>>|)>*r<rsup|2>\<geqslant\>c<rsub|<math-up|lin>>*\<tau\><rsup|2>>,
  under <math|c<rsub|<math-up|lin>>\<less\>c<rsub|<math-up|dir>>/16>. For
  <math|r\<gtr\>t>, <math|\<Delta\><around|(|r|)>=c<rsub|<math-up|lin>>*<around|(|t-\<tau\>|)>*r\<geqslant\>c<rsub|<math-up|lin>>*\<tau\><rsup|2>>.
  Allocating among at most five touched sites gives a positive charge per
  newly flagged site.

  The theorem assumes original path coefficient bounds,
  <math|s/2\<leqslant\>\<beta\>\<leqslant\>2*s>, loop bound
  <math|2*H<rsub|s>>, additive allowance <math|s<rsup|-11/10>>, and original
  large-field allowance <math|e<rsup|-H<rsub|s><rsup|1/5>>>. It preserves the
  coupling/scalar/path data and obtains allowance
  <math|G<around|(|s|)>=e<rsup|-a<rsub|0>*h<rsub|s><rsup|2>>>, with
  <math|0\<less\>a<rsub|0>\<leqslant\>c<rsub|<math-up|lin>>/20>. The changed
  masks and exact new inventories must be kept; this is not monotonicity of
  the old polymer norm.

  <strong|Checked:> clipping arithmetic and threshold hierarchy. <strong|Not
  independently checked:> all path-tail and connected-component estimates in
  the endpoint proof; the explicit construction is present.

  <section|3. Closure on the actual restarted
  history><label|3-closure-on-the-actual-restarted-history>

  Source: restarted-rank-history.tex, prop:restart-actual-closure (564),
  proof 581\U742; actual-local-compiler-handoff.tex (399\U404).

  The coupling match is quantitative. The clock gives
  <math|3*s/4\<leqslant\>x<rsub|i>\<leqslant\>s>, while
  <math|<around|\||\<beta\><rsub|N,p,k>-s|\|>\<leqslant\>s/8>. Consequently

  <\equation*>
    x<rsub|i>/2\<leqslant\>\<beta\><rsub|N,p,k>\<leqslant\>2*x<rsub|i>.
  </equation*>

  Indeed <math|x<rsub|i>/2\<leqslant\>s/2\<less\>7*s/8>, and
  <math|2*x<rsub|i>\<geqslant\>3*s/2\<gtr\>9*s/8>. A constant actual coupling
  meets the adjacent-coupling drift condition with difference zero.

  The original paths/clips/tubes and their diagonal identities, metric floors
  and row bounds do not involve the additive/forced coefficients.
  Neutralization therefore preserves them. The genuine additive cost is only
  a <strong|value> cost; it need not meet the smaller derivative allowance of
  the original calendar.

  For <math|y=log log s>, put

  <\equation*>
    A<rsub|s>=e<rsup|y<rsup|3>>,<space|1em>q<rsub|n>=s<rsup|-1/200>*A<rsub|s><rsup|4*n>,<space|1em>\<omega\><rsub|n>=q<rsub|n>*A<rsub|s>,<space|1em>\<delta\><rsub|n>=q<rsub|n>*A<rsub|s><rsup|3>.
  </equation*>

  The window length satisfies <math|n\<leqslant\>h\<leqslant\>y<rsup|4>>
  eventually. For fixed <math|r>,

  <\equation*>
    log <around|(|q<rsub|n>*A<rsub|s><rsup|r>|)>\<leqslant\>-<tfrac|1|200>log
    s+<around|(|4*y<rsup|4>+r|)>*y<rsup|3>\<leqslant\>-<tfrac|1|400>log s
  </equation*>

  eventually, since <math|log s=e<rsup|y>>. Also

  <\equation*>
    s<rsup|-1/200>+16*\<delta\><rsub|n>\<leqslant\>17*\<delta\><rsub|n>\<leqslant\>A<rsub|s>*\<delta\><rsub|n>=q<rsub|n+1>
  </equation*>

  when <math|A<rsub|s>\<geqslant\>17>. These inequalities close the displayed
  short-interval value recurrence.

  The loop/cubic/quartic path correction has weighted value bound

  <\equation*>
    \<beta\>*e<rsup|7*a>*C<rsub|c>*\<tau\><rsub|x><rsup|3>+\<beta\>*e<rsup|9*a>*C<rsub|c>*\<tau\><rsub|x><rsup|4>+e<rsup|5*a>*\<Gamma\><rsub|c>*\<tau\><rsub|x><rsup|2>.
  </equation*>

  With <math|\<beta\>\<leqslant\>4*x>, <math|\<tau\><rsub|x>=x<rsup|-1/2>*e<rsup|<around|(|log
  log x|)><rsup|3/2>>>, and <math|\<Gamma\><rsub|c>\<leqslant\>2*e<rsup|<around|(|log
  log x|)><rsup|2>>>, this is <math|x<rsup|-1/2+o<around|(|1|)>>>, hence
  eventually at most <math|s<rsup|-1/200>> uniformly for
  <math|x\<in\><around|[|s/2,s|]>>. The additional requirement
  <math|a/B<rsub|c>\<leqslant\>\<sigma\><rsub|c>> is eventual for a fixed
  positive path rate.

  The large-field inflation is paid by actual energy. The proof takes the
  larger forced multiplier <math|max <around|(|G<around|(|x<rsub|i>|)><rsup|-2>,G<around|(|x<rsub|i+1>|)><rsup|-1>|)>>.
  Its bound <math|log m\<leqslant\>4*a<rsub|<math-up|coast>><math-up|hot><around|(|x<rsub|i+1>|)><rsup|2>>,
  together with <math|2*a<rsub|<math-up|coast>>\<leqslant\>K/4>, leaves at
  least half the energy exponent <math|K<math-up|hot><rsup|2>>. The analytic
  inputs remain the actual energy bound and a <strong|single joint Gaussian
  tail event>, not multiplied marginal probabilities.

  <strong|Checked:> bands, value recurrence, path-correction scaling and
  inflation arithmetic. <strong|Retained hypotheses:> positive compatible
  tubes, full support inventories, actual energy/tail estimates, exact
  all-hole identities and fixed raw-exponent purchases.

  <section|4. Support reserve at construction
  time><label|4-support-reserve-at-construction-time>

  Source: allarity-marked-propagation.tex, prop:allarity-compiler-reserve
  (2062).

  The upper comparison needs <math|e<rsub|\<ast\>>=e+1+\<sigma\>>,
  <math|0\<less\>\<sigma\>\<leqslant\>1>, before returning to exponent
  <math|e>. The source fixes

  <\equation*>
    E=e+2,<space|2em><wide|E|^>=E+8,<space|2em>\<alpha\>\<geqslant\>8*T<rsub|E>.
  </equation*>

  The raw connected expansion uses <math|E>; local support estimates use
  <math|<wide|E|^>>. The mixed expansion requires cover charge <math|E+7>,
  leaving one reserve. The fine-to-coarse inequality

  <\equation*>
    10\<cdot\>15<rsup|4>*<around|(|E+7|)>\<leqslant\>L*\<sigma\><rsub|f>
  </equation*>

  must be imposed <strong|before <math|L> is fixed>. Increasing the coupling
  cannot fix an insufficient block ratio.

  After construction, <math|e<rsub|\<ast\>>\<leqslant\>E> makes every
  nonnegative weighted majorant at <math|e<rsub|\<ast\>>> bounded by its
  value at <math|E>. Likewise <math|max <around|(|1,H<rsup|q-3>|)>> bounds
  every needed multiplier <math|l<around|(|z|)>>,
  <math|z\<in\><around|[|H<rsup|-q>,H<rsup|-4>|]>>. Thus one alphabet and its
  original identities serve both uses. Constructing separate alphabets would
  not establish the claimed compatibility.

  <strong|Checked:> exponent and multiplier matching. The proposition retains
  the local handoff's analytic hypotheses; restarted closure supplies
  history-specific inherited-law and small-remainder conditions. These can be
  read as a conditional local theorem followed by its application, rather
  than an automatic circularity. The upstream local estimates remain
  separate.

  <section|5. Joint Gaussian comparison: the later guarded
  route><label|5-joint-gaussian-comparison-the-later-guarded-route>

  An earlier sufficient criterion (M), around line 1030 of
  allarity-marked-propagation.tex, demands a common cutoff-weighted chart
  measure and jet identities. Ordinary Gaussian marginal equality is
  insufficient. But (M) is <strong|not an undischarged necessity for the
  entire argument>: a later route expressly bypasses it.

  The replacement is lem:allarity-guarded-gaussian (1266), applied through
  lem:allarity-pair-reader (1415) and the following attachment. For each
  sector/tag <math|t>, all polynomial factors use one probability space, one
  centered joint Gaussian array <math|\<eta\><rsub|t>>, and the same mean
  <math|a>. Individual guards obey

  <\equation*>
    <around|\||C<rsub|t>-C<rsub|\<ast\>>|\|>\<leqslant\>\<epsilon\>,<space|1em><big|int><around|(|1-\<Gamma\><rsub|t,I>|)>*<space|0.17em>d*\<mu\><rsub|t>\<leqslant\>\<epsilon\><rsup|2>,<space|1em><around|\||\<xi\><rsub|t,I>-a-\<eta\><rsub|t>|\|>\<leqslant\>\<epsilon\><text|on
    >\<Gamma\><rsub|t,I>\<gtr\>0.
  </equation*>

  Every polynomial is invariant under the allowed patch gauge. The same
  mixture weights, nonnegative and summing to one, apply to every partition
  and the empty product. The empty expectation is one.

  The proof checks without independence of guards. For a partition with
  <math|\<ell\>> factors,

  <\equation*>
    1-<big|prod><rsub|I>\<Gamma\><rsub|t,I>\<leqslant\><big|sum><rsub|I><around|(|1-\<Gamma\><rsub|t,I>|)>,<space|2em>\<bbb-E\>*<around|(|1-<big|prod><rsub|I>\<Gamma\><rsub|t,I>|)>\<leqslant\>\<ell\>*\<epsilon\><rsup|2>.
  </equation*>

  Telescoping monomials bounds the physical-coordinate replacement by
  <math|\<epsilon\>> times a Gaussian moment polynomial. Cauchy\USchwarz
  removes the product guard at cost <math|<sqrt|\<ell\>>*<space|0.17em>\<epsilon\>>.
  Wick pairing compares covariance entries. At fixed polynomial degree and
  coefficient <math|\<ell\><rsup|1>> norm, constants do not grow with unused
  coordinates. The finite marker logarithm is a polynomial in these moments
  with unit constant coefficient. This proves the finite-arity discrepancy
  conditional on the joint-law input.

  The proposed actual supplier in actual-reader-dawn-selection.tex uses
  actual-to-flat covariance error <math|x<rsup|-1/8>>, short-row tail
  <math|p<rsub|x>=x<rsup|-1/8>>, physical error <math|x<rsup|-1/32>>, and
  guard loss <math|x<rsup|-1>>. For fixed <math|f>, these are bounded by
  <math|H<rsup|-f>> or <math|H<rsup|-2*f>> as required, uniformly for
  <math|x\<in\><around|[|s/2,s|]>>, since <math|<around|(|log log
  s|)><rsup|2>=o<around|(|log s|)>>. At a stage boundary, the pair-reader
  lemma uses the minimum strip width, maximum bounds and <strong|fine metric
  floor>, while retaining distinct metrics in

  <\equation*>
    <around|(|D*I<rsub|F>|)>*A<rsub|F><rsup|-1>*<around|(|D*I<rsub|F>|)><rsup|<math-ss|T>>=P<rsub|f>-J*P<rsub|c>*J<rsup|<math-ss|T>>.
  </equation*>

  The same reference-forest/tag scalar is extracted before choosing marks:
  actual-corrected-body-compiler.tex, eq:actual-body-loading (278). Its
  eq:actual-body-density (327) identifies the genuine integrand. A wholly
  leading component contains no body letter and no compatible background
  packet; it is a product of guarded principal values on the common
  Gaussian/Haar probability space. This identifies the component, not the
  entire interacting density as a Gaussian.

  <strong|Checked:> the guarded comparison proof, the scale conversion, and
  the explicit distinction between scalar loading and probability law.
  <strong|Remaining:> the actual mean/covariance/guard estimates, their room
  assumptions, and all cross-entry identities have not been independently
  rederived.

  <section|6. Higher modes and the original
  denominator><label|6-higher-modes-and-the-original-denominator>

  Source: allarity-marked-propagation.tex, lem:allarity-selected-opening
  (2615), prop:allarity-selected-application (2704).

  The opening lemma starts from the complete <math|q<rsub|k>>. It invokes the
  earlier mixed-grade finite-menu expansion, then a stronger support norm to
  suppress higher modes at small marker weight. The joint endpoint expansion
  retains original eligibility tests, old/new inventories and full modes.
  Every forced component contains a newly flagged-site factor
  <math|X<rsub|z>>; after reserving one factor <math|G<around|(|s|)>>, the
  stated remainder sum satisfies <math|G<around|(|s|)>*<around|(|e<rsup|r<rsub|s>>-1|)>\<leqslant\>G<around|(|s|)>>
  when <math|r<rsub|s>\<leqslant\>H<rsup|-1>>,
  <math|Z<around|(|B|)>*r<rsub|s>\<leqslant\>1>, and <math|H> is large. A
  small singleton error alone would not prove this.

  The last paragraph of the selected application contains an important exact
  identity. For prescribed reference cumulants
  <math|D<rsub|c><rsup|<math-up|ref>>>, set

  <\equation*>
    J=exp<rsub|\<ast\>><around|(|-<big|sum><rsub|c>D<rsub|c><rsup|<math-up|ref>>|)>.
  </equation*>

  The corrected density is <math|J*q<rsub|N>>, whose push to <math|k> is
  <math|J*q<rsub|k>>: <math|J> is field independent and each block map is
  linear on the finite coefficient algebra. Multiplying by the <em|whole
  invoice> would double-count the insertions. Since <math|J>'s empty
  coefficient is one, the unmarked density and original partition denominator
  remain unchanged.

  <strong|Checked:> coefficientwise push identity and the distinction between
  <math|q<rsub|k>> and a singleton product. <strong|Not rederived:> the
  upstream weighted mixed-grade bounds making <math|r<rsub|s>> small. Their
  source is the proof preceding eq:trace-original-marked-payment and
  eq:trace-endpoint-marked-budget in trace-firesky-gallery.tex, not the final
  marked-output estimate itself.

  <section|7. Root normalization and finite
  detectors><label|7-root-normalization-and-finite-detectors>

  rank-root-normalization.tex retains the finite-volume correction. Tree
  gauge leaves <math|3*V+1> links; plaquette elimination integrates
  <math|3*V-3> factors. Division leaves four powers of <math|g<rsup|-dim G>>:

  <\equation*>
    <frac|z<around|\||<big|int>f|\|>|Z<rsub|R>>\<leqslant\>e<rsup|V*P<rsub|R><around|(|X|)>-4<around|(|dim
    G|)>*log g>.
  </equation*>

  With <math|q> replica cells and coefficient weight
  <math|a<rsup|q<around|\||I|\|>>>, the root is at most

  <\equation*>
    a<rsup|-<around|\||I|\|>>*exp <around|{|P<rsub|R><around|(|X|)>-4<around|(|dim
    G|)>*log g/q|}>.
  </equation*>

  For <math|a=e<rsup|2*I<rsub|k>>>, this is
  <math|\<leqslant\>e<rsup|-I<rsub|k>>> if the entire exponent is at most
  <math|I<rsub|k>>. The harmonic correction is not discarded.

  prop:rank-root-output-ticket (308) buys this at the <strong|output> stage,
  possibly different from the reading stage. The request
  <math|1+<sqrt|16*M*max <around|(|T<rsub|M><around|(|\<pi\><rsub|i>|)>,0|)>>\<leqslant\>1+log
  log <wide|\<beta\>|^><rsub|k>> gives <math|T<rsub|M><around|(|\<pi\><rsub|J<around|(|w<around|(|k|)>|)>>|)>\<leqslant\>I<rsub|k>>
  after squaring. Output lawfulness is separate: actual-rank-purchases.tex,
  prop:rank-trace-output-lawful (1323) and cor:rank-trace-all-levels (1440).

  The lift calculation is finite dimensional. Common maps satisfy

  <\equation*>
    <around|\||A*v-T*v|\|>\<leqslant\><tfrac|1|2><around|\||A*v|\|>,<space|2em><around|\||v|\|>\<leqslant\>D<rsub|k>*<around|\||A*v|\|>.
  </equation*>

  Hence <math|T> is invertible and <math|<around|\||T<rsup|-1>|\|>\<leqslant\>2*D<rsub|k>>.
  The <strong|same> <math|T> solves all columns' equations
  <math|S<rsub|t>*T*u<rsub|i>=W<rsub|\<rho\>>*v<rsub|i>>. The resulting bound
  <math|B<rsub|k>> depends on <math|k> but not <math|N,p>, as needed.

  fullmesh-fixedbounds-producer.tex, lem:fullmesh-uniform-detector (367),
  uses a finite-cutoff estimate. Although eq:rank-purchased-point-comparison
  is displayed after extraction in actual-rank-purchases.tex, its preceding
  paragraphs expressly give the root bound for all sufficiently large
  <math|N> and every <math|p>, before extraction. The detector therefore does
  not strengthen a merely ordered-limit claim.

  Bounded projections with the finite equation kernel already exist before
  extraction: finite-rank-kernel-transport.tex (9\U45) constructs a
  projection using a fixed Euclidean inner product and averages over finite
  symmetries. Each average still kills the same subspace and differs from the
  identity by a map into it; these two properties imply idempotence. Its norm
  is uniform in the varying subspace. The rank is the finite free-quotient
  rank by an exact calibrated isomorphism, not a continuum rank theorem.

  For a fixed injective free matrix <math|G>, if
  <math|<around|\||c|\|>\<leqslant\>K*<around|\||G*c|\|>> and each entry of
  <math|Q-G> is less than <math|1/<around|(|2*K*r|)>>, then
  <math|<around|\||c|\|>\<leqslant\>2*K*<around|\||Q*c|\|>>. Bounded lifted
  columns/projections give <math|<around|\||\<Pi\><rsub|i>*v|\|>\<leqslant\>Z*<around|\||L<rsub|i>*\<Pi\><rsub|i>*v|\|>>.
  Constants are independent of <math|N,p> once one comparison level is fixed.

  Averaged differences satisfy the exact identity

  <\equation*>
    <frac|1|h>*<big|sum><rsub|j=0><rsup|h-1><frac|H*<around|(|x+<around|(|j+1|)>*e|)>-H*<around|(|x+j*e|)>|a<rsub|N>>=<frac|H*<around|(|x+h*e|)>-H<around|(|x|)>|h*a<rsub|N>>.
  </equation*>

  With <math|h=<around|\<lceil\>|b/a<rsub|N>|\<rceil\>>>, each averaged
  derivative costs at most <math|2/b>, using undifferentiated bounds. The
  positional modulus used to average detector positions is attributed to the
  earlier transfer/Schatten argument, not the derivative estimate being
  proved.

  <strong|Checked:> normalizer factors, inversion/detector algebra, special
  projection averaging and telescoping. <strong|Remaining:> primitive
  centered-root and positional-modulus estimates with their support
  assumptions.

  <section|8. Final absorption and its independent
  inputs><label|8-final-absorption-and-its-independent-inputs>

  Source: fullmesh-fixedbounds-producer.tex, prop:fullmesh-selected-supplier
  (496).

  Encoding gives <math|x<rsub|i>> and vanishing root error
  <math|E<rsub|i>=O<around|(|x<rsub|i>|)>-D<rsub|l>*F<rsub|i>>. The assay
  satisfies <math|<around|\||L<rsub|i>*x<rsub|i>|\|>\<leqslant\>c>. Set
  <math|y<rsub|i>=\<Pi\><rsub|i>*x<rsub|i>> and

  <\equation*>
    z<rsub|i>=<around|(|1+<around|\||y<rsub|i>|\|>|)><rsup|-1>*<around|(|x<rsub|i>-y<rsub|i>|)>.
  </equation*>

  The source checks <math|z<rsub|i>> is uniformly subpower in calibrated
  coordinates: its first term is a bounded scalar times a subpower row; the
  second is bounded by one. Its projected kernel is zero. Microscopic
  equation comparison gives <math|<around|\||L<rsub|i>*z<rsub|i>|\|>\<to\>0>
  uniformly in <math|p>. Eventually it is at most <math|1/<around|(|2*Z|)>>,
  so

  <\equation*>
    <around|\||y<rsub|i>|\|>\<leqslant\>Z*c+<tfrac|1|2><around|(|1+<around|\||y<rsub|i>|\|>|)>,<space|2em><around|\||y<rsub|i>|\|>\<leqslant\>2*Z*c+1.
  </equation*>

  Thus <math|y<rsub|i>> has a primary root budget. The exact identity
  <math|D<rsub|l>*F<rsub|i>=O<around|(|y<rsub|i>|)>+O<around|(|x<rsub|i>-y<rsub|i>|)>-E<rsub|i>>
  gives the difference bound. Finitely many orientations can be included
  before taking maxima. No limit of <math|\<Pi\><rsub|i>> is needed.

  The microscopic equation insertion vanishes <strong|before limits> against
  the product of distant reflected copies. A fixed physical cell and
  sufficiently small <math|a<rsub|N>> give the required distance outside a
  fixed finite microscopic stencil uniformly in <math|p>, since the smallest
  physical period is positive. An ordered spectator limit would not justify
  this uniform sweep.

  This checks the last implication conditional on the actual encoding,
  equation-column discrepancy, primary root budget and positional-modulus
  inputs. Their separate suppliers are actual-equation-kernel-relay.tex,
  actual-insertion-derivative-relay.tex, cor:ex-c02-uniform-census, and the
  directional part of ex-centered-producers. <strong|The restart theorem
  alone does not supply all of these.>

  <section|9. Concrete writing consequences><label|9-concrete-writing-consequences>

  <\enumerate>
    <item>Present three inputs before the finite detector: common restarted
    Gaussian comparison; exact microscopic equation comparison; primary
    centered bounds and positional modulus. Then give absorption.

    <item>Use the later guarded-value proof for finite rank. Do not impose
    the earlier common-cutoff jet criterion (M) unless a later derivative
    argument needs it.

    <item>Define the two thresholds, two radii and stronger support exponent
    before use; these are real representation changes.

    <item>Keep the genuine density identity beside the neutral estimates,
    explaining why neutralization leaves the Gaussian law unchanged.

    <item>Include <math|J*q<rsub|N>\<mapsto\>J*q<rsub|k>> and the unit
    coefficient of <math|J>. This makes the denominator claim explicit.

    <item>Do not advertise the numerical and finite-dimensional checks here
    as verification of the full construction. The local analytic supplier
    audit remains unfinished.
  </enumerate>
</body>

<\initial>
  <\collection>
    <associate|html-title|Check of the restarted comparison and the uniform
    difference supplier \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-objects-that-must-remain-identical|<tuple|1|1>>
    <associate|2-endpoint-re-expression-stronger-suppression|<tuple|2|2>>
    <associate|3-closure-on-the-actual-restarted-history|<tuple|3|2>>
    <associate|4-support-reserve-at-construction-time|<tuple|4|3>>
    <associate|5-joint-gaussian-comparison-the-later-guarded-route|<tuple|5|4>>
    <associate|6-higher-modes-and-the-original-denominator|<tuple|6|5>>
    <associate|7-root-normalization-and-finite-detectors|<tuple|7|5>>
    <associate|8-final-absorption-and-its-independent-inputs|<tuple|8|6>>
    <associate|9-concrete-writing-consequences|<tuple|9|7>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|3>>
    <associate|auto-5|<tuple|5|4>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|8|6>>
    <associate|auto-9|<tuple|9|7>>
    <associate|check-of-the-restarted-comparison-and-the-uniform-difference-supplier|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1.
      Objects that must remain identical>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2.
      Endpoint re-expression: stronger suppression>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3.
      Closure on the actual restarted history>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4.
      Support reserve at construction time>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Joint Gaussian comparison: the later guarded route>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Higher modes and the original denominator>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      Root normalization and finite detectors>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8.
      Final absorption and its independent inputs>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9.
      Concrete writing consequences> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>