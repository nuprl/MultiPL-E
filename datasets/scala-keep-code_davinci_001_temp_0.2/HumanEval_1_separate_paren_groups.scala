import scala.math._
import scala.collection.mutable._
object Problem {
    // Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
    // separate those group into separate strings and return the list of those.
    // Separate groups are balanced (each open brace is properly closed) and not nested within each other
    // Ignore any spaces in the input string.
    // >>> separate_paren_groups('( ) (( )) (( )( ))')
    // ['()', '(())', '(()())']
    def separateParenGroups(paren_string : String) : List[String] = {
        var result = List[String]()
        var current_string = ""
        var current_index = 0
        while (current_index < paren_string.length) {
            if (paren_string(current_index) == '(') {
                current_string += paren_string(current_index)
                current_index += 1
                var balance = 1
                while (balance > 0) {
                    if (current_index < paren_string.length) {
                        if (paren_string(current_index) == '(') {
                            balance += 1
                        } else if (paren_string(current_index) == ')') {
                            balance -= 1
                        }
                        current_string += paren_string(current_index)
                        current_index += 1
                    } else {
                        current_index = paren_string.length
                    }
                }
                result = current_string :: result
                current_string = ""
            } else {
                current_index += 1
            }
        }
        result

    }
    def main(args: Array[String]) = {
    assert(separateParenGroups(("(()()) ((())) () ((())()())")).equals((List[String]("(()())", "((()))", "()", "((())()())"))));
    assert(separateParenGroups(("() (()) ((())) (((())))")).equals((List[String]("()", "(())", "((()))", "(((())))"))));
    assert(separateParenGroups(("(()(())((())))")).equals((List[String]("(()(())((())))"))));
    assert(separateParenGroups(("( ) (( )) (( )( ))")).equals((List[String]("()", "(())", "(()())"))));
    }

}
