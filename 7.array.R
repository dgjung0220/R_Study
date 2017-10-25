letters
# "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z"

length(letters)
# 26


###
#Usage array(data = NA, dim = length(data), dimnames = NULL)Argumentsdata 
#

array(letters,dim=c(2))
# "a" "b"
letters[1:2]
# "a" "b"

array(letters, dim=c(2,4))
#      [,1] [,2] [,3] [,4]
# [1,] "a"  "c"  "e"  "g" 
# [2,] "b"  "d"  "f"  "h"

matrix(letters[1:8], nrow=2, ncol=4)
#      [,1] [,2] [,3] [,4]
# [1,] "a"  "c"  "e"  "g" 
# [2,] "b"  "d"  "f"  "h"

array(letters, dim=c(2,3,2))
# , , 1

# [,1] [,2] [,3]
# [1,] "a"  "c"  "e" 
# [2,] "b"  "d"  "f" 

# , , 2

# [,1] [,2] [,3]
# [1,] "g"  "i"  "k" 
# [2,] "h"  "j"  "l" 

array(letters, dim=c(2,3,2,2))
# , , 1, 1

# [,1] [,2] [,3]
# [1,] "a"  "c"  "e" 
# [2,] "b"  "d"  "f" 

# , , 2, 1

# [,1] [,2] [,3]
# [1,] "g"  "i"  "k" 
# [2,] "h"  "j"  "l" 

# , , 1, 2

# [,1] [,2] [,3]
# [1,] "m"  "o"  "q" 
# [2,] "n"  "p"  "r" 

# , , 2, 2

# [,1] [,2] [,3]
# [1,] "s"  "u"  "w" 
# [2,] "t"  "v"  "x"


