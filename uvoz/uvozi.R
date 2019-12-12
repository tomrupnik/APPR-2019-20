library(dplyr)
library(tidyr)
library(readr)



drzavni_dolg <- read_csv2("podatki/drzavn_dolg.csv",col_names=c("Leto", 1995:2015) , skip=3,
                      locale=locale( encoding="Windows-1250"))
  
ekolosko_kmetijstvo <- read_csv2("podatki/ekolosko_kmetijstvo.csv",col_names=c("Leto", 2004:2015) , skip=3,
                                 locale=locale( encoding="Windows-1250"))
ekonomska_rast <- read_csv2("podatki/ekonomska_rast.csv",col_names=c("Leto", "Regija" ,2000:2015) , skip=3,
                            locale=locale( encoding="Windows-1250"))
