#####################
# load Iris dataset
####################

library(datasets)
data("iris")

# or from remote csv file - install package RCurl  
# library(RCurl) 
# myiris <- read.csv(text = getURL("http://remote-location.com/file.csv"))

#############################
# summary statistics 
# get familiar with 
# the structure of our data 
############################

# view df - use view(iris) or just...
iris

# structure of df
str(iris)

# head / tail 
head(iris, 10)
tail(iris, 10)

# summary 
summary(iris)
summary(iris$Sepal.Width)

# any missing data 
is.na(iris)
# get total of missing data
sum(is.na(iris))
# need to handle any missing values

# skimr provides larger summary statistics than summary 
# install.packages("skimr")
library(skimr)
skim(iris)

# group data by species instead of all species together 
library(dplyr)
# iris %>% group_by(Species) %>% summary()
iris %>% group_by(Species) %>% skim()


###########################
# quick data visualisation
###########################

# panel plots
plot(iris)

# scatter plot
plot(iris$Sepal.Length, iris$Sepal.Width, col = "blue")

# histogram - frequency is the count within specific range (bar) 
hist(iris$Sepal.Length, col = "red", xlab = "Sepal Length")

# boxplot with ggplot
library(tidyverse)
iris %>%  ggplot(aes(Species, Sepal.Length )) + geom_boxplot() + facet_grid()
  