#palindrome checker

palindrome <- function(){
  string <- readline(prompt = "Enter the string: ")
  string <- tolower(gsub("[^a-zA-Z]", "", string))
  
  string_letters <- strsplit(string, NULL)[[1]]
  string_n <- length(string_letters)
  
  i <- 1
  j <- string_n
  
  while (i < j) {
    if (string_letters[i] != string_letters[j]) {
      return(FALSE)
    }
    i <- i + 1
    j <- j - 1
  }
  return(TRUE)
}

main <- function(){
  bool <- palindrome()
  
  if (bool)
    cat("The given string is a palindrome.")
  else
    cat("The given string is not a palindrome.")
}
main()