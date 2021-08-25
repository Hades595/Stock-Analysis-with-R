library(quantmod)
library(ggplot2)

gme <- getSymbols("GME", src = "yahoo", from = "2016-01-01", to = "2021-08-01", auto.assign = FALSE)
ggplot(gme, aes(x = index(gme), y = gme[,6])) + geom_line(color = "darkblue") + ggtitle("GameStop Corp. prices series") + xlab("Date") + ylab("Price") + theme(plot.title = element_text(hjust = 0.5)) + scale_x_date(date_labels = "%b %y", date_breaks = "6 months")

ggsave("gme.png")
