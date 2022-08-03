import scala.math._
import scala.collection.mutable._
object Problem {
    // You are given a string representing a sentence,
    // the sentence contains some words separated by a space,
    // and you have to return a string that contains the words from the original sentence,
    // whose lengths are prime numbers,
    // the order of the words in the new string should be the same as the original one.
    // Example 1:
    // Input: sentence = "This is a test"
    // Output: "is"
    // Example 2:
    // Input: sentence = "lets go for swimming"
    // Output: "go for"
    // Constraints:
    // * 1 <= len(sentence) <= 100
    // * sentence contains only letters
    def wordsInSentence(sentence : String) : String = {
        var words = sentence.split(" ")
        var result = new ArrayBuffer[String]()
        for (word <- words) {
            if (isPrime(word.length)) {
                result += word
            }
        }
        return result.mkString(" ")

    }
    def main(args: Array[String]) = {
    assert(wordsInSentence(("This is a test")).equals(("is")));
    assert(wordsInSentence(("lets go for swimming")).equals(("go for")));
    assert(wordsInSentence(("there is no place available here")).equals(("there is no place")));
    assert(wordsInSentence(("Hi I am Hussein")).equals(("Hi am Hussein")));
    assert(wordsInSentence(("go for it")).equals(("go for it")));
    assert(wordsInSentence(("here")).equals(("")));
    assert(wordsInSentence(("here is")).equals(("is")));
    }

}
