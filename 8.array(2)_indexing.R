ar<-array(letters, dim=c(2,3,2))
# , , 1

#     [,1] [,2] [,3]
# [1,] "a"  "c"  "e" 
# [2,] "b"  "d"  "f" 

# , , 2

#     [,1] [,2] [,3]
# [1,] "g"  "i"  "k" 
# [2,] "h"  "j"  "l" 

ar[4:8]
# "d" "e" "f" "g" "h"
ar[2,2,]
# "d" "j"
ar[2,2, 1:2]
# "d" "j"

ar2 <- array(letters, dim=c(2,3,2,2))
# , , 1, 1

#     [,1] [,2] [,3]
# [1,] "a"  "c"  "e" 
# [2,] "b"  "d"  "f" 

# , , 2, 1

#     [,1] [,2] [,3]
# [1,] "g"  "i"  "k" 
# [2,] "h"  "j"  "l" 

# , , 1, 2

#     [,1] [,2] [,3]
# [1,] "m"  "o"  "q" 
# [2,] "n"  "p"  "r" 

# , , 2, 2

#     [,1] [,2] [,3]
# [1,] "s"  "u"  "w" 
# [2,] "t"  "v"  "x" 

ar2[12:15]
# "l" "m" "n" "o"
ar2[2,3,1:2,2]
# "r" "x"

####################
ar <- array(letters, dim=c(2,3,2))
# , , 1

#     [,1] [,2] [,3]
# [1,] "a"  "c"  "e" 
# [2,] "b"  "d"  "f" 

# , , 2

#      [,1] [,2] [,3]
# [1,] "g"  "i"  "k" 
# [2,] "h"  "j"  "l" 

ar[4:8]
# "d" "e" "f" "g" "h"
ar[2,2,]
# "d", "j"
ar[2,2,1:2]
# "d", "j"

ar2 <- array(letters, dim=c(2,3,2,2))
#  , , 1, 1

#     [,1] [,2] [,3]
# [1,] "a"  "c"  "e" 
# [2,] "b"  "d"  "f" 

# , , 2, 1

#     [,1] [,2] [,3]
# [1,] "g"  "i"  "k" 
# [2,] "h"  "j"  "l" 

# , , 1, 2

#     [,1] [,2] [,3]
# [1,] "m"  "o"  "q" 
# [2,] "n"  "p"  "r" 

# , , 2, 2

#   [,1] [,2] [,3]
# [1,] "s"  "u"  "w" 
# [2,] "t"  "v"  "x"

ar2[12:15]
# "l" "m" "n" "o"
ar2[2,3,,2]
# "r", "x"
ar2[2,3,1:2,2]
# "r", "x"

######################################################
index <- rep(FALSE, 2*3*2*2)
index[12:15] <- TRUE
ar2[index]
# "l" "m" "n" "o"
index_matrix <- array(index,dim=c(2,3,2,2))
ar2[index_matrix]
# "l" "m" "n" "o"

# 조건식
ar2 %in% c("l","m","n","o")
#  [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE
# [21] FALSE FALSE FALSE FALSE

