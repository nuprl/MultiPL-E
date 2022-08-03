import scala.math._
import scala.collection.mutable._
object Problem {
    // Write a function which sorts the given list of integers
    // in ascending order according to the sum of their digits.
    // Note: if there are several items with similar sum of their digits,
    // order them based on their index in original list.
    // For example:
    // >>> order_by_points([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]
    // >>> order_by_points([]) == []
    def orderByPoints(nums : List[Int]) : List[Int] = {
        var result = List[Int]()
        var sum = 0
        var sumList = List[Int]()
        for(i <- 0 until nums.length){
            sum = 0
            for(j <- 0 until nums(i).toString.length){
                sum += nums(i).toString.charAt(j).toInt - 48
            }
            sumList = sumList :+ sum
        }
        var sumList2 = sumList.zipWithIndex
        var sumList3 = sumList2.sortBy(_._1)
        for(i <- 0 until sumList3.length){
            result = result :+ nums(sumList3(i)._2)
        }
        result

    }
    def main(args: Array[String]) = {
    assert(orderByPoints((List[Int](1.toInt, 11.toInt, -1.toInt, -11.toInt, -12.toInt))).equals((List[Int](-1.toInt, -11.toInt, 1.toInt, -12.toInt, 11.toInt))));
    assert(orderByPoints((List[Int](1234.toInt, 423.toInt, 463.toInt, 145.toInt, 2.toInt, 423.toInt, 423.toInt, 53.toInt, 6.toInt, 37.toInt, 3457.toInt, 3.toInt, 56.toInt, 0.toInt, 46.toInt))).equals((List[Int](0.toInt, 2.toInt, 3.toInt, 6.toInt, 53.toInt, 423.toInt, 423.toInt, 423.toInt, 1234.toInt, 145.toInt, 37.toInt, 46.toInt, 56.toInt, 463.toInt, 3457.toInt))));
    assert(orderByPoints((List[Int]())).equals((List[Int]())));
    assert(orderByPoints((List[Int](1.toInt, -11.toInt, -32.toInt, 43.toInt, 54.toInt, -98.toInt, 2.toInt, -3.toInt))).equals((List[Int](-3.toInt, -32.toInt, -98.toInt, -11.toInt, 1.toInt, 2.toInt, 43.toInt, 54.toInt))));
    assert(orderByPoints((List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 5.toInt, 6.toInt, 7.toInt, 8.toInt, 9.toInt, 10.toInt, 11.toInt))).equals((List[Int](1.toInt, 10.toInt, 2.toInt, 11.toInt, 3.toInt, 4.toInt, 5.toInt, 6.toInt, 7.toInt, 8.toInt, 9.toInt))));
    assert(orderByPoints((List[Int](0.toInt, 6.toInt, 6.toInt, -76.toInt, -21.toInt, 23.toInt, 4.toInt))).equals((List[Int](-76.toInt, -21.toInt, 0.toInt, 4.toInt, 23.toInt, 6.toInt, 6.toInt))));
    }

}
