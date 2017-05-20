


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
    SBER<-SBER[,4]
    getSymbols(Symbols="SBERP", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    SBERP<-SBERP[,4]
    getSymbols(Symbols="GAZP", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    GAZP<-GAZP[,4]
    getSymbols(Symbols="LKOH", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    LKOH<-LKOH[,4]
    getSymbols(Symbols="NVTK", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    NVTK<-NVTK[,4]
    getSymbols(Symbols="MGNT", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    MGNT<-MGNT[,4]
    getSymbols(Symbols="GMKN", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    GMKN<-GMKN[,4]
    getSymbols(Symbols="SNGS", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    SNGS<-SNGS[,4]
    getSymbols(Symbols="SNGSP", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    SNGSP<-SNGSP[,4]
    getSymbols(Symbols="ROSN", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    ROSN<-ROSN[,4]
    getSymbols(Symbols="VTBR", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    VTBR<-VTBR[,4]
    getSymbols(Symbols="TRNFP", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    TRNFP<-TRNFP[,4]
    getSymbols(Symbols="TATN", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE) 
    TATN<-TATN[,4]
    getSymbols(Symbols="TATNP", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    TATNP<-TATNP[,4]
    getSymbols(Symbols="MTSS", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    MTSS<-MTSS[,4]
    getSymbols(Symbols="ALRS", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    ALRS<-ALRS[,4]
    getSymbols(Symbols="MOEX", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    MOEX<-MOEX[,4]
    getSymbols(Symbols="CHMF", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    CHMF<-CHMF[,4]
    getSymbols(Symbols="IRAO", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    IRAO<-IRAO[,4]
    getSymbols(Symbols="POLY", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    POLY<-POLY[,4]
    getSymbols(Symbols="NLMK", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    NLMK<-NLMK[,4]
    getSymbols(Symbols="YNDX", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    YNDX<-YNDX[,4]
    getSymbols(Symbols="HYDR", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    HYDR<-HYDR[,4]
    getSymbols(Symbols="AFKS", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    AFKS<-AFKS[,4]
    getSymbols(Symbols="PHOR", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    PHOR<-PHOR[,4]
    getSymbols(Symbols="AFLT", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    AFLT<-AFLT[,4]
    getSymbols(Symbols="RTKM", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    RTKM<-RTKM[,4]
    getSymbols(Symbols="RTKMP", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    RTKMP<-RTKMP[,4]
    getSymbols(Symbols="MFON", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    MFON<-MFON[,4]
    getSymbols(Symbols="FEES", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    FEES<-FEES[,4]
    getSymbols(Symbols="RUAL", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    RUAL<-RUAL[,4]
    getSymbols(Symbols="MAGN", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    MAGN<-MAGN[,4]
    #getSymbols(Symbols="PLZL", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    #getSymbols(Symbols="MTLR", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    getSymbols(Symbols="MTLRP", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    MTLRP<-MTLRP[,4]
    getSymbols(Symbols="PIKK", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    PIKK<-PIKK[,4]
    getSymbols(Symbols="URKA", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    URKA<-URKA[,4]
    getSymbols(Symbols="UPRO", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    UPRO<-UPRO[,4]
    getSymbols(Symbols="MVID", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    MVID<-MVID[,4]
    getSymbols(Symbols="CBOM", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    CBOM<-CBOM[,4]
    getSymbols(Symbols="BANEP", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    BANEP<-BANEP[,4]
    getSymbols(Symbols="TRMK", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    TRMK<-TRMK[,4]
    #getSymbols(Symbols="RSTI", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)     
    getSymbols(Symbols="AKRN", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    AKRN<-AKRN[,4]
    getSymbols(Symbols="AGRO", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    AGRO<-AGRO[,4]
    getSymbols(Symbols="UWGN", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    UWGN<-UWGN[,4]
    getSymbols(Symbols="NMTP", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    NMTP<-NMTP[,4]
    getSymbols(Symbols="LSRG", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    LSRG<-LSRG[,4]
    getSymbols(Symbols="MSNG", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    MSNG<-MSNG[,4]
    getSymbols(Symbols="DIXY", from=d, to = Sys.Date(), src = "Finam", period = "day", auto.assign = TRUE)
    DIXY<-DIXY[,4]
    
    firms<-Reduce(function(x, y) merge(x, y, all=TRUE), list(SBER, SBERP, GAZP, LKOH, NVTK, MGNT, GMKN, SNGS, SNGSP, ROSN,
                                                             VTBR, TRNFP, TATN, TATNP, MTSS, ALRS, MOEX, CHMF, IRAO, POLY,
                                                             NLMK, YNDX, HYDR, AFKS, PHOR, AFLT, RTKM, RTKMP, MFON, FEES,
                                                             RUAL, MAGN, MTLRP, PIKK, URKA, UPRO, MVID, CBOM,
                                                             BANEP, TRMK, AKRN, AGRO, UWGN, NMTP, LSRG, MSNG, DIXY))
    firms<-as.data.frame(firms)
    colnames(firms)<-c("SBER", "SBERP", "GAZP", "LKOH", "NVTK", "MGNT", "GMKN", "SNGS", "SNGSP", "ROSN",
                       "VTBR", "TRNFP", "TATN", "TATNP", "MTSS", "ALRS", "MOEX", "CHMF", "IRAO", "POLY",
                       "NLMK", "YNDX", "HYDR", "AFKS", "PHOR", "AFLT", "RTKM", "RTKMP", "MFON", "FEES",
                       "RUAL", "MAGN", "MTLRP", "PIKK", "URKA", "UPRO", "MVID", "CBOM",
                       "BANEP", "TRMK", "AKRN", "AGRO", "UWGN","NMTP", "LSRG", "MSNG", "DIXY")
    
  
    a<-colnames(firms)[colSums(is.na(firms[(nrow(firms)-6):nrow(firms),])) > 0]
    firms11<-firms[,-which(colnames(firms)==a)]
    
    
    firms11<-na.locf(firms11)
    
    na_count <-sapply(firms11, function(y) sum(length(which(is.na(y)))))
    good<-which(na_count<1)
    firms<-firms11[,good]
    Date<-rownames(firms)
    firms<-cbind(Date, firms)
    
    
    meanprof<-vector()
    pricechanges<-matrix(0, nrow=nrow(firms)-1, ncol=ncol(firms)-1)  #check the length of DF, change number of firms
    for (h in 1:(ncol(firms)-1)){
      pricechanges[,h]<-diff(log(firms[,h+1]))
      meanprof[h]<-mean(pricechanges[,h])
    }
    #Sort by profitability
    zer<-which(meanprof>0)
    sortprof<-meanprof[c(zer)]
    sortfirms <- firms[,c(1+zer)]
    sortpricech<-pricechanges[, c(zer)]
    #sort by sum of investment...
    money <- as.numeric(input$Money)
    sum <- which(as.numeric(tail(sortfirms,1))<0.33*money)
    sortprofsum<-sortprof[c(sum)]
    sortpricechsum<-sortpricech[, c(sum)]
    sortsum <- sortfirms[,c(sum)] #have to check this part
    #models...
    
    
    #share matrix
    len=length(sum)
    mat <- matrix(0, nrow = len, ncol = 100)
    set.seed(1)
    for (i in 1:20){
      mat[,i]<- rnorm(len, mean=500, sd=100)
      mat[,20+i]<-runif(len, min=20, max=50)
      mat[,40+i]<-rchisq(len, df=50)
      mat[,60+i]<-rexp(len, rate=0.005)
      mat[,80+i]<-2000-rexp(len, rate=0.005)
    }
    m=t(t(mat)/colSums(mat))
    #portfolio profitability
    prof<-vector()
    for (u in 1:100){
    prof[u]<-sortprofsum%*%m[,u]
    }
    expectprof <- prof*interval
    #portfolio volatility
    disp<-vector()
    for(p in 1:100){
    disp[p]<-t(m[,p])%*%cov(sortpricechsum)%*%t(t(m[,p]))
    }
    expectvol <- sqrt(prof*interval)
    #sort by volatility...
    var <- as.numeric(input$VaR)
    valueatrisk <- vector()
    for(k in 1:100){
      valueatrisk[k]<-money*(1-exp(qnorm(0.05, mean=expectprof[k], sd=expectvol[k])))
    }
    risksorted <- which(valueatrisk<var)
    sortexpectprof <- expectprof[c(risksorted)]
    sortexpectvol <- expectvol[c(risksorted)]
    #result
    bestshares <- m[,which.max(sortexpectprof/sortexpectvol)]
    sumonfirm <- money*bestshares
    numofstocks <- floor(as.numeric(sumonfirm/tail(sortsum, 1)))
    bestreply<-data.frame("TICKER"=colnames(sortsum), "Shares"=bestshares, "Number"=numofstocks)
    investedsum<-sum(as.numeric(numofstocks*tail(sortsum, 1)))
    expectedreturn <- sortexpectprof[which.max(sortexpectprof/sortexpectvol)]
    expectedsum <- (1+expectedreturn)*investedsum
    bestreply
    subset(bestreply, bestreply$Number>0)
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
