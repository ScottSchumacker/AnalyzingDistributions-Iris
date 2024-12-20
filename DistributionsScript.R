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

# Visualizing distributions by group
# Grouped histograms
iris %>% 
  ggplot(aes(x = Sepal.Length, fill = Species)) +
  geom_histogram(color = "black") +
  theme_classic()

iris %>% 
  ggplot(aes(x = Sepal.Width, fill = Species)) +
  geom_histogram(color = "black") +
  theme_classic()

iris %>% 
  ggplot(aes(x = Petal.Length, fill = Species)) +
  geom_histogram(color = "black") +
  theme_classic()
# Setosa species tends to deviate from the rest and petal length is shorter

iris %>% 
  ggplot(aes(x = Petal.Width, fill = Species)) +
  geom_histogram(color = "black") +
  theme_classic()
# Setosa species tends to deviate from the rest and petal width is smaller

# Grouped box plots
iris %>% 
  ggplot(aes(x = Species, y = Petal.Length, fill = Species)) +
  geom_boxplot() + 
  theme_classic()

iris %>% 
  ggplot(aes(x = Species, y = Petal.Width, fill = Species)) +
  geom_boxplot() +
  theme_classic()

iris %>% 
  ggplot(aes(x = Species, y = Sepal.Width, fill = Species)) +
  geom_boxplot() +
  theme_classic()

iris %>% 
  ggplot(aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() +
  theme_classic()

# Running Shapiro-Wilk test to see if our features are normally distributed
# H0: Data is normally distributed
# Ha: Data is not normally distributed

shapiro.test(iris$Sepal.Length)
# Sepal Length data is not normally distributed

shapiro.test(iris$Sepal.Width)
# Sepal Width data is normally distributed

shapiro.test(iris$Petal.Length)
# Petal Length data is not normally distributed

shapiro.test(iris$Petal.Width)
# Petal Width data is not normally distributed