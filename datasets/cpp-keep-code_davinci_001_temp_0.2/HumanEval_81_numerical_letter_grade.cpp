#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
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
std::vector<std::string> numerical_letter_grade(std::vector<float> grades) {
    std::vector<std::string> letter_grades;
    for (auto grade : grades) {
        if (grade >= 4.0) {
            letter_grades.push_back("A+");
        } else if (grade >= 3.7) {
            letter_grades.push_back("A");
        } else if (grade >= 3.3) {
            letter_grades.push_back("A-");
        } else if (grade >= 3.0) {
            letter_grades.push_back("B+");
        } else if (grade >= 2.7) {
            letter_grades.push_back("B");
        } else if (grade >= 2.3) {
            letter_grades.push_back("B-");
        } else if (grade >= 2.0) {
            letter_grades.push_back("C+");
        } else if (grade >= 1.7) {
            letter_grades.push_back("C");
        } else if (grade >= 1.3) {
            letter_grades.push_back("C-");
        } else if (grade >= 1.0) {
            letter_grades.push_back("D+");
        } else if (grade >= 0.7) {
            letter_grades.push_back("D");
        } else if (grade >= 0.0) {
            letter_grades.push_back("D-");
        } else {
            letter_grades.push_back("E");
        }
    }
    return letter_grades;
}


int main() {
    auto candidate = numerical_letter_grade;
    assert(candidate((std::vector<float>({4.0, 3, 1.7, 2, 3.5}))) == (std::vector<std::string>({"A+", "B", "C-", "C", "A-"})));
    assert(candidate((std::vector<float>({1.2}))) == (std::vector<std::string>({"D+"})));
    assert(candidate((std::vector<float>({0.5}))) == (std::vector<std::string>({"D-"})));
    assert(candidate((std::vector<float>({0.0}))) == (std::vector<std::string>({"E"})));
    assert(candidate((std::vector<float>({1.0, 0.3, 1.5, 2.8, 3.3}))) == (std::vector<std::string>({"D", "D-", "C-", "B", "B+"})));
    assert(candidate((std::vector<float>({0.0, 0.7}))) == (std::vector<std::string>({"E", "D-"})));
}