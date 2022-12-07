#clear all existing variables
rm(list=ls())

#import dataset
title.basics.tsv <- read.delim2("C:/Users/Stefanos/Desktop/IMDB - R project/title.basics.tsv.gz")

#create subset that contains only movies
movies_data <- subset(title.basics.tsv, titleType == "movie")

#transform runtimeMinutes field to integer
movies_data$runtimeMinutes <- as.integer(movies_data$runtimeMinutes)

#create subset that contains only movies since 2010
since2010 <- subset(movies_data, titleType == "movie" & startYear >= 2010)

#create subset that contains only movies since 2010
before2010 <- subset(movies_data, titleType == "movie" & startYear < 2010)

#calculate average movie time since 2010
mean(since2010$runtimeMinutes, na.rm = TRUE)

#calculate average movie time before 2010
mean(before2010$runtimeMinutes, na.rm = TRUE)