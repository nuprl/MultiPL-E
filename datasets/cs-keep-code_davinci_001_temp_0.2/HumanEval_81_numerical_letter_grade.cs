using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
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
    public static List<string> NumericalLetterGrade(List<float> grades) {
        List<string> result = new List<string>();
        foreach (float grade in grades) {
            if (grade >= 4.0) {
                result.Add("A+");
            } else if (grade >= 3.7) {
                result.Add("A");
            } else if (grade >= 3.3) {
                result.Add("A-");
            } else if (grade >= 3.0) {
                result.Add("B+");
            } else if (grade >= 2.7) {
                result.Add("B");
            } else if (grade >= 2.3) {
                result.Add("B-");
            } else if (grade >= 2.0) {
                result.Add("C+");
            } else if (grade >= 1.7) {
                result.Add("C");
            } else if (grade >= 1.3) {
                result.Add("C-");
            } else if (grade >= 1.0) {
                result.Add("D+");
            } else if (grade >= 0.7) {
                result.Add("D");
            } else if (grade >= 0.0) {
                result.Add("D-");
            } else {
                result.Add("E");
            }
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(NumericalLetterGrade((new List<float>(new float[]{(float)4.0f, (float)3, (float)1.7f, (float)2, (float)3.5f}))).Equals((new List<string>(new string[]{(string)"A+", (string)"B", (string)"C-", (string)"C", (string)"A-"}))));
    Debug.Assert(NumericalLetterGrade((new List<float>(new float[]{(float)1.2f}))).Equals((new List<string>(new string[]{(string)"D+"}))));
    Debug.Assert(NumericalLetterGrade((new List<float>(new float[]{(float)0.5f}))).Equals((new List<string>(new string[]{(string)"D-"}))));
    Debug.Assert(NumericalLetterGrade((new List<float>(new float[]{(float)0.0f}))).Equals((new List<string>(new string[]{(string)"E"}))));
    Debug.Assert(NumericalLetterGrade((new List<float>(new float[]{(float)1.0f, (float)0.3f, (float)1.5f, (float)2.8f, (float)3.3f}))).Equals((new List<string>(new string[]{(string)"D", (string)"D-", (string)"C-", (string)"B", (string)"B+"}))));
    Debug.Assert(NumericalLetterGrade((new List<float>(new float[]{(float)0.0f, (float)0.7f}))).Equals((new List<string>(new string[]{(string)"E", (string)"D-"}))));
    }

}
