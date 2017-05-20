
library(quantmod) 
library(rusquant) 
library(lubridate) 
 
interval<- 30
d<-Sys.Date()
day(d)= day(d)-(interval*4) 

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

na_count <-sapply(firms, function(y) sum(length(which(is.na(y)))))
good<-which(na_count<1)
firms<-firms[,good]