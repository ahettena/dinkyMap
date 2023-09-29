library(shiny)
library(ggplot2)
#library(leaflet)

ui <- fluidPage(
  plotOutput("plotz")
)

server <- function(input, output, session) {
  output$plotz <- renderPlot({
    #leafletOutput("map")
    
    lat <- 30.368254
    long <- -103.626395
    plot(lat, long)
    
    # output$map <- renderLeaflet({
    #   leaflet() %>%
    #     addTiles() %>%
    #     addProviderTiles(providers$Esri.WorldStreetMap) %>%
    #     addMarkers(
    #       lng = long,
    #       lat = lat
    #     )
    # })
    
  }
  )
}

shinyApp(ui, server)
  
