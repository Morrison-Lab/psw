# Mathematical notation

Code

Published

Last modified: 2026-10-08 20:33:31 (UTC)

> **NOTE:**
>
> This chapter was written with the assistance of GitHub Copilot, which expanded on outlined ideas and draft notes provided by the author. The content represents the author’s perspective and has been reviewed for accuracy, but the detailed prose was generated through AI assistance.

Notation is part of your prose, and readers parse it the same way they parse a sentence. This chapter collects notational habits that make quantitative writing easier to read.

## 1 Avoiding double inequalities

A *double inequality* (or *chained inequality*) places one quantity between two others, as in \\a \< x \< b\\. Prefer interval notation instead: \\x \in (a, b)\\.

Interval notation is easier to read for three reasons:

- It states one relation instead of two, so the reader parses a single claim rather than combining a pair of them.
- It names the set you actually mean, so the same expression can be reused as a domain, a constraint, or the argument of a quantifier.
- It marks inclusive and exclusive endpoints with brackets and parentheses, which are easier to distinguish at a glance than \\\le\\ and \\\<\\.

> **NOTE:**
>
> **Example 1 (Rewriting a double inequality)**  
>
> > ❌ Suppose \\0 \le p \le 1\\ and \\0 \< \sigma \< \infty\\.
> >
> > ✅ Suppose \\p \in \[0, 1\]\\ and \\\sigma \in (0, \infty)\\.
>
> The rewrite makes the two constraints look alike, so the reader can compare them directly instead of checking four inequality symbols.

The same guidance applies to prose: write “for \\x \in (0, 1)\\” rather than “for \\x\\ between 0 and 1, exclusive”.

### 1.1 When the middle term is not a single symbol

Interval notation works best when the quantity being constrained is a single expression. When the middle term is complicated, naming it first keeps the constraint short.

> **NOTE:**
>
> **Example 2 (Naming the middle term)**  
>
> > ❌ \\0 \< \frac{\hat{\theta} - \theta}{\text{se}(\hat{\theta})} \< 1.96\\
> >
> > ✅ Let \\z = \dfrac{\hat{\theta} - \theta}{\text{se}(\hat{\theta})}\\; then \\z \in (0, 1.96)\\.

Finally, a chain that compares three *different* quantities — for example \\\hat{\theta}\_1 \< \hat{\theta}\_2 \< \hat{\theta}\_3\\ — is not a constraint on a single quantity, so interval notation does not apply. Write such comparisons as separate statements (\\\hat{\theta}\_1 \< \hat{\theta}\_2\\ and \\\hat{\theta}\_2 \< \hat{\theta}\_3\\) unless the ordering of all three is the point you are making.

## 2 One operation per step

Write a derivation so that each displayed line does exactly one thing to the line before it: apply one rule, substitute one result, or simplify one piece. Give each line its own justification.

Combining steps saves the writer a line and costs every reader a calculation. A reader who cannot see how one line follows from the last has to redo the missing work on scratch paper, or take the step on trust. Either way, an error hidden inside a combined step is harder for the reader, or a reviewer, to catch. The advice on [“Trivial” and “trivially”](../chapters/citations-evidence.llms.md#trivial-and-trivially) says to write out a step that takes only a line; this section applies that advice to the layout of a displayed derivation.

> **NOTE:**
>
> **Example 3 (Splitting a combined step)** Suppose a derivation has reached \\-2 \sum\_{i=1}^n (y_i - \beta_0 - \beta_x x_i)\\.
>
> > ❌ \\ \begin{aligned} -2 \sum\_{i=1}^n (y_i - \beta_0 - \beta_x x_i) &= -2 (n \bar{y} - n \beta_0 - \beta_x n \bar{x}) \end{aligned} \\
> >
> > ✅ \\ \begin{aligned} -2 \sum\_{i=1}^n (y_i - \beta_0 - \beta_x x_i) &= -2 \left(\sum\_{i=1}^n y_i - \sum\_{i=1}^n \beta_0 - \sum\_{i=1}^n \beta_x x_i\right) && \text{(split the sum)}\\ &= -2 \left(\sum\_{i=1}^n y_i - n \beta_0 - \sum\_{i=1}^n \beta_x x_i\right) && \text{(sum of a constant)}\\ &= -2 \left(\sum\_{i=1}^n y_i - n \beta_0 - \beta_x \sum\_{i=1}^n x_i\right) && \text{(constant factor out of the sum)}\\ &= -2 \left(n \bar{y} - n \beta_0 - \beta_x \sum\_{i=1}^n x_i\right) && \text{(}\sum\_{i} y_i = n \bar{y}\text{)}\\ &= -2 (n \bar{y} - n \beta_0 - \beta_x n \bar{x}) && \text{(}\sum\_{i} x_i = n \bar{x}\text{)} \end{aligned} \\
>
> The ❌ version does five operations in one line: it splits the sum, sums a constant, factors a constant out of a sum, substitutes \\n \bar{y}\\, and substitutes \\n \bar{x}\\. The ✅ version gives each of the five its own line.

Common ways to combine steps without noticing:

- applying the rule for the derivative of a sum and the chain rule in the same line;
- substituting a result and then simplifying it;
- multiplying constants and factoring them out of a sum;
- expanding a product and collecting like terms;
- canceling \\a\\ in \\a + (b - a)\\ removes the parentheses (\\a + b - a\\), reorders the terms (\\b + a - a\\), groups the two that cancel (\\b + (a - a)\\), replaces \\a - a\\ with \\0\\ (\\b + 0\\), and drops the \\+ 0\\;
- canceling \\n\\ in \\n \cdot \frac{b}{n}\\ rewrites the division as multiplication by a reciprocal (\\n \cdot (b \cdot \frac{1}{n})\\), removes the parentheses (\\n \cdot b \cdot \frac{1}{n}\\), reorders the factors (\\b \cdot n \cdot \frac{1}{n}\\), groups the two that cancel (\\b \cdot (n \cdot \frac{1}{n})\\), replaces \\n \cdot \frac{1}{n}\\ with \\1\\ (\\b \cdot 1\\), and drops the \\\cdot 1\\;
- writing “setting this to zero and dividing by \\-2n\\ gives”, which hides two operations in a sentence.

### 2.1 Using a fact the reader has not seen

When a step relies on a fact the document has not yet shown, such as deviations from a mean summing to zero, prove that fact first, in its own short derivation or exercise, and cite that proof at the step that uses the fact. Don’t leave the fact as an unexplained justification.

### 2.2 Long derivations

Splitting every step makes derivations longer. Keep them readable by breaking them into stages: derive an intermediate result in its own block, then plug that result back into the main derivation. For example, when you apply the chain rule, derive the inner derivative in a separate block before you substitute it. Naming a part of an expression that recurs in every line, such as writing \\d_i\\ for \\(y_i - \bar{y}) - \beta_x (x_i - \bar{x})\\, can also keep each line short.

## 3 Functions and their values

A function and its value at a point are different objects. In \\\mu_i = \mu(x_i)\\, \\\mu\\ is a function, and \\\mu(x_i)\\ is a number: the value of \\\mu\\ at \\x_i\\. Written with its placeholder argument, \\\mu(x)\\ already denotes a value, so “the value of \\\mu(x)\\ at \\x_i\\” reads as a value of a value. Either drop the placeholder and write “the value of \\\mu\\ at \\x_i\\”, or keep the placeholder and name the substitution: “\\\mu(x)\\ evaluated at \\x_i\\”.

> **NOTE:**
>
> **Example 4 (Saying where a function is evaluated)**  
>
> > ❌ Each outcome is centered on the value of a mean function \\\mu(x)\\ at its own covariate values.
> >
> > ✅ Each outcome is centered on a mean function \\\mu(x)\\ evaluated at that outcome’s covariate values.
>
> > ❌ the value of the density \\f(x)\\ at 0
> >
> > ✅ the value of \\f\\ at 0, or \\f(0)\\
>
> > ❌ the likelihood \\L(\theta)\\ at \\\hat{\theta}\\
> >
> > ✅ \\L(\theta)\\ evaluated at \\\hat{\theta}\\, or \\L(\hat{\theta})\\
>
> In each ❌ version, “the value of” or “at” sits next to a placeholder argument, so the reader has to decide whether \\\mu(x)\\, \\f(x)\\ or \\L(\theta)\\ means the function or one of its values. The first ❌ version also has an ambiguous “its”: the nearest candidate is the mean function, not the outcome.

Use the notation to match:

- Write \\\mu\\, or “the mean function”, for the function itself.
- Write \\\mu(x)\\ with a placeholder argument where you introduce or define the function, to show what its argument is, as in “a mean function \\\mu(x)\\” or \\\mu(x) := \beta_0 + \beta_x x\\, and say “evaluated at” when you substitute a point into it.
- Write \\\mu(x_i)\\, or “the value of \\\mu\\ at \\x_i\\”, for a value.

## 4 Matching names and notation

A name and its notation must describe the same object. When you name a quantity in words and also show it in symbols, use the symbols that go with that name. A reader who sees the name “inner product” expects to see the notation for an inner product. If the symbols look like a different operation, the reader has to work out whether the name or the symbols is wrong.

Keep the pairing the same everywhere the quantity appears. Notes, assignments, solutions and slides in one course should use one name and one notation for each quantity. When two fields call one idea by different names, choose one name, list the other names where you define the idea, and use only the chosen name afterward (see [Name the synonyms](../chapters/defining-terms.llms.md#guidelines-for-defining-terms)).

> **NOTE:**
>
> **Example 5 (Matching a name to its notation)**  
>
> > ❌ Compute the inner product \\\tilde{a}' \tilde{b}\\.
> >
> > ✅ Compute the inner product \\\langle \tilde{a}, \tilde{b} \rangle\\.
>
> The ❌ version names an inner product but writes a matrix product with a transpose. The two are equal for column vectors, but the reader sees two names for one quantity. If you want to show that they are equal, say so in a sentence, as in “the inner product \\\langle \tilde{a}, \tilde{b} \rangle\\ equals the matrix product \\\tilde{a}' \tilde{b}\\”.
>
> In a course that writes regression in statistical notation:
>
> > ❌ Consider the model \\h(x) = w x + b\\.
> >
> > ✅ Consider the mean function \\\mu(x) = \beta_0 + \beta_x x\\.
>
> The ❌ version names the same quantity as the rest of the course with a different word and different symbols. A student then has to learn that \\h\\, \\w\\ and \\b\\ are \\\mu\\, \\\beta_x\\ and \\\beta_0\\.

Before you release a document that reuses a quantity from another one, search both for its name and its symbols, and make them agree.

## 5 Using shared macros

Write each symbol through a shared macro file, and write the macro everywhere the symbol appears. A group that writes the same quantity in raw LaTeX in one document and with a macro in another ends up with two notations for one quantity. Changing a convention then means editing every document by hand.

Before you write any symbol, search the shared macro file for the concept it names. If a macro names the concept, use it. If none does, add one to the shared file before you use the symbol, so the next document finds it.

> **NOTE:**
>
> **Example 6 (Using a shared macro)**  
>
> > ❌ Let \\\beta_1\\ be the slope and write the sum as \\\sum\_{i=1}^n\\.
> >
> > ✅ Let `\coef{1}` be the slope and write the sum as `\sumin`.
>
> The ❌ version writes the slope and the sum in raw LaTeX. The ✅ version names each concept once, in the shared file. When the group changes how it prints a coefficient or a sum, every document that uses the macro changes with it.

The same rule covers transposes, hats on estimates, expectations, variances, probabilities, and vectors. A quantity that has a macro keeps the same symbol in every document.

## 6 Writing out notational shorthands

A notational shorthand drops part of an expression that the writer expects the reader to fill in. The commonest case is leaving the limits off a sum, product, or integral, as in \\\sum_x f(x)\\. In permanent writing (notes, papers, and published slides), write the full form instead: \\\sum\_{x \in \mathcal{R}(X)} f(x)\\, where \\\mathcal{R}(X)\\ is the set of values that \\X\\ can take.

The full form costs the writer a few characters and saves every reader a guess. A reader who sees \\\sum_x\\ has to work out which values of \\x\\ the sum runs over, and readers who work out different answers will disagree about what the expression means. The full form also exposes mistakes. If a count variable takes only non-negative values, a sum written as \\\sum\_{x \in \mathbb{Z}}\\ shows the wrong set at a glance, while \\\sum_x\\ hides the same mistake.

Give the limits of every sum, product, and integral, and state the set that any other index runs over. Board work during a lecture is often less complete, but it should still aim for the full form. The [notation page of the *Math for Data Science* notes](https://morrison-lab.github.io/mds/notation.html#sec-notational-shorthands) catalogs common shorthands and their full forms.

> **NOTE:**
>
> **Example 7 (Writing out the limits of a sum and the range of an index)** For a discrete random variable \\X\\:
>
> > ❌ \\\text{E}\[X\] = \sum_x x \Pr(X = x)\\
> >
> > ✅ \\\text{E}\[X\] = \sum\_{x \in \mathcal{R}(X)} x \Pr(X = x)\\
>
> For the likelihood of \\n\\ independent observations \\x_1, \ldots, x_n\\:
>
> > ❌ \\L(\theta) = \prod_i f(x_i; \theta)\\
> >
> > ✅ \\L(\theta) = \prod\_{i = 1}^{n} f(x_i; \theta)\\
>
> Each full form tells the reader the set the operator runs over: the values \\X\\ can take, and the indices of the \\n\\ observations.

Back to top
