# split _ tapply
# split - 함수 내부적으로 그룹을 나누는 함수.

d <- data.frame(
  gender = c("M", "M", "F", "F", "M", "F"),
  age = c(23, 26, 25, 37, 55, 22),
  income = c(150, 300, 250, 350, 800, 120)
)

d$over25 <- ifelse(d$age > 25, 1, 0)

# split
split(d$income, d$gender)
# $F
# [1] 250 350 120

# $M
# [1] 150 300 800

split(d$income, list(d$gender, d$over25))
# $F.0
# [1] 250 120

# $M.0
# [1] 150

# $F.1
# [1] 350

# $M.1
# [1] 300 800

