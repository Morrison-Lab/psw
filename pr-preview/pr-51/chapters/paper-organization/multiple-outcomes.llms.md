# 

Code

Published

Last modified: 2026-09-10 20:26:40 (UTC)

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

Back to top
