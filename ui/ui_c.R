# ....... ui tab C ......

tabPanel( 
  
  strong( 'Find the Unknown' ),
  
  fluidRow(
    
    column( 12, helpText( p( strong( ' ' ) ) ) )    #..... Heading
    
  ),
  fluidRow(
    
    column( width = 2, 
            selectInput( inputId = "C_Time_Format", 
                            label = "Select time format", 
                            choices = c( "12 Hour" = "12_Hour", 
                                         "24 Hour" = "24_Hour" ) ,
                            selected= "12 Hour"),
            checkboxInput(inputId = "show_graphs",
                          label = "Show graphs",
                          value = TRUE
            ),
            checkboxInput(inputId = "show_tables",
                          label = "Show tables",
                          value = FALSE
            )),
    
    br(),
    
    column( 2, actionButton( 'C_submit_button', strong( 'Submit' ), width = '100%' ) )
    
  ),
  

  br(),
  
  fluidRow(
    strong( ' Total number of tornadoes (and # and % in each magnitude, including \'unknown\') for each year' ),
    conditionalPanel(
      condition = "input.show_graphs == true",

    column( 12, plotlyOutput( "Total_Tornadoes_Each_Year_Barplot" ) )
  
    )
  ),
  
  br(),
  
  fluidRow(
    
    column( 12, dataTableOutput( "Total_Tornadoes_Each_Year" ) )
    
  ),
  
  br(),
  
  fluidRow(
    strong( ' Total number of tornadoes (and # and % in each magnitude, including \'unknown\') for each month' ),
    conditionalPanel(
      condition = "input.show_graphs == true",
      
    column( 12, plotlyOutput( "Total_Tornadoes_Per_Month_Barplot" ) )
    )
  ),
  
  br(),
  
  fluidRow(
    
    column( 12, dataTableOutput( "Total_Tornadoes_Per_Month" ) )
    
  ),

  br(),
  
  fluidRow(
    strong( ' Total number of tornadoes (and # and % in each magnitude, including \'unknown\') per hour' ),
    conditionalPanel(
      condition = "input.show_graphs == true",
      
    column( 12, plotlyOutput( "Total_Tornadoes_Per_Hour_Barplot" ) )
    )
  ),
  
  br(),
  
  fluidRow(
    
    column( 12, dataTableOutput( "Total_Tornadoes_Per_Hour" ) )
    
  ),
  
  br(),
  
  fluidRow(
    conditionalPanel(
      condition = "input.show_graphs == true",
      
    column( 12, plotlyOutput( "Total_Tornadoes_Given_Distance_Plot" ) )
    )
  ),

  
  br(),
  
  fluidRow(
    
    column( 12, dataTableOutput( "Total_Tornadoes_Given_Distance" ) )
    
  ),
  
  br(),

  fluidRow(
    strong( ' Injuries/Loss/Fatalities : By Year' ),
    conditionalPanel(
      condition = "input.show_graphs == true",
      
    column(2,selectInput(inputId = "ifl_year_plot",label = "Select input:",choices = c("Injuries", "Fatalities", "Loss"), selected = "Injuries")),
                
                
    column( 12, plotlyOutput( "Injuries_Fatalities_Loss_Year_Plot" ) )
    )
  ),

  br(),
  
  fluidRow(
    
    column( 12, dataTableOutput( "Injuries_Fatalities_Loss_Year" ) )
    
  ),
  
  br(),
  
  fluidRow(
    strong( ' Injuries/Loss/Fatalities : By Month' ),
    conditionalPanel(
      condition = "input.show_graphs == true",
      
    column(2,selectInput(inputId = "ifl_month_plot",label = "Select input:",choices = c("Injuries", "Fatalities", "Loss"), selected = "Injuries")),
    column( 12, plotlyOutput( "Injuries_Fatalities_Loss_Month_Plot" ) )
    )
  ),


  br(),
  
  fluidRow(
    
    column( 12, dataTableOutput( "Injuries_Fatalities_Loss_Month" ) )
    
  ),
  
  br(),
  
  fluidRow(
    strong( ' Injuries/Loss/Fatalities : By Hour' ),
    conditionalPanel(
      condition = "input.show_graphs == true",
      
   column(2, selectInput(inputId = "ifl_hour_plot",label = "Select input:",choices = c("Injuries", "Fatalities", "Loss"), selected = "Injuries")),
    column( 12, plotlyOutput( "Injuries_Fatalities_Loss_Hour_Plot" ) )
    )
  ),
  
  # br(),
  # 
  # fluidRow(
  #   conditionalPanel(
  #     condition = "input.show_graphs == true",
  # 
  #   column( 12, plotlyOutput( "Injuries_Fatalities_Loss_Hour_Barplot" ) )
  #   )
  # ),
  # 
  br(),
  
  fluidRow(
    
    column( 12, dataTableOutput( "Injuries_Fatalities_Loss_Hour" ) )
    
  ),
  
br(),

fluidRow(
strong( ' Counties in IL hit by Tornado ' ),
  conditionalPanel(
    condition = "input.show_graphs == true",

  column( 12, plotlyOutput( "Counties_Most_Hit_by_Tornadoes_Plot" ) )
  )
),


  br(),

  fluidRow(

    column( 4, dataTableOutput( "Counties_Most_Hit_by_Tornadoes" ) )

  ),

  br(),
  
  fluidRow(
    strong( ' Map showing the different distance of tornado based on counties' ),
    conditionalPanel(
      condition = "input.show_graphs == true",
      
    column( 12, leafletOutput("Prob_9_Leaflet_Plot") )
    )
  ) 
  
)
