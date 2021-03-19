#' FlowSorted.BloodExtended.450klegacy.compTable
#'
#' @description
#' This object is a matrix of dimensions 1500 by 12 consisting of the average
#' DNA methylation values fo the probes included in the IDOL optimized
#' CpGs per each of the twelve cell types available to use in the 450K
#' platform. These CpGs are used as the backbone for deconvolution and
#' were selected because their methylation signature differs across the
#' twelve normal leukocyte subtypes.
#'
#' Researchers who want to project directly their estimates with 450k data can
#' use this matrix of different cellular populations ( neutrophils (Neu),
#' eosinophils (Eos), basophils (Bas), monocytes (Mono),B lymphocytes naive
#' (Bnv), B lymphocytes memory (Bmem), T helper lymphocytes naive (CD4nv),
#' T helper lymphocytes memory (CD4mem), T regulatory cells (Treg),
#' T cytotoxic lymphocytes naive (CD8nv), T cytotoxic lymphocytes memory
#' (CD8mem), and natural killer lymphocytes (NK)).
#'
#' @format A class: matrix, dimensions: 1500 12
#'     The format is:
#'     num [1:1500, 1:12] 0.95 0.886 0.769 0.672 ...
#'
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
#' 17, 120. doi: \href{https://dx.doi.org/10.1186/s12859-016-0943-7}{
#' 10.1186/s12859-016-0943-7}
#' \item EA Houseman et al. (2012) \emph{DNA methylation arrays as surrogate
#' measures of cell mixture distribution}. BMC Bioinformatics 13, 86.
#' doi: \href{https://dx.doi.org/10.1186/1471-2105-13-86}{
#' 10.1186/1471-2105-13-86}.
#' \item  K Gervin, LA Salas et al. (2019) \emph{Systematic evaluation and
#' validation of references and library selection methods for deconvolution of
#' cord blood DNA methylation data}. Clin Epigenetics 11,125. doi:
#' \href{https://dx.doi.org/10.1186/s13148-019-0717-y}{
#' 10.1186/s13148-019-0717-y}
#' }
#' @examples
#' # Do not run
#' # data("FlowSorted.BloodExtended.450klegacy.compTable")
#' # head(FlowSorted.BloodExtended.450klegacy.compTable)
#'
#' @return numeric matrix 1500 rows 12 columns
#' @usage
#' FlowSorted.BloodExtended.450klegacy.compTable
"FlowSorted.BloodExtended.450klegacy.compTable"
