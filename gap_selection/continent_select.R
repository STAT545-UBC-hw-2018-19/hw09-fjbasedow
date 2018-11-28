library(tidyverse)

# make function that filters gapminder data by continent of choice, 
# groups it by country and calculates mean life expectancy by country  
continent_select <- function(cont) {
	library(tidyverse)
	library(gapminder)
	gapminder %>% 
		filter(continent == cont) %>% 
		group_by(country) %>%
		summarize(mean_lifeExp = mean(lifeExp))  %>% 
		write_csv(paste0(cont, "/", cont,"_selection.csv")) # save as csv with name and directory depending on continent selection
}