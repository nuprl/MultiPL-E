import scala.math._
import scala.collection.mutable._
object Problem {
    // I think we all remember that feeling when the result of some long-awaited
    // event is finally known. The feelings and thoughts you have at that moment are
    // definitely worth noting down and comparing.
    // Your task is to determine if a person correctly guessed the results of a number of matches.
    // You are given two arrays of scores and guesses of equal length, where each index shows a match. 
    // Return an array of the same length denoting how far off each guess was. If they have guessed correctly,
    // the value is 0, and if not, the value is the absolute difference between the guess and the score.
    // example:
    // compare([1,2,3,4,5,1],[1,2,3,4,2,-2]) -> [0,0,0,0,3,3]
    // compare([0,5,0,0,0,4],[4,1,1,0,0,-2]) -> [4,4,1,0,0,6]
    def compare(game : List[Int], guess : List[Int]) : List[Int] = {
        // your code here
        return List[Int]()

    }
    def main(args: Array[String]) = {
    assert(compare((List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 5.toInt, 1.toInt)), (List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt, 2.toInt, -2.toInt))).equals((List[Int](0.toInt, 0.toInt, 0.toInt, 0.toInt, 3.toInt, 3.toInt))));
    assert(compare((List[Int](0.toInt, 0.toInt, 0.toInt, 0.toInt, 0.toInt, 0.toInt)), (List[Int](0.toInt, 0.toInt, 0.toInt, 0.toInt, 0.toInt, 0.toInt))).equals((List[Int](0.toInt, 0.toInt, 0.toInt, 0.toInt, 0.toInt, 0.toInt))));
    assert(compare((List[Int](1.toInt, 2.toInt, 3.toInt)), (List[Int](-1.toInt, -2.toInt, -3.toInt))).equals((List[Int](2.toInt, 4.toInt, 6.toInt))));
    assert(compare((List[Int](1.toInt, 2.toInt, 3.toInt, 5.toInt)), (List[Int](-1.toInt, 2.toInt, 3.toInt, 4.toInt))).equals((List[Int](2.toInt, 0.toInt, 0.toInt, 1.toInt))));
    }

}
