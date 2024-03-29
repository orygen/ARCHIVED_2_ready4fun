% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fn_remove.R
\name{remove_obj_type_from_nm_chr_vec}
\alias{remove_obj_type_from_nm_chr_vec}
\title{Remove object type from name}
\usage{
remove_obj_type_from_nm_chr_vec(
  nms_chr_vec,
  object_type_lup = NULL,
  abbreviations_lup = NULL
)
}
\arguments{
\item{nms_chr_vec}{Names (a character vector)}

\item{object_type_lup}{Object type (a lookup table), Default: NULL}

\item{abbreviations_lup}{Abbreviations (a lookup table), Default: NULL}
}
\value{
Names (a character vector)
}
\description{
remove_obj_type_from_nm_chr_vec() is a Remove function that edits an object, removing a specified element or elements. Specifically, this function implements an algorithm to remove an object type from a name. Function argument nms_chr_vec specifies the object to be updated. Argument object_type_lup provides the object to be updated. The function returns names (a character vector).
}
\keyword{internal}
