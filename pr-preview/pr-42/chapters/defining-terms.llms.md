# Defining terms clearly

Code

Published

Last modified: 2026-08-10 04:15:35 (UTC)

Clear definitions are essential to effective scientific writing. Every specialized term should have an explicit, concise definition immediately before or after its first use. Readers should not need to search for the meaning of a term or infer it from context alone. For example:

> **NOTE:**
>
> **Definition 1 (Term)** A *term* is a word or phrase with a specific, technical meaning within a particular field or context.

> **NOTE:**
>
> **Example 1 (Population)**  
>
> > **NOTE:**
> >
> > **Definition 2 (Population)** In statistics, the term “population” refers to the complete set of all items or individuals of interest, not just a geographic population of people.

## 1 Guidelines for defining terms

Follow these principles when introducing new terms:

- **Provide explicit definitions:** State clearly what a term means, rather than assuming readers will understand from context.

- **Be concise:** Definitions should be brief and focused, using only the words necessary to convey the meaning.

- **Define terms at first use:** Place the definition immediately before or after the term’s first appearance.

- **Provide examples:** Every definition should include at least one concrete example that illustrates how the term is used.

## 2 Examples of term definitions

Here are examples of well-defined terms:

> **NOTE:**
>
> **Example 2 (Statistical term: Confidence interval)**  
>
> > **NOTE:**
> >
> > **Definition 3 (Confidence interval)** A *confidence interval* is a range of values, derived from sample statistics, that is likely to contain the true population parameter.
>
> If we calculate a 95% confidence interval for mean height as \[165 cm, 175 cm\], we are 95% confident that the true population mean height falls within this range.

> **NOTE:**
>
> **Example 3 (Writing term: Active voice)**  
>
> > **NOTE:**
> >
> > **Definition 4 (Active voice)** *Active voice* is a sentence structure where the subject performs the action expressed by the verb.
>
> “The researcher conducted the experiment” is in active voice, while “The experiment was conducted by the researcher” is in passive voice.

## 3 Why examples matter

Examples serve several crucial purposes:

- **Concrete understanding:** Examples transform abstract concepts into tangible instances that readers can visualize and understand.

- **Verification:** Readers can work through examples themselves to verify they understand the definition or theorem.

- **Application:** Examples show how to apply definitions and theorems to solve real problems.

- **Memory:** Concrete examples are easier to remember than abstract definitions alone.

## 4 Common pitfalls to avoid

- **Circular definitions:** Do not define a term using the term itself.

  **Incorrect:** “Conciseness is the quality of being concise.”

  **Correct:** “Conciseness is the quality of expressing ideas using only the words necessary to communicate meaning clearly.”

- **Vague definitions:** Avoid definitions that rely on imprecise language.

  **Incorrect:** “A variable is something that can change.”

  **Correct:** “A variable is a symbol representing a value that can take on different values.”

- **Missing examples:** Never leave a definition without at least one example.

- **Examples without context:** Ensure examples clearly illustrate the specific aspect of the definition they are meant to demonstrate.

## 5 Mathematical statements require examples

Mathematical theorems, lemmas, corollaries, and postulates should always include examples that demonstrate their application. Abstract mathematical statements become more accessible when readers can see concrete instances.

### 5.1 Using theorem environments in Quarto

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

See the [Quarto documentation on theorems and proofs](https://quarto.org/docs/authoring/cross-references.html#theorems-and-proofs) for complete details.

**Example syntax:**

``` markdown
::: {#thm-pythagorean}

## Pythagorean theorem

In a right triangle,
the square of the hypotenuse equals the sum of squares of the other two sides:
$a^2 + b^2 = c^2$.

:::
```

This produces automatically numbered output like “Theorem 2.1 (Pythagorean theorem)” and can be referenced elsewhere in your document using `@thm-pythagorean`.

### 5.2 Example: Pythagorean theorem

> **NOTE:**
>
> **Theorem 1 (Pythagorean theorem)** In a right triangle, the square of the hypotenuse equals the sum of squares of the other two sides: \\a^2 + b^2 = c^2\\.

> **NOTE:**
>
> **Example 4 (Pythagorean theorem example)** For a triangle with sides 3, 4, and 5: \\3^2 + 4^2 = 9 + 16 = 25 = 5^2\\.

> **NOTE:**
>
> **Definition 5 (Postulate (axiom))** A *postulate* (or axiom) is a statement accepted as true without proof, serving as a starting point for further reasoning.

> **NOTE:**
>
> **Example 5 (Euclid’s parallel postulate)** Through a point not on a line, exactly one line can be drawn parallel to the given line.
>
> If we have line \\L\\ and point \\P\\ not on \\L\\, only one line through \\P\\ will never intersect \\L\\.

Back to top
