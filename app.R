library(shiny)

ui <- fluidPage(
  plotOutput("plotz")
)

server <- function(input, output, session) {
  output$plotz <- renderPlot({
    
    lat <- 30.368254
    long <- -103.626395
    plot(lat, long) 
    }
  )
}

shinyApp(ui, server)
  
