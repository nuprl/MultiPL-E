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
# >>> grade_equation([4.0, 3, 1.7, 2, 3.5])
# ['A+', 'B', 'C-', 'C', 'A-']
numerical_letter_grade <- function(grades) {
    if (grades >= 4.0) {
        return("A+")
    } else if (grades >= 3.7) {
        return("A")
    } else if (grades >= 3.3) {
        return("A-")
    } else if (grades >= 3.0) {
        return("B+")
    } else if (grades >= 2.7) {
        return("B")
    } else if (grades >= 2.3) {
        return("B-")
    } else if (grades >= 2.0) {
        return("C+")
    } else if (grades >= 1.7) {
        return("C")
    } else if (grades >= 1.3) {
        return("C-")
    } else if (grades >= 1.0) {
        return("D+")
    } else if (grades >= 0.7) {
        return("D")
    } else if (grades >= 0.0) {
        return("D-")
    } else {
        return("E")
    }
}

letter_grade <- function(grades) {
    numerical_letter_grade(grades)
}

letter_grade(4.0)
letter_grade(3.7)
letter_grade(3.3)
letter_grade(3.0)
letter_grade(2.7)
letter_grade(2.3)
letter_grade(2.0)
letter_grade(1.7)
letter_grade(1.3)
letter_grade(1.0)
letter_grade(0.7)
letter_grade(0.0)
letter_grade(-1.0)
letter_grade(4.0)
letter_grade(3.7)
letter_grade(3.3)
letter_grade(3.0)
letter_grade(2.7)
letter_grade(2.3)
letter_grade(2.0)
letter_grade(1.7)
letter_grade(1.3)
letter_grade(1.0)
letter_grade(0.7)
letter_grade(0.0)

test_humaneval <- function() {
candidate <- numerical_letter_grade
    if(!identical(candidate(c(4.0, 3, 1.7, 2, 3.5)), list('A+', 'B', 'C-', 'C', 'A-'))){quit('no', 1)}
    if(!identical(candidate(c(1.2)), list('D+'))){quit('no', 1)}
    if(!identical(candidate(c(0.5)), list('D-'))){quit('no', 1)}
    if(!identical(candidate(c(0.0)), list('E'))){quit('no', 1)}
    if(!identical(candidate(c(1.0, 0.3, 1.5, 2.8, 3.3)), list('D', 'D-', 'C-', 'B', 'B+'))){quit('no', 1)}
    if(!identical(candidate(c(0.0, 0.7)), list('E', 'D-'))){quit('no', 1)}
}
test_humaneval()