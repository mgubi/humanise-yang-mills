<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Same-history equation calibration><label|same-history-equation-calibration>

  Fragments written:

  <\itemize-minus>
    <item>chapters/02-equation-section.tex (raw local proof, independent of
    RG)

    <item>chapters/11-equation-calibration.tex (insert after trial-descent
    and before detector discussion, or after current output definitions;
    parent must resolve definition ordering).
  </itemize-minus>

  Sources checked: Martin/existence/marked-portfolio-calibration.tex 160\U297
  (finite derivative credits, explicit floor, entry delays), 310\U510
  (symmetrization and solaris); actual-marked-portfolio-calibration.tex
  113\U245 (last-step cone and same-history backward comparison);
  original-history-portfolio-attachment.tex 205\U243 (pre-length numerical
  floors), 275\U289 (actual reserves); public-run-binding.tex 55\U75 (same
  run entry delays). The source itself says the fixed-section floor
  comparison is an explicit caller condition. Fragment constructs that floor
  before L is chosen, rather than calling an unproved global certificate.

  IMPORTANT normalization issue found during exposition: Raw construction
  gives V_d(R_d I_d) microscopic null. Existing Chapter11 physical convention
  is a_N^{-d} V_d(S_{1/t_N} v). Hence its equation labels are S_{t_N} R_d
  I_d, equivalently (S_t R S_t^{-1})I_d, NOT R_d I_d unless R commutes with
  factor scaling. Raw R may raise factor count, so it need not commute.
  Fragment preserves this conjugation explicitly.

  Follow-up source match: actual-equation-kernel-relay.tex 350\U410
  explicitly uses E=X S_theta coords R and B=X P X^{-1}E=X P S_theta R. Thus
  the new fragment agrees with the source, and no missing engineering
  dilation in the physical insertion has been established.
  Scott/part1/02-definitions.tex 125\U170 explicitly separates engineering
  weight, factor scaling, and common degree tag a_N^{-d}; the terminal map Z
  carries the engineering evolution.

  R can raise engineering weight without raising factor count, so the raw
  conjugation need not tend to identity. This is not itself an obstruction:
  the source uses the actual moving equation plane, uniformly bounded
  projections, and a separate finite-rank detector argument; it does NOT
  require convergence to the unmodified Maxwell plane. The exact remaining
  all-period join is uniform injectivity of the finite correlation detector
  on the complement of this very moving plane (ch11:detector-bound). Raw
  triangularity alone does not prove that join. Source candidate
  finite-rank-kernel-transport.tex derives limiting rank on an ordered
  extraction; fullmesh-fixedbounds-producer.tex is needed for the stronger
  all-period quantitative statement.

  No global compile. Nearidentity/root-error argument retains all terminal
  attachment charges, and requires the existing Chapter11 actual attachment
  hypotheses. The new local equation construction itself has no such
  hypotheses.
</body>

<\initial>
  <\collection>
    <associate|html-title|Same-history equation calibration \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|same-history-equation-calibration|<tuple|?|1>>
  </collection>
</references>