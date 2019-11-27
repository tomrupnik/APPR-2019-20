# Analiza podatkov s programom R, 2019/20

Repozitorij z gradivi pri predmetu APPR v študijskem letu 2019/20

* [![Shiny](http://mybinder.org/badge.svg)](http://mybinder.org/v2/gh/jaanos/APPR-2019-20/master?urlpath=shiny/APPR-2019-20/projekt.Rmd) Shiny
* [![RStudio](http://mybinder.org/badge.svg)](http://mybinder.org/v2/gh/jaanos/APPR-2019-20/master?urlpath=rstudio) RStudio

## Analiza kazalnikov trajnostnega razvoja Slovenije

V svojem projektu bom analiziral kazalnike trajnostnega razvoja. Tako kot 192 ostalih članic Združenih narodov se je tudi Slovenija zavzela, da se bo poskušala čim bolj približati 17 smernicam agende 2030. Sprva se bom osredotočil na ekonomsko rast po regijah in državni dolg Slovenije. V drugem delu bom obravnaval kakovost naravnih virov in intenzivnost porabe teh. Za konec pa si bom ogledal varnost v Sloveniji po regijah, skrb za vse generacije prav tako na regijski ravni ter vložke Slovenije v razvoj.

## Cilj:

Želim ponazoriti kako je Slovenija sčasoma izboljševala razmere v državi in v kakšni meri nam je uspelo narediti napredek v opazovanih elementih. Poskušal bom ugotoviti v katerih elementih nam je že uspelo doseči smernice agande 2030 in v kaj moramo še vlagati.

## Povezave do tabel na SURS-u

* 1.tabela Regionalni bruto domači proizvod na prebivalca, statistična regija, leto
https://pxweb.stat.si/SiStatDb/pxweb/sl/30_Okolje/30_Okolje__32_trajnostni_razvoj__05_blaginja__10_32687_ekonomska_rast/3268704S.px/table/tableViewLayout2/

* 2.tabela Dolg sektorja država, leto
https://pxweb.stat.si/SiStatDb/pxweb/sl/30_Okolje/30_Okolje__32_trajnostni_razvoj__15_medgenerac_sodelovanje__10_32693_drzavni_dolg/3269302S.px/table/tableViewLayout2/

* 3.tabela Povprečna letna koncentracija delcev PM10, merilno mesto, leto
https://pxweb.stat.si/SiStatDb/pxweb/sl/30_Okolje/30_Okolje__32_trajnostni_razvoj__05_blaginja__05_32686_kakovost_nar_virov/3268602S.px/table/tableViewLayout2/

* 4.tabela Delež neskladnih vzorcev zaradi onesnaženosti pitne vode z E.coli, oskrbovalna območja, leto
https://pxweb.stat.si/SiStatDb/pxweb/sl/30_Okolje/30_Okolje__32_trajnostni_razvoj__05_blaginja__05_32686_kakovost_nar_virov/3268604S.px/table/tableViewLayout2/

* 5.tabela Delež kmetijskih zemljišč v uporabi z ekološko pridelavo, leto
https://pxweb.stat.si/SiStatDb/pxweb/sl/30_Okolje/30_Okolje__32_trajnostni_razvoj__05_blaginja__05_32686_kakovost_nar_virov/3268606S.px/table/tableViewLayout2/

* 6.tabela Intenzivnost rabe naravnih virov, leto
https://pxweb.stat.si/SiStatDb/pxweb/sl/30_Okolje/30_Okolje__32_trajnostni_razvoj__15_medgenerac_sodelovanje__05_32692_intenz_rabe_nar_virov/3269202S.px/table/tableViewLayout2/

* 7.tabela Kazalniki varnosti, statistična regija, leto
https://pxweb.stat.si/SiStatDb/pxweb/sl/30_Okolje/30_Okolje__32_trajnostni_razvoj__05_blaginja__15_32688_varnost/3268803S.px/table/tableViewLayout2/

* 8.tabela Kazalniki skrbi za vse generacije, statistična regija, leto
https://pxweb.stat.si/SiStatDb/pxweb/sl/30_Okolje/30_Okolje__32_trajnostni_razvoj__15_medgenerac_sodelovanje__15_32694_skrb_vse_generacije/3269404S.px/table/tableViewLayout2/

* 9.tabela Kazalniki vlaganja v razvoj, statistična regija, vir financiranja, leto
https://pxweb.stat.si/SiStatDb/pxweb/sl/30_Okolje/30_Okolje__32_trajnostni_razvoj__10_ravnovesje_skromnost__10_32690_raziskave_razvoj/3269004S.px/table/tableViewLayout2/

* Agenda 2030 cilji
https://www.un.org/sustainabledevelopment/development-agenda/


## Program

Glavni program in poročilo se nahajata v datoteki `projekt.Rmd`.
Ko ga prevedemo, se izvedejo programi, ki ustrezajo drugi, tretji in četrti fazi projekta:

* obdelava, uvoz in čiščenje podatkov: `uvoz/uvoz.r`
* analiza in vizualizacija podatkov: `vizualizacija/vizualizacija.r`
* napredna analiza podatkov: `analiza/analiza.r`

Vnaprej pripravljene funkcije se nahajajo v datotekah v mapi `lib/`.
Podatkovni viri so v mapi `podatki/`.
Zemljevidi v obliki SHP, ki jih program pobere,
se shranijo v mapo `../zemljevidi/` (torej izven mape projekta).

## Potrebni paketi za R

Za zagon tega vzorca je potrebno namestiti sledeče pakete za R:

* `knitr` - za izdelovanje poročila
* `rmarkdown` - za prevajanje poročila v obliki RMarkdown
* `shiny` - za prikaz spletnega vmesnika
* `DT` - za prikaz interaktivne tabele
* `rgdal` - za uvoz zemljevidov
* `rgeos` - za podporo zemljevidom
* `digest` - za zgoščevalne funkcije (uporabljajo se za shranjevanje zemljevidov)
* `readr` - za branje podatkov
* `rvest` - za pobiranje spletnih strani
* `tidyr` - za preoblikovanje podatkov v obliko *tidy data*
* `dplyr` - za delo s podatki
* `gsubfn` - za delo z nizi (čiščenje podatkov)
* `ggplot2` - za izrisovanje grafov
* `mosaic` - za pretvorbo zemljevidov v obliko za risanje z `ggplot2`
* `maptools` - za delo z zemljevidi
* `extrafont` - za pravilen prikaz šumnikov (neobvezno)

## Binder

Zgornje [povezave](#analiza-podatkov-s-programom-r-201819)
omogočajo poganjanje projekta na spletu z orodjem [Binder](https://mybinder.org/).
V ta namen je bila pripravljena slika za [Docker](https://www.docker.com/),
ki vsebuje večino paketov, ki jih boste potrebovali za svoj projekt.

Če se izkaže, da katerega od paketov, ki ji potrebujete, ni v sliki,
lahko za sprotno namestitev poskrbite tako,
da jih v datoteki [`install.R`](install.R) namestite z ukazom `install.packages`.
Te datoteke (ali ukaza `install.packages`) **ne vključujte** v svoj program -
gre samo za navodilo za Binder, katere pakete naj namesti pred poganjanjem vašega projekta.

Tako nameščanje paketov se bo izvedlo pred vsakim poganjanjem v Binderju.
Če se izkaže, da je to preveč zamudno,
lahko pripravite [lastno sliko](https://github.com/jaanos/APPR-docker) z želenimi paketi.

Če želite v Binderju delati z git,
v datoteki `gitconfig` nastavite svoje ime in priimek ter e-poštni naslov
(odkomentirajte vzorec in zamenjajte s svojimi podatki) -
ob naslednjem zagonu bo mogoče delati commite.
Te podatke lahko nastavite tudi z `git config --global` v konzoli
(vendar bodo veljale le v trenutni seji).
