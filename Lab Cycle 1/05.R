# series summation 1 - 2/3 + 3/5 - 4/7 + ..

series <- function(){
  number_terms <- as.integer(readline(prompt = "Enter the number of terms: "))
  
  sum_series <- 0
  term_series <- vector('character', number_terms)
  
  for (i in 2:number_terms){
    numerator <- i
    denominator <- 2*i - 1
    
    term_ <- numerator/denominator
    
    if (i %% 2 == 0){
      term_ <- -term_
    }
    
    sum_series <- sum_series + term_
    
    if (i %% 2 == 0) {
      term_series[i] <- sprintf(" - %d/%d", numerator, denominator)
    } else {
      term_series[i] <- sprintf(" + %d/%d", numerator, denominator)
    }
  }
  
  series_string <- paste0(term_series, collapse = "")
  cat("The series is: 1 ", series_string, "\n")
  cat("The sum of the series is: ", sum_series + 1, "\n")
}

series()