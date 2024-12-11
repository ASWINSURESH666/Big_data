#run-length encoding

run_length_encoding <- function(){
  string <- readline(prompt = "Enter the string: ")
  
  string_letters <- unlist(strsplit(string, NULL))
  n <- length(string_letters)
  
  i = 1
  encoded <- ''
  while (i <= n) {
    count = 1
    while (i < n && string_letters[i] == string_letters[i+1]) {
      count <- count + 1
      i <- i + 1
    }
    
    encoded <- paste(encoded, string_letters[i],count, sep = "")
    i <- i + 1
  }
  cat("The encoded string is: ", encoded)
}

run_length_encoding()