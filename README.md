<a href="https://zenodo.org/badge/latestdoi/327382979"><img src="https://zenodo.org/badge/327382979.svg" alt="DOI"></a>
# FlowSorted.BloodExtended.EPIC
A new extended cell deconvolution for peripheral blood 

License: see LICENSE document
For an academic license please download, sign and send a copy of the <a href="https://github.com/immunomethylomics/FlowSorted.BloodExtended.EPIC/blob/main/SoftwareLicense.FlowSorted.BloodExtended.EPIC%20to%20sign.pdf"> LICENSE document to
Technology.Transfer@dartmouth.edu, please cc Cheryl.L.Junker@dartmouth.edu, Lucas.A.Salas@dartmouth.edu, and Brock.C.Christensen@dartmouth.edu

This document must be signed for an authorized representative (e.g, 
TTO representative).
  
EPIC package contains Illumina HumanMethylationEPIC DNA methylation
microarray data from the immunomethylomics group (Salas et al. 2021),
consisting of 56 magnetic sorted blood cell references and 12 samples,
formatted as an RGChannelSet object for integration and normalization using
most of the existing Bioconductor packages.

This package contains data similar to the FlowSorted.Blood.EPIC
package consisting of data from peripheral blood samples generated from
adult men and women. However, in this application, we expanded the
current six cell-type libraries to include memory and naive cells from both
cytotoxic and helper T-cells and B-cells; while raising the granulocyte
subtypes to incorporate eosinophils and basophils.

Researchers may find this package useful as these samples represent
twelve different cellular populations (neutrophils (Neu), eosinophils (Eos),
basophils (Bas), monocytes (Mono),B lymphocytes naive (Bnv), B lymphocytes
memory (Bmem), T helper lymphocytes naive (CD4nv), T helper lymphocytes
memory (CD4mem), T regulatory cells (Treg), T cytotoxic lymphocytes naive
(CD8nv), T cytotoxic lymphocytes memory (CD8mem), and natural killer
lymphocytes (NK) of cell sorted blood generated with high purity estimates).
We offered IDOL optimized CpG selections for cell deconvolution with 450k
and EPIC data respectively.
IDOLOptimizedCpGsBloodExtended is for the EPIC data deconvolution while
IDOLOptimizedCpGsBloodExtended450k is for the 450k data deconvolution.

References: LA Salas et al. (2018). An optimized library for reference-based
deconvolution of whole-blood biospecimens assayed using the Illumina 
HumanMethylationEPIC BeadArray. Genome Biology Genome Biology 19, 64.
doi: 10.1186/s13059-018-1448-7.

DC Koestler et al. (2016). Improving cell mixture deconvolution by identifying 
optimal DNA methylation libraries (IDOL). BMC bioinformatics. 17, 120.

EA Houseman et al. (2012) DNA methylation arrays as surrogate measures of cell 
mixture distribution. BMC Bioinformatics 13, 86.


