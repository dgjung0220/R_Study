# tapply
# 그룹별 통계량을 낼 때 사용할 함수.

ages <- c(25,26,55,37,21,42)
affils <- c("S", "G", "G", "S", "V", "G")
tapply(ages, affils, mean)
#  G  S  V 
# 41 31 21 

d <- data.frame(
  gender = c("M","M","F","F","M","F"),
  age = c(23,26,25,37,55,22),
  income = c(150, 300, 250, 350, 800, 120));
#   gender age income
# 1      M  23    150
# 2      M  26    300
# 3      F  25    250
# 4      F  37    350
# 5      M  55    800
# 6      F  22    120

d$over25 <- ifelse(d$age > 25, 1, 0)
# [1] 0 1 0 1 1 0

d
# gender age income over25
# 1      M  23    150   0
# 2      M  26    300   1
# 3      F  25    250   0
# 4      F  37    350   1
# 5      M  55    800   1
# 6      F  22    120   0

index <- list(d$gender, d$over25)
# [[1]]
# [1] M M F F M F
# Levels: F M

# [[2]]
# [1] 0 1 0 1 1 0
tapply(d$income, index, FUN=mean)
#     0   1
# F 185 350
# M 150 550
