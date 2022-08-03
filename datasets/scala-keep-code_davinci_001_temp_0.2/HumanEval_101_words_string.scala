import scala.math._
import scala.collection.mutable._
object Problem {
    // You will be given a string of words separated by commas or spaces. Your task is
    // to split the string into words and return an array of the words.
    // For example:
    // words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
    // words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
    def wordsString(s : String) : List[String] = {
        // Split the string into an array of words
        // Return the array as a List
        s.split(",| ").toList

    }
    def main(args: Array[String]) = {
    assert(wordsString(("Hi, my name is John")).equals((List[String]("Hi", "my", "name", "is", "John"))));
    assert(wordsString(("One, two, three, four, five, six")).equals((List[String]("One", "two", "three", "four", "five", "six"))));
    assert(wordsString(("Hi, my name")).equals((List[String]("Hi", "my", "name"))));
    assert(wordsString(("One,, two, three, four, five, six,")).equals((List[String]("One", "two", "three", "four", "five", "six"))));
    assert(wordsString(("")).equals((List[String]())));
    assert(wordsString(("ahmed     , gamal")).equals((List[String]("ahmed", "gamal"))));
    }

}
