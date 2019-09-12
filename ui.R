#ui <- basicPage(

  #verbatimTextOutput("verbatim"),
  #h2("The parsed data"),
  

#)

navbarPage (
  title = 'ALAIN',
  tabPanel('Entrée de données',     
           textAreaInput(inputId="boite", label="Entrez du texte ici", 
                         placeholder = "entrez texte ici", 
                         value = default.input,
                         width = "600px")
           ),
  tabPanel('Lisibilité', DTOutput("gunning", width = "600px") %>% withSpinner(type=4) ),
  tabPanel('Overlaps',   
           p("Cet onglet affiche les superpositions lexicales entre le premier paragraphe et les paragraphes suivants."),
           DTOutput("overlap", width = "600px") %>% withSpinner(type=4)
           ),
  tabPanel('Parsing',    DTOutput("parsed", width="100%")  %>% withSpinner(type=4) )
)