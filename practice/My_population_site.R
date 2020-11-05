library(robotstxt)
Path<-paths_allowed("https://en.wikipedia.org/wiki/List_of_countries_and_dependencies_by_population")
#paths is true so I can scrap the web site

library(rvest)
url<-"https://en.wikipedia.org/wiki/List_of_countries_and_dependencies_by_population"
my_html<-read_html(url)
my_table<-html_nodes(my_html,"table")
population_wiki = html_table(my_html)[[1]]
population_wiki2 = html_table(my_table)[[2]]
population = population_wiki[,1:4]
View(population)
names(population)<-c("Rank","Country","Population","Data Set")
write.csv(population,"My_population_site.csv")
