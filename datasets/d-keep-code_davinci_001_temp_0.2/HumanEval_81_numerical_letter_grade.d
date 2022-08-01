import std.typecons;
import std.math;
/*
It is the last week of the semester and the teacher has to give the grades
    to students. The teacher has been making her own algorithm for grading.
    The only problem is, she has lost the code she used for grading.
    She has given you a list of GPAs for some students and you have to write 
    a function that can output a list of letter grades using the following table:
             GPA       |    Letter grade
              4.0                A+
            > 3.7                A 
            > 3.3                A- 
            > 3.0                B+
            > 2.7                B 
            > 2.3                B-
            > 2.0                C+
            > 1.7                C
            > 1.3                C-
            > 1.0                D+ 
            > 0.7                D 
            > 0.0                D-
              0.0                E
    

    Example:
    grade_equation([4.0, 3, 1.7, 2, 3.5]) ==> ['A+', 'B', 'C-', 'C', 'A-']
    
*/
string[] numerical_letter_grade(float[] grades) 
{
    string[] letter_grades = new string[grades.length];
    for (int i = 0; i < grades.length; i++)
    {
        if (grades[i] >= 4.0)
        {
            letter_grades[i] = "A+";
        }
        else if (grades[i] >= 3.7)
        {
            letter_grades[i] = "A";
        }
        else if (grades[i] >= 3.3)
        {
            letter_grades[i] = "A-";
        }
        else if (grades[i] >= 3.0)
        {
            letter_grades[i] = "B+";
        }
        else if (grades[i] >= 2.7)
        {
            letter_grades[i] = "B";
        }
        else if (grades[i] >= 2.3)
        {
            letter_grades[i] = "B-";
        }
        else if (grades[i] >= 2.0)
        {
            letter_grades[i] = "C+";
        }
        else if (grades[i] >= 1.7)
        {
            letter_grades[i] = "C";
        }
        else if (grades[i] >= 1.3)
        {
            letter_grades[i] = "C-";
        }
        else if (grades[i] >= 1.0)
        {
            letter_grades[i] = "D+";
        }
        else if (grades[i] >= 0.7)
        {
            letter_grades[i] = "D";
        }
        else if (grades[i] >= 0.0)
        {
            letter_grades[i] = "D-";
        }
        else
        {
            letter_grades[i] = "E";
        }
    }
    return letter_grades;
}

unittest
{
    alias candidate = numerical_letter_grade;

    assert(candidate([4.0, 3L, 1.7, 2L, 3.5]) == ["A+", "B", "C-", "C", "A-"]);
    assert(candidate([1.2]) == ["D+"]);
    assert(candidate([0.5]) == ["D-"]);
    assert(candidate([0.0]) == ["E"]);
    assert(candidate([1.0, 0.3, 1.5, 2.8, 3.3]) == ["D", "D-", "C-", "B", "B+"]);
    assert(candidate([0.0, 0.7]) == ["E", "D-"]);
}
void main(){}