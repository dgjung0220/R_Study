ft <- c("f","f","m","m","f","k","k")


# 벡터의 특수한 형태로 설문조사의 선택문항 등 카테고리를 저장할 수 있는 벡터인 factor라는 형태가 있다.
# factor는 벡터를 기본으로 하여 함수 factor()를 이용하여 작성할 수 있다.
# level은 factor에 포함된 카테코리 목록.
ft2 <- factor(ft)
# [1] f f m m f k k
# Levels: f k m


# table() 동일한 개체가 출현한 횟수를 정리해서 보여줌.
# data.frame()과는 다르다. (data.frame은 열을 기준으로 데이터를 정리)
tb <- table(ft)
# f k m 
# 3 2 2 
tb2 <- table(ft2)
# f k m 
# 3 2 2 

# table과 plot, hist
plot(tb) # plot() 함수를 이용하여 freq 현황 출력
hist(tb) # hist() 함수를 이용하여 분포 현황 출력
