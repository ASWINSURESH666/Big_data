#fibonacci seris with a twist - add last 3 numbers instead of 2
fibonacci_twist <- function(n){
  if (n <= 0){
    cat("Please enter a positive integer..")
    n <- as.integer(readline(prompt = "Enter the number of terms: "))
  }
  
  if (n >= 1)
    series <- c(0)
  if (n >= 2)
    series <- c(series, 1)
  if (n >= 3)
    series <- c(series, 2)
  
  for (i in 4:n){
    next_term <- series[i-1] + series[i-2] + series[i-3]
    series <- c(series, next_term)
  }
  
  cat("The series is: \n", paste(series, collapse = ", "))
}

main <- function(){
  n <- as.integer(readline(prompt = "Enter the number of terms: "))
  fibonacci_twist(n)
}

main()