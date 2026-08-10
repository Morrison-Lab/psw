# Citations and evidence

Code

Published

Last modified: 2026-08-10 02:23:15 (UTC)

Every claim in scientific writing should be supported by either citations to relevant sources or direct evidence from data or experiments. This principle is fundamental to maintaining credibility, enabling verification, and building on the accumulated knowledge of the scientific community.

## 1 Why claims need support

Scientific writing aims to convey truthful, verifiable information. Unsupported claims undermine this goal in several ways:

- **Credibility**: Readers cannot assess the reliability of assertions without knowing their basis
- **Verification**: Claims without support cannot be independently verified or challenged
- **Reproducibility**: Other researchers need sources to understand the foundation of your work
- **Intellectual honesty**: Proper attribution gives credit where it is due and distinguishes your original contributions from existing knowledge
- **Learning pathway**: Citations provide readers a roadmap to learn more about a topic

When you make a claim, you are asking readers to accept it as true. They deserve to know why they should trust that claim.

## 2 What constitutes adequate support

Different types of claims require different types of support:

### 2.1 Empirical claims

Claims about observable phenomena or data should be supported by:

- Direct presentation of the data (tables, figures, statistical analyses)
- Citations to published studies that collected the relevant data
- Description of experimental methods that generated the evidence
- Links to publicly accessible datasets

### 2.2 Theoretical claims

Claims about concepts, models, or interpretations should be supported by:

- Citations to papers that developed or validated the theory
- Logical arguments with clearly stated premises
- Mathematical derivations or proofs
- References to review articles that synthesize relevant theoretical work

### 2.3 Methodological claims

Claims about appropriate methods or best practices should be supported by:

- Citations to methodological papers or textbooks
- Empirical evidence of method performance
- Expert consensus statements
- Validation studies

### 2.4 Common knowledge

Not every statement requires citation. Well-established facts that are common knowledge within your field (e.g., “DNA is a double helix” in molecular biology) can be stated without citation. However, when in doubt, provide a citation—over-citing is preferable to under-citing.

## 3 Do not substitute flippancy for support

Some phrases assert that a claim needs no support instead of supplying any:

- “it is obvious that”
- “clearly, it follows that”
- “it should be familiar to you that”
- “the familiar formula”
- “of course”
- “as everyone knows”

The problem is the appeal, not the individual words: “clearly” is fine as an adverb of manner (“the methods section clearly describes the sampling frame”), and becomes a problem only when it stands in for an argument.

These phrases do no work for the reader. A reader who already knows the result gains nothing from being told that it is familiar, and a reader who does not is told that the gap is their own fault, without being given any way to close it. They also cost the writer something. Working a step out is how you find out whether it holds; calling it obvious settles the question by assertion, and leaves any error in the step where it is. So if you cannot supply a derivation or a citation for a step, treat that as a reason to work the step out, not as a reason to call it obvious.

Replace such phrases with one of the following:

- **A direct derivation.** Show the intermediate steps, or state which identity or algebraic manipulation takes you from one line to the next.
- **A specific citation.** Name the source that establishes the result, and give a chapter, section, page, or equation number whenever the source is long enough that a bare citation would leave the reader searching.
- **A cross-reference.** When you established the result earlier in the same document, point to it by number (see [Defining terms clearly](../chapters/defining-terms.llms.md) for the Quarto cross-reference syntax).

Deleting the phrase and keeping the claim is also usually an improvement: “the log-likelihood is a sum of three terms” makes the same claim about the log-likelihood as “the log-likelihood is obviously a sum of three terms”, and it invites the reader to check the claim rather than to defer to it.

> **NOTE:**
>
> **Example 1 (Replacing an appeal to familiarity)**  
>
> > ❌ Substituting the normal density into the likelihood gives the familiar three-term formula.
> >
> > ✅ For an independent sample \\x_1, \ldots, x_n\\ from a normal distribution with mean \\\mu\\ and variance \\\sigma^2\\, substituting the normal density into the likelihood and taking logarithms gives \\ \ell(\mu, \sigma^2) = -\frac{n}{2}\log(2\pi) - \frac{n}{2}\log\left(\sigma^2\right) - \frac{1}{2\sigma^2}\sum\_{i=1}^{n}\left(x_i - \mu\right)^2. \\ The three terms are, in order: a constant that does not involve the parameters, a term that depends on \\\sigma^2\\ but not on \\\mu\\, and the sum of squared deviations of the data from \\\mu\\, divided by \\-2\sigma^2\\.
>
> The second version gives the reader the formula and where it came from, so they can check the algebra themselves. The first version asks them to take the writer’s word for it, and offers no help to anyone who has not seen the result before.

### 3.1 “Trivial” and “trivially”

“Trivial” and “trivially” usually work the same way: they announce that a step is too small to write down, which relieves the writer of writing it down. Treat them as a prompt to check the step, and to write it out if it takes only a line.

The word has one defensible use, which is describing how a general expression reduces to a simpler one in a special case — for example, how a weighted average reduces to an ordinary average when all of the weights are equal. Even in that use, “minimal case” or “degenerate case” names the situation more precisely, and avoids the dismissive tone that “trivial” carries.

## 4 What makes a citation relevant

A relevant citation is one that actually supports the specific claim you are making. Common problems with citation relevance include:

- **Citing review papers indiscriminately**: While review papers are valuable for general background, cite the original research when making specific claims about particular findings
- **Citing papers that don’t address the claim**: Ensure the cited work actually discusses the point you’re making
- **Over-generalizing from narrow studies**: Don’t cite a study with limited scope to support a broad general claim
- **Using outdated sources**: When current knowledge has superseded older findings, cite more recent work

To ensure relevance:

- Read the papers you cite (at least the relevant sections)
- Verify that the cited work actually supports your specific claim
- Cite the most direct source available
- When citing for general background versus specific claims, make the distinction clear

## 5 What makes a source trustworthy

Not all sources are equally reliable. Consider these factors when evaluating trustworthiness:

### 5.1 Peer review

Peer-reviewed publications in reputable journals have undergone expert scrutiny. This doesn’t guarantee correctness, but it provides a baseline level of quality control.

### 5.2 Reputation of authors and institutions

Work from recognized experts and well-regarded institutions tends to be more reliable, though this should not be the sole criterion.

### 5.3 Replication and consensus

Findings that have been replicated by independent groups or that represent scientific consensus are more trustworthy than isolated claims.

### 5.4 Transparency and reproducibility

Studies that:

- Clearly describe their methods
- Share their data and code
- Disclose potential conflicts of interest
- Have been successfully reproduced by others

are more trustworthy than those lacking these features.

### 5.5 Preprints and non-peer-reviewed sources

Preprints can be valuable for accessing cutting-edge research, but they have not undergone peer review. When citing preprints:

- Note that they are preprints
- Check whether a peer-reviewed version has since been published
- Exercise extra scrutiny of the methods and conclusions

### 5.6 Sources to generally avoid

Some sources typically lack the rigor needed for scientific writing:

- Wikipedia and general encyclopedias (though they can be useful starting points for finding primary sources)
- Popular press articles about scientific findings (cite the original research instead)
- Blogs and social media posts (unless discussing public discourse or documenting specific claims made in those venues)
- Predatory or pay-to-publish journals without genuine peer review
- Retracted papers

## 6 Copy-paste with caution

Copying exact wording — whether from another writer or from your own earlier work, and even with a citation — can cause problems: plagiarism, if the wording is not clearly marked as a quotation, and a shift in voice that makes the text harder to read.

A few rules of thumb:

- **Do not copy-paste prose from anyone who is not a coauthor** of the document you are currently writing. If you must reproduce someone else’s exact words, mark them as a direct quotation and cite the source.
- **Prefer paraphrasing over quoting.** Restating an idea in your own words, with a citation, usually reads better than a block quotation, and it shows that you understand the idea.
- **Do not recycle your own published text without thought.** Reusing passages from your earlier papers (self-plagiarism) can violate journal policies; cite the earlier work instead of repeating it.

A related case is repetition *within* your own document. When a passage you are tempted to copy already appears elsewhere, cross-reference it instead of repeating it: this keeps a single source of truth and improves concision.

## 7 Best practices

To effectively support your claims:

1.  **Cite as you write**: Add citations immediately when making claims, rather than planning to “add references later”
2.  **Use citation management tools**: Software like Zotero, Mendeley, or BibTeX helps organize and format references correctly
3.  **Check your citations**: Before submitting, verify that every citation supports its associated claim
4.  **Provide context**: Help readers understand why a source is relevant (e.g., “Smith et al. (2020) demonstrated that…” rather than just “(Smith et al., 2020)”)
5.  **Balance primary and review sources**: Use primary sources for specific findings, reviews for general background
6.  **Stay current**: Supplement foundational older references with recent work showing the current state of knowledge
7.  **Cite diverse sources**: When possible, include work from different research groups and perspectives

## 8 Common citation errors to avoid

- **Citation needed**: Making claims without any supporting citation or evidence
- **Vague attribution**: Using phrases like “studies have shown” without citing specific studies
- **Appeal to obviousness**: Using “obviously”, “clearly”, or “as is well known” in place of a derivation or a citation
- **Circular citation**: Citing a paper that doesn’t contain the claimed information but cites another paper that does (cite the original source)
- **Citation padding**: Adding citations that don’t actually support your claims just to appear well-referenced
- **Selective citation**: Only citing work that supports your position while ignoring contradictory evidence
- **Ghost authorship**: Failing to cite work that directly influenced your ideas

## 9 Examples

### 9.1 Poor (unsupported claim)

> Machine learning models often perform poorly on small datasets.

**Problem**: This claim is stated as fact without any support.

### 9.2 Better (citation provided)

> Machine learning models often perform poorly on small datasets ([Vapnik 1998](#ref-vapnik1998); [Hawkins 2004](#ref-hawkins2004)).

**Improvement**: Citations provide evidence for the claim.

### 9.3 Best (citation with context)

> Machine learning models often perform poorly on small datasets. Vapnik (1998) showed that the generalization error of learning algorithms typically decreases as training set size increases, and Hawkins (2004) demonstrated that complex models are particularly prone to overfitting when trained on limited data ([Vapnik 1998](#ref-vapnik1998); [Hawkins 2004](#ref-hawkins2004)).

**Improvement**: The specific support each citation provides is explained.

### 9.4 Poor (irrelevant citation)

> Python is the most popular programming language for data science ([Knuth 1984](#ref-knuth84)).

**Problem**: Knuth’s 1984 paper on literate programming doesn’t address Python or data science.

### 9.5 Better (relevant citation)

> Python is the most popular programming language for data science ([Stack Overflow 2024](#ref-stackoverflow2024)).

**Improvement**: The citation is to a current survey of programming language usage.

## 10 Conclusion

Supporting claims with appropriate citations and evidence is not optional—it is essential to scientific communication. It allows readers to verify your claims, understand the foundation of your arguments, and locate resources for further learning. Always ask yourself: “How does my reader know this is true?” If your text does not answer that question, add a citation or present direct evidence.

Back to top

## References

Hawkins, Douglas M. 2004. “The Problem of Overfitting.” *Journal of Chemical Information and Computer Sciences* 44 (1): 1–12. <https://doi.org/10.1021/ci0342472>.

Knuth, Donald E. 1984. “Literate Programming.” *Comput. J.* (USA) 27 (2): 97–111. <https://doi.org/10.1093/comjnl/27.2.97>.

Stack Overflow. 2024. *Stack Overflow Developer Survey 2024*. <https://survey.stackoverflow.co/2024/>.

Vapnik, Vladimir N. 1998. *Statistical Learning Theory*. Wiley. <https://www.wiley.com/en-us/Statistical+Learning+Theory-p-9780471030034>.
