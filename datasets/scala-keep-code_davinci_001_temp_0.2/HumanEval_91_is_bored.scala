import scala.math._
import scala.collection.mutable._
object Problem {
    // You'll be given a string of words, and your task is to count the number
    // of boredoms. A boredom is a sentence that starts with the word "I".
    // Sentences are delimited by '.', '?' or '!'.
    // For example:
    // >>> is_bored("Hello world")
    // 0
    // >>> is_bored("The sky is blue. The sun is shining. I love this weather")
    // 1
    def isBored(S : String) : Int = {
        // Write your code here
        var bored = 0
        var i = 0
        while (i < S.length) {
            if (S(i) == '.' || S(i) == '?' || S(i) == '!') {
                if (S(i-1) == 'I') {
                    bored += 1
                }
            }
            i += 1
        }
        return bored

    }
    def main(args: Array[String]) = {
    assert(isBored(("Hello world")) == (0));
    assert(isBored(("Is the sky blue?")) == (0));
    assert(isBored(("I love It !")) == (1));
    assert(isBored(("bIt")) == (0));
    assert(isBored(("I feel good today. I will be productive. will kill It")) == (2));
    assert(isBored(("You and I are going for a walk")) == (0));
    }

}
