kids = c("Tom","Jerry")
ages = c(12,10)

# data.frame 생성
d <- data.frame(list(kids=c("Tom","Jerry"),ages=c(12,10)))

# 빈 data.frame 생성
sample <- data.frame(matrix(ncol=3, nrow=5))
#   X1 X2 X3
# 1 NA NA NA
# 2 NA NA NA
# 3 NA NA NA
# 4 NA NA NA
# 5 NA NA NA

sample <- as.data.frame(matrix(ncol=3))
#   V1 V2 V3
# 1 NA NA NA
colnames(sample) <- c("col1", "col2", "col3")
#   col1 col2 col3
# 1   NA   NA   NA

##
setwd("D:/workspace/R")
score <- read.csv("score.csv", header=TRUE)
head(score)
str(score)


score[2:5,]
score[2:5,1]
# 5 1 2 10
score[2:5,1, drop = FALSE] # drop = FALSE, 일렬로 출력.
#  5 
#  1
#  2
# 10

# data frame 의 index 접근 방법
# 1. matrix와 동일한 방법 # score[2:3,1], score[2:3,"test1"]
score[2:3,1:2]
score[2:3,"test1"]
# 2. column 명 이용 # score&test1[2:3]
score$test1[2:3]
# 3. TRUE, FALSE 이용한 방법
index_v <- rep(FALSE, 11)
index_v[2:4] <- TRUE
index_v
# FALSE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE

# index_v에서 TRUE인 행만 출력 2,3,4 행
score[index_v, 1] # 5 1 2

