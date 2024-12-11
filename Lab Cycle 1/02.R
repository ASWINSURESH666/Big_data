# Caesar Cipher

encrypting <- function(){
  
  sentence <- readline(prompt = "Enter the sentence: ")
  
  shift <- as.integer(readline(prompt = "Enter the shift key for encryption: "))
  
  lower <- "abcdefghijklmnopqrstuvwxyz"
  upper <- "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  
  encrypted <- ""
  
  chars <- unlist(strsplit(sentence, NULL))
  
  for (char in chars){
    # lower case
    if (char %in% unlist(strsplit(lower, NULL))){
      pos <- which(unlist(strsplit(lower, NULL)) == char)
      new_pos <- (pos + shift - 1) %% 26 + 1
      encrypted <- paste0(encrypted, substring(lower, new_pos, new_pos))
    }
    
    else if (char %in% unlist(strsplit(upper, NULL))){
      pos <-  which(unlist(strsplit(upper, NULL)) == char)
      new_pos <- (pos + shift - 1) %% 26 + 1
      encrypted <- paste0(encrypted, substring(upper, new_pos, new_pos))
    }
    
    else{
      encrypted <- paste0(encrypted, char)
    }
  }
  cat("\nThe encrypted sentence is: ", encrypted)
}

encrypted <- encrypting()