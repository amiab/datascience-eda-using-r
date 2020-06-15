# explore dslabs package from Rafael A (Harvard) 
# library(help = "dslabs")

#####################
# load Iris dataset
####################
library(dslabs)
data(stars)

# get familiar with the data structure
names(stars)
str(stars)

# head / tail 
head(stars, 10)
tail(stars, 10)

levels(stars$star)
head(stars)

#############################
# summary statistics 
# get familiar with 
# the structure of our data 
############################
summary(stars)

# skimr provides larger summary statistics than summary 
# install.packages("skimr")
library(skimr)
skim(stars)


###########################
# quick data visualisation
###########################

# panel plots
plot(stars)

# scatter plot
plot(stars$Sepal.Length, star$Sepal.Width, col = "blue")

# histogram - frequency is the count within specific range (bar) 
hist(iris$Sepal.Length, col = "red", xlab = "Sepal Length")

# boxplot with ggplot
library(tidyverse)
iris %>%  ggplot(aes(Species, Sepal.Length )) + geom_boxplot() + facet_grid()
