<?php
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
function numerical_letter_grade($grades) {
    $letter_grades = [];
    foreach ($grades as $grade) {
        if ($grade >= 4.0) {
            $letter_grades[] = 'A+';
        } elseif ($grade >= 3.7) {
            $letter_grades[] = 'A';
        } elseif ($grade >= 3.3) {
            $letter_grades[] = 'A-';
        } elseif ($grade >= 3.0) {
            $letter_grades[] = 'B+';
        } elseif ($grade >= 2.7) {
            $letter_grades[] = 'B';
        } elseif ($grade >= 2.3) {
            $letter_grades[] = 'B-';
        } elseif ($grade >= 2.0) {
            $letter_grades[] = 'C+';
        } elseif ($grade >= 1.7) {
            $letter_grades[] = 'C';
        } elseif ($grade >= 1.3) {
            $letter_grades[] = 'C-';
        } elseif ($grade >= 1.0) {
            $letter_grades[] = 'D+';
        } elseif ($grade >= 0.7) {
            $letter_grades[] = 'D';
        } elseif ($grade >= 0.0) {
            $letter_grades[] = 'D-';
        } else {
            $letter_grades[] = 'E';
        }
    }
    return $letter_grades;
}

$grades = [4.0, 3, 1.7, 2, 3.5];
$grades = [4.0, 3, 1.7, 2, 3.5];
$grades = [4.0, 3, 1.7, 2, 3.5];
$grades = [4.0, 3, 1.7, 2, 3.5];
$grades = [4.0, 3, 1.7, 2, 3.5];
$grades = [4.0, 3, 1.7, 2, 3.5];
$grades = [4.0, 3, 1.7, 2, 3.5];
$grades = [4.

function candidate(...$args) {
    return numerical_letter_grade(...$args);
}

function test(): void {
    if (candidate(array(4.0, 3, 1.7, 2, 3.5)) !== array('A+', 'B', 'C-', 'C', 'A-')) { throw new Exception("Test failed!"); }
    if (candidate(array(1.2)) !== array('D+')) { throw new Exception("Test failed!"); }
    if (candidate(array(0.5)) !== array('D-')) { throw new Exception("Test failed!"); }
    if (candidate(array(0.0)) !== array('E')) { throw new Exception("Test failed!"); }
    if (candidate(array(1.0, 0.3, 1.5, 2.8, 3.3)) !== array('D', 'D-', 'C-', 'B', 'B+')) { throw new Exception("Test failed!"); }
    if (candidate(array(0.0, 0.7)) !== array('E', 'D-')) { throw new Exception("Test failed!"); }
}

test();