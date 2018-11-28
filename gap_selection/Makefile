all: report.md

clean: 
	rm -f Asia_selection.csv Asia_plot.png Europe_selection.csv Europe_plot.png report.md

Asia_selection.csv: continent_select.R
	RScript -e 'source("$<"); continent_select("Asia") %>% write_csv("$@")'
	
Asia_plot.png: Asia_selection.csv gap_plot.R
	RScript -e 'library(tidyverse); gap_Asia <- read_csv("$<"); source("gap_plot.R"); gap_plot(gap_Asia, "Asia"); ggsave("$@")'
	rm -f Rplots.pdf

Europe_selection.csv: continent_select.R
	RScript -e 'source("$<"); continent_select("Europe") %>% write_csv("$@")'
	
Europe_plot.png: Europe_selection.csv gap_plot.R
	RScript -e 'library(tidyverse); gap_Europe <- read_csv("$<"); source("gap_plot.R"); gap_plot(gap_Europe, "Europe"); ggsave("$@")'
	rm -f Rplots.pdf
	
report.md: report.Rmd Asia_selection.csv Asia_plot.png Europe_selection.csv Europe_plot.png
	RScript -e 'rmarkdown::render("$<")'
	rm -f report.html