#' FlowSorted.Blood.EPIC
#' @description
#'
#' The FlowSorted.BloodExtended.EPIC package contains data derived from Illumina
#' HumanMethylationEPIC (\dQuote{EPIC})) DNA methylation microarray
#' data from the immunomethylomics group
#' \href{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE167998}{
#' (Salas et al. 2021)}, consisting of 56 blood cell references and 12 mixed
#' blood samples, formatted as an RGChannelSet object for integration and
#' normalization using most of the existing Bioconductor packages.
#'
#' The FlowSorted.BloodExtended.EPIC dataset includes information from
#' neutrophils (Neu, n=6), eosinophils (Eos, n=4), basophils (Bas, n=6),
#' monocytes (Mono, n=5), B naive cells (Bnv, n=4), B memory cells (Bmem, n=6),
#' T-helper CD4+ naive cells, (CD4nv, n=5), T-helper CD4+ memory cells (CD4mem,
#' n=4), T regulatory cells (Treg, n=3), T-cytotoxic CD8+ naive cells (CD8nv,
#' n=5),T-cytotoxic memory CD8+ cells (CD8mem, n=4), and natural killer cells
#' (NK, n=4), plus 12 DNA artificial mixtures, labeled as MIX in this dataset.
#'
#' Researchers may find this package useful as these samples represent different
#' cellular populations, including eosinophils, basophils, monocytes, B naive
#' cells, B memory cells, T-helper CD4+ naive cells, T-helper CD4+ memory cells,
#' T regulatory cells, T-cytotoxic CD8+ naive cells, T-cytotoxic memory CD8+
#' cells and natural killer cells, of cell sorted blood generated with high
#' purity estimates.
#' As a test of accuracy 12 experimental mixtures were reconstructed using
#' fixed amounts of DNA from purified cells.
#'
#' This package contains data similar to the FlowSorted.Blood.EPIC
#' package consisting of data from peripheral blood samples generated from
#' adult men and women. However, more granular information is useful for some
#' specific applications. You can use any algorithm with the data. We recommend
#' the function estimateCellCounts2 in \href{https://doi.org/doi:10.18129/B9.
#' bioc.FlowSorted.Blood.EPIC}{(FlowSorted.Blood.EPIC)}
#' for cell estimation using the option IDOL.
#' This function allows estimating cellular composition in
#' users' whole blood Illumina EPIC samples using a modified version of
#' the algorithm constrained projection/quadratic programming described
#' in Houseman et al. 2012. If you use IDOL for more accurate estimations we
#' include an IDOL optimized CpG selection for cell deconvolution as the object
#' IDOLOptimizedCpGsBloodExtended, and the IDOLOptimizedCpGsBloodExtended450k
#' object for legacy 450K datasets. See the objects help for details.
#'
#'
#' @format A class: RGChannelSet, dimensions: 1008711 68
#' @source The FlowSorted.Blood.EPIC object is based in samples assayed
#' by Brock Christensen and colleagues; Salas et al. 2021.
#' \href{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE167998}{
#' GSE167998}
#' @seealso
#' References \enumerate{
#' \item  LA Salas et al. (2021) \emph{Enhanced cell deconvolution of
#' peripheral blood using DNA methylation for high-resolution immune profiling}.
#' (Under review)
#' \item LA Salas et al. (2018). \emph{An optimized library for
#' reference-based deconvolution of whole-blood biospecimens assayed using the
#' Illumina HumanMethylationEPIC BeadArray}. Genome Biology 19, 64. doi:
#' \href{https://dx.doi.org/10.1186/s13059-018-1448-7}{
#' 10.1186/s13059-018-1448-7}.
#' \item DC Koestler et al. (2016). \emph{Improving cell mixture deconvolution
#' by identifying optimal DNA methylation libraries (IDOL)}. BMC bioinformatics.
#' 17, 120. doi:\href{https://dx.doi.org/10.1186/s12859-016-0943-7}{
#' 10.1186/s12859-016-0943-7}.
#' \item EA Houseman et al. (2012) \emph{DNA methylation arrays as surrogate
#' measures of cell mixture distribution}. BMC Bioinformatics 13, 86.
#' doi:\href{https://dx.doi.org/10.1186/s12859-016-0943-7}{
#' 10.1186/1471-2105-13-86}.
#' \item \pkg{minfi} package, tools for analyzing DNA methylation microarrays
#' }
#'
#' @examples
#' # Explore the reference library
#' library(ExperimentHub)
#' hub <- ExperimentHub()
#' query(hub, "FlowSorted.BloodExtended.EPIC")
#' FlowSorted.BloodExtended.EPIC <- hub[["*****"]]
#' FlowSorted.BloodExtended.EPIC
#'
"FlowSorted.BloodExtended.EPIC"
