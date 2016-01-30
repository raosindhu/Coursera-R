corr <- function(directory, threshold = 0){
  tcorrs <- function(fname){
    recfile <- read.csv(file = fname, header = TRUE, sep = ",", row.names = NULL)
    cobs <- sum(complete.cases(recfile))
    if (cobs > threshold){
      #  ccase <- recfile[complete.cases(recfile), c("sulfate", "nitrate")]
      return(tcorr <- cor(recfile$sulfate, recfile$nitrate, use = "complete.obs"))
      # ccaset <- rbind(ccaset, tcorr)
    }
  }
  filenames <- Sys.glob("*.csv")
  totcorr <- lapply(filenames, tcorrs)
  fcorr <- unlist(totcorr[!sapply(totcorr, is.null)])
  return(fcorr)
}
