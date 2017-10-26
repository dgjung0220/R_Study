# Pre allocation
# 차원 구조를 가진 matrix, data frame의 경우, nrow, ncol 옵션을 이용하여,
# 

vector("numeric", 5)  # 0 0 0 0 0
vector("character", 5) # "" "" "" "" ""
vector("logical", 5) # FALSE FALSE FALSE FALSE FALSE
vector("list", 5)
# [[1]]
# NULL

# [[2]]
# NULL

# [[3]]
# NULL

# [[4]]
# NULL

# [[5]]
# NULL
matrix(nrow = 2, ncol = 3)
#       [,1] [,2] [,3]
# [1,]   NA   NA   NA
# [2,]   NA   NA   NA
array(dim=c(2,3,2))
# , , 1

#       [,1] [,2] [,3]
# [1,]   NA   NA   NA
# [2,]   NA   NA   NA

# , , 2

#       [,1] [,2] [,3]
# [1,]   NA   NA   NA
# [2,]   NA   NA   NA

data.frame(matrix(nrow=2,ncol=3))
#   X1 X2 X3
# 1 NA NA NA
# 2 NA NA NA