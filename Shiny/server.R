


# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny) 

shinyServer(function(input, output) { 
  
  output$firms <- renderTable({ 
    library(quantmod) 
    library(rusquant) 
    library(lubridate) 
    interval <- as.numeric(input$interval) 
    d<-Sys.Date() 
    day(d)=day(d)-(interval*4) 
    getSymbols(Symbols="SBER", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    getSymbols(Symbols="TATN", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    getSymbols(Symbols="ROSN", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    getSymbols(Symbols="FEES", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    getSymbols(Symbols="BANE", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    getSymbols(Symbols="AFLT", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    SBER<-as.data.frame(SBER) 
    firms <- data.frame("Date"=rownames(SBER), "SBER.Close"=SBER$SBER.Close, TATN[,4], ROSN[,4], FEES[,4], BANE[,4], AFLT[,4]) 
    head(firms) 
  }) 
  output$plot<-renderPlot({
    library(quantmod) 
    library(rusquant) 
    library(lubridate) 
    interval <- as.numeric(input$interval) 
    d<-Sys.Date() 
    day(d)=day(d)-(interval*4) 
    getSymbols(Symbols="SBER", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    getSymbols(Symbols="TATN", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    getSymbols(Symbols="ROSN", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    getSymbols(Symbols="FEES", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    getSymbols(Symbols="BANE", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    getSymbols(Symbols="AFLT", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    SBER<-as.data.frame(SBER) 
    firms <- data.frame("Date"=rownames(SBER), "SBER.Close"=SBER$SBER.Close, TATN[,4], ROSN[,4], FEES[,4], BANE[,4], AFLT[,4]) 
    firmts<-ts(firms[,2:7])
    plot(firmts, main="Companies")
    
  })
})
