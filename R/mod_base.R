#' base UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_base_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' base Server Functions
#'
#' @noRd 
mod_base_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_base_ui("base_1")
    
## To be copied in the server
# mod_base_server("base_1")
