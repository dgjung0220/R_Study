head(cars)
#   speed dist
# 1     4    2
# 2     4   10
# 3     7    4
# 4     7   22
# 5     8   16
# 6     9   10
str(cars)

pts <- list(x=cars[,1], y=cars[,2])
# $x
# [1]  4  4  7  7  8  9 10 10 10 11 11 12 12 12 12 13 13 13 13 14 14 14 14 15 15 15 16 16 17 17 17 18 18 18 18 19 19 19 20 20 20
# [42] 20 20 22 23 24 24 24 24 25

# $y
# [1]   2  10   4  22  16  10  18  26  34  17  28  14  20  24  28  26  34  34  46  26  36  60  80  20  26  54  32  40  32  40  50
# [32]  42  56  76  84  36  46  68  32  48  52  56  64  66  54  70  92  93 120  85

df <- data.frame(matrix(1:6, nrow=2, ncol=3))
#   X1 X2 X3
# 1  1  3  5
# 2  2  4  6

v1 <- c("eat","prey","love")
ar1 <- array(letters, dim=c(2,3,2))

temp_list <- list(x=df, y=v1, z=ar1)
# $x
#   X1 X2 X3
# 1  1  3  5
# 2  2  4  6

# $y
# "eat"  "prey" "love"

# $z
# , , 1

#     [,1] [,2] [,3]
# [1,] "a"  "c"  "e" 
# [2,] "b"  "d"  "f" 

# , , 2

#     [,1] [,2] [,3]
# [1,] "g"  "i"  "k" 
# [2,] "h"  "j"  "l"


### List Indexing
temp_list$x
#   X1 X2 X3
# 1  1  3  5
# 2  2  4  6
temp_list$x[2,2]
# 4
temp_list$y[3]
# "love"
temp_list$z[2,3,2]
# "l"

temp_list[[1]] # == temp_list$x

temp_list[[1]][2,2] # 4

temp_list[[2]][3] # "love"

temp_list[[3]][2,3,2] # "l"


