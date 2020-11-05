library(robotstxt)
path<-paths_allowed("https://www.careerpower.in/cricket-world-cup-winners-list.html")

library(rvest)
url<-"https://www.careerpower.in/cricket-world-cup-winners-list.html"
web<-read_html("https://www.careerpower.in/cricket-world-cup-winners-list.html")
table<-html_nodes(web,"table")
result<-html_table(table)[[2]]
View(result)
write.csv(result,"worldcup_winner.csv")
