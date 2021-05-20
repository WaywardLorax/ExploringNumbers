# Create a program to find the prime factorization of any number
## 
prime_factors <- function(x){     #define the function with name prime_factors
  testnumber <- as.integer(readline(prompt="What number do you want to factor?")) #get input from user, formatted as integer
  
  ## A very long vector of prime numbers
  primes <- c(2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113,127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,199,211,223,227,229,233,239,241,251,257,263,269,271,277,281,283,293)
  
  #create vectors to hold prime factors and remainders
  factors <- c()
  factortree <- c()
  
  count <- 1
  factorednumber <-testnumber
  
  #check the value of the current element in primes vector against value of our number, loop until false
  while (primes[count] < factorednumber) {
    
    #if the remainder is zero, add the prime number to vector of factors
    if( factorednumber %% primes[count] == 0){
      factors[length(factors) + 1] <- primes[count]
      print(primes[count])
      
      #set our factored number to be equal to the remainder of the initial number / the prime factor
      factorednumber <- factorednumber / primes[count]
      
      #add the remainder to vector of our factortree
      factortree[length(factortree) + 1] <- factorednumber
      
      
      count <- 1
    }
    else count = count +1
    
  }
  df <- data.frame(factors, factortree)
  print(df)
}