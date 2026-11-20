<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Independent review: tied-gap locality><label|independent-review-tied-gap-locality>

  Reviewed the adjacent spacelike-exchange proof in
  <verbatim|chapters/16-reconstruction.tex>.

  The original wording that a variable imaginary boost directly gives a germ
  at a tied gap needed one explicit construction. The current paragraph
  supplies it: choose a fixed sufficiently small nonzero boost first. Its
  image of the tied-gap configuration is strictly inside the appropriate
  tube, so an open complex neighborhood maps into the tube and the pullback
  is genuinely holomorphic there.

  For agreement with the original tube, the short boost path stays in the
  tube on nearby interior configurations. For the distinguished difference
  this follows from the strictly future timelike vector <verbatim|(t e,
  \|v\|)> and positive small cosine/sine coefficients; the other differences
  have a strict cone margin. Analytic continuation of real Lorentz covariance
  along this path identifies the pullback with the original function on the
  overlap. The opposite boost and exchanged tube give the second germ.

  At zero real times, smooth permutation-symmetric Euclidean restrictions on
  the two sides give identical jets at the noncoincident tie. The Euclidean
  slice is totally real, hence these are identical holomorphic germs. Scaling
  real times from zero to their desired values keeps the selected difference
  spacelike; compatible local germs continue equality along the path. The
  final distributional boundary limit uses the already established tube
  growth bounds. No additional scalar normalization or restriction on
  exterior insertions is needed.

  Status: the concrete germ-construction concern is resolved in the current
  text. This audit checks that local argument, not a replacement proof of the
  earlier global tube/boundary-value theorem.
</body>

<\initial>
  <\collection>
    <associate|html-title|Independent review: tied-gap locality \U Humanise
    Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|independent-review-tied-gap-locality|<tuple|?|1>>
  </collection>
</references>