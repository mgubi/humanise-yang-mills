<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Independent review: actual finite detector
  comparison><label|independent-review-actual-finite-detector-comparison>

  Reviewed the updated <verbatim|chapters/11-marked-insertions.tex>,
  common-extraction, window-covariance, opening higher modes, forced fusion
  and denominator normalization (2026-11-19). Author UV edited during review;
  review findings below refer to its final changes communicated to parent.

  <section|Corrections found and addressed><label|corrections-found-and-addressed>

  <\enumerate>
    <item>Solved lift norm is H^(bd+c_d), not H^c_d. The high
    engineering-weight remainder still gains
    rho^\<minus\>(d+1)=H^\<minus\>b(d+1), leaving H^(c_d\<minus\>b) (and the
    coefficient prefactorH if present), so b\<gtr\>c_d+3 is adequate. Author
    corrected the actual lift bound. Opening near remainder must use
    H^(f+bd+c_d\<minus\>D) and distant term H^(f+bd+c_d)e^\<minus\>thetaC;
    author corrected both, choosingU afterbd+c_d andD afterU.

    <item>Replacing actual coarse conditional background outside a patch by0
    is NOT an exact equality. Author added the protected response-path tail
    CB^a e^\<minus\>cB g^\<minus\>1, assigned as a regular remainder. This is
    smaller than every fixed H^\<minus\>v because B~(log s)^4 while
    log(g^\<minus\>1)=O(log s). The closed zero extension then supplies the
    local comparison mean, with the tail explicitly accounted for.

    <item>Denominator comparison originally only asserted3V\<minus\>3
    integrations. Author supplied an explicit axial tree and lexicographic
    elimination order. I checked it below.
  </enumerate>

  <section|Checks that passed><label|checks-that-passed>

  Common extraction T:

  <\itemize-minus>
    <item>Near-support cutoff diameter is O(M\<twosuperior\>),
    fits8M\<twosuperior\>patch. Taylor/axial polynomial construction is
    linear in the actual inserted function; it need not select linear
    representatives of individual activities.

    <item>Rescaled p_u(y)=W_u(zy) removes the g/theta axial coefficient,
    leaving rowO(b). The diagonal Wick covariance becomesz^-2K=O(H^-1);
    coefficient-l1 norm makes the finite Wick bound independent of ambient
    coordinate count.

    <item>Positive Wick sign is correct: exp(+Delta_K/2) on polynomial paired
    against covarianceSigma\<minus\>K gives originalSigma expectation.
    Negative diagonal covariance is only a formal polynomial Wick functional,
    never presented as a probability law.

    <item>Relative half-error T\<minus\>A yields same-map invertibility and
    simultaneous real detector lifts; fixed-depth boundedness inN,p suffices.
    No closeness of interacting projection planes tofreeplanes assumed.
  </itemize-minus>

  Window covariance:

  <\itemize-minus>
    <item>Completed inverse curvature multiplier has P\<minus\>P0=O(\|p\|),
    differentiatedjtimesO(\|p\|^(1\<minus\>j)); local Fourier remainder
    therefore decays\|x\|^\<minus\>5, with higher differences addingorders.
    The finite mesh derivative singularity1/\|p\| is integrable in4D,
    allowing O((1+\|x\|)/Nper). Smallestperiod exponentialinscale makes this
    negligible on fixedpowerH windows.

    <item>Response difference factorization uses boxfilters BEFORE dividing
    by coarse difference; aliashyperplanes are not crossed by a naked
    division. Enough smoothingorders and strictwidthreserve are required and
    stated.

    <item>Row transport bounds imply mean andcoarsecovariance budgets;
    covariance uses bounded entries ofkappa and rowl1bounds, so no false
    integrability assumption on the borderline\|x\|^-4 covariance kernel is
    needed.

    <item>Exact conditionalcovariance telescoping gives diag\<minus\>B0 after
    originalselfcovariance subtraction, correctly retained.

    <item>Common retained jet/residual coordinate system is exact
    reconstruction; Wick coefficient-l1 recursion controls errors
    independentofcoordinatecount. It applies to every subset
    withsamebackground/covariance, so correctedpair coefficients are
    controlled jointly.
  </itemize-minus>

  Opening higher modes:

  <\itemize-minus>
    <item>Weight inequality checks directly: aftercover conversion
    logratio\<less\>=m u0+C0\<minus\>theta c_C/2, and c_C\<gtr\>=Cm/64
    plus64(u0+Gamma+C0)\<less\>=Ctheta/2 make it\<less\>=\<minus\>Gamma. It
    does NOT assume newradius\<less\>=oldradius. Thus complete
    incominghigherfamily survives withsmallbound.

    <item>Forced regrouping retains original/new inventories and
    jointmodeproducts. This needs actualrestart failedcutoff/site suppression
    and commonproductbounds; those are now explicitly referenced to
    restart-family, not inferred from singleton estimates.

    <item>Choose amplificationkappa beforeD-dependentL; q thenD thenL avoids
    a parametercycle. The lowerwindow lengthlogC=o(logH) supplies its small
    amplification.
  </itemize-minus>

  Full denominator:

  <\itemize-minus>
    <item>Tree edges (x\<minus\>e_p(x),p(x)),p(x)=highestnonzero coordinate,
    numberV\<minus\>1. Remaining3V+1free links.

    <item>For free (x,i), t=max(i,p(x)). Ifi\<less\>t,
    plaquetteatx\<minus\>e_t in(i,t) has otherfreeedges with
    lower(t,1_i=t,sumx). Thetwo t-edges aretreeedges. Ifi=t andlinkfree,
    itwraps; nonretained meansw=x+e_i!=0, j=p(w)\<less\>i.
    Plaquetteatx\<minus\>e_j in(j,i) has otherfreeedges lowerbyindicator
    orsum. Fourretained links are exactly(\<minus\>e_i,i).

    <item>Eachchosenplaquette has unique maximalfreeedge, so
    chosenplaquettesdistinct and descendingintegration uses a fresh Haar
    variable exactlyonce. Count3V\<minus\>3is valid. Remaining4wrappinglinks
    contribute harmonicloss g^(\<minus\>4dimG), not an extensive extra
    gpower.

    <item>Denominator3V+1small-link restriction and
    numerator3V\<minus\>3integrations yield logloss2dimGlogbeta dividedby
    outputcellcount. WithV=q0 andsmallestperiodgrowth this is\<less\>=1.
    Genuine additivevalueerrors cost2Vdelta andmustbeincluded inCstage, as
    stated.
  </itemize-minus>

  <section|Interface boundary><label|interface-boundary>

  The review verifies deductions conditional on the ACTUAL restarted
  representation having its stated small additive value error, common joint
  product bounds, positive coercive action envelope, and protected
  response-tail bound. Those are supplied by the separate restart-family
  proposition, being checked by foundations. An arbitrary one-step Gaussian
  reader with bounded covariance alone would not suffice. No additional
  internal mathematical error found after the three corrections above. Root
  should keep the restart-family reference explicit in the final
  finite-detector theorem and its proof.

  No chapter edits by reviewer, no global build.
</body>

<\initial>
  <\collection>
    <associate|html-title|Independent review: actual finite detector
    comparison \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|3>>
    <associate|checks-that-passed|<tuple|2|1>>
    <associate|corrections-found-and-addressed|<tuple|1|1>>
    <associate|independent-review-actual-finite-detector-comparison|<tuple|?|1>>
    <associate|interface-boundary|<tuple|3|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Corrections
      found and addressed> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Checks
      that passed> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Interface
      boundary> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>