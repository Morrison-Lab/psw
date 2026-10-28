# Paper organization

Code

Published

Last modified: 2026-10-27 20:11:58 (PDT)

Effective organization helps readers navigate your scientific paper and understand your findings. The structure of your paper should guide readers logically from your research question through your methods to your results and conclusions.

## 1 Write to clarify your thinking

Write down a question or an idea as soon as you have it, before you search for an answer. Writing it down helps you in these ways:

- You see what you need to know.
- You state the problem more precisely.
- You often answer the question yourself while writing it.

The computer scientist Leslie Lamport argues that a person who thinks without writing only thinks that they are thinking ([Lamport 2019](#ref-lamport2019think)).

## 2 Standard paper structure

Most scientific papers follow the IMRaD structure:

- **Introduction**: Present the research question and background
- **Methods**: Describe how the study was conducted
- **Results**: Present the findings
- **Discussion**: Interpret the findings and their implications

Some papers combine Results and Discussion into a single section.

## 3 Organizing the Results section

The Results section presents your findings clearly and logically. How you organize this section depends on your research design and the complexity of your analyses.

### 3.1 Single outcome studies

When analyzing a single primary outcome, organize results by:

- Descriptive statistics first
- Main analysis results
- Sensitivity analyses or subgroup analyses

### 3.2 Multiple outcomes analyzed separately

When analyzing multiple outcomes separately, **group your results section by outcome** rather than by analysis type. This organization improves clarity and readability by keeping all information about each outcome together.

#### Why group by outcome

Grouping by outcome helps readers:

- Follow the story of each outcome from descriptive statistics through final results
- Compare findings across outcomes more easily
- Understand the complete picture for each outcome before moving to the next
- Navigate directly to outcomes of interest

#### How to organize by outcome

For each outcome, present:

1.  Descriptive statistics
2.  Main analysis results
3.  Sensitivity analyses
4.  Subgroup analyses (if applicable)

**Structure:**

    Results
    ├── Outcome 1: Mortality
    │   ├── Descriptive statistics
    │   ├── Main analysis
    │   ├── Sensitivity analyses
    │   └── Subgroup analyses
    ├── Outcome 2: Hospital readmission
    │   ├── Descriptive statistics
    │   ├── Main analysis
    │   ├── Sensitivity analyses
    │   └── Subgroup analyses
    └── Outcome 3: Quality of life
        ├── Descriptive statistics
        ├── Main analysis
        ├── Sensitivity analyses
        └── Subgroup analyses

#### What to avoid

**Don’t group by analysis type** when outcomes are analyzed separately:

    Results (POOR ORGANIZATION)
    ├── Descriptive statistics
    │   ├── Mortality
    │   ├── Hospital readmission
    │   └── Quality of life
    ├── Main analyses
    │   ├── Mortality
    │   ├── Hospital readmission
    │   └── Quality of life
    └── Sensitivity analyses
        ├── Mortality
        ├── Hospital readmission
        └── Quality of life

This forces readers to jump back and forth between sections to understand the complete story for any single outcome.

#### Exception: Shared descriptive statistics

If your descriptive statistics apply to all outcomes (for example, baseline characteristics in a clinical trial), present them once at the beginning before discussing individual outcomes.

## 4 Figures and tables

In a reading copy (a website, a preprint, or a draft circulated to coauthors), place figures and tables near the relevant text that describes them. A journal submission often needs a different layout ([Section 4.3](#sec-submission-layout)). Either way, number figures and tables sequentially and reference them in the text before they appear.

Each figure and table should have a clear, informative caption that allows readers to understand it without reading the main text.

### 4.1 Label variables in plain words

A figure or table is read by people, not by the code that made it. Replace every variable name from the data with a label a reader understands:

- turn underscores and other code punctuation into spaces;
- use ordinary capitalization;
- spell out abbreviations and acronyms where space allows;
- give the unit of every measured quantity, in parentheses;
- relabel category levels the same way, including legend entries.

Use the same label for a variable in every figure, table and paragraph, so a reader can match them up.

> **NOTE:**
>
> **Example 1 (Relabeling axes and a legend)**  
>
> > ❌ x-axis `age_yrs`, y-axis `sbp`, legend `trt_grp`: `ctrl`, `tx`
> >
> > ✅ x-axis “Age (years)”, y-axis “Systolic blood pressure (mm Hg)”, legend “Treatment group”: “Control”, “Treatment”
>
> In R with `ggplot2`, set the axis and legend titles with `labs()`, and recode the category levels before plotting, for example with `forcats::fct_recode()`.

### 4.2 Captions are captions, not headings

Give every figure and table a numbered caption, including those in the supplementary material. A table without a caption is incomplete, even when its contents are correct.

Attach each caption to its figure or table with your writing tool’s caption feature (in Quarto, the last line of a `#fig-` or `#tbl-` div), not as a section heading.

**Poor caption**: a section heading that reads “Supplementary Figure S43: Distribution of follow-up time”, placed above the figure

**Better caption**: “Distribution of follow-up time”, written as a caption attached to the figure, with its label and number generated by your writing tool rather than typed by hand (a supplementary “S” prefix may need extra setup in the tool)

A heading posing as a caption usually appears in the table of contents, takes on heading styling, and is not attached to its figure. Its number is typed by hand, so it falls out of step with the real numbering when figures are added, removed, or reordered.

### 4.3 Manuscript layout for journal submission

Many journals ask for figures and tables to follow the main text of a submitted manuscript rather than appear inline. Unless the journal’s instructions say otherwise, lay out a submission manuscript as follows:

- **Put all main-text figures and tables at the end of the main manuscript**, after the main text and the references, and before the supplementary material. The main text still cites each one by number.
- **Insert a page break before the supplementary material header**, so the supplement starts on a new page.
- **Keep each caption with its figure or table.** Insert a page break before the first figure or table and between consecutive ones, so that each one starts on a page where it fits with its caption. Do not let a caption fall on a different page from its figure or table, or split across a page break, unless it cannot be avoided, as when a figure or table and its caption together are taller than a full page.

In Quarto, the `{{< pagebreak >}}` shortcode inserts a page break in PDF and Word output, and a `::: {#refs}` div places the references where you put the div instead of at the end of the document. Write the figures and tables after that div.

### 4.4 Check the rendered layout

Captions, page breaks, and figure placement are properties of the rendered document’s layout. Problems with them are easy to miss when reading the source, and a check of the text and numbers alone will not catch them. Before calling a rendered manuscript reviewed, page through the PDF or Word output and check its layout, not only its text and numbers:

- Does every figure and table have a numbered caption?
- Does each caption sit on the same page as its figure or table?
- For a journal submission, do the main-text figures and tables come after the references and before the supplement, and does the supplementary material start on a new page?

## 5 Subsection headings

Use descriptive subsection headings to guide readers through your results. Headings should clearly indicate the content of each section.

**Poor heading**: “Analysis 1”

**Better heading**: “Association between treatment and mortality”

**Best heading**: “Treatment reduced mortality by 30%” (when appropriate and not overstating findings)

## 6 Avoid forward references

A forward reference points the reader to content they have not reached yet. Common forms are:

- “as discussed below”
- “see the next section”
- “we will return to this later”
- a technical term or result used before the definition or theorem that introduces it

The reader must hold an unresolved pointer while reading the sentence that depends on it.

Fix a forward reference by moving the content ahead of the pointer, so that each definition or result precedes the sentences that use it. Then change “below” to “above”, or delete the directional word. Do not fix a forward reference by removing the hyperlink to the later definition or theorem while leaving the term in the sentence: the sentence still uses a concept the reader has not encountered, and the reader also loses the link to its definition.

If moving the content would break the order of the argument, keep the pointer, and make it a working link. Say what the link points to and where it is, as in “Table 2 (later in this section)”, with “Table 2” linked to the table. Do not delete the link and leave only the name. The reader then loses both the warning and the jump.

> **NOTE:**
>
> **Example 2 (Removing a forward reference)**  
>
> > ❌ The adjusted estimates, discussed in the next section, differ from the crude estimates. The adjustment, described below, uses age and sex.
> >
> > ✅ The adjustment uses age and sex. The adjusted estimates differ from the crude estimates.
>
> In the ❌ version, both pointers send the reader to content that comes later, so the reader sees “adjusted” before the paper says what was adjusted. In the ✅ version, the sentence that defines the adjustment comes first, so neither pointer is needed.

Two cases are not forward references to fix:

- An overview near the start that previews the structure, such as “Section 2 describes the data, and Section 3 gives the results”. The reader is not meant to resolve the preview immediately.
- A sentence that names a figure or table placed beside it, such as “Table 2 shows the estimates”. The reader encounters the table at once.

A word such as “below” in an ordinary comparison, as in “values below the detection limit”, is not a pointer at all.

When you insert or move a section, check the references that name a position, such as “the two sections above” or “the previous section”. Name the target instead, as in “the sections on mortality and morbidity”, so that a later insertion does not make the position wrong.

## 7 Links to videos and other media

Put each link to a video, podcast, demo or other external material in a short note right after the text the material supports. Do not collect the links in a list at the end of the document. If the material covers several sections, put the note after the first section the material supports. If the text the note supports is a question followed by its answer, put the note after the answer, not between them.

A reader who has just finished a section is ready to use material about it. The same reader at the end of the document must guess which link goes with which section, and may never reach the list.

For each link:

- Write one line, such as “Video: Weinberger derives the descent direction (from 3:09).”
- Name the speaker and say what the material shows, in simple, literal words.
- Link the exact start time when the material covers more than the topic.
- Cite the source.

Link public sites freely. Anyone can open them, so a link costs the reader nothing. Do not link private repositories, such as ones that hold graded homework or exams.

Back to top

## References

Lamport, Leslie. 2019. *Think and Write with Leslie Lamport*. Podcast interview, Mentors.fm. <https://mentors.fm/2019/08/13/think-and-write-with-leslie-lamport/>.
