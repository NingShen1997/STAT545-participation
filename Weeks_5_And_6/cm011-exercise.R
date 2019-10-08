setwd("./Documents/CANADA/STUDY/2019Winter/STAT545A/STAT545-participation/Weeks_5_And_6")
library("tidyverse")
library(gapminder)
rm(list = ls())
library(here)
write_csv(gapminder, here::here("Documents","CANADA","STUDY"))


data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"
filename <- basename(data_url)
download.file(url = data_url, 
              destfile = paste0("./datasets/",basename(data_url)))

library(readxl)
philanthropists <- read_excel("datasets/GreatestGivers.xls", trim_ws = TRUE)


mri_file <- read_excel("datasets/Firas-MRI.xlsx", range = "A1:L12")
mri_file <- mri_file[,-10]
mri_file %>%
  pivot_longer(cols = 'Slice 1':'Slice 8',
               names_to = 'Slice_no',
               values_to = 'value')






