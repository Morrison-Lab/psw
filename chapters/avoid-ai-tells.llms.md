# Avoiding AI tells

Code

Published

Last modified: 2026-10-05 07:15:27 (UTC)

> **NOTE:**
>
> This chapter was written with the assistance of GitHub Copilot, which expanded on outlined ideas and draft notes provided by the author. The content represents the author’s perspective and has been reviewed for accuracy, but the detailed prose was generated through AI assistance.

AI writing assistants have a recognizable house style. When you let one draft your prose, it leaves fingerprints: words, sentence shapes, and formatting habits that recur across unrelated documents. Readers who have seen enough machine-generated text learn to spot these patterns, and once they do, the writing reads as generic and unconsidered, even when the underlying content is sound.

This chapter catalogs the most common tells so you can remove them. It is written mainly for AI assistants drafting scientific prose, but it is just as useful for humans editing AI-assisted drafts.

One caveat first: no single word or pattern below is wrong on its own. Each has legitimate uses. The signal is clustering and mechanical repetition, the same constructions appearing again and again regardless of what the sentence needs. Edit for the cluster, not the isolated instance, and do not flatten your prose into a voiceless register trying to avoid every word on a list.

## 1 Overused vocabulary

Some words appear far more often in machine-generated text than in careful human writing. Many are also Latin-derived words with plainer alternatives, so the advice here overlaps with the [Word choice](../chapters/word-choice.llms.md) chapter. [Table 1](#tbl-ai-vocabulary) lists frequent offenders and plainer replacements.

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

Table 1: Words overused by AI assistants and plainer alternatives

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

## 2 Rhetorical reflexes

AI assistants reach for a few sentence shapes by reflex, whether or not the content calls for them.

The strongest tell is the *not just X, but Y* antithesis. It promises a profound contrast and usually delivers a hollow one.

> **NOTE:**
>
> **Example 1 (The “not just X, but Y” reflex)**  
>
> > ❌ This method is not just fast — it is transformative.
> >
> > ✅ This method runs in half the time of the previous approach.
>
> The plain version makes a concrete, verifiable claim. The antithesis frame makes none.

Other reflexes to watch for:

- **Mechanical lists of three.** Three parallel items appear whether or not three is the right count. Use the number of items the point actually needs.
- **Signpost filler.** Phrases like “it is worth noting that” and “importantly” announce a point instead of making it. Cut them and state the point directly.
- **Hedging stacks.** “May potentially suggest” and “could possibly indicate” pile up qualifiers. Keep one honest hedge; drop the rest.
- **Hollow summaries.** A closing paragraph that opens with “in conclusion” and only restates what you just said adds nothing. End on a real point.

## 3 Clichéd sentence shapes

Beyond the antithesis, AI drafts lean on a set of sentence shapes that stage a point instead of stating it.

> **NOTE:**
>
> **Example 2 (A staged point)**  
>
> > ❌ It can read like a definition that says nothing. Its use is in what it forces you to name: a project that cannot say what its \\E\\, \\T\\ and \\P\\ are has not yet stated a machine learning problem.
> >
> > ✅ A machine learning problem is stated only when its experience \\E\\, task \\T\\ and performance measure \\P\\ are named.
>
> The first version packs six tells into two sentences:
>
> - an objection raised only to be knocked down;
> - “It” and “Its” in place of “the definition”;
> - a definition that “forces” the reader, as if it were a person;
> - “you” addressing the reader;
> - a point withheld until after a colon;
> - a closing aphorism.
>
> The second version states the claim once.

Watch for these shapes:

- **The straw objection.** A doubt raised only to be answered (“It may seem trivial. In fact, …”). This is the antithesis spread over two sentences.
- **The personified abstraction.** A definition, method or result that “forces”, “invites”, “demands” or “asks” something of the reader. Name who does what.
- **The colon reveal.** A setup, then a colon, then the point. Lead with the point.
- **The answered rhetorical question.** “The result? A faster fit.” or “Why does this matter? Because …”. State the result.
- **The throat-clearing lead-in.** “Here’s the thing:”, “Here’s why:”, “The key is”, “Put simply,”. Delete the lead-in.
- **The reframe.** “X isn’t about Y; it’s about Z”, “The question isn’t X, it’s Y”, and “not because X, but because Y”. Say what X is about.
- **Fragment emphasis.** “Simple. Fast. Reliable.” Write a sentence with a subject and a verb.
- **The editorializing tail.** A trailing participial clause that comments on the sentence: “, highlighting the importance of …”, “, ensuring that …”, “, making it ideal for …”. End the sentence at its claim.
- **The inflated copula.** “Serves as”, “stands as” and “acts as” where “is” says the same.
- **The range frame.** “From X to Y” listing two extremes instead of naming the scope.
- **The audience frame.** “Whether you’re a student or a researcher, …”. Drop it.
- **The restatement.** “In other words, …” repeating the previous sentence. Keep the clearer of the two.
- **The closing aphorism.** A one-line verdict at the end of a paragraph: “And that’s the point.”, “Simple as that.”, “… has not yet stated a problem.” End on the last piece of content.
- **Sincerity intensifiers.** “Genuinely”, “truly”, “actually”, “really” and “crucially” used to sound earnest. Cut them.
- **Chained connectors.** “Furthermore”, “Moreover” and “Additionally” opening consecutive sentences. Most can go; the order already signals addition.
- **Assistant chatter.** “Let’s dive in”, “Let’s unpack this”, “Great question” and “I hope this helps” belong in a chat window, not a document.

Four more habits blur the referent or delay the claim. Other chapters cover each:

- a demonstrative standing in for its referent ([Demonstrative pronouns](../chapters/grammar.llms.md#demonstrative-pronouns));
- the word “thing” ([Say which thing](../chapters/word-choice.llms.md#say-which-thing));
- a dependent clause opening a sentence ([Lead with the subject](../chapters/conciseness.llms.md#lead-with-the-subject));
- informal idioms ([Avoid vague and metaphorical language](../chapters/word-choice.llms.md#avoid-vague-and-metaphorical-language)).

## 4 Formatting habits

Some tells are typographic rather than verbal.

- **The em-dash as a default connector.** AI text reaches for the em-dash to join almost any two clauses. Vary your punctuation: a period, a comma, or a semicolon is often the better fit.
- **Bold-leading bullets everywhere.** A `**Term:** explanation` bullet is fine once, but applying the pattern to every list turns it into a tic. Use it when the label earns emphasis, plain bullets otherwise.
- **Emoji section headers.** Emoji in headings signal a blog post, not a scientific document. Leave them out.
- **Uniform paragraph rhythm.** Paragraphs of near-identical length, each three or four sentences, read as machine-paced. Let paragraph length follow the ideas.

## 5 Tone

The last group of tells is about register.

- **Promotional language.** Words like “powerful”, “game-changing”, and “cutting-edge” sell rather than inform. Describe what the thing does and let the reader judge.
- **Reflexive both-sides framing.** Tacking “however, it is important to consider the other side” onto every claim signals caution without adding content. Hedge when the evidence is genuinely mixed, not by habit.
- **Vague universals.** “Studies show” and “experts agree”, with no specific source or number, are tells precisely because they dodge the evidence. Name the study and give the number, as the [Citations and evidence](../chapters/citations-evidence.llms.md) chapter recommends.

A short scan for these patterns before you submit a draft catches most of them. Cut the filler and the reflexes, but keep your own voice: the goal is clear, honest prose, not prose that has been sanded smooth.

Back to top
