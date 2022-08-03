import scala.math._
import scala.collection.mutable._
object Problem {
    // Given an array of integers, sort the integers that are between 1 and 9 inclusive,
    // reverse the resulting array, and then replace each digit by its corresponding name from
    // "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".
    // For example:
    // arr = [2, 1, 1, 4, 5, 8, 2, 3]   
    // -> sort arr -> [1, 1, 2, 2, 3, 4, 5, 8] 
    // -> reverse arr -> [8, 5, 4, 3, 2, 2, 1, 1]
    // return ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
    // If the array is empty, return an empty array:
    // arr = []
    // return []
    // If the array has any strange number ignore it:
    // arr = [1, -1 , 55] 
    // -> sort arr -> [-1, 1, 55]
    // -> reverse arr -> [55, 1, -1]
    // return = ['One']
    def byLength(arr : List[Long]) : List[String] = {
        var res = List[String]()
        var temp = List[Long]()
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
       

    }
    def main(args: Array[String]) = {
    assert(byLength((List[Long](2l.toLong, 1l.toLong, 1l.toLong, 4l.toLong, 5l.toLong, 8l.toLong, 2l.toLong, 3l.toLong))).equals((List[String]("Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"))));
    assert(byLength((List[Long]())).equals((List[String]())));
    assert(byLength((List[Long](1l.toLong, -1l.toLong, 55l.toLong))).equals((List[String]("One"))));
    assert(byLength((List[Long](1l.toLong, -1l.toLong, 3l.toLong, 2l.toLong))).equals((List[String]("Three", "Two", "One"))));
    assert(byLength((List[Long](9l.toLong, 4l.toLong, 8l.toLong))).equals((List[String]("Nine", "Eight", "Four"))));
    }

}
