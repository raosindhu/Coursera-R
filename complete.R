complete <- function(directory, id = 1:332){
  fsum <- function(fname){
    rfile <- read.csv(file = fname, header = TRUE, sep = ",", row.names = NULL)
    nobs <- sum(complete.cases(rfile))
    # rVar <- (op <- paste(fname, nobs, sep = " "))
    return(nobs)
    #opt <- rbind(opt, op)
  }
  filenames <- Sys.glob("*.csv")
  optfile <- sapply(filenames[id], fsum)
  opt <- unlist(optfile)
  return (opt)
  #rownames(opt) <- 1:nrow(opt)
}