# Word choice

Code

Published

Last modified: 2026-10-09 02:02:41 (PDT)

> **NOTE:**
>
> This chapter was written with the assistance of GitHub Copilot, which expanded on outlined ideas and draft notes provided by the author. The content represents the author’s perspective and has been reviewed for accuracy, but the detailed prose was generated through AI assistance.

I recommend trying to replace Latin-derived words and phrases with Old English-derived equivalents ([“Anglish”](https://anglish.org/wiki/Anglish) words) where possible; it generally makes writing simpler and easier to read. Latin words create artificial barriers to understanding. Many Latin-derived words commonly used in scientific writing are composed from roots and affixes which are not commonly used in their basic forms; hence, readers cannot determine the meanings of these words by decomposing them. Instead, they need to memorize the meanings of these words directly. In contrast, the components of composite Anglish words are typically also used individually, so the meanings of the composites can be derived directly. [Table 1](#tbl-latin-anglish-synonyms) lists some common Latinate words and phrases and Anglish alternatives.

| Latin     | Anglish |
|-----------|---------|
| prior to  | before  |
| necessary | needed  |

Table 1: Commonly used Latin words and phrases and Anglish alternatives

See also <https://bark-fa.github.io/Anglish-Translator/>

I am aware that this book, and even this chapter, contains many Latin word choices where there are Anglish alternatives. It is a work in progress, and also, I am not advocating 100% Anglish purity. Use whichever words and phrases you think your readers are most likely to understand easily. Preferring Anglish is merely a useful heuristic to help achieve our ultimate goal of producing clear, easy-to-read writing.

Just to be clear, although I prefer Anglish words, I have no particular preference for Anglish people or culture; it is only a practical consideration, based on the realities of English as the current default language of science and the relatively-recent hybridization of the English language.

## 1 Avoid vague and metaphorical language

Scientific claims should be precise enough to test. Vague or metaphorical phrases can sound evocative, but they leave the reader guessing at the specific quantity or mechanism you mean. Whenever you can, replace a metaphor with the precise term for the thing you are describing. [Table 2](#tbl-vague-precise) lists some common vague phrases and more precise alternatives.

| Vague or metaphorical | More precise                             |
|-----------------------|------------------------------------------|
| infection pressure    | incidence rate                           |
| disease burden        | incidence rate, or prevalence proportion |
| the signal was strong | the effect size was large                |
| a huge effect         | a risk ratio of 4.2                      |

Table 2: Vague or metaphorical phrases and more precise alternatives

The precise alternative is not always shorter, but it tells the reader exactly which quantity you measured, which makes your claim verifiable. When a metaphor genuinely aids intuition, state the precise quantity first, then offer the metaphor as a secondary aid.

Informal idioms are metaphors too. “Kicks in”, “the whole point” and “getting there” stand in for a literal claim; state the claim. [Use literal language](../chapters/inclusive-writing.llms.md#use-literal-language) explains why idioms exclude some readers, and gives more examples.

Some single words cause a different problem. Words such as “obviously”, “clearly” and “trivially” can assert that a claim needs no support instead of supplying any. [Do not substitute flippancy for support](../chapters/citations-evidence.llms.md#do-not-substitute-flippancy-for-support) says when those words are a problem and what to write instead.

## 2 Follow an abstract statement with an example

An abstract or general statement is fine, as long as a concrete example follows it. A vague statement is not: one that names no specific case leaves the reader to invent one, and they may invent the wrong one.

For example, consider this bullet from a list of what machine learning needs:

> statistics to say what a finite sample of data supports

The bullet is general, which is fine. What it lacks is an instance that shows the reader what “supports” means. Adding one turns it into something a reader can check:

> statistics to say what a finite sample of data supports: if most of the spam in a pile of training emails mentions money, statistics tells us whether that pattern should hold for next month’s emails or is a quirk of this particular pile

When you write a general claim, ask what one specific case of it looks like, and put that case right after the claim.

## 3 Say which thing

The word *thing* almost never survives a second look. Name the object, quantity, step or idea it stands for.

> ❌ The main thing to check is the residuals.
>
> ✅ Check the residuals first.

## 4 Minimize unnecessary jargon

Jargon is vocabulary specific to a field. Some jargon is necessary: a precise technical term can replace a long explanation, and readers in the field expect it. But jargon becomes a barrier when a normal word would work just as well, or when you use a common word with a special, field-specific meaning without defining it.

Prefer normal words used in their usual sense. When you do need a technical term, define it clearly at first use, then keep using the same term rather than switching between synonyms. When the field itself uses several names for the concept, list them where you define it (see [Name the synonyms](../chapters/defining-terms.llms.md#guidelines-for-defining-terms)).

> **NOTE:**
>
> **Example 1 (Replacing unnecessary jargon)**  
>
> > ❌ We leveraged a bespoke pipeline to operationalize the ingestion of heterogeneous data modalities.
> >
> > ✅ We wrote a custom program to combine data from several sources.
>
> The plain version is shorter, and it states what was actually done.

For each technical word, ask whether it carries meaning that a plainer word would lose. If it does not, replace it with the plainer word. If it does carry necessary meaning but a reader outside your subfield would not understand it, define it clearly at first use.

Back to top
