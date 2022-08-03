import scala.math._
import scala.collection.mutable._
object Problem {
    // Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
    // For each of the group, output the deepest level of nesting of parentheses.
    // E.g. (()()) has maximum two levels of nesting while ((())) has three.
    // >>> parse_nested_parens('(()()) ((())) () ((())()())')
    // [2, 3, 1, 3]
    def parseNestedParens(paren_string : String) : List[Long] = {
        var max_level = 0L
        var level = 0L
        var max_levels = List[Long]()
        for (i <- 0 until paren_string.length) {
            if (paren_string(i) == '(') {
                level += 1
                if (level > max_level) {
                    max_level = level
                }
            } else if (paren_string(i) == ')') {
                level -= 1
            }
        }
        for (i <- 0 until max_level) {
            max_levels = max_level :: max_levels
        }
        return max_levels

    }
    def main(args: Array[String]) = {
    assert(parseNestedParens(("(()()) ((())) () ((())()())")).equals((List[Long](2l.toLong, 3l.toLong, 1l.toLong, 3l.toLong))));
    assert(parseNestedParens(("() (()) ((())) (((())))")).equals((List[Long](1l.toLong, 2l.toLong, 3l.toLong, 4l.toLong))));
    assert(parseNestedParens(("(()(())((())))")).equals((List[Long](4l.toLong))));
    }

}
