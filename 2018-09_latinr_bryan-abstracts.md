Keynote: Teaching R (and more) in the Era of Data Science

My talk deals with two related themes: the ongoing discussion of "data science vs. statistics" and the importance of developing your own data analysis workflow. These topics are related in my mind because I believe, as academic statisticians, we often take an unnecessarily narrow view of our discipline. The "data science vs statistics" debate brings this to a head, because the desire to join and even lead data science initiatives provides an incentive to broaden our mandate. What if we embraced the development and teaching of tools -- both mental and digital -- that address the entire data analysis process? I'll draw on my experience developing and delivering STAT 545 at the University of British Columbia. I conclude with an overview of semi-recent developments in the R ecosystem, aimed at people who want to make their workflow more productive and less aggravating. I'll explain what the tidyverse is and why so many people are incorporating new tools, like Git and GitHub, into their workflow.

Tutorial: How to repeat yourself with purrr

Iterative tasks come up often in data analysis: do X for every Z, where Z could be "column", "row", "treatment group", etc. In base R, the nicest way to attack these tasks is with the "apply" functions. The "apply" functions are very powerful, but also have some downsides: they do not present a consistent interface and they often return data in an awkward form. The tidyverse is an opinionated collection of R packages designed for data science and the purrr package, specifically, is extremely useful for doing repetitive tasks. purrr's "map" functions have an extremely consistent interface and return data in a form that is ready for the next step in your analysis.

This tutorial includes:

  * Brief orientation to the tidyverse.
  * Brief review of how write a basic function. If you've never written a function before, see the recommended resources to prepare.
  * In-depth coverage, both conceptual and hands-on, of the purrr package.
  * Case studies, such as how to do work on each row in a data frame or how to turn data in a nested list (e.g. from JSON or XML) into a nice rectangle.

---

Recap from Laura Acion, based on our discussion at Unconf in May

Tutorial on 9/3 from 1 pm to 5 pm

* Topic: a mix of https://speakerdeck.com/jennybc/purrr-slides and https://github.com/jennybc/row-oriented-workflows. 

* Audience: people with some experience with R and, at least, tidyverse curious. 

* Helpers: 3-4 up to speed with the above materials to help with exercises and any English/Spanish conflict.

* Pre-tutorial prep: two weeks before we'll start communicating with the audience to make sure R/RStudio/tidyverse are installed. We'll have a half hour pre-tutorial troubleshooting for those with problems.

Keynote on 9/4 6-7 pm: 

* Topic: developing and teaching stat545, best practices to teach R

* Duration: ~ 45 minutes + ~15 minutes for questions
