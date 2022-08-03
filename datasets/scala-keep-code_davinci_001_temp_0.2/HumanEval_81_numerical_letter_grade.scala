import scala.math._
import scala.collection.mutable._
object Problem {
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
    def numericalLetterGrade(grades : List[Float]) : List[String] = {
        var result = List[String]()
        for (i <- 0 until grades.length) {
            var grade = grades(i)
            if (grade >= 4.0) {
                result = result :+ "A+"
            } else if (grade >= 3.7) {
                result = result :+ "A"
            } else if (grade >= 3.3) {
                result = result :+ "A-"
            } else if (grade >= 3.0) {
                result = result :+ "B+"
            } else if (grade >= 2.7) {
                result = result :+ "B"
            } else if (grade >= 2.3) {
                result = result :+ "B-"
            } else if (grade >= 2.0) {
                result = result :+ "C+"
            } else if (grade >= 1.7) {
                result = result :+ "C"
            } else if (grade >= 1.3) {
                result = result :+ "C-"
            } else if (grade >= 1.0) {
                result = result :+ "D+"
            } else if (grade >= 0.7) {
                result = result :+ "D"
            } else if (grade >= 0.0) {
                result = result :+ "D-"
            } else {
                result = result :+ "E"
            }
        }
        return result

    }
    def main(args: Array[String]) = {
    assert(numericalLetterGrade((List[Float](4.0f.toFloat, 3.toFloat, 1.7f.toFloat, 2.toFloat, 3.5f.toFloat))).equals((List[String]("A+", "B", "C-", "C", "A-"))));
    assert(numericalLetterGrade((List[Float](1.2f.toFloat))).equals((List[String]("D+"))));
    assert(numericalLetterGrade((List[Float](0.5f.toFloat))).equals((List[String]("D-"))));
    assert(numericalLetterGrade((List[Float](0.0f.toFloat))).equals((List[String]("E"))));
    assert(numericalLetterGrade((List[Float](1.0f.toFloat, 0.3f.toFloat, 1.5f.toFloat, 2.8f.toFloat, 3.3f.toFloat))).equals((List[String]("D", "D-", "C-", "B", "B+"))));
    assert(numericalLetterGrade((List[Float](0.0f.toFloat, 0.7f.toFloat))).equals((List[String]("E", "D-"))));
    }

}
