import scala.math._
import scala.collection.mutable._
object Problem {
    // Checks if given string is a palindrome
    // >>> is_palindrome('')
    // True
    // >>> is_palindrome('aba')
    // True
    // >>> is_palindrome('aaaaa')
    // True
    // >>> is_palindrome('zbcd')
    // False
    def isPalindrome(text : String) : Boolean = {
        val length = text.length
        for (i <- 0 until length / 2) {
            if (text(i) != text(length - i - 1)) {
                return false
            }
        }
        return true

    }
    def main(args: Array[String]) = {
    assert(isPalindrome(("")) == (true));
    assert(isPalindrome(("aba")) == (true));
    assert(isPalindrome(("aaaaa")) == (true));
    assert(isPalindrome(("zbcd")) == (false));
    assert(isPalindrome(("xywyx")) == (true));
    assert(isPalindrome(("xywyz")) == (false));
    assert(isPalindrome(("xywzx")) == (false));
    }

}
