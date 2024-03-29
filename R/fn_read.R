#' Read functions
#' @description read_fns() is a Read function that reads an R script into memory. Specifically, this function implements an algorithm to read a functions. Function argument fns_dir_chr specifies the path to object. The function returns a functions path (a character vector).
#' @param fns_dir_chr Functions directory (a character vector of length 1), Default: 'data-raw/fns/'
#' @return Functions path (a character vector)
#' @rdname read_fns
#' @export 
#' @importFrom purrr walk
read_fns <- function (fns_dir_chr = "data-raw/fns/") 
{
    fns_path_chr_vec <- list.files(fns_dir_chr, pattern = "*.R$", 
        full.names = TRUE, ignore.case = TRUE) %>% purrr::walk(~source(.x))
    return(fns_path_chr_vec)
}
