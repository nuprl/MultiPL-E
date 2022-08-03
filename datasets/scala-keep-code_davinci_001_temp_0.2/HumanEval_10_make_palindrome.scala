import scala.math._
import scala.collection.mutable._
object Problem {
    // Find the shortest palindrome that begins with a supplied string.
    // Algorithm idea is simple:
    // - Find the longest postfix of supplied string that is a palindrome.
    // - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
    // >>> make_palindrome('')
    // ''
    // >>> make_palindrome('cat')
    // 'catac'
    // >>> make_palindrome('cata')
    // 'catac'
    def makePalindrome(string : String) : String = {
        val longestPalindrome = findLongestPalindrome(string)
        val prefix = string.substring(0, string.length - longestPalindrome.length)
        prefix + longestPalindrome + prefix.reverse

    }
    def main(args: Array[String]) = {
    assert(makePalindrome(("")).equals(("")));
    assert(makePalindrome(("x")).equals(("x")));
    assert(makePalindrome(("xyz")).equals(("xyzyx")));
    assert(makePalindrome(("xyx")).equals(("xyx")));
    assert(makePalindrome(("jerry")).equals(("jerryrrej")));
    }

}
