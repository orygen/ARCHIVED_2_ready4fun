% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fn_write.R
\name{write_and_doc_fn_fls_R}
\alias{write_and_doc_fn_fls_R}
\title{Write and document function files}
\usage{
write_and_doc_fn_fls_R(
  fns_dmt_tb,
  r_dir_chr = "R",
  path_to_user_dmt_dir_chr = "../../../../Documentation/Code/User",
  path_to_dvpr_dmt_dir_chr = "../../../../Documentation/Code/Developer"
)
}
\arguments{
\item{fns_dmt_tb}{Functions documentation (a tibble)}

\item{r_dir_chr}{R directory (a character vector of length 1), Default: 'R'}

\item{path_to_user_dmt_dir_chr}{Path to user documentation directory (a character vector of length 1), Default: '../../../../Documentation/Code/User'}

\item{path_to_dvpr_dmt_dir_chr}{Path to developer documentation directory (a character vector of length 1), Default: '../../../../Documentation/Code/Developer'}
}
\description{
write_and_doc_fn_fls_R() is a Write function that writes a file to a specified local directory. Specifically, this function implements an algorithm to write and a document function files R. The function is called for its side effects and does not return a value. WARNING: This function writes R scripts to your local environment. Make sure to only use if you want this behaviour
}
