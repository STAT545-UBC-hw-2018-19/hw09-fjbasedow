all: Asia Europe Americas Africa report.md 

clean: 
	rm -f Asia_selection.csv Asia_plot.png Europe_selection.csv Europe_plot.png report.md Americas_selection.csv Americas_plot.png Africa_selection.csv Africa_plot.png

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

# make directory for Americas files
Americas:
	mkdir -p $@

# apply continent_select function so that Americas data gets selected and saved
Americas_selection.csv: continent_select.R
	RScript -e 'source("$<"); continent_select("Americas")'

# apply gap_plot function to Americas.csv data, making a plot of life expectancy in Americas
Americas_plot.png: Americas_selection.csv gap_plot.R
	RScript -e 'library(tidyverse); gap_Americas <- read_csv("Americas/$<"); source("gap_plot.R"); gap_plot(gap_Americas, "Americas")'
	rm -f Rplots.pdf

# make directory for Africa files
Africa:
	mkdir -p $@

# apply continent_select function so that Africa data gets selected and saved
Africa_selection.csv: continent_select.R
	RScript -e 'source("$<"); continent_select("Africa")'

# apply gap_plot function to Africa.csv data, making a plot of life expectancy in Africa
Africa_plot.png: Africa_selection.csv gap_plot.R
	RScript -e 'library(tidyverse); gap_Africa <- read_csv("Africa/$<"); source("gap_plot.R"); gap_plot(gap_Africa, "Africa")'
	rm -f Rplots.pdf

report.md: report.Rmd Asia_selection.csv Asia_plot.png Europe_selection.csv Europe_plot.png Americas_selection.csv Americas_plot.png Africa_selection.csv Africa_plot.png
	RScript -e 'rmarkdown::render("$<")'
	rm -f report.html