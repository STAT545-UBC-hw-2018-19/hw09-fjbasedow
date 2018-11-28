library(tidyverse)
continent_select <- function(cont) {
	library(tidyverse)
	library(gapminder)
	gapminder %>% 
		filter(continent == cont) %>% 
		group_by(country) %>%
		summarize(mean_lifeExp = mean(lifeExp))
}