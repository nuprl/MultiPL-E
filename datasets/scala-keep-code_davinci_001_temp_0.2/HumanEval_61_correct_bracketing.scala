import scala.math._
import scala.collection.mutable._
object Problem {
    // brackets is a string of "(" and ")".
    // return True if every opening bracket has a corresponding closing bracket.
    // >>> correct_bracketing("(")
    // False
    // >>> correct_bracketing("()")
    // True
    // >>> correct_bracketing("(()())")
    // True
    // >>> correct_bracketing(")(()")
    // False
    def correctBracketing(brackets : String) : Boolean = {
        var stack = new Stack[Char]()
        for (c <- brackets) {
            if (c == '(') {
                stack.push(c)
            } else if (c == ')') {
                if (stack.isEmpty) {
                    return false
                }
                stack.pop()
            }
        }
        stack.isEmpty

    }
    def main(args: Array[String]) = {
    assert(correctBracketing(("()")) == (true));
    assert(correctBracketing(("(()())")) == (true));
    assert(correctBracketing(("()()(()())()")) == (true));
    assert(correctBracketing(("()()((()()())())(()()(()))")) == (true));
    assert(correctBracketing(("((()())))")) == (false));
    assert(correctBracketing((")(()")) == (false));
    assert(correctBracketing(("(")) == (false));
    assert(correctBracketing(("((((")) == (false));
    assert(correctBracketing((")")) == (false));
    assert(correctBracketing(("(()")) == (false));
    assert(correctBracketing(("()()(()())())(()")) == (false));
    assert(correctBracketing(("()()(()())()))()")) == (false));
    }

}
