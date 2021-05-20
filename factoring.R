# Create a program to find the factors of any number.
#To run, click the -> Source button above.  Then type find_factors() into the console and hit return
## 
find_factors <- function(x){ #defining function and giving it the name find_factors
  if(hasArg(x)){    #detect if an argument x has been passed into the function
    testnumber <-as.integer(x)  #if yes, then store this number as test number, making sure it is an integer
  }
  else{   #if no argument, prompt the user for a number to factor
    testnumber <- as.integer(readline(prompt="What number do you want to factor?")) #store user response to promt in variable testnumber
  }
factors <- c(1) #create vector to store factors, with 1 as first value since all numbers are divisible by 1
count <- 2   #begin testing factors with 2

#Create a loop that runs until the count is equal to the test number
while (count < testnumber) {
  if( testnumber %% count == 0){  #Check to see if testnumber divided by count has no remainder
    factors[length(factors) + 1] <- count #save the value of count at the end of the vector containing the factors
    print(count) #when a factor is found, print it out
}
  count = count +1 #each loop, increment count by +1
}
factors[length(factors) + 1] <- testnumber #add the original number to the end of the factor list
df <- data.frame(factors, rev(factors))  #create a dataframe object, with one column being the vector of factors and the other being a reversed order of the same vector
print(df)  #print out the data frame containing factor pairs
return(df) #return the dataframe to the main program
}