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
    def compare(game : List[Long], guess : List[Long]) : List[Long] = {
        // your code
        var result = List[Long]()
        for(i <- 0 until game.length){
            result = result :+ abs(game(i) - guess(i))
        }
        result

    }
    def main(args: Array[String]) = {
    assert(compare((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 5l.toLong, 1l.toLong)), (List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong, 2l.toLong, -2l.toLong))).equals((List[Long](0l.toLong, 0l.toLong, 0l.toLong, 0l.toLong, 3l.toLong, 3l.toLong))));
    assert(compare((List[Long](0l.toLong, 0l.toLong, 0l.toLong, 0l.toLong, 0l.toLong, 0l.toLong)), (List[Long](0l.toLong, 0l.toLong, 0l.toLong, 0l.toLong, 0l.toLong, 0l.toLong))).equals((List[Long](0l.toLong, 0l.toLong, 0l.toLong, 0l.toLong, 0l.toLong, 0l.toLong))));
    assert(compare((List[Long](1l.toLong, 2l.toLong, 3l.toLong)), (List[Long](-1l.toLong, -2l.toLong, -3l.toLong))).equals((List[Long](2l.toLong, 4l.toLong, 6l.toLong))));
    assert(compare((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 5l.toLong)), (List[Long](-1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong))).equals((List[Long](2l.toLong, 0l.toLong, 0l.toLong, 1l.toLong))));
    }

}
