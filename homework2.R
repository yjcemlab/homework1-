JingchiYANAssignment2 <- list(
  firstName = "Jingchi",
  lastName  = "YAN",
  email     = "jyan91@ucsc.edu",
  studentID = 1503639
)
#Question1 
require(RCurl)
diamondsURL <- getURL("https://raw.githubusercontent.com/EconomiCurtis/econ294_2015/master/data/diamonds.CSV")
diamonds <- read.csv(  
  text = diamondsURL
)
rm(diamondsURL)
JingchiYANAssignment2$s1a <- nrow(diamonds)
JingchiYANAssignment2$s1b <- ncol(diamonds)
JingchiYANAssignment2$s1c <- names(diamonds)
JingchiYANAssignment2$s1d<-summary(diamonds$price)

#Question2
library("foreign", lib.loc="/Library/Frameworks/R.framework/Versions/3.2/Resources/library")
df.dta<-read.dta(file="https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_dta.dta")
JingchiYANAssignment2$s2a<-nrow(df.dta)
JingchiYANAssignment2$s2b<-ncol(df.dta)
JingchiYANAssignment2$s2c<-names(df.dta)
JingchiYANAssignment2$s2d<-mean(df.dta$weight)
JingchiYANAssignment2$s2e<-median(df.dta$weight)
hist(df.dta$weight)
table(df.dta$weight)
df.dta$weight2<-ifelse(df.dta$weight<996,df.dta$weight,NA)
JingchiYANAssignment2$s2f<-mean(df.dta$weight2,na.rm=TRUE)
JingchiYANAssignment2$s2g<-median(df.dta$weight2,na.rm=TRUE)
JingchiYANAssignment2$s2h<-summary(df.dta$weight2,df.dta$sex==2)
JingchiYANAssignment2$s2i<-summary(df.dta$weight2,df.dta$sex==1)

#Question3
vec <- c(letters,LETTERS)
JingchiYANAssignment2$s3a<-vec[seq(2,52,2)]
JingchiYANAssignment2$s3b<-paste(vec[c(10,9,14)],collapse="")
arr <- array( c(letters,LETTERS), dim = c(3,3,3))
JingchiYANAssignment2$s3c<-arr[1:3,1,2]
JingchiYANAssignment2$s3d<-arr[2,2,1:3]
JingchiYANAssignment2$s3e<-paste(arr[1,1,2],arr[3,3,1],arr[2,2,2],sep="")

#Question4
df.dta2<- read.dta("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/org_example.dta")
sort(unique(df.dta2$year))
sort(unique(df.dta2$month))
sort(unique(df.dta2$educ))
JingchiYANAssignment2$s4<-aggregate(df.dta2$rw,list(Year=df.dta2$year,Month=df.dta2$month,Education=df.dta2$educ),mean,na.rm=TRUE)
save(JingchiYANAssignment2,file = "JingchiYANAssignment2.RData")





