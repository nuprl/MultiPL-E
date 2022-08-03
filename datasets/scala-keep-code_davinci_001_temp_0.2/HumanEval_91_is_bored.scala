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
    def isBored(S : String) : Long = {
        // Write your code here
        return 0

    }
    def main(args: Array[String]) = {
    assert(isBored(("Hello world")) == (0l));
    assert(isBored(("Is the sky blue?")) == (0l));
    assert(isBored(("I love It !")) == (1l));
    assert(isBored(("bIt")) == (0l));
    assert(isBored(("I feel good today. I will be productive. will kill It")) == (2l));
    assert(isBored(("You and I are going for a walk")) == (0l));
    }

}
