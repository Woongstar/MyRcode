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