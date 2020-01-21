# use the data() function
# load NHANES dataset from the hexbin package
# load dataset from the hexbin package
# this does not load the functionality of hexbin
# only loads the data
data("NHANES", package = "hexbin")

# multiple choice questions
# run ls() and sessionInfo() again - answer questions
# 1. How many objects are now in the global environment? [2]
# 2. how many packages are listed in "other attached packages" [1]
ls()
sessionInfo()

# using the str() and class() functions, answer the following on the NHANES
# dataset
# 1. how many variables are in the NHANES dataset [15]
# 2. how many observations are in the NHANES dataset [9575]
# 3. what variable type is "Sex" [factor]
# 4. what type of object is the NHANES dataset [data.frame]
dim(NHANES)
str(NHANES)
class(NHANES)

# select the variable for sex with $ operator
# use class() to get the object type
class(NHANES$Sex)

# view top rows use head() function
head(NHANES$sex)

# Why did we get NULL? Spelling and Case matters
head(NHANES$Sex)

# view bottom 10 rows with tail()
tail(x = NHANES$Sex, n = 10)

# get summary statistics - frequencies
summary(NHANES$Sex)

# tidyverse approach
# using the pipe operator %>%
library(dplyr)
NHANES %>%
  select(Sex) %>%
  summary()

# lets build some plots

library(ggplot2)

# Visualize data
# Create Histogram of Hemoglobin
ggplot(NHANES, aes(x = Hemoglobin)) +
  geom_histogram()

# change color of outline and fill
ggplot(NHANES, aes(x = Hemoglobin)) +
  geom_histogram(color = "black", fill = "green")

# add panels by sex, use facet_wrap()
ggplot(NHANES, aes(x = Hemoglobin)) +
  geom_histogram(color = "black", fill = "green") +
  facet_wrap(vars(Sex))

# change colors by sex
# colors defined inside aes() use variable specific coloring
# colors defined outside aes() use actual colors for global coloring
ggplot(NHANES, aes(x = Hemoglobin, fill = Sex)) +
  geom_histogram(color = "black") +
  facet_wrap(vars(Sex))

# create scatterplot of Transferin by Hemoglobin
# set x-axis to Hemoglobin
# set y-axis to Transferin
# use geom_point() to add points
ggplot(NHANES, aes(x = Hemoglobin, y = Transferin)) +
  geom_point()

# use aes() inside geom_point to color points by Smoke
# smoking status
ggplot(NHANES, aes(x = Hemoglobin, y = Transferin)) +
  geom_point(aes(color = Smoke))

# next facet_wrap() by Smoke use ~ operator
ggplot(NHANES, aes(x = Hemoglobin, y = Transferin)) +
  geom_point(aes(color = Smoke)) +
  facet_wrap(~Smoke)

# next add smoothed fit lines using geom_smooth()
# make the smoothed fit lines black
ggplot(NHANES, aes(x = Hemoglobin, y = Transferin)) +
  geom_point(aes(color = Smoke)) +
  facet_wrap(~Smoke) + 
  geom_smooth(color = "black")

