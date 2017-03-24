
library(shiny)

shinyUI(fluidPage(
  titlePanel("Investment portfolio choice"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("interval",
                             "Investment interval:",
                             c(30,60,90,180)),
      sliderInput("VaR",
                  "How much are you ready to lose?",
                  min=1,
                  max=20,
                  value=20)),
    mainPanel(
     tableOutput('firms'))
  )
))