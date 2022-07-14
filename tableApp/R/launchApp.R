#' launches tableApp
#' @name launchApp
#' @return {shiny application object}
#' tableApp
#' shiny application object
#' @description {launches the tableApp}
library(shiny)
library(roxygen2)
launchApp <- function() {
  shinyApp(ui = tableAppUI, server = tableAppServer)
}
