analyze_text <- function() {
# Input the paragraph
cat("Enter your paragraph:\n")
paragraph <- readline()
# Split the paragraph into words
words <- unlist(strsplit(paragraph, "\\s+"))
# a. Count the total number of words
total_words <- length(words)
cat("\nThe total number of words =", total_words, "\n")
# b. Calculate the average word length
word_lengths <- nchar(words)
avg_word_length <- mean(word_lengths)
cat("Average word length =", avg_word_length, "\n")
# c. Identify the longest word
longest_word <- words[which.max(word_lengths)]
cat("The longest word is:", longest_word, "\n")
# d. Replace a word
cat("Enter the word to replace: ")
target_word <- readline()
cat("Enter the replacement word: ")
replacement_word <- readline()
# Replace the word in the paragraph
modified_paragraph <- gsub(paste0("\\b", target_word, "\\b"),
replacement_word, paragraph, ignore.case = TRUE)
cat("\nThe modified paragraph is:\n", modified_paragraph, "\n")
}
# Run the function
analyze_text()
