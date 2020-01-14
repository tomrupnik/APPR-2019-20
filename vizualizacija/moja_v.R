library(ggplot)

dr_dolg <- ggplot(drzavni_dolg, aes(x=Leto, y= Dolg_bdp)) + 
     geom_line() +
     ggtitle("Državni dolg Slovenije") + xlab("Leto") + ylab("Dolg")

bdp_graf <- ggplot(bdp, aes(x=Regija, y= Vrednost)) + geom_line() +
  ggtitle("BDP Slovenije") + xlab("Regija") + ylab("Vrednost")
  