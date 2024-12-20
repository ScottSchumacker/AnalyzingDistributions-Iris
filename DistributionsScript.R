# Scott Schumacker
# Analyzing Distributions Iris Dataset

# Loading packages
library(ggplot2)
library(dplyr)

# Viewing the distribution for Sepal Length across all categories
ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram(fill = "grey", color = "black") +
  theme_classic() +
  geom_vline(aes(xintercept = mean(Sepal.Length)), color = "red") +
  geom_vline(aes(xintercept = median(Sepal.Length)), color = "blue") +
  xlab("Sepal Length") +
  ylab('Count')
# Appears normally distributed
# Data is centered around mean and median

# Viewing the distribution for Sepal Width across all categories
ggplot(iris, aes(x = Sepal.Width)) +
  geom_histogram(fill = "grey", color = "black") +
  theme_classic() +
  geom_vline(aes(xintercept = mean(Sepal.Width)), color = "red") +
  geom_vline(aes(xintercept = median(Sepal.Width)), color = "blue") +
  xlab("Sepal Width") +
  ylab("Count")
# Appears normally distributed
# Data is centered mean and median

# Viewing the distribution for Sepal Length across all categories
ggplot(iris, aes(x = Petal.Length)) +
  geom_histogram(fill = "grey", color = "black") +
  theme_classic() +
  geom_vline(aes(xintercept = mean(Petal.Length)), color = "red") +
  geom_vline(aes(xintercept = median(Petal.Length)), color = "blue") +
  xlab("Petal Length") +
  ylab('Count')
# Appears skewed 
# Data is not centered around the mean and median. In addition, mean is
# lower than median

# Viewing the distribution for Sepal Width across all categories
ggplot(iris, aes(x = Petal.Width)) +
  geom_histogram(fill = "grey", color = "black") +
  theme_classic() +
  geom_vline(aes(xintercept = mean(Petal.Width)), color = "red") +
  geom_vline(aes(xintercept = median(Petal.Width)), color = "blue") +
  xlab("Petal Width") +
  ylab("Count")
# Appears skewed
# Data is not centered around the mean and median and mean is lower than median

# Running Shapiro-Wilk test to see if our features are normally distributed