03\_barchart-packages-built.R
================
mhogel
2020-01-27

``` r
## remember to restart R here!
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

``` r
library(here)
```

    ## Warning: package 'here' was built under R version 3.6.2

    ## here() starts at M:/My Documents/R Conference - 2020/Workshop/packages-report

    ## 
    ## Attaching package: 'here'

    ## The following object is masked from 'package:plyr':
    ## 
    ##     here

``` r
## make a barchart from the frequency table in data/add-on-packages-freqtable.csv

## read that csv into a data frame
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path
apt_freqtable <- read.csv(here("data", "add-on-packages-freqtable.csv"))

## if you use ggplot2, code like this will work:
ggplot(apt_freqtable, aes(x = Built, y = n)) +
  geom_col()
```

![](03_barchart-packages-built_files/figure-gfm/unnamed-chunk-1-1.png)<!-- -->

``` r
## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
## idea: try using here::here() to create the file path
ggsave(here("figs", "built-barchart.png"), width = 6, height = 4, units = "in")

## YES overwrite the file that is there now
## that's old output from me (Jenny)

devtools::session_info()
```

    ## - Session info ----------------------------------------------------------
    ##  setting  value                       
    ##  version  R version 3.6.0 (2019-04-26)
    ##  os       Windows 10 x64              
    ##  system   x86_64, mingw32             
    ##  ui       RTerm                       
    ##  language (EN)                        
    ##  collate  English_United States.1252  
    ##  ctype    English_United States.1252  
    ##  tz       America/New_York            
    ##  date     2020-01-27                  
    ## 
    ## - Packages --------------------------------------------------------------
    ##  package     * version date       lib source        
    ##  assertthat    0.2.1   2019-03-21 [1] CRAN (R 3.6.0)
    ##  backports     1.1.4   2019-04-10 [1] CRAN (R 3.6.0)
    ##  broom         0.5.2   2019-04-07 [1] CRAN (R 3.6.0)
    ##  callr         3.2.0   2019-03-15 [1] CRAN (R 3.6.0)
    ##  cellranger    1.1.0   2016-07-27 [1] CRAN (R 3.6.0)
    ##  cli           1.1.0   2019-03-19 [1] CRAN (R 3.6.0)
    ##  colorspace    1.4-1   2019-03-18 [1] CRAN (R 3.6.0)
    ##  crayon        1.3.4   2017-09-16 [1] CRAN (R 3.6.0)
    ##  desc          1.2.0   2018-05-01 [1] CRAN (R 3.6.2)
    ##  devtools      2.2.1   2019-09-24 [1] CRAN (R 3.6.2)
    ##  digest        0.6.19  2019-05-20 [1] CRAN (R 3.6.0)
    ##  dplyr       * 0.8.3   2019-07-04 [1] CRAN (R 3.6.1)
    ##  ellipsis      0.3.0   2019-09-20 [1] CRAN (R 3.6.1)
    ##  evaluate      0.13    2019-02-12 [1] CRAN (R 3.6.0)
    ##  forcats     * 0.4.0   2019-02-17 [1] CRAN (R 3.6.0)
    ##  fs            1.3.1   2019-05-06 [1] CRAN (R 3.6.0)
    ##  generics      0.0.2   2018-11-29 [1] CRAN (R 3.6.0)
    ##  ggplot2     * 3.1.1   2019-04-07 [1] CRAN (R 3.6.0)
    ##  glue          1.3.1   2019-03-12 [1] CRAN (R 3.6.0)
    ##  gtable        0.3.0   2019-03-25 [1] CRAN (R 3.6.0)
    ##  haven         2.1.0   2019-02-19 [1] CRAN (R 3.6.0)
    ##  here        * 0.1     2017-05-28 [1] CRAN (R 3.6.2)
    ##  highr         0.8     2019-03-20 [1] CRAN (R 3.6.0)
    ##  hms           0.4.2   2018-03-10 [1] CRAN (R 3.6.0)
    ##  htmltools     0.3.6   2017-04-28 [1] CRAN (R 3.6.0)
    ##  httr          1.4.0   2018-12-11 [1] CRAN (R 3.6.0)
    ##  jsonlite      1.6     2018-12-07 [1] CRAN (R 3.6.2)
    ##  knitr         1.23    2019-05-18 [1] CRAN (R 3.6.0)
    ##  labeling      0.3     2014-08-23 [1] CRAN (R 3.6.0)
    ##  lattice       0.20-38 2018-11-04 [2] CRAN (R 3.6.0)
    ##  lazyeval      0.2.2   2019-03-15 [1] CRAN (R 3.6.0)
    ##  lifecycle     0.1.0   2019-08-01 [1] CRAN (R 3.6.1)
    ##  lubridate     1.7.4   2018-04-11 [1] CRAN (R 3.6.0)
    ##  magrittr      1.5     2014-11-22 [1] CRAN (R 3.6.0)
    ##  memoise       1.1.0   2017-04-21 [1] CRAN (R 3.6.2)
    ##  modelr        0.1.4   2019-02-18 [1] CRAN (R 3.6.0)
    ##  munsell       0.5.0   2018-06-12 [1] CRAN (R 3.6.0)
    ##  nlme          3.1-139 2019-04-09 [2] CRAN (R 3.6.0)
    ##  pillar        1.4.0   2019-05-11 [1] CRAN (R 3.6.0)
    ##  pkgbuild      1.0.6   2019-10-09 [1] CRAN (R 3.6.2)
    ##  pkgconfig     2.0.2   2018-08-16 [1] CRAN (R 3.6.0)
    ##  pkgload       1.0.2   2018-10-29 [1] CRAN (R 3.6.2)
    ##  plyr        * 1.8.4   2016-06-08 [1] CRAN (R 3.6.0)
    ##  prettyunits   1.0.2   2015-07-13 [1] CRAN (R 3.6.0)
    ##  processx      3.3.1   2019-05-08 [1] CRAN (R 3.6.0)
    ##  ps            1.3.0   2018-12-21 [1] CRAN (R 3.6.0)
    ##  purrr       * 0.3.3   2019-10-18 [1] CRAN (R 3.6.2)
    ##  R6            2.4.0   2019-02-14 [1] CRAN (R 3.6.0)
    ##  Rcpp          1.0.1   2019-03-17 [1] CRAN (R 3.6.0)
    ##  readr       * 1.3.1   2018-12-21 [1] CRAN (R 3.6.0)
    ##  readxl        1.3.1   2019-03-13 [1] CRAN (R 3.6.0)
    ##  remotes       2.1.0   2019-06-24 [1] CRAN (R 3.6.2)
    ##  rlang         0.4.2   2019-11-23 [1] CRAN (R 3.6.2)
    ##  rmarkdown     1.12    2019-03-14 [1] CRAN (R 3.6.0)
    ##  rprojroot     1.3-2   2018-01-03 [1] CRAN (R 3.6.0)
    ##  rstudioapi    0.10    2019-03-19 [1] CRAN (R 3.6.0)
    ##  rvest         0.3.4   2019-05-15 [1] CRAN (R 3.6.0)
    ##  scales        1.0.0   2018-08-09 [1] CRAN (R 3.6.1)
    ##  sessioninfo   1.1.1   2018-11-05 [1] CRAN (R 3.6.2)
    ##  stringi       1.4.3   2019-03-12 [1] CRAN (R 3.6.0)
    ##  stringr     * 1.4.0   2019-02-10 [1] CRAN (R 3.6.0)
    ##  testthat      2.3.1   2019-12-01 [1] CRAN (R 3.6.2)
    ##  tibble      * 2.1.1   2019-03-16 [1] CRAN (R 3.6.0)
    ##  tidyr       * 1.0.0   2019-09-11 [1] CRAN (R 3.6.1)
    ##  tidyselect    0.2.5   2018-10-11 [1] CRAN (R 3.6.0)
    ##  tidyverse   * 1.2.1   2017-11-14 [1] CRAN (R 3.6.1)
    ##  usethis       1.5.1   2019-07-04 [1] CRAN (R 3.6.2)
    ##  vctrs         0.2.0   2019-07-05 [1] CRAN (R 3.6.1)
    ##  withr         2.1.2   2018-03-15 [1] CRAN (R 3.6.0)
    ##  xfun          0.7     2019-05-14 [1] CRAN (R 3.6.0)
    ##  xml2          1.2.0   2018-01-24 [1] CRAN (R 3.6.0)
    ##  yaml          2.2.0   2018-07-25 [1] CRAN (R 3.6.0)
    ##  zeallot       0.1.0   2018-01-28 [1] CRAN (R 3.6.0)
    ## 
    ## [1] M:/My Documents/R/win-library/3.6
    ## [2] C:/Program Files/R/R-3.6.0/library
    ## [3] \\unityfs01/fsusers$/MHogel/My Documents/R/win-library/3.6
