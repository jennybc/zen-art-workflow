library(tidyverse)
library(hrbrthemes)
library(here)

cleveland <- tibble::tribble(
                              ~ foci, ~ allocation,
  "Multidisciplinary investigations",         0.25,
       "Models and Methods for Data",         0.20,
               "Computing with Data",         0.15,
                          "Pedagogy",         0.15,
                         "Tool Eval",         0.05,
                            "Theory",         0.20
)
#all.equal(sum(cleveland$allocation), 1)

p <- cleveland %>%
  mutate(foci = fct_reorder(foci, allocation)) %>%
  ggplot(aes(foci, allocation)) +
  geom_col() +
  geom_text(aes(label = foci, y = 0), colour = "white",
            hjust = "bottom", nudge_y = 0.008) +
  coord_flip() +
  theme_ipsum(grid = "X") +
  labs(
    title = "Cleveland: proposed resource allocation"
  ) +
  theme(
    axis.title = element_blank(),
    axis.text.y = element_blank()
  )

p

ggsave(here("figs", "cleveland-allocation.png"), p, height = 4, width = 4 * 4/3)
