import scala.math._
import scala.collection.mutable._
object Problem {
    // You are given a list of two strings, both strings consist of open
    // parentheses '(' or close parentheses ')' only.
    // Your job is to check if it is possible to concatenate the two strings in
    // some order, that the resulting string will be good.
    // A string S is considered to be good if and only if all parentheses in S
    // are balanced. For example: the string '(())()' is good, while the string
    // '())' is not.
    // Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
    // Examples:
    // match_parens(['()(', ')']) == 'Yes'
    // match_parens([')', ')']) == 'No'
    def matchParens(lst : List[String]) : String = {
        if (lst.length == 0) {
            return "Yes"
        }
        val open = lst(0).count(_ == '(')
        val close = lst(0).count(_ == ')')
        if (open == close) {
            return matchParens(lst.tail)
        }
        if (open > close) {
            return "No"
        }
        val diff = open - close
        val new_lst = lst.map(_.drop(diff))
        return matchParens(new_lst)

    }
    def main(args: Array[String]) = {
    assert(matchParens((List[String]("()(", ")"))).equals(("Yes")));
    assert(matchParens((List[String](")", ")"))).equals(("No")));
    assert(matchParens((List[String]("(()(())", "())())"))).equals(("No")));
    assert(matchParens((List[String](")())", "(()()("))).equals(("Yes")));
    assert(matchParens((List[String]("(())))", "(()())(("))).equals(("Yes")));
    assert(matchParens((List[String]("()", "())"))).equals(("No")));
    assert(matchParens((List[String]("(()(", "()))()"))).equals(("Yes")));
    assert(matchParens((List[String]("((((", "((())"))).equals(("No")));
    assert(matchParens((List[String](")(()", "(()("))).equals(("No")));
    assert(matchParens((List[String](")(", ")("))).equals(("No")));
    assert(matchParens((List[String]("(", ")"))).equals(("Yes")));
    assert(matchParens((List[String](")", "("))).equals(("Yes")));
    }

}
