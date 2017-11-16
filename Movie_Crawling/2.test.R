library(XML)
library(stringr)

#크롤링 시작#
url_base <- "http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=" #네이버 영화 상세 리뷰 1
url_paging <- "&type=after&isActualPointWriteExecute=false&isMileageSubscriptionAlready=false&isMileageSubscriptionReject=false&page=" #네이버 영화 상세 리뷰 2

all.review_cnt <- c() #영화 리뷰 건수
all.keyword_cnt <- c() #영화 리뷰 중 특정 키워드가 인용된 건수 
#(ex:영화 쇼생크탈출 리뷰 16350 건 중 '최고'이라는 키워드가 3392 번 사용되었다.)

keyword <- '최고' #특정 키워드 지정

movie_code <- 163386
url_main <- paste(url_base, movie_code, sep='') #네이버에서 관리하는 영화 고유코드값
url_main <- paste(url_main, url_paging, sep='')
url_main <- paste(url_main, 1, sep='')

txt <- readLines(url_main, encoding="UTF-8") #웹 크롤링
review_cnt <- txt[which(str_detect(txt, "class=\"total\""))]
review_cnt <- str_replace(review_cnt,"140자 평","")
review_cnt <- gsub("\\D","",review_cnt) #숫자를 제외한 문자 제거

if( review_cnt == 0 | length(review_cnt) == 0 )
{
  review_cnt<-0
  all.review_cnt <- c(all.review_cnt, review_cnt) #리뷰 건수 저장
  break
}

all.review_cnt <- c(all.review_cnt, review_cnt) #리뷰 건수 저장

if( review_cnt > 10 | length(review_cnt) > 1)
{
  #페이지마다 리뷰가 10건 씩 반복되니, 총리뷰건수/10 하면 최종 페이지가 나옴
  total_page <- as.numeric(review_cnt) %/% 10  #review_cnt%/%10 이렇게 쓰면 이항연산자에 수치가 아닌 인수입니다. 라는 에러가 발생함 
} else
{
  total_page <- 1
}

all.reviews <- c() #영화 리뷰

