library(tidyverse)
library(hrbrthemes)
library(here)

## http://www.springer.com/gp/book/9780387954578
df <- tribble(
  ~ chapter,                             ~ title,    ~ what, ~ start, ~ end,
          1,                      "Introduction",   "other",       1,    12,
          2,                 "Data Manipulation", "wrangle",      13,    39,
          3,                    "The S Language",   "other",      41,    68,
          4,                          "Graphics",     "vis",      69,   105,
          5,             "Univariate Statistics",   "model",     107,   138,
          6,         "Linear Statistical Models",   "model",     139,   181,
          7,         "Generalized Linear Models",   "model",     183,   210,
          8,  "Non-Linear and Smooth Regression",   "model",     211,   250,
          9,                "Tree-Based Methods",   "model",     251,   269,
         10,          "Random and Mixed Effects",   "model",     271,   300,
         11, "Exploratory Multivariate Analysis",     "vis",     301,   330,
         12,                    "Classification",   "model",     331,   351,
         13,                 "Survival Analysis",   "model",     353,   385,
         14,              "Time Series Analysis",   "model",     387,   418,
         15,                "Spatial Statistics",   "model",     419,   434,
         16,                      "Optimization",   "model",     435,   446
)

p <- df %>%
  mutate(pages = end - start + 1) %>%
  group_by(what) %>%
  summarise(pages = sum(pages)) %>%
  mutate(what = fct_reorder(what, pages)) %>%
  ggplot(aes(what, pages)) +
  geom_col() +
  coord_flip() +
  labs(
    title = "Modern Applied Statistics with S, 4th ed, Venables and Ripley"
  ) +
  theme_ipsum(grid = "X") +
  theme(
    plot.title = element_text(size = rel(1.15)),
    axis.title.y = element_blank(),
    axis.text = element_text(size = rel(1.3))
  )

p

ggsave(here("figs", "venables-ripley.png"), p, height = 4, width = 4 * 4/3)
