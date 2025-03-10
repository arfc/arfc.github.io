---
layout: manual
title: Generating UML Diagrams
subtitle: "Generating UML Diagrams"
permalink: /manual/guides/uml
---

Universal Modeling Language (UML) diagrams are a common way to visually
represent software components (such as classes and functions). When reviewing
code with someone new to the software, UML diagrams can be a useful tool.

Rather than writing UML diagrams by hand, we can generate them from existing
code using existing software tools. T

| Language | Tools |
| -------- | ----- |
| C++      | [clang-uml](https://clang-uml.github.io/index.html) | 
| Python   | [pyreverse](https://pylint.pycqa.org/en/latest/additional_tools/pyreverse/index.html) |

`clang-uml` uses `clang`, and as such requires the `compile_commands.json` file.
The creator of `clang-uml` wrote a [blog
post](https://blog.bkryza.com/posts/compile-commands-json-gallery/) blog post
explaining how to generate `compile_commands.json` for various build systems).

`pyreverse` is included in (`pylint`)[https://www.pylint.org/]. `pyreverse`
relies on [`graphviz`](https://graphviz.org/) to generate the UML diagrams in
the DOT format. It is more limited than `clang-uml`, but there are limited
options outside of using an IDE.

The most common type of UML diagram is the _class diagram_. This represents the
static state of the code, including any inhertiance structures. An example of a
UML diagram is below:


It can be difficult to come up with a representation of program flow statically,
so as an alternative to UML diagrams, the tool
[`gprof2dot`](https://github.com/jrfonseca/gprof2dot?tab=readme-ov-file) uses a
profiler to track function calls and converts it into a graph.
