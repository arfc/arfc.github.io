---
  layout: manual
  title: Writing Checklist
  subtitle: "Reduce clutter and increase clarity of any document with these rules."
  permalink: /manual/guides/writing/checklist/
---


## Stanford MOOC on Writing in the Sciences

This [writing checklist](/manual/guides/writing/checklist) is mostly from advice in this  [massively open online course](https://www.coursera.org/learn/sciwrite/). You can take it yourself for free at your own pace.

## Reviewing Writing

Use these lists to check off your progress in writing and reviewing.

```markdown
- [ ] Run a spell checker.
- [ ] Get rid of unnecessary prepositional phrases -- author clearing throat (e.g., "It can be shown that...").
- [ ] Get rid of extraneous adverbs (very, really, quite, basically, generally).
- [ ] Get rid of there are/there is.
- [ ] Get rid of extraneous prepositions ("the meeting happened on Monday" -> "the meeting happened Monday") ("they agreed that it was true" -> "they agreed it was true").
- [ ] Get rid of passive voice (is/was/are/were/be/been/am + past tense verb), replace with active voice.
- [ ] Cite all images, methods, software, and empirical data. Review [the principles](https://www.force11.org/software-citation-principles) and try [CiteAs](https://citeas.org/about) if necessary.
```

## Enhancing Clarity

As Shakespeare wrote in *Hamlet*, "Brevity is the soul of wit."

```markdown
- [ ] Be concise and direct.
- [ ] Using "very" suggests that a better word exists; replace it where possible.
- [ ] Make sure that articles such as "a," "the," "some," "any," and "each" appear where necessary.
- [ ] Ensure all subjects must match the plurality of their verbs (saying "Apples is tasty" is wrong, but "Apples are tasty" is correct).
- [ ] Recover verbs that were turned into nouns ("obtain estimates of" -> "estimates"; "provides a description of" -> "describes").
- [ ] Use the form <noun> <verb>ion over <verb>ion of <noun> (for example, convert "calculation of velocity" to "velocity calculation").
- [ ] Reduce vague words like "important" or "methodologic."
- [ ] Reduce acronyms/jargon.
- [ ] Expand all acronyms on first use (rely on the acros.tex file and glossaries package to automate this).
- [ ] Turn negatives to positives (she was not often right -> she was usually wrong).
- [ ] Do not bury the verb (keep the predicate close to the subject at the beginning of the sentence).
- [ ] Refer to software consistently by name.
- [ ] Italicize unusual or unfamiliar words or phrases when you use them.
- [ ] If you use an uncommon word, consider changing it or defining it in its first usage.
- [ ] Only use the word "significant" when referring to statistical significance.
```


## Enhancing Style

You are a human writing for other humans: Make the wording exciting, and remember your audience includes readers who might not know as much jargon as you.

```markdown
- [ ] Vary your sentence structure to keep readers engaged.
- [ ] Do not use contractions in technical writing.
- [ ] Use punctuation to help you to vary your sentence structure.
- [ ] Follow the convention that the power to separate is (in order of increasing power): comma, colon, em dash, parentheses, semicolon, and period.
- [ ] In increasing order of formality: dash, parentheses, all others. Do not overdo the em dash and parentheses.
- [ ] Check that if there's a list in a sentence, it shouldn't come before the colon.
- [ ] Always use isotopic notation like `$^{239}Pu$`. Never `$Pu-239$` or `$plutonium-239$`.
- [ ] Strengthen your verbs (use sparingly: is, are, was, were, be, been, am).
- [ ] Only use "large" when referring to size.
- [ ] Do not use the word "when" unless referring to a time (try "if" instead).
- [ ] Clarify or change misused/overused words where necessary (e.g., code, input, output, different, value, amount, model).
- [ ] Each sentence/paragraph should logically follow the previous sentence/paragraph.
- [ ] Examples should use variables instead of numbers and symbolic math instead of acronyms.
```


## Enhancing Grammar

```markdown
- [ ] "Data" is plural (e.g., "the data are critical").
- [ ] Compare to (point out similarities between different things) vs. compared with (point out differences between similar things)
- [ ] Elemental symbols (Ni, Li, Na, Pu) are capitalized, but their names are not (nickel, lithium, sodium, plutonium).
- [ ] Do not use the word "where" unless referring to a location (try "such that," or "in which").
- [ ] Avoid run-on sentences.
- [ ] The preposition "of" shows belonging, relations, or references. The preposition "for" shows purpose, destination, amount, or recipients. They are not interchangeable.
```

## Enhancing Punctuation

```markdown
- [ ] Commas and periods go inside end quotes, except when there is a parenthetical reference afterward.
- [ ] Colons and semicolons go outside closed quotations.
- [ ] A semicolon connects two independent clauses OR separates items when the list contains internal punctuation.
- [ ] Use a colon to introduce a list, quote, explanation, conclusion, or amplification.
- [ ] The Oxford comma must appear in lists (e.g., "lions, tigers, and bears").
- [ ] Use hyphens to join words acting as a single adjective before a noun (e.g., "well-known prankster"), not after a noun (e.g., "the prankster is well known").
- [ ] Two words joined by a hyphen in title case should both be capitalized.
- [ ] Hyphens join a prefix to a capitalized word, figure, or letter (e.g., pre-COVID, T-cell receptor, post-1800s); compound numbers (e.g., sixty-six); words to the prefixes ex, self, and all (e.g., ex-sitter, self-made, all-knowing); and words to the suffix elect (e.g., president-elect).
```

## Using Latin
```markdown
- [ ] The Latin abbreviations viz., i.e., and e.g. should all have commas before and after them (e.g., "We can classify a large star as a red giant, e.g., Stephenson 2-18").
- [ ] The Latin abbreviations cf., et al., or q.v. should not automatically have commas after them.
- [ ] The abbreviation of *versus* (vs.) should always have a period in American English and is used to contrast things.
- [ ] You should never say "and etc.", because "et" means and in Latin.
- [ ] Abbreviations including "et" should not have a period after "et" because it is a whole word.
- [ ] Some abbreviations need capitalization (e.g., "N.B.," which means "note well").
- [ ] Latin (or any non-English) words other than et are usually italicized (e.g., *in situ*, *in vivo*, *in vitro,* and *ab initio*).
```

## Tables and Figures
```markdown
- [ ] The text should refer to all tables and figures.
- [ ] When referring to figures by their number, use `Figure 1` and `Table 1.` They should be capitalized and not abbreviated (not `fig. 1` or `figure 1`).
- [ ] Align all columns of numbers in tables such that the decimals line up.
- [ ] All values should probably have the same number of significant digits in a single column.
- [ ] Give units for each numerical column.
- [ ] A table should have only three horizontal lines (no vertical lines and no more than three).
```

## Enhancing Math
```markdown
- [ ] Define all variables with units. If unitless, indicate this is the case `$[-]$`.
- [ ] Subscripts should be brief and can be avoided with common notation. For example, `$\dot{m}$` is better than `$m_f$` which is superior to `$m_{flow}$`.
- [ ] Variable names should be symbols rather than words `m` is better than `mass` and `\ksi` is better than `one_time_use_variable`.
- [ ] The notation `$3.0\times10^{12}$` is preferred over `$3e12$`.
- [ ] Equations should be part of a sentence.
- [ ] Equations should be in the `align` environment. Align them at the `=` sign.
- [ ] Variables should be defined in the `align` environment, not buried in paragraphs.
```

Here's an example of an equation:
```latex
A line has the form
\begin{align}
y&=mx + b
\intertext{where}
y&= \mbox{ height of the line, also known as rise [m]}\nonumber\\
m&= \mbox{ slope [-]}\nonumber\\
x&=\mbox{ independent parameter, known as run [m]}\nonumber\\
b&= \mbox{ y intercept [m].}\nonumber
\end{align}
```
