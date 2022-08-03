import scala.math._
import scala.collection.mutable._
object Problem {
    // Input is a space-delimited string of numberals from 'zero' to 'nine'.
    // Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
    // Return the string with numbers sorted from smallest to largest
    // >>> sort_numbers('three one five')
    // 'one three five'
    def sortNumbers(numbers : String) : String = {
        val nums = numbers.split(" ")
        val sorted = nums.sortWith((a, b) => a.toInt < b.toInt)
        sorted.mkString(" ")

    }
    def main(args: Array[String]) = {
    assert(sortNumbers(("")).equals(("")));
    assert(sortNumbers(("three")).equals(("three")));
    assert(sortNumbers(("three five nine")).equals(("three five nine")));
    assert(sortNumbers(("five zero four seven nine eight")).equals(("zero four five seven eight nine")));
    assert(sortNumbers(("six five four three two one zero")).equals(("zero one two three four five six")));
    }

}
