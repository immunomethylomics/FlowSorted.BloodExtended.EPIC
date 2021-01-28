### =========================================================================
### FlowSorted.BloodExtended.EPIC RGChannelSet 
### -------------------------------------------------------------------------
##Local processing
setwd("I:\Dropbox (Christensen Lab)\Extended library\Raw_Data\Raw_Data")
library(minfi)

sheet<-read.metharray.sheet(getwd())
FlowSorted.BloodExtended.EPIC <- read.metharray.exp(targets = sheet,extended = FALSE)
save(FlowSorted.BloodExtended.EPIC, file = "FlowSorted.BloodExtended.EPIC.RData", version = 3, compress = "xz")
## Files are available as GSE******
library(minfi)
library(GEOquery)
getGEOSuppFiles("GSE******")
untar("GSE******/GSE******_RAW.tar", exdir = "GSE******/idat")
idatFiles <- list.files("GSE******/idat", pattern = "idat.gz$", full = TRUE)
sapply(idatFiles, gunzip, overwrite = TRUE)
FlowSorted.BloodExtended.EPIC <- read.metharray.exp("GSE******/idat")
geoMat <- getGEO("GSE******")
pD <- pData(geoMat[[1]])
sampleNames(FlowSorted.BloodExtended.EPIC) <- sub(".*_5", "5", sampleNames(FlowSorted.BloodExtended.EPIC))
rownames(pD) <- pD$title
pD <- pD[sampleNames(FlowSorted.BloodExtended.EPIC),]
pData(FlowSorted.BloodExtended.EPIC) <- pD
FlowSorted.BloodExtended.EPIC
save(FlowSorted.BloodExtended.EPIC, file = "FlowSorted.BloodExtended.EPIC.RData", version = 3, compress = "xz")