# Writing for code review and software

Code

Published

Last modified: 2026-10-15 22:11:04 (PDT)

Software projects depend on short documents:

- pull requests;
- issues;
- commit messages;
- READMEs;
- code comments;
- release notes.

The readers of these documents are busy and often unfamiliar with the change. The rules in the other chapters apply to these documents too. This chapter lists the general rules that matter most for them and adds a few that belong to software.

## 1 Apply the general rules

- [Write in the active voice](../chapters/conciseness.llms.md#write-in-the-active-voice) and name the actor before the action.
- [Limit complex sentence structures](../chapters/conciseness.llms.md#limit-complex-sentence-structures): write one main idea per sentence and at most one subordinate clause.
- Cut filler and prefer plain words ([Word choice](../chapters/word-choice.llms.md)).
- [Scan for clichés](../chapters/avoid-cliches.llms.md) before you post non-trivial prose. Skip the scan for code, terse status lines, and short replies.
- [Put lists in bullet points](../chapters/conciseness.llms.md#put-lists-in-bullet-points).

## 2 Say what changed and why

- Open a pull request description with the behavior a reader would see before and after the change.
- Explain the reason for the change in the commit message, not only the content of the diff.
- State what you checked and what you did not.
- Link the issue, the data, or the document that motivates the change.

## 3 Comment code sparingly

- Write a comment that says why the code does what it does, and let the code say what it does.
- Keep each comment to one phrase where one phrase suffices.
- Update or delete a comment when the code changes.

## 4 Write release notes for the user

- Describe each change by its effect on the user, not by the file that changed.
- Put breaking changes first.

> **NOTE:**
>
> The scope of this chapter, plain prose for all user-facing text, comes from the [Writing](https://ucd-serg.github.io/lab-manual/writing.html) chapter of the UCD-SERG lab manual.

Back to top
