# Recreate the environment

In a terminal in the repo root:

```cmd
conda env create -n tcts2020 -f conda-env.yml
conda activate tcts2020
r
```

Then in `r`:

```r
install.packages('renv')
renv::restore()
renv::init()
```

# How the renv environment was initialized:

```cmd
conda activate tcts2020
r
```

Then in R:

```r
renv::init()
quit()
```

```cmd
r
```

```r
renv::settings$snapshot.type("simple")
install.packages(c('microbenchmark', 'profvis', 'futile.logger', 'testthat', 'tidyverse', 'lme4', 'afex', 'data.table', 'broom.mixed', 'kableExtra', 'bookdown', 'pagedown', 'rticles', 'remotes'))
remotes::install_github('achetverikov/apastats',subdir='apastats')
install.packages('cowplot')  # otherwice, a vignette from `faux` cannot be built
remotes::install_github("debruine/faux", build_vignettes = TRUE)
remotes::install_github("crsh/papaja")

# Check if all packages can be loaded
packages <- c("microbenchmark", "profvis", "futile.logger", "testthat",  "bookdown", "pagedown", "rticles", "lme4", "afex", "data.table", "broom.mixed", "kableExtra", "remotes", "papaja", "faux", "apastats")
lapply(packages, library, character.only = TRUE)
```