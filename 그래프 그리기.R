## Ch05.그래프그리기

##09.고급 그래프 그리기
# install.packages("ggplot2")

library(ggplot2)

## 막대그래프
ggplot(wgt, aes(x=sex)) + 
  geom_bar()

## 그룹간 상자도표(범주+수치형 자료)

ggplot(wgt, aes(x=sex, y=weight)) +
  geom_boxplot(position="dodge") +
  ggtitle("성별 체중 상자도표")

#산포도
scatter <- ggplot(examData, aes(Anxiety,Exam, color=Gender))
scatter + geom_point() + labs(x="시험 불안",y="시험 성적적")+ geom_smooth(method="lm", color="red",fill="Blue",alpha=0.15)
scatter + geom_point() + labs(x="시험 불안",y="시험 성적적")
#alpha 는 투명도, fill 은 se 라인 색깔, se=F SE구간 안보이기
#히스토그램
festivalHistogram <- ggplot(festivalData, aes(day1))
#범례 지우기
+ theme(legend.position = "none")
festivalHistogram + geom_histogram(binwidth = 0.4) + labs(x = "Hygiene(day1 of festival)", y="Frequency")
# 상자수염그림
festivalBoxplot <- ggplot(festivalData, aes(gender,day1))
festivalBoxplot + geom_boxplot()
#범례
legend("topright", levels(iris$Species), pch = 1:3, bg="white")