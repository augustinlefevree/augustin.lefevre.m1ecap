## code to prepare `DATASET` dataset goes here
## code to prepare `df_football` dataset goes here

url_jeu_de_donnees <- "https://www.kaggle.com/datasets/frtgnn/football-coaching"

df_football <- readr::read_delim("data-raw/football.csv", delim = ",")

usethis::use_data(df_football, overwrite = TRUE)
