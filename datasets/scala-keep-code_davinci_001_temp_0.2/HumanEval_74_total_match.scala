import scala.math._
import scala.collection.mutable._
object Problem {
    // Write a function that accepts two lists of strings and returns the list that has 
    // total number of chars in the all strings of the list less than the other list.
    // if the two lists have the same number of chars, return the first list.
    // Examples
    // total_match([], []) ➞ []
    // total_match(['hi', 'admin'], ['hI', 'Hi']) ➞ ['hI', 'Hi']
    // total_match(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']) ➞ ['hi', 'admin']
    // total_match(['hi', 'admin'], ['hI', 'hi', 'hi']) ➞ ['hI', 'hi', 'hi']
    // total_match(['4'], ['1', '2', '3', '4', '5']) ➞ ['4']
    def totalMatch(lst1 : List[String], lst2 : List[String]) : List[String] = {
        val lst1Sum = lst1.foldLeft(0)((acc, s) => acc + s.length)
        val lst2Sum = lst2.foldLeft(0)((acc, s) => acc + s.length)
        if (lst1Sum < lst2Sum) lst1 else lst2

    }
    def main(args: Array[String]) = {
    assert(totalMatch((List[String]()), (List[String]())).equals((List[String]())));
    assert(totalMatch((List[String]("hi", "admin")), (List[String]("hi", "hi"))).equals((List[String]("hi", "hi"))));
    assert(totalMatch((List[String]("hi", "admin")), (List[String]("hi", "hi", "admin", "project"))).equals((List[String]("hi", "admin"))));
    assert(totalMatch((List[String]("4")), (List[String]("1", "2", "3", "4", "5"))).equals((List[String]("4"))));
    assert(totalMatch((List[String]("hi", "admin")), (List[String]("hI", "Hi"))).equals((List[String]("hI", "Hi"))));
    assert(totalMatch((List[String]("hi", "admin")), (List[String]("hI", "hi", "hi"))).equals((List[String]("hI", "hi", "hi"))));
    assert(totalMatch((List[String]("hi", "admin")), (List[String]("hI", "hi", "hii"))).equals((List[String]("hi", "admin"))));
    assert(totalMatch((List[String]()), (List[String]("this"))).equals((List[String]())));
    assert(totalMatch((List[String]("this")), (List[String]())).equals((List[String]())));
    }

}
