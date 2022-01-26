# Write an R program to create three vectors a, b, c with 5 integers. Combine the three vectors to become a 3×5 matrix where each column represents a vector. Print the content of the matrix. Plot a graph and label correctly.
a<-c(1,2,3,4,5)
b<-c(6,7,8,9,10)
c<-c(11,12,13,14,15)
abc<-c(a,b,c)
rnames=c("row1","row2","row3")
cnames=c("column1","column2", "column3", "column4", "column5")
matrix_abc<-matrix(abc,nrow=3,ncol=5,dimnames= list(rnames,cnames))
print(matrix_abc)
matplot(t(matrix_abc), type ="l", lwd=2, main="Plotting Rows of a Matrix", ylab="Column Value")

# Write a R program to create a Data frames which contain details of 5 employees and display the details.  (Name, Age, Role and Length of service). 

employeeDetails <- data.frame(
  Name = c("John Bills", "Mat Khan", "Steph Alley", "Ashley Tink"),
  Age = c(37,26,46.29,35),
  Role = c("Analyst", "Accountant", "Administrator", "Developer"),
  LengthofService = c("2 years", "3.5 years", "1.4 years", "5 years")
)
employeeDetailsAddNewRow <- rbind(employeeDetails, c("Robert Liam", 38, "Manager", "6 years"))
employeeDetailsAddNewRow

# Import the GGPLOT 2 library and plot a graph using the qplotfunction.  X axis is the sequence of 1:20 and the y axis is the x ^ 2.  Label the graph appropriately. install.packages("ggplot2", dependencies = TRUE)

install.packages("ggplot2", dependencies = TRUE)
Yes
library("ggplot2")
x<-1:20
y<-x^2
qplot(x,y, main = "Square of First 20 Numbers", xlab="Number", ylab = "Square of Nmuber")

# Create a simple bar plot of five subjects

z<-c(3,3,4,2,2, 2, 5, 5, 5, 5, 7)
qplot(z,geom = "auto", xlab = "Score", ylab = "Frequency")

# Write a R program to take input from the user (name and age) and display the values.

name<-readline("Enter you name: ")
age<-readline("Enter you age :")
print(paste("My name is ", name, " and I am ", age, " years old"))

# Write a R program to create a sequence of numbers from 20 to 50 and find the mean of numbers from 20 to 50 and sum of numbers.

numbers<-20:50
print(mean(numbers))
print(sum(numbers))

# Write a R program to create a vector which contains 10 random integer values between -50 and +50

randomIntegers <- sample(-50:50,10,replace = F)
randomIntegers

# Write a R program to get the first 10 Fibonacci numbers.

Fibonacci <- numeric(10)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]
print("First 10 Fibonacci numbers:")
print(Fibonacci)

# Write a R program to print the numbers from 1 to 100 and print "Fizz" for multiples of 3, print "Buzz" for multiples of 5, and print "FizzBuzz" for multiples of both.

for (n in 1:100) {
  if (n %% 3 == 0 & n %% 5 == 0) {print("FizzBuzz")}
  else if (n %% 3 == 0) {print("Fizz")}
  else if (n %% 5 == 0) {print("Buzz")}
  else print(n)
}