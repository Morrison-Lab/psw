# Conciseness

Code

Published

Last modified: 2026-10-05 10:12:30 (UTC)

> **NOTE:**
>
> This chapter was written with the assistance of GitHub Copilot, which expanded on outlined ideas and draft notes provided by the author. The content represents the author’s perspective and has been reviewed for accuracy, but the detailed prose was generated through AI assistance.

Concise writing conveys ideas efficiently, using only the words necessary to communicate meaning clearly. Every word should serve a purpose. Eliminate redundancy and verbosity. When you can express an idea in fewer words without losing meaning, do so.

## 1 Common ways to improve conciseness

- Remove redundant phrases
  - “in order to” → “to”
  - “due to the fact that” → “because”
  - “at this point in time” → “now”
  - “a large number of” → “many”
- Use active voice instead of passive where appropriate
  - “The experiment was conducted by the researchers” → “The researchers conducted the experiment”
- Eliminate unnecessary qualifiers
  - “very”, “really”, “quite” often add little meaning
- Replace wordy phrases with single words
  - “make a decision” → “decide”
  - “give consideration to” → “consider”
  - “is able to” → “can”

Remember: concise writing is not about making every sentence as short as possible, but about removing words that do not contribute to meaning or clarity.

## 2 Lead with the subject

Start a sentence with its subject, not a dependent clause. A leading clause makes the reader hold a condition before knowing what it conditions.

> ❌ When the sample size grows, the estimate becomes more precise.
>
> ✅ The estimate becomes more precise as the sample size grows.

## 3 Limit complex sentence structures

A sentence with several nested dependent clauses forces the reader to hold each unfinished clause in mind until the sentence finally resolves. Compound sentences joined by coordinating conjunctions (*and*, *but*, *or*) are usually fine, and an occasional dependent clause is fine too; the problem is piling several of them into a single sentence.

When a sentence becomes hard to follow, split it into shorter sentences, each carrying one main idea.

> **NOTE:**
>
> **Example 1 (Splitting an over-nested sentence)**  
>
> > ❌ Because the assay, which we had validated the previous year using samples that were collected before the outbreak began, produced results that, although noisy, were consistent with prior reports, we proceeded with the analysis.
> >
> > ✅ We had validated the assay the previous year, using samples collected before the outbreak began. Its results were noisy but consistent with prior reports, so we proceeded with the analysis.
>
> The revised version breaks one deeply nested sentence into two and restores the natural chronological order (validation, then results, then decision), so the reader can absorb each idea before moving on.

## 4 Avoid double negatives

A double negative states a claim by denying its opposite, as in these phrases:

- “not uncommon”
- “not unlikely”
- “not inconsistent with”

The reader has to cancel the two negatives to recover the claim, and the result is often vaguer than the writer intended. State the claim directly. If you mean something weaker than the direct claim, say what the weaker claim is.

A single negative is fine. “We did not reject the null hypothesis” denies one thing, and it is the standard wording for a test result.

> **NOTE:**
>
> **Example 2 (Stating a claim directly)**  
>
> > ❌ The association was not inconsistent with a dose-response relationship.
> >
> > ✅ The association was consistent with a dose-response relationship.
> >
> > ✅ The data do not rule out a dose-response relationship, but they do not support one either.
>
> Writers usually choose “not inconsistent with” to hedge “consistent with”. The first rewrite drops the hedge; the second says what the hedge was for. Choose the one you mean.

## 5 Put lists in bullet points

A list of three or more phrases, written inline and separated by commas, makes the reader count commas to find where each item ends. Write it as a bullet list instead, introduced by a sentence ending in a colon. Use a numbered list when the items are steps done in order.

Bullet lists matter most on slides, where a reader scans a list rather than reading it as a sentence. The rule is one case of a broader preference for more structure: when content has a shape, show that shape in the markup.

A few mechanics to keep in mind when writing one:

- Keep the items grammatically parallel, so each one completes the introducing sentence the same way.
- Leave a blank line before the list; without it, Markdown reads the list as part of the paragraph above.
- Keep a short series of single words inline, such as “R, Julia, or Python”.

> **NOTE:**
>
> **Example 3 (Turning an inline list into bullet points)**  
>
> > ❌ Machine learning combines data to learn from, statistics to say what a finite sample of data supports, and optimization to find the model that fits the data best.
> >
> > ✅ Machine learning combines three components:
> >
> > - data to learn from;
> > - statistics to say what a finite sample of data supports;
> > - optimization to find the model that fits the data best.
>
> The revised version puts each component on its own line, so the reader sees at a glance that there are three.

> **NOTE:**
>
> **Example 4 (Turning inline steps into a numbered list)**  
>
> > ❌ k-means starts with \\k\\ group centers, assigns each point to its nearest center, moves each center to the mean of its points, and repeats until the assignments stop changing.
> >
> > ✅ k-means starts with \\k\\ group centers and repeats two steps until the assignments stop changing:
> >
> > 1.  assign each point to its nearest center;
> > 2.  move each center to the mean of its points.
>
> The numbers show the order of the steps, and the loop condition moves into the introducing sentence.

## 6 Examples of concise writing

Many effective writers throughout history have exemplified the principle of conciseness.

Julius Caesar’s *Commentarii* and phrases like “Veni, vidi, vici” demonstrate the power of brevity ([Wikipedia contributors 2026b](#ref-caesar_gallic)).

Ernest Hemingway was known for his spare, direct prose style. His short sentences and simple words conveyed complex ideas and emotions without unnecessary embellishment ([Wikipedia contributors 2026a](#ref-hemingway_style)).

Back to top

## References

Wikipedia contributors. 2026a. *Ernest Hemingway — Wikipedia, the Free Encyclopedia*. <https://en.wikipedia.org/wiki/Ernest_Hemingway#Writing_style>.

Wikipedia contributors. 2026b. *Julius Caesar — Wikipedia, the Free Encyclopedia*. <https://en.wikipedia.org/wiki/Julius_Caesar#Literary_works>.
