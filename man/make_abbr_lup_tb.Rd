% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fn_make.R
\name{make_abbr_lup_tb}
\alias{make_abbr_lup_tb}
\title{Make abbreviation lookup table}
\usage{
make_abbr_lup_tb(
  short_name_chr_vec = NA_character_,
  long_name_chr_vec = NA_character_,
  no_plural_chr_vec = NA_character_,
  custom_plural_ls = NULL,
  overwrite_lgl = T,
  url_chr,
  pkg_nm_chr
)
}
\arguments{
\item{short_name_chr_vec}{Short name (a character vector), Default: 'NA'}

\item{long_name_chr_vec}{Long name (a character vector), Default: 'NA'}

\item{no_plural_chr_vec}{No plural (a character vector), Default: 'NA'}

\item{custom_plural_ls}{Custom plural (a list), Default: NULL}

\item{overwrite_lgl}{Overwrite (a logical vector of length 1), Default: T}

\item{url_chr}{Url (a character vector of length 1)}

\item{pkg_nm_chr}{Package name (a character vector of length 1)}
}
\description{
make_abbr_lup_tb() is a Make function that creates a new R object. Specifically, this function implements an algorithm to make an abbreviation lookup table. The function is called for its side effects and does not return a value.
}
