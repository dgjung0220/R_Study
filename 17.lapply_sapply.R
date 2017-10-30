# lapply, sapply
# vector or list 등의 선형 구조를 인풋으로 받음.

z <- c("eat", "play", "love")

# nchar : 문자열 길이 함수
# 리스트로 결과를 반환
lapply(z, nchar)
# [[1]]
# [1] 3

# [[2]]
# [1] 4

# [[3]]
# [1] 4

# sapply (sim apply)
sapply(z,nchar)
# eat play love 
# 3    4    4 

x <- list(a = 1:10, beta = exp(-3:3), logic= c(TRUE,FALSE, FALSE, TRUE))
# $a
# [1]  1  2  3  4  5  6  7  8  9 10

# $beta
# [1]  0.04978707  0.13533528  0.36787944  1.00000000  2.71828183  7.38905610 20.08553692

# $logic
# [1]  TRUE FALSE FALSE  TRUE

# quantile (통계일사분위수, 변위치)
lapply(x, quantile)
# $a
# 0%   25%   50%   75%  100% 
# 1.00  3.25  5.50  7.75 10.00 

# $beta
# 0%         25%         50%         75%        100% 
# 0.04978707  0.25160736  1.00000000  5.05366896 20.08553692 

# $logic
# 0%  25%  50%  75% 100% 
# 0.0  0.0  0.5  1.0  1.0 

sapply(x, quantile)
# a        beta logic
# 0%    1.00  0.04978707   0.0
# 25%   3.25  0.25160736   0.0
# 50%   5.50  1.00000000   0.5
# 75%   7.75  5.05366896   1.0
# 100% 10.00 20.08553692   1.0

input <- list(letters[1:5], letters[3:12], letters[c(2,5,4,7,15,4)])
# [[1]]
# [1] "a" "b" "c" "d" "e"

# [[2]]
# [1] "c" "d" "e" "f" "g" "h" "i" "j" "k" "l"

# [[3]]
# [1] "b" "e" "d" "g" "o" "d"

findD <- function(x) {
  x[x=="d"]
}
lapply(input,findD)
# [[1]]
# [1] "d"

# [[2]]
# [1] "d"

# [[3]]
# [1] "d" "d"

sapply(input, findD)
# [[1]]
# [1] "d"

# [[2]]
# [1] "d"

# [[3]]
# [1] "d" "d"
