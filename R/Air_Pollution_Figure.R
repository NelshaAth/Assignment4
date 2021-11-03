### Nelsha Athauda
### Assignment 4
### INFO 550
### 01 November 2021

here::i_am("R/Air_Pollution_Figure.R")

# Packages

  #install.packages("ggplot2")
  #install.packages("lubridate")
  #install.packages("stringi")
  #install.packages("readr")
  #install.packages("stringr")
  #install.packages("here")

library(ggplot2)
library(lubridate)
library(stringi)
library(readr)
library(stringr)
library(here)

# Data File
raw_Unit_91 <- read_csv("Data/Unit_91_Data.csv")
  head(raw_Unit_91)
  dim(raw_Unit_91)

# Removes all fill numbers and negative values
raw_Unit_91$aod_440[raw_Unit_91$aod_440 < 0] <- NA
raw_Unit_91$aod_500[raw_Unit_91$aod_500 < 0] <- NA
raw_Unit_91$aod_675[raw_Unit_91$aod_675 < 0] <- NA
raw_Unit_91$aod_870[raw_Unit_91$aod_870 < 0] <- NA

# Creates usable datetime variables
raw_Unit_91$Date <- str_sub(raw_Unit_91$timestamp, 1, 10)
  head(raw_Unit_91$Date) # Date only
raw_Unit_91$Lubri_Date <- ymd_hms(raw_Unit_91$timestamp)
  head(raw_Unit_91$Lubri_Date) # Date and time

# Creates a figure
ggplot(raw_Unit_91, aes(x=Lubri_Date)) + 
  geom_line(data=raw_Unit_91[!is.na(raw_Unit_91$aod_440),], 
            aes(y = aod_440, color ="AOD 440")) + 
  geom_point(data=raw_Unit_91[!is.na(raw_Unit_91$aod_440),], 
             aes(y = aod_440, color ="AOD 440")) + 
  geom_line(data=raw_Unit_91[!is.na(raw_Unit_91$aod_500),], 
            aes(y = aod_500, color="AOD 500")) +
  geom_point(data=raw_Unit_91[!is.na(raw_Unit_91$aod_500),], 
             aes(y = aod_500, color="AOD 500")) +
  geom_line(data=raw_Unit_91[!is.na(raw_Unit_91$aod_675),], 
            aes(y = aod_675, color="AOD 675")) +
  geom_point(data=raw_Unit_91[!is.na(raw_Unit_91$aod_675),], 
             aes(y = aod_675, color="AOD 675")) +
  geom_line(data=raw_Unit_91[!is.na(raw_Unit_91$aod_870),], 
            aes(y = aod_870, color="AOD 870")) +
  geom_point(data=raw_Unit_91[!is.na(raw_Unit_91$aod_870),], 
             aes(y = aod_870, color="AOD 870")) +
  ggtitle("Unit 91 AOD Values by Wavelength - September 2021") +
  xlab("Time") + ylab("AOD")
ggsave(here("figs", "Wavength_Comparison.png"))

