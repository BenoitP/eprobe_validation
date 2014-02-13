BENCH  <- c("microBGen")
NBPROC <- c(1:4,8)

if(ARCH == 2) {
	NBPROC <- c(1:4)
}

PREFIX <- paste("input/",REP[ARCH],"/", sep="")
if(POWTEMP) {
	PREFIX <- paste("input/",REP[ARCH],"/", "POWTEMP/", sep="")
	NBPROC <- NBPROC[1] 
}
if(IDLEOFF) {
	PREFIX <- paste("input/",REP[ARCH],"/", "idleOFF/", CS, "/", sep="")
}

doRead <- function(benchT)
{
	list_FRQ <- list()
	for(j in 1:length(FREQ))
	{
		list_NPR <- list()
		for(i in 1:length(NBPROC))
		{
			lst <- list()
			for(k in 1:length(BENCH))
			{
				repo  <- paste(PREFIX, BENCH[1],"/", FREQ[j],"/", 
						BENCH[1],"_",NBPROC[i],"/",sep="")
				files <- list.files(repo, pattern=NULL)
				for(f in 1:length(files))
				{
					data <- read.csv(paste(repo,files[f],sep=""))
					data <- data[,c(1:2,4:5)]
					lst[[length(lst)+1]] <- data
				}
			}
			list_NPR[[length(list_NPR)+1]] <- lst
		}
		list_FRQ[[length(list_FRQ)+1]] <- list_NPR
	}

  return(list_FRQ)
}
