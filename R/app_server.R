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
    stats <- cranlogs::cran_downloads("lazytrade", from = input$daterange4[1], 
                                         to = input$daterange4[2]) 
    #sum(stats$count)
    
    
    ggplot2::ggplot(stats, ggplot2::aes(date, count)) + 
      ggplot2::geom_col() + 
      ggplot2::labs(
        title = sprintf(
          "{stats} downloads to %s", 
          Sys.Date() - 1
        ), 
        caption = "data from {cranlogs}"
      ) + 
      ggplot2::theme_minimal()
    
    
    
    
  })
  
  
}
