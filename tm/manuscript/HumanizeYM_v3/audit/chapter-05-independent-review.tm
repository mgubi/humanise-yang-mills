<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Independent review of Chapter 5 (19 November
  2026)><label|independent-review-of-chapter-5-19-november-2026>

  Reviewed current <verbatim|chapters/05-gaussian.tex> for algebra, counting
  normalizations, zero modes and conditional quantifiers. No direct edits
  made to the author's chapter.

  <\itemize-minus>
    <item>Finite Gaussian problem: A=K_f+bQ<em|Q,
    W=A\<#207B\>\<onesuperior\>bQ>, K_c=bI\<minus\>b\<twosuperior\>QA\<#207B\>\<onesuperior\>Q*;
    completion of squares and determinant scalar are correct in counting
    inner products. For K_f\<gtr\>0 the Woodbury covariance identity is
    correct. Semidefinite extension is appropriately limited to A invertible,
    with no invalid massless prior probability interpretation. Conditional
    mean/covariance follows for proper joint Gaussian.

    <item>Fourier: forward transform unnormalized, inverse
    s\<#207B\>\<#2074\>, Plancherel s\<#207B\>\<#2074\>. Downsampling and
    length-L line sum give Mhat=L\<#207B\>\<#2074\>\<Sigma\>_z L what r_L
    ahat. Covariance then has L\<#207B\>\<#2078\> L\<twosuperior\>
    L\<#2074\>=L\<#207B\>\<twosuperior\>. Plus-sign averaging convention
    matches kernel a(Ly+z+r e_mu). Real w yields paired
    what(theta)what(\<minus\>theta). No missing volume factor found.

    <item>Gauge reduction: weighted projection gives numerator
    \<Sigma\>_{mu\<less\>nu} w_mu w_nu \|q_mu a_nu\<minus\>q_nu
    a_mu\|\<twosuperior\> divided by \<Sigma\> w_mu \|q_mu\|\<twosuperior\>.
    H0 formula matches. Harmonic zero modes are distinguished from periodic
    gradients; no 1/lambda(0) is used as a covariance.

    <item>Pole cancellation: with c_mu=B_mu/lambda_M, identity
    \<Sigma\>q\<twosuperior\>/B=lambda_M h gives H0=(h B_mu
    B_nu)\<#207B\>\<onesuperior\>. The geometric-sum identity used to
    establish h is correct. Holomorphic extension remains conditional on
    nonvanishing F,A,B,h; a uniform strip is not claimed from the algebra.

    <item>Metric modification: H\<#207B\>\<onesuperior\>=H0\<#207B\>\<onesuperior\>+zeta(d2H0\<#207B\>\<onesuperior\>)*(d2H0\<#207B\>\<onesuperior\>)
    implies H\<#207B\>\<onesuperior\>H0 d1=d1 by d2d1=0; hence H d1=H0d1,
    correct.

    <item>Stationary graph: contraction constant\<leqslant\>1/4 and
    displacement\<leqslant\>r_y/4 imply mapping into r_y/2 ball and unique
    fixed point. Inverse derivative bound 4J/3 is correct. Holomorphic
    hypotheses are explicitly complex and uniform in number of coordinates;
    real finite differentiability is not promoted to uniform holomorphy.

    <item>Uniform weighted inverse claim is a standard sufficient framework,
    not a proof of the actual gauge Hessian hypotheses. Draft appropriately
    makes this distinction.
  </itemize-minus>

  Two clarification requests sent to author and parent: explain the beta-free
  Gaussian normalization relative to Chapter4 penalty b beta (rescale link
  logs by sqrt(beta), or label the displayed Gaussian model standalone), and
  explicitly retain bounded coordinate multiplicity per lattice site in the
  stationary-section shell-sum example. Otherwise the displayed anchored
  derivative bound alone does not make S_eta uniform if arbitrarily many
  coordinates share an anchor.

  This review checks the written finite algebra and logical limits of
  conditional statements. It does not discharge the model-specific uniform
  alias estimates, positivity of the interscale defect, or actual nonlinear
  Hessian bounds listed at the chapter end.
</body>

<\initial>
  <\collection>
    <associate|html-title|Independent review of Chapter 5 (19 November 2026)
    \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|independent-review-of-chapter-5-19-november-2026|<tuple|?|1>>
  </collection>
</references>