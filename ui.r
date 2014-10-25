shinyUI(pageWithSidebar(
  headerPanel("BOM temperature explore",windowTitle="BOM temperature explore"),
  sidebarPanel(
    tags$head(tags$style(type='text/css', "#selected{ display: none; }")),

numericInput("Year", "Type Year",2014,2010,2014,1),
numericInput("Month", "Type Month",1,1,12,1),
radioButtons("Site", "Select Site:",
             unique(BOMDAILYTEMP$Site)[1:15]),

    uiOutput("selectedOut")
  ),
  mainPanel(
    tabsetPanel(
      tabPanel("Plots",h4("Graphical summaries of temperature observations"),
        htmlOutput("scatter"),
        plotOutput("boxplot")),
      
      tabPanel("Tables",h4("Tabular summaries of temperature observations (sortable)"),
               htmlOutput("table")),
               
      tabPanel("Documentation",h4("Documenting the app for temperature observations"),
        includeMarkdown('README.md')
      )
    )
  )
))


