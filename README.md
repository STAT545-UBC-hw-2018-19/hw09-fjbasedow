## STAT547 HW09 repository

This repo contains my homework 9 for STAT547. The goal of this assignment was to modify or create a make activity pipeline. 
I decided to make my own pipeline to accomplish an analysis on the `gapminder` data set. 

My pipeline makes use of two functions, [continent_select](https://github.com/STAT545-UBC-students/hw09-fjbasedow/blob/master/gap_selection/continent_select.R) and [gap_plot](https://github.com/STAT545-UBC-students/hw09-fjbasedow/blob/master/gap_selection/gap_plot.R). I created both functions in their own .R file that can be accessed in the Makefile.

`continent_select` filters the gapminder data for a continent of interest, calculates the mean life expectancy for each country in that continent and saves this data in a .csv file. 

`gap_plot` plots the mean life expectancy for each country, ordered by mean life expectancy and saves the plot as a .png file.

The information is then summarized in a [report](https://github.com/STAT545-UBC-students/hw09-fjbasedow/blob/master/gap_selection/report.md).

All files can be found in the [gap_selection folder](https://github.com/STAT545-UBC-students/hw09-fjbasedow/tree/master/gap_selection) and here is an overview of the important files:

- [my Makefile](https://github.com/STAT545-UBC-students/hw09-fjbasedow/blob/master/gap_selection/Makefile)
- [the continent_select.R file](https://github.com/STAT545-UBC-students/hw09-fjbasedow/blob/master/gap_selection/continent_select.R)
- [the gap_plot.R file](https://github.com/STAT545-UBC-students/hw09-fjbasedow/blob/master/gap_selection/gap_plot.R)
- [the report](https://github.com/STAT545-UBC-students/hw09-fjbasedow/blob/master/gap_selection/report.md)

