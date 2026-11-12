<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../index.tm><ym-nav-sep><hlink|The
  theorem|../blueprint/public-statement.tm><ym-nav-sep><hlink|Proof
  outline|../blueprint/outline.tm><ym-nav-sep><hlink|Unit
  plan|../blueprint/unit-plan.tm><ym-nav-sep><hlink|Blueprint|../blueprint/index.tm><ym-nav-sep><hlink|Manuscript|../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../blueprint/glossary.tm><ym-nav-sep><hlink|Notation|../docs/notation.tm><ym-nav-sep><hlink|Source
  audit|audit.tm><ym-nav-sep><hlink|Literature|../blueprint/external-map.tm><ym-nav-sep><hlink|Proof
  standard|../docs/proof-standard.tm><ym-nav-sep><hlink|Contributing|../CONTRIBUTING.tm>>

  <ym-title|Automated source mirror><label|automated-source-mirror>

  <verbatim|.github/workflows/sync-lean-source.yml> mirrors the public
  upstream project from <verbatim|yang-mills-group/OpenAI-YM-20261028> into
  <verbatim|Lean/>. It records the resolved full commit hash and toolchain in
  <verbatim|source/upstream.json>, checks the structural metadata, and opens
  or updates one pull request. It never pushes the imported source directly
  to <verbatim|main>.

  <section|Activation><label|activation>

  <\enumerate>
    <item>In this repository, allow GitHub Actions workflows to create pull
    requests and grant the workflow <verbatim|contents: write> and
    <verbatim|pull-requests: write> access.

    <item>For immediate notifications, copy
    <hlink|<verbatim|upstream-dispatch.yml>|https://github.com/hairer/humanise-yang-mills/blob/main/source/upstream-dispatch.yml>
    into the upstream repository at <verbatim|.github/workflows/>. Create the
    upstream secret <verbatim|YM_DOCUMENTATION_DISPATCH_TOKEN>: a
    fine-grained token restricted to this repository with <strong|Contents:
    write> permission. It is used only to send a
    <verbatim|repository_dispatch> event; the target workflow still derives
    all imported files from the fixed upstream URL.

    <item>If the upstream repository is private before release, add its
    read-only fine-grained token here as <verbatim|UPSTREAM_READ_TOKEN>. Omit
    it once the source is public.
  </enumerate>

  The target workflow also polls twice per hour. That catches the first
  public release, when an upstream workflow could not yet have run, and is a
  fallback if the dispatch configuration is unavailable. GitHub may delay
  scheduled workflows and can disable them after prolonged repository
  inactivity; the dispatch is the prompt path.

  <section|Review boundary><label|review-boundary>

  The mirror PR establishes source provenance only. Reviewers must still
  perform the import procedure in <hlink|README.md|index.tm>: reproduce the
  upstream build, write build evidence, identify the target declarations, and
  audit any effect on existing proof units. A later upstream revision must be
  coordinated before merge if it changes a source revision used by existing
  units. In that case the blueprint check intentionally remains red after the
  PR is opened; it is a record of the source-revision migration that must be
  completed before merging.
</body>

<\initial>
  <\collection>
    <associate|html-title|Automated source mirror \U Humanise Yang\UMills>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|activation|<tuple|1|1>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|automated-source-mirror|<tuple|?|1>>
    <associate|review-boundary|<tuple|2|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Activation>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Review
      boundary> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>