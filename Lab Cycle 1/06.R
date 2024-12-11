prime <- function(n) {
  if (n <= 1) {
    return(FALSE)
  }
  if (n == 2){
    return(TRUE)
  }
  
  for (i in 2:floor(sqrt(n))) {
    if (n %% i == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}

main <- function(){
  while (TRUE) {
    cat("\n\n1. Check if the given number is prime. \n2. Print all prime numbers in a given range. \n3. Quit.")
    choice <- as.integer(readline(prompt = "Enter your choice: "))
    
    if (choice == 1){
      n <- as.integer(readline(prompt = "Enter the integer to check: "))
      if (prime(n))
        cat(n, "is a prime number.")
      else
        cat(n, "is not a prime number.")
    }
    else if (choice == 2){
      initial <- as.integer(readline(prompt = "Enter the initial number for the range: "))
      end <- as.integer(readline(prompt = "Enter the ending number for the range: "))
      
      p <- c()
      
      for ( i in initial:end){
        if (prime(i))
          p <- c(p, i)
      } 
      
      if (length(p) == 0)
        cat("No prime numbers exist in the given range..")
      else
        cat("The prime numbers in the given range are:\n", p)
    }
    else if (choice == 3)
      break
    else
      cat("Please enter a valid option.")
  }
}

main()