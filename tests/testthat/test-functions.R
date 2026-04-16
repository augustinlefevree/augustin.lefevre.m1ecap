test_that("filtrer_resultat renvoie un data.frame", {
  res <- filtrer_resultat(df_football, "H")
  expect_s3_class(res, "data.frame")
})

test_that("calcul_buts_moyens renvoie deux colonnes", {
  res <- calcul_buts_moyens(df_football)
  expect_s3_class(res, "data.frame")
  expect_true(all(c("HomeTeam", "FTHG") %in% names(res)))
})

test_that("plot_buts_moyens renvoie un objet ggplot", {
  p <- plot_buts_moyens(df_football)
  expect_s3_class(p, "ggplot")
})
