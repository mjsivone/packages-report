.libPaths()

install.packages("tidyverse")
library(tidyverse)
install.packages("here")
library(here)

ipt <- installed.packages() %>%
  as_tibble() %>%
  select(Package, LibPath, Version, Priority, Built) %>%
write_csv(path=here("data", "installed-packages.csv"))
ipt


