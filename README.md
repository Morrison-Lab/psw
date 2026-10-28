# Principles of Scientific Writing

A style guide for writing in science, technology, engineering, and mathematics (STEM),
with a focus on writing about statistical data analysis.

Read it at <https://morrison-lab.github.io/psw/>.
Each chapter is also available as a slide deck, a PDF handout, and a Word document;
the links are on each chapter's page.

## Building the site

The site is a [Quarto](https://quarto.org/) website,
built from the [`qwt`](https://github.com/d-morrison/qwt) template.
The shared math macros come from the `latex-macros` submodule
([Morrison-Lab/macros](https://github.com/Morrison-Lab/macros)),
so clone with submodules:

```bash
git clone --recurse-submodules https://github.com/Morrison-Lab/psw.git
```

In a clone made without submodules, fetch them with:

```bash
git submodule update --init
```

Then, from the repository root:

- `quarto preview` serves the site with live reload.
- `quarto render` builds every page and format into `_site/`.
- `quarto render chapters/<name>.qmd --to html` renders one page.

Each build first runs `tools/build_math_macros.py`, which needs Python 3.

## Repository layout

- `index.qmd` and `references.qmd` are the home page and the bibliography.
- `chapters/` holds one `.qmd` file per chapter;
  partials that a chapter includes live under `chapters/<name>/`.
- `_quarto.yml` and `_quarto-website.yml` configure the build and the navigation bar.
- `references.bib` is the bibliography.
- `.github/workflows/` runs the spelling, link, lint, and writing-style checks on every pull request.

## Contributing

Open an issue or a pull request.
The writing and formatting conventions are listed in [`CLAUDE.md`](CLAUDE.md),
and the pull-request checks enforce some of them.
Two that the checks enforce:

- Start every sentence on its own source line.
- Add new words to `inst/WORDLIST` for the spell check.

## License

[CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/),
as stated in [`DESCRIPTION`](DESCRIPTION).
