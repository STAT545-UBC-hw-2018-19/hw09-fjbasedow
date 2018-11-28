Life expectancy in Asia and Europe
================
Frederike Basedow
27 November 2018

The goal of this analysis is to determine the mean life expectancy in countries of Asia and Europe. These continents were randomly chosen as examples. The `gapminder` data set contains life expectancy data from 12 different years. For each country, I calculated the mean life expectancy of those years. Let's have a look at Asia first:

``` r
library(tidyverse)
library(knitr)

Asia_data <- read_csv("Asia/Asia_selection.csv")

kable(head(Asia_data), col.names = c("Country", "Mean Life Expectancy"))
```

| Country          |  Mean Life Expectancy|
|:-----------------|---------------------:|
| Afghanistan      |              37.47883|
| Bahrain          |              65.60567|
| Bangladesh       |              49.83408|
| Cambodia         |              47.90275|
| China            |              61.78514|
| Hong Kong, China |              73.49283|

Here is a plot of the mean life expectancy in each country, sorted by mean life expectancy:

![](Asia/Asia_plot.png)

Looks like Afghanistan has the lowest mean life expectancy and Japan has the highest.

Let's have a look at the same data from Europe:

``` r
Europe_data <- read_csv("Europe/Europe_selection.csv")

kable(head(Europe_data), col.names = c("Country", "Mean Life Expectancy"))
```

| Country                |  Mean Life Expectancy|
|:-----------------------|---------------------:|
| Albania                |              68.43292|
| Austria                |              73.10325|
| Belgium                |              73.64175|
| Bosnia and Herzegovina |              67.70783|
| Bulgaria               |              69.74375|
| Croatia                |              70.05592|

Here is the plot of mean life expectancies for each country in Europe:

![](Europe/Europe_plot.png)

Turkey has the lowest mean life expectancy in Europe, Iceland has the highest.
