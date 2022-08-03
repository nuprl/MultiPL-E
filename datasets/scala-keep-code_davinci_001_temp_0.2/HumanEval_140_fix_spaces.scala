import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a string text, replace all spaces in it with underscores, 
    // and if a string has more than 2 consecutive spaces, 
    // then replace all consecutive spaces with - 
    // fix_spaces("Example") == "Example"
    // fix_spaces("Example 1") == "Example_1"
    // fix_spaces(" Example 2") == "_Example_2"
    // fix_spaces(" Example   3") == "_Example-3"
    def fixSpaces(text : String) : String = {
        // your code here
        return text

    }
    def main(args: Array[String]) = {
    assert(fixSpaces(("Example")).equals(("Example")));
    assert(fixSpaces(("Mudasir Hanif ")).equals(("Mudasir_Hanif_")));
    assert(fixSpaces(("Yellow Yellow  Dirty  Fellow")).equals(("Yellow_Yellow__Dirty__Fellow")));
    assert(fixSpaces(("Exa   mple")).equals(("Exa-mple")));
    assert(fixSpaces(("   Exa 1 2 2 mple")).equals(("-Exa_1_2_2_mple")));
    }

}
