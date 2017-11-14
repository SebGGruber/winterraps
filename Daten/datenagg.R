#setwd("/home/skynet/Dokumente/R/Winterraps/Daten")

auflaufen <- read.csv2("DWD_phenology_AuflaufenBeginn_BBCH10_1995_2012_Attributes.csv")
auflaufen$phase <- "AuflaufenBeginn"

bestellung <- read.csv2("DWD_phenology_BestellungBeginn_BBCH0_1995_2012_Attributes.csv")
bestellung$phase <- "BestellungBeginn"

bluete <- read.csv2("DWD_phenology_BlБteBeginn_BBCH61_1995_2012_Attributes.csv")
bluete$phase <- "BlueteBeginn"

ernte <- read.csv2("DWD_phenology_Ernte_BBCH99_1995_2012_Attributes.csv")
ernte$phase <- "Ernte"

laengenwachstum <- read.csv2("DWD_phenology_LaengenwachstumBeginn_BBCH31_1995_2012_Attributes.csv")
laengenwachstum$phase <- "LaengenwachstumBeginn"

vollreife <- read.csv2("DWD_phenology_VollreifeBeginn_BBCH87_1995_2012_Attributes.csv")
vollreife$phase <- "VollreifeBeginn"

agg_data <- rbind(
    auflaufen[, c(4:7, length(auflaufen))],
    bestellung[, c(4:7, length(bestellung))],
    bluete[, c(4:7, length(bluete))],
    ernte[, c(4:7, length(ernte))],
    laengenwachstum[, c(4:7, length(laengenwachstum))],
    vollreife[, c(4:7, length(vollreife))]
)

write.csv2(agg_data, "agg_data.csv")
#which(!(bluete$Stations_id %in% auflaufen$Stations_id))
