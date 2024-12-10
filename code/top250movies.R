install.packages("dplyr") 
install.packages("tidyr")
install.packages("ggplot2") 
install.packages("stats") 
install.packages("knitr") 
library(dplyr) 
library(tidyr)
library(ggplot2) 
library(stats)
library(knitr) 
library(readr)

IMDB_Top_250_Movies <- read_csv("~/Downloads/IMDB Top 250 Movies.csv")
View(IMDB_Top_250_Movies)

from78_00 <- IMDB_Top_250_Movies |> filter(year >= 1978 & year <= 2000)

from00_22 <- IMDB_Top_250_Movies |> filter(year >= 2000 & year <= 2022)

from78_00_avg <- mean(from78_00$rating, na.rm = TRUE) 
from00_22_avg <- mean(from00_22$rating, na.rm = TRUE)

t_test_result <- t.test(from78_00$rating, from00_22$rating) 
print(t_test_result)

#data:  from78_00$rating and from00_22$rating
#t = 1.604, df = 149.74, p-value = 0.1108
#alternative hypothesis: true difference in means is not equal to 0
#95 percent confidence interval:
  #-0.01324771  0.12751053
#sample estimates:
  #mean of x mean of y 
#8.343590  8.286458 

IMDB_Top_250_Movies$period <- ifelse(IMDB_Top_250_Movies$year >= 1978 & IMDB_Top_250_Movies$year <= 2000, "1978 - 2000", "2000 - 2022")
ggplot(IMDB_Top_250_Movies, aes(x = period, y = rating, fill = period)) +
       geom_boxplot() + 
         labs(title = "Average Ratings From 1978-2022 and 2000-2022",
              x = "Year",
              y = "Ratings") + 
         scale_color_manual(values = c("1978-2000" = "aquamarine4", "2000-2022" = "coral1")) 
       theme_minimal()
       
       
genre78_22 <- IMDB_Top_250_Movies |> 
  filter(year >= 1978 & year <= 2022) 

genre_split <- genre78_22 |> 
  separate_rows(genre, sep = ",") |> 
  mutate(genre = trimws(genre)) 

genre_count <- genre_split |> 
  group_by(year, genre) |>
  summarise(n = n(), .groups = "drop") 

ggplot(genre_count, aes(x = year, y = n, color = genre)) + 
  geom_line(linewidth = 1) + 
  labs(title = "Frequency of Film Genre Across 1978 - 2022",
       x = "Year",
       y = "Frequency of Genres",
       color = "Genres") + 
  theme_minimal() + 
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold"),
    plot.subtitle = element_text(hjust = 0.5)
  )



