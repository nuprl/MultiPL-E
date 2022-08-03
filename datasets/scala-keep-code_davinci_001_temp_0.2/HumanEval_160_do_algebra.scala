import scala.math._
import scala.collection.mutable._
object Problem {
    // Given two lists operator, and operand. The first list has basic algebra operations, and 
    // the second list is a list of integers. Use the two given lists to build the algebric 
    // expression and return the evaluation of this expression.
    // The basic algebra operations:
    // Addition ( + ) 
    // Subtraction ( - ) 
    // Multiplication ( * ) 
    // Floor division ( // ) 
    // Exponentiation ( ** ) 
    // Example:
    // operator['+', '*', '-']
    // array = [2, 3, 4, 5]
    // result = 2 + 3 * 4 - 5
    // => result = 9
    // Note:
    // The length of operator list is equal to the length of operand list minus one.
    // Operand is a list of of non-negative integers.
    // Operator list has at least one operator, and operand list has at least two operands.
    def doAlgebra(op : List[String], operand : List[Long]) : Long = {
        var result = operand(0)
        for (i <- 1 until operand.length) {
            result = op(i - 1) match {
                case "+" => result + operand(i)
                case "-" => result - operand(i)
                case "*" => result * operand(i)
                case "/" => result / operand(i)
                case "**" => pow(result, operand(i)).toLong
            }
        }
        result

    }
    def main(args: Array[String]) = {
    assert(doAlgebra((List[String]("**", "*", "+")), (List[Long](2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong))) == (37l));
    assert(doAlgebra((List[String]("+", "*", "-")), (List[Long](2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong))) == (9l));
    assert(doAlgebra((List[String]("//", "*")), (List[Long](7l.toLong, 3l.toLong, 4l.toLong))) == (8l));
    }

}
