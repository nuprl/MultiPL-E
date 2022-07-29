# It is the last week of the semester and the teacher has to give the grades
# to students. The teacher has been making her own algorithm for grading.
# The only problem is, she has lost the code she used for grading.
# She has given you a list of GPAs for some students and you have to write 
# a function that can output a list of letter grades using the following table:
# GPA       |    Letter grade
# 4.0                A+
# > 3.7                A 
# > 3.3                A- 
# > 3.0                B+
# > 2.7                B 
# > 2.3                B-
# > 2.0                C+
# > 1.7                C
# > 1.3                C-
# > 1.0                D+ 
# > 0.7                D 
# > 0.0                D-
# 0.0                E
# Example:
# grade_equation([4.0, 3, 1.7, 2, 3.5]) ==> ['A+', 'B', 'C-', 'C', 'A-']
numerical_letter_grade <- function(grades) {
    # Define the grade table
    grade_table <- c(4.0, 3.7, 3.3, 3.0, 2.7, 2.3, 2.0, 1.7, 1.3, 1.0, 0.7, 0.0)
    letter_grade <- c('A+', 'A', 'A-', 'B+', 'B', 'B-', 'C+', 'C', 'C-', 'D+', 'D', 'D-', 'E')
    # Define the function that converts numerical grades to letter grades
    letter_equation <- function(grade) {
        letter_grade[which(grade_table %in% grade)]
    }
    # Apply the function to the input vector
    letter_equation(grades)
}


test_humaneval <- function() {
candidate <- numerical_letter_grade
    if(!identical(candidate(c(4.0, 3, 1.7, 2, 3.5)), c('A+', 'B', 'C-', 'C', 'A-'))){quit('no', 1)}
    if(!identical(candidate(c(1.2)), c('D+'))){quit('no', 1)}
    if(!identical(candidate(c(0.5)), c('D-'))){quit('no', 1)}
    if(!identical(candidate(c(0.0)), c('E'))){quit('no', 1)}
    if(!identical(candidate(c(1.0, 0.3, 1.5, 2.8, 3.3)), c('D', 'D-', 'C-', 'B', 'B+'))){quit('no', 1)}
    if(!identical(candidate(c(0.0, 0.7)), c('E', 'D-'))){quit('no', 1)}
}
test_humaneval()