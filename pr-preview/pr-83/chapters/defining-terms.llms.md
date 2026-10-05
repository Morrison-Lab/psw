# Defining terms clearly

Code

Published

Last modified: 2026-10-05 09:46:06 (UTC)

Clear definitions are essential to effective scientific writing. Every specialized term should have an explicit, concise definition immediately before or after its first use. Readers should not need to search for the meaning of a term or infer it from context alone. For example:

> **NOTE:**
>
> **Definition 1 (Term)** A *term* is a word or phrase with a specific, technical meaning within a particular field or context.

> **NOTE:**
>
> **Definition 2 (Population)** In statistics, a *population* is the complete set of all items or individuals of interest.

> **NOTE:**
>
> *Remark 1* (Population is not only geographic). In everyday use, “population” usually means the people living in a place. The statistical sense in [Definition 2](#def-population) is broader: a population can be all the patients with a condition, all the batches a factory produces, or any other set of items of interest.

## 1 Guidelines for defining terms

Follow these principles when introducing new terms:

- **Provide explicit definitions:** State clearly what a term means, rather than assuming readers will understand from context.

- **Be concise:** Definitions should be brief and focused, using only the words necessary to convey the meaning. A definition block holds the defining statement and nothing else: no examples, special cases, motivation or caveats.

- **State technical definitions and results in both prose and a display equation:** Give a quantitative term, or a theorem or corollary, a one-sentence prose statement and the formula it stands for as a display equation, in the same definition or theorem block; together the sentence and the formula are the statement. A formula left inline in the sentence is easy to miss and hard for later derivations to point to. The prose tells the reader what the quantity means; the formula makes it exact and lets later derivations cite it. For example, define the ordinary least squares estimate of a parameter vector \\\vec{\theta}\\ as “the value of \\\vec{\theta}\\ that minimizes the [residual sum of squares](#def-rss)” *and* as

  \\\hat{\vec{\theta}} := \arg\min\_{\vec{\theta}} \text{RSS}(\vec{\theta}),\\

  not with only one of the two. Build the formula from terms already defined, rather than expanding them again: once the residual and total sums of squares are defined, write

  \\R^2 := 1 - \frac{\text{RSS}}{\text{TSS}},\\

  not the two sums that RSS and TSS stand for.

- **Define a statistical model by its distribution, and derive its other forms:** Define a regression model by the distribution of the outcome conditional on the covariates, centered on a named mean function. For example, define simple linear regression as \\Y_i \mid X_i = x_i \sim \text{N}(\mu_i, \sigma^2)\\, independently, with \\\mu_i := \mu(x_i)\\ and \\\mu(x) := \beta_0 + \beta_x x\\. Then define the deviation \\\varepsilon_i := Y_i - \mu(x_i)\\, and state \\Y_i = \mu_i + \varepsilon_i\\ with \\\varepsilon_i \mid X_i = x_i \sim \text{N}(0, \sigma^2)\\ as a result proved from those definitions. Writing the model as “\\Y_i = \beta_0 + \beta_x x_i + \varepsilon_i\\ with Gaussian errors” makes the definition rest on a quantity that has not been defined yet, and hides that the model is a statement about the outcome’s distribution.

- **Define in the most general form the document needs:** State the concept at the level of generality the rest of the document relies on, not just for the first case the reader meets. For example, define the residual sum of squares as the sum of squared residuals of any fitted model, not as a formula for a straight line. A definition tied to one special case has to be restated, or silently stretched, the first time the document needs the general case.

- **Follow the definition with examples, from general to specific:** Put each special case in its own example block right after the definition, ordered from the most general to the most specific, each linking back to the definition or to the example it specializes (see [Order: general definition, then examples](#order-general-definition-then-examples)).

- **Define terms at first use:** Place the definition immediately before or after the term’s first appearance.

- **Provide examples:** Every definition should include at least one concrete example that illustrates how the term is used.

- **Give each term its own definition block:** In a Quarto document, put every definition in its own `#def-` div (see [Using theorem environments in Quarto](#using-theorem-environments-in-quarto)), one term per div, with commentary after the div rather than inside it, in a remark block (`#rem-`) when it is about the concept. Never nest one theorem-type block (any of the prefixes listed in [Using theorem environments in Quarto](#using-theorem-environments-in-quarto), such as `#def-`, `#exm-`, `#exr-`, `#sol-` or `#rem-`) inside another; give each its own div, in order. A bolded term in running prose is usually an inline definition that belongs in a div, including a term defined in passing.

- **Name the synonyms:** When a field uses several words for one concept, such as *learning*, *training* and *fitting* a model, list them in the definition block, or in a callout beside it, and say which one the document uses. Name near-synonyms there too, and state how they differ. A reader who meets the other words in another source can then connect them to the concept already learned (see [Minimize unnecessary jargon](../chapters/word-choice.llms.md#minimize-unnecessary-jargon)).

## 2 Examples of term definitions

Here are examples of well-defined terms:

> **NOTE:**
>
> **Definition 3 (Confidence interval)** A *confidence interval* with confidence level \\1 - \alpha\\ for a parameter \\\theta\\ is an interval \\\[L, U\]\\ computed from a sample that contains \\\theta\\ with probability \\1 - \alpha\\ over repeated samples:
>
> \\\Pr(\theta \in \[L, U\]) = 1 - \alpha.\\

> **NOTE:**
>
> **Example 1 (A confidence interval for mean height)** If we calculate a 95% confidence interval ([Definition 3](#def-confidence-interval)) for mean height as \[165 cm, 175 cm\], we are 95% confident that the true population mean height falls within this range.

> **NOTE:**
>
> **Definition 4 (Active voice)** *Active voice* is a sentence structure where the subject performs the action expressed by the verb.

> **NOTE:**
>
> **Example 2 (Active and passive voice)** “The researcher conducted the experiment” is in active voice ([Definition 4](#def-active-voice)), while “The experiment was conducted by the researcher” is in passive voice.

## 3 Order: general definition, then examples

When a concept has special cases, write the general definition first and compactly, then one example block per special case, ordered from the most general to the most specific. Put any commentary in a remark block after them. For example, a statistics text that defines the residual sum of squares would give these blocks, in this order:

> **NOTE:**
>
> **Definition 5 (Residual sum of squares)** The *residual sum of squares* of a model fitted to data is the sum of its squared residuals:
>
> \\\text{RSS} = \sum\_{i=1}^n r_i^2.\\

> **NOTE:**
>
> **Example 3 (Residual sum of squares of a straight line)** For a straight line with intercept \\\beta_0\\ and slope \\\beta_x\\, the fitted value of observation \\i\\ is \\\beta_0 + \beta_x x_i\\, so the residual sum of squares ([Definition 5](#def-rss)) is a function of the two coefficients: \\\text{RSS}(\beta_0, \beta_x) = \sum\_{i=1}^n (y_i - \beta_0 - \beta_x x_i)^2\\.

> **NOTE:**
>
> **Example 4 (Residual sum of squares of a line through three points)** For the points \\(0, 1)\\, \\(1, 2)\\, \\(2, 2)\\ and the line with \\\beta_0 = 1\\ and \\\beta_x = 0.5\\ ([Example 3](#exm-rss-line)), the residuals are \\0\\, \\0.5\\ and \\0\\, so \\\text{RSS}(1, 0.5) = 0.25\\.

The definition stays one sentence and one equation, so it still applies when the document later fits a model that is not a line. The line is a special case, so it is an example, and the numerical case is a special case of the line, so it comes last.

## 4 Why examples matter

Examples serve several crucial purposes:

- **Concrete understanding:** Examples transform abstract concepts into tangible instances that readers can visualize and understand.

- **Verification:** Readers can work through examples themselves to verify they understand the definition or theorem.

- **Application:** Examples show how to apply definitions and theorems to solve real problems.

- **Memory:** Concrete examples are easier to remember than abstract definitions alone.

## 5 Common pitfalls to avoid

- **Circular definitions:** Do not define a term using the term itself.

  **Incorrect:** “Conciseness is the quality of being concise.”

  **Correct:** “Conciseness is the quality of expressing ideas using only the words necessary to communicate meaning clearly.”

- **Vague definitions:** Avoid definitions that rely on imprecise language.

  **Incorrect:** “A variable is something that can change.”

  **Correct:** “A variable is a symbol representing a value that can take on different values.”

- **Missing examples:** Never leave a definition without at least one example.

- **Examples without context:** Ensure examples clearly illustrate the specific aspect of the definition they are meant to demonstrate.

## 6 Mathematical statements require examples

Mathematical theorems, lemmas, corollaries, and postulates should always include examples that demonstrate their application. Abstract mathematical statements become more accessible when readers can see concrete instances.

### 6.1 Using theorem environments in Quarto

When writing mathematical or technical content in Quarto, use theorem environments to demarcate and highlight the structure of your content. These environments provide consistent formatting, automatic numbering, and cross-reference capabilities.

Quarto provides built-in theorem environments including:

- `#thm-` for theorems
- `#lem-` for lemmas
- `#cor-` for corollaries
- `#prp-` for propositions
- `#cnj-` for conjectures
- `#def-` for definitions
- `#exm-` for examples
- `#exr-` for exercises
- `#sol-` for solutions, named after their exercise (`#exr-foo` and `#sol-foo`)
- `#rem-` for remarks

See the [Quarto documentation on theorems and proofs](https://quarto.org/docs/authoring/cross-references.html#theorems-and-proofs) for complete details.

**Example syntax:**

``` markdown
::: {#thm-pythagorean}

## Pythagorean theorem

In a right triangle,
the square of the hypotenuse equals the sum of squares of the other two sides:

$$a^2 + b^2 = c^2.$$

:::
```

This produces automatically numbered output like “Theorem 2.1 (Pythagorean theorem)” and can be referenced elsewhere in your document using `@thm-pythagorean`.

### 6.2 Example: Pythagorean theorem

> **NOTE:**
>
> **Theorem 1 (Pythagorean theorem)** In a right triangle, the square of the hypotenuse equals the sum of squares of the other two sides:
>
> \\a^2 + b^2 = c^2.\\

> **NOTE:**
>
> **Example 5 (Pythagorean theorem example)** For a triangle with sides 3, 4, and 5: \\3^2 + 4^2 = 9 + 16 = 25 = 5^2\\.

> **NOTE:**
>
> **Definition 6 (Postulate (axiom))** A *postulate* (or axiom) is a statement accepted as true without proof, serving as a starting point for further reasoning.

> **NOTE:**
>
> **Example 6 (Euclid’s parallel postulate)** Through a point not on a line, exactly one line can be drawn parallel to the given line.
>
> If we have line \\L\\ and point \\P\\ not on \\L\\, only one line through \\P\\ will never intersect \\L\\.

## 7 Presenting a derivation: exercise, solution, theorem, proof

In teaching material, present a derivation as one or more exercises, each followed by its solution, then the theorem that records the result, with a short proof that cites the exercises. The reader meets the question before the answer, can try each step before reading it, and can find the result itself without searching through the working.

Follow these principles:

- **One exercise per step.** Split a long derivation into exercises a reader can attempt one at a time, such as each partial derivative, then solving the resulting equations, then checking the second derivative.
- **The solution follows its exercise.** Put each solution directly after its exercise, and give it an id named after the exercise (`#exr-foo` and `#sol-foo`), so a reader who wants to check one step can find its working.
- **The theorem states the result; the proof cites the exercises.** The theorem gives the result in prose and as a display equation. Its proof is a few sentences that cite the exercises it rests on, not a second copy of their working.
- **Define notation first.** Introduce any notation the exercises use in its own definition before them, not inside the theorem that follows them.
- **One operation per line.** Inside each solution, write every displayed line with a single operation and its justification (see [One operation per step](../chapters/notation.llms.md#one-operation-per-step)).
- **One result per theorem.** Give each theorem, corollary or lemma block a single result, with its own exercise and proof. Two results joined by a semicolon, or set side by side in one display equation, usually belong in two blocks: each can then be cited on its own, and each proof cites only the exercise it rests on.
- **Start from the side that simplifies.** When a derivation would add and subtract a term to turn one side into the other, start from the other side instead. Simplifying an expression needs only definitions and algebra, while adding and subtracting a term asks the reader to accept a step whose purpose shows only later. Another route is to solve a definition for the term you want: add \\\mu_i\\ to both sides of \\\varepsilon_i = Y_i - \mu_i\\, then simplify the right-hand side to \\Y_i\\, one operation per line. Adding a term to both sides of an equation is an ordinary step, not the pattern to avoid.

> **NOTE:**
>
> **Definition 7 (Sample mean)** The *sample mean* of numbers \\x_1, \ldots, x_n\\ is their average:
>
> \\\bar{x} := \frac{1}{n} \sum\_{i=1}^n x_i.\\

> **NOTE:**
>
> **Exercise 1 (Deviations from the mean)** Show that \\\sum\_{i=1}^n (x_i - \bar{x}) = 0\\, where \\\bar{x}\\ is the sample mean ([Definition 7](#def-sample-mean)).

> **NOTE:**
>
> *Solution 1*. \\ \begin{aligned} \sum\_{i=1}^n (x_i - \bar{x}) &= \sum\_{i=1}^n x_i - \sum\_{i=1}^n \bar{x} && \text{(split the sum)}\\ &= \sum\_{i=1}^n x_i - n \bar{x} && \text{(sum of a constant)}\\ &= n \bar{x} - n \bar{x} && \text{(}\sum\_{i} x_i = n \bar{x}\text{, by the definition of } \bar{x}\text{)}\\ &= 0 && \text{(subtract)} \end{aligned} \\

> **NOTE:**
>
> **Theorem 2 (Deviations from the mean sum to zero)** The deviations of numbers \\x_1, \ldots, x_n\\ from their sample mean \\\bar{x}\\ ([Definition 7](#def-sample-mean)) sum to zero:
>
> \\\sum\_{i=1}^n (x_i - \bar{x}) = 0.\\

> **NOTE:**
>
> *Proof*. [Exercise 1](#exr-sum-deviations) derives this result.

> **NOTE:**
>
> **Example 7 (Deriving an equality from the side that simplifies)** Suppose an outcome \\Y_i\\ has mean \\\mu_i\\ and deviation \\\varepsilon_i := Y_i - \mu_i\\, and a derivation needs \\Y_i = \mu_i + \varepsilon_i\\.
>
> > ❌ \\ \begin{aligned} Y_i &= Y_i - \mu_i + \mu_i && \text{(add and subtract } \mu_i\text{)}\\ &= \varepsilon_i + \mu_i && \text{(definition of } \varepsilon_i\text{)}\\ &= \mu_i + \varepsilon_i && \text{(reorder the terms)} \end{aligned} \\
> >
> > ✅ \\ \begin{aligned} \mu_i + \varepsilon_i &= \mu_i + (Y_i - \mu_i) && \text{(definition of } \varepsilon_i\text{)}\\ &= \mu_i + Y_i - \mu_i && \text{(remove the parentheses)}\\ &= Y_i + \mu_i - \mu_i && \text{(reorder the terms)}\\ &= Y_i + (\mu_i - \mu_i) && \text{(group the last two terms)}\\ &= Y_i + 0 && \text{(} a - a = 0\text{)}\\ &= Y_i && \text{(} a + 0 = a\text{)} \end{aligned} \\
>
> The ❌ version’s first line adds a term the reader has no reason to expect. The ✅ version starts from \\\mu_i + \varepsilon_i\\, which a definition expands, and every line after that rewrites or simplifies what is already there. The ✅ version is longer because it gives a line to each step that a single “cancel” justification would hide (see [One operation per step](../chapters/notation.llms.md#one-operation-per-step)).

> **NOTE:**
>
> **Example 8 (Splitting a theorem that states two results)**  
>
> > ❌ **Theorem.** Each outcome is its mean plus its deviation; given the covariates, each deviation is Gaussian with mean 0: \\Y_i = \mu_i + \varepsilon_i, \qquad \varepsilon_i \mid X_i = x_i \sim \text{N}(0, \sigma^2).\\
> >
> > ✅ **Theorem 1.** Each outcome is its mean plus its deviation: \\Y_i = \mu_i + \varepsilon_i.\\
> >
> > **Theorem 2.** Given the covariates, each deviation is Gaussian with mean 0: \\\varepsilon_i \mid X_i = x_i \sim \text{N}(0, \sigma^2).\\
>
> The first result is algebra from the definition of \\\varepsilon_i\\; the second needs the model’s distribution. In separate blocks, each gets the proof it needs, and a later step that uses only the first can cite only the first.

Back to top
