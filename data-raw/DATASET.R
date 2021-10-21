## code to prepare `DATASET` dataset goes here

twentygen <- readr::read_rds("data-raw/twentygen.rds")

usethis::use_data(twentygen, overwrite = TRUE, compress = "gzip")

reddrum <- readr::read_rds("data-raw/red_drum_rad.rds")

usethis::use_data(reddrum, overwrite = TRUE, compress = "gzip")
