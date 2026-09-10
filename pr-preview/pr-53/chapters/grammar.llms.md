# Grammar

Code

Published

Last modified: 2026-09-10 21:52:04 (UTC)

> **NOTE:**
>
> This chapter was written with the assistance of GitHub Copilot, which expanded on outlined ideas and draft notes provided by the author. The content represents the author’s perspective and has been reviewed for accuracy, but the detailed prose was generated through AI assistance.

Clear grammar removes friction between your ideas and your reader. This chapter collects a few grammatical habits that consistently make scientific writing easier to read.

## 1 Relative pronouns

Relative pronouns introduce a clause that describes a preceding noun. The relative pronouns are:

- *that*
- *which*
- *who*
- *whom*
- *whose*

Two habits make these clauses easier to read: choosing between *that* and *which* correctly, and keeping the relative pronoun rather than dropping it.

### 1.1 Restrictive vs. non-restrictive clauses: *that* vs. *which*

Use *that* for a **restrictive** clause — one that identifies which thing you mean, and that cannot be removed without changing the meaning of the sentence. Use *which*, set off by commas, for a **non-restrictive** clause — one that adds information the reader does not need in order to know which thing you mean.

> **NOTE:**
>
> **Example 1 (Restrictive clause (*that*))**  
>
> > The dataset **that** we collected in 2023 contains 4,000 records.
>
> The clause “that we collected in 2023” tells the reader which dataset we mean. Removing it changes the meaning, so the clause is restrictive and takes *that* with no comma.

> **NOTE:**
>
> **Example 2 (Non-restrictive clause (*which*))**  
>
> > Our 2023 dataset, **which** contains 4,000 records, is publicly available.
>
> The clause “which contains 4,000 records” adds a detail, but the reader already knows which dataset we mean. The clause is non-restrictive, so it takes *which* and is set off by commas.

A quick test: if you can drop the clause without changing which thing you are describing, use *which* and commas; otherwise, use *that*.

### 1.2 Do not omit relative pronouns

English lets you drop a relative pronoun in some sentences, but keeping it makes the structure of the sentence explicit and easier to parse on the first read. Prefer to keep *that*, *which*, or *who*, even when the grammar would let you drop it.

> **NOTE:**
>
> **Example 3 (Restoring an omitted relative pronoun)**  
>
> > ❌ This body of work laid the methodological groundwork I now apply to enteric fever.
> >
> > ✅ This body of work laid the methodological groundwork **that** I now apply to enteric fever.
>
> The word “that” signals immediately that a describing clause is beginning, so the reader does not briefly misread “the methodological groundwork I” as a single phrase and then have to backtrack.

## 2 Demonstrative pronouns

There are four demonstrative words:

- *this*
- *that*
- *these*
- *those*

They can serve two roles. As adjectives, they modify a noun: “**this** result”, “**those** samples”. As standalone pronouns, they replace a noun: “**This** shows…”, “**That** means…”.

When a demonstrative stands alone as a pronoun, the reader has to search backward for its referent — and often the referent is a whole preceding clause rather than a single noun, which leaves the reference ambiguous. Prefer to follow a demonstrative with the noun it points to, so the reference is explicit.

> **NOTE:**
>
> **Example 4 (Naming the referent)**  
>
> > ❌ The model overfit the training data. **This** poses a problem for deployment.
> >
> > ✅ The model overfit the training data. **This overfitting** poses a problem for deployment.
>
> Adding the noun “overfitting” states exactly what “this” refers to, instead of leaving the reader to infer it.

Back to top
