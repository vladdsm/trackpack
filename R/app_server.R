#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  # List the first level callModules here
  output$distPlot <- renderPlot({
    
    ## business logic code
    library(ggplot2)
    library(cranlogs)
    stats <- cran_downloads("lazytrade", from = input$daterange4[1], to = input$daterange4[2]) 
    #sum(stats$count)
    
    
    ggplot(stats, aes(date, count)) + 
      geom_col() + 
      labs(
        title = sprintf(
          "{stats} downloads to %s", 
          Sys.Date() - 1
        ), 
        caption = "data from {cranlogs}"
      ) + 
      theme_minimal()
    
    
    
    
  })
  
  
}
