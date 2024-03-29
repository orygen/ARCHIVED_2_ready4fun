% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fn_make.R
\name{make_fn_dmt_spine_chr_ls}
\alias{make_fn_dmt_spine_chr_ls}
\title{Make function documentation spine}
\usage{
make_fn_dmt_spine_chr_ls(
  fn_name_chr,
  fn_type_chr,
  fn_title_chr = NA_character_,
  fn,
  details_chr = NA_character_,
  example_lgl = F,
  export_lgl = T,
  class_name_chr,
  doc_in_class_lgl
)
}
\arguments{
\item{fn_name_chr}{Function name (a character vector of length 1)}

\item{fn_type_chr}{Function type (a character vector of length 1)}

\item{fn_title_chr}{Function title (a character vector of length 1), Default: 'NA'}

\item{fn}{Function (a function)}

\item{details_chr}{Details (a character vector of length 1), Default: 'NA'}

\item{example_lgl}{Example (a logical vector of length 1), Default: F}

\item{export_lgl}{Export (a logical vector of length 1), Default: T}

\item{class_name_chr}{Class name (a character vector of length 1)}

\item{doc_in_class_lgl}{Document in class (a logical vector of length 1)}
}
\value{
Function documentation spine (a list of character vectors of length 1)
}
\description{
make_fn_dmt_spine_chr_ls() is a Make function that creates a new R object. Specifically, this function implements an algorithm to make a function documentation spine. The function returns a function documentation spine (a list of character vectors of length 1).
}
\keyword{internal}
