


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
    #download the rest of firms...
    firms <- data.frame("Date"=rownames(SBER), "SBER.Close"=SBER$SBER.Close, TATN[,4], ROSN[,4], FEES[,4], BANE[,4], AFLT[,4]) 
    #price changes
    meanprof<-vector()
    pricechanges<-matrix(, nrow=length(firms)-1, ncol=ncol(firms)-1)  #check the length of DF, change number of firms
    for (h in 1:(ncol(firms)-1)){
      pricechanges[,h]<-diff(log(firms[,h+1]))
      meanprof[h]<-mean(d[,h])
    }
    #Sort by profitability
    zer<-which(meanprof>0)
    sortprof<-meanprof[c(zer)]
    sortfirms <- firms[,c(1+zer)]
    sortpricech<-pricechanges[, c(zer)]
    #sort by sum of investment...
    money <- as.numeric(input$Money)
    sum <- which(tail(sortfirms[,2:ncol(sortfirms)])<0.3*money)
    sortsum <- sortfirms[,c(1+sum)] #have to check this part
    #models...
    
    
    #share matrix
    len=length(zer)
    mat <- matrix(, nrow = len, ncol = 100)
    set.seed(1)
    for (i in 1:20){
      mat[,i]<- rnorm(n, mean=500, sd=100)
      mat[,20+i]<-runif(n, min=20, max=50)
      mat[,40+i]<-rchisq(n, df=50)
      mat[,60+i]<-rexp(n, rate=0.005)
      mat[,80+i]<-2000-rexp(n, rate=0.005)
    }
    m=t(t(mat)/colSums(mat))
    sum(m[,100])
    #portfolio profitability
    prof<-vector()
    for (u in 1:100){
    prof[u]<-sortprof%*%m[,u]
    }
    expectprof <- prof*interval
    #portfolio volatility
    disp<-vector()
    for(p in 1:100){
    disp[p]<-t(m[,p])%*%cov(d1)%*%t(t(m[,p]))
    }
    expectvol <- sqrt(prof*interval)
    #sort by volatility...
    
    #result
    which.max(prof/sqrt(disp))
    
  }) 
  #output$plot<-renderPlot({
    #library(quantmod) 
    #library(rusquant) 
  #  library(lubridate) 
   # interval <- as.numeric(input$interval) 
    #d<-Sys.Date() 
    #day(d)=day(d)-(interval*4) 
    #getSymbols(Symbols="SBER", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    #getSymbols(Symbols="TATN", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    #getSymbols(Symbols="ROSN", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    #getSymbols(Symbols="FEES", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    #getSymbols(Symbols="BANE", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    #getSymbols(Symbols="AFLT", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    #SBER<-as.data.frame(SBER) 
    #firms <- data.frame("Date"=rownames(SBER), "SBER.Close"=SBER$SBER.Close, TATN[,4], ROSN[,4], FEES[,4], BANE[,4], AFLT[,4]) 
    #firmts<-ts(firms[,2:7])
    #plot(firmts, main="Companies")
    
  #})
  
})
