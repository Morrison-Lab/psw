# Avoiding clichés

Code

Published

Last modified: 2026-10-29 00:12:59 (PDT)

> **NOTE:**
>
> This chapter was written with the assistance of GitHub Copilot, which expanded on outlined ideas and draft notes provided by the author. The content represents the author’s perspective and has been reviewed for accuracy, but the detailed prose was generated through AI assistance.

> **NOTE:**
>
> **Definition 1 (Cliché)** A **cliché** is a word, phrase, sentence shape, or formatting habit that a writer uses by reflex rather than choosing it for the sentence at hand.

[Clichés](#def-cliche) recur across unrelated documents, so they make writing read as generic and unconsidered, even when the underlying content is sound.

AI writing assistants often produce these patterns in clusters, and many readers have learned to treat the patterns as signs that a draft was generated and to doubt that its author checked it.

> **NOTE:**
>
> **Definition 2 (AI tell)** An **AI tell** is a [cliché](#def-cliche) that readers associate with text written by an AI assistant.

Human drafts use the same patterns, so this chapter is for any writer, including anyone editing a draft that an assistant helped write. It catalogs the most common clichés so you can remove them.

## 1 Terms used in this chapter

The rest of this chapter uses these [term](../chapters/defining-terms.llms.md#def-term)s.

> **NOTE:**
>
> **Definition 3 (Register)** A writer’s **register** is the level of formality and kind of language they choose for a particular audience and setting, such as conversational, technical, or promotional.

> **NOTE:**
>
> **Definition 4 (Antithesis)** An **antithesis** is a construction that sets two contrasting ideas side by side in parallel form, such as “not X, but Y” or “X, not Y”.

> **NOTE:**
>
> **Definition 5 (Hedge)** A **hedge** is a word or phrase that softens a claim or marks uncertainty about it, such as “may”, “suggests”, or “possibly”.

> **NOTE:**
>
> **Definition 6 (Copula)** A **copula** is a verb, usually a form of “to be”, that links a subject to a description of it, as “is” does in “the estimate is biased”.

> **NOTE:**
>
> **Definition 7 (Participial clause)** A **participial clause** is a clause built on a verb form ending in “-ing” or “-ed” that has no subject of its own, such as “ensuring that the data are clean” at the end of a sentence.

> **NOTE:**
>
> **Definition 8 (Aphorism)** An **aphorism** is a short, quotable sentence that states a general truth or verdict.

## 2 A caveat

No single word or pattern below is wrong on its own. Each has legitimate uses. The signal is clustering and mechanical repetition, the same constructions appearing again and again regardless of what each sentence needs. Edit for the cluster, not the isolated instance, and do not flatten your prose into a voiceless [register](#def-register) trying to avoid every word on a list.

## 3 Overused vocabulary

Some words turn up more often than needed, in stock prose and especially in machine-generated text. Many of them are also Latin-derived words with plainer alternatives, so the advice here overlaps with the [Word choice](../chapters/word-choice.llms.md) chapter. [Table 1](#tbl-overused-vocabulary) lists frequent offenders and plainer replacements.

| Overused | Plainer alternative |
|----|----|
| delve into | examine, study |
| leverage | use |
| utilize | use |
| showcase | show |
| robust | reliable, well-tested |
| seamless | smooth |
| pivotal, crucial | important, key |
| testament to | shows, demonstrates |
| tapestry, landscape, realm | field, area, or name the thing |
| navigate | handle, work through |
| underscore, highlight | show |
| foster, bolster | encourage, strengthen |
| intricate, meticulous | detailed, careful |
| comprehensive | complete, or say what it covers |
| groundbreaking | new, or say what changed |
| unlock, harness, empower | enable, use, allow |
| myriad, plethora | many, or give the count |
| seamless, seamlessly | smoothly, or say what does not break |
| holistic, multifaceted, nuanced | say which parts or distinctions |
| paramount | most important |
| embark, elevate | start, improve |
| streamline | simplify, speed up |
| synergy | say what the combination does |
| actionable | say what action it supports |
| beacon | example, model |
| game-changer, gamechanger, state-of-the-art, cutting-edge | say what changed and by how much |
| ever-evolving | changing |
| treasure trove | collection, source |
| ship(s) with | come(s) with, accompany, are included with |

Table 1: Overused words and plainer alternatives

Whole phrases recur too. “In today’s fast-paced world”, “it is important to note that”, and “plays a vital role in” add length without content; delete them and start with the actual point. Two more families recur, and each member should give way to the literal claim:

- **Stock metaphors:**
  - “journey”
  - “pave the way”
  - “shed light on”
  - “at the heart of”
  - “sits at the intersection of”
  - “cornerstone”
  - “deep dive”, “dive into”
- **Stock framings:**
  - “at its core”
  - “in essence”
  - “boils down to”
  - “when it comes to”
  - “in the realm of”
  - “the key takeaway”
  - “more than just”

## 4 Rhetorical reflexes

Writers reach for a few sentence shapes by reflex, whether or not the content calls for them.

The most recognizable is the *not just X, but Y* [antithesis](#def-antithesis). It promises a profound contrast and usually delivers a hollow one.

> **NOTE:**
>
> **Example 1 (The “not just X, but Y” reflex)**  
>
> > ❌ This method is not just fast — it is transformative.
> >
> > ✅ This method runs in half the time of the previous approach.
>
> The plain version makes a concrete, verifiable claim. The [antithesis](#def-antithesis) frame makes none.

Other reflexes to watch for:

- **Mechanical lists of three.** Three parallel items appear whether or not three is the right count. Use the number of items the point actually needs.
- **Signpost filler.** Phrases like “it is worth noting that” and “importantly” announce a point instead of making it. Cut them and state the point directly.
- **Hedging stacks.** “May potentially suggest” and “could possibly indicate” pile up qualifiers. Keep one honest [hedge](#def-hedge); drop the rest.
- **Hollow summaries.** A closing paragraph that opens with “in conclusion” and only restates what you just said adds nothing. End on a real point.

## 5 Say what it is before what it is not

When a sentence needs both a positive claim and a denial, state the positive claim first. The reader learns what the subject is before being told what to rule out, and the denial then attaches to a claim already made. Opening with the denial makes the reader carry an unsupported denial until the second clause arrives.

> **NOTE:**
>
> **Example 2 (Positive claim, then denial)**  
>
> > ❌ The padding is not a convention, it is an identity.
> >
> > ✅ The padding is an identity, not a convention.
>
> The first version says “not a convention” before the reader knows what the padding is, then repeats the subject and verb to supply the claim. The second version states the claim once and ends on the contrast.
>
> The order matters even when the sentence stays grammatical:
>
> > ❌ The padding is not a convention but an identity.
> >
> > ✅ The padding is an identity, not a convention.
>
> Both are correct sentences; the second puts the claim first. For the first pair, see the [linear regression chapter of lds](https://morrison-lab.github.io/lds/chapters/linear-regression.html).

Often the denial can be cut. Keep it only when the reader might plausibly believe the rejected reading, as with a convention versus an identity. A denial that rejects a view nobody holds is the reframe (see [Clichéd sentence shapes](#clichéd-sentence-shapes)) in miniature: cut it and keep the claim.

## 6 Clichéd sentence shapes

Beyond the [antithesis](#def-antithesis), clichéd drafts lean on a set of sentence shapes that stage a point instead of stating it.

> **NOTE:**
>
> **Example 3 (A staged point)**  
>
> > ❌ It can read like a definition that says nothing. Its use is in what it forces you to name: a project that cannot say what its \\E\\, \\T\\ and \\P\\ are has not yet stated a machine learning problem.
> >
> > ✅ A machine learning problem is stated only when its experience \\E\\, task \\T\\ and performance measure \\P\\ are named.
>
> The first version packs six clichés into two sentences:
>
> - an objection raised only to be knocked down;
> - “It” and “Its” in place of “the definition”;
> - a definition that “forces” the reader, as if it were a person;
> - “you” addressing the reader;
> - a point withheld until after a colon;
> - a closing [aphorism](#def-aphorism).
>
> The second version states the claim once.

Watch for these shapes:

- **The straw objection.** A doubt raised only to be answered (“It may seem trivial. In fact, …”). This is the [antithesis](#def-antithesis) spread over two sentences.
- **The personified abstraction.** A definition, method or result that “forces”, “invites”, “demands” or “asks” something of the reader. Name who does what.
- **The colon reveal.** A setup, then a colon, then the point. Lead with the point.
- **The answered rhetorical question.** “The result? A faster fit.” or “Why does this matter? Because …”. State the result.
- **The throat-clearing lead-in.** “Here’s the thing:”, “Here’s why:”, “The key is”, “Put simply,”. Delete the lead-in.
- **The announced claim.** “It is what makes … valid”, “That is what …”, “This is what …”, and “What the standing grant removes is the need to ask”. The sentence points at its own claim before making it. Make the claim directly: “It is what makes sums over countably infinite partitions valid” becomes “It makes sums over countably infinite partitions valid”, and “What the standing grant removes is the need to ask” becomes “The standing grant removes the need to ask”. The same holds for a subject followed by “is what” and a verb, and for a tail of “, which is why” or “, which is what”: “The risk is what says how a model does on neighborhoods outside the sample” becomes “The risk measures how well a model predicts neighborhoods outside the sample”, “Solving the equation is what this course calls learning” becomes “This course calls solving the equation learning”, “No label was used, which is why the task is unsupervised” becomes “No label was used, so the task is unsupervised”, and “The step is cheap, which is what makes it affordable” becomes “The step is cheap, so it is affordable”. Keep a “, which is why” tail only where a real reason follows that the reader would not guess.
- **The reframe.** “X isn’t about Y; it’s about Z”, “The question isn’t X, it’s Y”, and “not because X, but because Y”. Say what X is about.
- **Fragment emphasis.** “Simple. Fast. Reliable.” Write a sentence with a subject and a verb.
- **The editorializing tail.** A trailing [participial clause](#def-participial-clause) that comments on the sentence: “, highlighting the importance of …”, “, ensuring that …”, “, making it ideal for …”. End the sentence at its claim.
- **The inflated [copula](#def-copula).** “Serves as”, “stands as” and “acts as” where “is” says the same.
- **The range frame.** “From X to Y” listing two extremes instead of naming the scope.
- **The audience frame.** “Whether you’re a student or a researcher, …”. Drop it.
- **The restatement.** “In other words, …” repeating the previous sentence. Keep the clearer of the two.
- **The closing [aphorism](#def-aphorism).** A one-line verdict at the end of a paragraph: “And that’s the point.”, “Simple as that.”, “… has not yet stated a problem.” End on the last piece of content.
- **Sincerity intensifiers.** “Genuinely”, “truly”, “actually”, “really” and “crucially” used to sound earnest. Cut them.
- **Chained connectors.** “Furthermore”, “Moreover” and “Additionally” opening consecutive sentences. Most can go; the order already signals addition.
- **Assistant chatter.** “Let’s dive in”, “Let’s unpack this”, “Great question” and “I hope this helps” belong in a chat window, not a document.

Four more habits blur the referent or delay the claim. Other chapters cover each:

- a demonstrative standing in for its referent ([Demonstrative pronouns](../chapters/grammar.llms.md#demonstrative-pronouns));
- the word “thing” ([Say which thing](../chapters/word-choice.llms.md#say-which-thing));
- a dependent clause opening a sentence ([Lead with the subject](../chapters/conciseness.llms.md#lead-with-the-subject));
- informal idioms ([Avoid vague and metaphorical language](../chapters/word-choice.llms.md#avoid-vague-and-metaphorical-language)).

## 7 Formatting habits

Some clichés are typographic rather than verbal.

- **The em-dash as a default connector.** Some writers, and many AI drafts, use the em-dash to join almost any two clauses. Vary your punctuation: a period, a comma, or a semicolon is often the better fit.
- **Bold-leading bullets everywhere.** A `**Term:** explanation` bullet is fine once, but applying the pattern to every list turns it into a tic. Use it when the label earns emphasis, plain bullets otherwise.
- **Emoji section headers.** Emoji in headings signal a blog post, not a scientific document. Leave them out.
- **Uniform paragraph rhythm.** Paragraphs of near-identical length, each three or four sentences, read as monotonous. Let paragraph length follow the ideas.

## 8 Tone

The last group of clichés is about [register](#def-register).

- **Promotional language.** Words like “powerful”, “game-changing”, and “cutting-edge” sell rather than inform. Describe what the thing does and let the reader judge.
- **Reflexive both-sides framing.** Tacking “however, it is important to consider the other side” onto every claim signals caution without adding content. Use a [hedge](#def-hedge) when the evidence is genuinely mixed, not by habit.
- **Vague universals.** “Studies show” and “experts agree”, with no specific source or number, are clichés precisely because they dodge the evidence. Name the study and give the number, as the [Citations and evidence](../chapters/citations-evidence.llms.md) chapter recommends.

## 9 How to use this list

Write plainly first, then scan the draft once before you share it. Use the same list when you review someone else’s writing.

- One match means little. Several matches in one paragraph, or the same pattern repeated across a document, are the real signal.
- Do not ban a word outright. Keep a word or phrase that is the precise one for the sentence.
- Do not flatten your writing into a voiceless [register](#def-register). Cut the filler and the reflexes, and keep your own voice.
- Skip the scan for code, terse status lines and short conversational replies.
- Do not accuse a writer of using an assistant on the strength of the list. Say which pattern weakens the sentence and how to fix it.

Back to top
