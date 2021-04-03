# factor (질적(범주형)변수 처리)
gradetxt <- read.table("0201.grade.txt",
                       header=FALSE, 
                       sep = "\t",  
                       stringsAsFactor = FALSE, 
                       na.strings = ""
)
str(gradetxt)

plot(x = gradetxt$V2, y = gradetxt$V4)


# 문자형 자료 factor

gradetxt$V2 <- factor(gradetxt$V2 , 
                      levels=c("Male","Female")
                      )
str(gradetxt$V2)
table(gradetxt$V2)
plot(x = gradetxt$V2, y = gradetxt$V4)


# 숫자형 변수 Factor

gradetxt$V3 <- factor(gradetxt$V3 , 
                      levels=c(1,2)
                      )
str(gradetxt$V3)
table(gradetxt$V3)

gradetxt$V3 <- factor(gradetxt$V3 , 
                      levels=c(1,2),
                      labels=c("남자","여자")
                      )
str(gradetxt$V3)
table(gradetxt$V3)

str(gradetxt)


