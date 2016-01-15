firstName<-"Jingchi"
lastName<-"YAN"
print(paste(firstName,lastName))
studentID<-"1503639"
print(studentID)

1.
library("foreign", lib.loc="/Library/Frameworks/R.framework/Versions/3.2/Resources/library")
df.dta<-read.dta(file="https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_dta.dta")
df.csv<-read.csv(file="https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_CSV.csv")
df.td<-read.delim(file="https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_TSV.txt")
load(file="/Users/jingchiyan/Downloads/NHIS_2007_RData-3.RData")
line0<-("The name assigned to this R Data file is NHIS_2007")
print(paste(line0))
2.
line1<-"df.dta is 188KB, df.csv is 139KB, df.td is 139KB, NHIS_2007_RData.Rdata is 45.3KB
The smallest one is R data file. The different fucntions casue the variability
of the datasets"
print(paste(line1))
3.
typeof(NHIS_2007_RData)
class(NHIS_2007_RData)
length(NHIS_2007_RData)
dim(NHIS_2007_RData)
nrow(NHIS_2007_RData)
ncol(NHIS_2007_RData)
summary(NHIS_2007_RData)
line2<-"The typeof of this data strucutre is list. The class of this data strucutre
is data.frame"
print(paste(line2))
4
df.dta<-read.dta("http://github.com/EconomiCurtis/econ294_2015/raw/master/data/org_example.dta")
str(df.dta)
summary(df.dta$rw)
line3<-"There are 30 variables and 1119754 observations in the dataset"
line4<-"The min is 1.8, the mean is 19.8, the median is 15.9, the max is 354.8, the first
quartile value is 10.7, the third quartile value is 24.4"
print(paste(line3,line4))

5
v<-c(a=1,b=2,c=3,d=4,e=5,f=6,g=7,h=4,i=NULL,j=NA)
length(v)
line5<-" The reason for that is there is a NA in this vector"
print(paste(line5))
print(v)
v1<-c(a=1,b=2,c=3,d=4,e=5,f=6,g=7,h=4,i=NULL)
mean(v1)

6
x=matrix(+c(1,4,7,2,5,8,3,6,9),nrow=3,ncol=3)
View(x)
t(x)
eigen(x)
y=matrix(+c(1,3,2,2,2,3,3,1,0),nrow=3,ncol=3)
View(y)

Y1=solve(y)
y%*%y1
line6<-"This matrix calls identity matrix"
print(paste(line6))
7
carat<-c(5,2,0.5,1.5,5,NA,3)
cut<-c("fair","good","very good","good","fair","Ideal","fair")
clarity<-c("SI1","I1","VI1","VS1","IF","VVS2","NA")
price<-c(850,450,450,0,750,980,420)
diamonds<-data.frame(carat,cut,clarity,price)
mean(price)
diamonds1<-subset(diamonds,(cut=="fair"))
mean(diamonds1$price)
diamonds2<-subset(diamonds,(cut=="good"|cut=="very good"|cut=="Ideal"))
mean(diamonds2$price)
diamonds3<-subset(diamonds,(carat>2))
diamonds4<-subset(diamonds3,(cut=="very good"|cut=="Ideal"))
mean(diamonds4$price)
line7<-"The mean price is 557.1, the mean price of cut fair is 673.3,the mean price of
cut good, very good  and ideal is 470 and the median price in the last case will be NA"
print(paste(line7)) 

