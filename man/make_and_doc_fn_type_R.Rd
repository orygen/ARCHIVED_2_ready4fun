% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fn_make.R
\name{make_and_doc_fn_type_R}
\alias{make_and_doc_fn_type_R}
\title{Make and document function type}
\usage{
make_and_doc_fn_type_R(
  fn_type_lup_tb = make_fn_type_lup_tb(),
  overwrite_lgl = T,
  pkg_nm_chr,
  url_chr = url_chr
)
}
\arguments{
\item{fn_type_lup_tb}{Function type lookup table (a tibble), Default: make_fn_type_lup_tb()}

\item{overwrite_lgl}{Overwrite (a logical vector of length 1), Default: T}

\item{pkg_nm_chr}{Package name (a character vector of length 1)}

\item{url_chr}{Url (a character vector of length 1), Default: url_chr}
}
\description{
make_and_doc_fn_type_R() is a Make function that creates a new R object. Specifically, this function implements an algorithm to make and a document function type R. The function is called for its side effects and does not return a value. WARNING: This function writes R scripts to your local environment. Make sure to only use if you want this behaviour
}
