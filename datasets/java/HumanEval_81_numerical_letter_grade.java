import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // It is the last week of the semester and the teacher has to give the grades
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
    public static ArrayList<String> numerical_letter_grade(ArrayList<Float> grades) {
        ArrayList<String> letter_grades = new ArrayList<String>();
        for (Float grade : grades) {
            if (grade >= 4.0) {
                letter_grades.add("A+");
            } else if (grade >= 3.7) {
                letter_grades.add("A");
            } else if (grade >= 3.3) {
                letter_grades.add("A-");
            } else if (grade >= 3.0) {
                letter_grades.add("B+");
            } else if (grade >= 2.7) {
                letter_grades.add("B");
            } else if (grade >= 2.3) {
                letter_grades.add("B-");
            } else if (grade >= 2.0) {
                letter_grades.add("C+");
            } else if (grade >= 1.7) {
                letter_grades.add("C");
            } else if (grade >= 1.3) {
                letter_grades.add("C-");
            } else if (grade >= 1.0) {
                letter_grades.add("D+");
            } else if (grade >= 0.7) {
                letter_grades.add("D");
            } else if (grade >= 0.0) {
                letter_grades.add("D-");
            } else {
                letter_grades.add("E");
            }
        }
        return letter_grades;
    }
    public static ArrayList<String> letter_grade(ArrayList<Float> grades) {
        ArrayList<String> letter_grades = new ArrayList<String>();
        for (Float grade : grades) {
            if (grade >= 4.0) {
                letter_grades.add("A+");
            } else if (grade >= 3.7) {
                letter_grades.add("A");
            } else if (grade >= 3.3) {
                letter_grades.add("A-");
            } else if (grade >= 3.0) {
                letter_grades.add("B+");
            } else if (grade >= 2.7) {
                letter_

    }
    public static void main(String[] args) {
    numerical_letter_grade((new ArrayList<Float>(Arrays.asList((float)4.0f, (float)3l, (float)1.7f, (float)2l, (float)3.5f)))).equals((new ArrayList<String>(Arrays.asList((String)"A+", (String)"B", (String)"C-", (String)"C", (String)"A-"))));
    numerical_letter_grade((new ArrayList<Float>(Arrays.asList((float)1.2f)))).equals((new ArrayList<String>(Arrays.asList((String)"D+"))));
    numerical_letter_grade((new ArrayList<Float>(Arrays.asList((float)0.5f)))).equals((new ArrayList<String>(Arrays.asList((String)"D-"))));
    numerical_letter_grade((new ArrayList<Float>(Arrays.asList((float)0.0f)))).equals((new ArrayList<String>(Arrays.asList((String)"E"))));
    numerical_letter_grade((new ArrayList<Float>(Arrays.asList((float)1.0f, (float)0.3f, (float)1.5f, (float)2.8f, (float)3.3f)))).equals((new ArrayList<String>(Arrays.asList((String)"D", (String)"D-", (String)"C-", (String)"B", (String)"B+"))));
    numerical_letter_grade((new ArrayList<Float>(Arrays.asList((float)0.0f, (float)0.7f)))).equals((new ArrayList<String>(Arrays.asList((String)"E", (String)"D-"))));
    }

}
