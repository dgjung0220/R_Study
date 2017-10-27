# 0:2 를 통해 vector를 만들면, 기본적으로 numeric vector.
# 이를 logical로 바꾸어 주면, 0은 false 나머지는 true로 변환된다.

x <- 0:2 # 0 1 2
x1 <- as.numeric(x) # 0 1 2
x1 <- as.data.frame(x1)
#   x1
# 1  0
# 2  1
# 3  2


x2 <- as.logical(x) # FALSE TRUE TRUE
x2 <- as.data.frame(x2)
#      x2
# 1 FALSE
# 2  TRUE
# 3  TRUE

# character의 경우, 숫자를 문자로 변환한다.
x3 <- as.character(x) # "0" "1" "2"
x3 <- as.data.frame(x3)
#   x3
# 1  0
# 2  1
# 3  2

x4 <- as.complex(x) # 0+0i 1+0i 2+0i
x4 <- as.data.frame(x4)
#     x4
# 1 0+0i
# 2 1+0i
# 3 2+0i

z <- cbind(x,x2,x3,x4)
#   x    x2 x3   x4
# 1 0 FALSE  0 0+0i
# 2 1  TRUE  1 1+0i
# 3 2  TRUE  2 2+0i


