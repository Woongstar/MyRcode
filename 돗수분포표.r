## Ch03.기술통계분석(범주형)
## 데이터 가져오기 

freq <- read.csv("0301.frequency.csv", 
                 header=TRUE, 
                 na.strings = ".")
str(freq)

freq$grade <- factor(freq$grade, 
                     levels=c(1:5),
                     labels=c("F","D","C","B","A"))
str(freq)

###################################
# 돗수분포표 만들기(일변량)

# attach(시작) ~ detach(끝) : 데이터 프레임 활성화 
attach(freq)

# table을 이용한 빈도수 확인
# grade.n <- table(freq$grade) # attach 없을때
grade.n <- table(grade)
grade.n

#상대빈도(%)
grade.p <- prop.table(grade.n)
grade.p

#빈도 + 상대빈도
grade.t <- cbind(grade.n, grade.p)
grade.t

#빈도 + 상대빈도 + 합계
#margin=1 : 열 합계
#margin=2 : 행 합계
#margin=NULL : 전체 합계
grade.a <- addmargins(grade.t, margin=1)
grade.a

detach(freq)
