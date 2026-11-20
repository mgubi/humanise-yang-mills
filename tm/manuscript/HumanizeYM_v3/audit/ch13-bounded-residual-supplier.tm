<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Complete coarse-trial residual and bounded
  approximations><label|complete-coarse-trial-residual-and-bounded-approximations>

  Implemented in <verbatim|13-bounded-approximations.tex>, label
  <verbatim|ch13:coarse-residual-supplier>.

  <section|Exact source match><label|exact-source-match>

  <\itemize-minus>
    <item>Martin/existence/actual-phase-grid-approximants.tex, marked
    discrepancy subsection: source weight w=\<zeta\>_m a_m^d
    exp((\<tau\>_h\<minus\>\<tau\>_m)/8)/(2E_h), intermediate weights t_i=w
    product \<varphi\>, backward cone bound, adjacent upper/lower comparison,
    original-law coefficient expansion, final root exp(site cost+5)/w.

    <item>Martin/existence/actual-phase-detector-moments.tex, lemma
    c14-selected-phase-reflection: the positive intermediate insertion
    modifies only the regular singleton in the whole nilpotent exponential;
    all ordinary/flagged higher arrays are retained. This supplies the exact
    two-stage density representation, not merely a singleton response.

    <item>Martin/existence/selected-centered-service.tex 117\U123 gives
    u_i=\<beta\>hat_i^(-1/2)/4 and \<delta\>_i=\<beta\>hat_(i+1)^(-2);
    1893\U1911 gives \<zeta\>, \<varphi\>, \<delta\> and \<delta\>\<varphi\>
    exp(B/128)\<gtr\>=1; 2645\U2670 identifies the actual comparison constant
    with a fixed local-section derivative bound, distinguishing it from the
    exponentially small forced allowance.
  </itemize-minus>

  <section|Additional explicit payment written in the
  book><label|additional-explicit-payment-written-in-the-book>

  A single jump by exp(\<tau\>_h/8) at h is unnecessary and was not justified
  by the previous paragraph. Choose heights satisfying all finite local and
  adjacent costs, then t_i/t_(i+1)=\<varphi\>_i^-1 \<less\>= exp(B_i/128).
  For any existing higher mode with r distinct ancestors, B_i
  r\<less\>=64c_B(X), so the change of marker weights costs at most half one
  spare support unit:

  <\verbatim-code>
    \<varphi\>_i^(-r) exp(-c_B(X)) \<less\>= exp(-c_B(X)/2).
  </verbatim-code>

  The second reserve unit and the exact original component inventories are
  retained in Chapter11's higher-mode induction. This estimate is uniform in
  cardinality/period and applies above as well as below the intermediate
  insertion. Heights have inverse polynomial coupling cost at fixed stage;
  adjacent-stage entry delays bound their ratios and the incidence allowance,
  so \<varphi\> exists before the history is used. There is no need for a
  uniform-in-h fixed source weight.

  The original-law coefficient after insertion is the subset sum of pushed
  negative products times positive coarse factors. Disjoint full ancestor
  cones give the product of pullback discrepancies, including shared frame
  random variables in each cone. The normalized integral has singleton costs
  2+1 and higher costs 2, hence +5 per cell. This proves the exact residual
  estimate used by the bounded approximation proposition.

  Removed the explicit unproved-residual qualification and proposition's
  assumption of it. Kept the specified schedule requests, room requirement,
  ordered limits, and dependence of approximation thresholds on each fixed
  pair. No claim of cutoff thresholds uniform over all copy numbers.

  Validation: check_draft.py resolves all explicit labels; no global
  compilation performed by this agent.

  Independent-review refinement: reweight on the incoming fine support, using
  B_i\<less\>=B_(i+1) and B_(i+1)r\<less\>=64c_(B_(i+1))(X). Explicit full
  exponents A_i satisfy 10<ym-middot>15^4(A_i+9)\<less\>=L_i(A_(i+1)\<minus\>4);
  four reserved incoming units absorb weight/site/attachment costs and cover
  contraction restores the full outgoing exponent. There is no accumulated
  reserve loss. The scalar trial part is an exact global exponential unit
  entry; only the guarded nonconstant part is described as having zero
  complementary profile.
</body>

<\initial>
  <\collection>
    <associate|html-title|Complete coarse-trial residual and bounded
    approximations \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|additional-explicit-payment-written-in-the-book|<tuple|2|1>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|complete-coarse-trial-residual-and-bounded-approximations|<tuple|?|1>>
    <associate|exact-source-match|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Exact
      source match> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Additional
      explicit payment written in the book>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>