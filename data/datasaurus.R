library(tidyverse)
library(conflicted)
library(datasauRus)
library(dplyr)
datasaurus_dozen %>%
  group_by(dataset) %>%
  summarise(
    mean_x=mean(x),
    mean_y=mean(y),
    std_dev_x=sd(x),
    std_dev_y=sd(y),
    corr_x_y=cor(x,y)
  )
library("ggplot2")
ggplot(datasaurus_dozen, aes(x = x, y = y, colour = dataset))+
  geom_point() +
  theme_void() +
  theme(legend.position = "none")+
  facet_wrap(~dataset, ncol = 3)
