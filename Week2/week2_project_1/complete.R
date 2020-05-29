complete <- function(directory,id=1:332){
  mylist <-list.files(path = directory, pattern = ".csv")
  kand <- numeric()
  for (i in id){
    mydata <-read.csv(mylist[i])
    mysum <- sum(complete.cases((mydata)))
    kand <- c(kand,mysum)
    
  }
  data.frame(id,kand)
}