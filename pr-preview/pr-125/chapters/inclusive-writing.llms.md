# Writing for every reader

Code

Published

Last modified: 2026-10-08 08:16:04 (UTC)

> **NOTE:**
>
> This chapter was written with the assistance of GitHub Copilot, which expanded on outlined ideas and draft notes provided by the author. The content represents the author’s perspective and has been reviewed for accuracy, but the detailed prose was generated through AI assistance.

Write simple, direct prose that every reader can follow. Some of your readers learned English as a second language. Some are neurodiverse. For example, some autistic readers take jokes and similes literally ([W3C Cognitive and Learning Disabilities Accessibility Task Force 2021](#ref-w3c_coga), Use Literal Language). Some readers have a memory impairment, so a long sentence with nested clauses is hard for them to follow ([W3C Cognitive and Learning Disabilities Accessibility Task Force 2021](#ref-w3c_coga), Avoid Double Negatives or Nested Clauses). Plain wording helps these readers most, and it helps every other reader too.

This is an equity issue. Idioms, slang, clichés, unnecessary jargon and other specialized language exclude readers who do not share the writer’s background. Those readers must first work out what the words mean, and only then can they think about the ideas. The plain language guidelines put it this way: “The first rule of plain language is: **write for your audience**” ([Plain Language Action and Information Network 2026](#ref-plainlanguage_gov), Audience). Your audience includes all of these readers.

The rules in this chapter come mostly from three sources:

- the W3C guidance on making content usable for people with cognitive and learning disabilities ([W3C Cognitive and Learning Disabilities Accessibility Task Force 2021](#ref-w3c_coga));
- the US government’s plain language guidelines ([Plain Language Action and Information Network 2026](#ref-plainlanguage_gov));
- the GitHub Docs style guide, which is written for a global audience and for translation ([GitHub 2026a](#ref-github_docs_style), [2026b](#ref-github_docs_translation)).

Each rule below comes with an example. Several rules extend sections in other chapters, and they link to those sections instead of repeating them.

## 1 Use literal language

Say exactly what you mean. Do not use idioms, clichés, slang, jokes or sarcasm. An idiom is a phrase whose meaning is different from the meanings of its words, such as “blow up” for “become very large”. A reader who has not met the phrase before has to guess what it means. A reader who takes words literally may guess wrong. The W3C guidance says: “Use literal and concrete language” and “Do not use metaphors and similes unless you include an explanation” ([W3C Cognitive and Learning Disabilities Accessibility Task Force 2021](#ref-w3c_coga), Use Literal Language). GitHub Docs says: “Avoid turns of phrase, idioms, and slang that are specific to a particular region or country” ([GitHub 2026a](#ref-github_docs_style)).

> ❌ Which way does this course lean?
>
> ✅ Does this course put prediction or inference first?

The word “lean” in the first version is an idiom. The second version asks the literal question.

[Table 1](#tbl-idioms-literal) lists more examples from statistics and machine learning.

| Idiom, cliché or slang | Literal wording |
|----|----|
| the estimates blow up | the estimates become very large |
| the model is a black box | we cannot read the model’s decision rule from its parameters |
| flexibility buys lower bias | more flexible models tend to have lower bias |
| a ton of data | a large data set |
| the method falls flat on small samples | the method has high error on small samples |
| at the end of the day, we want low test error | our goal is low test error |

Table 1: Idioms, clichés and slang, with literal alternatives

Idioms are a kind of metaphor, so [Avoid vague and metaphorical language](../chapters/word-choice.llms.md#avoid-vague-and-metaphorical-language) applies to them too, and gives more examples.

## 2 Use common words, and define technical ones

Use the most common word that is still correct. The W3C guidance says to “Use common and clear words in all content” and to “Remove or explain uncommon acronyms, abbreviations, and jargon” ([W3C Cognitive and Learning Disabilities Accessibility Task Force 2021](#ref-w3c_coga), Use Clear Words).

> ❌ We utilize a heuristic to ascertain the optimal number of clusters.
>
> ✅ We use the “elbow” method to choose the number of clusters: we plot the within-cluster sum of squares against the number of clusters, and pick the point where the curve stops falling steeply.

The second version uses common words, and it says what the method does instead of calling it a “heuristic”.

Some technical terms are necessary. [Minimize unnecessary jargon](../chapters/word-choice.llms.md#minimize-unnecessary-jargon) explains when to keep a technical term and how to define it.

## 3 Say when a common word has a technical meaning

Many statistical terms are everyday words with a different technical meaning. Examples include *bias*, *significant*, *confidence*, *normal*, *regression*, *error* and *likelihood*. A reader who knows only the everyday meaning will read the sentence as a different claim. The W3C guidance says: “Do not invent new words or give words new meanings” and “Do not expect people to learn new meanings for words just to use your content” ([W3C Cognitive and Learning Disabilities Accessibility Task Force 2021](#ref-w3c_coga), Use Clear Words). A technical course needs these terms. So say that the technical meaning differs, and give the technical meaning in plain words.

> ❌ The model is biased.
>
> ✅ The model is biased: at a given input, its average prediction over many training sets differs from the true mean outcome at that input. (Here *bias* has its statistical meaning; it does not mean the model is unfair.)

Once you define the term, use the same word for the same idea every time. The plain language guidelines say that using a different term “may cause the reader to wonder if you’re referring to the same group” ([Plain Language Action and Information Network 2026](#ref-plainlanguage_gov), Use the same terms consistently).

> ❌ We split the data into a training set and a test set. We then compute the error on the held-out data.
>
> ✅ We split the data into a training set and a test set. We then compute the error on the test set.

## 4 Spell out abbreviations

Write out an abbreviation the first time you use it, or replace it with a short name. The plain language guidelines say abbreviations “constantly require the reader to look back to earlier pages” ([Plain Language Action and Information Network 2026](#ref-plainlanguage_gov), Minimize abbreviations). Do not use the Latin abbreviations *e.g.* and *i.e.*: “Few people know what they mean, and they often confuse the two” ([Plain Language Action and Information Network 2026](#ref-plainlanguage_gov), Use examples). Write “for example” or “that is”.

> ❌ Tree ensembles, e.g. RF and GBM, usually reduce the MSE of a single CART.
>
> ✅ Ensembles of trees, for example random forests and boosted trees, usually have lower mean squared error than a single regression tree.

## 5 Write positive statements

State what is true, not what is not false. A double negative makes the reader turn “no” into “yes” before they can use the sentence. The W3C guidance says not to “use a double negative to express a positive” ([W3C Cognitive and Learning Disabilities Accessibility Task Force 2021](#ref-w3c_coga), Avoid Double Negatives or Nested Clauses), and the plain language guidelines give the same advice ([Plain Language Action and Information Network 2026](#ref-plainlanguage_gov), Use positive language).

> ❌ We do not reject the null hypothesis unless the p-value is not above 0.05.
>
> ✅ We reject the null hypothesis when the p-value is 0.05 or less.

## 6 Rewrite noun strings and hidden verbs

A noun string is a row of nouns that act as adjectives, such as “test set error rate estimate”. The reader has to work out which noun modifies which. A hidden verb (also called a *nominalization*) is a verb turned into a noun, such as “perform an estimation of” in place of “estimate”. GitHub Docs advises against both. It says noun strings “can lead to incorrect translations”, and nominalizations make sentences “longer, harder to understand, and harder to translate” ([GitHub 2026a](#ref-github_docs_style)). The plain language guidelines say to open up a noun string by “using more prepositions and articles” ([Plain Language Action and Information Network 2026](#ref-plainlanguage_gov), Avoid noun strings).

> ❌ We report the test set error rate estimate variance.
>
> ✅ We report the variance of the estimated error rate on the test set.

> ❌ We performed an evaluation of the model’s prediction accuracy.
>
> ✅ We evaluated how accurately the model predicts.

## 7 Put one idea in each sentence

Long sentences with nested clauses make the reader hold several unfinished ideas at once. That is hard for readers with a memory impairment ([W3C Cognitive and Learning Disabilities Accessibility Task Force 2021](#ref-w3c_coga), Keep Text Succinct), and for readers who are translating as they go. The W3C guidance says: “Use short sentences. Have only one point per sentence” ([W3C Cognitive and Learning Disabilities Accessibility Task Force 2021](#ref-w3c_coga), Keep Text Succinct). It also says that “Sentences that have more than one point usually have more than one linking word such as ‘and’ or ‘but’”.

> ❌ Because the lasso penalty, which is the sum of the absolute values of the coefficients, is not smooth at zero, some coefficients, especially when \\\lambda\\ is large, are set exactly to zero.
>
> ✅ The lasso penalty is the sum of the absolute values of the coefficients. The absolute value function is not smooth at zero. Because of this, the lasso sets some coefficients exactly to zero. Usually, more coefficients are zero when \\\lambda\\ is larger.

[Limit complex sentence structures](../chapters/conciseness.llms.md#limit-complex-sentence-structures) and [Lead with the subject](../chapters/conciseness.llms.md#lead-with-the-subject) give more examples.

## 8 State every step and every point

Write every step of an argument or a procedure. Do not leave a step for the reader to fill in, and do not hint at a point you could state. The W3C guidance says readers may need “definitions or explanations for implied or ambiguous information” such as jokes, sarcasm and metaphors ([W3C Cognitive and Learning Disabilities Accessibility Task Force 2021](#ref-w3c_coga), Explain Implied Content).

> ❌ Of course, nobody would use accuracy here.
>
> ✅ Do not judge this classifier by accuracy alone. Only 1% of the emails are spam, so a classifier that labels every email “not spam” has 99% accuracy but finds no spam.

The first version implies a reason and never states it. A reader who does not already know the reason learns nothing. Words like “obviously” and “clearly” hide a step in the same way; [Do not substitute flippancy for support](../chapters/citations-evidence.llms.md#do-not-substitute-flippancy-for-support) explains what to write instead.

## 9 Say what numbers and symbols mean

Do not leave a number or a formula for the reader to interpret. Some readers find numbers hard to process ([W3C Cognitive and Learning Disabilities Accessibility Task Force 2021](#ref-w3c_coga), Provide Alternatives for Numerical Concepts). Text-to-speech tools can also read numbers and symbols wrongly ([W3C Cognitive and Learning Disabilities Accessibility Task Force 2021](#ref-w3c_coga), Use Clear, Unambiguous Formatting and Punctuation). The CDC Clear Communication Index scores a document on whether it explains what its numbers mean ([Centers for Disease Control and Prevention 2026](#ref-cdc_ccindex)).

For a number, say what it means in words:

> ❌ The AUC is 0.83.
>
> ✅ The AUC is 0.83. That is, if we pick one spam email and one non-spam email at random, the model gives the spam email the higher score 83% of the time.

For a formula, say each symbol’s meaning in words at first use, and then say what the formula does in a sentence:

> ❌ \\\hat\beta = (X^\top X)^{-1} X^\top y\\.
>
> ✅ Let \\X\\ be the \\n \times p\\ matrix of inputs, with linearly independent columns, and let \\y\\ be the vector of \\n\\ outcomes. Let \\X^\top\\ be the transpose of \\X\\. The least squares estimate of the coefficients is \\\hat\beta = (X^\top X)^{-1} X^\top y\\. In words, \\\hat\beta\\ is the coefficient vector that makes the sum of squared prediction errors on the training data as small as possible.

The [Mathematical notation](../chapters/notation.llms.md) chapter has more rules for notation.

## 10 Use examples that every reader knows

Choose examples that do not need a particular culture, country, sport or hobby to understand. GitHub Docs says to “Use examples that are generic and can be understood by most people” and to “Avoid examples that are controversial or culturally specific to a group” ([GitHub 2026b](#ref-github_docs_translation)).

> ❌ Predict a quarterback’s passer rating from his completion percentage.
>
> ✅ Predict whether an email is spam from the words it contains.

The first example needs knowledge of American football before the reader can think about the statistics. It also assumes the player is a man. GitHub Docs also says to “Avoid gender-specific words” ([GitHub 2026b](#ref-github_docs_translation)). Use “they” for a person whose gender you do not know:

> ❌ Each student submits his code by Friday.
>
> ✅ Each student submits their code by Friday.

## 11 Keep a predictable structure

Readers find text easier to follow when each part has one purpose, and when parts of the same kind always look the same. The W3C guidance says to “Keep paragraphs short. Have only one topic in each paragraph”, to “Try to have the aim of the paragraph or chunk at the beginning”, and to “Use bulleted or numbered lists” and “short descriptive headings” ([W3C Cognitive and Learning Disabilities Accessibility Task Force 2021](#ref-w3c_coga), Keep Text Succinct). It also recommends a short summary at the start of a long document ([W3C Cognitive and Learning Disabilities Accessibility Task Force 2021](#ref-w3c_coga), Provide Summary of Long Documents and Media). In course materials, the same advice applies across pages: the Cornell Center for Teaching Innovation suggests “a predictable weekly structure and consistent layout” ([Cornell University Center for Teaching Innovation 2026](#ref-cornell_udl)).

> ❌ A paragraph that starts with the history of the method, moves on to its assumptions, and states its main use in the last sentence.
>
> ✅ A paragraph that starts with “Use cross-validation to choose a tuning parameter”, and then explains how.

[Put lists in bullet points](../chapters/conciseness.llms.md#put-lists-in-bullet-points) and the [Paper organization](../chapters/paper-organization.llms.md) chapter cover lists and headings in more detail.

## 12 Present ideas in more than one form

Readers differ in what helps them understand. Universal Design for Learning (UDL) is a framework for teaching diverse learners. The Cornell Center for Teaching Innovation describes UDL as giving students several ways to “Deliver content (text, audio, visuals, notes)” ([Cornell University Center for Teaching Innovation 2026](#ref-cornell_udl)). For a technical idea, give at least two of these forms: a sentence, a formula, a figure, a worked example with numbers, or code.

> ❌ A slide that gives only the formula for \\k\\-fold cross-validation.
>
> ✅ A slide that gives the formula, a figure of the data split into \\k\\ folds, and one sentence saying what the formula averages.

Each figure also needs a caption and alt text, so that a reader who cannot see it gets the same information.

## 13 Test your writing with a reader

You cannot judge your own writing from the reader’s side, because you already know what you meant. The W3C guidance ends with “Test with real users!” ([W3C Cognitive and Learning Disabilities Accessibility Task Force 2021](#ref-w3c_coga)). The plain language guidelines describe *paraphrase testing*: ask a reader to explain the text in their own words, and compare their version with what you meant ([Plain Language Action and Information Network 2026](#ref-plainlanguage_gov), Paraphrase testing).

> ❌ Reread your lecture notes yourself, and decide they are clear.
>
> ✅ Ask a student to explain a paragraph back to you. Where their version differs from what you meant, rewrite that paragraph.

Back to top

## References

Centers for Disease Control and Prevention. 2026. *CDC Clear Communication Index*. <https://www.cdc.gov/ccindex/index.html>.

Cornell University Center for Teaching Innovation. 2026. *Universal Design for Learning*. <https://teaching.cornell.edu/teaching-resources/building-inclusive-classrooms/universal-design-learning>.

GitHub. 2026a. *Style Guide*. GitHub Docs. <https://docs.github.com/en/contributing/style-guide-and-content-model/style-guide>.

GitHub. 2026b. *Writing Content to Be Translated*. GitHub Docs. <https://docs.github.com/en/contributing/writing-for-github-docs/writing-content-to-be-translated>.

Plain Language Action and Information Network. 2026. *Federal Plain Language Guidelines*. <https://github.com/GSA/plainlanguage.gov/tree/main/_pages/guidelines>.

W3C Cognitive and Learning Disabilities Accessibility Task Force. 2021. *Making Content Usable for People with Cognitive and Learning Disabilities*. W3C Working Group Note, 29 April 2021. <https://www.w3.org/TR/coga-usable/>.
