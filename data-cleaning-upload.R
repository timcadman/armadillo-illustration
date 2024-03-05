################################################################################
## Project: molgenis-illustration
## Script purpose: Clean and upload the data
## Date: 4th March 2024
## Author: Tim Cadman
## Email: t.j.cadman@umcg.nl
################################################################################

install.packages("MolgenisArmadillo")
install.packages("tidyverse")

library(MolgenisArmadillo)
library(tidyverse)

################################################################################
# Read in data
################################################################################
# Downloaded from: "https://www.kaggle.com/datasets/johnjdavisiv/urinary-biomarkers-for-pancreatic-cancer?resource=download"

raw_data <- read_csv("pancreatic.csv")
################################################################################
# Clean dataset
################################################################################
cleaned_data <- raw_data %>%
  dplyr::filter(diagnosis %in% c(1, 3)) %>%
  mutate(diagnosis = case_when(
    diagnosis == 1 ~ 0, 
    diagnosis == 3 ~ 1)) %>%
  mutate(diagnosis = factor(diagnosis, levels = c(0, 1), 
                            labels = c("benign", "cancer"))) %>%
  mutate(sex = factor(sex, levels = c("M", "F"), labels = c("male", "female"))) %>%
  dplyr::select(-REG1A)
  
################################################################################
# Upload data
################################################################################
demo_url <- "https://armadillo-demo.molgenis.net"
armadillo.login(demo_url)
# armadillo.create_project("armadillo-illustration")

## ---- Create subset for first cohort and upload ------------------------------
pancreatic <- cleaned_data %>% dplyr::filter(patient_cohort == "Cohort1")
armadillo.upload_table("armadillo-illustration", "barcelona", pancreatic)

pancreatic <- cleaned_data %>% dplyr::filter(patient_cohort == "Cohort2")
armadillo.upload_table("armadillo-illustration", "groningen", pancreatic)
