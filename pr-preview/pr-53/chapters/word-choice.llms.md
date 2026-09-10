# Word choice

Code

Published

Last modified: 2026-09-10 21:52:04 (UTC)

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

## 2 Minimize unnecessary jargon

Jargon is vocabulary specific to a field. Some jargon is necessary: a precise technical term can replace a long explanation, and readers in the field expect it. But jargon becomes a barrier when a normal word would work just as well, or when you use a common word with a special, field-specific meaning without defining it.

Prefer normal words used in their usual sense. When you do need a technical term, define it clearly at first use, then keep using the same term rather than switching between synonyms.

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
