setwd("D:/workspace/R/french-employment-salaries-population-per-town")
getwd()

list.files()

result <- read.csv("net_salary_per_town_categories_ansi.csv", header=TRUE, stringsAsFactors = FALSE)
head(result)
str(result)
class(result)

# head() 는 해당 데이터의 가장 위에 위치한 데이터 몇 개를 보여준다. 데이터가 제대로 import 되었는지 확인하기 위해 사용됨.
# 데이터를 import 시킬 때는 head()와 str()을 사용해서 제대로 import 되었는지 확인 필요.

# str() 해당 데이터의 간단한 구조를 보여줌.
# => 'data.frame':	5136 obs. of  26 variables:
# => data.frame 형태, 5136개의 관측치, 26개의 변수.
# => $ LIBGEO   : chr  "Amberieu-en-Bugey" "Ambronay" "Arbent" "Attignat" ...
# => $ SNHM14   : num  13.7 13.5 13.5 12.9 13 13.9 12.4 14 11.5 12.4 ...
# => LIBGEO는 character 형태, SNHM14 는 number 형태
