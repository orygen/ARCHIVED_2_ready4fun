# NOTE: To install, deprecated rtools is sought. Users with R>4.0 need the following line in Renviron: PATH="${RTOOLS40_HOME}\usr\bin;${PATH}"
#
# 1. Load magrittr package to that the pipe operator ("%>%") can be used in this script.
library(magrittr)
#
# 2. Specify package name
pkg_nm_chr <- "ready4fun"
#
# 3. Create a "fns" sub-directory.
fns_dir_chr <-"data-raw/fns"
if(!dir.exists(fns_dir_chr))
  dir.create(fns_dir_chr)
## MAKE THIS A FUNCTION
#
# 4. MANUAL STEP. Write all your functions to R files in the new "fns" directory.
#
# 5. Read all undocumented functions in the temporary "fns" directory.
source(paste0(fns_dir_chr,"/read.R"))
fns_path_chr_vec <- read_fns(fns_dir_chr)
#
# 6. Create a lookup table of abbreviations of R object types and their descriptions and save it as a package dataset (data gets saved in the data directory, documentation script is created in R directory).
make_obj_lup_tb() %>%
  write_and_doc_ds_R(db = .,
                     overwrite_lgl = T,
                     db_chr = "object_type_lup",
                     title_chr = "Object abbreviations lookup table",
                     desc_chr = "A lookup table to identify R object types from an abbreviation that can be used as object name suffices.",
                     format_chr = "A tibble",
                     url_chr = "https://readyforwhatsnext.github.io/readyforwhatsnext/",
                     abbreviations_lup = .,
                     object_type_lup = .
                     )
#
# 7. Create a lookup table of abbreviations used in this package and save it as a package dataset (data gets saved in the data directory, documentation script is created in R directory).
make_abbr_lup_tb(short_name_chr_vec = c("abbr","arg","artl","db","desc","dir","ds","dmt","dmtd","doc","dvpr","fl","fns","gtr","imp","indef","indefartl","nm","ns","obj","outp","par","pfx","pkg","phr","pt","rgx","sfx","std","str","tbl","tbs","tmp","tpl","unexp","upd","ws","xls"),
                 long_name_chr_vec = c("abbreviation","argument","article","database","description","directory","dataset","documentation","documented","document","developer","file","functions","getter","import","indefinite","indefinite article","name","namespace","object","output","parameter","prefix","package","phrase","prototype","regular expression","suffix","standard","setter","table","tibbles","temporary","template","unexported","update","workspace","Excel workbook"),
                 no_plural_chr_vec = c("documentation","documented","temporary"),
                 custom_plural_ls = list(directory = "directories",
                                         prefix = c("prefixes"),
                                         suffix = c("suffices","sfcs")),
                 url_chr = "https://readyforwhatsnext.github.io/readyforwhatsnext/",
                 pkg_nm_chr = pkg_nm_chr)
#
# 8. Create a lookup table of function types used in this package and save it as a package dataset (data gets saved in the data directory, documentation script is created in R directory).
make_and_doc_fn_type_R(pkg_nm_chr = pkg_nm_chr,
                       url_chr = "https://readyforwhatsnext.github.io/readyforwhatsnext/")
#
# 9. Create a table of all undocumented functions
fns_dmt_tb <- make_fn_dmt_tbl_tb(fns_path_chr_vec,
                                 fns_dir_chr = fns_dir_chr,
                                 custom_dmt_ls = list(details_ls = NULL,#list(add_indefartls_to_phrases_chr_vec = "TEST DETAILS",close_open_sinks = "ANOTHER TEST"),
                                                      export_ls = list(force_true_chr_vec = c("close_open_sinks","force_req_pkg_install","get_from_lup_obj","import_xls_sheets_ls",
                                                                                              "make_abbr_lup_tb","make_and_doc_fn_type_R","make_fn_dmt_tbl_tb","read_fns",
                                                                                              "rowbind_all_tbs_in_r4_obj_r4","unload_packages","update_ns_chr","write_all_tbs_in_tbs_r4_to_csvs",
                                                                                              "write_and_doc_ds_R","write_and_doc_fn_fls_R","write_documented_fns","write_fn_dmt",
                                                                                              "write_ns_imps_to_desc","write_pkg_R","write_pt_lup_db_R","write_std_imp_R",
                                                                                              "write_tb_to_csv","write_ws"),
                                                                       force_false_chr_vec = NA_character_#c("add_indef_artl_to_item_chr_vec", "get_fn_args_chr_vec")
                                                                       ),
                                                      args_ls_ls = list(add_indefartls_to_phrases_chr_vec = NA_character_#c(abbreviated_phrase_chr_vec = "TEST_ARG_DESC_1",ignore_phrs_not_in_lup_lgl = "TEST_ARG_DESC_3")
                                                                        )),
                                 append_lgl = T)
# NOTE: To update, make call to update_fns_dmt_tb_tb
#
# 10. Write documented functions to R directory.
## Note files to be rewritten cannot be open in RStudio.
write_and_doc_fn_fls_R(fns_dmt_tb,
                       r_dir_chr = "R")
#
# 11. Update Description file with imported packages.
write_ns_imps_to_desc()
#
# 12. Create vignettes
usethis::use_vignette("ready4fun")
devtools::document()
# NOTE TO SELF: NEED TO RENAME export_lgl in tables and initial (not subsequent) functions to something like: inc_in_user_dmt_lgl
# NOTE TO SELF: NEED TO ADD WORKFLOW FOR TRANSITIONING FROM PRIVATE TO PUBLIC REPO TO CLENSE ALL PRIVATE COMMIT HISTORY. Variant of: https://gist.github.com/stephenhardy/5470814
# NOTE TO SELF: IN WORKFOW VIGNETTE, INCLUDE LINK TO: https://thenewstack.io/dont-mess-with-the-master-working-with-branches-in-git-and-github/
# and https://github.com/Kunena/Kunena-Forum/wiki/Create-a-new-branch-with-git-and-manage-branches
# and https://www.thegeekstuff.com/2019/03/git-create-dev-branch-and-merge/
