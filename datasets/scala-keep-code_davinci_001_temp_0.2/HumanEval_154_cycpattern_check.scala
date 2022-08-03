import scala.math._
import scala.collection.mutable._
object Problem {
    // You are given 2 words. You need to return True if the second word or any of its rotations is a substring in the first word
    // cycpattern_check("abcd","abd") => False
    // cycpattern_check("hello","ell") => True
    // cycpattern_check("whassup","psus") => False
    // cycpattern_check("abab","baa") => True
    // cycpattern_check("efef","eeff") => False
    // cycpattern_check("himenss","simen") => True
    def cycpatternCheck(a : String, b : String) : Boolean = {
        // Write your code here
        var flag = false
        for(i <- 0 to b.length-1){
            if(a.contains(b.substring(i,i+b.length))){
                flag = true
            }
        }
        flag

    }
    def main(args: Array[String]) = {
    assert(cycpatternCheck(("xyzw"), ("xyw")) == (false));
    assert(cycpatternCheck(("yello"), ("ell")) == (true));
    assert(cycpatternCheck(("whattup"), ("ptut")) == (false));
    assert(cycpatternCheck(("efef"), ("fee")) == (true));
    assert(cycpatternCheck(("abab"), ("aabb")) == (false));
    assert(cycpatternCheck(("winemtt"), ("tinem")) == (true));
    }

}
