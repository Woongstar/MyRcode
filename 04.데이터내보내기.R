## Ch02.R 데이터 처리 ##


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









