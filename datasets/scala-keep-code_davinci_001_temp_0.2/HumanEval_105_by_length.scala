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
    def byLength(arr : List[Int]) : List[String] = {
        var result = List[String]()
        var arr2 = arr.sorted
        var arr3 = arr2.reverse
        for (i <- 0 until arr3.length) {
            if (arr3(i) > 0 && arr3(i) < 10) {
                result = result :+ arr3(i).toString
            }
        }
        return result

    }
    def main(args: Array[String]) = {
    assert(byLength((List[Int](2.toInt, 1.toInt, 1.toInt, 4.toInt, 5.toInt, 8.toInt, 2.toInt, 3.toInt))).equals((List[String]("Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"))));
    assert(byLength((List[Int]())).equals((List[String]())));
    assert(byLength((List[Int](1.toInt, -1.toInt, 55.toInt))).equals((List[String]("One"))));
    assert(byLength((List[Int](1.toInt, -1.toInt, 3.toInt, 2.toInt))).equals((List[String]("Three", "Two", "One"))));
    assert(byLength((List[Int](9.toInt, 4.toInt, 8.toInt))).equals((List[String]("Nine", "Eight", "Four"))));
    }

}
