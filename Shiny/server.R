


# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)



shinyServer(function(input, output) {
  
  output$firms <- renderTable({
    
    # generate bins based on input$bins from ui.R
    library(quantmod) 
    library(rusquant) 
    library(lubridate)
    interval <- input$inteval
    d<-Sys.Date()
    day(d)=day(d)-(interval*4)
    getSymbols(Symbols="SBER", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    getSymbols(Symbols="TATN", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    getSymbols(Symbols="ROSN", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    getSymbols(Symbols="FEES", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    getSymbols(Symbols="BANE", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    getSymbols(Symbols="AFLT", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    firms <- data.frame(SBER[,4], TATN[,4], ROSN[,4], FEES[,4], BANE[,4], AFLT[,4]) 
    
    # draw the histogram with the specified number of bins
    head(firms)
    
  })
  
})
