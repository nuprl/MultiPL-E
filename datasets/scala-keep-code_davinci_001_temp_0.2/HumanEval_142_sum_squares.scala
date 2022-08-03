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
    def sumSquares(lst : List[Long]) : Long = {
        var sum = 0L
        for(i <- 0 until lst.length){
            if(i % 3 == 0)
                sum += lst(i) * lst(i)
            else if(i % 4 == 0 && i % 3 != 0)
                sum += lst(i) * lst(i) * lst(i)
        }
        sum

    }
    def main(args: Array[String]) = {
    assert(sumSquares((List[Long](1l.toLong, 2l.toLong, 3l.toLong))) == (6l));
    assert(sumSquares((List[Long](1l.toLong, 4l.toLong, 9l.toLong))) == (14l));
    assert(sumSquares((List[Long]())) == (0l));
    assert(sumSquares((List[Long](1l.toLong, 1l.toLong, 1l.toLong, 1l.toLong, 1l.toLong, 1l.toLong, 1l.toLong, 1l.toLong, 1l.toLong))) == (9l));
    assert(sumSquares((List[Long](-1l.toLong, -1l.toLong, -1l.toLong, -1l.toLong, -1l.toLong, -1l.toLong, -1l.toLong, -1l.toLong, -1l.toLong))) == (-3l));
    assert(sumSquares((List[Long](0l.toLong))) == (0l));
    assert(sumSquares((List[Long](-1l.toLong, -5l.toLong, 2l.toLong, -1l.toLong, -5l.toLong))) == (-126l));
    assert(sumSquares((List[Long](-56l.toLong, -99l.toLong, 1l.toLong, 0l.toLong, -2l.toLong))) == (3030l));
    assert(sumSquares((List[Long](-1l.toLong, 0l.toLong, 0l.toLong, 0l.toLong, 0l.toLong, 0l.toLong, 0l.toLong, 0l.toLong, -1l.toLong))) == (0l));
    assert(sumSquares((List[Long](-16l.toLong, -9l.toLong, -2l.toLong, 36l.toLong, 36l.toLong, 26l.toLong, -20l.toLong, 25l.toLong, -40l.toLong, 20l.toLong, -4l.toLong, 12l.toLong, -26l.toLong, 35l.toLong, 37l.toLong))) == (-14196l));
    assert(sumSquares((List[Long](-1l.toLong, -3l.toLong, 17l.toLong, -1l.toLong, -15l.toLong, 13l.toLong, -1l.toLong, 14l.toLong, -14l.toLong, -12l.toLong, -5l.toLong, 14l.toLong, -14l.toLong, 6l.toLong, 13l.toLong, 11l.toLong, 16l.toLong, 16l.toLong, 4l.toLong, 10l.toLong))) == (-1448l));
    }

}
