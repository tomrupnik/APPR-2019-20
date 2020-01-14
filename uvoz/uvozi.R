library(dplyr)
library(tidyr)
library(readr)



drzavni_dolg <- read_csv2("podatki/DRZAVNI DOLG.csv",col_names=c("Leto", "Dolg_BDP[%]") , skip=1,
                      locale=locale( encoding="Windows-1250"))

bdp <- read_csv2("podatki/BDP.csv",col_names=c("Regija","Leto","Vrednost") , skip=1,
                 locale=locale( encoding="Windows-1250"))

kakovost_zraka <- read_csv2("podatki/KAKOVOST ZRAKA.csv",col_names=c("Merilno mesto","Povprečna letna koncentracija delcev PM10 [µg/m3]",
                                                                     "Število dni s preseženo dnevno mejno koncentracijo delcev PM10 [število]"),
                            skip=1, na="...", locale=locale( encoding="Windows-1250"))
kakovost_zraka[is.na(x = kakovost_zraka)] <- " "

kakovost_vode <- read_csv2("podatki/KAKOVOST VODE.csv",col_names=c("Oskrbovalno obmocje","Leto","Vrednost") , skip=1,
                           locale=locale( encoding="Windows-1250"))

ekolosko_kmetijstvo <- read_csv2("podatki/EKOLOSKO KMETIJSTVO.csv",col_names=c("Leto", 
                                                                               "Delež kmetijskih gospodarstev z ekološkim kmetovanjem ali s kmetovanjem v preusmeritvi [%]",
                                                                               "Delež kmetijskih zemljišč v uporabi z ekološko pridelavo ali v preusmeritvi [%]") , 
                                 skip=1, locale=locale( encoding="Windows-1250"))


raba_naravnih_virov <- read_csv2("podatki/RABA NARAVNIH VIROV.csv",col_names=c("Leto",
                                                                               "Poraba rastlinskih hranil na hektar kmetijskega zemljišča v uporabi - SKUPAJ [kg/ha]",
                                                                               "Poraba N na hektar kmetijskega zemljišča v uporabi [kg/ha]",
                                                                               "Poraba P2O5 na hektar kmetijskega zemljišča v uporabi [kg/ha]",
                                                                               "Poraba K2O na hektar kmetijskega zemljišča v uporabi [kg/ha]",
                                                                               "Intenzivnost poseka lesa [%]") , 
                                 skip=1, locale=locale( encoding="Windows-1250"))


kazalniki_varnosti <- read_csv2("podatki/KAZALNIKI VARNOSTI.csv",col_names=c("Regija",
                                                                             "Povprečna stopnja registrirane brezposelnosti po regiji stalnega prebivališča [%]",
                                                                             "Število prebivalcev na 1 zdravnika [število]",
                                                                             "Število študentov v terciarnem izobraževanju na 1.000 prebivalcev po regijah stalnega prebivališča [število/1.000 prebivalcev]",
                                                                             "Delež obsojenih oseb med prebivalci regije po regiji stalnega prebivališča [%]"),
                                   skip=1, na="...", locale=locale( encoding="Windows-1250"))
kazalniki_varnosti[is.na(x = kazalniki_varnosti)] <- " "

skrb_za_generacije <- read_csv2("podatki/SKRB ZA GENERACIJE.csv",col_names=c("Regija",
                                                                        "Leto",
                                                                        "Skupni koeficient starostne odvisnosti",
                                                                        "Koeficient starostne odvisnosti mladih",
                                                                        "Koeficient starostne odvisnosti starih",
                                                                        "Delež otrok v vrtcih [%]") , 
                                skip=1, na="...", locale=locale( encoding="Windows-1250"))
skrb_za_generacije[is.na(x = skrb_za_generacije)] <- " "

vlaganje_v_razvoj <- read_csv2("podatki/VLAGANJE V RAZVOJ.csv",col_names=c("Oskrbovalno obmocje",
                                                                           "Vir financiranja",
                                                                           "Leto",
                                                                           "Delež izdatkov za raziskovalno-razvojno dejavnost v poslovnem sektorju po virih financiranja izdatkov [%]") , 
                               skip=1,na="0.0" ,locale=locale ( encoding="Windows-1250"))
vlaganje_v_razvoj[is.na(x = vlaganje_v_razvoj)] <- " "
  
