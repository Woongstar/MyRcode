#데이터 전처리


# 문자형 자료 factor

gradetxt$V2 <- factor(gradetxt$V2 , 
                      levels=c("Male","Female")
)
# 숫자형 변수 Factor
gradetxt$V3 <- factor(gradetxt$V3 , 
                      levels=c(1,2),
                      labels=c("남자","여자")
)

#데이터 수동 편집
festivalData <- edit(festivalData)

#데이터 순서 정렬
festivalData<- festivalData[order(festivalData$day1),]