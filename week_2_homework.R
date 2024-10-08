###Week 2 Homework----
##Setup ----
set.seed(15)
hw2 <- runif(50,4,50)
hw2 <- replace(hw2, c(4,12,22,27), NA)
hw2

##1----
#removing NA from set
hw2 <- na.omit(hw2)
#select numbers between 14 and 38 and call prob1
prob1 <- hw2[hw2 > 14 & hw2 < 38]
prob1                 

##2----
#multiply each number in prob1 by 3 and create new vector "times3"
times3 <- prob1*3
times3
#add 10 to each number in times3 and call plus10
plus10 <- times3+10
plus10

##3----
#select every other number in plus10 vector 
plus10[c(TRUE, FALSE)]
