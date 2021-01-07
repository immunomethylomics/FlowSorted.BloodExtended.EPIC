### =========================================================================
### FlowSorted.CordBloodCombined.450k metadata 
### -------------------------------------------------------------------------
###

meta <- data.frame(
    Title = c("FlowSorted.CordBloodCombined.450k"),
    Description = c(paste0("The FlowSorted.CordBloodCombined.450k package ",
                           "contains data derived from Illumina ", 
                           "HumanMethylation450K and ", 
                           "Illumina HumanMethylationEPIC ",
                           "DNA methylation microarrays (Gervin K, Salas LA ",
                           "et al. under review), consisting of 263 blood ",
                           "cell references and 26 umbilical cord blood ",
                           "samples, formatted as an RGChannelSet object for ",
                           "integration and normalization using most of the ",
                           "existing Bioconductor packages.")),
    BiocVersion = c("3.9"),
    Genome = rep("hg19", 1), 
    SourceType = rep("tar.gz", 1), 
    SourceUrl = paste0("https://bit.ly/2UaTNSi, ", "https://bit.ly/2RQ1nVF, ",
                       "https://bit.ly/2Wmgt4b, ", "https://bit.ly/2B6zkqH"),
    SourceVersion = "Jan 18 2019",
    Species = "Homo sapiens",
    TaxonomyId = 9606,
    Coordinate_1_based = TRUE,
    DataProvider = paste0("Bioconductor, ", "Bioconductor, ","GEO, ",
                          "karnanilab"),
    Maintainer = "Lucas A Salas <lucas.a.salas.diaz@dartmouth.edu>",
    RDataClass = c("RGChannelSet") ,
    DispatchClass = c(rep("Rda",1)),
RDataPath = c(paste0("FlowSorted.CordBloodCombined.450k/",
"FlowSorted.CordBloodCombined.450k.rda")),
Tags = "",
Notes = paste0("Bakulski et al 2016, ", "Gervin et al 2016, ",
          "de Goede et al 2015, ", "Lin et al 2018")
)

write.csv(meta, file="inst/extdata/metadata.csv", row.names=FALSE)
