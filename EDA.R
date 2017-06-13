library(ggplot2)
library(dplyr)
raw = read.csv("Project(Part 1).csv", 
               header = TRUE, sep = ',')
# �έp�ԭz
result = summary(raw)

# �䭷�״_�u�{�N�X
ans <- filter(raw, raw$�䭷 == "97�~���֧J�����e") %>%
       group_by(�����W��, �u�{�N�X) %>%
       summarise(price = sum(�fĳ�g�O.�d��.))
highPrice <- filter(ans, price > 500000)

ans2 <- filter(raw, raw$�䭷 == "97�~���֧J�����e") %>%
        group_by(�����W��, �u�{�N�X)
  ggplot(ans2, aes(x = �u�{�N�X)) +
    geom_bar(position = "dodge",
             aes(fill = �����W��))

work <- filter(raw, raw$�u�{�N�X == "C1") %>%
        group_by(�����W��, �m.����.) %>%
        summarise(price = sum(�fĳ�g�O.�d��.))

ggplot(data = ans, aes(x = �u�{�N�X, 
                       y = price,
                       group = �����W��)) +
         geom_bar(position = "dodge", 
                  stat = "identity",
                  aes(fill = �����W��))

ggplot(data = ans, aes(x = �u�{�N�X, 
                       group = �����W��)) +
  geom_bar(position = "dodge", 
           aes(fill = �����W��))

# �����W�٥ӽФu�{
ans <- filter(raw, raw$�䭷 == "97�~���֧J�����e") %>%
  group_by(�����W��, �u�{�N�X) %>%
  summarise(price = sum(�fĳ�g�O.�d��.))
ggplot(data = ans, aes(x = �����W��, 
                       y = price,
                       fill = �u�{�N�X)) +
  geom_bar(stat = "identity")

# �U���q�L���fĳ�g�O�H
out <- group_by(raw, �����W��, �䭷, �u�{�N�X) %>%
  summarise(price = sum(�fĳ�g�O.�d��.))
ggplot(data = out, aes(x = �����W��,
                       y = price)) +
    geom_boxplot()