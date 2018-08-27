
# Reinstalling R packages after installation (Linux/MAC) ----------------------------
packages <- as.data.frame(installed.packages()) #check which versions I have 
install.packages(packages$Package)

############## Updating Packages ###############

update.packages(ask = FALSE)

############## Basic R #####################
setwd("~/Desktop/Fall 2018/BIOS611/611.lab1") #set working directory, where data will be stored
getwd()
library(tidyverse)

1+1
x <- 1
print(x)
x
v1 <- c(1,2,3)
v1[1]
length(v1)

help(read.csv)
help("read.csv")
?lapply

############## Basic Types ###################
# Numbers
a <- 5
b <- sqrt(3)
v1 <- c(1,2,3)
mean(v1)
# Strings
s1 <- "hello world"
s <- c("hello", "world")
#Factors
blp <- factor("high", levels = c("low", "high"))
#Logical
t <- TRUE
f <- FALSE
1 != 2
1 == 1
1 <= 2
#Matrix
X = matrix(c(1,3,4,5,2,7),
           nrow=2,
           ncol=3,
           byrow = TRUE)
X
X[1,2]
#Data.frame
c1 <- c(1,2,3)
c2 <- c(2,3,4)
c3 <- factor(c("a","b","c"))
df <- data.frame(col1 = c1,
                 col2 = c2,
                 col3 = c3)
df
df$col3
#Missing values
NA #missing value, "Not Available"
is.na(c(3,NA))
#NaN
0 / 0 
typeof(NaN)
NULL #object of length zero, mean "nothing"
is.null(NULL)
#checking the type
typeof(a)
typeof(t)
typeof(s1)

############## Environment #############
ls() # list all current variables in environment 
rm(s1) # remove a particular element 

############### Functions ###################
y <- 2
SumTwoNumbers <- function(a,b){
  return(a+b)
}

# R functions pass arguement by value
Double <- function(x){
  x <- 2*x
  return(x)
}
z <- 3
Double(z)
print(z) #is z = 3 or z = 6, it's 3 because of pass by value, doesn't change the value outside of the function 

############# Useful Functions #############
rep(1,3) #repeat
seq(from = 1,to = 10,by = 2)
1:5
1 %in% c(1,2,3) #checking membership 

############ Matrix operation vs Elementwise Operation ##########
c(1,2,3) * 2
X = matrix(c(1,3,4,5,2,7),
           nrow=2,
           ncol=3,
           byrow = TRUE)
Y = matrix(c(1,1,4,3,2,8),
           nrow=3,
           ncol=2,
           byrow = TRUE)
Z <- X %*% Y #matrix operations 

############# Saving and Loading ################
save(X, Y, file = "./matrix_X.RData") # save an object in R, can save multiple things
load(file = "matrix_X.RData")

###### Keyboard Shortcuts ###########
# control shift C for commenting 
# command shift R to make sections (look in outline on top right)
# option - for assignment operator 
# control up to get a list of previous commands 
# escape to stop the current code 
# tab to complete what you're typing 
# Code Rename in Scope to change variable names 
# tab to indent, shift tab to go back 
# highlight and press quotes to put quotes around it 
# find and replace is control f 