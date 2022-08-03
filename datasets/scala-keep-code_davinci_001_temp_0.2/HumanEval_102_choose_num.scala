import scala.math._
import scala.collection.mutable._
object Problem {
    // This function takes two positive numbers x and y and returns the
    // biggest even integer number that is in the range [x, y] inclusive. If 
    // there's no such number, then the function should return -1.
    // For example:
    // choose_num(12, 15) = 14
    // choose_num(13, 12) = -1
    def chooseNum(x : Long, y : Long) : Long = {
        // IMPLEMENT THIS FUNCTION
        var num = -1L
        if(x%2==0 && y%2==0){
            num = x
            if(x>y){
                num = y
            }
            if(x==y){
                num = -1
            }
        }
        return num

    }
    def main(args: Array[String]) = {
    assert(chooseNum((12l), (15l)) == (14l));
    assert(chooseNum((13l), (12l)) == (-1l));
    assert(chooseNum((33l), (12354l)) == (12354l));
    assert(chooseNum((5234l), (5233l)) == (-1l));
    assert(chooseNum((6l), (29l)) == (28l));
    assert(chooseNum((27l), (10l)) == (-1l));
    assert(chooseNum((7l), (7l)) == (-1l));
    assert(chooseNum((546l), (546l)) == (546l));
    }

}
