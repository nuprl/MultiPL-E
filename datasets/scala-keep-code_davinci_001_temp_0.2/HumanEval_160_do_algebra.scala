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
    def doAlgebra(op : List[String], operand : List[Int]) : Int = {
        // Write your code here
        var result = 0
        var i = 0
        var j = 0
        var k = 0
        var l = 0
        var m = 0
        var n = 0
        var o = 0
        var p = 0
        var q = 0
        var r = 0
        var s = 0
        var t = 0
        var u = 0
        var v = 0
        var w = 0
        var x = 0
        var y = 0
        var z = 0
        var a = 0
        var b = 0
        var c = 0
        var d = 0
        var e = 0
        var f = 0
        var g = 0
        var h = 0
        var i1 = 0
        var j1 = 0
        var k1 = 0
        var l1 = 0
        var m1 = 0
        var n1 = 0
        var o1 = 0
        var p1 = 0
        var q1 = 0
        var r1 = 0
        var s1 = 0
        var t1 = 0
        var u1 = 0
        var v1 = 0
        var w1 = 0
        var x1 = 0
        var y1 = 0
        var z1 = 0
        var a1 = 0
        var b1 = 0
        var c1 = 0
        var d1 = 0
        var e1 = 0
        var f1 = 0
        var g1 = 0
        var h1 = 0
        var i2 = 0
        var j2 = 0
        var k2 = 0
        var l2 = 0
        var m2 = 0
        var n2 = 0
        var o2 = 0
        var p2 = 0
        var q2 = 0
        var r2 = 0
        var s2 = 0
        var t2 = 0
        var u2 = 0
        var v2 = 0
        var w2 = 0
        var x2 = 0
        var y2 = 0
        var z2 = 0
        var a2 = 0
        var b2 = 0
        var c2 = 0
       

    }
    def main(args: Array[String]) = {
    assert(doAlgebra((List[String]("**", "*", "+")), (List[Int](2.toInt, 3.toInt, 4.toInt, 5.toInt))) == (37));
    assert(doAlgebra((List[String]("+", "*", "-")), (List[Int](2.toInt, 3.toInt, 4.toInt, 5.toInt))) == (9));
    assert(doAlgebra((List[String]("//", "*")), (List[Int](7.toInt, 3.toInt, 4.toInt))) == (8));
    }

}
