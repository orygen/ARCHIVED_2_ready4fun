% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fn_make.R
\name{make_new_fn_dmt_chr_ls}
\alias{make_new_fn_dmt_chr_ls}
\title{Make new function documentation}
\usage{
make_new_fn_dmt_chr_ls(
  fn_type_chr,
  fn_name_chr,
  fn_desc_chr = NA_character_,
  fn_det_chr = NA_character_,
  fn_out_type_chr = NA_character_,
  args_ls = NULL,
  fn = NULL,
  object_type_lup = NULL
)
}
\arguments{
\item{fn_type_chr}{Function type (a character vector of length 1)}

\item{fn_name_chr}{Function name (a character vector of length 1)}

\item{fn_desc_chr}{Function description (a character vector of length 1), Default: 'NA'}

\item{fn_det_chr}{Function det (a character vector of length 1), Default: 'NA'}

\item{fn_out_type_chr}{Function out type (a character vector of length 1), Default: 'NA'}

\item{args_ls}{Arguments (a list), Default: NULL}

\item{fn}{Function (a function), Default: NULL}

\item{object_type_lup}{Object type (a lookup table), Default: NULL}
}
\value{
New function documentation (a list of character vectors of length 1)
}
\description{
make_new_fn_dmt_chr_ls() is a Make function that creates a new R object. Specifically, this function implements an algorithm to make new a function documentation. The function returns new function documentation (a list of character vectors of length 1).
}
\keyword{internal}
