# Grammar

Code

Published

Last modified: 2026-10-05 19:16:46 (UTC)

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

When a demonstrative stands alone as a pronoun, the reader has to search backward for its referent — and often the referent is a whole preceding clause rather than a single noun, which leaves the reference ambiguous. Prefer to follow a demonstrative with the noun it points to, so the reference is explicit. The adverbs *here* and *there* point the same way: “getting there” leaves the reader to guess where “there” is.

A demonstrative at the end of a sentence has no room after it for a naming noun, so a bare sentence-final *this* or *that* always leaves its referent unnamed. End the sentence with the noun instead.

> **NOTE:**
>
> **Example 4 (Naming the referent)**  
>
> > ❌ The model overfit the training data. **This** poses a problem for deployment.
> >
> > ✅ The model overfit the training data. **This overfitting** poses a problem for deployment.
> >
> > ❌ The first model’s estimates were biased upward. The second model avoids **this**.
> >
> > ✅ The first model’s estimates were biased upward. The second model avoids **this bias**.
>
> Adding the nouns “overfitting” and “bias” states exactly what each “this” refers to, instead of leaving the reader to infer it. The second pair ends its sentence with the demonstrative, so the fix has to add the noun after it, at the very end.

## 3 Quantifiers used as pronouns

Words that say how many, or how much, of something cause the same problem as demonstratives when they stand alone in place of a noun. Grammars call these words *quantifiers*, and call a quantifier that stands alone an *indefinite pronoun*. The common ones are:

- *both*
- *all* (and counted forms such as *all three*)
- *each*
- *any*
- *some*
- *most*
- *many*
- *few*
- *none*

*Every* belongs to the same family, but it cannot stand alone (“every” needs a noun, as in “every model”), so it never causes this problem.

You do not need a complete list of quantifiers to apply the advice. Whenever a quantifier stands where a noun should be, the reader has to search backward to find out what it quantifies. Follow the quantifier with the noun: “**both models**”, “**all three estimators**”, “**each interval**”. An “of” phrase that names the noun works too: “**none of the intervals**”.

> **NOTE:**
>
> **Example 5 (Naming what a quantifier refers to)**  
>
> > ❌ We fit a linear model and a spline model to the 2019 and 2020 surveys. **Both** return the same fit.
> >
> > ✅ We fit a linear model and a spline model to the 2019 and 2020 surveys. **Both models** return the same fit.
>
> In the first version, “both” could mean the two models or the two surveys. Adding “models” settles which pair the sentence is about.

## 4 Avoid garden-path sentences

A *garden-path sentence* leads the reader into one reading and then forces them to go back and reread when the rest of the sentence does not fit ([Wikipedia: Garden-path sentence](https://en.wikipedia.org/wiki/Garden-path_sentence)). The sentence may be grammatical, but the reader parses it twice.

A common cause of garden-path sentences in technical writing is a clause that describes a noun but has lost its opening *that* or *that were*. Without the pronoun, the reader takes the noun and the start of the clause as one phrase and has to reattach the words that follow. [Do not omit relative pronouns](#do-not-omit-relative-pronouns) gives the general rule.

When you reread a sentence and stumble, find the point where your first reading went wrong, and rewrite the sentence so that the first reading is the right one.

> **NOTE:**
>
> **Example 6 (Rewriting a garden-path sentence)**  
>
> > ❌ Report only SHAs a command you ran printed in full.
> >
> > ✅ Report only SHAs that appeared in full in the output of a command that you ran.
>
> In the first version, the reader takes “SHAs a command you ran” as one phrase, then reaches “printed” and has to work out that “a command you ran printed in full” is a clause describing the SHAs. The rewrite marks the clause with “that” and keeps each verb next to its own subject.

## 5 Name the object of a relational noun

Some nouns name a relation, so they are incomplete without the thing they relate to. Relational nouns include:

- *cause* (of what?)
- *effect* (of what, on what?)
- *reason* (for what?)
- *result* (of what?)
- *example* (of what?)

When one of these nouns appears without its “of” or “for” phrase, the reader has to recover the missing object from context, just as with a pronoun that has no clear referent. Write the object next to the noun.

> **NOTE:**
>
> **Example 7 (Comparing four versions of one sentence)** Each version tries to say what usually causes garden-path sentences.
>
> > 1.  A common cause in technical writing is a clause that describes a noun but has lost its opening *that* or *that were*.
> > 2.  In technical writing, a common cause is a clause that describes a noun but has lost its opening *that* or *that were*.
> > 3.  In technical writing, a common cause of garden-path parsing is a clause that describes a noun but has lost its opening *that* or *that were*.
> > 4.  A common cause of garden-path sentences in technical writing is a clause that describes a noun but has lost its opening *that* or *that were*.
>
> Versions 1 and 2 never say what the clause causes, so the reader has to look back to find what “cause” refers to. Version 3 names the object, “garden-path parsing”, but its fronted phrase delays the subject (see [Lead with the subject](../chapters/conciseness.llms.md#lead-with-the-subject)), and “garden-path parsing” introduces a second term for the “garden-path sentences” that the section defines. Version 4 names the object, uses the defined term, and starts with the subject.

Back to top
