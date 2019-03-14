Workout 1
================

**Not breaking news: The Warriors can shoot.**
==============================================

![Warriors](https://shottracker.com/images/articles/ShotTracker_Midrange.jpg)

**Introduction**
----------------

##### Golden Sate Warrior team has many great players, they are Stephen Curry, Kevin Durant, Klay Thompson, DeMarcus Cousion, Andrew Bogut, Draymond Green, Damion Lee, Andre Iguodala, Jonas Jerebko, Alfonzo Mckinnie, Jordan Bell, Shuan Livingston, Kevon Looney, Damian Jones, Quinn Cook, Jacob Evans, and Marcus Drrickson. The most popular Golden Sate Warrior team players and this report which analysis these most famous player, they are Stephen Curry, Kevin Durant, Klay Thompson, Andre Iguodala, Draymond Green!

##### In this report, we will base on the data of 5 Warriors' players (Andre Iguodala, Draymond Green, Kevin Durant, Klay Thompson, Stephen Curry) in 2016 season and using scatter plot and table to analysis and illustrate the shooting statistics of the 5 players.

![Klay Thompson, Kevin Durant and Stephen Curry rank in the top 5 in effective field-goal percentage.](https://cdn.nba.net/nba-drupal-prod/styles/landscape_2090w/s3/2017-12/GettyImages-684463444.jpg?itok=CMilmuEa)

**Motivation**
--------------

##### From our everyday life, think about how we predict and choose events that we think is the most likely event? Anaylizing the data and table will give us a more accuratue anwer to this question. Therefore, our motivation is by gather and collect the data, anaylize the data, we are able to get a report or conclusion from data anaylzing, which means, by looking at the effective shooting percentage statistics tables and through the image of the Golden Sate Warrior shot charts, we are able to give more persion conclusion about who is the most better of player in Golden Gate Warrior team.

##### The Warriors' effective field-goal percentage of 58.5 percent is the highest mark in NBA history. So it is of great importance to know more about the top 5 players in effective field-goal percentage.

**Background**
--------------

##### GSW are on pace to be just the fourth team in the last 20 years to make more than half their shots. And when you factor in the value of 3-pointers, their shots are more valuable than any of the 1,483 other teams that have played in this league.

**Data**
--------

##### Using the data of 5 Warriors' players (Andre Iguodala, Draymond Green, Kevin Durant, Klay Thompson, Stephen Curry) in 2016 season to analysis their effective field-goal percentage.

**Analysis**
------------

``` r
library(dplyr)
```

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

##### From the shot-charts above, we find that:

-   Stephen Curry shot the most and Andre Iguodala shot the least.
-   Shots are distributed along with the three-point line, centered at the no-charge semi circle and nearly evenly distributed inside the three-point line.
-   Based on the color distribution, the numbers of made shots and the missed shots are nearly equal.
-   It is almost impossible to make shots inside the center circle.

``` r
import_shots_data <- read.csv(
  file = '~/workout01/data/shots-data.csv',
  stringsAsFactors = FALSE)
```

``` r
two_pt_eff_shot_percent_by_player <- 
  import_shots_data %>%
  filter(shot_type == "2PT Field Goal") %>%
  group_by(name) %>%
  summarise(total = sum(shot_type == "2PT Field Goal"),
            made = sum(shot_made_flag == "shot_yes"),
            perc_made = made/total) %>%
  arrange(desc(perc_made))
two_pt_eff_shot_percent_by_player
```

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <chr>          <int> <int>     <dbl>
    ## 1 Andre Iguodala   210   134     0.638
    ## 2 Kevin Durant     643   390     0.607
    ## 3 Stephen Curry    563   304     0.540
    ## 4 Klay Thompson    640   329     0.514
    ## 5 Draymond Green   346   171     0.494

##### From the 2PT effective shooting percentage table above, we find that:

-   Andre Iguodala has the highest 2 points effective shooting percentage 63.8% and Draymond Green has the lowest 2 points effective shooting percentage about 49.4%.
-   Kevin Durant has the highest number of total shots, Andre Iguodala has the fewest number of total shots.
-   The total numbers 2 points shots of Iguodala and Green are about half less than the other three players.
-   Although iguolada's total shots is only one-third of Durant, his effective shooting percentage is 0.3% higher than Durant.
-   In general, the average 2pt effective shooting percentage of among these 5 players is about 55.8%.

``` r
three_pt_eff_shot_percent_by_player <- 
  import_shots_data %>%
  filter(shot_type == "3PT Field Goal") %>%
  group_by(name) %>%
  summarise(total = sum(shot_type == "3PT Field Goal"),
            made = sum(shot_made_flag == "shot_yes"),
            perc_made = made/total) %>%
  arrange(desc(perc_made))
three_pt_eff_shot_percent_by_player
```

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <chr>          <int> <int>     <dbl>
    ## 1 Klay Thompson    580   246     0.424
    ## 2 Stephen Curry    687   280     0.408
    ## 3 Kevin Durant     272   105     0.386
    ## 4 Andre Iguodala   161    58     0.360
    ## 5 Draymond Green   232    74     0.319

##### From the 3PT effective shooting percentage table above, we find that:

-   Klay Thompson has the highest 3 points effective shooting percentage 42.4% and Draymond Green has the lowest 3 points effective shooting percentage about 31.8%.
-   Stephen Curry has the highest number of total shots, Andre Iguodala has the fewest number of total shots.
-   The total numbers 3 points shots of Iguodala and Green are about one-third less than the other three players.
-   The more total shots the higher 3 points effective shooting percentage.
-   In general, the average 3pt effective shooting percentage of among these 5 players is about 37.9%.

``` r
total_pt_eff_shot_percent_by_player <- 
  import_shots_data %>%
  filter(shot_type %in% c("2PT Field Goal", "3PT Field Goal")) %>%
  group_by(name) %>%
  summarise(total = sum(shot_type %in% c("2PT Field Goal", "3PT Field Goal")),
            made = sum(shot_made_flag == "shot_yes"),
            perc_made = made/total) %>%
  arrange(desc(perc_made))
total_pt_eff_shot_percent_by_player
```

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <chr>          <int> <int>     <dbl>
    ## 1 Kevin Durant     915   495     0.541
    ## 2 Andre Iguodala   371   192     0.518
    ## 3 Klay Thompson   1220   575     0.471
    ## 4 Stephen Curry   1250   584     0.467
    ## 5 Draymond Green   578   245     0.424

##### From the total effective shooting percentage table above, we find that:

-   Kevin Durant has the highest total points effective shooting percentage 54.1% and Draymond Green has the lowest total points effective shooting percentage about 42.3%.
-   Stephen Curry has the highest number of total shots, Andre Iguodala has the fewest number of total shots.
-   The more total shots does not ensure the higher effective shooting percentage.
-   In general, the average total effective shooting percentage of among these 5 players is about 48.4%.

**Discussion**
--------------

##### Intuitively we may think that the more total shots the the higher effective shooting percentage, however, it is not true based on the three tables we get above.

**Conclusion**
--------------

-   Andre Iguodala has the highest 2 points effective shooting percentage.
-   Klay Thompson has the highest 3 points effective shooting percentage.
-   Kevin Durant has the highest total points effective shooting percentage.
-   The average total effective shooting percentage of among these 5 players is about 48.4%. \*The average 2pt effective shooting percentage of among these 5 players is about 55.8%.
-   The average 3pt effective shooting percentage of among these 5 players is about 37.9%.

**Summary**
-----------

##### In this report, it includes:

-   One shot charts of GSW in 2016 season.
-   Three tables about the effectiveshooting percentage, for example: 2 points effective shooting % by player, 3 points effective shooting % by player, the last but not lease, the effective shooting % by player.
-   Data analysis behind the three tables and one scatter plots.
-   Conclusions behind the data.

**References**
--------------

<https://www.nba.com/article/2017/12/14/one-team-one-stat-warriors-shooting-better-ever>
