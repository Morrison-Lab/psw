# Writing for teaching

Code

Published

Last modified: 2026-11-12 23:10:04 (PST)

> **NOTE:**
>
> This chapter was written with the assistance of GitHub Copilot, which expanded on outlined ideas and draft notes provided by the author. The content represents the author’s perspective and has been reviewed for accuracy, but the detailed prose was generated through AI assistance.

Lecture notes, slides, and problem sets teach rather than report. The general rules for scientific writing in the other chapters still apply. This chapter adds the rules that apply to teaching materials in particular.

# 1 Teaching writing and writing for peers

A teaching document and a paper have different readers, so they follow different rules. The reader of a teaching document is learning the material. The reader of a paper is a researcher who already knows the field and wants to judge new work.

|  | Teaching materials | Writing for peers (a paper) |
|----|----|----|
| Reader | A learner who needs each [term](../chapters/defining-terms.llms.md#def-term) defined before it is used. | A researcher in the field who knows the standard terms. |
| Purpose | The reader can do the method afterwards. | The reader can judge and build on the new result. |
| Standard material | Stated in full, with its definitions, notation, and worked examples. | Cited, not restated. |
| Order | An exercise first, then the definition, the result, and its proof. | [The standard paper structure](../chapters/paper-organization.llms.md#standard-paper-structure). |
| Examples | Every definition is followed by an example, and every example by an exercise. | Examples appear where they support a claim. |
| Repetition | One written version of each result is reused wherever it is needed. | Each result is stated once, where the argument needs it. |

Four consequences follow for how you write.

- **Define every term that the reader might not know.** A paper may use a standard term of its field without a definition. Teaching materials define the term, or link to the page that does.
- **Show each step of a derivation.** A paper may skip a routine step. Teaching materials give one operation per line, so the learner can check each step.
- **Test the reader’s understanding.** Teaching materials include exercises and solutions. A paper does not.
- **Use the same notation throughout, and state its alternatives.** A paper fixes one notation for its own argument. A learner also meets other notations in other textbooks and papers.

The rest of this chapter gives the rules for teaching materials. The chapters on [paper organization](../chapters/paper-organization.llms.md) and [manuscript submission](../chapters/manuscript-submission.llms.md) give the rules for papers.

# 2 Build the lecture from exercises and solutions

Active learning, in which students work through tasks themselves during class, improves exam performance over lecture alone ([Freeman et al. 2014](#ref-freeman2014active)). A practice guide from the Institute of Education Sciences rates the evidence as strong for two related practices: quizzes that bring students back to key content, and deep explanatory questions such as “why” and “how do you know” ([Pashler et al. 2007](#ref-pashler2007), recommendations 5b and 7). The exercise-first structure is this guide’s own convention for putting that result into practice. Pose each task as an exercise, give students time to try it, and then show the solution.

- Pose every data manipulation or analysis as an exercise, and show the code in the solution. Do not show the code first and explain it afterwards.

- Pose every calculation, derivation, or proof as an exercise, and put the worked steps in the solution.

- Ask the question that a definition or theorem answers before stating it. The solution answers informally, in plain words, and the formal `#def-` or `#thm-` div follows the solution div.

- Restate every result that a solution first derives in its own theorem-type div (`#thm-`, `#lem-`, `#cor-` or `#prp-`) after the exercise (Ezra, 2026-10-29). The solution shows the working, and the theorem div states the result by itself, so a reader can find and cite it. The `check-restated-results` workflow in [`gha`](https://github.com/Morrison-Lab/gha) warns about a derivation solution that a pull request edits and that no theorem-type div follows ([gha#1309](https://github.com/Morrison-Lab/gha/issues/1309)). The check never sweeps existing content: restate the result when you edit the passage anyway. `<!-- restated-ok: reason -->` in the solution exempts a result that is stated elsewhere. A restated theorem passes review only when it meets these four conditions:

  - **The proof stands alone.** It derives the result step by step, or cites earlier results, and does not only point back at the solution that first derived it.
  - **The statement uses only defined symbols.** Every symbol in it is defined in the statement itself or in an earlier div.
  - **The first use of each [term](../chapters/defining-terms.llms.md#def-term) is linked** to the div that defines it.
  - **Each source line holds one clause**, as the semantic line break rule requires.

- Give each bottom-level prompt its own `#exr-` div and its own `#sol-` div, in order, rather than one exercise with parts (a) through (e). Any exercise with several parts is split, however the parts are marked: letters, numbers or bullets. Put the shared setup in the first exercise, and begin each later exercise by citing it, as in “Make the assumptions of the first exercise.” Later exercises can use earlier results through cross-references.

- Split the solution the same way as its exercise (Ezra, 2026-10-28). Each `#sol-` of a split exercise answers only its own `#exr-`, takes its slug from that exercise (see the slug rule below), and sits in its own subfile after its exercise. This covers code: a lab solution puts each step’s code, output and figure in the solution of the exercise that asks for it, not all in the first solution. A solution does not label parts such as “(b)” or “Part 2”, and does not draw a figure that a later exercise asks for. Code that a later part needs stays in the earliest solution that needs it, because the page shares one session per language. The `check-split-solutions` workflow in [`gha`](https://github.com/Morrison-Lab/gha) enforces this ([gha#1290](https://github.com/Morrison-Lab/gha/issues/1290)).

- Make each exercise ask for one thing (Ezra, 2026-10-27). A prompt that says “compute the slope, and compare it with the fitted value” asks for two things, so split it into two exercises, each with its own solution. Split a list item or step inside an exercise the same way, into separate exercises. Phrases such as “and then”, “and also”, and “and compare” mark a second ask.

- Put the instruction or question of an exercise in its own paragraph, apart from the scenario information (Ezra, 2026-11-02). The scenario paragraphs give the data, the setting and the definitions that the exercise needs, and the last paragraph asks the question or gives the instruction (“Show that …”, “Which model …?”). Every exercise ends with that question or instruction (Ezra, 2026-11-09): a figure, table, or other scenario content goes before it, never after it, and the instruction does not wait in the solution. A reader scanning for the task then finds it without rereading the setup. A paragraph that runs from the scenario into the task hides the task. The [`check-exercise-question-paragraph`](https://github.com/Morrison-Lab/gha/tree/main/check-exercise-question-paragraph) check fails a pull request that adds such a paragraph. Put `<!-- question-paragraph-ok: reason -->` inside an exercise that it misreads.

- Open an exercise’s instruction with the verb for the task, never “Write the …”, “Write a …”, or “Write an …”. “Write” does not say whether the reader should derive a result, express a quantity in other terms, or show a claim holds, so two readers answer different questions. Say “Derive”, “Express … in terms of …”, “Prove …”, or “Compute …”, whichever the solution does. The [`check-write-idiom`](https://github.com/Morrison-Lab/gha/tree/main/check-write-idiom) check flags a line that opens this way.

  > ❌ Write the total of 2, 4, and 6.
  >
  > ✅ Compute the total of 2, 4, and 6.

- On slides, put a slide break between an exercise and its solution, so the prompt is on screen alone while students work.

- Give each solution the slug of its exercise, with `sol-` in place of `exr-`.

- Put a hint in a callout titled “Hint” inside the exercise div, not in italic text.

- Give every exercise a hint that links to the sections of the notes it draws on (Ezra, 2026-11-04), in a lab as in a homework. Where an exercise asks for code, link the section of the programming primer that introduces each command it needs, and link each definition or result the exercise rests on. Use a direct anchor link on the longest phrase that names the thing, as [Link the words, not a trailing citation](../chapters/citations-evidence.llms.md#link-the-words) describes. The hint points the reader to the material and does not give the answer.

- Where the solution has a tab for each language, a hint that names a command of one language names the other language’s counterpart too (Ezra, 2026-11-04). Say which language each command belongs to, as in “`.predict` in Python, `predict()` in R”, and link the primer example whose tabs show both. A reader working in the other language otherwise finds only a name that does not exist in their language.

- Give each exercise the background that its title implies, and say why the reader should care (Ezra, 2026-10-29). Whatever the title tells the reader about the object, the body also says: name the object, link its definition, and say where it arises and what it is used for. For a title such as “Maximizing a gamma-family kernel”, the body says what a gamma distribution and its kernel are, and that maximizing the kernel finds the mode without computing the normalizing constant. A body that only restates the formula leaves a reader who skipped the title with a formula and no reason to care. The first exercise of a split series carries the background, and each later exercise begins by citing it, as the splitting rule above says.

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

# 3 Build every unit from smaller atomic units

Make every unit of analysis as concise and minimal as possible. The units are mathematical expressions and divs of every kind: definitions, theorems, lemmas, corollaries, examples, remarks and proofs. When a unit grows complicated, do not write the complexity into it. Abstract the complexity out into smaller, atomic definitions, results and expressions, each with its own name and identifier, and glue the pieces together with hyperlinks.

This is the compositional approach of [modular programming](https://en.wikipedia.org/wiki/Modular_programming): a program is built from small, single-purpose modules that call one another, and a maintainer changes one module without reading the rest. The notes work the same way. A theorem links to the definitions it uses, a proof links to the lemmas it uses, and an expression is written with the named pieces it is built from.

- A display holds one idea. Name each meaningful sub-expression, give it a macro, and build the display from the names (see [Making expressions concise](../chapters/notation.llms.md#making-expressions-concise)).
- A div holds one [term](../chapters/defining-terms.llms.md#def-term) or one result. Move a second term, a side property or a long argument into its own div, and link to it from the place that needs it (see [Give each defined term its own div](#give-each-defined-term-its-own-div)).
- A theorem-type div states the result and its hypotheses, and no reasoning. Words that justify the claim (“so”, “because”, “hence”, “therefore”, “since”) belong in the proof.
- Never put a result in a `#rem-` div. A remark holds commentary: motivation, history, a warning, how to read a result. When a remark states something that is true, such as an equation with its conditions, move the statement into a `#thm-`, `#lem-`, `#cor-`, or `#prp-` div with its proof, and leave the commentary in the remark, which links to the result (Ezra, 2026-11-07). An example pointer or a worked number is not a result: put it in an `#exm-` div.
- A proof states the lemmas it needs and links to them, instead of deriving them in the middle of the argument.
- Extract a lemma wherever feasible. When a proof, solution or example states a general fact that does not depend on its setting, such as $\E{Z^2} = \var{Z} + \sqf{\E{Z}}$ for any random variable $Z$, give the fact its own lemma div before its first use, and link to it from each place that uses it. Put the lemma on the prerequisite site that owns the topic ([mds](https://morrison-lab.github.io/mds/), [pds](https://morrison-lab.github.io/pds/) or [sds](https://morrison-lab.github.io/sds/)), not in the course page that needs it. Extract a lemma from a passage when you edit that passage anyway, and do not sweep existing content.
- A link replaces a repeated explanation. If a piece is already written, link to it instead of writing it a second time.

When a unit still looks long, ask what could be named and moved out.

> **NOTE:**
>
> **Example 2 (Splitting one long definition)**  
>
> > ❌ One div defines the ridge estimator, defines its penalty, and proves that it shrinks the coefficients.
> >
> > ✅ Three divs: a definition of the penalty, a definition of the ridge estimator that links to the penalty, and a theorem on shrinkage that links to both.
>
> The ✅ version lets a later chapter link to the penalty alone, and each piece fits on a slide.

# 4 Say what a yes-or-no answer means

Follow a “Yes” or “No” with what the answer means in the words of the question, as in “No: it’s not possible that the advanced network has a test error of 0.25,” not a bare “No.” (Ezra, 2026-10-28). A reader who sees only the first line then still knows what the answer claims, and a bare “No.” leaves open what is being denied. The rule covers solutions, worked examples and any other answer to a question.

> **NOTE:**
>
> **Example 3 (Saying what a “No” means)**  
>
> > ❌ No. The irreducible error is a lower bound on the expected squared prediction error.
> >
> > ✅ No: it’s not possible that the advanced network has a test error of 0.25. The irreducible error is a lower bound on the expected squared prediction error.
>
> The ✅ version states the conclusion in the question’s own words, so the reasons that follow support a claim the reader has already seen.

# 5 Give each question’s answer its own paragraph

When a prompt asks several questions, answer each one in its own paragraph, or in several paragraphs if it needs them (Ezra, 2026-10-28). A solution to “Which model underfits, which overfits most, and which would you choose?” has one paragraph for the underfitting model, one for the overfitting model and one for the choice. A reader looking for one answer then finds it without reading the others. No automated check enforces this rule, because a script cannot tell how many questions a prompt asks.

# 6 Give each defined term its own div

[Defining terms clearly](../chapters/defining-terms.llms.md#guidelines-for-defining-terms) covers what a good definition contains. For teaching materials, four further rules keep definitions findable.

- Replace a bolded keyword in running prose with a `#def-` div. A bolded keyword usually marks an inline definition.
- Define one term per `#def-` div. A term defined inside another term’s div, or two terms joined in one title (“Regression and classification”), has no identifier of its own, so nothing can link to it.
- Never nest one theorem-type div inside another. The rule covers `#def-`, `#thm-`, `#lem-`, `#cor-`, `#prp-`, `#cnj-`, `#exm-`, `#rem-`, `#exr-`, and `#sol-`. A special case, such as a linear evaluation [function](https://morrison-lab.github.io/mcs/functions.html#def-function), gets its own div after the general case, and the two link to each other.
- Keep only the definition in a `#def-` div. Put the properties of the defined object, such as the symmetry and idempotence of a matrix, in a separate `#thm-`, `#lem-` or `#prp-` div after it, with a proof where one is known. Each abstract div then gets its own example, as the rule below requires.

Every `#thm-`, `#lem-`, `#cor-`, and `#prp-` div links each defined [term](../chapters/defining-terms.llms.md#def-term) that it uses to that term’s definition (Ezra, 2026-11-09), with `@def-id` or a link to the `#def-id` anchor. A reader of the result can then reach the meaning of every term in it. A result with no defined term to link, such as an identity between numbers, says so in an `<!-- check-result-definition-links: allow: reason -->` comment. The `check-result-definition-links` check warns on a result div a pull request edits that links no definition.

Every alternative name for the same concept stays in the div of the term it names and is treated like the primary name: it appears in the div title and is bold where it first appears in the definition. Name synonyms and near-synonyms where the term is defined, and say which one the notes use. A student who encounters one name here and another in a textbook cannot tell whether the difference matters. For a near-synonym, name the seam: critical points include the stationary points and also the points where the derivative does not exist.

# 7 State the notation and its alternatives

When a symbol or convention has more than one common form, state the one the notes use and name the others a reader will encounter elsewhere. Put the alternatives in the definition div or in a callout beside it. For example, some sources include 0 in the natural numbers and others exclude it, so write $\mathbb{N}_0$ or $\mathbb{N}^+$ to make the choice explicit.

# 8 Lead with the simplest correct form of a definition

Define a quantity in the form that needs the fewest symbols, and state the textbook form as a theorem that follows. For example, define [variance](../chapters/defining-terms.llms.md#def-variance-expression-and-prose) as the mean squared deviation $\operatorname{E}\left[\operatorname{devn}(X)^2\right]$, where $\operatorname{devn}(X) = X - \operatorname{E}[X]$, and then prove that it equals $\operatorname{E}[X^2] - (\operatorname{E}[X])^2$.

Parsimony outranks convention when choosing a primary definition. The conventional form still appears in the notes, as a named result.

# 9 Reuse one written version of each result

When several courses or repositories have already written the same definition, theorem, or exercise, compare the versions on notation, decomposition, parsimony, and clarity. Use the best one, or merge them, and make it the single copy. Other places include or link to that copy instead of keeping a second wording that can drift.

# 10 Match datasets and assignments to the reference texts

Students can ask an AI assistant for a complete solution to any homework problem, so a problem is no more secure for never having been published (Ezra, 2026-11-04). Choose assignments for their fit with the course, not for novelty.

- Use as an in-class example the dataset that the reference texts and the other instructors of the course use for that topic. Depart from it only for a stated reason.
- Assign as homework the kinds of exercise that the reference texts and the other instructors generally assign for that topic, and use the same datasets they do.
- Keep assessment that must be secure, such as an exam, in a setting the instructor controls, because a take-home problem cannot be.

Check the reference text itself before naming its datasets. Open the chapter and list the dataset each section uses, rather than recalling them.

# 11 Use real data and compute every number

- Where an example needs data, use a real dataset instead of invented round numbers. Name its original source, link to where it is published, and cite it.
- Show a dataset before analyzing it, with a printed look at its first rows and its structure.
- Show the data where it is first mentioned. Put a table of a few rows, or a plot of the variables, directly after the sentence that names the dataset, before any discussion of its features, the methods to apply to it, or the questions it raises. A reader who has seen the data can picture what the next slides describe, while a reader who has not must hold an abstract description in mind until the data appears. If the data are too large to show, show a sample or a summary figure. Link later mentions of the dataset back to this first display.
- Show a toy dataset, such as the few points of an exercise, as a table with one row per observation, not as a sentence that lists its values. A reader scans a table’s rows and columns at a glance, while a sentence makes the reader pair each input with its outcome in their head. A toy dataset’s table still needs a `#tbl-` label and a caption, as [Captions are captions, not headings](../chapters/paper-organization.llms.md#captions-are-captions-not-headings) requires of every table, and the prose refers to it by its label. A table inside an exercise or a list item is not exempt either.
- Never type or paste output. The page shows what the code printed when the page was rendered, and each number in the prose comes from inline code. A number typed into prose goes stale when the data or the code changes.

> **NOTE:**
>
> **Example 4 (Showing the data at first mention)**  
>
> > ❌ Slides 3 to 9 discuss the spam data’s 57 predictors, its class imbalance, and the loss [function](https://morrison-lab.github.io/mcs/functions.html#def-function) we will minimize. Slide 10 shows a table of the first rows.
> >
> > ✅ Slide 3 introduces the spam data and shows a table of its first rows and a plot of one predictor by class. Slides 4 to 10 discuss the predictors, the class imbalance, and the loss function, and refer back to that table and plot.
>
> The ✅ version lets every later slide refer to something the reader has already seen.

> **NOTE:**
>
> **Example 5 (Showing a toy dataset as a table)**  
>
> > ❌ The dataset has one input: $x = 0, 1$ with $y = 0$, and $x = 3, 4$ with $y = 1$.
> >
> > ✅ [Table 1](#tbl-toy-dataset) shows the toy dataset, which has one input.
> >
> > | $i$ | $\predvar_i$ | $\outvar_i$ |
> > |----:|-------------:|------------:|
> > |   1 |            0 |           0 |
> > |   2 |            1 |           0 |
> > |   3 |            3 |           1 |
> > |   4 |            4 |           1 |
> >
> > Table 1: A toy dataset with one input, one row per observation.
>
> The ✅ version puts each observation’s input and outcome side by side in one row, and gives the table a label and a caption, as every table needs.

# 12 Store structured data in structured formats

This rule applies to all teaching materials, in every course and every teaching repository.

- Keep a list or table of like items, such as courses, readings, channels or glossary [term](../chapters/defining-terms.llms.md#def-term)s, in a CSV, YAML or JSON file with one record per item. The page reads the file and builds the table or list with a short function, instead of holding a hand-written Markdown table.
- A data file can be counted, filtered, sorted and reused by another page, and a new row is a one-line change that a reviewer recognizes as a data change.
- List the file under the page’s `resources:` when the site publishes it.
- Convert an existing hand-written table in its own pull request, and render the page before and after to confirm that the output text is identical.
- A short list that no other page reads can stay as prose.

# 13 Pair exploratory data analysis with plots

- Make each exploratory data analysis exercise or lab include graphical methods, not only numerical summaries (Ezra, 2026-11-04). Pair the summary with a plot of the same quantity:
  - **A distribution:** a histogram or boxplot.
  - **A trend or a relationship:** a scatterplot or time plot.
- Do not limit an exploratory analysis to counts and correlations. A plot shows the shape, the outliers, and the trend that one number hides.
- Give each plot the figure treatment in [Make figures accessible](#make-figures-accessible).

# 14 Show each idea applied and in a figure

Connecting an abstract idea to a concrete case, and pairing words with a figure, both help students learn ([Pashler et al. 2007](#ref-pashler2007), recommendations 3 and 4).

- Give every definition, method and result at least one applied example that computes it on real data, so the reader sees what the idea does before or beside the algebra.
- Follow every abstract div directly with a concrete `#exm-` div. The rule covers each `#def-`, `#thm-`, `#lem-`, `#cor-` and similar div. The example of a related result does not exempt a definition: a theorem that uses a definition gets its own example, and so does the definition. The [ai-config rule](https://github.com/Morrison-Lab/ai-config/pull/4386) links here.
- Give nearly every `#exm-` div a figure of its data, model or results (Ezra, 2026-10-23). When an example has no figure, state the reason in that div. Put the figure inside the div, or include a subfile whose name ends in `_fig` inside the div. When an example has nothing to plot, such as a single number, add `<!-- no-figure: reason -->` inside the div, replacing `reason` with why there is nothing to plot. The `check-exm-figures` workflow in [`gha`](https://github.com/Morrison-Lab/gha) reports, in a pull request, each example that has no figure and no `no-figure` comment ([gha#1193](https://github.com/Morrison-Lab/gha/issues/1193)).
- Give every div whose title mentions visualization (*visualize*, *visualizing*, *visualization*) a corresponding figure (Ezra, 2026-10-26). For an exercise, the figure may sit in the exercise or in its solution. The rule also covers any div that asks for a picture: a title or an exercise prompt that says *plot*, *sketch*, *draw*, *diagram*, or *contour* (in any inflection, such as *plotting* or *sketching*), or that asks the reader to mark points on a surface. The `check-visualization-figures` workflow in [`gha`](https://github.com/Morrison-Lab/gha) reports, in a pull request, each such div that has no figure in it or in its solution, and a `<!-- no-figure: reason -->` comment inside the div suppresses that report, as it does for an example ([gha#1262](https://github.com/Morrison-Lab/gha/pull/1262)).
- Give every topic at least one figure that shows the idea, such as the data with a fitted curve, a distribution, or a diagram of the procedure. A page of definitions with no figure and no data is incomplete.
- Prerequisite notes follow the same rule as course lectures. A prerequisite page that is only definitions and algebra needs an applied example and a figure.
- Place each figure directly after the sentence that first refers to it. Do not refer to a figure, table, or result that appears later in the document, because the reader encounters the reference before the thing it points to. This rule is for teaching materials, which are reading copies. A journal submission may collect its figures at the end, as [Figures and tables](../chapters/paper-organization.llms.md#figures-and-tables) describes.
- Make each figure follow the accessibility rules below.
- Discuss and cross-reference every figure in the prose (Ezra, 2026-11-02). Cite it with `@fig-id`, and say what the reader should see in it. A figure that no sentence cites or interprets is decoration.
- Nest a figure that belongs to one example or exercise inside that `#exm-`, `#exr-` or `#sol-` div (Ezra, 2026-11-02). A figure outside the div leaves the example or exercise incomplete when the reader meets it alone, and moves with the wrong text when the page is reorganized. Leave a figure that several examples share outside every div, and cite it from each. The `check-figure-placement` workflow in [`gha`](https://github.com/Morrison-Lab/gha) reports, in a pull request, each figure on a changed line that no prose cites and each figure placed directly after an example, exercise or solution div without being inside it. A `<!-- figure-placement: allow -->` comment on the figure or inside its div suppresses the report for a shared figure ([gha#1378](https://github.com/Morrison-Lab/gha/pull/1378)).

# 15 Follow every example with an exercise and solution

Reading a worked example is passive. A reader who has just seen one method applied learns more by applying it to a new case than by reading a second example. So each example gets a practice exercise, with its solution, right after it. Worked-examples research supports this pairing: an example teaches most when a practice problem of the same kind sits next to it ([Atkinson et al. 2000](#ref-atkinson2000); [Pashler et al. 2007](#ref-pashler2007), recommendation 2).

- After every `#exm-` div, add an `#exr-` div that asks the reader to do the same thing for a different case, followed by its `#sol-` div. The exercise changes the data, the function or the question, so the solution is not a copy of the example.
- The full sequence for a new idea is therefore: the exercise that poses the question and its solution, the definition or theorem, an example, and a practice exercise with its solution.
- More generally, give readers an opportunity to think at every stage: a question they can answer before the next paragraph, a calculation to try, a prediction to make before the code runs.
- A counterexample (see [Defining terms clearly](../chapters/defining-terms.llms.md#guidelines-for-defining-terms)) can stand in for the practice exercise when the exercise would be “decide whether this case fits the definition”.
- Give the practice exercise its own slug and follow the numbering and slide-break rules above.

> **NOTE:**
>
> **Example 6 (An example followed by a practice exercise)**  
>
> > ✅
> >
> > ``` markdown
> > ::: {#exm-sample-mean}
> > (the sample mean of one variable in a real dataset, computed by a code chunk)
> > :::
> >
> > ::: {#exr-sample-mean-new-variable}
> > Compute the sample mean of a different variable in the same dataset.
> > :::
> >
> > ::: {#sol-sample-mean-new-variable}
> > (the code chunk and its output)
> > :::
> > ```
>
> The example shows the method once. The exercise asks the reader to repeat it on a new variable before moving on, and the solution’s numbers still come from running code (see [Use real data and compute every number](#use-real-data-and-compute-every-number)).

# 16 Fade worked examples into exercises

Within a unit, give the reader less of each successive solution. A novice who solves a problem without guidance spends working memory on searching for a solution and has little left for learning the method ([Sweller 1988](#ref-sweller1988)), so worked examples teach a new method better than unguided practice ([Atkinson et al. 2000](#ref-atkinson2000)). As learners gain skill, the advantage reverses: a fully worked solution adds reading without adding learning, and can make learning worse. The reversal is called the *expertise reversal effect* ([Kalyuga et al. 2003](#ref-kalyuga2003)).

- Give the first example of a method as a fully worked solution.
- Leave one or more steps of the next example to the reader, as a short exercise.
- Give the last case as an exercise only, followed by its solution.
- In a later unit that uses the method again, link to the first worked example instead of working it again.

> **NOTE:**
>
> **Example 7 (Fading three cases of one method)**  
>
> > ✅
> >
> > ``` markdown
> > ::: {#exm-mean-height}
> > (the average height, with every step worked)
> > :::
> >
> > ::: {#exr-mean-weight}
> > Compute the average weight.
> > The sum of the weights is given; divide it by the number of people.
> > :::
> >
> > ::: {#sol-mean-weight}
> > (the division, computed by a code chunk)
> > :::
> >
> > ::: {#exr-mean-age}
> > Compute the average age.
> > :::
> >
> > ::: {#sol-mean-age}
> > (every step, computed by a code chunk)
> > :::
> > ```
>
> The reader sees the method once in full, then supplies one step, then does every step.

# 17 Leave a step to the reader only as an exercise

Write every step in the exposition. When you want readers to work out a step for themselves, pose it as an exercise with a solution. A fully explicit text helps readers with little background on every measure, while readers who already know the topic can learn more from a text that makes them fill in gaps ([McNamara et al. 1996](#ref-mcnamara1996)). Guidance that helps novices can also hinder more experienced learners ([Kalyuga et al. 2003](#ref-kalyuga2003)). An exercise serves both readers: the experienced reader gets a gap to fill, and the novice gets a solution to check. A gap left silently in the exposition serves only the experienced reader.

- **Introductory course:** work each step in the text, then add exercises after it.
- **Advanced course:** a routine step of a derivation may go to the reader, posed as an `#exr-` div with its `#sol-` div. Do not write “the reader can verify” in place of the exercise.

# 18 Write labs for both languages and any computer

These rules apply to all teaching materials, in every course and every teaching repository, not only to one course.

- Give labs and code exercises in both R and Python, side by side.
- Put each step’s Python and R pair in its own tabset with `group="language"`. Start a new tabset whenever prose or a new step sits between code chunks, so the reader sees one step’s code in one language at a time. The shared group makes one choice of language apply to every tabset on the page, as long as the tab headings use identical text in every tabset, such as always “R” and “Python”.
- Write the R code with [tidymodels](https://www.tidymodels.org/), or show tidymodels and base R side by side. Do not give base R alone. [ISLR-tidymodels-labs](https://github.com/Morrison-Lab/ISLR-tidymodels-labs) shows the style.
- When a lab follows a textbook’s lab, use the book’s exercises, data and fitting functions, in the book’s order. For the ISL labs, fit Python models with `statsmodels`’ `sm.OLS`, as [ISLP_labs](https://github.com/intro-stat-learning/ISLP_labs) does. If an exercise departs from the book, say why in the lab.
- Never throw away an exercise you replace. Either keep both exercises, or keep the replaced one as an outtake: leave its file in place and stop including it.
- Tell students where to get the data.
- Point students only to places they can open. Students read a course’s published site, not its repository, which is often private. So never send them to a file in the repository, to a `github.com` link into a private repository, or to “the copy in this repository”. Link a data file from the published site, from a public repository or package, or from the data’s original public source.
- Do not assume that students own a laptop. Assume only that they can use some computer, so setup steps must work on a shared or hosted machine.

# 19 Phrase optional steps as conditions

An instruction that applies to only some readers reads as an order to all of them. Put the condition first, then the instruction, as in “If you use a language other than R or Python, …”.

- State the condition at the start of the sentence, as “If you …, do …”. The reader who is not in that case can stop reading at the comma.
- Do not open with a bare imperative that only some readers should follow.
- Where a step can be skipped, say what the reader loses or what to do instead.
- Give each case its own sentence.

The labs in the reference text write optional work this way. They state the condition first and then the consequence: “If you have not installed ggplot2, then the code below will still run, but the plot will be less attractive” ([James et al. 2021, sec. 10.9](#ref-james2021islr2), p. 445). They give an alternative to the reader who is short of time: “If you are in a rush, then you could set B equal to a smaller value (e.g. B = 500)” ([James et al. 2021, sec. 13.6](#ref-james2021islr2), p. 587). They label a step that has no condition and say when to do it: “this step is optional and should be performed only if we want each gene to be on the same scale” ([James et al. 2021, sec. 12.5](#ref-james2021islr2), p. 543).

> ❌ In another language, use a port of `SyncRNG` to get the same data; without one, draw your own data from the same model.
>
> ✅ If you use a language other than R or Python, use a port of `SyncRNG` to get the same data. If no port exists, draw your own data from the same model; your numbers will differ slightly from the key’s.

# 20 Introduce a specific case as a specific case

A sentence with an indefinite subject and a bare verb states a general fact: “A [logistic regression](https://morrison-lab.github.io/lds/chapters/logistic-regression.html#def-logistic-regression) classifier has a decision boundary” holds for every such classifier. Used for one particular case, the same form claims something false, and the reader must guess that you meant only one.

- Use “a” or “any” with a bare verb only for a statement that holds in every case.
- Introduce a specific case with “Consider a …”, “Suppose a …”, or “Let … be …”, and give its particular values in the same sentence.
- Refer back to it with “the” or “this”, and not with “a” again.

This applies Grice’s maxims of Quality, because the sentence is not true as written, and of Manner, because it is ambiguous between one case and all of them ([Grice 1975](#ref-grice1975)).

> ❌ A binary logistic regression classifier in two dimensions has parameter vector $[-2, 1, 0.5]'$.
>
> ✅ Consider a binary logistic regression classifier in two dimensions with parameter vector $[-2, 1, 0.5]'$.

# 21 Keep each step’s code in one chunk, and put parallel chunks in a language tabset

This rule applies to every executed code chunk in teaching materials, in every course and every teaching repository, in every language.

- Put parallel versions of one computation in one language tabset, never one chunk after another. A reader should see one language at a time.
- Write one chunk for each step of the computation. A figure’s code is one chunk, even when it takes ten lines.
- Split a chunk only for a reason that the reader can see:
  - **Own label or options**: the second part needs its own label, caption or chunk options.
  - **Separate output**: the second part shows output that the first part should not.
  - **Dependent prose**: prose between the parts needs the first part’s output.
- Do not split a chunk to name its parts, or to keep it short. Comments name the parts (see [Comment every code chunk to say what and why](#comment-every-code-chunk-to-say-what-and-why)).
- Give a chunk that only stores values for later code or inline code `#| include: false`. When the chunk that computes those values is already hidden, merge the storing code into that chunk.
- Check for output that splits a chunk without a reason. In Python, reticulate prints the value of each top-level call that returns something other than `None` and shows the chunk as one code block per printed value, such as a `<matplotlib.lines.Line2D object at 0x...>` line after every `ax.plot(...)`. End each such call with a semicolon, or assign its value.

# 22 Present R results with modern packages

This rule applies to all R code in teaching materials, in every course and every teaching repository.

- Even when you fit a model with a base R function such as `lm()` or `glm()`, show its results with modern packages, not with base R output.
- Show coefficient tables with [parameters](https://easystats.github.io/parameters/) (`parameters() |> print_md()`) or [gtsummary](https://cran.r-project.org/package=gtsummary) (`tbl_regression()`), not with `summary()` or `coef(summary())` printouts.
- Draw figures with [ggplot2](https://ggplot2.tidyverse.org/), not with base graphics such as `plot()`, `lines()` and `abline()`.
- Draw model plots with packages built on ggplot2: [sjPlot](https://strengejacke.github.io/sjPlot/) or [ggeffects](https://strengejacke.github.io/ggeffects/) for predictions, and [performance](https://easystats.github.io/performance/)’s `check_model()` for diagnostic plots.
- Show model fit statistics with performance’s `model_performance()` or [broom](https://cran.r-project.org/package=broom)’s `glance()`.
- Ezra’s [rme](https://github.com/d-morrison/rme) notes show the style.

# 23 Manipulate data with dplyr, not base R

This rule applies to all R code in teaching materials, in every course and every teaching repository.

- Select columns with [dplyr](https://dplyr.tidyverse.org/)’s `select()`, not with `df[, c("a", "b")]` or `df[c("a", "b")]`.
- Filter rows with `filter()`, not with `df[df$x > 0, ]` or `subset()`.
- Add or change columns with `mutate()`, not with `df$new <- ...`.
- Drop rows with missing values with [tidyr](https://tidyr.tidyverse.org/)’s `drop_na()`, not with `df[complete.cases(df), ]`.
- Stack data frames with `bind_rows()`, not with `rbind()`.
- Build data frames with [tibble](https://tibble.tidyverse.org/)’s `tibble()`, not with `data.frame()`.
- Chain steps with the native pipe `|>`.
- Do not nest function calls. Write `tibble(x, y) |> pander()`, not `pander(tibble(x, y))`, and `sizes |> lapply(f) |> bind_rows()`, not `bind_rows(lapply(sizes, f))`. Give a call that would sit inside an argument, such as `data = filter(df, train)` in a model call, a name on its own line first.
- Reading one value out of a data frame for inline code is fine, as is indexing a matrix or a vector. The rule is about selecting, filtering and building data frames.

# 24 Include code from files instead of copying it

This rule applies to code that appears in more than one place in teaching materials.

- When the same code appears in several pages, or in a page and a script, keep one source file and include it where it is shown. A copy in each place drifts when one copy is fixed and the others are not (see [Reuse one written version of each result](#reuse-one-written-version-of-each-result)).
- Code that the page runs should be an executed chunk, as above. For code that is displayed but not executed on the page, such as a standalone script or a configuration file, Quarto’s [include-code-files](https://github.com/quarto-ext/include-code-files) extension fills a code block from a file. Add `filters: [include-code-files]` to the front matter, then write a code block with an `include` attribute, such as ```` ```{.python include="script.py"} ````.
- The extension also takes `start-line` and `end-line`, to show part of a file. Prefer a range that names the lines you want over a copy of those lines.
- The extension is a new dependency of the site: install it with `quarto add quarto-ext/include-code-files`, and commit the `_extensions` directory it creates.

# 25 Comment every code chunk to say what and why

This rule applies to all reader-facing code in teaching materials, in every course and every teaching repository, in every language.

- Put comments in each code chunk that explain both what the code is doing and why it does it.
- Leave out a comment that would give away the solution in an exercise prompt. Add the comments to the solution’s code instead.
- A comment that only restates the code, such as `# add 1 to x` above `x <- x + 1`, gives the *what* without the *why*. Say what the step accomplishes and why the analysis needs it, for example `# center age so the intercept is the mean outcome at the average age`.
- Comment each step that a student could not reconstruct from its name, such as a transformation, a modeling choice, a tuning value or a random seed.

# 26 Set `code-fold` by what the code does and whether the prose mentions it

This rule applies to every executed code chunk in teaching materials, in every course and every teaching repository.

Set `#| code-fold:` on each chunk to `show` or `true`. Never set `false`: it removes the toggle and gains nothing, because `show` also keeps the code and its output together. The choice depends on one question: does the prose mention the code?

- `#| code-fold: show` when the prose mentions the code. The choice of `show` holds whether the code produces output outside the chunk or not, and a chunk that defines [function](https://morrison-lab.github.io/mcs/functions.html#def-function)s or objects that later chunks use counts as producing output. The code starts open, and a reader who wants to focus on the output can hide it.
- `#| code-fold: true` when the prose does not mention the code. The code starts hidden, and a reader who wants it can open it.

For example:

- A chunk that fits a model the text walks through and prints its coefficients is `show`.
- A chunk that draws a figure the text discusses is `show`.
- A chunk that defines the helper functions a section introduces is `show`.
- A chunk that loads a package the text never mentions is `true`.

# 27 Put a full command in a code block, not in inline code

This rule applies to all teaching materials that name commands, in every course and every teaching repository.

- Put a full command that a reader will run, such as an install command, in its own fenced code block with a language, such as `r` or `python`. A rendered code block has a copy button, and inline code does not.
- Do not run the block when its output is not the point. Open the fence with the language alone, as in `r`, and not in braces, as in `{r}`, so Quarto shows the code and does not evaluate it.
- Keep inline code for a name inside a sentence, such as the name of a package, a variable or an argument.
- Introduce the block with a sentence that ends in a colon. Do not follow a semicolon or a colon in the sentence with inline code that the reader has to select by hand.

> **NOTE:**
>
> **Example 8 (Moving an install command out of a sentence)**  
>
> > ❌ The R tabs need `readr`, `dplyr`, `ggplot2` and `purrr`: `install.packages(c("readr", "dplyr", "ggplot2", "purrr"))`.
> >
> > ✅ The R tabs need `readr`, `dplyr`, `ggplot2` and `purrr`:
> >
> > ``` r
> > install.packages(c("readr", "dplyr", "ggplot2", "purrr"))
> > ```
>
> The package names stay inline because they sit in the sentence. The install command moves to a block, so the reader copies it with one click.

# 28 Introduce every function in a programming primer

This rule applies to all teaching materials that run code, in every course and every teaching repository.

- Give the course a programming primer that introduces each package function the course’s chapters call. A student encounters the function there first, in a short note, a worked example and an exercise, and then sees it used in the chapters.
- Keep the primer complete by computing the list of functions, not by remembering it. Scan the code chunks of the chapters for the functions they call, and compare the list with the functions the primer mentions. Run the scan when a chapter adds a function, and again before a term starts.
- Add the missing functions in separate pull requests, one per package. A pull request that adds a function to a chapter adds it to the primer too, or links the primer entry that already introduces it.
- Functions that a chapter defines for itself are not package functions. A chapter introduces those where it defines them.

# 29 Make figures accessible

- Wrap each figure, including an interactive one, in a `#fig-` div with a caption.
- Give every plot alt text. For Observable Plot, set `ariaLabel`.
- Show the code that makes each figure, and let readers fold it away. Code folding does nothing for a cell that does not echo its code, so do not set `echo: false` on a cell you want students to read.
- Do not cross-reference an interactive figure from prose, because the PDF format renders no figure for it, so the reference has no target there (observed when rendering lecture notes to PDF).

# 30 Split a page before it grows too long

A page should load and finish rendering its math in under 5 seconds, and its scroll bar should not shrink to its smallest length (Ezra, 2026-10-31). The browser typesets every formula on a page, so a page with hundreds of formulas takes seconds to finish. A page tall enough to shrink the scroll bar to its minimum leaves the reader no way to see where they are in it.

- Split a page that fails either test into several pages, one coherent topic each. The [math prerequisites](https://morrison-lab.github.io/mds/) page on measures, for example, became six pages for this reason.
- Split along the headings that already divide the page, and give each new page its own title and a short introduction.
- Keep the old section ids as stubs that link to the new pages, so links from other pages and other sites still reach the content.
- Link between the new pages where one page uses a concept that another page defines.
- Do not delete anything to shorten a page: move it to the page where it belongs.

The `check-page-length` check in [`gha`](https://github.com/Morrison-Lab/gha) ([gha#1377](https://github.com/Morrison-Lab/gha/pull/1377)) warns when a pull request adds to a page that, with its includes expanded, has more than 600 math expressions or 5000 source lines. Those limits are proxies, since the check does not run a browser. It warns only on pages a pull request touches, so split a long page when you next edit it, and do not sweep the others.

# 31 Keep sibling headings to about five

Aim for at most about five sibling headings under one parent heading, and split or group the headings when there are more than seven (Ezra, 2026-11-02). Sibling headings are headings of the same level under the same parent. The top-level headings of a page or book chapter count as siblings under the page.

A reader who scans a list of headings holds the whole list in mind while choosing among them. Miller’s [“magical number seven, plus or minus two”](https://en.wikipedia.org/wiki/The_Magical_Number_Seven,_Plus_or_Minus_Two) is the classic estimate of how many items a person can hold at once. Cowan’s [reconsideration](https://www.cambridge.org/core/journals/behavioral-and-brain-sciences/article/magical-number-4-in-shortterm-memory-a-reconsideration-of-mental-storage-capacity/44023F1147D4A1D44BDC0AD226838496) puts the capacity nearer four chunks. Those estimates concern memory, and a reader can look at a table of contents again, so the limit is a guideline and not a hard rule. Aim for five so that the guideline still holds when a few headings are added later.

- Group related sibling headings under a new parent heading that names what they share.
- Split a page with too many top-level headings into several pages, as in [Split a page before it grows too long](#split-a-page-before-it-grows-too-long).
- Leave a list of parallel parts, such as one heading per lab or per week, alone when the parts have no natural grouping, and say in the introduction how many there are.
- Do not delete a heading to meet the guideline: move its content under the heading it belongs to.

The `check-heading-siblings` check in [`gha`](https://github.com/Morrison-Lab/gha) ([gha#1390](https://github.com/Morrison-Lab/gha/pull/1390)) warns when a pull request adds a heading to a group of more than seven siblings. It warns only on pages a pull request touches, so regroup a page when you next edit it, and do not sweep the others.

# 32 Fold a one-paragraph section into its neighbor

Give a heading to a point that can stand alone, and fold a section of a single short paragraph into the section it qualifies or follows (Ezra, 2026-11-02). A heading that opens a one-paragraph section adds an entry to the list of headings and gives the reader nothing to find there. This is a guideline, not a minimum length: a definition, a distinct step or a named result can be short.

- Merge a caveat into the section it qualifies. If it qualifies a whole list, put it in the closing section on how to use the list.
- Use a callout for an aside to one nearby claim.
- Use a footnote for a minor qualification.
- If a point is one of several parallel points, make it an item in the parent’s list.
- Do not delete the content: move it to the section it belongs to.

# 33 Structure slides for the reader

- Check the rendered slides, not only the web page. Slides need the same boxes and colors on theorem-type and callout divs that the web page has, so a reader can see where a definition ends and the commentary begins.
- Put a list of three or more phrases in a bullet list, as [Put lists in bullet points](../chapters/conciseness.llms.md#put-lists-in-bullet-points) describes.
- Show every proof on the slides. Do not wrap a proof in `{.content-hidden when-format="revealjs"}`. Remove an existing wrapper from a proof when you edit the file for another reason, and do not sweep the others (Ezra, 2026-10-29).
- Put each named example in an `#exm-` div.
- Put on a slide only what you want the audience to look at. Put an example in an `#exm-` div and short commentary in a `#rem-` div, because a `::: notes` div is plain text without a box on the web page.
- Put a long paragraph of commentary in a remark that is also speaker notes: `::: {#rem-name .remark .notes}`. Reveal.js shows it only in speaker view, so the audience does not have to read it, and the web page shows it as a boxed remark. Readers who did not attend the lecture use the web page, so nothing is lost, and nothing is said twice. Give a long paragraph a separate short `#rem-` div only when the slide needs a takeaway to look at.
- Add structure only where content has a shape. Do not put a heading over a single item, or over the same topic as the heading just before it.
- Keep body text off section and title slides. Reveal.js centers those slides vertically and does not scroll them, so long text is clipped at the top and bottom of the screen (observed in lecture slides rendered with Quarto). Put a slide break after the heading and move the text onto content slides.

# 34 Give each concept in a note sheet its own row

A note sheet is a reference table of formulas with brief labels and no prose. This is one case of [building every unit from smaller atomic units](#build-every-unit-from-smaller-atomic-units). Give each concept its own row. A row holds one formula and one short label.

- Never put two definitions in one row.
- Never merge rows to save space. Find the room another way, such as a smaller table font or a second table beside the first.
- Never put notation or assumptions inside a label. Give each assumption its own row, and state the notation once in its own row.
- Write each formula in its most compact form, built from pieces that have their own rows (see [Making expressions concise](../chapters/notation.llms.md#making-expressions-concise)).

The same rule applies to every other reference table, such as a table of notation.

> **NOTE:**
>
> **Example 9 (Splitting a merged row)**  
>
> > ❌ Row: `Dot product, sample mean`, with both formulas in one cell.
> >
> > ✅ Rows: `Dot product` with its formula, then `Sample mean` with its formula.
>
> The ❌ row makes the reader find where one concept ends and the next begins. The ✅ rows let the reader find one formula by one label.

# 35 Order a note sheet from complex sections to atomic rows

A note sheet’s sections and its rows run in opposite directions (Ezra, 2026-11-12):

- **Sections:** put the most complex material first and the most atomic last. Follow, roughly, the order of the notes sites and of the chapters within each, read in reverse: course topics before statistics, then probability, then mathematics. A short table of constants, such as values of logarithms, goes last.
- **Rows within a table:** put the most atomic row first, so each row uses only notation that a row above it defines.
- **Symbols:** name a compound object once from its parts, then write its short symbol in every later row. For example, define the design matrix from the design function once, and write the design matrix alone in the predictions and the normal equations.
- **Layout:** leave no blank space inside the sheet. Do not force a page break; let the sections flow, and keep only a guard that stops a section label from sitting alone at the foot of a page. Leftover space then falls at the end of the sheet.
- **Labels:** put each table’s label closer to its own table than to the table above it.

Atomic rows come first within a table because a reader scans a table from the top, and a row that uses a symbol defined below it sends the reader down the table to find it.

> **NOTE:**
>
> **Example 10 (Reordering a gradient descent table)**  
>
> > ❌ Rows: `Gradient descent update`, `Step size`, `Gradient`, `Power rule`.
> >
> > ✅ Rows: `Power rule`, `Gradient`, `Step size`, `Gradient descent update`.
>
> The ❌ table opens with an update rule that uses the step size and the gradient, which only the rows below it define. In the ✅ table, every row uses only the rows above it.

# 36 Talk about the ideas, not the notes

When a [term](../chapters/defining-terms.llms.md#def-term) is defined on another page or in another site, state the idea in the sentence and link the term. Do not write about where the definition lives.

- Write “the bias of an estimator”, linked to its definition, not “the statistics notes define the bias of an estimator”.
- Do not write “see the probability notes” or “as in our notes”. The link already says where the term lives.
- Name a remark by the idea it holds, such as “Bias of a prediction”, not “Bias of a prediction in the statistics notes”.

Students read concepts, not the structure of the site. A sentence about which notes define a term adds no content, and it goes stale when the definition moves.

The same holds inside a page. Focus on the content of the notes, not on their structure (Ezra, 2026-11-02). When a part refers back to an earlier exercise, example, or result, name the specific objects it reuses instead of pointing at the exercise as a whole. “Use the setup of Exercise 1” makes the reader reread the exercise to learn which data, variables, or model the part needs.

> **NOTE:**
>
> - ❌ “Use the setup of Exercise 1.”
> - ✅ “Use the WCGS data, with outcome $\Outvar$ (coronary heart disease) and predictor $\Predvar$ (behavior pattern) from Exercise 1.”

Keep the cross-reference so that the reader can look up the full statement, and add the names of the reused data, variables, parameters, or model. When the notes define a dataset in its own callout, link the dataset by that callout’s id instead of describing it again, and put the link on the dataset’s name. Quarto renders `@dat-wcgs` as “Dataset 1” in the link text, so write the dataset name as the link text, as in `[WCGS data](#dat-wcgs)`, not “the WCGS data (`@dat-wcgs`)” (Ezra, 2026-11-04; see “Link the words, not a trailing citation” in `chapters/citations-evidence.qmd`). Prefer a self-contained sentence when the part needs only one or two of those objects.

Describe each dataset once, in its own dataset callout with a linkable id (`#dat-<name>`), never in a definition div, because a dataset is not a term with a defining equation (Ezra, 2026-11-02). The callout gives:

- the cited original source;
- the outcome and the predictors, described in words;
- where to get a copy of the data.

# 37 Refute common misconceptions

When a topic has a well-known misconception, state the misconception, say that it is wrong, and explain the correct idea. A text written this way is a *refutation text*. Across two decades of science-education studies, students who read refutation texts were more likely to give up a misconception than students who read an ordinary explanation of the correct idea ([Tippett 2010](#ref-tippett2010)). An explanation that never mentions the misconception lets the reader keep both ideas.

- Name the misconception in the words that students use.
- Say plainly that it is wrong.
- Show why it fails, with an example or a counterexample.
- Put the refutation where the concept is defined or first used, so the reader meets the correction together with the concept.

> **NOTE:**
>
> **Example 11 (Refuting a misreading of the p-value)**  
>
> > ❌ The p-value is the probability, computed under the null hypothesis, of a test statistic at least as extreme as the one observed.
> >
> > ✅ The p-value is the probability, computed under the null hypothesis, of a test statistic at least as extreme as the one observed. A common misreading takes the p-value to be the probability that the null hypothesis is true. That misreading is wrong. The p-value is computed by assuming that the null hypothesis is true, so it cannot also be the probability that the null hypothesis is true.
>
> The ❌ version is correct, but a student who already holds the misreading can fit the definition to it without noticing the conflict.

# 38 Revisit earlier units in later exercises

Include in each problem set a few exercises that use methods from earlier units. Students remember material longer when they meet it again after a delay, and answering questions on earlier material helps more than rereading it. The practice guide from the Institute of Education Sciences rates the evidence for spacing as moderate and for quizzes that re-expose students to key content as strong ([Pashler et al. 2007](#ref-pashler2007), recommendations 1 and 5b). Of ten study techniques in one review, only practice testing and distributed practice earned the top rating of high utility ([Dunlosky et al. 2013](#ref-dunlosky2013)).

- Give each problem set at least one exercise that needs a method from an earlier unit.
- Link that exercise’s hint to the earlier section, as for any other exercise.
- In a review sheet or a quiz, mix questions from several units instead of grouping them by unit.

# 39 Write grading rubrics as checklists

Structure the rubric for most STEM questions as a checklist (Ezra, 2026-10-26). A grader then marks each item as earned or not, and the points are the sum of the earned items. A rubric written as a paragraph makes the grader reconstruct the items, and two graders reconstruct different items.

- Write one checklist item per observable criterion, and put its points first.
- Make the points of the items sum to the question’s points, and state that total in the line that introduces the checklist.
- Write each item so that it is either met or not met. Name the answer or the evidence that meets the criterion, as in “cites the gap between training and CV MSE”.
- List an acceptable alternative answer as a sub-bullet without points under the item it also satisfies, so the items still sum to the question’s points. Do not put the alternative in a separate paragraph.
- Keep the rubric in the solution, after the answer, so a course that withholds solutions from students withholds the rubric too.
- Use another structure when a question has no separable criteria, such as a single holistic judgment of a proof’s rigor.

> **NOTE:**
>
> **Example 12 (A rubric as a checklist)**  
>
> > ❌ Grading (6 points): two for $\vec r$, one for $\dprod{\vx}{\vec r} = 0$, three for “orthogonal” with its link to the normal equation.
>
> > ✅
> >
> > ``` markdown
> > Grading (6 points):
> >
> > - [ ] 2 points: gives $\vresid = \tp{[-1, -1, 1]}$.
> > - [ ] 1 point: computes $\dprod{\vx}{\vresid} = 0$.
> > - [ ] 3 points: says $\vresid$ is orthogonal to $\vx$
> >   and links this orthogonality to the normal equation.
> > ```
>
> The checklist shows the grader each item to mark and lets a script check that the points sum to the total.

# 40 Credit other courses without summarizing them

- Write your own version of another course’s material, and credit the source in a collapsed `.callout-note` titled “Source”, not in running prose. [Adapting another course’s material](../chapters/citations-evidence.llms.md#adapting-another-courses-material) gives the details, including when a `::: notes` div is a safe alternative.
- Quote the primary source directly, and check the wording and page against the original. [Quote the original](../chapters/citations-evidence.llms.md#quote-the-original) explains why.
- Title a section by its topic, not by its author or course. [Put the content first](../chapters/citations-evidence.llms.md#put-the-content-first) explains why.
- Where the book is the subject rather than its authors, name the book by its title, because a bare citation key renders as the author list.

# 41 Finish each unit completely

Complete each sentence, step, [term](../chapters/defining-terms.llms.md#def-term), result and exercise, and do not leave part of it implied, merged into a neighbor, or half done. A reader should never have to finish a unit for you. Several rules in this guide are cases of this one:

- **Sentence.** Write each sentence [in words or in math, not both](../chapters/mathematical-writing.llms.md#write-each-sentence-in-words-or-in-math-not-both), so a hybrid becomes one complete sentence of each kind.
- **Step.** Give each operation [its own line and justification](notation/one-operation-per-step.qmd), and do not “cancel” several operations as one step.
- **Term.** [Give each defined term its own div](#give-each-defined-term-its-own-div), and keep equalities and equivalences out of the definition by stating them as results.
- **Result.** [Restate a result](#build-the-lecture-from-exercises-and-solutions) first derived in a solution as a theorem after the exercise, so the result stands alone.
- **Exercise.** [Split an exercise with several parts](#build-the-lecture-from-exercises-and-solutions), so each exercise asks for one thing.

When you catch yourself taking a shortcut, finish the unit instead. A shortcut saves the writer a few lines and costs every reader the work of rebuilding them.

# 42 Rules that apply to all writing

These rules from the other chapters apply to teaching materials as to any other writing:

- [start a sentence with its subject](../chapters/conciseness.llms.md#lead-with-the-subject);
- [name the referent](../chapters/grammar.llms.md#demonstrative-pronouns) instead of a bare demonstrative;
- [say which thing](../chapters/word-choice.llms.md#say-which-thing);
- [state the literal claim](../chapters/word-choice.llms.md#avoid-vague-and-metaphorical-language) instead of an idiom;
- [avoid clichés](../chapters/avoid-cliches.llms.md).

Back to top

## References

Atkinson, Robert K., Sharon J. Derry, Alexander Renkl, and Donald Wortham. 2000. “Learning from Examples: Instructional Principles from the Worked Examples Research.” *Review of Educational Research* 70 (2): 181–214. <https://doi.org/10.3102/00346543070002181>.

Dunlosky, John, Katherine A. Rawson, Elizabeth J. Marsh, Mitchell J. Nathan, and Daniel T. Willingham. 2013. “Improving Students’ Learning with Effective Learning Techniques.” *Psychological Science in the Public Interest* 14 (1): 4–58. <https://doi.org/10.1177/1529100612453266>.

Freeman, Scott, Sarah L. Eddy, Miles McDonough, et al. 2014. “Active Learning Increases Student Performance in Science, Engineering, and Mathematics.” *Proceedings of the National Academy of Sciences* 111 (23): 8410–15. <https://doi.org/10.1073/pnas.1319030111>.

Grice, H. Paul. 1975. “Logic and Conversation.” In *Syntax and Semantics 3: Speech Acts*, edited by Peter Cole and Jerry L. Morgan. Academic Press.

James, Gareth, Daniela Witten, Trevor Hastie, and Robert Tibshirani. 2021. *An Introduction to Statistical Learning: With Applications in r*. 2nd ed. Springer. <https://doi.org/10.1007/978-1-0716-1418-1>.

Kalyuga, Slava, Paul Ayres, Paul Chandler, and John Sweller. 2003. “The Expertise Reversal Effect.” *Educational Psychologist* 38 (1): 23–31. <https://doi.org/10.1207/S15326985EP3801_4>.

McNamara, Danielle S., Eileen Kintsch, Nancy Butler Songer, and Walter Kintsch. 1996. “Are Good Texts Always Better? Interactions of Text Coherence, Background Knowledge, and Levels of Understanding in Learning from Text.” *Cognition and Instruction* 14 (1): 1–43. <https://doi.org/10.1207/s1532690xci1401_1>.

Pashler, Harold, Patrice M. Bain, Brian A. Bottge, et al. 2007. *Organizing Instruction and Study to Improve Student Learning*. {IES} Practice Guide NCER 2007-2004. National Center for Education Research, Institute of Education Sciences, U.S. Department of Education. <https://ies.ed.gov/ncee/WWC/Docs/PracticeGuide/20072004.pdf>.

Sweller, John. 1988. “Cognitive Load During Problem Solving: Effects on Learning.” *Cognitive Science* 12 (2): 257–85. <https://doi.org/10.1207/s15516709cog1202_4>.

Tippett, Christine D. 2010. “Refutation Text in Science Education: A Review of Two Decades of Research.” *International Journal of Science and Mathematics Education* 8 (6): 951–70. <https://doi.org/10.1007/s10763-010-9203-x>.
