corr <- function(directory,thr = 0){
  mylist <-list.files(path=directory,pattern = ".csv")
  df <- complete(directory)
  ids <- df[df["nobs"] > thr,]$id
  corr <- numeric()
  for(i in ids){
    mydata <- read.csv(mylist[i])
    dff <- mydata[complete.cases(data), ]
    corrr <- c(corrr,cor(dff$sulfate,diff$nitrate))
  }
  return(corrr)
}