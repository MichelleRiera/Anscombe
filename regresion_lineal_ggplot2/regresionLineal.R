```{r}
library(tidyverse)
library(conflicted)
library(datasauRus)
library(dplyr)
library("ggplot2")
datasaurus_dozen %>%
  group_by(dataset) %>%
  summarise(
    mean_x=mean(x),
    mean_y=mean(y),
    std_dev_x=sd(x),
    std_dev_y=sd(y),
    corr_x_y=cor(x,y)
  )


```