---
layout: manual
title: Making Plots
subtitle: "Tips and tricks for making better plots."
permalink: /manual/guides/plots/
---


This guide provides best practices for ensuring that plots created by ARFC are
accessible and visually clear. By following these simple recommendations, you
will make your work more inclusive, readable, and aligned with accessibility
standards.


## 1. Using Color

Color combinations like red, green, brown, orange, and yellow can be difficult
to distinguish for people. Instead, use distinguishable patterns and contrast;
different line styles, shapes, and markers can help differentiate elements
without relying on color.

This does not mean you cannot employ a color pallette, **Sequential palettes**
should be used for data with a natural order (e.g., temperature), while
**diverging palettes** are better suited for data with two distinct extremes.
Popular accessible color palettes include **Cividis**, **Viridis**, and
**Inferno**, which are perceptually uniform. Avoid the Jet (rainbow)
colormap, as it is not perceptually uniform. It often causes difficulty in
interpreting data, as colors that are close to each other can look almost
identical, while distant colors may appear too different.


## 2. Choosing Font

Choose sans-serif fonts (like **Arial**, **Helvetica**, **Verdana**), as they
are generally easier to read compared to serif fonts (e.g., Times New Roman).In
addition to a good font, your text should also have enough contrast against the
background for readability.
- For headings, the contrast ratio should be at least 3:1.
- For body text, the contrast ratio should be at least 4.5:1.

Avoid fonts with narrow letter spacing or uneven height (between lowercase and
uppercase) as they exacerbate all of the above problems. Keep text, whitespace,
and figures evenly spaced, allowing for easy zooming and reading.


## 3. Use of Markers and Line Styles

To ensure that your plots will stand the test of time by using non-color-based
visual cues like:
- Markers (e.g., circles, squares, triangles) to differentiate data points.
- Line styles (e.g., dashed, dotted, solid) to distinguish data in a line plot.

This will help ensure that even if a user has difficulty distinguishing certain
colors, they can still interpret the plot accurately.


## 4. Plot Size and Resolution

Make sure your plots are high resolution so that details are not lost when
zooming in. In addition to a high resolution your plots should be high-quality
formats (e.g., **SVG**, **PDF**).


## 5. Matplotlib Style File for ARFC

To standardize the style of your plots, you can use a **Matplotlib style file**
that reflects ARFC's standards. This will help ensure that all plots follow the
same formatting conventions, making them visually consistent and aligned with
our standards.

You can use this style file to configure:
- font,
- color palettes,
- plot dimensions,
- and figure size.

A Matplotlib style file is available here:
https://gist.github.com/nsryan2/456490df118ab3318ec07c7610432e69.
It uses Paul Tol's muted qualitative color scheme as the default.

### Example:

Here's a minimal example of how you can apply the style file to Python:

```python
import matplotlib.pyplot as plt

# Load the ARFC style file
plt.style.use('path/to/plotting.mplstyle')

# Create a sample plot
x = [1, 2, 3, 4, 5]
y1 = [1, 4, 9, 16, 25]
y2 = [2, 3, 9, 16, 26]

plt.plot(x, y1, label='Sample 1', marker='o', linestyle='-')
plt.plot(x, y2, label='Sample 2', marker='+', linestyle='--')

plt.xlabel('X Axis')
plt.ylabel('Y Axis')
plt.legend()
plt.show()
```
