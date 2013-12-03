\name{candidate.overlap}
\alias{candidate.overlap}
\title{Candidate Gene Overlap}
\usage{
candidate.overlap(pSIs, candidate.genes, write.csv = FALSE)
}
\arguments{
  \item{pSIs}{data frame output from
  \code{specificity.index} function with the number of
  columns equal to the number of samples and genes as
  rows.}

  \item{candidate.genes}{candidate gene list tested for
  overrepresentation in cell types/samples. Comprised of
  official gene symbols.}

  \item{write.csv}{logical variable indicating if csv files
  will be written to the current working directory (default
  value is FALSE)}
}
\description{
\code{candidate.overlap} Extracts genes specific to samples
which overlap with a candidate gene list at various pSI
thresholds
}
\details{
Returns list consisting of 6 data frames, one for each pSI
threshold. Each data frame contains genes specific to each
sample which overlap with a candidate gene list and whose
pSI values fall below each respective threshold for each
cell type/sample included in the analysis.
NOTE:Supplementary data (supplementary tables,human & mouse
expression sets, calculated pSI datasets, candidate gene
lists, etc.) can be found in \code{pSI.data} package.
}
\examples{
##load sample pSI output
data(sample.data)
##load sample candidate gene lists
data(candidate.genes)
##Generates lists of overlapping genes
candidate.gene.overlap.AutDB <- candidate.overlap(sample.data$pSI.output,candidate.genes$AutDB)
}
\author{
Xiaoxiao Xu, Alan B. Wells, David OBrien, Arye Nehorai,
Joseph D. Dougherty
}

