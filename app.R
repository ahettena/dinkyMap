library(shiny)
#library(leaflet)

ui <- fluidPage(
  uiOutput("mortality_map")
)

server <- function(input, output, session) {
  output$mortality_map <- renderUI({
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
