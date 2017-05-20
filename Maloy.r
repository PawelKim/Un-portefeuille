mat <- matrix(, nrow = 50, ncol = 100)

for (i in 1:20){
mat[,i]<- rnorm(50, mean=50, sd=10)
mat[,20+i]<-runif(50, min=20, max=50)
mat[,40+i]<-rchisq(50, df=50)
mat[,60+i]<-rexp(50, rate=1)
mat[,80+i]<-10-rexp(50, rate=1)
}

mat[,80+i]<-10-rexp(50, rate=1)


m=t(t(mat)/colSums(mat))
sum(m[,100])


#for (j in 1:100){
 # for (k in 1:50){
  #  mat[k,j]<-(mat[k,j]-min(mat[,j]))/(max(mat[,j])-min(mat[,j]))
 # }
#}

summary(mat[,81:100])

m[50,100]







mat