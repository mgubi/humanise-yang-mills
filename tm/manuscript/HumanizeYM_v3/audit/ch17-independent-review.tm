<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Independent mathematical review of Chapter
  17><label|independent-mathematical-review-of-chapter-17>

  Reviewed <verbatim|chapters/17-trace-law.tex> (draft seen2026-11-19). No
  edits to author file.

  <section|Correction applied><label|correction-applied>

  Root replaced the arity occurrences by fixed <math|N<rsub|\<ast\>>> in both
  hypotheses and error displays.

  In prescribed-radius comparison, n denotes the lattice level tending to
  infinity, but the powers <verbatim|(alpha0-alpha1) D n+c> and
  <verbatim|(alpha0-alpha2) D n-alpha0-c> must use FIXED arity, not that
  level. Fixed exponents cannot satisfy the first negative inequality for
  n\<rightarrow\>\<infty\>. Rename this occurrence to a fixed arity bound N_*
  (in hypotheses AND strip/grid error displays). Parent notified.

  <section|Checked implications><label|checked-implications>

  <\itemize-minus>
    <item>Stability lemma is sound under its stated hypotheses. Although
    convergence s_i\<rightarrow\>s is not initially assumed, the bases
    (t_i,k_i) converge to (t,v), with k_i=v_i\<minus\>t_is_iv_i\<rightarrow\>v,
    and s_it_i=I,s_ik_i=0. This proves convergence/boundedness of s_i and the
    claimed uniformly bounded coordinate functional c_i. The error e_i
    rho(k_i) tends to zero from both assumed rates and bounded rho t_i.

    <item>Trace cancellation uses the SAME lambda_i for all three tensors.
    f_i inverse remains bounded by independence of free divergences.
    Coefficients c_i can grow q_i, but error products vanish because
    q_i/e_i\<rightarrow\>0. Formula4c_D=lambda(beta
    KB_L)+c_Xlambda(KB_X)+c_D(lambda(KB_D)+4) has the correct signs. It gives
    c_D\<rightarrow\>\<minus\>kappa/4.

    <item>Amplification is handled correctly: with A_i=beta_i r_i^4 U_i^-1,
    beta_i r_i^4 U_i^-1 Z_i=beta_i A_iB_L+c_X A_iB_X+c_D A_iB_D.
    Faster-than-power trace cancellation on L/X suppresses the first two
    terms; D contributes\<minus\>kappa O. Qualitative convergence alone would
    not suffice; the draft explicitly requests stronger rates.

    <item>Conserved-line comparison/flux fixes nu_i\<rightarrow\>1. This uses
    centered conserved tensors, exact inclusion/symmetry transport, and
    same-family shell comparison; all should remain in the stated interface.
    The flux argument cannot be replaced by a bare subsequential free stress
    limit from an unrelated comparison map.

    <item>Subtracting selected phase expectation costs beta_i
    r_i^4\<rightarrow\>0. Units must be preserved by U_i, as required.

    <item>All-radius subsequence logic is valid: from EVERY prescribed null
    sequence a comparison subsequence is required. If the full limit failed,
    the violating null sequence would have no subsequence with the target
    limit. Monotonicity only of G(r), not of r8log\<twosuperior\>G, is used
    correctly; fixed t\<less\>1 and t\<gtr\>1 sandwich normalized target,
    then t\<rightarrow\>1.

    <item>Free ordered-pair normalization yields2*24/16=3 per colour,
    consistent with O=1/4\<Sigma\>ordered F\<twosuperior\>.

    <item>Regulator argument correctly avoids differentiating O(1). MVT for
    logmu over a FIXED interval requires uniform bounded remainder for that
    current/period family, and the Haar coefficient is independent of
    selected mu. With the stated uniform current-period limit on each compact
    regulator interval, then u\<rightarrow\>\<minus\>\<infty\> and interval
    length A\<rightarrow\>\<infty\>, the claim follows. Keep this order
    explicit.

    <item>Finite mass-shell profiles have only nonnegative integer log powers
    at any finite asymptotic order; sufficient expansion before
    multiplication supplies the bounded remainder. The exclusion is
    appropriately restricted and does not assert absence of generalized free
    representations or a mass gap.
  </itemize-minus>

  <section|Boundaries not discharged by this
  review><label|boundaries-not-discharged-by-this-review>

  This is a review of finite-dimensional, spectral and limiting deductions,
  not verification of actual regulator/current transfer estimates. In
  particular same-family rho(Sigma_k), equation direction errors after
  backward matching/replication, exact forward-difference preservation,
  uniform all-radius marked windows and moving-label comparison are explicit
  additional inputs. Their qualitative counterparts do not imply the required
  rates. No new hidden algebraic gap identified beyond the arity/level
  notation collision above.
</body>

<\initial>
  <\collection>
    <associate|html-title|Independent mathematical review of Chapter 17 \U
    Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|boundaries-not-discharged-by-this-review|<tuple|3|2>>
    <associate|checked-implications|<tuple|2|1>>
    <associate|correction-applied|<tuple|1|1>>
    <associate|independent-mathematical-review-of-chapter-17|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Correction
      applied> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Checked
      implications> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Boundaries
      not discharged by this review> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>