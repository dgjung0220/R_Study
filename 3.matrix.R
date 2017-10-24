## Matrix

y <- matrix(c(1,2,3,4),nrow=2,ncol=2)
#       [,1] [,2]
# [1,]    1    3
# [2,]    2    4

y <- matrix(c(1,2,3,4),nrow=2, byrow=T)
# if byrow T, 행부터 채워넣음
#       [,1] [,2]
# [1,]    1    2
# [2,]    3    4

y <- matrix(c(1,2,3,4),nrow=2, byrow=F)
# default, 열우선
#       [,1] [,2]
# [1,]    1    3
# [2,]    2    4

y %*% y # 행렬간 곱
3*y     # 모든 원소에 *3
y+y     # 행렬간 덧셈
y*y     # 각 원소의 제곱

# 전치 행렬 이용
z <- matrix(c(1,1,1,2,1,0,3,1,0,4,2,0), nrow = 4, byrow = T)
z %*% t(z)

z[,2:3] # 행은 모두 출력하고, 2,3번 열만 출력.
z[-2,] # 2행 제외하고 모두 출력.

# dimension
# z행렬이 몇행 몇열인지 출력.
dim(z) # 4 3 
dim(z)[1] ## z 행렬의 행 출력
dim(z)[2] ##

# apply
z <- matrix(c(1,2,3,4,5,6), nrow=3, byrow=T)
apply(z,1,mean)                               # 행평균 1.5 3.5 5.5
apply(z,2,mean)                               # 열평균 3 4
apply(z,1,sum)                                # 행의 합 3 7 11
apply(z,2,sum)                                # 열의 합 9 12
## 기타.. tapply, sapply, lapply