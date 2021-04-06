#데이터 가져오기(read.table)
gradetxt <- read.table("0201.grade.txt",
                       header=FALSE, 
                       sep = "\t",  
                       stringsAsFactor = FALSE, 
                       na.strings = ""
)
str(gradetxt)

#데이터 가져오기(read.csv)
gradecsv <- read.csv("0202.grade.csv", 
                     header=TRUE, 
                     na.strings = "."
)
str(gradecsv)

#데이터 가져오기(read_excel)
# install.packages('readxl')
library(readxl)
gradexls<- read_excel("0203.grade.xlsx", 
                      sheet = "grade",
                      col_names=TRUE,
                      na="NA"
)
str(gradexls)

# 데이터 구조 보기
str(gradexls)
dim(gradexls)
summary(gradexls)
summary(gradexls$msex)

#Exel 또는 SPSS에서 탭 분리 텍스트 파일 형식을 불러올 때
lectureData <- read.delim("Lecturer Data.dat", header =TRUE)
lectureData <- read.delim("Lecturer Data.txt", header =TRUE)

#SPSS.sav 파일 가져오기
#install.packages('foreign')
lectureData <- read.spss("Lecturer Data.sav",use.values.labels=TRUE,
                         to.data.frame=TRUE)
