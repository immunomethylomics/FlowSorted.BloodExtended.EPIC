#' IDOL Optimized CpGs for extended blood DNA methylation deconvolution
#' 450k
#'
#' @description
#'     This object is a vector of length 1500 consisting of the names of the
#'     IDOL optimized CpGs. These CpGs are used as the backbone for
#'     deconvolution with 450k and were selected because their methylation
#'     signature differs across the twelve normal leukocyte subtypes.
#'
#'
#' @format An object of class "character" of length 1200.
#'
#'         The format is:
#'         chr [1:1500] "cg18857618" "cg00644351" "cg09177577" "cg21091766" ...
#'
#' @references LA Salas et al. (2021). \emph{Enhanced cell deconvolution of
#' peripheral blood using DNA methylation for high-resolution immune profiling}.
#' (Under review)
#' @references LA Salas et al. (2018). \emph{An optimized library for
#' reference-based deconvolution of whole-blood biospecimens assayed using the
#' Illumina HumanMethylationEPIC BeadArray}. Genome Biology 19, 64. doi:
#' \href{https://dx.doi.org/10.1186/s13059-018-1448-7}{
#' 10.1186/s13059-018-1448-7}
#' @references DC Koestler et al. (2016). \emph{Improving cell mixture
#' deconvolution by identifying optimal DNA methylation libraries (IDOL)}.
#' BMC bioinformatics. 17, 120. doi:
#' \href{https://dx.doi.org/10.1186/s13059-018-1448-7}{
#' 10.1186/s13059-018-1448-7}.
#'
#' @examples
#' # Do not run
#' # data("IDOLOptimizedCpGsBloodExtended450k")
"IDOLOptimizedCpGsBloodExtended450k"
