

pollutantmean <-function(in_Dir,in_pollutant,in_id)
{
  list <- list.files(path=in_Dir,pattern = ".csv")
  v <- numeric()
  for (i in in_id){
    data <-read.csv(list[i])
    v <- c(v,data[[in_pollutant]])
  }
  mean(v,na.rm=T)
}
