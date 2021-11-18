## code to prepare `DATASET` dataset goes here
library(tidyverse)

twentygen <- readr::read_rds("data-raw/twentygen.rds")

usethis::use_data(twentygen, overwrite = TRUE, compress = "gzip")

drumpop <- readr::read_rds("data-raw/red_drum_rad.rds")

reddrum_map <- readr::read_tsv("data-raw/consensus_map.tab")

reddrum_genes <- readr::read_rds("data-raw/soc_gene_tbl.rds") %>%
  select(id, scaffold, start, end, desc)

reddrum_hits <- readr::read_csv("data-raw/soc_best_hits.csv")

reddrum_loci <- tibble::tibble(locus = locNames(drumpop)) %>%
  left_join(reddrum_map, by = "locus") %>%
  left_join(reddrum_hits, by = c("locus" = "contig"))


reddrum <- list(geno = drumpop, map = reddrum_loci, genes = reddrum_genes)

usethis::use_data(reddrum, overwrite = TRUE, compress = "gzip")

otsh_color <- readr::read_rds("data-raw/otsh_color_gwas.rds")

usethis::use_data(otsh_color, overwrite = TRUE, compress = "gzip")
