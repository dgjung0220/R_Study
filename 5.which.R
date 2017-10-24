setwd("D:/workspace/R")
score <- read.csv("score.csv", header = TRUE)
#    test1 test2 final
# 1     3     2     1
# 2     5     4     5
# 3     1     2     5
# 4     2     9    10
# 5    10    10    10
# 6     9     8     9


head(score)
str(score)

index_v <- rep(FALSE, 11)
index_v[2:5] <- TRUE
# FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE

index_which <- which(index_v)
# 2 3 4 5

score[index_which, 1]
# 5 1 2 10

# 3 보다 작은 값들의 위치
index_v <- score$test1<3
score[index_v, 1]
# 1 2 1

index_which <- which(score$test1 < 3)
# 3 4 9 
score[index_which,1]
# 1 2 1

index <- rep(FALSE, 11 * 3)
index[13:14] <- TRUE
index_matrix <- matrix(index, ncol=3)
#       [,1]  [,2]  [,3]
# [1,] FALSE FALSE FALSE
# [2,] FALSE  TRUE FALSE
# [3,] FALSE  TRUE FALSE
# [4,] FALSE FALSE FALSE
# [5,] FALSE FALSE FALSE
# [6,] FALSE FALSE FALSE
# [7,] FALSE FALSE FALSE
# [8,] FALSE FALSE FALSE
# [9,] FALSE FALSE FALSE
# [10,] FALSE FALSE FALSE
# [11,] FALSE FALSE FALSE
score[index_matrix]
# 4 2
which(index_matrix)
# 13 14
