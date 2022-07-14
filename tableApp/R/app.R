library(shiny)


tableApp <- function() {
  ui <- fluidPage(
    actionButton("squareButton", "Square"),
    # imageOutput("squareImage")
    conditionalPanel(condition = "input.squareButton >= 1",
                     fluidRow(
                       column(12,
                              dataTableOutput('table')
                       )
                     )
    )
  )
  
  server <- function(input, output) {
    output$table <- renderDataTable(iris)
  }
  shinyApp(ui, server)
}