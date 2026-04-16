#' Filtrer les matchs selon le résultat
#'
#' @param data Un data.frame de matchs
#' @param resultat Résultat souhaité ("H", "D", "A")
#'
#' @return Un data.frame filtré
#' @export
filtrer_resultat <- function(data, resultat) {
  data[data$FTR %in% resultat, ]
}

#' Moyenne des buts à domicile par équipe
#'
#' @param data Un data.frame de matchs
#'
#' @return Un data.frame avec moyenne des buts
#' @export
#' @importFrom stats aggregate
calcul_buts_moyens <- function(data) {
  aggregate(FTHG ~ HomeTeam, data = data, FUN = mean)
}

#' Graphique des buts moyens par équipe
#'
#' @param data Un data.frame de matchs
#'
#' @return Un graphique ggplot
#' @export
#' @importFrom ggplot2 ggplot aes geom_col coord_flip
#' @importFrom stats aggregate
plot_buts_moyens <- function(data) {
  HomeTeam <- FTHG <- NULL
  stats <- calcul_buts_moyens(data)
  ggplot2::ggplot(stats, ggplot2::aes(x = HomeTeam, y = FTHG)) +
    ggplot2::geom_col() +
    ggplot2::coord_flip()
}
