# ....... ui tab A ......

tabPanel( 

strong(  ' Compare and Learn' ),

fluidRow(

column( 4, selectInput( "A_map_background", label = "Map Background", choices = list( 'Background' = 'Background' ) ) )),
fluidRow(
column( width = 2,
checkboxInput(inputId = "show_graphsA",
label = "Show graphs",
value = TRUE
),
checkboxInput(inputId = "show_tablesA",
label = "Show tables",
value = FALSE
))

),

br(),

fluidRow(

column( 12, helpText( p( strong( 'Illinois tabular data' ) ) ) )    #..... Heading

),

br(),

fluidRow(

conditionalPanel(
condition = "input.show_tablesA == true",


column( 12, dataTableOutput( "IL_table_output" ) )
)
),
br(),

fluidRow(

column( 2, selectInput( "A_state", label = "State", choices = list( 'state' = 'state' ) ) )

),
br(),

fluidRow(

column( 12, helpText( p( strong( 'Other State tabular data' ) ) ) )    #..... Heading

),

br(),

fluidRow(

conditionalPanel(
condition = "input.show_tablesA == true",

column( 12, dataTableOutput( "compare_table_output" ) )
)
),

br(),

fluidRow(


column( 2, selectInput( "A_input_year", label = "Year", choices = list( 'year' = 'year' ) ) )

),

br(),

fluidRow(

column( 12, helpText( p( strong( 'Map and Tabular Data of selected year' ) ) ) )    #..... Heading

),
br(),

fluidRow(
strong( ' Map of IL showing different data based on counties' ),
conditionalPanel(
condition = "input.show_graphsA == true",


column( 12, leafletOutput( "A_prob_1_leaflet" ) )

)),
br(),

fluidRow(
strong( ' Map and table showing for tornoados in whole U.S' ),
conditionalPanel(
condition = "input.show_graphsA == true",


column( 12, leafletOutput("A_mymap") )
)
),

br(),

fluidRow(

conditionalPanel(
condition = "input.show_tablesA == true",

column( 12, dataTableOutput( "selected_year_table" ) )
)
)



)

