# Preparing a manuscript for submission

Code

Published

Last modified: 2026-10-05 21:53:36 (UTC)

This chapter collects the conventions that journals expect of a research manuscript at submission. Apply them by default, without waiting for a reviewer to ask.

The target journal’s *Instructions for Authors* override everything here: word limits, abstract headings, reference style, where figures go, and file formats. Read them first. When no journal has been chosen yet, use the defaults below. They follow the [ICMJE Recommendations](https://www.icmje.org/recommendations/) and the *AMA Manual of Style*, which most clinical and health-services journals use.

## 1 Document order

Assemble the main document in this order:

1.  Title page.
2.  Structured abstract, then keywords and, if the journal uses them, Key Points.
3.  Main text in IMRaD order: Introduction, Methods, Results, Discussion (with a limitations paragraph), and Conclusions. See [Paper organization](../chapters/paper-organization.llms.md).
4.  Back matter:
    - acknowledgments;
    - author contributions;
    - funding;
    - conflict of interest disclosures;
    - data and code availability; and
    - the ethics statement.
5.  References.
6.  Tables, numbered in citation order.
7.  Figures, numbered in citation order.
8.  The supplement, or a separate supplement file if the journal requires one.

Tables and figures go at the end of the main text, not inline. For page breaks and caption placement, follow [Manuscript layout for journal submission](../chapters/paper-organization.llms.md#sec-submission-layout) in Paper organization. Some journals want figures uploaded as separate files, with the figure legends listed after the references. When that is the instruction, follow it, and keep the end-of-document copies only for review drafts.

## 2 Title page

The title page carries:

- A specific, informative **title** that names the population, the exposure or intervention, the outcome, and the design where they fit. Avoid abbreviations, questions, and puns, and check the character limit.
- A **running head** (short title), if the journal asks for one.
- **Authors**: full names, degrees if required, affiliations, and ORCID iDs. The authors agree on the byline order among themselves.
- The **corresponding author**’s name, postal address, and email.
- **Word counts** for the abstract and the main text. The main-text count usually runs from the Introduction through the Discussion and excludes the abstract, references, tables, and figure legends.
- Counts of tables, figures, and references.
- A trial or protocol registration number, when one applies.

Authorship follows the four [ICMJE criteria](https://www.icmje.org/recommendations/browse/roles-and-responsibilities/defining-the-role-of-authors-and-contributors.html):

- a substantial contribution to conception, design, data acquisition, or analysis;
- drafting the work or revising it critically;
- final approval of the version to be published; and
- agreement to be accountable for the work.

Contributors who do not meet all four go in the acknowledgments, with their permission. When the journal asks for contribution statements, use the [CRediT taxonomy](https://credit.niso.org/).

## 3 Abstract

- Use a **structured** abstract with the journal’s headings. A generic set is Background, Objective, Methods, Results, and Conclusions. Clinical journals often split Methods into Design, Setting, and Participants; Exposures; and Main Outcomes and Measures.
- Most limits fall between 250 and 350 words.
- The Results give the sample size and the main effect estimates with their confidence intervals, not only *P* values. Phrase each effect estimate as an estimate (“we estimated that …”), per [Statistics and numbers](#statistics-and-numbers). Report the primary outcome first.
- The Conclusions follow from the results and match the design. Use causal language only when the identification strategy supports it, and name that strategy.
- Leave out citations, undefined abbreviations, and references to tables or figures.
- Give 3 to 6 keywords, preferably [MeSH](https://meshb.nlm.nih.gov/) terms.

## 4 Main text

### 4.1 Introduction

Three short paragraphs are usually enough: what is known, the gap, and the objective or hypothesis. End with a sentence that states the aim. Do not preview the results.

### 4.2 Methods

Give enough detail that another analyst could reproduce the analysis:

- study design and setting, with the dates of each period;
- data sources and how records were linked;
- participants: eligibility, exclusions with counts, and a flow diagram when the exclusions are not trivial;
- the exposure or intervention, including its timing;
- primary and secondary outcomes, with units and how each was measured;
- covariates, and why they were included;
- the statistical analysis:
  - the estimand;
  - the model, its assumptions, and how they were checked;
  - handling of missing data;
  - clustering or other correlation;
  - multiple comparisons;
  - sensitivity analyses; and
  - software, with versions;
- ethics approval or exemption, and consent or its waiver; and
- the reporting guideline that the paper follows.

### 4.3 Results

- Open with the analytic sample and its characteristics (Table 1).
- Report the primary outcome, then secondary outcomes, then sensitivity analyses, in the same order that the Methods introduced them.
- Report the numbers and save interpretation for the Discussion.
- Give the key estimates in the text and point to the table for the rest. Do not restate every cell.
- Cite every table and figure in the text, in numerical order, at its first relevant mention.

### 4.4 Discussion

A standard Discussion runs through:

1.  the principal findings, in one paragraph, without repeating the numbers;
2.  comparison with prior work, with citations;
3.  interpretation and possible mechanisms, labeled as interpretation;
4.  limitations, each with its likely direction and what was done about it, covering whichever of these apply:
    - confounding;
    - selection;
    - measurement;
    - generalizability; and
    - power; and
5.  implications for practice, policy, or research.

### 4.5 Conclusions

Write two to four sentences that the data support, with no new results.

## 5 Reporting guidelines

Find the guideline for the study design on the [EQUATOR Network](https://www.equator-network.org/), follow it while writing, and submit the completed checklist if the journal asks for it. [Table 1](#tbl-reporting-guidelines) lists the common ones. Check the EQUATOR page for the current version before citing one.

| Design | Guideline |
|----|----|
| Observational (cohort, case-control, cross-sectional) | STROBE |
| Observational, using routinely collected or EHR data | RECORD (extends STROBE) |
| Randomized trial | CONSORT |
| Trial protocol | SPIRIT |
| Systematic review or meta-analysis | PRISMA |
| Diagnostic accuracy | STARD |
| Prediction model, including machine learning | TRIPOD (TRIPOD+AI) |
| Quality improvement | SQUIRE |
| Economic evaluation | CHEERS |
| Qualitative research | SRQR or COREQ |
| Animal research | ARRIVE |
| Statistical reporting in general | SAMPL |

Table 1: Common reporting guidelines by study design

## 6 Tables

- Number every table in citation order (Table 1, Table 2, and so on), and give every table a caption.
- Put the caption above the table. It says what, who, where, and when, in one phrase.
- Make each table self-contained, so that a reader can understand it without the text.
- Put units in the column headers, and use the same units and decimal places down a column.
- Use horizontal rules only: above the header, below the header, and at the bottom. Avoid vertical rules, shading, and color unless the journal allows them.
- Below the table, define every abbreviation it uses, even ones already defined in the text. Mark notes with superscript letters (a, b, c) in order of appearance, and name the test or model behind each estimate or *P* value.
- Give denominators, as in “45 (12.3%)”, or put the group size in the column header.
- In a randomized trial, Table 1 has no *P* values for baseline differences. For observational comparisons, standardized mean differences are more informative than *P* values.
- Make the table fit the page width. Split a wide table or move it to the supplement.
- Keep the table’s footnotes with the table.

## 7 Figures

- Number every figure in citation order, and give every figure a caption.
- Put the legend below the figure: a title phrase, then sentences that explain panels, symbols, error bars (“Error bars indicate 95% CIs”), and abbreviations.
- Label axes with units, and use the same fonts across figures.
- Size each figure for the page. The plot should fill the available width, meaning the text width or the journal’s stated figure width, with no large blank margins or empty space inside the image. All of its text should meet the journal’s stated minimum size, and in any case be about 8 points or larger at the printed size. Set the figure’s width and height to that width and an aspect ratio that fits the content, rather than exporting at a default size and letting the document shrink it. In a Quarto document, set these with the chunk options `fig-width` and `fig-height`. Wide diagrams such as Sankey plots often fail the size rule: the plot ends up tiny in a field of white space. For a ggplot in R, the [ggview](https://github.com/idmn/ggview) package previews the plot at its exact final width and height (`canvas()`) and saves it at that size (`save_ggplot()`), so you can fix the layout before rendering the document. The preview needs the RStudio IDE; in another editor, save the plot with `save_ggplot()` and open the saved file instead. Remove `canvas()` from any plot that the document prints. A printed plot that still carries it goes to the IDE’s viewer pane instead of the document, so the render either stops with an error or leaves the figure out. A plot saved with `save_ggplot()` can keep its `canvas()`, since that is where the saved size comes from. Check each figure on the rendered page. Figure text far smaller than the caption beneath it is almost certainly below 8 points.
- Use colorblind-safe palettes. Pair color with shape or line type, so that color is never the only way to tell groups apart.
- Show the data where possible. Points with intervals usually say more than bars of means. When you do use bars, start the axis at zero.
- Save plots in a vector format (PDF, EPS, or SVG). Save raster images at 300 dpi or more, or 600 to 1200 dpi for line art.
- Label the panels of a multi-panel figure A, B, C, and refer to them in the legend.
- Add alt text when the journal supports it.

## 8 Statistics and numbers

- Give each estimate with its 95% confidence interval, in one consistent format, such as “0.82 (95% CI, 0.71 to 0.95)”. Use “to” rather than a dash when a bound is negative.
- Describe an estimate as an estimate, in the abstract too. Write “Under the stated difference-in-differences assumptions, we estimated that the intervention reduced time in notes by 1.26 minutes (95% CI, 0.68 to 1.84)”, not “Under the stated difference-in-differences assumptions, the intervention reduced time in notes by 1.26 minutes”. A point estimate stated as a bare fact reads as a known value rather than as an estimate from the data.
- Report exact *P* values to 2 or 3 decimal places (“*P* = .03”), and “*P* \< .001” below that. AMA style uses a capital italic *P* and no leading zero. Never write “*P* = 0.000” or “NS”.
- Lead with estimates and intervals, not significance. Avoid “trend toward significance” and “marginally significant”. Use “significant” only in its statistical sense.
- When an interval is wide, say that the estimate **had more uncertainty**, rather than calling it “less precise” or “imprecise”. An interval that crosses the null is compatible with both benefit and harm, so say that too, rather than reporting “no effect”.
- Summarize roughly symmetric data with the mean (SD), skewed data with the median (IQR), and categorical data with counts and percentages.
- Report no more decimal places than the data support. Give percentages to one decimal place, or whole numbers when n \< 100, and ratios to two decimal places. Use the same precision for the same quantity everywhere, and give a point estimate and both bounds of its interval the same number of decimal places: “1.26 (95% CI, 0.68 to 1.84)”, not “1.26 (95% CI, 0.675 to 1.84)”.
- Spell out a number that begins a sentence, or rewrite the sentence. Use digits for measurements and statistics.
- Follow the journal’s conventions for units and thousands separators, with a space between a number and its unit (“5 mg”).
- Name the estimand and the estimator for every effect, for example “the average treatment effect on the treated, estimated with the Callaway and Sant’Anna difference-in-differences estimator”.
- Make the numbers in the abstract, text, tables, and figures agree. Generate every number that comes from the analysis with code, such as an inline R expression in Quarto, rather than typing it into the prose. A typed number goes stale when the data or the analysis changes, and nothing warns you that it no longer matches the tables.

## 9 Supplement

- Prepare the supplement as a separate document, or as a clearly separated part after a page break. Give it its own title page with the paper’s title and authors, and a table of contents.
- Number its items in the journal’s scheme: “eTable 1”, “eFigure 1”, and “eMethods” in JAMA style, or “Table S1” and “Figure S1” elsewhere. The numbering and caption rules for the main text apply here too.
- Cite each supplement item from the main text, in order.
- Put these in the supplement:
  - extended methods;
  - full model output;
  - sensitivity analyses;
  - additional tables;
  - code and software versions;
  - data-processing details; and
  - pipeline or audit notes, such as data-quality checks, step-by-step exclusions, and reconciliation with earlier reports.
- Hold the supplement to the same standard as the main text.

## 10 Abbreviations

- Define each abbreviation at its first use in the abstract, again at its first use in the main text, and use it consistently after that.
- Define abbreviations again in each table footnote and figure legend.
- Abbreviate only terms that appear several times, and never in the title.
- Standard terms such as CI, SD, and IQR need no definition in most journals. Check the journal’s list.

## 11 References

- Use the journal’s reference style. AMA and Vancouver, numbered in order of first citation, are the usual defaults.
- Generate the reference list from a `.bib` file with a CSL style, rather than formatting it by hand.
- A citation inside a table or figure is numbered at the point where that table or figure is first cited.
- Cite primary sources. Check that every reference exists and supports the sentence it is attached to, and check for retractions. See [Citations and evidence](../chapters/citations-evidence.llms.md).
- Include DOIs when the style allows them.
- Cite the software and R packages that the analysis relied on.

## 12 Prose

- Follow the rest of this guide: plain words, short sentences, and the active voice.
- Use the past tense for what was done and found (Methods and Results) and the present tense for established knowledge and for what the findings mean.
- Match causal language to the design. Write “was associated with” for associations, and use causal verbs only when the design and its stated assumptions justify them.
- Avoid stock phrases and AI tells, such as “novel”, “groundbreaking”, “delve”, “crucial”, and “not just X but Y” constructions. See [Avoiding AI tells](../chapters/avoid-ai-tells.llms.md).
- Keep pipeline, audit, and process notes out of the main text. These belong in the supplement or nowhere:
  - scripts and file names;
  - variable names;
  - merge requests and code versions;
  - reviewer conversations;
  - references to earlier drafts; and
  - to-do notes.
- Use one term per concept throughout the paper.
- Define every group, period, and outcome before you use it.

## 13 Required statements

Most journals require each of these, either in the text or in the submission forms:

- funding sources and the funder’s role;
- conflict of interest disclosures, usually on the [ICMJE disclosure form](https://www.icmje.org/disclosure-of-interest/);
- ethics approval and consent;
- data availability and code availability;
- trial or protocol registration;
- use of AI tools in writing or analysis, if the journal’s policy asks; and
- prior presentation or preprints.

## 14 Rendering and layout in Quarto

- Render from source every time, and never edit the output file by hand.
- Place page breaks and captions as described in [Manuscript layout for journal submission](../chapters/paper-organization.llms.md#sec-submission-layout) in Paper organization.
- Put table captions above (`tbl-cap-location: top`) and figure captions below (`fig-cap-location: bottom`).
- Use double spacing, line numbers, and page numbers if the journal asks for them.
- Check that every cross-reference resolves.

## 15 Submission checklist

A document that renders without errors is not ready to submit. The first item is a hard gate: no one should call a manuscript ready, or merge a change to it, until someone has looked at every page of the current render. Before calling a manuscript ready:

1.  Export the render to PDF and look at every page, in both the main text and the supplement.
2.  Every table and figure has a number and a caption, and the text cites each one in order.
3.  No caption is on a different page from its table or figure, or split across a page break, no table runs off the page, no figure is cropped or blurry, and every figure fills the available width without large blank margins, with its smallest text about 8 points or larger.
4.  The tables and figures come after the references, and a page break comes before the supplement.
5.  The output has no broken cross-references (`??`, `@fig-`, `Table ?`), raw Markdown, code output, warnings, or stray “NA” cells.
6.  The numbers in the abstract match the Results, tables, and figures.
7.  Every abbreviation is defined at first use in the abstract, the text, and each table and figure.
8.  Every estimate has a 95% CI, is phrased as an estimate, and shares its decimal places with its CI, and *P* values and decimals follow [Statistics and numbers](#statistics-and-numbers).
9.  The main text has no pipeline or audit notes, file names, or to-do notes.
10. The reporting-guideline checklist is complete, with page numbers.
11. Every reference resolves, appears in order, and supports its sentence.
12. The title page is complete: authors, affiliations, corresponding author, and word counts.
13. The required statements are present.
14. The word, table, figure, and reference counts are within the journal’s limits.
15. The prose has been checked for AI tells, and the claims and numbers have been fact-checked.
16. The cover letter is drafted. It states the question, the main finding, why this journal, that the work is not under consideration elsewhere, and any suggested or excluded reviewers.

Back to top
