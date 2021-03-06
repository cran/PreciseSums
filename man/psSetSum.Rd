% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sums.R
\name{psSetSum}
\alias{psSetSum}
\title{Choose the type of sums to use for PreciceSums.}
\usage{
psSetSum(type = c("pairwise", "fsum", "kahan", "neumaier", "klein", "c"))
}
\arguments{
\item{type}{Sum type to use for \code{psSum} and \code{sum()} in
    PreciceSums code blocks.

\code{pairwise} uses the pairwise sum (fast, default)

\code{fsum} uses Python's fsum function (most accurate)

\code{kahan} uses kahan correction

\code{neumaier} uses Neumaier correction

\code{klein} uses Klien correction

\code{c} uses no correction, bud default/native summing}
}
\value{
nothing
}
\description{
Choose the types of sums to use in PreciceSums.  These are used in the
PreciceSums \code{sum} blocks and the \code{psSum} function
}
\author{
Matthew L. Fidler
}
