library(dplyr)
library(tidyr)
library(readr)


drzavni_dolg <- read_delim("podatki/DRZAVNI DOLG.csv", delim = ";", col_names=c("Leto", "Dolg_bdp") , skip=1, 
                      locale = locale(decimal_mark = ".", encoding="Windows-1250"))

bdp <- read_delim("podatki/BDP.csv", delim = ";",col_names=c("Regija","Leto","Vrednost") , skip=1,
                 locale= locale(decimal_mark = ".", encoding="Windows-1250"))

kakovost_zraka <- read_csv2("podatki/KAKOVOST ZRAKA.csv",col_names=c("Regija","Leto","Povprecna_koncentracija_delcev", "Dni_presezene_dnevne_koncentracije") ,
                            skip=1, na="...", locale=locale( encoding="Windows-1250"))
kakovost_zraka[is.na(x = kakovost_zraka)] <- " "

kakovost_vode <- read_csv2("podatki/KAKOVOST VODE.csv",col_names=c("Oskrbovalno_obmocje","Leto","Delez_onesnazenosti") , skip=1,
                           locale=locale( encoding="Windows-1250"))

ekolosko_kmetijstvo <- read_csv2("podatki/EKOLOSKO KMETIJSTVO.csv",col_names=c("Leto", 
                                                                               "Delež kmetijskih gospodarstev z ekološkim kmetovanjem ali s kmetovanjem v preusmeritvi [%]",
                                                                               "Delež kmetijskih zemljišč v uporabi z ekološko pridelavo ali v preusmeritvi [%]") , 
                                 skip=1, locale=locale( encoding="Windows-1250"))


raba_naravnih_virov <- read_delim("podatki/RABA NARAVNIH VIROV.csv", delim=";", col_names=c("Leto",
                                                                               "Poraba rastlinskih hranil na hektar kmetijskega zemljišča v uporabi - SKUPAJ [kg/ha]",
                                                                               "Poraba N na hektar kmetijskega zemljišča v uporabi [kg/ha]",
                                                                               "Poraba P2O5 na hektar kmetijskega zemljišča v uporabi [kg/ha]",
                                                                               "Poraba K2O na hektar kmetijskega zemljišča v uporabi [kg/ha]",
                                                                               "Intenzivnost poseka lesa [%]") , 
                                 skip=1, locale=locale(decimal_mark = ".", encoding="Windows-1250"))


kazalniki_varnosti <- read_delim("podatki/KAZALNIKI VARNOSTI.csv", delim = ";", col_names=c("Regija", "Leto", 
                                                                             "Povprečna stopnja registrirane brezposelnosti po regiji stalnega prebivališča [%]",
                                                                             "Število prebivalcev na 1 zdravnika [število]",
                                                                             "Število študentov v terciarnem izobraževanju na 1.000 prebivalcev po regijah stalnega prebivališča [število/1.000 prebivalcev]",
                                                                             "Delež obsojenih oseb med prebivalci regije po regiji stalnega prebivališča [%]"),
                                   skip=1, na="...", locale= locale(decimal_mark = ".", encoding="Windows-1250"))
kazalniki_varnosti[is.na(x = kazalniki_varnosti)] <- " "

skrb_za_generacije <- read_delim("podatki/SKRB ZA GENERACIJE.csv", delim=";", col_names=c("Regija",
                                                                        "Leto",
                                                                        "Skupni koeficient starostne odvisnosti",
                                                                        "Koeficient starostne odvisnosti mladih",
                                                                        "Koeficient starostne odvisnosti starih",
                                                                        "Delež otrok v vrtcih [%]") , 
                                skip=1, na="...", locale=locale(decimal_mark = ".", encoding="Windows-1250"))
skrb_za_generacije[is.na(x = skrb_za_generacije)] <- " "

vlaganje_v_razvoj <- read_delim("podatki/VLAGANJE V RAZVOJ.csv", delim = ";",col_names=c("Oskrbovalno obmocje",
                                                                           "Vir financiranja",
                                                                           "Leto",
                                                                           "Delež izdatkov za raziskovalno-razvojno dejavnost v poslovnem sektorju po virih financiranja izdatkov [%]") , 
                               skip=1,na="0.0" ,locale=locale (decimal_mark = ".", encoding="Windows-1250"))
vlaganje_v_razvoj[is.na(x = vlaganje_v_razvoj)] <- " "
  
