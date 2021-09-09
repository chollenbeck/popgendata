## code to prepare `DATASET` dataset goes here

twentygen <- readr::read_rds("data-raw/twentygen.rds")

usethis::use_data(twentygen, overwrite = TRUE, compress = "gzip")
