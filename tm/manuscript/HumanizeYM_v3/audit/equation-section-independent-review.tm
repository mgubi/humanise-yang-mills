<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../../index.tm><ym-nav-sep><hlink|The
  theorem|../../../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../../../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../../../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../../../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../../index.tm><ym-nav-sep><hlink|Monograph|../../existence.tm><ym-nav-sep><hlink|Glossary|../../../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../../../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|../../../source/audit.tm><ym-nav-sep><hlink|Literature|../../../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../../../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../../../CONTRIBUTING.tm>>

  <ym-title|Independent review: microscopic equations and
  calibration><label|independent-review-microscopic-equations-and-calibration>

  Reviewed <verbatim|chapters/02-equation-section.tex> and
  <verbatim|chapters/11-equation-calibration.tex>, with the ordinary/forced
  charge distinction checked against Martin
  <verbatim|marked-field-local-estimates.tex>,
  <verbatim|marked-portfolio-calibration.tex>,
  <verbatim|actual-marked-portfolio-calibration.tex>, and
  <verbatim|actual-equation-kernel-relay.tex>.

  <section|Verified><label|verified>

  <\itemize-minus>
    <item>The avoiding-link curvature coordinates span the finite radial-jet
    dual: sampled curl is polynomial on the integer lattice; removing
    finitely many plaquettes does not affect polynomial uniqueness; radial
    closed polynomial potentials vanish by Euler's identity. Paths avoiding
    the distinguished link give exact link independence, not merely
    linearized independence.

    <item>The force span only needs the top layer of its common kernel to
    solve Maxwell. It does not incorrectly identify the entire discrete-force
    kernel with continuum solution jets. Finite-dimensional annihilator
    duality gives the required one-layer equation functional.

    <item>Curvature representatives for the remaining factors are chosen on
    the full jet space. Consequently force errors at equal factor count raise
    engineering weight; nonlinear errors raise factor count. The stated
    lexicographic triangular order and finite inverse are valid.

    <item>Integration by parts freezes all links except the differentiated
    link. The transport, multiplicative factors, and bounded exterior
    spectator are independent of that link. Thus no derivative of the
    spectator is taken. Finite stencil and period-fit requirements prevent
    periodization from identifying that link with a nominally exterior one.

    <item>Symmetry and real-structure averaging preserve exact nullity and
    both filtrations. One fixed section is selected before all derivative
    requests.

    <item>The same-history endpoint follows from the last cone step and is
    independent of spectators. Finite symmetry averaging costs the stated
    orbit bound twice. The map acts on factor-normalized coefficients, so the
    equation space is correctly <verbatim|Z P S_t R I>, not <verbatim|Z P R
    I> or an unproved fixed Maxwell subspace.
  </itemize-minus>

  <section|Resolved repair: ordinary terminal attachment
  cost><label|resolved-repair-ordinary-terminal-attachment-cost>

  The initial calibration proof replaced the general trial charge containing
  <verbatim|2\|D\| r> by <verbatim|2 q_d> without displaying the additional
  estimate that permits this replacement. This is material because the block
  floor must be independent of the later coupling and global value norm.

  Martin <verbatim|marked-field-local-estimates.tex:139,162\U186,375\U387>
  supplies the sharper bound: in the remainder norm weighted by
  <verbatim|sqrt(w_N)>, the attachment costs at most

  <verbatim|2 \|D\| sqrt(w_N) exp(81 sigma_N) Z_N^val>.

  Impose <verbatim|sqrt(w_N) Z_N^val \<less\>= 1> on the adjacent-stage
  coupling delay, together with the finite regional-mass/stencil conditions
  needed for the original attachment. Then coefficient plus remainder is
  bounded by the displayed <verbatim|Q_dj>, while the unweighted reserved
  mass remains in <verbatim|E_N>. These are different norms/costs; the large
  global-value term must not simply be omitted from both.

  The payment is available before history selection: <verbatim|Z_N^val
  \<less\>= A_d M_d beta_N^k> for a fixed degree, whereas
  <verbatim|sqrt(w(beta)) beta^k -\<gtr\> 0> for every fixed k. At each stage
  take the finite maximum over degrees through that stage and its adjacent
  profiles. Martin lines13\U65 give the elementary proof;
  <verbatim|actual-marked-portfolio-calibration.tex:476\U533> then separates
  Q (cone endpoint) from E (root error) explicitly. The author added the
  normalized attachment formula, the separate unweighted reserved mass, all
  three entry conditions, and the adjacent-stage threshold explanation.
  Independently reread these additions; the issue is resolved. No further
  obstruction found in this review.
</body>

<\initial>
  <\collection>
    <associate|html-title|Independent review: microscopic equations and
    calibration \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|independent-review-microscopic-equations-and-calibration|<tuple|?|1>>
    <associate|resolved-repair-ordinary-terminal-attachment-cost|<tuple|2|1>>
    <associate|verified|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Verified>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Resolved
      repair: ordinary terminal attachment cost>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>