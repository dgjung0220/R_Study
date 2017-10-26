# NA는 not available의 약자, 뭔가 있지만, 값을 못 넣은 상태. 통계에서 말하는 결측치
# NULL은 값이 없음, 존재하지 않음.

x <- c(1, 2, NA, 10, 3)
is.na(x) # FALSE FALSE  TRUE FALSE FALSE
length(x) # 5

x2 <- c(1,2,NULL,NA,4) # 1  2 NA  4
is.na(x2) # FALSE FALSE  TRUE FALSE
length(x2) # 4

x3 <- NULL
length(x3) # 0

z1 <- c(88, 12, NA, 168, 13)
mean(z1) # NA
mean(z1, na.rm = T) # 70.25 # na.rm > na를 지우고(무시하고) 계산.

z2 <- c(88, NULL, 12, 168, 13)
mean(z2) # 7025