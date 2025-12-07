install.packages("rvest")
library(rvest)
link <- "https://en.wikipedia.org/wiki/Schengen_Area"
wiki_page <- read_html(link)
wiki_page
Summary_table <- html_element(wiki_page, "table.sortable") %>%
  html_table()
write.csv(Summary_table, "Summary_table.csv", row.names = FALSE)
