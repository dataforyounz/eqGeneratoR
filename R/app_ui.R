#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic
    
    bslib::page_navbar(
      
      title = "Equation Generator",
      theme = bslib::bs_theme("cosmo", version = "5"),
      
      bslib::nav_panel(
        title = "Home",
        
        bslib::layout_column_wrap(
          width = 1/2,
          
          bslib::card(
            
            htmltools::div(
              
              htmltools::h3("Welcome to the Equation Generator."),
              htmltools::h5("The application you didn't know you needed!"),
              htmltools::hr(),
              htmltools::h6("Have you ever needed to produce a random equation? Well, this is the app for you!"),
              
              htmltools::p("Need to impress a friend? Looking for that intellectual gap filler? Well, look no further!")
            )
            
          ),
          
          bslib::card(
            
            htmltools::div( class = "container",
                            style = "margin-top: 4rem;",
                            
                            htmltools::div( class = "container text-center",
                                            htmltools::h4("Click the button to generate a random equation!"),
                                            
                                            shiny::actionButton( inputId = "go", label = "Go!", width = "50%", class = "mt-4 mb-4 btn-primary"),
                                            
                                            htmltools::div( class = "container d-flex align-items-center justify-content-center", 
                                                            style = "height: 100px; margin-top: 3rem; border: solid black 1px;",
                                                            
                                                            shiny::uiOutput("equation")
                                            ),
                                            
                                            htmltools::h5( shiny::textOutput("description"), class="mt-3")
                            )
            )
          )
        )
      )
    )
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )
  
  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "app-equation-generator"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
