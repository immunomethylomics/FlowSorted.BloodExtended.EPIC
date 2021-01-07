#' FlowSorted.CordBloodCombined.450k.compTable
#' @description
#' The FlowSorted.CordBloodCombined.450k.compTable contains the average DNA 
#' methylation values used for IDOL deconvolution (Gervin K, Salas LA et al. 
#' under review), these data are derived from 263 umbilical blood cell 
#' references available in ExperimentHub (FlowSorted.CordBloodCombined.450k).
#' 
#' Researchers who want to project directly their estimates can use this 
#' matrix of different cellular populations ( T lymphocytes (CD4+ and CD8+), B 
#' cells (CD19+), monocytes (CD14+), NK cells (CD56+), Granulocytes, and 
#' nucleated red blood cells of cell sorted umbilical cord blood. The estimates
#' were contrasted versus FACS proportions in 22 umbilical samples, and 
#' validated using 197 umbilical cord blood samples.  
#' 
#' @format A class: matrix, dimensions: 517 7
#'         The format is:
#'         num [1:517, 1:7] 0.0568 0.214 0.908 0.839 ...

#' 
#' @seealso
#' References \enumerate{
#' \item  K Gervin, LA Salas et al. (2019) \emph{Systematic evaluation and 
#' validation of references and library selection methods for deconvolution of 
#' cord blood DNA methylation data}. (Under review)
#' \item  KM Bakulski, et al. (2016) \emph{DNA methylation of cord blood 
#' cell types: Applications for mixed cell birth studies}. Epigenetics 11:5. 
#' doi:10.1080/15592294.2016.1161875.
#' \item  K Gervin, et al. (2016) \emph{Cell type specific DNA methylation in
#' cord blood: A 450K-reference data set and cell count-based validation of 
#' estimated cell type composition}. Epigenetics 11:690-8. 
#' doi:10.1080/15592294.2016.1214782. 
#' \item  OM de Goede, et al. (2015) \emph{Nucleated red blood cells impact DNA 
#' methylation and expression analyses of cord blood hematopoietic cells}. 
#' Clin Epigenetics. 7:95. doi:10.1186/s13148-015-0129-6.
#' \item  X Lin, et al. (2018) \emph{Cell type-specific DNA methylation in 
#' neonatal cord tissue and cord blood: A 850K-reference panel and comparison 
#' of cell-types}. Epigenetics. 13:941-58. doi:10.1080/15592294.2018.1522929.
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
#' \item \pkg{minfi} package for tools for estimating cell type
#' composition in blood using these data
#' }
#' 
#' @examples
#' # Explore the reference library
#' 
#' @return numeric matrix 517 rows 7 columns
#' @usage 
#' FlowSorted.CordBloodCombined.450k.compTable 
"FlowSorted.CordBloodCombined.450k.compTable"