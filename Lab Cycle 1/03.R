students <- function(){
  number_students <- as.integer(readline(prompt = "Enter the number of students: "))
  
  ages <- numeric()
  grades <- character()
  
  grade_list <- c('A', 'B', 'C', 'D', 'F')
  for (i in 1:number_students){
    name <- readline(prompt = sprintf("Enter name of student %d: ", i))
    
    while (TRUE) {
      age <- as.integer(readline(prompt = sprintf("Enter the age of student %d: ", i)))
      if (age > 0 ){
        ages <- c(ages, age)
        break
      }
      else{
        cat("Invalid age, please enter a positive integer..")
      }
    }
    
    while (TRUE) {
      grade <- readline(prompt = sprintf("Enter the grade of student %d: ", i))
      if (grade %in% grade_list){
        grades <- c(grades, grade)
        break
      }
      else{
        cat("Invalid grade, please enter A, B, C, D or F as the grade..")
      }
    }
  }
  
  avg_age = mean(ages)
  cat("The average age is: ", avg_age)
}

students()