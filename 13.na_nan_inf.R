
# 1/0 -1/0 등은 수학에 무한대.(Infinite)
# 0/0은? 정의되지 않음. 숫자가 아님 > NaN (Not a Number)
x <- 1/0 # Inf
x <- -1/0 # -Inf
x < -0/0 # NA



y <- c(1,NA, 0/0, 1/0) # 1  NA NaN Inf

# NA > NA, NaN
# NaN > NaN
is.na(y) # FALSE  TRUE  TRUE FALSE
is.nan(y) # FALSE FALSE  TRUE FALSE

is.finite(y) # TRUE FALSE FALSE FALSE
is.infinite(y) # FALSE FALSE FALSE  TRUE
