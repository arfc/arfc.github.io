---
  layout: manual
  title: Writing Checklist
  subtitle: "Reduce clutter and increase clarity of any document with these rules."
  permalink: /manual/guides/writing/checklist/
---


## Stanford MOOC on Writing in the Sciences

This [writing checklist](/manual/guides/writing/checklist) is mostly from advice in this  [massively open online course](https://online.stanford.edu/course/writing-sciences-self-paced-spring-2016). You can take it yourself, for free, at your own pace.

## Checklist


```markdown
- [ ] Run a spell checker.
- [ ] The Oxford comma must appears in lists ("lions, tigers, and bears.")
- [ ] Do not use the word "where" unless referring to a location (try "such that" or "in which").
- [ ] Do not use the word "when" unless referring to a time (try "if" instead).
- [ ] Only use "large" when referring to size.
- [ ] Use of "very" suggests that a cooler word exists.
- [ ] Other misused/overused words include: code, input, output, different, value, amount, model.
- [ ] Articles such as "a" "the" "some" "any" and "each" must appear where necessary.
- [ ] All subjects match the plurality of their verbs ( no: "Apples is tasty" yes: "Apples are tasty")
- [ ] Avoid run-on sentences.
- [ ] clunky nouns -> spunky verbs (progression, expression --> progress, express)
- [ ] reduce vague words (important, methodologic)
- [ ] reduce acronyms / jargon
- [ ] expand all acronyms on first use (rely on the acros.tex file and glossaries package to automate this)
- [ ] get rid of unnecessary prepositional phrases -- author clearing throat (It can be shown that)
- [ ] get rid of extraneous adverbs (very, really, quite, basically, generally)
- [ ] get rid of there are / there is
- [ ] turn negatives to positives (she was not often right -> she was usually wrong)
- [ ] get rid of extraneous prepositions (the meeting happened on monday -> the meeting happened monday) (they agreed that it was true -> they agreed it was true)
- [ ] get rid of passive voice (is/was/are/were/be/been/am + past tense verb), replace with active voice
- [ ] use strong verbs (use sparingly: is, are, was, were, be, been, am)
- [ ] avoid turning verbs into nouns ("obtain estimates of" -> "estimates"; "provides a description of" -> "describes")
- [ ] don't bury the verb (keep the predicate close to the subject at the beginning of the sentence)
- [ ] data is plural (the data are critical)
- [ ] compare to (point out similarities between different things) vs.  compared with (point out differences between similar things)
- [ ] punctuation helps you to vary your sentence structure
- [ ] Power to separate in increasing power: comma, colon, dash, parentheses, semicolon, period
- [ ] In increasing order of formality: dash, parentheses, all of the others. Don't overdo it with the dash and parentheses
- [ ] semicolon: connects two independent clauses. OR used to separate when the items in the list contain internal punctuation.
- [ ] use a colon to introduce a list, quote, explanation, conclusion, or amplification
- [ ] if there's a list in a sentence, it shouldn't come before the colon
- [ ] use a dash to insert something in the middle of the sentence. Don't overuse it.
- [ ] Always use isotopic notation like `$^{239}Pu$`. Never $Pu-239$ or plutonium-239.
- [ ] Elemental symbols (Ni, Li, Na, Pu) are capitalized, but their names are not (nickel, lithium, sodium, plutonium).
- [ ] A phrase of the form <verb>ion of <noun> is probably clearer as <noun> <verb>ion. (For example, convert "calculation of velocity" to "velocity calculation".)
- [ ] Cite all software. Review [the principles](https://www.force11.org/software-citation-principles) and try [CiteAs](https://citeas.org/about) if necessary.
- [ ] Refer to software consistently by name.
```

Additional Table and Figure Checklist:
```markdown
- [ ] The text should refer to all tables and figures.
- [ ] When referring to figures by their number, use `Figure 1` and `Table 1.` They should be capitalized and not abbreviated (not `fig. 1` or `figure 1`.)
- [ ] In tables, align all columns of numbers such that the decimals line up.
- [ ] In a single column, all values should probably have the same number of significant digits.
- [ ] Give units for each numerical column.
- [ ] A table should have only 3 horizontal lines (no vertical lines and no more than 3.)
```

Additional Math Comments:
```markdown
- [ ] define all variables, with units. If unitless, indicate that this is the case `$[-]$`.
- [ ] subscripts should be brief and can be avoided with common notation. For example, `$\dot{m}$` is better than `$m_f$` which is superior to `$m_{flow}$`.
- [ ] variable names should be symbols rather than words `m` is better than `mass` and `\ksi` is better than `one_time_use_variable`.
- [ ] The notation $3.0\times10^12$ is preferred over $3e12$.
- [ ] Equations should be part of a sentence.
- [ ] Equations should be in the `align` environment. Align them at the `=` sign.
- [ ] Variables should be defined in the `align` environment as well, not buried in paragraphs.
```

Here's an example of an equation:
```latex
The line is defined as
\begin{align}
y&=mx + b
\intertext{where}
y&= \mbox{ height of the line, also known as rise [m]}\nonumber\\
m&= \mbox{ slope [-]}\nonumber\\
x&=\mbox{ independent parameter, known as run [m]}\nonumber\\
b&= \mbox{ y intercept [m].}
\end{align}
```

