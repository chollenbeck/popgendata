## code to prepare `DATASET` dataset goes here

twentygen <- readr::read_rds("data-raw/twentygen.rds")

usethis::use_data(twentygen, overwrite = TRUE, compress = "gzip")

drumpop <- readr::read_rds("data-raw/red_drum_rad.rds")

reddrum_map <- readr::read_tsv("data-raw/consensus_map.tab")

reddrum <- list(geno = drumpop, map = reddrum_map)

usethis::use_data(reddrum, overwrite = TRUE, compress = "gzip")
