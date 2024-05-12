

## import the dataset

salary <- read.csv("C:\\Users\\THIS PC\\Desktop\\2016-Employee-Salary-Analysis\\salaries.csv")

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
salary$job_title_category<- revalue(job_title_category,c(Engineering=1,Software=2,Other=3,Web=4,Data=5,Management=6))
salary$location_state <- revalue(location_state, c(CA=1,AR=2,OH=3,OR=4,WI=5,
                                                   NY=6,CO=7,PA=8,MI=9,TX=10))
salary$location_country <- revalue(location_country, c(US=1, OM=2, CA=3, SE=4))
salary$job_title <- revalue(job_title, c(systemsengineer=1, seniordeveloper=2,
                            softwareengineer=3,ittechnician=4, leadinterviewer=5,
                            seniorsoftwareengineer=6,studentinterncoop=7,
                            fullstackdeveloper=8,senioranalyst=9,softwaredeveloper=10,
                            iosdeveloper=11,seniorengineer=12, webdeveloper=13,itprogrammer=14,
                            directorofproduct=15))

## write into the new csv file

write.csv(salary,"C:\\Users\\THIS PC\\Desktop\\2016-Hackers-Salary-Analysis\\salaries_new.csv")
## import the new salary dataset
salary_new  <- read.csv("C:\\Users\\THIS PC\\Desktop\\2016-Hackers-Salary-Analysis\\salaries_new.csv")
## View the new salary dataset
View(salary_new)
## detach the old salary dataset
detach(salary)
## attach the new salary dataset
attach(salary_new)
## view the new dataset
View(salary_new)
## Normality Testing
install.packages("nortest")
## call the library
library("nortest")

## anderson darling testing
ad.test(annual_base_pay)

## lillifor testing
lillie.test(annual_base_pay)

## shapirowiki testing
shapiro.test(annual_base_pay)

## Graphical Analysis
hist(annual_base_pay, main="Annual_base_pay Distribution",
     xlab="annual_base_pay Category",
     ylab="annual_base_pay",
     prob=TRUE)
curve(dnorm(x, mean=mean(annual_base_pay, na.rm=TRUE), 
            sd=sd(annual_base_pay, na.rm =TRUE)), add=TRUE)

## summary  statictics
summary(annual_base_pay)



## anderson darling testing
ad.test(location_latitude)

## lillifor testing
lillie.test(location_latitude)

## shapro testing
shapiro.test(location_latitude)

hist(location_latitude, main="Location Latitude Distribution",
     xlab="location_latitide Category",
     ylab="locaation_latitude",
     prob=TRUE)
curve(dnorm(x, mean=mean(location_latitude, na.rm=TRUE), 
            sd=sd(location_latitude, na.rm =TRUE)), add=TRUE)

## summary statistics
summary(location_latitude)

## aderson darling tesing
ad.test(location_longitude)

## lillifor testing
lillie.test(location_longitude)

## shapiro testing
shapiro.test(location_longitude)

## anderson darling testing
ad.test(job_title_category)


## Graphical Analysis

hist(location_longitude, main="Location Longitude Distribution",
     xlab="location_longitude Category",
     ylab="locaation_longitude",
     prob=TRUE)
curve(dnorm(x, mean=mean(location_longitude, na.rm=TRUE), 
            sd=sd(location_longitude, na.rm =TRUE)), add=TRUE)


## summary statistics
summary(location_longitude)


## anderson darling testing
ad.test(job_title)

## Lillefor testing
lillie.test(job_title)

## shapiro wiki testing
shapiro.test(job_title)


## Graphical Analysis
hist(job_title, main="Job title distribution",
     xlab = "Job title category",
     ylab = "Job title", prob=TRUE)

curve(dnorm(x,mean=mean(job_title, na.rm=TRUE),
            sd=sd(job_title, na.rm =TRUE)), add = TRUE)
