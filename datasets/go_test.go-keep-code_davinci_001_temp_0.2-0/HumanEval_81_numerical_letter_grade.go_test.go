package numerical_letter_grade_test

import (
    "testing"
    "fmt"
)

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
func numerical_letter_grade(grades []float64) []string {
    var letterGrades []string
    for _, grade := range grades {
        if grade >= 4.0 {
            letterGrades = append(letterGrades, "A+")
        } else if grade >= 3.7 {
            letterGrades = append(letterGrades, "A")
        } else if grade >= 3.3 {
            letterGrades = append(letterGrades, "A-")
        } else if grade >= 3.0 {
            letterGrades = append(letterGrades, "B+")
        } else if grade >= 2.7 {
            letterGrades = append(letterGrades, "B")
        } else if grade >= 2.3 {
            letterGrades = append(letterGrades, "B-")
        } else if grade >= 2.0 {
            letterGrades = append(letterGrades, "C+")
        } else if grade >= 1.7 {
            letterGrades = append(letterGrades, "C")
        } else if grade >= 1.3 {
            letterGrades = append(letterGrades, "C-")
        } else if grade >= 1.0 {
            letterGrades = append(letterGrades, "D+")
        } else if grade >= 0.7 {
            letterGrades = append(letterGrades, "D")
        } else if grade >= 0.0 {
            letterGrades = append(letterGrades, "D-")
        } else {
            letterGrades = append(letterGrades, "E")
        }
    }
    return letterGrades
}


func TestNumerical_Letter_Grade(t *testing.T) {
  candidate := numerical_letter_grade
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate([]float64{4.0, 3, 1.7, 2, 3.5}), expected: []string{"A+", "B", "C-", "C", "A-"} },
     { actual: candidate([]float64{1.2}), expected: []string{"D+"} },
     { actual: candidate([]float64{0.5}), expected: []string{"D-"} },
     { actual: candidate([]float64{0.0}), expected: []string{"E"} },
     { actual: candidate([]float64{1.0, 0.3, 1.5, 2.8, 3.3}), expected: []string{"D", "D-", "C-", "B", "B+"} },
     { actual: candidate([]float64{0.0, 0.7}), expected: []string{"E", "D-"} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
