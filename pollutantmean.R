pollutantmean <- function(directory, pollutant, id = 1:332){
  filename <- Sys.glob("*.csv")
  mfile <- NULL
  for(i in seq_along(id)){
    rfile <- read.csv(file = filename[id[i]], header = TRUE, sep = ",", row.names = NULL)
    mfile <- rbind(mfile, rfile)
  }
  if (pollutant == "sulfate")
   m1 <- mean(mfile$sulfate, na.rm = TRUE)
  else 
  m1 <- mean(mfile$nitrate, na.rm = TRUE)
  m1 # is the mean 
}


