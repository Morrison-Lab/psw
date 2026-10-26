# Slides, posters, and figures

Code

Published

Last modified: 2026-10-25 19:48:50 (PDT)

Talks, posters, and figures carry the same research as a paper, but the reader sees them for less time and cannot reread them. This chapter gives practical rules for each.

## 1 Guidelines for slide decks

When preparing slides for a lab meeting, conference, qualifying exam, or thesis defense, follow these guidelines:

- **Always include slide numbers**: Slide numbers make feedback specific. During questions or a practice run, listeners need to refer back to a slide quickly (e.g., “On slide 14, how was that variable defined?”) instead of describing it or guessing where a topic occurred.
- **Complete, record, and review practice runs**: Before any significant presentation, rehearse the complete talk out loud, record the practice run (with screen recording software, a webcam, or your phone), and watch the recording. The recording shows your pacing, timing, filler words, and transitions, and whether slide text and figures stay legible on screen.
- **One main point per slide**: Limit the cognitive load of each slide. If a slide presents several findings or a complex argument, split it across consecutive slides so the audience can follow each point.
- **Prefer visual evidence**: Audiences cannot read dense paragraphs while listening to a speaker. Use clean charts, diagrams, and annotated figures instead of text-heavy bullet lists.
- **Direct attention**: Use callouts, annotations, or a sequential reveal so the audience looks at the part of the figure you are discussing.
- **Show software working**: When you present a package or a pipeline, show live output, reproducible code, or a screenshot instead of only listing its features.
- **Ensure high contrast and readability**: Use large fonts and high-contrast colors. Check that axis labels, legends, and annotations can be read from the back of a large room or on a low-resolution projector.

## 2 Presentation and poster resources

- How to tell a compelling story in scientific presentations ([Kirchoff 2021](#ref-kirchoff2021))
- The science of storytelling: the David Attenborough style of scientific presentation ([Ratcliff 2023](#ref-ratcliff2023))
- [How to create a better research poster in less time](https://www.youtube.com/watch?v=1RwJbhkCA58) - Mike Morrison’s video introducing the \#betterposter template
- [Towards an “#evenbetterposter”](https://mitcommlab.mit.edu/be/2023/09/27/toward-an-evenbetterposter-improving-the-betterposter-template/) - the MIT Biological Engineering Communication Lab’s improvements to that template

## 3 Show the result in a figure

A figure often shows a pattern, an outlier or a comparison faster and more reliably than a sentence or a table can describe it. So when a result can be drawn, draw it, and use the text to point the reader to what the figure shows.

- Show the data before summarizing them. Summary statistics can hide structure that a plot of the data reveals.
- Put the key result of each section in a figure, and write the section’s text around that figure.
- Make the figure show the comparison the text claims, with the groups, fitted curve or interval on the same axes.
- Say in the text what to look at in the figure (see [Figures and tables](../chapters/paper-organization.llms.md#figures-and-tables)).
- Use a table instead when readers need exact values to look up or compute with.

> **NOTE:**
>
> **Example 1 (Four datasets with the same summaries)** Anscombe ([1973](#ref-anscombe1973)) constructed four small datasets of \\(x, y)\\ pairs ([Wikipedia: Anscombe’s quartet](https://en.wikipedia.org/wiki/Anscombe%27s_quartet)). All four have the same mean of \\x\\ (9), the same mean of \\y\\ (7.5), the same correlation (0.82 to two decimal places) and the same least-squares line, with slope 0.5. A table of these summaries cannot tell the datasets apart. A scatterplot of each can: one is roughly linear with scatter, one follows a smooth curve, one is an exact line with a single outlier, and one has all but one of its points at the same \\x\\.

## 4 Scientific figures

Include a figure wherever one helps a reader see a definition, an example, or a result. Draw a graph for a relationship between quantities, a diagram for a structure or a process, and a plot of the data for a fitted model or an estimate. Add figures to new work as you write it, and add them to existing chapters that lack them. On a website or slide deck, draw a graph as an interactive [plotly](https://plotly.com/r/) figure where feasible, and as a 3D plotly figure where a third dimension shows the idea, such as a surface over two parameters. Keep a static image for the PDF and Word outputs, which cannot show a widget. Give every figure alt text, a numbered caption, and a code chunk that comments what the code does and why.

Lead with a well-labeled figure or table instead of a long paragraph that describes a pipeline or compares groups. Use a diagram for a conceptual model, such as a directed acyclic graph (DAG), and for a process, such as a participant flow (CONSORT) diagram or a workflow schematic. Let the text interpret what the figure shows instead of listing every number the reader can already see in it. Give the key estimates in the text and point to the figure for the rest.

A clear figure lets a reader check a result without help from the text. Before you share a figure:

- Label the x-axis and y-axis clearly.
- Use panel labels when a figure has several subplots.
- Include enough tick marks and tick labels.
- Put the ticks in the original measurement scale of each variable, however the model is parametrized and the axis is spaced. If a fit uses scaled or standardized values, place the ticks at round original values and label them with those, so a horsepower axis reads 50, 100, 150 and 200, not 0 to 1. Report numbers such as an error in the response’s units too.
- Print tick labels as plain or comma-separated numbers, such as 0.001 or 10,000, not in scientific notation. A logarithmic axis is fine. Only the label format matters, so write 1, 10, 100 and 1,000, not 1e+00 through 1e+03. When the numbers are huge or tiny, rescale the units and say so in the axis title, such as “dollars (millions)”.
- Use font sizes that are easy to read without dominating the plot.
- Use colorblind-friendly palettes (see [ColorBrewer](http://colorbrewer2.org/) or [iwanthue](https://medialab.github.io/iwanthue/)). Pair color with shape or line type, so that color is never the only way to tell groups apart. This matters most with more than 3 or 4 groups, because even a colorblind-friendly palette then has pairs of colors that are close together.
- Define colors, shapes, and line types in a legend.
- Put the plot’s legend (the key to colors, shapes and line types) at the bottom of the plot, unless you have a reason to put it elsewhere. A bottom legend leaves the full plot width for the data and gives every figure the same layout.
- In R, draw the static version of a figure with [ggplot2](https://ggplot2.tidyverse.org/), and the interactive version with plotly as described in [Section 4](#sec-scientific-figures). [Present R results with modern packages](../chapters/teaching.llms.md#present-r-results-with-modern-packages) gives the reasons.
- Minimize abbreviations in labels and legends.
- Use transparency to show overlapping data.
- Show measures of precision, such as 95% confidence intervals.

For more:

- Ten Simple Rules for Better Figures ([Rougier et al. 2014](#ref-rougier2014))
- [Tufte CSS](https://edwardtufte.github.io/tufte-css/) - style HTML articles like Edward Tufte’s books and handouts, with sidenotes, typography, and tight integration of graphics with text

## 5 Three-dimensional graphs

A function of two variables, such as a loss or a residual sum of squares as a function of a regression’s intercept and slope, is a surface. A contour plot shows where the function takes given values and is easy to read values from. A three-dimensional surface plot shows the same function as a landscape, so valleys, ridges and minima are visible at once. Show both when the shape of the surface matters.

- Use a 3D plot for a surface, with the function’s value on the vertical axis, and pair it with a contour plot of the same function.
- Do not use 3D for data that are not a surface, such as bars or pie charts: perspective makes lengths and areas harder to compare.
- Choose the viewing angle so that the feature you discuss, such as the minimum, is not hidden, and label all three axes.
- An interactive plot that readers can rotate, such as one made with [plotly](https://plotly.com/r/3d-surface-plots/), helps on the web, but PDF and Word output show no interactive plot, so also provide a static view at a fixed angle (see [Make figures accessible](../chapters/teaching.llms.md#make-figures-accessible)).
- Give a 3D plot alt text that states what the surface looks like, such as “a bowl with its lowest point at …”.

> **NOTE:**
>
> Several of the resource links in the slide deck and figure sections began in the [Benjamin-Chung Lab Manual](https://jadebc.github.io/lab-manual/) by Jade Benjamin-Chung. The section on three-dimensional graphs is original to this guide.

For further reading, see the [Professional Development](https://ucd-serg.github.io/lab-manual/professional-development.html) and [Resources](https://ucd-serg.github.io/lab-manual/resources.html) chapters of the UCD-SERG lab manual.

Back to top

## References

Anscombe, F. J. 1973. “Graphs in Statistical Analysis.” *The American Statistician* 27 (1): 17–21. <https://doi.org/10.1080/00031305.1973.10478966>.

Kirchoff, Bruce. 2021. “How to Tell a Compelling Story in Scientific Presentations.” *Nature* 600 (7890): S88–89. <https://doi.org/10.1038/d41586-021-03603-2>.

Ratcliff, William C. 2023. “The Science of Storytelling: The David Attenborough Style of Scientific Presentation.” *Trends in Molecular Medicine* 29 (9): 675–77. <https://doi.org/10.1016/j.molmed.2023.05.002>.

Rougier, Nicolas P., Michael Droettboom, and Philip E. Bourne. 2014. “Ten Simple Rules for Better Figures.” *PLOS Computational Biology* 10 (9): e1003833. <https://doi.org/10.1371/journal.pcbi.1003833>.
