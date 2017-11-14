library(ggplot2)
setwd("../Daten")

auflaufen <- read.csv2("DWD_phenology_AuflaufenBeginn_BBCH10_1995_2012_Attributes.csv")
bestellung <- read.csv2("DWD_phenology_BestellungBeginn_BBCH0_1995_2012_Attributes.csv")
bluete <- read.csv2("DWD_phenology_BlБteBeginn_BBCH61_1995_2012_Attributes.csv")
ernte <- read.csv2("DWD_phenology_Ernte_BBCH99_1995_2012_Attributes.csv")
laengenwachstum <- read.csv2("DWD_phenology_LaengenwachstumBeginn_BBCH31_1995_2012_Attributes.csv")
vollreife <- read.csv2("DWD_phenology_VollreifeBeginn_BBCH87_1995_2012_Attributes.csv")
agg_data <- read.csv2("agg_data.csv")

all(na.omit(bluete$Tmean_Dekad_1 == bluete$Tsum_Dekad_1))
all(na.omit(bluete$Tmean_Dekad_2 == bluete$Tsum_Dekad_2))

all(na.omit(bestellung$Tmean_Dekad_1 == bestellung$Tsum_Dekad_1))
all(na.omit(bestellung$Tmean_Dekad_2 == bestellung$Tsum_Dekad_2))

all(na.omit(auflaufen$Tmean_Dekad_1 == auflaufen$Tsum_Dekad_1))
all(na.omit(auflaufen$Tmean_Dekad_2 == auflaufen$Tsum_Dekad_2))

bluete$date[which(bluete$Tmean_Dekad_1 == min(na.omit(bluete$Tmean_Dekad_1)))]
bluete$date[which(bluete$Tmean_Dekad_1 == max(na.omit(bluete$Tmean_Dekad_1)))]

