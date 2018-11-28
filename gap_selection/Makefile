all: Asia Europe Americas Africa report.md 

clean: 
	rm -f Asia_selection.csv Asia_plot.png Europe_selection.csv Europe_plot.png report.md Americas_selection.csv Americas_plot.png Africa_selection.csv Africa_plot.png

Asia:
	mkdir -p $@

Asia_selection.csv: continent_select.R
	RScript -e 'source("$<"); continent_select("Asia")'

Asia_plot.png: Asia_selection.csv gap_plot.R
	RScript -e 'library(tidyverse); gap_Asia <- read_csv("Asia/$<"); source("gap_plot.R"); gap_plot(gap_Asia, "Asia")'
	rm -f Rplots.pdf

Europe:
	mkdir -p $@

Europe_selection.csv: continent_select.R
	RScript -e 'source("$<"); continent_select("Europe")'

Europe_plot.png: Europe_selection.csv gap_plot.R
	RScript -e 'library(tidyverse); gap_Europe <- read_csv("Europe/$<"); source("gap_plot.R"); gap_plot(gap_Europe, "Europe")'
	rm -f Rplots.pdf

Americas:
	mkdir -p $@

Americas_selection.csv: continent_select.R
	RScript -e 'source("$<"); continent_select("Americas")'

Americas_plot.png: Americas_selection.csv gap_plot.R
	RScript -e 'library(tidyverse); gap_Americas <- read_csv("Americas/$<"); source("gap_plot.R"); gap_plot(gap_Americas, "Americas")'
	rm -f Rplots.pdf

Africa:
	mkdir -p $@

Africa_selection.csv: continent_select.R
	RScript -e 'source("$<"); continent_select("Africa")'

Africa_plot.png: Africa_selection.csv gap_plot.R
	RScript -e 'library(tidyverse); gap_Africa <- read_csv("Africa/$<"); source("gap_plot.R"); gap_plot(gap_Africa, "Africa")'
	rm -f Rplots.pdf

report.md: report.Rmd Asia_selection.csv Asia_plot.png Europe_selection.csv Europe_plot.png Americas_selection.csv Americas_plot.png Africa_selection.csv Africa_plot.png
	RScript -e 'rmarkdown::render("$<")'
	rm -f report.html