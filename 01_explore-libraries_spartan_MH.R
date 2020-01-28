#' ---
#' output: github_document
#' ---

#' Which libraries does R search for packages?
library(plyr)
library(tidyverse)

#' Installed packages

## use installed.packages() to get all installed packages
package.explore <- as.data.frame(installed.packages())

## how many packages?
nrow(package.explore)

#' Exploring the packages
## count some things! inspiration

##   * tabulate by LibPath, Priority, or both
group_by(package.explore, LibPath, Priority) %>% count()
# KW answer = count(package.explore, Priority)

##   * what proportion need compilation?
mean(package.explore$NeedsCompilation == "yes", na.rm = T)
# [1] 0.5154639

##   * how break down re: version of R they were built on

group_by(package.explore, Built) %>% count() %>% 
  ungroup %>% 
  mutate(mean = n/sum(n))

#Built     n   mean
#<fct> <int>  <dbl>
#  1 3.6.0   174 0.874 
#  2 3.6.1    18 0.0905
# 3 3.6.2     7 0.0352

#' Reflections

## reflect on ^^ and make a few notes to yourself; inspiration
##   * does the number of base + recommended packages make sense to you?
##   * how does the result of .libPaths() relate to the result of .Library?


#' Going further

## if you have time to do more ...

## is every package in .Library either base or recommended?
# > no, lots of NA - 170

## study package naming style (all lower case, contains '.', etc


## use `fields` argument to installed.packages() to get more info and use it!
