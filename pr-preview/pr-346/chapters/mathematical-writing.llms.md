# Writing mathematics in sentences

Code

Published

Last modified: 2026-10-24 21:57:37 (PDT)

> **NOTE:**
>
> This chapter was written with the assistance of GitHub Copilot, which expanded on outlined ideas and draft notes provided by the author. The content represents the author’s perspective and has been reviewed for accuracy, but the detailed prose was generated through AI assistance.

A mathematical paper is made of sentences, and the formulas are part of the sentences. This chapter collects rules for fitting formulas into prose. It draws on the lecture notes of a Stanford course on mathematical writing ([Knuth et al. 1987](#ref-knuth1987mathematical)). This chapter selects the rules that bear most on formulas. Several of the course’s other rules appear in other chapters, and [Table 1](#tbl-knuth-elsewhere) points to them. The notes also cover spelling, punctuation and refereeing, which this book does not.

## 1 Keep formulas inside sentences

Readers meet a formula as part of a sentence, so the words around it decide whether the formula can be read.

### 1.1 Separate formulas with words

Put words between two formulas. Without them, the reader cannot tell where one formula ends and the next begins.

> **NOTE:**
>
> **Example 1 (Separating two formulas)**  
>
> > ❌ Define \\f_k\\, \\k \ge 2\\.
> >
> > ✅ Define \\f_k\\, where \\k \ge 2\\.
>
> In the ❌ version the comma between the two formulas reads as part of the first one. The ✅ version names the relation between them.

### 1.2 Do not start a sentence with a symbol

A sentence that starts with a symbol is hard to see as a new sentence, because the formula runs on from the period before it. Start with a word, such as the name of the object.

> **NOTE:**
>
> **Example 2 (Starting a sentence with a word)**  
>
> > ❌ \\t^2 - 5\\ has two real roots.
> >
> > ✅ The polynomial \\t^2 - 5\\ has two real roots.

### 1.3 Write logical symbols as words

In prose, write “implies”, “for every” and “there exists”, not \\\Rightarrow\\, \\\forall\\ and \\\exists\\. The same goes for the symbols for “therefore” and “such that”. Keep the symbols in a work on logic.

### 1.4 Test the sentence with the formulas removed

Many readers skim past the formulas on a first reading. Replace each formula by a placeholder such as “blah”. If the sentence no longer reads smoothly, rewrite it.

### 1.5 Tie formulas together with commentary

A list of formulas with no words between them is the style of a homework paper. Say what each step does and why the next one follows. A sentence such as “Because the set \\S\\ has an element, we can pick one and call it \\s\\” tells the reader where the argument is going, and the bare formula does not.

### 1.6 Make the prose say what the formula says

The sentence that introduces or interprets a formula must describe that formula. Check every term in the sentence against the formula, symbol by symbol. The words and the symbols must name the same quantity, the same data, and the same kind of average. When you change one, change the other in the same edit.

> **NOTE:**
>
> **Example 3 (A sentence that names the wrong average)** Suppose the formula is \\\E{\paren{\newoutvar - \predvalf{\predvar}}^2}\\, a population mean at one covariate value \\\predvar\\. The sentence “the average squared error over the training set” does not describe it. It names a sample average over many observations. Write “the expected squared prediction error at \\\predvar\\” instead.

Before you submit, reread each formula next to the sentence that describes it. Do the same after every edit to either one. Related rules cover [using one notation for one thing](../chapters/notation.llms.md#matching-names-and-notation) and [defining every variable when you introduce it](../chapters/defining-terms.llms.md#guidelines-for-defining-terms).

## 2 Introduce a theorem with a sentence

The line before a theorem, lemma or algorithm should be a complete sentence, or end with a colon. Do not let a heading such as “Theorem” finish a sentence that began above it.

> **NOTE:**
>
> **Example 4 (Introducing a theorem)**  
>
> > ❌ This gives the following **Theorem.** \\G(x)\\ is increasing.
> >
> > ✅ Next we prove a result about monotonicity. **Theorem.** The function \\G(x)\\ defined in equation (3) is increasing.
>
> The ❌ version breaks a sentence across the theorem and starts the theorem with a symbol. The ✅ version uses a complete sentence, and the theorem names its object.

Write the statement of a theorem so that it stands alone. A reader who jumps to the theorem should not need the assumptions in the paragraph before it, so repeat them in the statement.

## 3 Display and number the formulas that matter

Put each important formula on a line by itself. Number the important ones, even if you do not refer to them, because a reader may want to refer to them later. Quarto’s [equation cross-references](https://quarto.org/docs/authoring/cross-references.html#equations) number a display and let you link to it.

## 4 Write numbers according to how they are used

Spell out a small number when it is an adjective: “the proof uses three lemmas”. Write the numeral when the number is a name or a value: “Lemma 3 is used 12 times”, “the total rose by 4”. Capitalize the name of a numbered result, as in “Theorem 1” and “Lemma 2”.

## 5 Keep subscripts under control

Do not name the elements of a set unless you need to. If you write “Let \\X = \\x_1, \dots, x_n\\\\”, you will need \\x\_{i_1}, \dots, x\_{i_m}\\ as soon as you take a subset of \\X\\. A subscript on a subscript is hard to read. Write “an element \\x\\ of \\X\\” instead, and refer to \\x\\ and \\y\\ for two elements. Use \\x_1\\ and \\x_2\\ only when you need two specified elements.

## 6 Choose the voice and the person

Use “we” to mean the author and the reader together, as in “we can now prove”. Write “we prove”, not the passive “it can be proved”. Avoid “I” unless the author’s persona is relevant.

Write “assume that \\G\\ is finite”, not “assume \\G\\ is finite”. The word “that” helps the reader parse the sentence. Do not write “we have that \\y = z\\”; write “we have \\y = z\\”.

## 7 Choose the proof that fits the claim

Do not use proof by contradiction where a direct proof will do. The course’s worked example proves a lemma both ways. The direct proof is shorter, and it does not assume that the entries are integers or restate their ordering.

## 8 Rules that other chapters cover

[Table 1](#tbl-knuth-elsewhere) lists the course’s other rules and where this book discusses them.

| Rule | Where it appears |
|----|----|
| Define every variable when you introduce it | [Defining terms](../chapters/defining-terms.llms.md#guidelines-for-defining-terms) |
| Use one notation for one thing, and one thing for each notation | [Mathematical notation](../chapters/notation.llms.md#matching-names-and-notation) |
| Motivate a result before you derive it | [Show why you need a result before you derive it](../chapters/notation.llms.md#show-why-you-need-a-result-before-you-derive-it) |
| Avoid strings of nouns used as adjectives | [Rewrite noun strings and hidden verbs](../chapters/inclusive-writing.llms.md#rewrite-noun-strings-and-hidden-verbs) |
| Avoid unnecessary jargon | [Minimize unnecessary jargon](../chapters/word-choice.llms.md#minimize-unnecessary-jargon) |
| Write sentences that can be read from left to right without ambiguity | [Avoid garden-path sentences](../chapters/grammar.llms.md#avoid-garden-path-sentences) |
| Use “that” instead of “which” in a restrictive clause | [Relative pronouns](../chapters/grammar.llms.md#relative-pronouns) |
| Do not praise your own work | [Tone](../chapters/avoid-cliches.llms.md#tone) |

Table 1: Rules from the course that other chapters of this book cover

Back to top

## References

Knuth, Donald E., Tracy Larrabee, and Paul M. Roberts. 1987. *Mathematical Writing*. <https://jmlr.csail.mit.edu/reviewing-papers/knuth_mathematical_writing.pdf>.
