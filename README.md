# Molgenis Armadillo Demo

This is a demo to illustrate how to use [Molgenis Armadillo](https://github.com/molgenis/molgenis-service-armadillo).

## Prerequisites
- You've been granted access to the `armadillo-illustration` project on the demo server

## How to
### On CAS
1. Go to the [Central Analysis Server](https://lifecycle.analysis.molgenis.org/)
2. Select Login with MOLGENIS and login using your institute account
3. Select R studio
4. Run the following:
``` R
url <- "https://raw.githubusercontent.com/timcadman/armadillo-illustration/master/workshop.Rmd"
file_path <- "/home/jovyan/"

download.file(url, paste(file_path, "workshop.Rmd", sep = ""), mode = "wb")

forest_url <- "https://raw.githubusercontent.com/timcadman/armadillo-illustration/master/forest_theme.R"
download.file(forest_url, paste(file_path, "forest_theme.R", sep = ""), mode = "wb")

# This one will take a while required for https://github.com/molgenis/molgenis-service-armadillo/issues/679
install.packages("arrow")
```
5. Select the "files" tab on the right of your R studio, if it's not opened yet
6. Make sure you're in the home folder (you might have to go a folder up)
7. Open workshop.Rmd
8. Follow the workshop in that file

### Locally
1. Open R studio
2. Install R packages required:
``` R
install.packages('dsBaseClient', repos=c(getOption('repos'), 'http://cran.datashield.org'), dependencies=TRUE)
install.packages(DSMolgenisArmadillo)
install.packages(tidyverse)
install.packages("remotes")
install.packages("arrow")
library(remotes)
install_github("lifecycle-project/ds-helper")
```
3. Run the following code:
``` R
url <- "https://raw.githubusercontent.com/timcadman/armadillo-illustration/master/workshop.Rmd"

# check if you want to download the workshop here:
file_path <-  paste0(getwd(), "/")
file_path

# if not, change to directory you want to use using:
#setwd(dir)
#file_path <-  paste0(getwd(), "/")

# download the workshop file
download.file(url, paste(file_path, "workshop.Rmd", sep = ""), mode = "wb")

# download additional R functions file
forest_url <- "https://raw.githubusercontent.com/timcadman/armadillo-illustration/master/forest_theme.R"
download.file(forest_url, paste(file_path, "forest_theme.R", sep = ""), mode = "wb")
```
4. Open the workshop file you just downloaded
5. Follow the workshop
