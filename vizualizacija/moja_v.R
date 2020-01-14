library(ggplot2)

dr_dolg <- ggplot(drzavni_dolg, aes(x=Leto, y= dolg_bdp)) + 
     geom_line() +
     ggtitle("Državni dolg Slovenije") + xlab("Leto") + ylab("Dolg")
