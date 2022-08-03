import scala.math._
import scala.collection.mutable._
object Problem {
    // For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
    // >>> flip_case('Hello')
    // 'hELLO'
    def flipCase(string : String) : String = {
        var result = ""
        for (i <- 0 until string.length) {
            if (string(i).isUpper) {
                result += string(i).toLower
            } else {
                result += string(i).toUpper
            }
        }
        return result

    }
    def main(args: Array[String]) = {
    assert(flipCase(("")).equals(("")));
    assert(flipCase(("Hello!")).equals(("hELLO!")));
    assert(flipCase(("These violent delights have violent ends")).equals(("tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")));
    }

}
