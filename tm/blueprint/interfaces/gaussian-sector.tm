<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../outline.tm><ym-nav-sep><hlink|Unit
  plan|../unit-plan.tm><ym-nav-sep><hlink|Blueprint|../index.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../glossary.tm><ym-nav-sep><hlink|Notation|../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../source/audit.tm><ym-nav-sep><hlink|Literature|../external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../CONTRIBUTING.tm>>

  <ym-title|Gaussian-sector boundary \V working audit, issue
  #12><label|gaussian-sector-boundary--working-audit-issue-12>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Proposed
    boundary> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Exact sector
    identity> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Window and
    field-jet contract> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Determinants
    and consumer handoffs> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <with|par-left|1tab|Inspected consumers and downstream questions
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|Cross-check against the adjacent packages
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|Classification of inspected helpers
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Literature and
    remaining obligations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Evidence and
    open work> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>
  </table-of-contents>

  <strong|Status: author draft for independent correspondence review.> This
  is a bounded interface audit, not an exposition or an ownership grant.
  Imported source revision: <verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>.
  Scott Armstrong's <hlink|III.4 outline|https://github.com/scottnarmstrong/yang-mills-informalization/blob/8f3c7ccaeabb17b0f928bc1a2e75328691de3032/outline/units/III-4.md>
  and selected-statement map at <verbatim|8f3c7ccaeabb17b0f928bc1a2e75328691de3032>
  provided navigation leads, not proof evidence. The source anchors below
  refer to paths under <verbatim|Lean/>. Unresolved consumer edges and
  interpretation questions are explicitly identified below; do not commission
  explanation tasks until independent correspondence review.

  <section|Proposed boundary><label|proposed-boundary>

  Recommend <strong|three disjoint candidate proof units>, subject to
  independent correspondence review, following mathematical handoffs rather
  than file size:

  <\enumerate>
    <item><strong|Sector change:> the exact Haar-to-Gaussian identity for
    arbitrary permitted positive covariance and measurable shift; this owns
    the change of variables, all masks and normalisation in
    <verbatim|YM.Next.SectorChange.authorized_change>.

    <item><strong|Window and jet input:> selected Gram, windowed covariance
    and shift; uniform invertibility, approximation and finite-order
    field-jet estimates. It supplies a permitted pair and quantitative bounds
    to the first and third packages. It does not own the exact
    change-of-measure proof.

    <item><strong|Local relative determinant:> <verbatim|Priced.chains> and
    the finite-sector normalization handoff through
    <verbatim|Dyed.cardinal_spin> and <verbatim|Port.book_price>, conditional
    on their stated certificates. This owns the logdet series and sector
    identity, but not part 1\<#2019\>s Gaussian integral or part 2\<#2019\>s
    window bounds. The subsequent per-site budget and rank comparison belong
    to #14; the polymer activity construction belongs to #13 and PU-04. The
    precise border at <verbatim|book_price> is a proposed handoff requiring
    agreement with #14.
  </enumerate>

  This ordering describes proposed mathematical use, not an assertion that
  Lean imports or all implementation dependencies are acyclic. The integrated
  committed step combines 1 and 2 and should be owned as an application,
  rather than copied as a second proof. The jet theorem is bundled with the
  window estimates because both are contracts for the same selected matrices
  and its proof invokes the window positivity result. The local determinant
  and later determinant budget are separated at the identity for the actual
  sector; #14 must confirm that this handoff is sufficient. No proof-unit
  paths or declarations are reserved here.

  <section|Exact sector identity><label|exact-sector-identity>

  In <verbatim|YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean>,
  <verbatim|YM.Next.SectorChange.chill> freezes a free forest link if a
  parent endpoint lies in the store's <verbatim|10*radiusB x> dome;
  <verbatim|Frozen> and <verbatim|Active> partition free links.
  <verbatim|Standing> requires, on nonzero allocation bill and eligible
  likelihood support, that each active link is in the specified exponential
  chart with norm at most <verbatim|d>. Frozen variables are in
  <verbatim|LinkArray G (Frozen A x F)>, integrated against product Haar
  measure; active coordinates are <verbatim|Prices G (Active A x F)>, indexed
  by active links and the gauge colour index. The source fixes the sector,
  forest, field and tag.

  In <verbatim|Change.lean>, <verbatim|YM.Next.SectorChange.Permitted>
  requires <verbatim|C.PosDef>, <verbatim|\<beta\>\<gtr\>0>, a measurable
  frozen-field-dependent shift <verbatim|m>, <verbatim|Standing>,
  <verbatim|LocalRatio J>, <verbatim|d\<gtr\>0> and <verbatim|4*d \<less\>
  J.radius>. <verbatim|YM.Precision.LocalRatio>
  (<verbatim|YM/PCalc/Loop.lean>) further specifies positive scale and
  radius, injectivity of the Lie exponential on the radius ball, positive
  analytic Jacobian on that ball with value one at zero, global
  measurability, openness of the chart image, and the exact push-forward of
  <verbatim|(J.scale * J.J) da> restricted to the ball to probability Haar
  restricted to its image. <verbatim|YM.RG.Rep.Lawful>
  (<verbatim|YM/RG/History.lean>) consists of path bounds and activity
  validity; <verbatim|YM.Pressure.Teller.Funds>
  (<verbatim|YM/Pressure/Seeds.lean>) requires matching kernel and stage, the
  branch condition, the deep metric bound, matching clips, two path bounds,
  and attached compatible towers. Their nested mathematical hypotheses are
  source-defined inputs to this conditional theorem; this audit does not
  purport to prove or fully unfold them. In addition
  <verbatim|YM.Next.SectorChange.authorized_change> requires
  <verbatim|R.Lawful \<sigma\> n \<Lambda\> \<delta\> l> and
  <verbatim|P.Funds S T>. For every such permitted pair, <verbatim|Licenses>
  asserts integrability of the original sector integrand on the forest slice,
  every transformed section, and the joint transformed integrand, as well as

  <\equation*>
    <big|int><rsub|F.<math-up|Slice>>\<Phi\>*<space|0.17em>d<around|(|F.<math-up|order><space|0.17em>G|)>=<math-up|prefactor><space|0.17em>J.<math-up|scale><rsup|<around|\||<math-up|Active>|\|>><math-up|chartCost><around|(|C,g|)>*<big|int>d<math-up|Haar><rsup|<math-up|Frozen>><around|(|Y|)>*<big|int><math-up|dyed><around|(|Y,z|)>*<space|0.17em>d<math-up|cloud><around|(|C|)><around|(|z|)>,<space|1em>g=<around|(|<sqrt|R.*\<beta\>>|)><rsup|-1>.
  </equation*>

  Here <verbatim|chartCost> in <verbatim|Counting.lean> is <verbatim|(sqrt
  (2*pi*g^2))^card(Active \<times\> G.ColorIndex) * sqrt(det C)>;
  <verbatim|cloud C> is the push-forward of the library's
  <verbatim|multivariateGaussian 0 C> from Euclidean coordinates to the
  finite coordinate-function space. For positive <verbatim|C>,
  <verbatim|YM.Next.SectorChange.Gaussian.cloud_center>,
  <verbatim|.cloud_cov>, and <verbatim|.cloud_formula>
  (<verbatim|YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean>) give zero
  mean, covariance <verbatim|C>, and Lebesgue density
  <verbatim|(2\<pi\>)^(-N/2) (det C)^(-1/2)
  exp(-z\<#1D40\>C\<#207B\>\<onesuperior\>z/2)>, with <verbatim|N> the number
  of active colour coordinates. <verbatim|dyed> retains chart Jacobians,
  cutoff doors, allocation bill, likelihood, exposed density, and the
  exponential of the actual residual and correction, evaluated at
  <verbatim|a=m(Y)+g z>. It is not an identity after discarding those
  factors. <verbatim|recolored> identifies the whole transformed multiplier
  with the regularized original integrand times the inverse Gaussian density
  factor. The general theorem does <strong|not> require <verbatim|C> to be
  the inverse Gram or the shift to be a minimizer.

  <verbatim|YM.Next.SectorChange.committed> (<verbatim|Handoff.lean>) applies
  this to a directed run: under <verbatim|Ringing>, <verbatim|Cosmos>,
  <verbatim|m\<less\>N>, <verbatim|Lives>, and the representation's beta-band
  hypothesis it supplies positive chart parameters, the sector licences and
  the sum of sector integrals for the pushed density. For matching flags it
  additionally asserts positivity of the selected covariance and Gram; wrong
  flags are handled separately by <verbatim|displaced_wrong>, not by
  asserting positivity for them. Exact expansion of the run and funding
  structures is still required for an independent review of this applied
  interface.

  <section|Window and field-jet contract><label|window-and-field-jet-contract>

  <verbatim|YM.Next.SectorChange.Rows.gram> (<verbatim|Remainder.lean>) is
  <verbatim|move\<#1D40\> * move> on <verbatim|Active \<times\>
  G.ColorIndex>; <verbatim|Rows.guide> is half the square of <verbatim|move*a
  + source>, and <verbatim|Rows.blame = move\<#1D40\> * source>. In
  <verbatim|Chosen.lean>, <verbatim|fog> is <verbatim|Schur.clouded panels
  gram>, while <verbatim|meanLog = -(per panels gram)\<#1D40\> * blame>. The
  columnwise <verbatim|per> uses the inverse of each principal window and
  zero extension; <verbatim|clouded> is half of <verbatim|per +
  per\<#1D40\>>. The panels use both endpoints with radius <verbatim|radiusB
  x / 20>. The source explicitly warns that a different midpoint window
  prescription is not automatically equal to this one.

  <verbatim|YM.Next.SectorChange.Schur.windows> (<verbatim|Windows.lean>)
  states: for <verbatim|\<sigma\>,\<eta\>\<gtr\>0>, <verbatim|K\<geq\>0> and
  nonnegative <verbatim|B>, there are positive <verbatim|v,C,g> such that for
  all sufficiently large natural radii <verbatim|r>, all finite coordinate
  sets mapped to a finite torus, all symmetric matrices <verbatim|Q> with gap
  <verbatim|\<eta\>>, weighted row-and-column Schur bound <verbatim|K> at
  rate <verbatim|\<sigma\>>, the <verbatim|Revenue> uniform local counting
  bound <verbatim|B>, and windows <verbatim|Bars> containing the
  radius-<verbatim|r> balls, the symmetrized windowed inverse <verbatim|Cw>
  has

  <\equation*>
    <around|\<\|\|\>|C<rsub|w>-Q<rsup|-1>|\<\|\|\>><rsub|<math-up|Schur>>\<leqslant\>C*e<rsup|-v*r>,<space|2em>C<rsub|w>\<geqslant\>g*I,<space|2em>C<rsub|w><text|
    positive definite>.
  </equation*>

  The statement is uniform in the torus and finite coordinate set, not valid
  at arbitrary window sizes. <verbatim|YM.Next.SectorChange.opaqueCost>
  (<verbatim|Chosen.lean>) applies this to the selected Gram: fix gauge,
  patch and teller with branch condition; for sufficiently large coarse
  parameter <verbatim|x>, a step with the same patch,
  <verbatim|100*(1+radiusB x) \<leq\> c.val>, a funded tube, arbitrary store,
  forest, tag and coarse configuration <strong|with matching flags>, has
  uniformly decaying and gapped Gram and a positive <verbatim|fog>, with
  unweighted Schur error bounded by <verbatim|E * exp(-b * (radiusB x /
  60))>. Constants precede the choice of volume and sector.

  <verbatim|YM.AnalyticBridge.SectorAffine.assembly>
  (<verbatim|YM/AnalyticBridge/SECTOR_AFFINE_JETS/Covariance.lean>) fixes
  gauge, patch, branching teller and arbitrary finite jet order <verbatim|n>,
  then chooses positive constants and a sufficiently large <verbatim|x>.
  Under the same size, funding and matching-flag conditions, for each fixed
  store, forest, coarse field, tag and perturbation <verbatim|B> with
  <verbatim|\<\|\|\>B\<\|\|\>\<leq\>r>, it supplies <verbatim|KernelJets>.
  This record includes analytic move, weighted row/column <verbatim|Polar>
  bounds for move, Gram and covariance, positive gaps, and principal, global
  and windowed resolvent jets for all <verbatim|u\<geq\>0>. Its deficit and
  window-minus-full-resolvent jet bounds have factors <verbatim|M exp(-v
  radiusB x)/(1+u)> and <verbatim|M exp(-v radiusB x)/(1+u)^2>, respectively.
  For every list of coordinate directions of length at most <verbatim|n>,
  <verbatim|Polar> requires the corresponding iterated derivative to satisfy
  both weighted row and column <verbatim|Bill> bounds; the row bound
  multiplies the weighted absolute row sum by the product of
  derivative-position marks, and the column bound applies the same
  construction to the transpose. <verbatim|ResolventJets> uses the same bills
  with cap <verbatim|M/(1+u)> at derivative order zero and
  <verbatim|M/(1+u)^2> at positive orders. The position metric is
  coarse-torus <verbatim|separation>; exact coordinate conventions are the
  definitions <verbatim|Polar>, <verbatim|Bundle>, <verbatim|Mark.Bill>,
  <verbatim|marks>, and <verbatim|bolt> in the source. For a coordinate
  direction <verbatim|t>, <verbatim|coordRoot t> is its coarse site,
  <verbatim|bolt t> is its coordinate basis direction, and its mark at site
  <verbatim|a> is <verbatim|exp(d * separation(a, coordRoot t))>. Thus for a
  list <verbatim|l>, the row weight is <verbatim|exp(d * sum_{t in l}
  separation(a(i),coordRoot t))> times the weighted row sum with kernel
  factor <verbatim|exp(d * separation(a(i),a(j)))>; the column bound is the
  corresponding bound for the transpose. These are iterated Fréchet
  coordinate derivatives in the left chart, not Lie derivatives. Store,
  flags, forest, tags, scale and tube are held fixed while the unmasked
  field-dependent functions vary; this does not assert differentiability of
  masks or sector decisions.

  <strong|Hessian caution.> The selected <verbatim|fog> is generally a
  symmetrized <em|windowed> inverse of the Gram, not definitionally the full
  inverse. <verbatim|YM.AnalyticBridge. GaussianFieldAlignment.Agreements.exact>
  (<verbatim|YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/Agreements.lean>)
  takes <verbatim|Q = Rows.gram T x V k (shots S x) A F> and requires all
  three hypotheses: <verbatim|Q.PosDef>, <verbatim|120 \<leq\> radiusB x>,
  and, for every <verbatim|i,j>, <verbatim|Q\<#207B\>\<onesuperior\> i j = 0>
  whenever <verbatim|i> is outside the intersection <verbatim|panels A F j
  \<cap\> mids A F x j>. It then concludes all three identities <verbatim|fog
  A F T x V k = Q\<#207B\>\<onesuperior\>>, <verbatim|middle A F x T V k =
  Q\<#207B\>\<onesuperior\>>, and <verbatim|meanLog A F T x V k = middleLog A
  F x T V k>. These are sufficient conditions; the source does not assert
  they hold generally. The inspected <verbatim|Rows.guide> identifies the
  Gram as the quadratic coefficient of the selected affine-square guide. It
  does not establish that this is the Hessian of the full effective action at
  its background. The latter identification remains open; the external
  summary also flags it as such.

  <section|Determinants and consumer handoffs><label|determinants-and-consumer-handoffs>

  <verbatim|YM.AnalyticBridge.RelativeLogdet.Priced>
  (<verbatim|YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Walls.lean>) is a full
  hypothesis bundle for a finite index set, cost <verbatim|D>, position map
  <verbatim|p>, window family <verbatim|W>, matrix <verbatim|Q>, weighted
  rate <verbatim|v>, bound <verbatim|C>, and error <verbatim|q>. It requires
  each index to lie in its own window, <verbatim|Q.PosDef>, <verbatim|1
  \<leq\> C>, <verbatim|v \<geq\> 0>, <verbatim|q \<geq\> 0>, and the
  weighted row-and-column <verbatim|D.Schur> bounds: <verbatim|Q> at cost
  <verbatim|C>; for every <verbatim|u \<geq\> 0>, the full resolvent
  <verbatim|(Q+uI)\<#207B\>\<onesuperior\>> and the columnwise windowed
  inverse at cost <verbatim|C/(1+u)>, and their defect
  <verbatim|(Q+uI)*pie(W,Q,u)-I> at cost <verbatim|q/(1+u)>; and <verbatim|S
  = Q*Cw-I> at cost <verbatim|q>, where <verbatim|Cw=Schur.clouded W Q>.
  <verbatim|YM.AnalyticBridge.RelativeLogdet.Priced.chains>
  (<verbatim|Series.lean>) additionally requires <verbatim|q\<less\>1> and
  <verbatim|Cw.PosDef>. It states separately, with the source's local terms
  <verbatim|letterBase>, <verbatim|r> and <verbatim|Round.ripple>,

  <\equation*>
    <\aligned>
      <tformat|<table|<row|<cell|log det Q>|<cell|=<big|sum><rsub|i><around*|(|<math-up|letterBase><rsub|i>+<big|sum><rsub|n\<geqslant\>0>r<rsub|i,n>|)>,>>|<row|<cell|log
      det C<rsub|w>>|<cell|=-log det Q+<big|sum><rsub|i><big|sum><rsub|n\<geqslant\>0><math-up|ripple><around|(|S|)><rsub|n,i,i>,>>|<row|<cell|log
      det <around|(|I+S|)>>|<cell|=<big|sum><rsub|i><big|sum><rsub|n\<geqslant\>0><math-up|ripple><around|(|S|)><rsub|n,i,i>.>>>>
    </aligned>
  </equation*>

  The theorem also asserts summability of both series for each <verbatim|i>;
  by definition <verbatim|I+S=Q*Cw>, which need not be symmetric. This is a
  relative/localisation result, distinct from <verbatim|chartCost>. The exact
  handoff from these hypotheses to the selected sector, including all
  normalisation signs and PU-11 overlap, is not yet checked.

  <subsection|Inspected consumers and downstream
  questions><label|inspected-consumers-and-downstream-questions>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Handoff>>|<cell|<strong|Source
  evidence>>|<cell|<strong|Boundary and unresolved
  mapping>>>|<row|<cell|Marked transition>|<cell|<verbatim|YM.Next.SectorChange.Marked.honored>
  and <verbatim|.paid>, <verbatim|YM/AnalyticBridge/SECTOR_MARKED_IDENTITY/Committed.lean>>|<cell|Reuses
  the same run hypotheses and selected sector prices to obtain marked
  licenses and a mixed derivative transition. It recovers the permitting data
  rather than directly invoking <verbatim|committed>; its place in
  PU-04/PU-08 remains to be settled.>>|<row|<cell|Nonlinear
  jets>|<cell|<verbatim|YM.PhysicalNext.Repeat.Malachite.treasure>,
  <verbatim|YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Malachite/Grain.lean>>|<cell|Directly
  invokes <verbatim|SectorAffine.assembly> and spends
  <verbatim|KernelJets.cJets> for the selected bare-store sector. This is a
  source consumer in the III.10 neighborhood; issue #13 must identify its
  exact PU-08/09/10 contractual role.>>|<row|<cell|Relative
  determinant>|<cell|<verbatim|YM.PhysicalNext.InteractingRank.Pump.Dyed.cardinal_spin>,
  <verbatim|.../Opacity/Prism.lean>>|<cell|With funding, certification,
  matching paths/clips, local chart, positive beta, threshold and matched
  sector, proves positive <verbatim|loading> and <verbatim|freight = loading
  * exp(spoolLift)>. <verbatim|keptEarly> contains <verbatim|-#Frozen
  log(spare) - \<onehalf\>(log det W - log det K) + \<onehalf\> log
  det(W*C)>; <verbatim|K> is the flat kinetic reference. <verbatim|freight>
  contains the original chart cost. This is the exact
  sector-to-relative-normalisation handoff, not a finished per-site
  budget.>>|<row|<cell|Local pieces>|<cell|<verbatim|YM.PhysicalNext.InteractingRank.Pump.Port.book_price>,
  <verbatim|.../Opacity/Shards.lean>>|<cell|Under <verbatim|Chips>,
  <verbatim|Certified>, <verbatim|Matched>, nonnegative exponent and the two
  stated <verbatim|Physical.parcel> certificates, rewrites
  <verbatim|keptEarly> as the frozen-link term plus the sum of local
  <verbatim|sect> and <verbatim|introTax + showTax>.
  <verbatim|Port.rate_pass> (<verbatim|.../Opacity/Enigma.lean>) groups these
  into rents and nightly terms. These are candidate inputs to #14, not an
  asserted final PU-12 theorem.>>|<row|<cell|Polymer
  construction>|<cell|<verbatim|YM.PhysicalNext.InteractingRank.Pump.land>,
  <verbatim|.../Opacity/Gardener.lean>; <verbatim|.foreshadows>,
  <verbatim|.../Opacity/Gush.lean>>|<cell|<verbatim|land> directly calls
  <verbatim|cardinal_spin> to obtain a <verbatim|BodyGrant>;
  <verbatim|foreshadows> produces local factors under <verbatim|Helps>,
  <verbatim|Stock>, certification and parcel hypotheses. Their exact relation
  to the canonical PU-04 expansion is unresolved; avoid double ownership with
  #13.>>>>>

  <verbatim|Priced.labeled> (<verbatim|YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Alphabet.lean>)
  directly calls <verbatim|Priced.chains>, expanding terms as indexed paths.
  <verbatim|book_price> invokes a receipt from the endpoint determinant
  package, so this inspection does <strong|not> establish that every
  application of the abstract <verbatim|chains> theorem travels by that
  specific call path. Possible reverse dependencies are the pre-existing
  <verbatim|Teller.Funds>, run <verbatim|Cosmos>/<verbatim|Ringing> and
  <verbatim|R.Lawful> assumptions (from geometric, schedule and activity
  inputs), and the <verbatim|Physical.Certified>, <verbatim|parcel> and
  <verbatim|Stock> certificates required by the determinant application. #13
  and #14 should check whether those certificates use outputs being assigned
  downstream; no acyclic formal graph is claimed. PU-09, PU-10, PU-11 and
  PU-12 exact consumer declarations remain unverified; they must not be
  inferred merely from the map's edges.

  <subsection|Cross-check against the adjacent
  packages><label|cross-check-against-the-adjacent-packages>

  The following anchors distinguish direct source dependence from candidate
  reuse; package labels remain provisional until #13 and #14 decide their
  boundaries.

  <\itemize-minus>
    <item><strong|PU-04, parallel window construction:>
    <verbatim|YM.AnalyticNext.ConnectedActivity.Win.Windows.window_price> and
    <verbatim|.covariance_floor> (<verbatim|YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean>)
    prove weighted bounds and positivity for their own
    <verbatim|within>/<verbatim|cov>. The
    <verbatim|YM.AnalyticNext.ConnectedActivity.Aff.bedrock> theorem
    (<verbatim|.../Bedrock.lean>) supplies a uniform <verbatim|Win.Promise>
    for a completed Gram, and <verbatim|Aff.Mint> (<verbatim|.../Mint.lean>)
    uses this completed Gram and its own <verbatim|eyes> windows and mean.
    The completed Gram contains an identity on inactive coordinates; the
    window convention uses different radii. The definitions are
    mathematically similar to the active-coordinate construction here, but no
    identification or direct use of <verbatim|Schur.windows> was established.
    A shared abstract window lemma may be reusable only after matching index
    spaces, completion and windows; do not assign these two constructions
    identical ownership on this evidence.

    <item><strong|PU-08/PU-09, selected Gaussian prices:>
    <verbatim|YM.AnalyticBridge.SectorAffine.estimates>
    (<verbatim|.../SECTOR_AFFINE_JETS/Residual.lean>) directly calls
    <verbatim|assembly> and adds covariance-inverse, <verbatim|Q*C-I>, and
    <verbatim|C\<#207B\>\<onesuperior\>-Q> jet estimates.
    <verbatim|YM.AnalyticBridge.SectorAffine.Offset.prices>
    (<verbatim|.../Center.lean>) calls <verbatim|estimates>;
    <verbatim|YM.PhysicalNext.JointLoad.capital>
    (<verbatim|YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Costs.lean>) calls
    <verbatim|Offset.prices> and provides <verbatim|Value>: positive Gram and
    <verbatim|fog>, equality of the shift and linear source to the actual
    sector data, and tickets for Gram, defect, mean and source. The tickets
    have explicit decay and smallness charges and apply for matching flags
    and funded steps. <verbatim|JointLoad.stage> (<verbatim|.../Supply.lean>)
    calls <verbatim|capital> and packages those estimates and Gaussian
    trigger/tail prices in <verbatim|Day>. These give #13 concrete source
    handoffs for the update and large-field bounds; deciding which of PU-08
    and PU-09 owns the resulting <em|consumer> is #13's task.

    <item><strong|PU-10, parameter closure:>
    <verbatim|YM.PhysicalNext.JointLoad.offer>
    (<verbatim|.../V9_JOINT_ENDPOINT_LOAD/Calendar.lean>) calls
    <verbatim|stage> after its <verbatim|Outlet>, chart and branch
    assumptions, producing a <verbatim|Booth> whose <verbatim|Enough> record
    includes <verbatim|Day> for every qualifying desk eventually in
    <verbatim|x>. This is an inspected stage-pricing consumer and a candidate
    closure input, not by itself the full RG induction or an assertion that
    the closure theorem has been audited.

    <item><strong|PU-11/PU-12, separate normalization interfaces:>
    <verbatim|YM.Next.Rank.determinant> (<verbatim|YM/Next/RANK/Determinant.lean>)
    is a Haar-integral ratio bound. Under its lawful representation and
    Haar-budget assumptions, a nonnegative density, positive <verbatim|g>
    with <verbatim|\<beta\>g\<twosuperior\>=1> and
    <verbatim|g\<leq\>threshold>, an integrable numerator and its stated
    pointwise bound, it gives an exponential bound with volume-dependent
    <verbatim|protection> and the residual <verbatim|-4*lieDim*log g> term.
    <verbatim|YM.Next.Rank.Meets> and <verbatim|ticket>
    (<verbatim|.../StationMeter.lean>) are the adjoining stage and per-site
    cost interfaces. This is a candidate PU-12 input and is not the
    <verbatim|Priced.chains> relative matrix determinant identity. The
    inspected <verbatim|cardinal_spin> and <verbatim|book_price> are
    actual-sector inputs in the rank-comparison neighborhood; a direct proof
    edge from them to <verbatim|YM.Next.Rank.determinant> or to a final PU-11
    comparison has <strong|not> been established. #14 must resolve that
    boundary and avoid describing the two determinant statements as
    identical.
  </itemize-minus>

  The direct chain <verbatim|assembly \<rightarrow\> estimates \<rightarrow\>
  Offset.prices \<rightarrow\> capital \<rightarrow\> stage \<rightarrow\>
  offer> is evidenced by the cited theorem bodies, in that order. It supplies
  an example of an expository handoff through closure pricing, not a proof
  that there are no reverse dependencies elsewhere. In particular the
  <verbatim|Fund>/<verbatim|Stock>, path bounds, activity validity, and run
  funding structures are separately supplied hypotheses; reusing their
  conclusions in their own construction would be circular. The available
  bounded inspection did not establish their complete construction graph.

  <subsection|Classification of inspected
  helpers><label|classification-of-inspected-helpers>

  <\itemize-minus>
    <item><verbatim|per>, <verbatim|clouded>, <verbatim|Rows.gram>,
    <verbatim|Rows.guide>, <verbatim|Rows.blame>, <verbatim|fog>,
    <verbatim|meanLog>, <verbatim|chartCost>, <verbatim|dyed>,
    <verbatim|keptEarly>, and <verbatim|spoolLift> encode mathematical
    constructions and belong in the relevant interface, even where their
    names are implementation-specific. The <verbatim|Standing> support
    condition and all masks are substantive assumptions/data, not bookkeeping
    to suppress.

    <item><verbatim|per_read>, <verbatim|per_zero>, <verbatim|picked_sym>,
    <verbatim|chartCost_eq> and <verbatim|recolored> implement column
    restriction, symmetrisation, coordinate normalization and rewriting.
    Group them under those mathematical purposes; they are not separate prose
    units. Their mathematical identities must be explained or cited wherever
    needed.

    <item>Algebraic coercions, product-index and finite-sum rearrangements
    encountered in these neighborhoods are candidates for suppression only
    after the corresponding identities and normalization are assigned above.
    No blanket classification of uninspected helpers is made; any further
    substantive content remains open.
  </itemize-minus>

  <section|Literature and remaining obligations><label|literature-and-remaining-obligations>

  No literature theorem has been verified as a replacement for any complete
  output. A bounded search inspected Demko, Moss and Smith, \PDecay Rates for
  Inverses of Band Matrices,\Q <em|Mathematics of Computation> 43 (1984),
  491\U499, <hlink|Theorem 2.4|https://www.ams.org/mcom/1984-43-168/S0025-5718-1984-0758197-9/S0025-5718-1984-0758197-9.pdf>.
  It gives inverse-entry decay for positive definite band matrices; its
  one-dimensional band hypotheses do not directly supply the torus-metric,
  exponentially decaying matrix, uniform counting, window error, positivity
  and jet contract above. A precise applicable variant, its uniform
  constants, and the project-specific window and derivative arguments remain
  unmatched. The finite-dimensional Gaussian density is a natural literature
  lead for part 1, but a precise source and its coordinate, Haar chart and
  integrability hypotheses have not been verified. Local logdet series and
  the sector-specific determinant normalisation also remain unmatched. Do not
  present these leads as accepted references.

  For #10: distinguish precision <verbatim|Q=move\<#1D40\> move>, full
  inverse <verbatim|Q\<#207B\>\<onesuperior\>>, selected covariance
  <verbatim|fog>, and unsymmetrized <verbatim|per>; distinguish coarse
  <verbatim|x>, actual <verbatim|R.beta>, <verbatim|g=(sqrt
  beta)\<#207B\>\<onesuperior\>>, and <verbatim|radiusB x>; specify
  normalized Gaussian versus product Haar and chart Jacobian scale; keep
  determinant square root and colour-coordinate count explicit; specify fixed
  sector data and the weighted jet norm before adopting notation. These are
  proposed handoff questions, not edits to the glossary.

  <section|Evidence and open work><label|evidence-and-open-work>

  Inspected the declarations and immediate source neighborhoods named above,
  plus <verbatim|Handoff.lean>, <verbatim|Shell.lean>,
  <verbatim|Counting.lean>, and the direct consumer
  <verbatim|Malachite/Grain.lean>, using bounded <verbatim|sed -n> and
  <verbatim|rg -n> searches. Inspected Scott Armstrong's pinned III.4 outline
  and summary as navigation aids, and the original Demko\UMoss\USmith paper
  as a limited literature lead. <verbatim|opaqueCost>, <verbatim|windows>,
  <verbatim|assembly>, <verbatim|authorized_change>, and <verbatim|committed>
  were read at their source statements; no elaborated Lean types or axioms
  were replayed.

  Outstanding: reconcile the candidate PU-04 and PU-08\UPU-12 ownership and
  remaining reverse-dependency questions with #13 and #14; expand nested
  certificate hypotheses as needed; verify literature matches; resolve the
  full effective-action Hessian question; and obtain independent
  correspondence review. The proposed split is conditional on this work. No
  fresh Lean build, kernel replay, axiom audit, or independent mathematical
  review was performed. The checker and staged whitespace check passed as
  recorded below.

  Commands run in the isolated checkout (all source-reading commands exited
  0):

  <\itemize-minus>
    <item><verbatim|sed -n '1,220p' Lean/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean>;
    <verbatim|sed -n '1,175p' Lean/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Chosen.lean>;
    <verbatim|sed -n '1,100p' Lean/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Remainder.lean>.

    <item><verbatim|sed -n '100,250p' Lean/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean>;
    <verbatim|sed -n '1,105p'> on the same file; <verbatim|sed -n '1,90p'> on
    <verbatim|Lean/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean>.

    <item><verbatim|sed -n '130,215p' Lean/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Covariance.lean>;
    <verbatim|sed -n '1,125p'> on that file; <verbatim|sed -n '45,90p'> on
    <verbatim|Lean/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Sky.lean>.

    <item><verbatim|sed -n '190,235p' Lean/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Series.lean>;
    <verbatim|sed -n '65,105p'> on the corresponding <verbatim|Walls.lean>;
    <verbatim|sed -n '100,145p'> on <verbatim|Lean/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Counting.lean>.

    <item><verbatim|sed -n '125,185p'> and <verbatim|sed -n '45,82p'> on
    <verbatim|Lean/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Handoff.lean>;
    <verbatim|sed -n '1,85p'> on <verbatim|Lean/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Malachite/Grain.lean>;
    <verbatim|sed -n '1,95p'> on <verbatim|Lean/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/Agreements.lean>;
    <verbatim|sed -n '80,170p'> on <verbatim|Lean/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Prism.lean>.

    <item><verbatim|rg -n 'authorized_change\|opaqueCost\|Schur.windows\|meanLog\|\\\\.fog\\\\b'>
    in the sector-change and Gaussian-field-alignment directories, and
    <verbatim|rg -n 'SectorChange\\\\.(committed\|authorized_change\|opaqueCost)\|\\\\b(committed\|assembly\|fromTeller\|chains)\\\\b'>
    in the rank-comparison, nonlinear-step and affine-jet directories, each
    piped through <verbatim|head>. These searches are not exhaustive
    dependency evidence.

    <item><verbatim|python3 scripts/check_blueprint.py> passed:
    <verbatim|Blueprint structure OK: 0 units. Lean and mathematics were not
    verified.> The first <verbatim|git diff --check> passed but did not
    include this then-untracked file; the staged check below includes it.
  </itemize-minus>

  Additional source inspections in this pass used <verbatim|rg -n> for
  <verbatim|LocalRatio>, <verbatim|Lawful>, <verbatim|Funds>,
  <verbatim|Polar>, <verbatim|ResolventJets>, and named consumers; bounded
  <verbatim|sed -n> reads covered <verbatim|PCalc/Loop.lean> 20\U65,
  <verbatim|Pressure/Seeds.lean> 90\U140, <verbatim|RG/History.lean>
  165\U220, <verbatim|SECTOR_AFFINE_JETS/Panels.lean> 50\U100 and
  <verbatim|MarkedGram.lean> 20\U90, <verbatim|FREE_RESOLVENT/Polar.lean>
  20\U115, <verbatim|Differentiated.lean> 70\U105, <verbatim|Torus.lean>
  20\U50, <verbatim|SECTOR_MARKED_IDENTITY/Committed.lean> 1\U140,
  <verbatim|RELATIVE_LOGDET_TRACE/Alphabet.lean> 175\U220, and the
  rank-comparison <verbatim|Opacity> files <verbatim|Prism.lean>,
  <verbatim|Gush.lean>, <verbatim|Gardener.lean>, <verbatim|Offers.lean>,
  <verbatim|Shards.lean>, and <verbatim|Enigma.lean>. All these reading
  commands exited 0. The live issue/PR overlap search identified #13 and #14
  as the adjacent owned audits.

  Further commands: <verbatim|sed -n '130,215p'> on
  <verbatim|Lean/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean>,
  <verbatim|sed -n '120,175p'> on its <verbatim|Bedrock.lean>, and
  <verbatim|sed -n '1,100p'> on its <verbatim|Mint.lean>; <verbatim|sed -n
  '1,115p'> on <verbatim|Lean/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Supply.lean>,
  <verbatim|sed -n '20,70p'> and <verbatim|sed -n '65,125p'> on its
  <verbatim|Costs.lean>, and <verbatim|sed -n '45,95p'> on its
  <verbatim|Calendar.lean>; <verbatim|sed -n '225,280p'> on
  <verbatim|Lean/YM/Next/RANK/Determinant.lean> and <verbatim|sed -n
  '25,70p'> on <verbatim|Lean/YM/Next/RANK/StationMeter.lean>; <verbatim|sed
  -n '125,190p'> on <verbatim|Lean/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Residual.lean>.
  Bounded <verbatim|rg -n> searches traced <verbatim|assembly>,
  <verbatim|estimates>, <verbatim|prices>, <verbatim|capital>,
  <verbatim|stage>, and consumer names in those source neighborhoods. The
  source-reading commands exited 0; one <verbatim|rg> search for direct names
  in the connected-activity, joint-load, and rank directories returned no
  matches (exit 1), which is not proof of independence. Scott Armstrong's
  pinned III.5, III.10 and III.11 outlines were consulted as navigation aids;
  the conclusions above are limited to the inspected Lean source.
  <verbatim|sed -n '100,145p' Lean/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Center.lean>
  confirmed the direct <verbatim|estimates> call in <verbatim|Offset.prices>.
  The current author pass ran <verbatim|python3 scripts/check_blueprint.py>
  and <verbatim|git diff --check>; both passed.

  Additional exact source reads: <verbatim|sed -n '1,155p'> on
  <verbatim|Lean/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean>,
  <verbatim|sed -n '1,105p'> on its <verbatim|Counting.lean>, <verbatim|sed
  -n '20,60p'> on <verbatim|Lean/YM/AnalyticBridge/SECTOR_AFFINE_JETS/EntryBounds.lean>,
  <verbatim|sed -n '15,45p'> on its <verbatim|RowStencil.lean>, and
  <verbatim|sed -n '20,55p'> on <verbatim|Lean/YM/Push/FREE_RESOLVENT/Weights.lean>,
  together with <verbatim|rg -n> for <verbatim|marks>, <verbatim|positions>,
  <verbatim|weight>, <verbatim|coordRoot> and <verbatim|jet>; all exited 0.

  Review correction: independently checked the two findings in <hlink|the
  issue #29 review|https://github.com/hairer/humanise-yang-mills/pull/28#issuecomment-6802706031>
  against <verbatim|Agreements.lean> lines 25\U75,
  <verbatim|RELATIVE_LOGDET_TRACE/Walls.lean> lines 75\U100 and
  <verbatim|Series.lean> lines 195\U225 using bounded <verbatim|sed -n>
  reads; <verbatim|rg -n> found the attenuation, windowed inverse, defect and
  excess definitions in <verbatim|Resolvent.lean> and <verbatim|Walls.lean>.
  These commands passed. The review concerned the previous head
  <verbatim|3706eff3e567455d66aefcc80db07cd2f65a1fe8> and SHA-256
  <verbatim|f4b84e498629124c1e0ac4376abeb4b2cbc203041f41951c4aa54d02d0c138fc>;
  this material revision needs renewed correspondence review.
</body>

<\initial>
  <\collection>
    <associate|html-title|Gaussian-sector boundary \V working audit, issue
    #12 \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|3>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|4.1|5>>
    <associate|auto-6|<tuple|4.2|6>>
    <associate|auto-7|<tuple|4.3|7>>
    <associate|auto-8|<tuple|5|7>>
    <associate|auto-9|<tuple|6|8>>
    <associate|classification-of-inspected-helpers|<tuple|4.3|7>>
    <associate|cross-check-against-the-adjacent-packages|<tuple|4.2|6>>
    <associate|determinants-and-consumer-handoffs|<tuple|4|4>>
    <associate|evidence-and-open-work|<tuple|6|8>>
    <associate|exact-sector-identity|<tuple|2|2>>
    <associate|gaussian-sector-boundary--working-audit-issue-12|<tuple|?|1>>
    <associate|inspected-consumers-and-downstream-questions|<tuple|4.1|5>>
    <associate|literature-and-remaining-obligations|<tuple|5|7>>
    <associate|proposed-boundary|<tuple|1|1>>
    <associate|window-and-field-jet-contract|<tuple|3|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Proposed
      boundary> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Exact
      sector identity> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Window
      and field-jet contract> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Determinants
      and consumer handoffs> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Inspected consumers and downstream
      questions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|Cross-check against the adjacent packages
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|Classification of inspected helpers
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Literature
      and remaining obligations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Evidence
      and open work> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>