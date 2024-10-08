% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sums.R
\name{fsum}
\alias{fsum}
\title{Return an accurate floating point sum of values}
\usage{
fsum(numbers)
}
\arguments{
\item{numbers}{A vector of numbers to sum.}
}
\value{
Sum of numbers without loss of precision

The algorithm's accuracy depends on IEEE-754 arithmetic guarantees
and the typical case where the rounding mode is half-even. On some
non-Windows builds, the underlying C library uses extended
precision addition and may occasionally double-round an
intermediate sum causing it to be off in its least significant bit.
}
\description{
This method avoids loss of precision by tracking multiple
intermediate partial sums. Based on python's math.fsum
}
\examples{
sum(c(1,1e100,1,-1e100)) ## Should be 2, gives 0
fsum(c(1,1e100,1,-1e100)) ## Gives 2.

}
\references{
\url{https://docs.python.org/2/library/math.html}
\url{https://github.com/python/cpython/blob/a0ce375e10b50f7606cb86b072fed7d8cd574fe7/Modules/mathmodule.c}

Shewchuk, JR. (1996)
\emph{Adaptive Precision Floating-Point Arithmetic and Fast Robust Geometric Predicates.}
\url{http://www-2.cs.cmu.edu/afs/cs/project/quake/public/papers/robust-arithmetic.ps}
}
\author{
Matthew Fidler (R implementation), Raymond Hettinger,
    Jonathan Shewchuk, Python Team
}
