# Create a program to find the factors of any number.
## 
find_factors <- function(x){ #defining function and giving it the name find_factors
testnumber <- as.integer(readline(prompt="What number do you want to factor?")) #store user response to promt in variable testnumber
factors <- c(1)
count <- 2
while (count < testnumber) {
  if( testnumber %% count == 0){
    factors[length(factors) + 1] <- count
    print(count)
  }
  count = count +1
}
factors[length(factors) + 1] <- testnumber
df <- data.frame(factors, rev(factors))
print(df)  #print out the data frame containing factor pairs
}