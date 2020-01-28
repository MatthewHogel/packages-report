01\_explore-libraries\_spartan\_MH.R
================
mhogel
2020-01-27

Which libraries does R search for packages?

``` r
library(plyr)
library(tidyverse)
```

    ## Warning: package 'tidyverse' was built under R version 3.6.1

    ## Registered S3 methods overwritten by 'ggplot2':
    ##   method         from 
    ##   [.quosures     rlang
    ##   c.quosures     rlang
    ##   print.quosures rlang

    ## -- Attaching packages ----------------------------------- tidyverse 1.2.1 --

    ## v ggplot2 3.1.1     v purrr   0.3.3
    ## v tibble  2.1.1     v dplyr   0.8.3
    ## v tidyr   1.0.0     v stringr 1.4.0
    ## v readr   1.3.1     v forcats 0.4.0

    ## Warning: package 'tidyr' was built under R version 3.6.1

    ## Warning: package 'purrr' was built under R version 3.6.2

    ## Warning: package 'dplyr' was built under R version 3.6.1

    ## -- Conflicts -------------------------------------- tidyverse_conflicts() --
    ## x dplyr::arrange()   masks plyr::arrange()
    ## x purrr::compact()   masks plyr::compact()
    ## x dplyr::count()     masks plyr::count()
    ## x dplyr::failwith()  masks plyr::failwith()
    ## x dplyr::filter()    masks stats::filter()
    ## x dplyr::id()        masks plyr::id()
    ## x dplyr::lag()       masks stats::lag()
    ## x dplyr::mutate()    masks plyr::mutate()
    ## x dplyr::rename()    masks plyr::rename()
    ## x dplyr::summarise() masks plyr::summarise()
    ## x dplyr::summarize() masks plyr::summarize()

Installed packages

``` r
## use installed.packages() to get all installed packages
package.explore <- as.data.frame(installed.packages())

## how many packages?
nrow(package.explore)
```

    ## [1] 404

Exploring the packages

``` r
## count some things! inspiration

##   * tabulate by LibPath, Priority, or both
group_by(package.explore, LibPath, Priority) %>% count()
```

    ## Warning: Factor `Priority` contains implicit NA, consider using
    ## `forcats::fct_explicit_na`
    
    ## Warning: Factor `Priority` contains implicit NA, consider using
    ## `forcats::fct_explicit_na`
    
    ## Warning: Factor `Priority` contains implicit NA, consider using
    ## `forcats::fct_explicit_na`

    ## # A tibble: 5 x 3
    ## # Groups:   LibPath, Priority [5]
    ##   LibPath                                                  Priority       n
    ##   <fct>                                                    <fct>      <int>
    ## 1 "\\\\unityfs01/fsusers$/MHogel/My Documents/R/win-libra~ <NA>         187
    ## 2 C:/Program Files/R/R-3.6.0/library                       base          14
    ## 3 C:/Program Files/R/R-3.6.0/library                       recommend~    15
    ## 4 C:/Program Files/R/R-3.6.0/library                       <NA>           1
    ## 5 M:/My Documents/R/win-library/3.6                        <NA>         187

``` r
# KW answer = count(package.explore, Priority)

##   * what proportion need compilation?
mean(package.explore$NeedsCompilation == "yes", na.rm = T)
```

    ## [1] 0.4710327

``` r
# [1] 0.5154639

##   * how break down re: version of R they were built on

group_by(package.explore, Built) %>% count() %>% 
  ungroup %>% 
  mutate(mean = n/sum(n))
```

    ## # A tibble: 3 x 3
    ##   Built     n   mean
    ##   <fct> <int>  <dbl>
    ## 1 3.6.0   318 0.787 
    ## 2 3.6.1    34 0.0842
    ## 3 3.6.2    52 0.129

``` r
#Built     n   mean
#<fct> <int>  <dbl>
#  1 3.6.0   174 0.874 
#  2 3.6.1    18 0.0905
# 3 3.6.2     7 0.0352
```

Reflections

``` r
## reflect on ^^ and make a few notes to yourself; inspiration
##   * does the number of base + recommended packages make sense to you?
##   * how does the result of .libPaths() relate to the result of .Library?
```

Going further

``` r
## if you have time to do more ...

## is every package in .Library either base or recommended?
# > no, lots of NA - 170

## study package naming style (all lower case, contains '.', etc


## use `fields` argument to installed.packages() to get more info and use it!
```
