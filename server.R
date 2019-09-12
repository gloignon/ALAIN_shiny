server <- function(input, output) {
  
  currentParsedBoite <- reactive({
    leParsing(input$boite)
  })
  
  output$parsed = DT::renderDataTable({
    currentParsedBoite()
  })

  output$gunning <- DT::renderDataTable(
    DT::datatable( calculeIndex(currentParsedBoite() ), 
                  options = list(searching = FALSE, paging = FALSE))
  )
  
  output$overlap <- DT::renderDataTable(
     DT::datatable(analOverlap( currentParsedBoite() ), 
                  options = list(searching = FALSE, paging = FALSE))
  )
}