### =========================================================================
### FlowSorted.CordBloodCombined.450k 
### -------------------------------------------------------------------------
###
##Local processing
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install(c("GEOquery", "minfi",
                       "FlowSorted.CordBlood.450k",
                       "FlowSorted.CordBloodNorway.450k"), version = "3.8")
getwd()
download.file(paste0("https://karnanilab.com/Tools/",
"FlowSorted.CordTissueAndBlood.EPIC/",
"FlowSorted.CordTissueAndBlood.EPIC_1.0.1.tar.gz"),
              destfile = paste0(getwd(), 
                            "/FlowSorted.CordTissueAndBlood.EPIC_1.0.1.tar.gz"))
install.packages(paste0(getwd(), 
                        "/FlowSorted.CordTissueAndBlood.EPIC_1.0.1.tar.gz"),
                 repos = NULL, type="source")
library(GEOquery)
library(minfi)
library(FlowSorted.CordBlood.450k)
library(FlowSorted.CordBloodNorway.450k)
library(FlowSorted.CordTissueAndBlood.EPIC)

#Prepare for combination
FlowSorted.CordBlood.450k<-FlowSorted.CordBlood.450k
FlowSorted.CordBlood.450k@colData[] <- lapply(FlowSorted.CordBlood.450k@colData,
                                              function(x) if (is.factor(x)) 
                                                  as.character(x) else {x})
FlowSorted.CordBlood.450k@colData[] <- lapply(FlowSorted.CordBlood.450k@colData,
                                              function(x) if (is.logical(x)) 
                                                  as.character(x) else {x})
FlowSorted.CordBlood.450k$Study<-"Bakulski"

FlowSorted.CordBloodNorway.450k<-FlowSorted.CordBloodNorway.450k
FlowSorted.CordBloodNorway.450k@colData[] <- 
    lapply(FlowSorted.CordBloodNorway.450k@colData, function(x) 
        if (is.factor(x)) as.character(x) else {x})
FlowSorted.CordBloodNorway.450k@colData[] <- 
    lapply(FlowSorted.CordBloodNorway.450k@colData, function(x) 
        if (is.logical(x)) as.character(x) else {x})
FlowSorted.CordBloodNorway.450k$Study<-"Gervin"

FlowSorted.CordTissueAndBlood.EPIC<-updateObject(
    FlowSorted.CordTissueAndBlood.EPIC)
FlowSorted.CordTissueAndBlood.EPIC@colData[] <- lapply(
    FlowSorted.CordTissueAndBlood.EPIC@colData, function(x) if (is.factor(x)) 
        as.character(x) else {x})
FlowSorted.CordTissueAndBlood.EPIC@colData[] <- lapply(
    FlowSorted.CordTissueAndBlood.EPIC@colData, function(x) if (is.logical(x)) 
        as.character(x) else {x})
FlowSorted.CordTissueAndBlood.EPIC$Study<-"Lin"

getGEOSuppFiles("GSE68456")
untar("GSE68456/GSE68456_RAW.tar", exdir = "GSE68456/idat")
idatFiles <- list.files("GSE68456/idat", pattern = "idat.gz$", full = TRUE)
sapply(idatFiles, gunzip, overwrite = TRUE)
library(FlowSorted.CordBloodCanada.450k)
FlowSorted.CordBloodCanada.450k <- read.metharray.exp("GSE68456/idat")
geoMat <- getGEO("GSE68456")
pD <- pData(geoMat[[1]])
sampleNames(FlowSorted.CordBloodCanada.450k) <- substr(
    sampleNames(FlowSorted.CordBloodCanada.450k),1, 10)
rownames(pD) <- pD$geo_accession
pD <- pD[sampleNames(FlowSorted.CordBloodCanada.450k),]
pData(FlowSorted.CordBloodCanada.450k) <- DataFrame(pD, 
                                                    row.names = rownames(pD))
FlowSorted.CordBloodCanada.450k

FlowSorted.CordBloodCanada.450k$Study<-"deGoede"
FlowSorted.CordBloodCanada.450k$Sex<-FlowSorted.CordBloodCanada.450k$Sex.ch1
FlowSorted.CordBloodCanada.450k$CellType<-NA
FlowSorted.CordBloodCanada.450k$CellType<-as.character(
    FlowSorted.CordBloodCanada.450k$CellType)
levels(FlowSorted.CordBloodCanada.450k$characteristics_ch1.1)
FlowSorted.CordBloodCanada.450k$CellTypeLong<-ifelse(
    FlowSorted.CordBloodCanada.450k$characteristics_ch1.1=="cell type: B cell",
    "Bcell",
    ifelse(FlowSorted.CordBloodCanada.450k$characteristics_ch1.1==
               "cell type: CD4 T cell", "CD4T",
           ifelse(FlowSorted.CordBloodCanada.450k$characteristics_ch1.1==
                      "cell type: CD8 T cell", "CD8T",
                ifelse(FlowSorted.CordBloodCanada.450k$characteristics_ch1.1==
                           "cell type: Granulocyte", "Gran",
                ifelse(FlowSorted.CordBloodCanada.450k$characteristics_ch1.1==
                           "cell type: Monocyte", "Mono",
                ifelse(FlowSorted.CordBloodCanada.450k$characteristics_ch1.1==
                           "cell type: NK cell", "NK", 
                ifelse(FlowSorted.CordBloodCanada.450k$characteristics_ch1.1==
                           "cell type: T cell", "PanT", "nRBC")))))))   
FlowSorted.CordBloodCanada.450k$CellType<-as.character(
    FlowSorted.CordBloodCanada.450k$CellTypeLong)
FlowSorted.CordBloodCanada.450k$CellType2<-
    FlowSorted.CordBloodCanada.450k$CellType
FlowSorted.CordBloodCanada.450k@colData[] <- lapply(
    FlowSorted.CordBloodCanada.450k@colData, function(x) if (is.factor(x)) 
        as.character(x) else {x})
FlowSorted.CordBloodCanada.450k@colData[] <- lapply(
    FlowSorted.CordBloodCanada.450k@colData, function(x) if (is.logical(x)) 
        as.character(x) else {x})


tmp<-combineArrays(FlowSorted.CordBlood.450k,FlowSorted.CordBloodNorway.450k)
tmp<-combineArrays(tmp,FlowSorted.CordBloodCanada.450k)
tmp<-combineArrays(tmp,FlowSorted.CordTissueAndBlood.EPIC)

#read the phenotype data available in the inst/extdata
pheno<-read.csv(file="inst/extdata/Pheno_combined.csv", header=TRUE, 
                row.names = 1)

FlowSorted.CordBloodCombined.450k<-tmp[, rownames(pheno)]
identical(colnames(FlowSorted.CordBloodCombined.450k), rownames(pheno))
pData(FlowSorted.CordBloodCombined.450k)<-DataFrame(pheno, 
                                                    row.names = rownames(pheno))
FlowSorted.CordBloodCombined.450k@colData[] <- lapply(
    FlowSorted.CordBloodCombined.450k@colData, function(x) if (is.factor(x)) 
        as.character(x) else {x})
FlowSorted.CordBloodCombined.450k@colData[] <- lapply(
    FlowSorted.CordBloodCombined.450k@colData, function(x) if (is.logical(x)) 
        as.character(x) else {x})


save(FlowSorted.CordBloodCombined.450k, 
     file="data/FlowSorted.CordBloodCombined.450k.rda", version = 3,
     compress = TRUE)
library(tools)
resaveRdaFiles("data/FlowSorted.CordBloodCombined.450k.rda", compress = "auto",
               version = 3)


