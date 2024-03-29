#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  
  shiny::observeEvent( input$go, {
    
    shiny::req( input$go )
    
    equation <- generate_equation()
    
    output$equation <- shiny::renderUI( withMathJax( equation$formula ) )
    
    output$description <- shiny::renderText( equation$description )
    
  }) # <-- End observeEvent
}
