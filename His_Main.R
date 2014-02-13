library(sfsmisc)
library(parallel)
library(vioplot)

DERIV      <- TRUE  # Compute derivative
DUMP2F     <- TRUE  # Dump differential  power to file 
PLOT2H     <- TRUE  # Plot histogram
POWTEMP    <- FALSE
IDLEOFF    <- FALSE
PERCONF    <- TRUE
CS_SEL     <- ""

ESTIMATOR  <- c("mean", "median")[2] # 1 for mean and 2 for average
FREQ       <- c("FMIN", "FMAX")
REP        <- c("IB", "SB")
HZ         <- c((1/(3.4*10^9)),(1/(3.1*10^9)))

Args <- commandArgs(TRUE)
#Get the machine type
if(!is.na(Args[1])) {
	ARCH <- as.numeric(Args[1])
} else {
	stop("must specify machine number")
}
#Get the benchmark family
if(!is.na(Args[2])) {
	if (as.numeric(Args[2]) == 1) {
		POWTEMP   <- TRUE 
	}
	if (as.numeric(Args[2]) == 2) {
		IDLEOFF   <- TRUE 
		if(!is.na(Args[3])) {
			CS <- as.numeric(Args[3])
		} else {
			CS <- 0
		}
		CS_SEL   <- paste("_",CS, sep="")
	}
}
 

HISPREF <- paste("LOG/", REP[ARCH], "/", sep="")
PDFPREF <- paste("PDF/", REP[ARCH], "/", sep="")
if(POWTEMP) {
	HISPREF <- paste("LOG/", REP[ARCH], "/", "POWTEMP/", sep="")
	PDFPREF <- paste("PDF/", REP[ARCH], "/", "POWTEMP/", sep="")
}
if(IDLEOFF) {
	HISPREF <- paste("LOG/", REP[ARCH], "/", "idleOFF/", sep="")
	PDFPREF <- paste("PDF/", REP[ARCH], "/", "idleOFF/", sep="")
}
cycles  <- HZ[ARCH] 
csvF    <- c("Power_CPU-MB")
#powF    <- c("Power_CPU-MB")
hisF    <- c("His_CPU-MB_FREQ")
hisF2   <- c("His_CPU-MB_PROC")
statF   <- c("PowDiff_CPU-MB")

csvF    <- paste(csvF, CS_SEL, ".csv", sep="") 
logF    <- paste(substr(csvF, 1, nchar(csvF)-4), ".log", sep="") 
#powF    <- paste(powF, CS_SEL, ".pdf", sep="") 
hisF    <- paste(hisF, CS_SEL, ".pdf", sep="") 
hisF2   <- paste(hisF2, CS_SEL, ".pdf", sep="") 
statF   <- paste(statF, CS_SEL, ".report", sep="") 

NRUNS  <- 0
nbench <- 0
NCONF  <- 0
size   <- 0

source("Read_DATA.R")
source("His_Plot.R")

vecDiff <- function(vec)
{
	lvec <- length(vec)
	vec1 <- vec[1:(lvec/2)]
	vec2 <- vec[(lvec/2+1):lvec]
	vec<-NULL	
	for(x in 1:sum(!is.na(vec1))){
		vec <- append (vec, vec2-vec1[x])
	}
	vec <- vec[!is.na(vec)]
	return (vec)
}

myDiff <- function(vec)
{
	lvec <- length(vec)
	vec1 <- vec[1:(lvec/2)]
	vec2 <- vec[(lvec/2+1):lvec]
	return (get(ESTIMATOR)(vec2) - get(ESTIMATOR)(vec1))
}

DerivCI <- function()
{
	print(NCONF)
	fNameP <- paste(HISPREF, csvF, sep="")
	P_CPU <- POWER_RAPL
	P_SYS <- POWER_YOKO
	myError <- NULL
	###################################################################################
	#Influence of frequency and number of cores
	nDim  <- (length(NBPROC)*length(FREQ))
	usize <- c(1:nDim)
	idx <- seq(1, NCONF, nDim)
	Error <- NULL 
	for(i in 1:nbench) {
		dataList <- list(P_CPU[,idx[i]:(idx[i]+nDim-1)],P_SYS[,idx[i]:(idx[i]+nDim-1)])
		for(j in 1:(length(usize)-1)) {
			dataCPU <- rbind(matrix(rep(dataList[[1]][,j],nDim-j), nrow=NRUNS), 
						as.matrix(dataList[[1]][,((j+1):(nDim))]))
			dataSYS <- rbind(matrix(rep(dataList[[2]][,j],nDim-j), nrow=NRUNS), 
						as.matrix(dataList[[2]][,((j+1):(nDim))]))
			dataCPU <- apply(dataCPU, 2, vecDiff)
			dataSYS <- apply(dataSYS, 2, vecDiff)
			isEqual <- apply(rbind(dataCPU, dataSYS), 2, myDiff)
			Error <- append(Error, isEqual) 
		}
	}
	Error[is.na(Error)] <- 0.0
	myError <- cbind(myError,Error)
	###################################################################################
	#Influence of frequency
	nDim  <- length(FREQ)
	usize <- c(1:nDim)
	idx <- seq(1, NCONF, nDim)
	Error <- NULL 
	for(i in 1:length(idx)) {
		dataList <- list(P_CPU[,idx[i]:(idx[i]+nDim-1)],P_SYS[,idx[i]:(idx[i]+nDim-1)])
		for(j in 1:(length(usize)-1)) {
			dataCPU <- rbind(matrix(rep(dataList[[1]][,j],nDim-j), nrow=NRUNS), 
						as.matrix(dataList[[1]][,((j+1):(nDim))]))
			dataSYS <- rbind(matrix(rep(dataList[[2]][,j],nDim-j), nrow=NRUNS), 
						as.matrix(dataList[[2]][,((j+1):(nDim))]))
			dataCPU <- apply(dataCPU, 2, vecDiff)
			dataSYS <- apply(dataSYS, 2, vecDiff)
			isEqual <- apply(rbind(dataCPU, dataSYS), 2, myDiff)
			Error <- append(Error, isEqual) 
		}
	}
	Error[is.na(Error)] <- 0.0
	myError <- cbind( myError, c(Error, rep(NA, nrow(myError)-length(Error))) )
	###################################################################################
	#Influence of number of cores 
    nDim  <- length(NBPROC)
	if(length(NBPROC) >1) {
    usize <- c(1:nDim)                  
    idx <- seq(1, NCONF, nDim)
    idx2 <- seq(1, NCONF, length(FREQ))
    coresSet <- c(idx2, idx2+1)
    P_CPU <- POWER_RAPL[,coresSet]
    P_SYS <- POWER_YOKO[,coresSet]
    Error <- NULL 

	for(i in 1:length(idx)) {
		dataList <- list(P_CPU[,idx[i]:(idx[i]+nDim-1)],P_SYS[,idx[i]:(idx[i]+nDim-1)])
		for(j in 1:(length(usize)-1)) {
			dataCPU <- rbind(matrix(rep(dataList[[1]][,j],nDim-j), nrow=NRUNS), 
						as.matrix(dataList[[1]][,((j+1):(nDim))]))
			dataSYS <- rbind(matrix(rep(dataList[[2]][,j],nDim-j), nrow=NRUNS), 
						as.matrix(dataList[[2]][,((j+1):(nDim))]))
			dataCPU <- apply(dataCPU, 2, vecDiff)
			dataSYS <- apply(dataSYS, 2, vecDiff)
			isEqual <- apply(rbind(dataCPU, dataSYS), 2, myDiff)
			Error <- append(Error, isEqual) 
		}
	}
	}else{
		Error <- rep(NA, 10)
	}
	Error[is.na(Error)] <- 0.0
	myError <- cbind( myError, c(Error, rep(NA, nrow(myError)-length(Error))) )
	###################################################################################
	if(DUMP2F) {
    	write.table(myError, row.names=F,col.names=F,quote=F, file=fNameP)
	}
}

computePower <- function(list_FRQ)
{
	#Build per metric matrix
	TIME <- NULL
	RAPL <- NULL
	YOKO <- NULL
	TEMP <- NULL
	for(f in 1:length(list_FRQ[[1]][[1]]))
	{
		for(i in 1:length(list_FRQ[[1]]))
		{
			for(j in 1:length(list_FRQ))
			{
				TIME <- append(TIME, list_FRQ[[j]][[i]][[f]][,3])
				RAPL <- append(RAPL, list_FRQ[[j]][[i]][[f]][,2])
				YOKO <- append(YOKO, list_FRQ[[j]][[i]][[f]][,1])
				TEMP <- append(TEMP, list_FRQ[[j]][[i]][[f]][,4])
			}
		}
	}
	POWER_RAPL <- RAPL / (TIME  * cycles)
	POWER_YOKO <- YOKO / (TIME  * cycles)

	NRUNS  <<- length(list_FRQ[[1]][[1]][[1]][,1])
	nbench <<- length(list_FRQ[[1]][[1]])
	NCONF  <<- length(TIME)/NRUNS
	size   <<- NCONF/nbench

	TIME 		<- matrix(TIME, ncol=NCONF,byrow=FALSE)
	RAPL 		<- matrix(RAPL, ncol=NCONF,byrow=FALSE)
	YOKO 	   	<- matrix(YOKO, ncol=NCONF,byrow=FALSE)
	TEMP 		<- matrix(TEMP, ncol=NCONF,byrow=FALSE)
	POWER_RAPL 	<- matrix(POWER_RAPL, ncol=NCONF, byrow=FALSE)
	POWER_YOKO 	<- matrix(POWER_YOKO, ncol=NCONF, byrow=FALSE)

	#Compute the median and the average values for each configuration	
	TIME_DATA <<- matrix(apply(TIME, 2, ESTIMATOR, na.rm=T), ncol=nbench,byrow=FALSE) * cycles
	E_RAPL    <<- matrix(apply(RAPL, 2, ESTIMATOR, na.rm=T), ncol=nbench,byrow=FALSE)
	E_YOKO    <<- matrix(apply(YOKO, 2, ESTIMATOR, na.rm=T), ncol=nbench,byrow=FALSE)
	TEMP_DATA <<- matrix(apply(TEMP, 2, ESTIMATOR, na.rm=T), ncol=nbench,byrow=FALSE)
	P_RAPL    <<- matrix(apply(POWER_RAPL, 2, ESTIMATOR, na.rm=T), ncol=nbench,byrow=FALSE)
	P_YOKO    <<- matrix(apply(POWER_YOKO, 2, ESTIMATOR, na.rm=T), ncol=nbench,byrow=FALSE)

	P_RAPL_MIN <<- matrix(apply(POWER_RAPL, 2, quantile, na.rm=T, probs=0.25), ncol=nbench,byrow=FALSE)
	P_RAPL_MAX <<- matrix(apply(POWER_RAPL, 2, quantile, na.rm=T, probs=0.75), ncol=nbench,byrow=FALSE)
	P_YOKO_MIN <<- matrix(apply(POWER_YOKO, 2, quantile, na.rm=T, probs=0.25), ncol=nbench,byrow=FALSE)
	P_YOKO_MAX <<- matrix(apply(POWER_YOKO, 2, quantile, na.rm=T, probs=0.75), ncol=nbench,byrow=FALSE)
	POWER_RAPL 	<<- POWER_RAPL 	
	POWER_YOKO 	<<- POWER_YOKO 	
}

printPower <- function()
{
	fNameP <- paste(HISPREF, logF, sep="")
	myData <- t(rbind(P_RAPL, P_YOKO))
    write.table(myData, row.names=F,col.names=F,quote=F, file=fNameP)
	stop("END")
}

#Read power data
list_FRQ <- doRead(benchT)

computePower(list_FRQ)

# Compute power increase difference between and SYS and CPU
if(DERIV) {
	DerivCI()
}

statF <- paste(HISPREF, statF, sep="")
print(statF)
cat("#Compute p-value:\n", sep = "", file=statF, append=F)

#Plot number of cores impact histograms
if( !POWTEMP && length(NBPROC) > 1) {
	plotCore()
}

#Plot CPU frequency impact histograms
if(POWTEMP) {
	plotFreq2()
} else {
	plotFreq()
}

