v1 <- c("eat", "prey", "love")
m1 <- matrix(letters[21:26], ncol=3)
df <- data.frame(matrix(1:6,nrow=2, ncol=3))
ar1 <- array(letters, dim=c(2,3,2))
list1 <- list(w=v1, x=m1, y=df, z=ar1)

# dataframe의 경우, column의 갯수 반환. column 단위로 단위된다는 것을 알 수 있음.
length(v1) # 3
length(m1) # 6
length(df) # 3
length(ar1) # 12
length(list1) # 4

# dim 함수는 선형구조를 가진 vector와 list에는 사용할 수 없다.
dim(v1) # NULL
dim(m1) # 2 3
dim(df) # 2 3
dim(ar1) # 2 3 2
dim(list1) # NULL