#clear all existing variables
rm(list=ls())

#import dataset
title.basics.tsv <- read.delim2("C:/Users/Stefanos/Desktop/IMDB - R project/title.basics.tsv.gz")

#create subset that contains only movies
movies_data <- subset(title.basics.tsv, titleType == "movie")

#transform runtimeMinutes field to integer
movies_data$runtimeMinutes <- as.integer(movies_data$runtimeMinutes)

#transform startYear field to integer
movies_data$startYear <- as.integer(movies_data$startYear)

#identify and remove outliers (e.g movies released after 2022)
movies_data <- subset(movies_data, movies_data$startYear < 2023)

#identify and remove outliers (e.g movies' length less than 40min or more than 360min)
movies_data <- subset(movies_data, movies_data$runtimeMinutes > 40 & movies_data$runtimeMinutes < 360)

#summary of movies_data subset
summary(movies_data)

#create subset that contains only movies since 2010
since2010 <- subset(movies_data, titleType == "movie" & startYear >= 2010)

#create subset that contains only movies since 2010
before2010 <- subset(movies_data, titleType == "movie" & startYear < 2010)

#calculate average movie time since 2010
mean(since2010$runtimeMinutes, na.rm = TRUE)

#calculate average movie time before 2010
mean(before2010$runtimeMinutes, na.rm = TRUE)


#null hypothesis:         movies have the same average length before and after 2010
#alternative hypothesis:  movies released after 2010 have significantly greater length

#use the t.test to gauge our confidence and to see if we can trust our means (95% confidence interval)
t.test(since2010$runtimeMinutes, before2010$runtimeMinutes, alternative = "greater", conf.level = 0.95)


#A p-value of 0.00331 signifies that we can reject the null hypothesis that movies before and after 2010 
#have the same length, since 0.00331 < 0.05
