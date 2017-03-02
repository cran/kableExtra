## ------------------------------------------------------------------------
library(knitr)
library(kableExtra)
dt <- mtcars[1:5, 1:6]

## ------------------------------------------------------------------------
options(knitr.table.format = "html") 
## If you don't define format here, you'll need put `format = "html"` in every kable function.

## ------------------------------------------------------------------------
kable(dt)

## ------------------------------------------------------------------------
kable(dt) %>%
  kable_styling()

## ------------------------------------------------------------------------
kable(dt) %>%
  kable_styling(bootstrap_options = c("striped", "hover"))

## ------------------------------------------------------------------------
kable(dt) %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"))

## ------------------------------------------------------------------------
kable(dt) %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"))

## ------------------------------------------------------------------------
kable(dt) %>%
  kable_styling(bootstrap_options = "striped", full_width = F)

## ------------------------------------------------------------------------
kable(dt) %>%
  kable_styling(bootstrap_options = "striped", full_width = F, position = "left")

## ------------------------------------------------------------------------
kable(dt) %>%
  kable_styling(bootstrap_options = "striped", full_width = F, position = "float_right")

## ------------------------------------------------------------------------
kable(dt) %>%
  kable_styling(bootstrap_options = "striped", font_size = 7)

## ------------------------------------------------------------------------
kable(dt) %>%
  kable_styling("striped") %>%
  add_header_above(c(" " = 1, "Group 1" = 2, "Group 2" = 2, "Group 3" = 2))

## ------------------------------------------------------------------------
kable(dt) %>%
  kable_styling(c("striped", "bordered")) %>%
  add_header_above(c(" ", "Group 1" = 2, "Group 2" = 2, "Group 3" = 2)) %>%
  add_header_above(c(" ", "Group 4" = 4, "Group 5" = 2)) %>%
  add_header_above(c(" ", "Group 6" = 6))

## ------------------------------------------------------------------------
kable(dt) %>%
  kable_styling("striped") %>%
  add_footnote(c("Footnote 1", "Have a good day."), notation = "alphabet")

## ------------------------------------------------------------------------
kable(dt) %>%
  kable_styling("striped") %>%
  add_footnote(c("Footnote 1", "Have a good day."), notation = "number")

## ------------------------------------------------------------------------
kable(dt) %>%
  kable_styling("striped") %>%
  add_footnote(c("Footnote 1", "Footnote 2", "Footnote 3"), notation = "symbol")

## ------------------------------------------------------------------------
kable(dt, caption = "Demo Table[note]") %>%
  kable_styling("striped") %>%
  add_header_above(c(" ", "Group 1[note]" = 3, "Group 2[note]" = 3)) %>%
  add_footnote(c("This table is from mtcars", 
                 "Group 1 contains mpg, cyl and disp", 
                 "Group 2 contains hp, drat and wt"), 
               notation = "symbol")

