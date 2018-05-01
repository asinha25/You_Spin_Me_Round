# ....... ui tab B ......

tabPanel( 
  
  strong( 'In depth of Illinois' ),
  
  fluidRow(
    column( 2, selectInput( "input_magnitude", label = "Magnitude", choices = list( 'Value' = 'Value' ) ) ),
    
    column( 4, selectInput( "B_map_background", label = "Map Background", choices = list( 'Background' = 'Background' ) ) )),
  fluidRow(
    
    column( width = 2, 
            checkboxInput(inputId = "show_graphsB",
                          label = "Show graphs",
                          value = TRUE
            ),
            checkboxInput(inputId = "show_tablesB",
                          label = "Show tables",
                          value = FALSE
            ))
    
  ),
  
  br(),
  
  fluidRow( 

    conditionalPanel(
      condition = "input.show_graphsB == true",
      
    column( 12, leafletOutput("mag_leaflet_map") )
    )
  ),
  
  br(),
fluidRow(

column( 3,align="center", selectInput( "B_filter_variable", label = "Filtering Variable", choices = list( 'Variable' = 'Variable' ) ) ),

column( 3, sliderInput( "B_variable_value", label = "Variable Value", min = 0, max = 20, value = 10 ,sep="") )),
  
  fluidRow(


    conditionalPanel(
      condition = "input.show_graphsB == true",
      
    column( 12, leafletOutput("mymap") )
    )
    ),
  
  br(),
  
  fluidRow(
    
    column( 12, helpText( p( strong( 'Map showing the top 10 tornado(filter by it\'s length in miles)  in IL\'s location and view table for more details ' ) ) ) )    #..... Heading
    
  ),
  
  br(),
  
  fluidRow( 
    
    conditionalPanel(
      condition = "input.show_graphsB == true",
      
    column( 12, leafletOutput("B_last_prob_map") )
    )
  ),
  
  br(),
  
  fluidRow(
    
    conditionalPanel(
      condition = "input.show_tablesB == true",
      
    column( 12, dataTableOutput( "B_last_prob_table" ) )
    )
  )
  
  )
