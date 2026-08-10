# Paper organization

Code

Published

Last modified: 2026-08-10 03:56:09 (UTC)

Effective organization helps readers navigate your scientific paper and understand your findings. The structure of your paper should guide readers logically from your research question through your methods to your results and conclusions.

## 1 Standard paper structure

Most scientific papers follow the IMRaD structure:

- **Introduction**: Present the research question and background
- **Methods**: Describe how the study was conducted
- **Results**: Present the findings
- **Discussion**: Interpret the findings and their implications

Some papers combine Results and Discussion into a single section.

## 2 Organizing the Results section

The Results section presents your findings clearly and logically. How you organize this section depends on your research design and the complexity of your analyses.

### 2.1 Single outcome studies

When analyzing a single primary outcome, organize results by:

- Descriptive statistics first
- Main analysis results
- Sensitivity analyses or subgroup analyses

### 2.2 Multiple outcomes analyzed separately

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

If your descriptive statistics apply to all outcomes (e.g., baseline characteristics in a clinical trial), present them once at the beginning before discussing individual outcomes.

## 3 Figures and tables

Place figures and tables near the relevant text that describes them. Number them sequentially and reference them in the text before they appear.

Each figure and table should have a clear, informative caption that allows readers to understand it without reading the main text.

## 4 Subsection headings

Use descriptive subsection headings to guide readers through your results. Headings should clearly indicate the content of each section.

**Poor heading**: “Analysis 1”

**Better heading**: “Association between treatment and mortality”

**Best heading**: “Treatment reduced mortality by 30%” (when appropriate and not overstating findings)

Back to top
