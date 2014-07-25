MULTIPLE <- TRUE 
Freq <- list(c("1.6 GHz", "3.4 GHz"), c("1.6 GHz", "3.1 GHz"))[[ARCH]]

statProt <- function(data, logF, confTest)
{
	cat(confTest, ":\n", sep = "", file=logF, append=T)
	#Compute  IQR
	qts <- quantile(data, probs=c(0.25,0.75))
	cat("  Q1:",qts[1], " Q3:", qts[2], "\n", sep = "", file=logF, append=T)
	#Test the sign of the vector
	wlxt <- wilcox.test(data, conf.level=lev, alte="l")
 	cat("  p-value = ", wlxt$p.value, "\n", sep = "", file=logF, append=T)
# 	cat("  Max accepted CL = ", round((1-wlxt$p.value)*100, 2), "\n", sep = "", file=logF, append=T)
 	cat("  Accepting prob = ", round((1-wlxt$p.value)*100, 2), "\n", sep = "", file=logF, append=T)
	a <- sum(data < 0, na.rm=T)
	b <- length(data)
	cint <- a/b
	cat("  The proportion of negative values: ", round(cint*100,2), "\n", 			
						sep = "", file=logF, append=T)
	return (1-wlxt$p.value)
}

plotFreq <- function(TEMP_DATA=NULL)
{
	if(!IDLEOFF){
		lab <- ""
	}else {
		lab <- paste("Idleness: state", c(0:3), sep="")[as.numeric(Args[3])+1]
	}
if(! PERCONF) {
    pdf(file=paste(PDFPREF, hisF, sep=""),width=12,height=9)
}else{
    pdf(file=paste(PDFPREF, 
                   paste(substr(hisF, 1, nchar(hisF)-4), "_%02d",".pdf", sep=""), 
		           sep=""),  onefile=FALSE,
				   width=6,height=7)
}
	cat("#Frequency impact:\n", sep = "", file=statF, append=T)
    pdiff <- read.csv(paste(HISPREF, csvF, sep=""), header=F, sep=" ")
	pdiff <- matrix(pdiff[1:(sum(!is.na(pdiff[,2]))),2], ncol=length(NBPROC), byrow=T)
	for(i in 1:length(NBPROC)) {
			vec <- pdiff[,i] 
			myp <- statProt(vec, statF, i)
			mp  <- hist(vec, labels=T, breaks=20, 
                    ylab="Number of occurrences",
					xlab=bquote("Values in "*Delta*italic(P)),
			     	main=paste("Min vs Max CPU Freq\n#Cores:",NBPROC[i], 
								" ", lab, sep=""))
			count <- sum(vec <0, na.rm=T)
			total <- sum(!is.na(vec))
       	 	leg <- c(
				as.expression(bquote(1-italic(p)-value == .(round(myp*100,1))*symbol("\045"))),
				as.expression(bquote(rho == .(round(count/total*100,1))*symbol("\045"))),
				as.expression(bquote(Median == .(round(median(vec),3))))
                    )
			legend("topright", legend=leg, bty="n")
	}
	dev.off()
}

plotCore <- function()
{
	if(!IDLEOFF){
		lab <- ""
	}else {
		lab <- paste("Idleness: state", c(0:3), sep="")[as.numeric(Args[3])+1]
	}
if(! PERCONF) {
    pdf(file=paste(PDFPREF, hisF2, sep=""), width=12,height=9)
	par(mfrow=c(1,2))
}else{
    pdf(file=paste(PDFPREF, 
                   paste(substr(hisF2, 1, nchar(hisF2)-4), "_%02d",".pdf", sep=""), 
		           sep=""),  onefile=FALSE,
				   width=6,height=7)
}
	cat("#Cores Impact\n", sep = " ", file=statF, append=T)
	nDim <- length(NBPROC)*(length(NBPROC)-1)/2
	CORESLAB <- NULL
	for (i in 1:(length(NBPROC)-1)) {
		CORESLAB <- append(CORESLAB, paste(NBPROC[i], "->", NBPROC[(i+1):length(NBPROC)]))
	}
    
	pdiff <- read.csv(paste(HISPREF, csvF, sep=""), header=F, sep=" ")
	nbench <- ncol(pdiff)/nDim/2
	pdiff <- matrix(pdiff[1:(sum(!is.na(pdiff[,3]))),3], ncol=2, byrow=F)
	for(i in 1:nDim) {
		for (j in 1:2) {
			mydata <- matrix(pdiff[,j], ncol=nDim, byrow=T)
				vec <- mydata[,i] 
				myp <- statProt(vec, statF, paste(CORESLAB[i], Freq[j],sep=" "))
				mp <- hist(vec, labels=T, breaks=20, 
                    ylab="Number of occurrences",
					xlab=bquote("Values in "*Delta*italic(P)),
					main=paste("#Cores:", CORESLAB[i], "\nCPU Freq:",Freq[j], " ", lab, sep=""))
				count <- sum(vec <0, na.rm=T)
				total <- sum(!is.na(vec))
                leg <- c(
					as.expression(bquote(1-italic(p)-value == .(round(myp*100,1))*symbol("\045"))),
					as.expression(bquote(rho == .(round(count/total*100,1))*symbol("\045"))),
					as.expression(bquote(Median == .(round(median(vec),3))))
                        )
				legend("topright", legend=leg, bty="n")
		}
	}
	dev.off()
}

#Cold vs Warm CPU
plotFreq2 <- function(TEMP_DATA=NULL)
{
if(! PERCONF) {
    pdf(file=paste(PDFPREF, hisF, sep=""),width=12,height=9)
	par(mfrow=c(1,2))
}else{
    pdf(file=paste(PDFPREF, 
                   paste(substr(hisF, 1, nchar(hisF)-4), "_%02d",".pdf", sep=""), 
		           sep=""),  onefile=FALSE,
				   width=6,height=7)
}
	cat("#Frequency impact:\n", sep = "", file=statF, append=T)
    pdiff <- read.csv(paste(HISPREF, csvF, sep=""), header=F, sep=" ")
	pdiff <- matrix(pdiff[1:(sum(!is.na(pdiff[,2]))),2], ncol=2, byrow=F)
	for(i in 1:2) {
			vec <- pdiff[,i]
				myp <- statProt(vec, statF, i)
				mp <- hist(vec, labels=T, breaks=20, 
                    ylab="Number of occurrences",
					xlab=bquote("Values in "*Delta*italic(P)),
					main=paste("Cold vs Warm CPU\n#Cores:",NBPROC[1], 
							   "; CPU Freq:",Freq[i], sep=""))
				count <- sum(vec <0, na.rm=T)
				total <- sum(!is.na(vec))
                leg <- c(
					as.expression(bquote(1-italic(p)-value == .(round(myp*100,1))*symbol("\045"))),
					as.expression(bquote(rho == .(round(count/total*100,1))*symbol("\045"))),
					as.expression(bquote(Median == .(round(median(vec),3))))
                        )
				legend("topright", legend=leg, bty="n")
	}
	dev.off()
}
