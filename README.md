# Do film releases from 1978 to 2000 have a better IMDB rating on average compared to releases from 2000 to 2022? 

## Overview
In this project we want to explore whether or not film releases 22 years prior to the 21st century have a better average rating on IMDB compared to post 21st century. 

## Progress 
In this investigation, we will analyze the imported datasets from Kaggle CSV files looking at whether or not certain genres popularity, budget, or other factors influence ratings on films within IMDB from the timelines 1978-2000 vs. 2000-2022. 

## Introduction 
Cinema is a powerful reflection of cultural shifts, technological advancements, and audience expectations. Elements such as film ratings, budgets, and genres offer valuable insights into the evolving landscape of audience preferences and the perceived quality of cinema. With the rapid evolution of filmmaking techniques—from practical effects to digital advancements—and shifting societal behaviors, it is important to examine whether older films have sustained their legacy of viewer appreciation when compared to contemporary releases.

This study focuses on exploring how the evolution of film production and audience reviewing behaviors has influenced reception, as measured by IMDB ratings. Specifically, we aim to investigate whether the average IMDB ratings of films have changed between two distinct periods: 1978 to 2000 and 2000 to 2022. By analyzing these time frames, we seek to uncover meaningful trends in film ratings, while considering the role of genre and budget in shaping audience perceptions. The findings from this analysis will provide deeper insights into the impact of filmmaking changes on audience engagement and the factors that contribute to enduring cinematic success.

## Data sources
Main data source: 
The primary dataset was obtained from Kaggle and IMDB, which contains comprehesive information about films, including their ratings, genres, release years, and other metadata. 

The purposee of the database is to serve as a public repository for film-related data, primarily used by audiences and researchers to explore movie metadata and trends.

Supplemental Data Sources:
Data on film budgets and box office performance were sourced from Box Office Mojo and The Numbers to enhance the analysis by correlating financial performance with audience ratings.

Additional genre classification and historical context were derived from public archives and film registries.

## features of analysis 

To explore whether films released between 1978 and 2000 have higher average IMDb ratings compared to those from 2000 to 2022, we will use the IMDb Top 250 Movies dataset obtained from Kaggle. This dataset includes films from 1921 to 2022 with details such as genre, rating, budget, box office revenue, and runtime. For a balanced comparison, we selected a 44-year time frame, spanning 1978 to 2022, to fairly represent films released before and after the 21st century. To ensure accurate analysis, we will tidy the data by filtering for relevant parameters, removing null values, and excluding unnecessary information to avoid complications during the investigation.

## Results summary 

Figure 1: The Average Ratings from 1978-2000 and 2000-2022

The boxplot compares average film ratings between 1978-2000 and 2000-2022. It reveals higher mean ratings and greater variation for 1978-2000. The plot also highlights one potential outlier in 1978-2000 and two in 2000-2022.

Figure 2: T-test results 

The test revealed a test statistic of 1.604 and a p-value of 0.1108, indicating no significant difference in average ratings between 1978-2000 (mean: 8.34) and 2000-2022 (mean: 8.29). The 95% confidence interval (-0.0132, 0.1275) includes 0, further supporting the decision to fail to reject the null hypothesis.

Figure 3: Frequency of Film Genre Across 1978-2022 

This line graph tracks genre popularity from 1978 to 2022, with each genre represented by a distinct color. It highlights trends in the top three genres and examines changes in their frequency over time.

Figure 4: Frequency of Top 3 Genres 

The graph shows that action and adventure genres gained significant popularity after 2000, with action emerging just before the 2000s and adventure becoming more noticeable around 1985.

Figure 5: Average Movie Budgets from 1978-2000 and 2000-2022 



