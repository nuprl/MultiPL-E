import scala.math._
import scala.collection.mutable._
object Problem {
    // Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
    // For each of the group, output the deepest level of nesting of parentheses.
    // E.g. (()()) has maximum two levels of nesting while ((())) has three.
    // >>> parse_nested_parens('(()()) ((())) () ((())()())')
    // [2, 3, 1, 3]
    def parseNestedParens(paren_string : String) : List[Int] = {
        val paren_list = paren_string.split(" ").toList
        paren_list.map(parseNestedParensHelper)

    }
    def main(args: Array[String]) = {
    assert(parseNestedParens(("(()()) ((())) () ((())()())")).equals((List[Int](2.toInt, 3.toInt, 1.toInt, 3.toInt))));
    assert(parseNestedParens(("() (()) ((())) (((())))")).equals((List[Int](1.toInt, 2.toInt, 3.toInt, 4.toInt))));
    assert(parseNestedParens(("(()(())((())))")).equals((List[Int](4.toInt))));
    }

}
