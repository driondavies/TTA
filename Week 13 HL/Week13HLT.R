library(ggplot2)
midwest
d<-ggplot(midwest,aes(state, fill=category))
d + geom_bar(position = "stack")

