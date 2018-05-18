## this shows you how to write roxygen comments

#' AnnoColor
#'
#' Provide Annoroad color palette for drawing pictures.
#'
#' 5 palettes:2 for normal and 3 for heatmap
#' 
#' Nat50 : from nature default color 
#'
#' LNat50 :  Nat50 with 0.4 transparency
#'
#' RWY :  Heatmap color ("red","white","yellow")(256)
#' 
#' RWB :  Heatmap color ("red","white","blue")(256) 
#'
#' RYB :  Heatmap color ("red","yellow","blue")(256) 
#' 
#' @param \code{num} how much number of colors do you want.You can provide a number or a vector. A number means you can get the first color to the num color. A vector means you only get the colors in the vector.It has no use for Heatmap Color.Default is 8.
#' @param \code{type} which palette do you want: "Nat50" "LNat50" "RWY" "RWB" "RYB",default is "Nat50".
#' @return color code vector
#' @author Ren Xue
#' @export
#' @author xueren@genome.cn
#' @examples AnnoColor()

 AnnoColor <- function(type="Nat50",num=8){
	#Nat50_pal=c("#4DBBD5FF","#E64B35FF","#00A087FF","#3C5488FF","#F39B7FFF","#8491B4FF","#91D1C2FF","#DC0000FF","#7E6148FF","#B09C85FF","#3B4992FF","#EE0000FF","#008B45FF","#631879FF","#008280FF","#BB0021FF","#5F559BFF","#A20056FF","#808180FF","#1B1919FF","#5050FFFF","#CE3D32FF","#749B58FF","#F0E685FF","#466983FF","#BA6338FF","#5DB1DDFF","#802268FF","#6BD76BFF","#D595A7FF","#924822FF","#837B8DFF","#C75127FF","#D58F5CFF","#7A65A5FF","#E4AF69FF","#3B1B53FF","#CDDEB7FF","#612A79FF","#AE1F63FF","#E7C76FFF","#5A655EFF","#CC9900FF","#99CC00FF","#A9A9A9FF","#CC9900FF","#99CC00FF","#33CC00FF","#00CC33FF","#00CC99FF","#0099CCFF","#0A47FFFF","#4775FFFF","#FFC20AFF","#FFD147FF","#990033FF","#991A00FF","#996600FF","#809900FF","#339900FF","#00991AFF","#009966FF","#008099FF","#003399FF","#1A0099FF","#660099FF","#990080FF","#D60047FF","#FF1463FF","#00D68FFF","#14FFB1FF")
	Nat50_pal=c("#3B4992FF","#E64B35FF","#00A087FF","#CC9900FF","#F39B7FFF","#8491B4FF","#91D1C2FF","#DC0000FF","#7E6148FF","#631879FF","#3C5488FF","#EE0000FF","#008B45FF","#B09C85FF","#008280FF","#BB0021FF","#5F559BFF","#A20056FF","#808180FF","#1B1919FF","#5050FFFF","#CE3D32FF","#749B58FF","#F0E685FF","#466983FF","#BA6338FF","#5DB1DDFF","#802268FF","#6BD76BFF","#D595A7FF","#924822FF","#837B8DFF","#C75127FF","#D58F5CFF","#7A65A5FF","#E4AF69FF","#3B1B53FF","#CDDEB7FF","#612A79FF","#AE1F63FF","#E7C76FFF","#5A655EFF","#4DBBD5FF","#99CC00FF","#A9A9A9FF","#CC9900FF","#99CC00FF","#33CC00FF","#00CC33FF","#00CC99FF","#0099CCFF","#0A47FFFF","#4775FFFF","#FFC20AFF","#FFD147FF","#990033FF","#991A00FF","#996600FF","#809900FF","#339900FF","#00991AFF","#009966FF","#008099FF","#003399FF","#1A0099FF","#660099FF","#990080FF","#D60047FF","#FF1463FF","#00D68FFF","#14FFB1FF")
	colorpal=""
	if (type=="Nat50"){
		colorpal=Nat50_pal
		if (length(num) >1){
			colorpal=colorpal[num]
		}else{
			num=as.numeric(num)
			colorpal=colorpal[1:num]
		}
	}
	else if (type=="LNat50"){
		#colorpal=c("#4DBBD599","#E64B3599","#00A08799","#3C548899","#F39B7F99","#8491B499","#91D1C299","#DC000099","#7E614899","#B09C8599","#3B499299","#EE000099","#008B4599","#63187999","#00828099","#BB002199","#5F559B99","#A2005699","#80818099","#1B191999","#5050FF99","#CE3D3299","#749B5899","#F0E68599","#46698399","#BA633899","#5DB1DD99","#80226899","#6BD76B99","#D595A799","#92482299","#837B8D99","#C7512799","#D58F5C99","#7A65A599","#E4AF6999","#3B1B5399","#CDDEB799","#612A7999","#AE1F6399","#E7C76F99","#5A655E99","#CC990099","#99CC0099","#A9A9A999","#CC990099","#99CC0099","#33CC0099","#00CC3399","#00CC9999","#0099CC99","#0A47FF99","#4775FF99","#FFC20A99","#FFD14799","#99003399","#991A0099","#99660099","#80990099","#33990099","#00991A99","#00996699","#00809999","#00339999","#1A009999","#66009999","#99008099","#D6004799","#FF146399","#00D68F99","#14FFB199")
		colorpal=c("#3B499299","#E64B3599","#00A08799","#CC990099","#F39B799F","#8491B499","#91D1C299","#DC000099","#7E614899","#63187999","#3C548899","#EE000099","#008B4599","#B09C8599","#00828099","#BB002199","#5F559B99","#A2005699","#80818099","#1B191999","#50509999","#CE3D3299","#749B5899","#F0E68599","#46698399","#BA633899","#5DB1DD99","#80226899","#6BD76B99","#D595A799","#92482299","#837B8D99","#C7512799","#D58F5C99","#7A65A599","#E4AF6999","#3B1B5399","#CDDEB799","#612A7999","#AE1F6399","#E7C7699F","#5A655E99","#4DBBD599","#99CC0099","#A9A9A999","#CC990099","#99CC0099","#33CC0099","#00CC3399","#00CC9999","#0099CC99","#0A479999","#47759999","#99C20A99","#99D14799","#99003399","#991A0099","#99660099","#80990099","#33990099","#00991A99","#00996699","#00809999","#00339999","#1A009999","#66009999","#99008099","#D6004799","#99146399","#00D6899F","#1499B199")
		if (length(num) >1){
			colorpal=colorpal[num]
		}else{
			num=as.numeric(num)
			colorpal=colorpal[1:num]
		}
	}
	else if (type=="RWY"){
		colorpal=colorRampPalette(c("red", "white", "yellow"))(256)
	}
	else if (type=="RWB"){
		colorpal=colorRampPalette(c("red", "white", "blue"))(256)
	}
	else if (type=="RYB"){
		colorpal=colorRampPalette(c("red", "yellow", "blue"))(256)
	}
	else{
		warning("type of the color is wrong,we choose default Nat50 for you")
		colorpal=Nat50_pal
		colorpal=colorpal[1:num]
	}
	return(colorpal)
}

