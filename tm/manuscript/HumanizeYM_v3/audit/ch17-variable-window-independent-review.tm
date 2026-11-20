<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Independent review: comparison across stage
  boundaries><label|independent-review-comparison-across-stage-boundaries>

  Reviewed <verbatim|17-variable-windows.tex> against Chapter11's
  finite-arity and restart comparison interfaces.

  <\itemize-minus>
    <item>The accumulated pre-ratio linear cost is bounded by
    sup_j(log(2+C_j)/log L_j) times total logarithmic block length. This
    gives H^{o(1)} on the O(log H) window without restricting it to one or
    two stages.

    <item>Both stopping overshoots are o(log H) under L_i\<less\>=log
    \<beta\>_i. The number of steps is O(log H), within the restarted-history
    allowed window.

    <item>Unequal actual response products telescope their conditional
    covariances; replacing them by a common stage covariance is neither
    required nor done.

    <item>Requested and author added a quantitative actual coupling ratio
    bound H^{o(1)}(1+log H)/\<beta\>, which is smaller than every fixed
    inverse H power. Mere qualitative o(1) would have been insufficient.

    <item>Requested and author added the distinction that nonlinear
    propagation is the pre-ratio linear map plus an entry-controlled error.
    Fixed-L constants enter the latter additively and are not multiplied
    along the window.

    <item>The full squarefree source, common corrected subset polynomial,
    marker-weight restoration, and bottom partition bound are preserved.
    Longest-window restart and top extraction give the same T for the
    finite/compact dilation requests; the parameter enters only bounded
    stopping ranges and explicit engineering dilations.
  </itemize-minus>

  The revised statement is consistent with these supplied interfaces.
  Cross-reference check passes; no global compile performed by this agent.
</body>

<\initial>
  <\collection>
    <associate|html-title|Independent review: comparison across stage
    boundaries \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|independent-review-comparison-across-stage-boundaries|<tuple|?|1>>
  </collection>
</references>