# Claude Code Instructions

Project guidance for Claude Code (CLI, IDE, and the GitHub Action). The same
conventions apply to GitHub Copilot.

## Project context

`psw` ("Principles of Scientific Writing") is a [Quarto](https://quarto.org/)
website — a style guide for scientific writing, with a focus on writing about
statistical data analysis. It is built from the
[`qwt`](https://github.com/d-morrison/qwt) Quarto website template, so it shares
that template's structure (profiles, theorem-callout extensions, multi-format
output, CI workflows).

## Repository layout

- `index.qmd`, `references.qmd` — top-level pages (home + bibliography)
- `chapters/` — the content pages (one `.qmd` per chapter); include partials
  live under `chapters/<name>/`
- `appendix-document-metadata.qmd` — DOCX-only git-commit footer (an include)
- `_quarto.yml`, `_quarto-website.yml` — Quarto base + website-profile config
- `_extensions/` — vendored Quarto extensions (callouty-theorem, custom-callout,
  div-anchors, equation-anchors, slidebreak)
- `references.bib` — BibTeX bibliography
- `offwhite.scss`, `theme-picker.html` — the website's Light / Off-white / Parchment / Dark theme dropdown (saved under `mln-theme`, shared with the slides and the other sites on this origin)
- `styles.css`, `styles-reveal.scss`, `qwt-reveal-toggle.html` — styling, including the slides' matching dropdown
- `.github/workflows/`, `.github/scripts/` — CI workflows and helper scripts
- `_site/`, `_freeze/`, `.quarto/` — build artifacts (do not edit by hand)

## Output formats

Each page declares `format:` front matter for HTML (the website), RevealJS
slides (`<stem>-slides.html`), a PDF handout (`<stem>-handout.pdf`), and DOCX
(`<stem>.docx`). Keep the `output-file` stems consistent with the page filename
when adding a page.

## Theorem environments

Definitions, examples, theorems, etc. use Quarto cross-reference divs
(`#def-`, `#exm-`, `#thm-`, `#lem-`, `#cor-`, `#prp-`, …). The
`callouty-theorem` + `custom-callout` extensions render them as colored
callouts (config + color palette live in `_quarto-website.yml`).

## Style conventions

- **Lists of 3+ items**: use bullet lists, not comma-separated prose; leave a
  blank line before a markdown bullet list.
- **Quarto chunks**: prefer `#|` YAML-style chunk options, not inline
  `r, opt = val` arguments.
- **R style**: respect `.lintr.R`; run `lintr::lint_dir()` before declaring R
  changes done.

## Working in this repo

- **Local preview**: `quarto preview` (live reload). Full build:
  `quarto render`. To verify a single page, render just it
  (`quarto render <file>.qmd --to html`).
- **New chapters**: add the page under `chapters/` and link it in the navbar in
  `_quarto-website.yml`.
- **Spell check**: add words to `inst/WORDLIST` rather than disabling the
  check (`.github/workflows/check-spelling.yaml`).
- **Link check**: tuned in `lychee.toml`; fix broken links rather than adding
  exceptions.

## Pull request expectations

- Keep PRs scoped — bug fixes shouldn't smuggle in refactors.
- Explain the *why* in commit messages and PR descriptions.
- Don't bypass CI failures (spell check, link check, lint) — fix the cause.
- Don't commit `_site/` or `_freeze/` changes unless that is the intent.

## Things to avoid

- Adding new dependencies (R packages, Quarto extensions) without a clear reason.
- Reformatting unrelated files.
- Inventing URLs or citations — only use sources present in `references.bib` or
  explicitly provided.

<!-- ai-config:begin (managed by Morrison-Lab/ai-config scripts/wire-repo-config.py) -->
## Cross-project agent rules (ai-config)

This repository follows the maintainer's cross-project agent rules in
[Morrison-Lab/ai-config](https://github.com/Morrison-Lab/ai-config).
If your harness has not already loaded them (Claude Code loads them through
the ai-config plugin), read
[AGENTS.md](https://github.com/Morrison-Lab/ai-config/blob/main/AGENTS.md)
before starting work, and follow it alongside this file.
This file's own instructions add to those rules, and win only where they are
more specific.
<!-- ai-config:end -->
