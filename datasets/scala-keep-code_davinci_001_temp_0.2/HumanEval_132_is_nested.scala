import scala.math._
import scala.collection.mutable._
object Problem {
    // Create a function that takes a string as input which contains only square brackets.
    // The function should return True if and only if there is a valid subsequence of brackets 
    // where at least one bracket in the subsequence is nested.
    // is_nested('[[]]') ➞ True
    // is_nested('[]]]]]]][[[[[]') ➞ False
    // is_nested('[][]') ➞ False
    // is_nested('[]') ➞ False
    // is_nested('[[][]]') ➞ True
    // is_nested('[[]][[') ➞ True
    def isNested(string : String) : Boolean = {
        var stack = new Stack[Char]()
        var isNested = false
        for(i <- 0 until string.length){
            if(string(i) == '['){
                stack.push(string(i))
            }else if(string(i) == ']'){
                if(stack.isEmpty){
                    isNested = false
                }else{
                    stack.pop()
                    isNested = true
                }
            }
        }
        isNested

    }
    def main(args: Array[String]) = {
    assert(isNested(("[[]]")) == (true));
    assert(isNested(("[]]]]]]][[[[[]")) == (false));
    assert(isNested(("[][]")) == (false));
    assert(isNested(("[]")) == (false));
    assert(isNested(("[[[[]]]]")) == (true));
    assert(isNested(("[]]]]]]]]]]")) == (false));
    assert(isNested(("[][][[]]")) == (true));
    assert(isNested(("[[]")) == (false));
    assert(isNested(("[]]")) == (false));
    assert(isNested(("[[]][[")) == (true));
    assert(isNested(("[[][]]")) == (true));
    assert(isNested(("")) == (false));
    assert(isNested(("[[[[[[[[")) == (false));
    assert(isNested(("]]]]]]]]")) == (false));
    }

}
