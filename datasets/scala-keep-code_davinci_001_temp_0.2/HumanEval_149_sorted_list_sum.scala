import scala.math._
import scala.collection.mutable._
object Problem {
    // Write a function that accepts a list of strings as a parameter,
    // deletes the strings that have odd lengths from it,
    // and returns the resulted list with a sorted order,
    // The list is always a list of strings and never an array of numbers,
    // and it may contain duplicates.
    // The order of the list should be ascending by length of each word, and you
    // should return the list sorted by that rule.
    // If two words have the same length, sort the list alphabetically.
    // The function should return a list of strings in sorted order.
    // You may assume that all words will have the same length.
    // For example:
    // assert list_sort(["aa", "a", "aaa"]) => ["aa"]
    // assert list_sort(["ab", "a", "aaa", "cd"]) => ["ab", "cd"]
    def sortedListSum(lst : List[String]) : List[String] = {
        val sorted = lst.sortWith((a, b) => a.length < b.length)
        val odd = sorted.filter(s => s.length % 2 != 0)
        return odd

    }
    def main(args: Array[String]) = {
    assert(sortedListSum((List[String]("aa", "a", "aaa"))).equals((List[String]("aa"))));
    assert(sortedListSum((List[String]("school", "AI", "asdf", "b"))).equals((List[String]("AI", "asdf", "school"))));
    assert(sortedListSum((List[String]("d", "b", "c", "a"))).equals((List[String]())));
    assert(sortedListSum((List[String]("d", "dcba", "abcd", "a"))).equals((List[String]("abcd", "dcba"))));
    assert(sortedListSum((List[String]("AI", "ai", "au"))).equals((List[String]("AI", "ai", "au"))));
    assert(sortedListSum((List[String]("a", "b", "b", "c", "c", "a"))).equals((List[String]())));
    assert(sortedListSum((List[String]("aaaa", "bbbb", "dd", "cc"))).equals((List[String]("cc", "dd", "aaaa", "bbbb"))));
    }

}
