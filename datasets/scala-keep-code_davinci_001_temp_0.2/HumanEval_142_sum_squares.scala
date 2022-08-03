import scala.math._
import scala.collection.mutable._
object Problem {
    // "
    // This function will take a list of integers. For all entries in the list, the function shall square the integer entry if its index is a 
    // multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not 
    // change the entries in the list whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries. 
    // Examples:
    // For lst = [1,2,3] the output should be 6
    // For lst = []  the output should be 0
    // For lst = [-1,-5,2,-1,-5]  the output should be -126
    def sumSquares(lst : List[Int]) : Int = {
        var sum = 0
        for(i <- 0 until lst.length){
            if(i % 3 == 0){
                sum += pow(lst(i),2).toInt
            }else if(i % 4 == 0 && i % 3 != 0){
                sum += pow(lst(i),3).toInt
            }
        }
        return sum

    }
    def main(args: Array[String]) = {
    assert(sumSquares((List[Int](1.toInt, 2.toInt, 3.toInt))) == (6));
    assert(sumSquares((List[Int](1.toInt, 4.toInt, 9.toInt))) == (14));
    assert(sumSquares((List[Int]())) == (0));
    assert(sumSquares((List[Int](1.toInt, 1.toInt, 1.toInt, 1.toInt, 1.toInt, 1.toInt, 1.toInt, 1.toInt, 1.toInt))) == (9));
    assert(sumSquares((List[Int](-1.toInt, -1.toInt, -1.toInt, -1.toInt, -1.toInt, -1.toInt, -1.toInt, -1.toInt, -1.toInt))) == (-3));
    assert(sumSquares((List[Int](0.toInt))) == (0));
    assert(sumSquares((List[Int](-1.toInt, -5.toInt, 2.toInt, -1.toInt, -5.toInt))) == (-126));
    assert(sumSquares((List[Int](-56.toInt, -99.toInt, 1.toInt, 0.toInt, -2.toInt))) == (3030));
    assert(sumSquares((List[Int](-1.toInt, 0.toInt, 0.toInt, 0.toInt, 0.toInt, 0.toInt, 0.toInt, 0.toInt, -1.toInt))) == (0));
    assert(sumSquares((List[Int](-16.toInt, -9.toInt, -2.toInt, 36.toInt, 36.toInt, 26.toInt, -20.toInt, 25.toInt, -40.toInt, 20.toInt, -4.toInt, 12.toInt, -26.toInt, 35.toInt, 37.toInt))) == (-14196));
    assert(sumSquares((List[Int](-1.toInt, -3.toInt, 17.toInt, -1.toInt, -15.toInt, 13.toInt, -1.toInt, 14.toInt, -14.toInt, -12.toInt, -5.toInt, 14.toInt, -14.toInt, 6.toInt, 13.toInt, 11.toInt, 16.toInt, 16.toInt, 4.toInt, 10.toInt))) == (-1448));
    }

}
