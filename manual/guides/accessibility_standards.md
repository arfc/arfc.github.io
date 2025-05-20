---
layout: manual
title: Accessibility Standards
subtitle: "Guidelines for accessible writing and figure creation."
permalink: /manual/guides/accessibility
---

## Accessibility Standards

 - Color Blindness
 - Font Choice
 - Screen Reader Accessibility
 - Figure Creation

This guide will provide a checklist as well as resources to 
make your documents more accessible. 

## 1. Color Blindness

Before picking a friendly color palette, consider using non-color means 
to distinguish lines or datasets, such as linestyle or markers. Matplotlib
already has functions to do this within a plot for each dataset.

For specific color guidance, avoid combinations of red, green, brown,
and yellow for contrasting colors - as most forms of colorblindness impact
the red and green cones of the eyes. Also, avoid only using blues or purples 
as contrasting colors. 'Coloring for Colorbliness' is a useful [tool](https://davidmathlogic.com/colorblind/#) 
to check color blind friendliness in your palate as well as creating good pallets
from scratch.

## 2. Font Choice

Font choice relates to both the font itself and the contrast of the font 
against the background. [WebAIM](https://webaim.org/resources/contrastchecker/)
is a tool to check if the contrast ratio meets the accessibility standards. Generally,
headings should have a contrast ratio of at least 3:1, and body text should be at least
4.5:1. If you forget, WebAIM will also tell you if the font passes.

While choosing a font - consider:

 - Sans Serif fonts are generally easier to read than Serif fonts
 - Avoid thin fonts, narrow fonts, or fonts with uneven heights between lowercase and capital letters
 - Good font examples: Times New Roman, Arial, Verdana, Helvetica

Additional information and tools for font accessibility are found at
[Section 508](https://www.section508.gov/develop/fonts-typography/),
[ADA Site Complience](https://adasitecompliance.com/accessible-fonts/), and
[UNC Greensboro’s Page on Fonts](https://accessibility.uncg.edu/make-content-accessible/design-elements/).

## 3. Screen Reader Accessibility

Make sure to use common fonts that screen readers can recognize to make your documents
more friendly. Screen readers also often struggle with interpreting images that have no 
metadata text. Alt text is relatively easy to add within Microsoft Word or HTML. Harvard
has some [suggested tools](https://accessibility.huit.harvard.edu/auto-tools-testing#free)
for checking webpage accessibility.

However, in this group we generally use LaTeX and PDFs, and making these documents screen 
reader-friendly is generally much harder. Some suggested LaTeX packages are accessibility, pdfcomment, 
and axessibility - the latter being for equations.  This [journal](https://www.ams.org/journals/notices/202301/rnoti-p68.pdf)
and this [page](https://libguides.lib.msu.edu/c.php?g=995742&p=8207771) have more extensive advice.

Overleaf also has an 
[extensive page](https://www.overleaf.com/learn/latex/An_introduction_to_tagged_PDF_files%3A_internals_and_the_challenges_of_accessibility)
with additional advice dedicated to this topic.

## 4. Figure Creation

Avoid the jet (rainbow) color scheme since it's not particularly accessible, and there are
better color maps for conveying information. Think about what information you’re trying to 
convey when choosing colors. Not all color palettes are created equal. Jet, for example, is not perceptually
uniform - i.e., colors near to each other look relatively similar, while colors far apart are distinct.

With Matplotlib, you can set the style of plots for a whole script with global parameters.

```python
import matplotlib.pyplot as plt
plt.style.use(['dark_background','presentation'])
```

These global variables can be defined in a top-level file `*.mplstyle`. Matplotlib's
default style can be found [here](https://matplotlib.org/stable/users/explain/customizing.html#the-default-matplotlibrc-file)
while Nathan Ryan's better style file can be found [here](https://drive.google.com/file/d/1lV1IJgUo_V6rs7PCg5ccO6TK2ziaOM-_/view).

## 5. Additional Reading

 - Zoey's Accessibility [Slideshow](https://docs.google.com/presentation/d/e/2PACX-1vTQ6AyYOjNiIIyojh97CZJ7v9-FwkfurTOA9E0pxQ2e5bz1xfKxZP_K3P1RA8l81d6FgFhMPjLfdiBU/pub?start=false&loop=false&delayms=3000)
 - Nathan's Plots [Guide](https://arfc.github.io/manual/guides/plots/)
 - [Simple Tools for Mastering Color in Scientific Figures](https://www.molecularecologist.com/2020/04/23/simple-tools-for-mastering-color-in-scientific-figures/)
 - [Best Color Palettes for Scientific Figures and Data Visualizations](https://www.simplifiedsciencepublishing.com/resources/best-color-palettes-for-scientific-figures-and-data-visualizations)
 - [How To Choose a Color Scheme for Your Scientific Figure](https://sites.northwestern.edu/researchcomputing/2022/05/20/how-to-choose-a-color-scheme-for-your-scientific-figure/)
 - [Introduction to the Viridis Color Map](https://cran.r-project.org/web/packages/viridis/vignettes/intro-to-viridis.html)
 - [Why you should use Viridis and not Jet (rainbow) as a colormap](https://www.domestic-engineering.com/drafts/viridis/viridis.html)
