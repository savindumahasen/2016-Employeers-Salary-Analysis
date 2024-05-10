

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

## filling the null values
salary$location_latitude  <- na.fill(location_latitude, 122.09)
salary$location_longitude <- na.fill(location_longitude, 100.02)
View(salary)
## Normality Testing

## Anderson darling testing

ad.test()