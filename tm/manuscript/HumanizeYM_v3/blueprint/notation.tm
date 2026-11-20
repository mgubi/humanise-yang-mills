<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Shared notation and terminology><label|shared-notation-and-terminology>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Status and use>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Global
    conventions and collision repairs> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Lattice
    geometry and gauge theory> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Labels,
    representatives and normalized insertions>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Renormalization
    group> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Correlations,
    continuum fields and comparison> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Phases,
    reconstruction and operator products>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Terminology
    translation and restrictions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Mandatory
    consistency checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Implemented
    late-chapter notation (19 November revision)>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Additional
    local notation in the integrated proof>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Trace
    comparison and marked-current additions>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn>
  </table-of-contents>

  <section|Status and use><label|status-and-use>

  This is the notation contract for the proposed monograph, drawn from Scott
  and Trish <verbatim|part1/notation-index.tex>, their definitions and
  macros, and Martin <verbatim|existence/symbolic-index.tex>. It fixes common
  names; a row does not assert existence of its object. Define each object in
  its owning chapter before using it. When a nonstandard symbol returns after
  three to four pages, write a short reminder or definition reference. Add a
  notation paragraph at every chapter entry listing only symbols that chapter
  actually uses. Local auxiliary symbols may be introduced if their scope
  ends with the subsection and they do not shadow reserved global symbols.

  Source locators below use Scott labels unless marked M for Martin. A
  chapter writer need only open the named source file and search the label.
  The registry is intentionally not copied wholesale into the opening
  chapter. The printed book should have a short notation index at the back
  and local definition reminders in the text.

  <section|Global conventions and collision
  repairs><label|global-conventions-and-collision-repairs>

  <\itemize-minus>
    <item>Coordinates are <verbatim|x=(x\<#2081\>,x\<#2082\>,x\<#2083\>,x\<#2084\>)=(bold
    x,t)>; time is coordinate 4. Translate Martin's axes 0,1,2,3. Euclidean
    inner products are positive; Minkowski square is
    t\<twosuperior\>\<minus\>\|bold x\|\<twosuperior\>. Complex Hilbert inner
    products are antilinear in the first variable.

    <item><verbatim|R_p> is the physical period (Scott L_p, Martin P_p).
    <verbatim|L_m> is the odd blocking ratio (Scott \<ell\>_m). <verbatim|s>
    or <verbatim|s_{m,p}=R_pD_m> is an integer number of sites per side;
    <verbatim|s_m> is <strong|not> used for logarithmic scale in the
    monograph. Use <verbatim|\<tau\>_m=log D_m>. A generic fixed ratio may be
    L.

    <item><verbatim|b\<gtr\>0> is the block-kernel penalty, not the coupling,
    the one-loop coefficient or a basis vector. Use <verbatim|b_{d,i}> only
    with both indices for label basis vectors. <verbatim|\<beta\>> is inverse
    bare/effective coupling; <verbatim|b\<#2080\>> is the one-loop
    coefficient; <verbatim|\<kappa\>_G=2b\<#2080\>> is the inverse-coupling
    logarithmic slope.

    <item><verbatim|\<mu\>_{N,p}> means the Wilson probability only. Use
    <verbatim|\<delta\>^{F\<twosuperior\>}_{N,p}> for the additive unit
    counterterm of F\<twosuperior\> (Trish's repair of Scott's \<mu\>
    collision). Phase measure is \<nu\> and trace spectral measure is
    \<mu\>_\<Theta\>.

    <item><verbatim|S> and <verbatim|S_n> denote continuum correlations,
    never a lattice action. Use <verbatim|E_s^W> for the Wilson energy and
    <verbatim|V_\<rho\>> for the effective action.

    <item><verbatim|a_m> is always a spacing. Rename Martin's local
    quadratic/cubic/quartic coefficient arrays as
    <verbatim|A_m^{(2)},A_m^{(3)},A_m^{(4)}>. <verbatim|A_\<mu\>> is a
    connection component; in Gaussian sections use <verbatim|K> for the
    kinetic operator, <verbatim|Q> for linear block averaging and
    <verbatim|C> or <verbatim|\<Gamma\>> for covariance, after giving their
    spaces. A localized approximate covariance is not necessarily the inverse
    of the original precision.

    <item><verbatim|N_fac> is factor-count operator (Scott mathsf N); N
    without subscript is a cutoff index. <verbatim|d> is scaling-dimension
    cutoff; <verbatim|d_g> is dimension of the Lie algebra. A filtration
    index d bounds the scaling dimension and fixes the insertion
    normalization.

    <item>Reserve <verbatim|mathcal H> for Hilbert spaces,
    <verbatim|H\<#2084\>> for signed coordinate permutations and
    <verbatim|mathcal D> for the common operator domain. <verbatim|\<Xi\>> is
    phase space, \<xi\> a character and \<xi\>_* selected phase. Do not use X
    for phase space because X is polymer support.

    <item>Reserve <verbatim|mathsf Z_{N,p,d}> for terminal coefficient maps
    and <verbatim|Z_{s,\<beta\>}> for partition functions. Reserve
    <verbatim|mathscr U_{k,d}> for scaling maps and <verbatim|U(g)> for
    relativistic unitaries; <verbatim|U_e> remains a lattice link variable.
  </itemize-minus>

  <section|Lattice geometry and gauge theory><label|lattice-geometry-and-gauge-theory>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Symbol>>|<cell|<strong|Definition/type>>|<cell|<strong|First
  definition; source>>>|<row|<cell|G, n_G, g>|<cell|Fixed closed subgroup of
  U(n_G), matrix dimension, real Lie algebra>|<cell|Ch. 1;
  <verbatim|part1/02-definitions.tex>, def:D01>>|<row|<cell|<verbatim|\<less\>X,Y\<gtr\>_g>>|<cell|<verbatim|\<minus\>Re
  tr(XY)/n_G> on g>|<cell|same>>|<row|<cell|d_g, C_g>|<cell|<verbatim|dim_R
  g>; adjoint Casimir in that metric>|<cell|same; C_g=2n\<twosuperior\> for
  defining SU(n)>>|<row|<cell|b\<#2080\>,
  \<kappa\>_G>|<cell|<verbatim|11C_g/(48\<pi\>\<twosuperior\>)>,
  <verbatim|11C_g/(24\<pi\>\<twosuperior\>)>>|<cell|same; coefficient's RG
  role later>>|<row|<cell|H\<#2084\>, h>|<cell|Group of signed coordinate
  permutation matrices, an element>|<cell|Ch. 1; Scott conventions / Outline
  I.1.2>>|<row|<cell|e_\<mu\>>|<cell|Coordinate unit vector,
  \<mu\>=1,\<ldots\>,4>|<cell|Ch. 1>>|<row|<cell|\<Lambda\>_s,
  E_s>|<cell|<verbatim|(Z/sZ)^4>, positively oriented links>|<cell|Ch. 1; M
  lattice.tex ex-lattice>>|<row|<cell|r_s(y), hat y>|<cell|Centered
  representative; physical point a_N r_s(y)>|<cell|Ch. 1;
  eq:I12-physical-placement>>|<row|<cell|dist_s(x,y)>|<cell|Periodic sup
  distance in lattice units>|<cell|Ch. 1; Outline I.1.1>>|<row|<cell|U_e,
  U_{y;\<mu\>\<nu\>}, U_\<gamma\>>|<cell|Link variable, plaquette product,
  ordered path transport>|<cell|Ch. 1; def:D02>>|<row|<cell|w(u),
  \<chi\>(u)>|<cell|<verbatim|1\<minus\>Re tr(u)/n_G>, normalized
  Hilbert\USchmidt distance from the identity>|<cell|Ch. 1;
  eq:I12-price-chord; Scott pr/ch renamed>>|<row|<cell|E_s^W, Z_{s,\<beta\>},
  \<mu\>_{s,\<beta\>}>|<cell|Wilson energy, partition function,
  law>|<cell|Ch. 1; def:D02>>|<row|<cell|D_m, a_m,
  \<tau\>_m>|<cell|Cumulative denominator, D_m\<#207B\>\<onesuperior\>, log
  D_m>|<cell|Ch. 1; eq:I12-levels>>|<row|<cell|L_m, R_p, s_{m,p}>|<cell|Odd
  ratio; physical period; R_pD_m sites per side>|<cell|Ch. 1; eq:I12-levels;
  Outline I.1.3>>|<row|<cell|N, m, p, j>|<cell|Fine cutoff; RG level; volume
  index; regularity stage>|<cell|Ch. 1 / RG; always identify which
  varies>>|<row|<cell|\<Theta\>_\<mu\>, \<theta\>_\<mu\>>|<cell|Reflection of
  configurations; antilinear pullback on observables>|<cell|Ch. 1; M
  eq:ex-lattice-reflection-pullback>>|<row|<cell|<verbatim|\|\|F\|\|_{cb,T}>>|<cell|Chessboard
  seminorm for specified tiling T>|<cell|Ch. 1; exact reflected/conjugated
  product convention required>>|<row|<cell|B_R(x), cov_B(X)>|<cell|Periodic
  sup ball; minimum number of radius-B balls with connected union covering
  X>|<cell|Polymer chapter; def:D05b / Outline
  I.1.4>>|<row|<cell|\<Sigma\>_d, \<Sigma\>_v>|<cell|Fixed finite stencil of
  a local section or insertion>|<cell|Ch. 2; def:D19,
  def:Q1>>|<row|<cell|X_i,Y_i,o_i>|<cell|Regular support, large-field
  exclusion/coverage support, anchor>|<cell|Polymer chapter;
  eq:I12-representation; D24\UD25>>|<row|<cell|Y_i^read>|<cell|Full
  link-dependence region: internal links plus links queried by flags and
  extra tests>|<cell|Chapter 4; Scott D25; can extend distance one beyond
  Y_i>>>>>

  <section|Labels, representatives and normalized
  insertions><label|labels-representatives-and-normalized-insertions>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Symbol>>|<cell|<strong|Definition/type>>|<cell|<strong|First
  definition; source>>>|<row|<cell|J, J_{\<leqslant\>d}>|<cell|Formal radial
  jets, finite truncation through scaling dimension d>|<cell|Ch. 2;
  def:D07>>|<row|<cell|A_{k,\<mu\>}>|<cell|Homogeneous radial potential of
  polynomial degree k+1>|<cell|Ch. 2; coordinates have scaling dimension
  k+2>>|<row|<cell|V_d>|<cell|Ad(G)-invariant jet polynomials of scaling
  dimension \<leqslant\>d>|<cell|Ch. 2; def:D07>>|<row|<cell|b_{d,i},
  (w_i,f_i)>|<cell|Nested real bihomogeneous basis, scaling dimension (also
  called weight) and factor count>|<cell|Ch. 2; Outline
  II.1.1>>|<row|<cell|N_fac, t^{N_fac}>|<cell|Count operator;
  b_{d,i}\<mapsto\>t^{f_i}b_{d,i}>|<cell|Ch. 2;
  sec:local-fields>>|<row|<cell|sc_h J>|<cell|Jet scaling with h^{k+2} on
  A_k>|<cell|Ch. 2; eq:I12-test-holonomy>>|<row|<cell|U(h,J)>|<cell|Exact
  link holonomies of truncated smooth test connection>|<cell|Ch. 2;
  eq:I12-test-holonomy>>|<row|<cell|Tay_d>|<cell|Taylor expansion in jet
  variables, weight truncated at d>|<cell|Ch. 2;
  sec:A-labels>>|<row|<cell|P_d^loc[c]>|<cell|Polynomial finite-stencil right
  inverse of Tay_d>|<cell|Ch. 2; lem:A1; M
  local-sections.tex>>|<row|<cell|c_{F\<twosuperior\>},
  P^cl>|<cell|<verbatim|\<onequarter\>\<Sigma\>_{\<mu\>\<nu\>}\<less\>F_{\<mu\>\<nu\>},F_{\<mu\>\<nu\>}\<gtr\>>;
  clover representative>|<cell|Ch. 2; sec:A-example>>|<row|<cell|T=\<sqcup\>_d
  V_d, v=(d,c)>|<cell|Insertion labels with filtration index d>|<cell|Ch. 2,
  then transfer chapter; sec:local-fields>>|<row|<cell|r(d)>|<cell|Chosen
  reference RG level of degree-d fields>|<cell|Transfer chapter; Scott
  m_ref(d)>>|<row|<cell|mathsf Z_{N,p,d}>|<cell|Invertible map: fine
  coefficient \<rightarrow\> reference-level coefficient>|<cell|Transfer
  chapter; def:D08, lem:E2.1a>>|<row|<cell|I_{N,p}(v,y;U)>|<cell|<verbatim|a_N^{-d}
  P_d^loc[t_N^{-N_fac} mathsf Z_{N,p,d}^{-1} c](y;U)>>|<cell|Transfer
  chapter; def:D08>>|<row|<cell|u_d>|<cell|<verbatim|a_{r(d)}^d 1>; produces
  unit insertion for N\<geqslant\>r(d)>|<cell|Transfer chapter;
  def:D08>>|<row|<cell|\<lambda\>^{F\<twosuperior\>}<em|{N,p},
  \<delta\>^{F\<twosuperior\>}>{N,p}>|<cell|Multiplicative and additive
  coefficients of Z\<#207B\>\<onesuperior\>
  c_{F\<twosuperior\>}>|<cell|Transfer chapter; Trish
  sec:A-example>>|<row|<cell|x_m, R^{reg}<em|{m,i},
  Q^{lf}>{m,i}>|<cell|Transferred coefficient and regular/large-field
  inserted remainders>|<cell|Transfer chapter;
  eq:I12-marked-representation>>|<row|<cell|I_d^eq, R_d^eq>|<cell|Free
  equation ideal and triangular label change for exact lattice
  equations>|<cell|Comparison chapter; Scott mathcal I_d, mathsf R_d;
  lem:A-R4>>>>>

  <section|Renormalization group><label|renormalization-group>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Symbol>>|<cell|<strong|Definition/type>>|<cell|<strong|Source>>>|<row|<cell|b,
  bar \<beta\>>|<cell|Fixed soft-block penalty; common endpoint inverse
  coupling>|<cell|sec:block-map, sec:trajectories>>|<row|<cell|J_m, q_j,
  varpi_j, \<sigma\>_j>|<cell|Stage, derivative order, spatial power, support
  exponent>|<cell|sec:constants; not interchangeable with scale
  m>>|<row|<cell|hat \<beta\>_m>|<cell|<verbatim|bar \<beta\>+\<kappa\>_G
  \<tau\>_m> reference coupling>|<cell|eq:I12-scales>>|<row|<cell|M_m^cut>|<cell|<verbatim|exp[(log
  log hat \<beta\>_m)\<twosuperior\>]>>|<cell|eq:I12-scales>>|<row|<cell|t_m>|<cell|<verbatim|hat
  \<beta\>_m^{-1/2} M_m^cut> plaquette threshold>|<cell|eq:I12-scales>>|<row|<cell|B_m>|<cell|<verbatim|ceil[(log
  hat \<beta\>_m)\<twosuperior\>]> support-weight
  radius>|<cell|eq:I12-scales-b>>|<row|<cell|\<varepsilon\>_m^reg,
  \<varepsilon\>_m^lf>|<cell|<verbatim|hat \<beta\>_m^{-11/10}>,
  <verbatim|exp[-(M_m^cut)^{1/5}]>>|<cell|eq:I12-scales-b; lf replaces
  for>>|<row|<cell|mathfrak B_m>|<cell|<verbatim|[hat \<beta\>_m/2,2hat
  \<beta\>_m]> coupling band>|<cell|sec:block-map>>|<row|<cell|\<beta\>_{N,p,m},
  \<beta\>_{N,p}>|<cell|Trajectory coupling at m; bare value at
  N>|<cell|prop:MT>>|<row|<cell|Y_{e,z}, Q_e^pred, w_z^av>|<cell|Framed
  connector; gauge-covariant block average; normalized averaging
  weights>|<cell|eq:I12-framed-connector,
  eq:I12-predictor>>|<row|<cell|\<alpha\>_tag,
  \<lambda\>^tag(U,\<alpha\>_tag)>|<cell|Auxiliary discrete branch choice and
  probability>|<cell|eq:I12-tag-mass>>|<row|<cell|q_\<gamma\>(u)>|<cell|Haar-normalized
  density proportional to exp[\<minus\>\<gamma\>w(u)]>|<cell|def:D04>>|<row|<cell|k^{(m)}_\<beta\>,
  B^{(m)}_\<beta\>>|<cell|Normalized block kernel, exact density integration
  map m+1\<rightarrow\>m>|<cell|def:D04>>|<row|<cell|Bad_m(U)>|<cell|Sites
  incident to a plaquette with \<chi\>\<gtr\>t_m>|<cell|sec:density; Scott
  Flag>>|<row|<cell|E_i^reg, K_i^lf>|<cell|Small-field local correction;
  large-field polymer activity>|<cell|eq:I12-forced-eligibility>>|<row|<cell|I_i^bad>|<cell|Exactly
  prescribed nonempty set Bad_m(U)\<cap\>Y_i>|<cell|same; not a field
  insertion>>|<row|<cell|mathfrak F_m(U)>|<cell|Disjoint polymer families
  exactly covering Bad_m(U)>|<cell|def:D06>>|<row|<cell|\<rho\>, v_sc,
  V_\<rho\>, dens(\<rho\>)>|<cell|Density coordinate tuple, scalar
  normalization, effective action, density>|<cell|def:D06>>|<row|<cell|P^{path}_{N,m}>|<cell|Gauge-invariant
  action in transported curvature variables>|<cell|eq:I12-path-action>>|<row|<cell|\<chi\>^{rel}_{m,x},
  clip_t>|<cell|Relaxed small-field test; piecewise action
  bound>|<cell|eq:I12-clipping; clip has a jump, not a smooth
  cutoff>>|<row|<cell|D^L_A, <verbatim|\|\|F\|\|_{m,o,X}>>|<cell|Left link
  derivative and local seminorm with specified derivative
  list>|<cell|def:D05a>>|<row|<cell|E_m(\<rho\>),
  K_m(\<rho\>)>|<cell|Weighted regular and large-field activity
  sums>|<cell|def:D05b>>|<row|<cell|A_{N,m,p}, R_{N,m,p}>|<cell|Admissible
  coordinate class; admissible adjacent-cutoff
  pairs>|<cell|sec:density>>|<row|<cell|Q_m, C_m>|<cell|Precision/Hessian and
  covariance on an explicitly specified slice>|<cell|Gaussian chapter; do not
  conflate with positive localized C>>|<row|<cell|W_0, W_ax>|<cell|Free
  interpolation and axial tangent map>|<cell|subsec:B-free,
  subsec:B-stationary>>|<row|<cell|mathsf C_\<mu\>, mathsf
  G_\<mu\>>|<cell|Source's gauge-completed Hessian and ghost
  operator>|<cell|subsec:B-inverse; may rename to Q_\<mu\>,Q_\<mu\>^gh
  locally>>>>>

  <section|Correlations, continuum fields and
  comparison><label|correlations-continuum-fields-and-comparison>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Symbol>>|<cell|<strong|Definition/type>>|<cell|<strong|Source>>>|<row|<cell|M^{lat}<em|{N,p},
  C^{lat}>{N,p}>|<cell|Unsmeared product moment; joint-test Riemann
  sum>|<cell|def:D03>>|<row|<cell|Conf_n,
  sep_\<infty\>>|<cell|Pairwise-distinct configurations; minimum sup
  separation>|<cell|sec:families>>|<row|<cell|Gen_n,
  NoHit_{R,n}>|<cell|Coordinatewise generic/separated
  domains>|<cell|sec:uv-limit; never replace by Conf_n without
  proof>>|<row|<cell|\<Delta\>_h^\<alpha\>,
  \<partial\>^\<alpha\>>|<cell|Finite differences with denominators;
  continuum derivatives>|<cell|sec:uv-limit>>|<row|<cell|M^{UV}_{p,v},
  C_p^{UV}(v;f)>|<cell|Fixed-volume kernel; its smeared value>|<cell|prop:UV,
  def:D09>>|<row|<cell|P=p_seq\<circ\>q_seq>|<cell|Retained volume-index map;
  no field polynomial meaning>|<cell|prop:IV>>|<row|<cell|S_n, S,
  S^\<xi\>>|<cell|Mixed correlations, family thereof, phase
  correlations>|<cell|def:E1-E3, prop:PH>>|<row|<cell|N_d(S),
  F_d>|<cell|All-spectator null subspace of V_d;
  V_d/N_d(S)>|<cell|def:D10>>|<row|<cell|iota_d,
  L_fields>|<cell|Correlation-response embedding; span of
  images>|<cell|def:D10; mathcal L in Scott>>|<row|<cell|j_{d,e},
  \<partial\>_\<mu\>>|<cell|Field inclusion and field derivative, proved from
  correlations>|<cell|prop:FC; not naïve polynomial
  inclusion>>|<row|<cell|1_d, F_tag>|<cell|Class [u_d]; disjoint union of
  degree-tagged quotient spaces>|<cell|sec:field-spaces>>|<row|<cell|M_d^Max,
  S^Max, \<Gamma\>>|<cell|Free Maxwell quotient fields, correlations,
  covariance>|<cell|def:D11>>|<row|<cell|mathscr U_{k,d},
  r_k>|<cell|Short-distance comparison maps and scale
  sequence>|<cell|def:D12>>|<row|<cell|T^Max_{\<mu\>\<nu\>},
  T_{\<mu\>\<nu\>}>|<cell|Free Maxwell stress tensor; Ward-normalized
  interacting tensor>|<cell|prop:ST>>|<row|<cell|P_\<nu\>^J, Y_K^J,
  \<chi\>_shell>|<cell|Translation flux, angular flux, smooth annular
  cutoff>|<cell|def:D13; J here tensor, not jet space>>|<row|<cell|R_d(O),
  L_d(K)>|<cell|O(4) action and infinitesimal rotation action on
  fields>|<cell|prop:ST>>>>>

  <section|Phases, reconstruction and operator
  products><label|phases-reconstruction-and-operator-products>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Symbol>>|<cell|<strong|Definition/type>>|<cell|<strong|Source>>>|<row|<cell|H_\<mu\>^OS,
  mathcal H_\<mu\>^OS, \<Omega\>_\<mu\>^OS, P_\<mu\>^0>|<cell|Coordinate
  energy, reflection Hilbert space, vacuum, zero-energy
  projection>|<cell|def:D14>>|<row|<cell|B_h(w), M^0(w),
  A\<#2080\>>|<cell|Slab insertion operator, vacuum compression, commutative
  compression C*-algebra>|<cell|def:compression>>|<row|<cell|\<Xi\>, \<nu\>,
  \<xi\>_*>|<cell|Spectrum of compression algebra, full-support probability,
  chosen character>|<cell|prop:PH>>|<row|<cell|mathcal H_\<xi\>, mathcal
  D_\<xi\>, \<Omega\>_\<xi\>, \<Phi\>_\<xi\>>|<cell|Reconstructed space,
  common invariant dense domain, vacuum, operator fields>|<cell|def:D14a,
  prop:RC>>|<row|<cell|T_\<xi\>(z), E_\<xi\>, U_\<xi\>(g),
  \<rho\>_lab(g)>|<cell|Unitary translations, joint spectral measure,
  Poincaré representation, label action>|<cell|def:D14a>>|<row|<cell|H_\<xi\>,
  J_\<xi\>^OS>|<cell|Energy and isometric Euclidean/relativistic
  comparison>|<cell|prop:RC>>|<row|<cell|V_+, overline V_+,
  Poinc>|<cell|Open/closed future cones; proper orthochronous Poincaré
  group>|<cell|sec:wightman-defs>>|<row|<cell|W_n^\<xi\>,
  F_n^\<xi\>>|<cell|Boundary Wightman distribution; ordered-time analytic
  continuation>|<cell|def:D15 and reconstruction
  chapter>>|<row|<cell|\<Theta\>, G_\<Theta\>(r), A_G>|<cell|Selected-phase
  centered trace; radial two-point function;
  <verbatim|3d_g/\<pi\>\<#2074\>>>|<cell|def:D16,
  prop:TR>>|<row|<cell|\<mu\>_\<Theta\>, hat f_+>|<cell|Trace spectral
  measure; Fourier transform with declared sign>|<cell|after
  prop:TR>>|<row|<cell|O_{F\<twosuperior\>},
  d\<#2082\>>|<cell|Curvature-square field; trace comparison
  coefficient>|<cell|after prop:TR>>|<row|<cell|W_Wick>|<cell|Finite sum of
  finite products of free mass-shell Laplace kernels>|<cell|def:D17; narrow
  comparison class>>|<row|<cell|\<zeta\>>|<cell|State index in \<Xi\>
  disjoint-union {mix}>|<cell|def:D18>>|<row|<cell|A,B (bold)>|<cell|Cluster
  and spectator lists of fields with specified filtration
  indices>|<cell|def:D18>>|<row|<cell|<verbatim|\|A\|_deg>>|<cell|Sum of
  normalization indices of clustered fields>|<cell|def:D18>>|<row|<cell|Ch_j,
  O_{j,\<lambda\>}, c_{j,\<lambda\>}>|<cell|Finite channel index, basis
  field, OPE coefficient>|<cell|defs:D31\UD33; Part II
  J>>|<row|<cell|R_D^\<zeta\>>|<cell|Correlation remainder at finite
  truncation D>|<cell|def:D18, prop:OP>>|<row|<cell|\<delta\>_sp, \<eta\>,
  M_geo>|<cell|Spectator clearance, internal scaled separation, cluster size
  parameter>|<cell|def:D18; restate quantifiers>>|<row|<cell|mathfrak
  D_A^\<zeta\>>|<cell|Distributional contact extension of separated
  correlations>|<cell|prop:CT; not a lattice limit at collisions>>>>>

  <section|Terminology translation and restrictions><label|terminology-translation-and-restrictions>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Source
  wording>>|<cell|<strong|Monograph wording or precise
  definition>>>|<row|<cell|token, label>|<cell|polynomial label with
  specified filtration index; distinguish from quotient
  field>>|<row|<cell|table>|<cell|family of Schwinger functions / correlation
  kernels>>|<row|<cell|healthy/unhealthy>|<cell|small-field / large-field
  configuration on the stated support>>|<row|<cell|flag /
  inventory>|<cell|large-field site / prescribed set of large-field
  sites>>|<row|<cell|forced activity>|<cell|large-field polymer activity
  constrained to cover specified sites>>|<row|<cell|test>|<cell|Test function
  for smearing a distribution. For a cutoff inequality, finite parameter
  evaluation, or correlation pairing, specify the condition or
  pairing.>>|<row|<cell|higher modes (in the source variables)>|<cell|Terms
  involving two or more insertions, indexed by the source
  monomial.>>|<row|<cell|replicated root norm>|<cell|Chessboard seminorm for
  a reflected tiling. State the product moment directly for other
  arrangements of copies.>>|<row|<cell|primary source>|<cell|Normalized local
  insertion, with its local polynomial coefficient when expressed in the
  chosen basis.>>|<row|<cell|receipt, payment, price, budget>|<cell|explicit
  estimate, bound, allowed norm bound, or constant; print the
  inequality>>|<row|<cell|readout>|<cell|coefficient-extraction map (or
  terminal coefficient map, if that is the actual map)>>|<row|<cell|mark /
  marked density>|<cell|observable insertion / density with specified
  insertions>>|<row|<cell|rank purchase>|<cell|rank or nondegeneracy
  estimate, with its matrix and norm specified>>|<row|<cell|frame>|<cell|local
  gauge choice, basis, or scaling map, according to type; never leave
  ambiguous>>|<row|<cell|horizon / calendar / course / history>|<cell|finite
  range or reference scale / scale schedule / RG trajectory; inspect actual
  definition>>|<row|<cell|shell flux>|<cell|integral of a conserved-current
  correlation against an annular cutoff derivative>>|<row|<cell|all-shot,
  all-arity>|<cell|uniform over every finite number of insertions, with
  dependence stated>>|<row|<cell|contact extension>|<cell|distribution
  extending a kernel from the complement of collision diagonals>>>>>

  Do not translate a source metaphor by guessing: its domain, codomain,
  quantifiers and estimates determine its meaning. Distinguish support roles:
  large-field activities depend on internal links of Y_i <strong|and flags in
  Y_i>; evaluating flags reads plaquettes within distance one beyond Y_i.
  Exact covers and the stated large-field norm use Y_i, while
  connected-expansion overlap graphs use full dependence regions Y_i^read.
  Disjoint exclusion supports may have overlapping dependence regions. Any
  conversion between these support conventions requires its own geometry and
  norm estimate. 'Phase' here means a character in the constructed
  compression algebra; do not assume uniqueness, lattice realizability, or
  equivalence to an extremal DLR state. 'Non-free' must specify the excluded
  finite Wick-profile class; the two-point trace law alone does not exclude
  generalized free fields.

  <section|Mandatory consistency checks><label|mandatory-consistency-checks>

  <\enumerate>
    <item>Same G representation and trace normalization throughout; every
    \<beta\> or Casimir formula matches them.

    <item>At level m the integer period is R_pD_m and physical spacing a_m;
    blocking decreases m.

    <item>Unit label in V_d is 1, but normalized degree-d unit coefficient is
    a_{r(d)}^d1.

    <item>Distinguish scaling dimension, factor count and filtration index
    whenever transferring a label.

    <item>Record all constant dependencies: group, b, fixed degree/arity,
    derivative order, separation, but never silently N or p in a uniform
    estimate.

    <item>Do not turn pointwise-in-degree estimates into uniform-in-degree
    OPE convergence.

    <item>A common family and common volume refinement must be maintained
    through later constructions.

    <item>Separate Hilbert-space field-null relations from equality of formal
    polynomials and from Maxwell equation ideals.

    <item>Give the actual Fourier convention when introducing it; no global
    convention is guessed from a symbol.

    <item>In the final page audit search each chapter for
    unused-for-four-pages notation and add brief definition pointers; a back
    index alone does not satisfy the reminder rule.
  </enumerate>

  <section|Implemented late-chapter notation (19 November
  revision)><label|implemented-late-chapter-notation-19-november-revision>

  These names supersede shorthand in the planning tables where they differ.
  Definitions occur in the indicated book labels.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Symbol>>|<cell|<strong|Type
  and scope>>|<cell|<strong|Book definition>>>|<row|<cell|I_d
  (calligraphic)>|<cell|Degree-d invariant polynomial ideal vanishing on
  Maxwell solution jets>|<cell|ch02:equation-section>>|<row|<cell|V_d
  (calligraphic)>|<cell|Equation-adapted finite-stencil section, distinct
  from polynomial space V_d>|<cell|ch02:equation-adapted>>|<row|<cell|R_d
  (bare)>|<cell|Triangular automorphism of polynomial labels for exact
  microscopic equations; distinguished from rotation R_d(K) by its domain and
  lack of group argument>|<cell|ch02:equation-adapted>>|<row|<cell|P_{N,p,d}>|<cell|Near-identity
  comparison of the two microscopic sections on one actual
  history>|<cell|ch11:equation-comparison>>|<row|<cell|E_{N,p,d}
  (mathsf)>|<cell|Actual moving equation subspace in reference coordinates,
  including factor scaling>|<cell|ch11:actual-equation-subspace>>|<row|<cell|M(w),
  mathfrak A>|<cell|Whole-word compression and its commutative C*-algebra;
  replaces M^0/A_0 shorthand>|<cell|ch15:compression>>|<row|<cell|B_h(w),
  B_epsilon(A)>|<cell|Width-h word insertion; in Chapter16 only, centered
  singleton in width 2epsilon>|<cell|ch14:slab-bound;
  ch16:slabs>>|<row|<cell|mathsf F_n^xi, mathcal W_n^xi>|<cell|Ordered
  complex-time function and full spacetime tube
  function>|<cell|ch16:heat-function; ch16:full-tube>>|<row|<cell|rho_Theta>|<cell|Positive
  trace spectral measure (mu_Theta in early planning
  table)>|<cell|ch17:spectral-pairing>>|<row|<cell|U_{i,d}, beta_i,
  b_i>|<cell|Prescribed-radius comparison map, actual insertion-level
  coupling, reference coupling>|<cell|ch17:radii>>|<row|<cell|e_i,
  q_i>|<cell|Trace stability amplification and coefficient growth bounds,
  M_i^(1/5), M_i^(1/6); local to Chapter17>|<cell|ch17:stability>>|<row|<cell|rho(x,y,z)>|<cell|Finite-dimensional
  trace functional -2x-8y; not a probability
  density>|<cell|ch17:rho>>|<row|<cell|E_j, Q_j, O_{j,a}>|<cell|Fixed
  invariant degree summand, its projection, and basis for OPE/contact
  prescriptions>|<cell|ch18:graded>>|<row|<cell|rho(x), a_h(x), T_{h,k},
  mathcal W>|<cell|Smooth minimum-distance scale, nearest-pair weights,
  normal Taylor operator, contact subtraction>|<cell|ch18:pair-weights--ch18:subtraction>>>>>

  The Chapter18 contact prescription now uses the invariant summands E_j for
  one consistent multilinear family across degree inclusions. Its
  conservative Taylor order is k+1 with k+1\<gtr\>P for the established
  separated-kernel exponent P. It is distinct from the unverified sharper
  source forest prescription. The selected phase remains xi_* and the mixed
  family S is never silently replaced by S^xi_*.

  <section|Additional local notation in the integrated
  proof><label|additional-local-notation-in-the-integrated-proof>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Symbol>>|<cell|<strong|Meaning
  and scope>>|<cell|<strong|Book definition>>>|<row|<cell|H(x), h(x),
  r(x)>|<cell|Original and reduced cutoff amplitudes, and recording-scale
  change; r is not a physical radius in this
  subsection>|<cell|ch11:restart-construction>>|<row|<cell|D_k (mathscr),
  sigma_k>|<cell|Actual restarted density and its scalar normalization; its
  integral is the original partition function>|<cell|ch11:restart-density>>|<row|<cell|T,
  S_t, W_rho>|<cell|Common polynomial extraction, factor-count dilation,
  scaling-dimension dilation; in comparison sections T is not the stress
  tensor>|<cell|ch11:common-extraction; ch11:simultaneous-detector-lifts>>|<row|<cell|R_I,
  G_I, omega>|<cell|Corrected subset source, free subset moment, and source
  amplitude in the fixed-arity squarefree
  algebra>|<cell|ch11:n-mark-comparison>>|<row|<cell|zeta_i, phi_i,
  omega_i^res>|<cell|Small singleton allowance, adjacent source-weight ratio,
  and residual source weight>|<cell|ch13:coarse-residual-supplier>>|<row|<cell|A_i,
  mathscr A_h>|<cell|Full support exponent in the residual induction;
  separately, the complete pushed source polynomial at
  h>|<cell|ch13:coarse-residual-supplier>>|<row|<cell|J_h, E_h,
  Q_h>|<cell|Coarse trial coefficient matrix, complete trial bound, ordinary
  small-field trial bound>|<cell|ch13:coarse-matrix>>|<row|<cell|P_{N,h}
  (calligraphic)>|<cell|Pullback of a bounded coarse observable by the
  forward probability kernel, retaining all frame/randomness
  dependencies>|<cell|ch13:cone-factorization>>|<row|<cell|mathcal
  P_D>|<cell|Fixed-probe reconstruction of a local cluster into F_D, before
  phase or rotation averaging>|<cell|ch18:mixed-replacement (placed in
  Chapter13)>>|<row|<cell|varpi, phi_l, Xi_l, y_{t,l}>|<cell|Residual weight,
  its adjacent ratio, subpower extraction allowance and degree-t attachment
  allowance; local to the cluster proof>|<cell|ch18:residual-weights (placed
  in Chapter13)>>|<row|<cell|K_0,K_a,K_a^t>|<cell|Mass-one current anchor
  average, component average and difference
  primitive>|<cell|ch17:block-identities>>|<row|<cell|mathcal E_b, e_r, bar
  e_{m,r}>|<cell|Current conservation defect, weighted field-order norm, and
  logarithmically normalized norm>|<cell|ch17:defect-four;
  ch17:unnormalized-defect>>|<row|<cell|R_f,R_0,d_V>|<cell|Actual predictor
  differential, coarse-vertex gauge correction, and coarse infinitesimal
  gauge action>|<cell|ch17:actual-current-map>>>>>

  The residual marker weight is written omega_i^res, never t_i: t_i is
  already reserved for the small-field threshold used in local sections.
  Likewise the complete polynomial mathscr A_h is not the numerical support
  exponent A_h. Remind the reader of these types when reusing them in later
  subsections.

  <section|Trace comparison and marked-current
  additions><label|trace-comparison-and-marked-current-additions>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Symbol>>|<cell|<strong|Meaning
  and scope>>|<cell|<strong|Book definition>>>|<row|<cell|mathscr L_j,
  J_i>|<cell|Stage-j block ratio and the stage J(i+1) used in the i-to-i+1
  step>|<cell|ch17:variable-windows; ch10:schedule>>|<row|<cell|epsilon_j>|<cell|log(2+C_j)/log(mathscr
  L_j), where C_j is fixed before the ratio is
  selected>|<cell|ch17:window-product>>|<row|<cell|H_n, M_n>|<cell|exp((log
  log beta-hat_n)^2), the same large small-field multiplier in the trace
  comparison>|<cell|ch17:radii; ch17:variable-windows>>|<row|<cell|D_Y k
  (calligraphic)>|<cell|Haar divergence of the outgoing block kernel times
  the smooth current displacement; a density-valued
  insertion>|<cell|ch17:kernel-divergence>>|<row|<cell|P_5, P_(5,t)
  (calligraphic)>|<cell|Scaling-dimension-five extraction and its
  factor-count threshold normalization>|<cell|ch17:marked-rates>>|<row|<cell|Sigma_k,
  j_k>|<cell|Nonclassical marked current coefficient and coefficient of
  current divergence; the complete zero-moment coefficient is
  Sigma_k\<minus\>beta j_k>|<cell|ch17:finite-sigma>>|<row|<cell|v_i^eq>|<cell|beta_i^(-1)
  Sigma_(k_i)\<minus\>j_i, the approximate equation direction in the
  finite-dimensional vector space>|<cell|ch17:marked-rates>>>>>

  In this chapter the scale index n is never the arity; fixed arity is N_*.
  The smooth gauge-fixed response W_s and the actual forest-coordinate
  response W_a must be distinguished. Polynomial transport is proved for W_s;
  using it for W_a requires the gauge-coordinate comparison. A remainder of
  high scaling dimension may still have field degree two; never infer an
  extra threshold factor from scaling dimension alone.
</body>

<\initial>
  <\collection>
    <associate|html-title|Shared notation and terminology \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|additional-local-notation-in-the-integrated-proof|<tuple|11|12>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|10|9>>
    <associate|auto-11|<tuple|11|12>>
    <associate|auto-12|<tuple|12|13>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|3>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|5|5>>
    <associate|auto-6|<tuple|6|6>>
    <associate|auto-7|<tuple|7|7>>
    <associate|auto-8|<tuple|8|8>>
    <associate|auto-9|<tuple|9|9>>
    <associate|correlations-continuum-fields-and-comparison|<tuple|6|6>>
    <associate|global-conventions-and-collision-repairs|<tuple|2|2>>
    <associate|implemented-late-chapter-notation-19-november-revision|<tuple|10|9>>
    <associate|labels-representatives-and-normalized-insertions|<tuple|4|4>>
    <associate|lattice-geometry-and-gauge-theory|<tuple|3|3>>
    <associate|mandatory-consistency-checks|<tuple|9|9>>
    <associate|phases-reconstruction-and-operator-products|<tuple|7|7>>
    <associate|renormalization-group|<tuple|5|5>>
    <associate|shared-notation-and-terminology|<tuple|?|1>>
    <associate|status-and-use|<tuple|1|1>>
    <associate|terminology-translation-and-restrictions|<tuple|8|8>>
    <associate|trace-comparison-and-marked-current-additions|<tuple|12|13>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Status
      and use> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Global
      conventions and collision repairs> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Lattice
      geometry and gauge theory> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Labels,
      representatives and normalized insertions>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Renormalization
      group> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Correlations,
      continuum fields and comparison> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Phases,
      reconstruction and operator products>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Terminology
      translation and restrictions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Mandatory
      consistency checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Implemented
      late-chapter notation (19 November revision)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Additional
      local notation in the integrated proof>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Trace
      comparison and marked-current additions>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>