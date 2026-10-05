# Writing for teaching

Code

Published

Last modified: 2026-10-05 19:12:02 (UTC)

> **NOTE:**
>
> This chapter was written with the assistance of GitHub Copilot, which expanded on outlined ideas and draft notes provided by the author. The content represents the author’s perspective and has been reviewed for accuracy, but the detailed prose was generated through AI assistance.

Lecture notes, slides, and problem sets teach rather than report. The general rules for scientific writing in the other chapters still apply. This chapter adds the rules that apply to teaching materials in particular.

## 1 Build the lecture from exercises and solutions

Active learning, in which students work through tasks themselves during class, improves exam performance over lecture alone ([Freeman et al. 2014](#ref-freeman2014active)). The exercise-first structure is this guide’s own convention for putting that result into practice. Pose each task as an exercise, give students time to try it, and then show the solution.

- Pose every data manipulation or analysis as an exercise, and show the code in the solution. Do not show the code first and explain it afterwards.
- Pose every calculation, derivation, or proof as an exercise, and put the worked steps in the solution.
- Ask the question that a definition or theorem answers before stating it. The solution answers informally, in plain words, and the formal `#def-` or `#thm-` div follows the solution div.
- Give each bottom-level prompt its own `#exr-` div and its own `#sol-` div, in order, rather than one exercise with parts (a) through (e). Later exercises can use earlier results through cross-references.
- On slides, put a slide break between an exercise and its solution, so the prompt is on screen alone while students work.
- Give each solution the slug of its exercise, with `sol-` in place of `exr-`.
- Put a hint in a callout titled “Hint” inside the exercise div, not in italic text.

> **NOTE:**
>
> **Example 1 (Asking before defining)**  
>
> > ❌ **Generalization** is the ability of a model to perform well on new data.
>
> > ✅
> >
> > ``` markdown
> > ::: {#exr-generalization}
> > What does it mean for a model to generalize?
> > :::
> >
> > ::: {#sol-generalization}
> > A model generalizes when it predicts well on data it was not fit to.
> > :::
> >
> > ::: {#def-generalization}
> > (the formal definition)
> > :::
> > ```
>
> The revised version lets students attempt the idea before they see the formal definition.

## 2 Give each defined term its own div

[Defining terms clearly](../chapters/defining-terms.llms.md#guidelines-for-defining-terms) covers what a good definition contains. For teaching materials, three further rules keep definitions findable.

- Replace a bolded keyword in running prose with a `#def-` div. A bolded keyword usually marks an inline definition.
- Define one term per `#def-` div. A term defined inside another term’s div, or two terms joined in one title (“Regression and classification”), has no identifier of its own, so nothing can link to it.
- Never nest one theorem-type div inside another. The rule covers `#def-`, `#thm-`, `#lem-`, `#cor-`, `#prp-`, `#cnj-`, `#exm-`, `#rem-`, `#exr-`, and `#sol-`. A special case, such as a linear evaluation function, gets its own div after the general case, and the two link to each other.

An alternative name for the same concept stays in the div of the term it names, in italics. Name synonyms and near-synonyms where the term is defined, and say which one the notes use. A student who meets one name here and another in a textbook cannot tell whether the difference matters. For a near-synonym, name the seam: critical points include the stationary points and also the points where the derivative does not exist.

## 3 State the notation and its alternatives

When a symbol or convention has more than one common form, state the one the notes use and name the others a reader will meet elsewhere. Put the alternatives in the definition div or in a callout beside it. For example, some sources include 0 in the natural numbers and others exclude it, so write \\\mathbb{N}\_0\\ or \\\mathbb{N}^+\\ to make the choice explicit.

## 4 Lead with the simplest correct form of a definition

Define a quantity in the form that needs the fewest symbols, and state the textbook form as a theorem that follows. For example, define variance as the mean squared deviation \\\operatorname{E}\left\[\operatorname{devn}(X)^2\right\]\\, where \\\operatorname{devn}(X) = X - \operatorname{E}\[X\]\\, and then prove that it equals \\\operatorname{E}\[X^2\] - (\operatorname{E}\[X\])^2\\.

Parsimony outranks convention when choosing a primary definition. The conventional form still appears in the notes, as a named result.

## 5 Reuse one written version of each result

When several courses or repositories have already written the same definition, theorem, or exercise, compare the versions on notation, decomposition, parsimony, and clarity. Use the best one, or merge them, and make it the single copy. Other places include or link to that copy instead of keeping a second wording that can drift.

## 6 Use real data and compute every number

- Where an example needs data, use a real dataset instead of invented round numbers. Name its original source, link to where it is published, and cite it.
- Show a dataset before analyzing it, with a printed look at its first rows and its structure.
- Never type or paste output. The page shows what the code printed when the page was rendered, and each number in the prose comes from inline code. A number typed into prose goes stale when the data or the code changes.

## 7 Make figures accessible

- Wrap each figure, including an interactive one, in a `#fig-` div with a caption.
- Give every plot alt text. For Observable Plot, set `ariaLabel`.
- Show the code that makes each figure, and let readers fold it away. Code folding does nothing for a cell that does not echo its code, so do not set `echo: false` on a cell you want students to read.
- Do not cross-reference an interactive figure from prose, because the PDF format renders no figure for it, so the reference has no target there (observed when rendering lecture notes to PDF).

## 8 Structure slides for the reader

- Check the rendered slides, not only the web page. Slides need the same boxes and colors on theorem-type and callout divs that the web page has, so a reader can see where a definition ends and the commentary begins.
- Put a list of three or more phrases in a bullet list, as [Put lists in bullet points](../chapters/conciseness.llms.md#put-lists-in-bullet-points) describes.
- Put each named example in an `#exm-` div.
- Add structure only where content has a shape. Do not put a heading over a single item, or over the same topic as the heading just before it.
- Keep body text off section and title slides. Reveal.js centers those slides vertically and does not scroll them, so long text is clipped at the top and bottom of the screen (observed in lecture slides rendered with Quarto). Put a slide break after the heading and move the text onto content slides.

## 9 Credit other courses without summarizing them

- Write your own version of another course’s material, and credit the source in a collapsed `.callout-note` titled “Source”, not in running prose. [Adapting another course’s material](../chapters/citations-evidence.llms.md#adapting-another-courses-material) gives the details, including when a `::: notes` div is a safe alternative.
- Quote the primary source directly, and check the wording and page against the original. [Quote the original](../chapters/citations-evidence.llms.md#quote-the-original) explains why.
- Title a section by its topic, not by its author or course. [Put the content first](../chapters/citations-evidence.llms.md#put-the-content-first) explains why.
- Where the book is the subject rather than its authors, name the book by its title, because a bare citation key renders as the author list.

## 10 Rules that apply to all writing

These rules from the other chapters apply to teaching materials as to any other writing:

- [start a sentence with its subject](../chapters/conciseness.llms.md#lead-with-the-subject);
- [name the referent](../chapters/grammar.llms.md#demonstrative-pronouns) instead of a bare demonstrative;
- [say which thing](../chapters/word-choice.llms.md#say-which-thing);
- [state the literal claim](../chapters/word-choice.llms.md#avoid-vague-and-metaphorical-language) instead of an idiom;
- [avoid AI clichés](../chapters/avoid-ai-tells.llms.md).

Back to top

## References

Freeman, Scott, Sarah L. Eddy, Miles McDonough, et al. 2014. “Active Learning Increases Student Performance in Science, Engineering, and Mathematics.” *Proceedings of the National Academy of Sciences* 111 (23): 8410–15. <https://doi.org/10.1073/pnas.1319030111>.
