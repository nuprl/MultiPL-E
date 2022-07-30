
// It is the last week of the semester and the teacher has to give the grades
// to students. The teacher has been making her own algorithm for grading.
// The only problem is, she has lost the code she used for grading.
// She has given you a list of GPAs for some students and you have to write 
// a function that can output a list of letter grades using the following table:
// GPA       |    Letter grade
// 4.0                A+
// > 3.7                A 
// > 3.3                A- 
// > 3.0                B+
// > 2.7                B 
// > 2.3                B-
// > 2.0                C+
// > 1.7                C
// > 1.3                C-
// > 1.0                D+ 
// > 0.7                D 
// > 0.0                D-
// 0.0                E
// Example:
// grade_equation([4.0, 3, 1.7, 2, 3.5]) ==> ['A+', 'B', 'C-', 'C', 'A-']
func numerical_letter_grade(grades: [Double]) -> [String] {
    var result: [String] = []
    for grade in grades {
        if grade >= 4.0 {
            result.append("A+")
        } else if grade >= 3.7 {
            result.append("A")
        } else if grade >= 3.3 {
            result.append("A-")
        } else if grade >= 3.0 {
            result.append("B+")
        } else if grade >= 2.7 {
            result.append("B")
        } else if grade >= 2.3 {
            result.append("B-")
        } else if grade >= 2.0 {
            result.append("C+")
        } else if grade >= 1.7 {
            result.append("C")
        } else if grade >= 1.3 {
            result.append("C-")
        } else if grade >= 1.0 {
            result.append("D+")
        } else if grade >= 0.7 {
            result.append("D")
        } else if grade >= 0.0 {
            result.append("D-")
        } else {
            result.append("E")
        }
    }
    return result

}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(numerical_letter_grade(grades: [4.0, 3, 1.7, 2, 3.5]) == ["A+", "B", "C-", "C", "A-"])
assert(numerical_letter_grade(grades: [1.2]) == ["D+"])
assert(numerical_letter_grade(grades: [0.5]) == ["D-"])
assert(numerical_letter_grade(grades: [0.0]) == ["E"])
assert(numerical_letter_grade(grades: [1.0, 0.3, 1.5, 2.8, 3.3]) == ["D", "D-", "C-", "B", "B+"])
assert(numerical_letter_grade(grades: [0.0, 0.7]) == ["E", "D-"])