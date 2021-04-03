# 스칼라
c(1)
C(1)

# 벡터(c)-숫자형
num <- c(1,2,3,4)
numT <- t(num) #열벡터를 행벡터로 변환
View(num) #데이터 보기
View(numT) 
num %*% numT #벡터곱셈(4*1 X 1*4) = 4*4
numT %*% num #벡터곱셈(1*4 X 4*1) = 1*1

# 문자형, 논리형
c("M","F","F","M")
c(TRUE, FALSE, FALSE, TRUE)


m <- 1:12
m

#행렬 (Matrix 4x3) 
mtx <- matrix(m, nrow=4)
mtx

#배열 (Arry 2x3x2) 
arr <- array(m, c(2,3,2))
arr


# 데이터 프레임 (Data Frame) 
var1 <- c(1,2,3,4)
var2 <- factor(c("M","F","F","M"))
df = data.frame(id = var1, sex = var2)
str(df)

# 리스트 
v1 <- c(1,2,3,4)
v2 <- matrix(1:12, nrow=4)
v3 <- array(1:12, c(2,3,2))
v4 <- data.frame(id = c(1,2,3,4), sex = c("M","F","F","M"))
lt <- list (v1, v2, v3, v4)
str(lt)




