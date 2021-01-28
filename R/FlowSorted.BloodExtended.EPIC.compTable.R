#' FlowSorted.BloodExtended.EPIC.compTable
#' @description
#' This object is a matrix of dimensions 1200 x 12 consisting of the average
#' DNA methylation values fo the probes included in the IDOL optimized
#' CpGs per each of the twelve cell types available to use in the EPIC
#' platform. These CpGs are used as the backbone for deconvolution and
#' were selected because their methylation signature differs across the
#' twelve normal leukocyte subtypes.
#'
#' Researchers who want to project directly their estimates with EPIC data can
#' use this matrix of different cellular populations (neutrophils (Neu),
#' eosinophils (Eos), basophils (Bas), monocytes (Mono), B lymphocytes naive
#' (Bnv), B lymphocytes memory (Bmem), T helper lymphocytes na?ve (CD4nv),
#' T helper lymphocytes memory (CD4mem), T regulatory cells (Treg),
#' T cytotoxic lymphocytes na?ve (CD8nv), T cytotoxic lymphocytes memory
#' (CD8mem), and natural killer lymphocytes (NK)).
#'
#' @format A class: matrix, dimensions: 1500 12
#'     The format is:
#'     num [1:1200, 1:12] 0.796 0.672 0.886 0.931 ...
#'
#' @seealso
#' References \enumerate{
#' \item  LA Salas et al. (2021) \emph{An extended blood DNA methylation
#' deconvolution approach for naive memory lymphocytes and myeloid components}.
#' (Under review)
#' \item  K Gervin, LA Salas et al. (2019) \emph{Systematic evaluation and
#' validation of references and library selection methods for deconvolution of
#' cord blood DNA methylation data}. Clin Epigenetics 11,125. doi:
#' 10.1186/s13148-019-0717-y
#' \item  KM Bakulski, et al. (2016) \emph{DNA methylation of cord blood
#' cell types: Applications for mixed cell birth studies}. Epigenetics 11:5.
#' doi:10.1080/15592294.2016.1161875.
#' \item  K Gervin, et al. (2016) \emph{Cell type specific DNA methylation in
#' cord blood: A 450K-reference data set and cell count-based validation of
#' estimated cell type composition}. Epigenetics 11:690-8.
#' doi:10.1080/15592294.2016.1214782.
#' \item LA Salas et al. (2018). \emph{An optimized library for
#' reference-based deconvolution of whole-blood biospecimens assayed using the
#' Illumina HumanMethylationEPIC BeadArray}. Genome Biology 19, 64. doi:
#' 10.1186/s13059-018-1448-7.
#' \item DC Koestler et al. (2016). \emph{Improving cell mixture deconvolution
#' by identifying optimal DNA methylation libraries (IDOL)}. BMC bioinformatics.
#' 17, 120. doi: 10.1186/s12859-016-0943-7.
#' \item EA Houseman et al. (2012) \emph{DNA methylation arrays as surrogate
#' measures of cell mixture distribution}. BMC Bioinformatics 13, 86.
#' doi:10.1186/1471-2105-13-86.
#'
#' @examples
#' # Do not run
#' # data("FlowSorted.BloodExtended.EPIC.compTable")
#' # head(FlowSorted.BloodExtended.EPIC.compTable)
#'
#' @return numeric matrix 1200 rows 12 columns
#' @usage
#' FlowSorted.BloodExtended.EPIC.compTable
"FlowSorted.BloodExtended.EPIC.compTable"
