# Mathematical notation

Code

Published

Last modified: 2026-10-05 09:09:03 (UTC)

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
- writing “setting this to zero and dividing by \\-2n\\ gives”, which hides two operations in a sentence.

### 2.1 Using a fact the reader has not seen

When a step relies on a fact the document has not yet shown, such as deviations from a mean summing to zero, prove that fact first, in its own short derivation or exercise, and cite that proof at the step that uses the fact. Don’t leave the fact as an unexplained justification.

### 2.2 Long derivations

Splitting every step makes derivations longer. Keep them readable by breaking them into stages: derive an intermediate result in its own block, then plug that result back into the main derivation. For example, when you apply the chain rule, derive the inner derivative in a separate block before you substitute it. Naming a part of an expression that recurs in every line, such as writing \\d_i\\ for \\(y_i - \bar{y}) - \beta_x (x_i - \bar{x})\\, can also keep each line short.

Back to top
