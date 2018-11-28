all: Asia Europe report.md 

clean: 
	rm -f Asia_selection.csv Asia_plot.png Europe_selection.csv Europe_plot.png report.md 

# make directory for Asia files
Asia:
	mkdir -p $@ 

# apply continent_select function so that Asia data gets selected and saved
Asia_selection.csv: continent_select.R
	RScript -e 'source("$<"); continent_select("Asia")' 

# apply gap_plot function to Asia.csv data, making a plot of life expectancy in Asia
Asia_plot.png: Asia_selection.csv gap_plot.R
	RScript -e 'library(tidyverse); gap_Asia <- read_csv("Asia/$<"); source("gap_plot.R"); gap_plot(gap_Asia, "Asia")'
	rm -f Rplots.pdf

# make directory for Europe files
Europe:
	mkdir -p $@

# apply continent_select function so that Europe data gets selected and saved
Europe_selection.csv: continent_select.R
	RScript -e 'source("$<"); continent_select("Europe")'

# apply gap_plot function to Europe.csv data, making a plot of life expectancy in Europe
Europe_plot.png: Europe_selection.csv gap_plot.R
	RScript -e 'library(tidyverse); gap_Europe <- read_csv("Europe/$<"); source("gap_plot.R"); gap_plot(gap_Europe, "Europe")'
	rm -f Rplots.pdf

report.md: report.Rmd Asia_selection.csv Asia_plot.png Europe_selection.csv Europe_plot.png
	RScript -e 'rmarkdown::render("$<")'
	rm -f report.html