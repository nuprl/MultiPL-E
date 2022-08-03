import scala.math._
import scala.collection.mutable._
object Problem {
    // Create a function that returns True if the last character
    // of a given string is an alphabetical character and is not
    // a part of a word, and False otherwise.
    // Note: "word" is a group of characters separated by space.
    // Examples:
    // check_if_last_char_is_a_letter("apple pie") ➞ False
    // check_if_last_char_is_a_letter("apple pi e") ➞ True
    // check_if_last_char_is_a_letter("apple pi e ") ➞ False
    // check_if_last_char_is_a_letter("") ➞ False
    def checkIfLastCharIsALetter(txt : String) : Boolean = {
        if(txt.length == 0) return false
        val lastChar = txt.last
        val isLastCharAlphabetical = lastChar.isLetter
        val isLastCharPartOfWord = txt.split(" ").last.contains(lastChar)
        isLastCharAlphabetical && !isLastCharPartOfWord

    }
    def main(args: Array[String]) = {
    assert(checkIfLastCharIsALetter(("apple")) == (false));
    assert(checkIfLastCharIsALetter(("apple pi e")) == (true));
    assert(checkIfLastCharIsALetter(("eeeee")) == (false));
    assert(checkIfLastCharIsALetter(("A")) == (true));
    assert(checkIfLastCharIsALetter(("Pumpkin pie ")) == (false));
    assert(checkIfLastCharIsALetter(("Pumpkin pie 1")) == (false));
    assert(checkIfLastCharIsALetter(("")) == (false));
    assert(checkIfLastCharIsALetter(("eeeee e ")) == (false));
    assert(checkIfLastCharIsALetter(("apple pie")) == (false));
    assert(checkIfLastCharIsALetter(("apple pi e ")) == (false));
    }

}
