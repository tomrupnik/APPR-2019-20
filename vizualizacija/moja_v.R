library(ggplot2)
library(tmap)

drzavni_dolg <- ggplot(drzavni_dolg, aes(x=Leto, y= Dolg_bdp)) + 
     geom_line() +
     ggtitle("Državni dolg Slovenije") + xlab("Leto") + ylab("Dolg")

bdp_graf <- ggplot(bdp, aes(x = Leto, y = Vrednost)) + geom_point(aes(colour = factor(Regija))) +
  labs(title = "BDP slovenskih regij med leti 2000 in 2015", colour = "Regija")   

kakovost_zraka_graf <- ggplot(kakovost_zraka, aes(x = Leto, y = Povprecna_koncentracija_delcev)) + geom_point(aes(colour = factor(Regija))) +
  labs(title = "Kakovost zraka po regijah 2000-2015", colour = "Regija")

kakovost_vode_graf <- ggplot(kakovost_vode, aes(x = Leto, y = Delez_onesnazenosti)) + geom_point(aes(colour = factor(Oskrbovalno_obmocje))) +
  labs(title = "Kakovost zraka po regijah 2000-2015", colour = "Oskrbovalno_obmocje")


povprecje.bdp.po.regijah <- bdp %>% group_by(Regija) %>% summarise(Povprecje=sum(Vrednost)/16)

zemljevid <- uvozi.zemljevid("https://biogeo.ucdavis.edu/data/gadm3.6/shp/gadm36_SVN_shp.zip", "gadm36_SVN_1")
zemljevid1 <- tm_shape(merge(zemljevid, povprecje.bdp.po.regijah, by.x="NAME_1", by.y="Regija" )) + 
  tm_polygons("Povprecje",title="Povprečje") + tm_layout(title="Povprečni BDP po regijah 2000-2015") 



