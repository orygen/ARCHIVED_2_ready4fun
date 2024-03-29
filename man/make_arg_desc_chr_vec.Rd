% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fn_make.R
\name{make_arg_desc_chr_vec}
\alias{make_arg_desc_chr_vec}
\title{Make argument description}
\usage{
make_arg_desc_chr_vec(
  fn_args_chr_vec,
  object_type_lup = NULL,
  abbreviations_lup = NULL
)
}
\arguments{
\item{fn_args_chr_vec}{Function arguments (a character vector)}

\item{object_type_lup}{Object type (a lookup table), Default: NULL}

\item{abbreviations_lup}{Abbreviations (a lookup table), Default: NULL}
}
\value{
Argument description (a character vector)
}
\description{
make_arg_desc_chr_vec() is a Make function that creates a new R object. Specifically, this function implements an algorithm to make an argument description. The function returns an argument description (a character vector).
}
\keyword{internal}
