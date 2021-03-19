### =========================================================================
### FlowSorted.BloodExtended.EPIC metadata
### -------------------------------------------------------------------------
###

meta <- data.frame(
    Title = c("FlowSorted.BloodExtended.EPIC"),
    Description = c(paste0("The FlowSorted.BloodExtended.EPIC package ",
                            "contains data derived from Illumina ",
                            "HumanMethylation450K and Illumina ",
                            "HumanMethylationEPIC DNA methylation microarrays ",
                            "(Salas LA et al. under review), consisting of 68 ",
                            "blood cell references, formatted as an ",
                            "RGChannelSet object for integration and ",
                            "normalization using most of the existing ",
                            "Bioconductor packages.")),
    BiocVersion = c("3.13"),
    Genome = rep("hg19", 1),
    SourceType = rep("tar.gz", 1),
    SourceUrl = "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE167998",
    SourceVersion = "Mar 18 2021",
    Species = "Homo sapiens",
    TaxonomyId = 9606,
    Coordinate_1_based = TRUE,
    DataProvider = "GEO",
    Maintainer = c("Lucas A Salas <lucas.a.salas.diaz@dartmouth.edu>"),
    RDataClass = c("RGChannelSet") ,
    DispatchClass = c(rep("Rda",1)),
RDataPath = c(paste0("FlowSorted.BloodExtended.EPIC/data/",
"FlowSorted.BloodExtended.EPIC.RData")),
Tags = ""
)

write.csv(meta, file="inst/extdata/metadata.csv", row.names=FALSE)
