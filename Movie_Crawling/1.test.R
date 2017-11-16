library(XML)
library(stringr)

url_base <- "http://movie.naver.com/movie/sdb/rank/rmovie.nhn?sel=pnt&date=20171116&page="

all.codes <- c()
all.titles <- c()
all.points <- c()

for (page in 1:40)
{
  url <- paste(url_base, page, sep='')
  txt <- readLines(url, encoding="euc-kr")
  
  movie_info <- txt[which(str_detect(txt, "class=\"tit5\""))+1] 
  points <- txt[which(str_detect(txt, "class=\"tit5\""))+7]
  
  codes <- substr(movie_info, 40, 50) #일부 코드를 선택
  codes <- gsub("\\D","",codes) #코드 중 숫자만 남기고 지우기
  titles <- gsub("<.+?>|\t", "", movie_info) # 텍스트만 남기고 코드 지우기 (이렇게하면 소스코드인식을 안하는듯)
  points <- gsub("<.+?>|\t", "", points) # 텍스트만 남기고 코드 지우기
  
  all.codes <-  c(all.codes, codes)
  all.titles <- c(all.titles, titles)
  all.points <- c(all.points, points)
}

#x <- data.frame(code=c(all.codes), movie_title=c(all.titles),point=c(all.points))
x <- cbind(all.codes, all.titles, all.points)
colnames(x) <- c("code", "movie_title", "point")

write.table(x, "./Movie_Crawling/movie_list.csv")
