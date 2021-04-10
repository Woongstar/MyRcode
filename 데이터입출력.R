#데이터 가져오기(read.table)
gradetxt <- read.table("0201.grade.txt",
                       header=FALSE, 
                       sep = "\t",  
                       stringsAsFactor = FALSE, 
                       na.strings = ""
)
str(gradetxt)

#데이터 가져오기(read.csv)
gradecsv <- read.csv(file.choose(), 
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


# 데이터 내보내기(write.txt)

str(gradetxt)

write.table(gradetxt,
            file = "gradetxt.txt",
            row.names=FALSE,
            na="",
            col.names=FALSE,
            sep=","
)

gradetxt1 <- read.table("./gradetxt.txt",
                        header=FALSE, 
                        sep = ",",  
                        stringsAsFactor = FALSE, 
                        na.strings = ""
)
str(gradetxt)
str(gradetxt1)


# 데이터 내보내기(write.csv)

str(gradecsv)
gradecsv$csex <- factor(gradecsv$csex , 
                        levels=c(1,2),
                        labels=c("남자","여자")
)
write.csv(gradecsv,
          file = "gradecsv.csv",
          row.names=FALSE,
          na=""
)

# 데이터 내보내기(writexl)

str(gradexls)

install.packages("writexl")
library(writexl)

gradexls$csex <- factor(gradexls$csex , 
                        levels=c(1,2),
                        labels=c("남자","여자")
)
str(gradexls)

write_xlsx(gradexls, 
           path = "gradexls.xlsx"
)


# R 데이터로 저장
save(gradetxt, file="grade.RData")
load(file="grade.RData")










