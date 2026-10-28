# Conciseness

Code

Published

Last modified: 2026-10-28 15:53:12 (PDT)

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
- Use the active voice (see [Write in the active voice](#write-in-the-active-voice))
  - “The experiment was conducted by the researchers” → “The researchers conducted the experiment”
- Eliminate unnecessary qualifiers
  - “very”, “really”, “quite” often add little meaning
- Replace wordy phrases with single words
  - “make a decision” → “decide”
  - “give consideration to” → “consider”
  - “is able to” → “can”

Remember: concise writing is not about making every sentence as short as possible, but about removing words that do not contribute to meaning or clarity. Keep a clause or a technical [term](../chapters/defining-terms.llms.md#def-term) when removing it would lose meaning or precision, and never replace an honest [hedge](../chapters/avoid-cliches.llms.md#def-hedge) with false confidence.

## 2 Make every word tell

Strunk’s rule 13 states the principle: “Vigorous writing is concise. A sentence should contain no unnecessary words, a paragraph no unnecessary sentences, for the same reason that a drawing should have no unnecessary lines and a machine no unnecessary parts.” He adds that this “requires not that the writer make all his sentences short, or that he avoid all detail and treat his subjects only in outline, but that he make every word tell” ([Strunk 1920](#ref-strunk1920elements), rule 13).

Strunk’s examples of expressions that waste words:

- “the question as to whether” → “whether”
- “used for fuel purposes” → “used for fuel”
- “in a hasty manner” → “hastily”
- “owing to the fact that” → “since”
- “the fact that he had not succeeded” → “his failure”
- “His brother, who is a member of the same firm” → “His brother, a member of the same firm”

The same rule applies to statistical writing: “We conducted an analysis of the data to determine whether there is an association between smoking and lung cancer” becomes “We tested whether smoking is associated with lung cancer”.

## 3 Write in the active voice

Use the [active voice](../chapters/defining-terms.llms.md#def-active-voice) unless you have a specific reason to use the passive. An active sentence names who did what, and it is usually shorter. A passive sentence can hide the actor, and the reader then has to guess who made the choice.

Choose the actor by who did the work:

- Use “I” for what the author did, such as a choice the author made or a step in the author’s analysis. With several authors, use “we”.
- Use “we” when the author and the reader work through an argument together, as in “we now compute the gradient”.

> ❌ The minimum was found exactly, and the model was chosen by eye.
>
> ✅ We found the minimum exactly, and we chose the model by eye. (The author and reader work through the example together.)
>
> ✅ I chose the model by eye, because the study had five points. (A single author reports a choice.)

Passive voice is the right choice in a few cases:

- The actor is unknown or does not matter, as in “The samples were contaminated.”
- The receiver of the action is the topic of the paragraph, and the sentence is easier to follow with it as the subject.
- The actor would be a vague “someone” or “one”, and no real person or group acts.

When none of these applies, rewrite the sentence with an active verb.

## 4 Write about the ideas, not the document

A sentence about which part of the document holds a definition adds no content. State the idea and link the [term](../chapters/defining-terms.llms.md#def-term), as [Talk about the ideas, not the notes](../chapters/teaching.llms.md#talk-about-the-ideas-not-the-notes) explains. The ✅ example below omits the link only because this guide has no page for the term.

> ❌ The statistics notes define the training error as the average loss on the fitted data.
>
> ✅ The training error is the average loss on the data used to fit the model.

## 5 Lead with the subject

Start a sentence with its subject, not a dependent clause or a fronted phrase. A leading clause makes the reader hold a condition before knowing what it conditions.

> ❌ When the sample size grows, the estimate becomes more precise.
>
> ✅ The estimate becomes more precise as the sample size grows.

A fronted phrase delays the subject in the same way. Move a phrase such as “in technical writing” or “in this study” after the noun it limits, unless it sets a scope that the whole paragraph depends on.

> ❌ In technical writing, a common cause of garden-path sentences is a missing *that*.
>
> ✅ A common cause of garden-path sentences in technical writing is a missing *that*.

## 6 Limit complex sentence structures

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

## 7 Do not rule out readings no reader would make

A definition says what a [term](../chapters/defining-terms.llms.md#def-term) means. It does not need to list the things the term does not mean, unless a reader is likely to confuse the two. A disclaimer against a reading nobody would make costs the reader a sentence and can plant the confusion it was meant to prevent.

> **NOTE:**
>
> **Example 2 (Dropping a needless disclaimer)**  
>
> > ❌ In this manuscript, TTE means target trial emulation. It does not mean effect of treatment on the treated.
> >
> > ✅ In this manuscript, TTE means target trial emulation.
>
> In causal inference, the average effect of treatment on the treated is usually abbreviated ATT, so a reader is unlikely to read “TTE” that way. The second sentence introduces a meaning that the reader would not otherwise have considered.

Keep a disclaimer when the confusion is real. For example, if “CI” could mean confidence interval or cumulative incidence in the same paper, say which one you mean each time.

The same test applies to explanations: explain what your intended readers do not already know, and leave out what they do. A methods section for statisticians does not need to define a p-value; a report for clinicians might.

## 8 Avoid double negatives

A double negative states a claim by denying its opposite, as in these phrases:

- “not uncommon”
- “not unlikely”
- “not inconsistent with”

The reader has to cancel the two negatives to recover the claim, and the result is often vaguer than the writer intended. State the claim directly. If you mean something weaker than the direct claim, say what the weaker claim is.

A single negative is fine. “We did not reject the null hypothesis” denies one thing, and it is the standard wording for a test result.

> **NOTE:**
>
> **Example 3 (Stating a claim directly)**  
>
> > ❌ The association was not inconsistent with a dose-response relationship.
> >
> > ✅ The association was consistent with a dose-response relationship.
> >
> > ✅ The data do not rule out a dose-response relationship, but they do not support one either.
>
> Writers usually choose “not inconsistent with” to [hedge](../chapters/avoid-cliches.llms.md#def-hedge) “consistent with”. The first rewrite drops the hedge; the second says what the hedge was for. Choose the one you mean.

## 9 Write about the subject, not about the text

Some sentences describe the document instead of its subject. They do one of these things:

- announce that a point is coming;
- rank a point;
- comment on how a point changes what follows.

Each one makes the reader read a sentence before reaching the content it promises. State the content directly. [Rhetorical reflexes](../chapters/avoid-cliches.llms.md#rhetorical-reflexes) lists related signpost phrases, such as “it is worth noting that”.

> **NOTE:**
>
> **Example 4 (Replacing a sentence about the text)**  
>
> > ❌ One trap worth naming: the sample excludes people who moved.
> >
> > ✅ The sample excludes people who moved.
> >
> > ❌ The most important point is that the survey was voluntary.
> >
> > ✅ The survey was voluntary.
> >
> > ❌ One documented detail changes how the rest of this section reads: the survey was voluntary.
> >
> > ✅ The survey was voluntary, so the estimates apply only to people who chose to respond.
>
> In the third pair, the rewrite states what the detail changes instead of saying that it changes something.

## 10 Let a self-describing link stand alone

A URL often shows the name of what it points to and where that thing lives. When it does, do not also spell out that name or host around the link. The reader would read the same facts twice.

> **NOTE:**
>
> **Example 5 (Dropping prose that repeats a URL)**  
>
> > ❌ For an example, see my public notes site Morrison-Lab/sds on GitHub (<https://github.com/Morrison-Lab/sds>).
> >
> > ✅ For an example, see <https://github.com/Morrison-Lab/sds>.
>
> The URL already says that the site is on GitHub and that the repository is `Morrison-Lab/sds`.

Keep a descriptive label when the URL does not show what it points to, such as a DOI or a shortened link.

## 11 Keep the writer out of the way

Mention yourself only where a sentence needs an actor, such as a request, an offer, or a decision you made. Elsewhere, make the subject of the sentence the thing the reader cares about. Extra references to the writer turn attention from the content to the person.

> **NOTE:**
>
> **Example 6 (Moving the focus from the writer to the subject)**  
>
> > ❌ I tested this in a small private project, and I found that CI works well.
> >
> > ✅ CI works well in a small private test project.
> >
> > ❌ My build and review tools run on cloud services.
> >
> > ✅ The build and review tools run on cloud services.
>
> A request still needs its actor: “Could the space be increased, or would you allow me to register my own runner?” keeps “me” because the request is about the writer’s runner.

## 12 Do not overexplain

Say what the reader needs, and stop. Cut a qualifier, a restatement or a reason that the words before it already imply.

> **NOTE:**
>
> **Example 7 (Cutting a clause the term already implies)**  
>
> > ❌ Estimated mean: the estimated value of the mean, whether or not it is a mean of an outcome.
> >
> > ✅ Estimated mean: the estimated value of the mean.
>
> The first version adds a clause that “the mean” already covers. The second is complete.

## 13 Put lists in bullet points

A list of three or more phrases, written inline and separated by commas, makes the reader count commas to find where each item ends. Write it as a bullet list instead, introduced by a sentence ending in a colon. Use a numbered list when the items are steps done in order.

A run of parallel sentences is a list too, even with only two items. The common case is a set of resources, such as videos or readings, where each sentence names one resource and links to it. Put each sentence in its own bullet, so the reader sees how many resources there are and where each one starts.

A case analysis is a parallel run too. Write one bullet per case, and begin each with a bold label that names the case.

Bullet lists matter most on slides, where a reader scans a list rather than reading it as a sentence. The rule is one case of a broader preference for more structure: when content has a shape, show that shape in the markup.

A few mechanics to keep in mind when writing a bullet list:

- Keep the items grammatically parallel, so each one completes the introducing sentence the same way.
- Leave a blank line before the list; without it, Markdown reads the list as part of the paragraph above.
- Keep a short series of single words inline, such as “R, Julia, or Python”.

> **NOTE:**
>
> **Example 8 (Turning an inline list into bullet points)**  
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
> **Example 9 (Turning a run of resource sentences into bullet points)**  
>
> > ❌ Hastie and Tibshirani [extend least squares to several predictors](https://www.youtube.com/watch?v=o9hoLdylWKo). Starmer explains [multiple regression](https://www.youtube.com/watch?v=zITIFTsivN8).
> >
> > ✅ Videos:
> >
> > - Hastie and Tibshirani [extend least squares to several predictors](https://www.youtube.com/watch?v=o9hoLdylWKo).
> > - Starmer explains [multiple regression](https://www.youtube.com/watch?v=zITIFTsivN8).
>
> For the video notes this example comes from, see the DATA 571 chapter on [linear regression](https://morrison-lab.github.io/lds/chapters/linear-regression.html). Each bullet holds one video, so the reader can pick one without parsing the paragraph.

> **NOTE:**
>
> **Example 10 (Turning inline steps into a numbered list)**  
>
> > ❌ k-means starts with \\k\\ group centers, assigns each point to its nearest center, moves each center to the mean of its points, and repeats until the assignments stop changing.
> >
> > ✅ k-means starts with \\k\\ group centers and repeats two steps until the assignments stop changing:
> >
> > 1.  assign each point to its nearest center;
> > 2.  move each center to the mean of its points.
>
> The numbers show the order of the steps, and the loop condition moves into the introducing sentence.

> **NOTE:**
>
> **Example 11 (Turning a paragraph of cases into bullet points)**  
>
> > ❌ At \\z = 0\\ the slope is \\\dexpitf{0} = 1/4\\. At \\z = 2\\ it is \\\dexpitf{2} \approx 0.105\\. At \\z = -2\\ it is \\\dexpitf{-2} \approx 0.105\\.
> >
> > ✅ The slope \\\dexpitf{z}\\ at three values of \\z\\:
> >
> > - **\\z = 0\\:** \\\dexpitf{0} = 1/4\\.
> > - **\\z = 2\\:** \\\dexpitf{2} \approx 0.105\\.
> > - **\\z = -2\\:** \\\dexpitf{-2} \approx 0.105\\.
>
> The labels let the reader find a case at a glance, and the bullets show that there are three.

## 14 Write to communicate, not to impress

Many rules in this chapter serve one aim: the reader should reach your meaning without extra work. A long word, a nested sentence or a crowded paragraph can make a text sound more formal, but it can add work for the reader without adding to the meaning. So at each level of the text, choose the plainest form that still carries the full meaning:

- for words, see [Word choice](../chapters/word-choice.llms.md);
- for sentences, see [Limit complex sentence structures](#limit-complex-sentence-structures);
- for paragraphs, give each one a single topic, as [Keep a predictable structure](../chapters/inclusive-writing.llms.md#keep-a-predictable-structure) says;
- for mathematics, see [Making expressions concise](../chapters/notation.llms.md#making-expressions-concise).

> **NOTE:**
>
> **Example 12 (Rewriting a sentence written to sound formal)**  
>
> > ❌ It is imperative to acknowledge that, notwithstanding the methodological constraints that were encountered in the course of the study, the findings that were obtained are indicative of a substantial association between the exposure and the outcome.
> >
> > ✅ Despite the limits of the study’s methods, the results suggest a substantial association between the exposure and the outcome.
>
> The ✅ version drops “It is imperative to acknowledge that”, which only says that the next claim matters. It replaces “notwithstanding” with “despite” and “are indicative of” with “suggest”, as [Replacing unnecessary jargon](../chapters/word-choice.llms.md#exm-jargon) does for single words. It puts the noun phrases in plainer words too: “methodological constraints” becomes “the limits of the study’s methods”, and “findings” becomes “results”. It also removes the relative clauses “that were encountered in the course of the study” and “that were obtained”, because a study’s constraints are ones it faced, and its findings are ones it obtained.

## 15 Examples of concise writing

Many effective writers throughout history have exemplified the principle of conciseness.

Julius Caesar’s *Commentarii* and phrases like “Veni, vidi, vici” demonstrate the power of brevity ([Wikipedia contributors 2026b](#ref-caesar_gallic)).

Ernest Hemingway was known for his spare, direct prose style. His short sentences and simple words conveyed complex ideas and emotions without unnecessary embellishment ([Wikipedia contributors 2026a](#ref-hemingway_style)).

Back to top

## References

Strunk, William, Jr. 1920. *The Elements of Style*. Harcourt, Brace; Howe. <https://www.gutenberg.org/ebooks/37134>.

Wikipedia contributors. 2026a. *Ernest Hemingway — Wikipedia, the Free Encyclopedia*. <https://en.wikipedia.org/wiki/Ernest_Hemingway#Writing_style>.

Wikipedia contributors. 2026b. *Julius Caesar — Wikipedia, the Free Encyclopedia*. <https://en.wikipedia.org/wiki/Julius_Caesar#Literary_works>.
