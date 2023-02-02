#### Preamble ####
# Purpose: Simulate data on Food Bank Usage
# Author: Will Davidson
# Email: w.davidson@mail.utoronto.ca
# Date: Feb 3 2023
# Prerequisites: - 

#### Workspace set-up ####
install.packages("opendatatoronto")
install.packages("lubridate")
install.packages("knitr")
install.packages("tidyverse")
install.packages("janitor")

library(knitr)
library(janitor)
library(lubridate)
library(opendatatoronto)
library(tidyverse)

# Generate simulated data set
set.seed(123) # Set seed for reproducibility
n <- 100 # Number of observations
start_year <- 2015 # Starting year
homelessness_population <- 1000 # Starting homelessness population
growth_rate <- 0.01 # Annual homelessness population growth rate

# Simulate homelessness population growth
homelessness_population <- cumsum(rnorm(n, growth_rate * homelessness_population, 500)) + homelessness_population

# Create year variable
year <- start_year + (0:(n-1))

# Combine year and homelessness population variables into a data frame
sim_data <- data.frame(Year = year, Homelessness_Population = homelessness_population)
