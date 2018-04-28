## AnnoColor
A R package of Color for work

### Functions

- #### AnnoColor()

##### Description

Provide Annoroad color palette for drawing pictures.

##### Usage

AnnoColor(type = "Nat50", num = 8)

##### Arguments

**num:**	how much number of colors do you want.You can provide a number or a vector. A number means you can get the first color to the num color. A vector means you only get the colors in the vector.It has no use for Heatmap Color. Default is 8

**type:**	
which palette do you want: Nat50 LNat50 RWY RWB RYB.Default is "Nat50"

###### Details:
There are 5 palettes:2 for normal and 3 for heatmap

-  Nat50 : from nature default color
-  LNat50 : Nat50 with 0.4 transparency
-  RWY : Heatmap color ("red","white","yellow")(256)
-  RWB : Heatmap color ("red","white","blue")(256)
-  RYB : Heatmap color ("red","yellow","blue")(256)

##### Value

a color codes vector

>  \> a=AnnoColor()

>   \>a

>   [1] "#4DBBD5FF" "#E64B35FF" "#00A087FF" "#3C5488FF" "#F39B7FFF" "#8491B4FF" "#91D1C2FF"  "#DC0000FF

##### Examples

```
AnnoColor()
```

```
AnnoColor(type="Nat50",num=7)
```

```
AnnoColor("LNat50",c(2:6))

```

```
AnnoColor(num=c(2:4,8))

```

- #### AnnoColor()

##### Description

display or show colors provided

##### Usage

AnnoViewer(a)

##### Arguments

a is a vector of color codes. Default is the result of AnnoColor()

>  \> a=AnnoColor()

>   \>a

>   [1] "#4DBBD5FF" "#E64B35FF" "#00A087FF" "#3C5488FF" "#F39B7FFF" "#8491B4FF" "#91D1C2FF"  "#DC0000FF

> \>AnnoViewer(a)


### Author(s)

Ren Xue <xueren@genome.cn>

### Version

AnnoColor_0.1.1
