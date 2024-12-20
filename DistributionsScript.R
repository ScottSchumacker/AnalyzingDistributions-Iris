# Scott Schumacker
# Analyzing Distributions Iris Dataset

# Loading packages
library(ggplot2)
library(dplyr)

# Viewing the distribution for Sepal Length across all categories
ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram(fill = "#BC6C25", color = "black") +
  theme_classic() +
  xlab("Sepal Length") +
  ylab('Count')
# Appears normally distributed

# Viewing the distribution for Sepal Width across all categories
ggplot(iris, aes(x = Sepal.Width)) +
  geom_histogram(fill = "#BC6C25", color = "black") +
  theme_classic() +
  xlab("Sepal Width") +
  ylab("Count")
# Appears normally distributed

# Viewing the distribution for Sepal Length across all categories
ggplot(iris, aes(x = Petal.Length)) +
  geom_histogram(fill = "#BC6C25", color = "black") +
  theme_classic() +
  xlab("Petal Length") +
  ylab('Count')
# Appears skewed 

# Viewing the distribution for Sepal Width across all categories
ggplot(iris, aes(x = Petal.Width)) +
  geom_histogram(fill = "#BC6C25", color = "black") +
  theme_classic() +
  xlab("Petal Width") +
  ylab("Count")
# Appears skewed