## STAT547 HW09 repository

This repo contains my homework 9 for STAT547. The goal of this assignment was to modify or create a make activity pipeline. 
I decided to make my own pipeline to accomplish an analysis on the `gapminder` data set. 

My pipeline makes use of two functions, [continent_select](https://github.com/STAT545-UBC-students/hw09-fjbasedow/blob/master/gap_selection/continent_select.R) and [gap_plot](https://github.com/STAT545-UBC-students/hw09-fjbasedow/blob/master/gap_selection/gap_plot.R). 

`continent_select` filters the gapminder data for a continent of interest, calculates the mean life expectancy for each country in that continent and saves this data in a .csv file. 

`gap_plot` plots the mean life expectancy for each country, ordered by mean life expectancy and saves the plot as a .png file.

Both functions are created in their own .R file that can be accessed in the Makefile.

With [my pipeline](https://github.com/STAT545-UBC-students/hw09-fjbasedow/blob/master/gap_selection/Makefile) I make use of these two functions to calculate and plot the mean life expectancy in each country in Asia and in Europe. The information is then summarized in a [report](https://github.com/STAT545-UBC-students/hw09-fjbasedow/blob/master/gap_selection/report.md).
