## this shows you how to write roxygen comments

#' AnnoViewer
#'
#' show Annoroad color palette
#'
#' you need to provide a color vector such as the result of AnnoColor()
#'
#' Default is AnnoViewer(AnnoColor())
#' @param \code{colorlist} a color vector such as the result of AnnoColor()
#' @author Ren Xue
#' @export
#' @author xueren@genome.cn
#' @examples AnnoColor()


AnnoViewer <- function(colorlist= AnnoColor()){
	 nr <- length(colorlist)
	 if (nr<=50){
		ylim <- c(0,10)
		xlim <- c(0,10)
	    plot(1,1,xlim=xlim,ylim=ylim,type="n", axes=FALSE, bty="n",xlab="",ylab="")
		for(i in 1:nr){
			n1=floor(i/10)
			n2=i%%10
			if (n2!=0){
				rect(n2-1, 9-n1*1, n2,10-n1*1,col=colorlist[i],border="black")
			}else{
				rect(9, 10-n1*1, 10,11-n1*1, col=colorlist[i],border="black")
			}
		}
	}else{
		ylim <- c(0,16)
		xlim <- c(0,16)
		plot(1,1,xlim=xlim,ylim=ylim,type="n", axes=FALSE, bty="n",xlab="",ylab="")
		for(i in 1:nr){
			n1=floor(i/16)
			n2=i%%16
			if (n2!=0){
				rect(n2-1, 15-n1*1, n2,16-n1*1,col=colorlist[i],border="black")
			}else{
				rect(15, 16-n1*1, 16,17-n1*1, col=colorlist[i],border="black")
			}
		}		
	}
}

