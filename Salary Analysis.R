

## import the dataset

salary <- read.csv("C:\\Users\\THIS PC\\Desktop\\2016-Hackers-Salary-Analysis\\salaries.csv")

## View the dataset
View(salary)

## to  get the first five records
print(head(salary))

## get the data types and number of objects
str(salary)

## attatch the dataset
attach(salary)

## view the dataset again
View(salary)

## check the null values
salary[!complete.cases(salary),]

## install the Zoo package
install.packages("zoo")

## call the zoo library
library("zoo")

## covert the text into the numeric values
install.packages('plyr')
library('plyr')
salary$job_title_rank<- revalue(job_title_rank,c( Senior=1, Intern=2, Junior=3))
salary$job_title_category<- revalue(job_title_category,c(Engineering=1,Software=2,Other=3,Web=4,Data=5))

## filling the null values
install.packages("zoo")
library("zoo")
salary$location_latitude  <- na.fill(location_latitude, 122.09)
salary$location_longitude <- na.fill(location_longitude, 100.02)
salary$job_title_rank <- na.fill(job_title_rank,2)
salary$signing_bonus <- na.fill(signing_bonus, 0)
salary$stock_value_bonus <- na.fill(stock_value_bonus,0)
salary$annual_bonus <- na.fill(annual_bonus,0)

write.csv(salary,"C:\\Users\\THIS PC\\Desktop\\2016-Hackers-Salary-Analysis\\salaries_new.csv")

View(salary)
## Normality Testing

## Anderson darling testing

ad.test()