library(tidyverse)

strawberry <- read.csv("strawberry_oct4.csv",header = TRUE)


#strwb_census <- subset(strawberry, Program == "CENSUS")
#strwb_survey <- subset(strawberry, Program == "SURVEY")

strwb_census <- strawberry |> filter(Program == "CENSUS")
strwb_survey <- strawberry |> filter(Program == "SURVEY")
vals <- strwb_census$Value

strwb_census$Value <- gsub(","," ",strwb_census$Value)
strwb_census$Value[strwb_census$Value == "(D)"] <- NA
