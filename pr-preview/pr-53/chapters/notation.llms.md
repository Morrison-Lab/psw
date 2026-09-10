# Mathematical notation

Code

Published

Last modified: 2026-09-10 21:52:04 (UTC)

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

Back to top
