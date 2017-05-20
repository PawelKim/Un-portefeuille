

# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny) 

shinyUI(pageWithSidebar( 
  
  # Application title 
  headerPanel("Investment portfolio choice"), 
  
  # Sidebar with a slider input for number of bins 
  sidebarPanel( 
    numericInput("interval", 
                 "Investment interval:", 
                 value=25, 
                 min=25, 
                 max=300, 
                 step=25), 
    numericInput("Money", 
                 "Amount of investment:", 
                 value=1000, 
                 min=1000, 
                 max=1000000000, 
                 step=1),
    numericInput("VaR", 
                "What sum of your investment are you prepared to lose?", 
                min=1, 
                max=1000000000, 
                value=1000)
  ), 
  
  # Show a plot of the generated distribution 
  mainPanel( 
    tableOutput('firms')
  ) 
  
  
))
