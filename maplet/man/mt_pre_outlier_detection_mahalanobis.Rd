% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mt_pre_outlier_detection_mahalanobis.R
\name{mt_pre_outlier_detection_mahalanobis}
\alias{mt_pre_outlier_detection_mahalanobis}
\title{Identifies sample outliers using Mahalanobis approach}
\usage{
mt_pre_outlier_detection_mahalanobis(D, reduce_dim = F, pval = 0.01)
}
\arguments{
\item{D}{\code{SummarizedExperiment} input.}

\item{reduce_dim}{boolean, if TRUE performs PCA-based dimensionality reduction before outlier detection. Can be used to apply 
multivariate outlier detection methods to low-rank datasets.}

\item{pval}{Value between 0 and 1. Quantile of the chi-squared distribution to use as threshold to define a sample an outlier. 
Default: 0.01.}
}
\value{
colData: New columns including a binary vector and a numeric score vector.

$results$output: Returns the specific parameters used to determine outliers.
}
\description{
Multivariate approach that uses the Mahalanobis distance to define outliers. A sample is defined an outlier if its Mahalanobis 
distance is in the \code{pval} quantile of the chi-square distribution.
}
\examples{
\dontrun{# identify multivariate outliers
... \%>\%
  mt_pre_outlier_detection_mahalanobis(pval=0.01) \%>\%
...}

}
\author{
EB, JK
}
