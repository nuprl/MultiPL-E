import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a dictionary, return True if all keys are strings in lower 
    // case or all keys are strings in upper case, else return False.
    // The function should return False is the given dictionary is empty.
    // Examples:
    // check_dict_case({"a":"apple", "b":"banana"}) should return True.
    // check_dict_case({"a":"apple", "A":"banana", "B":"banana"}) should return False.
    // check_dict_case({"a":"apple", "8":"banana", "a":"apple"}) should return False.
    // check_dict_case({"Name":"John", "Age":"36", "City":"Houston"}) should return False.
    // check_dict_case({"STATE":"NC", "ZIP":"12345" }) should return True.
    def checkDictCase(dict : Map[String,String]) : Boolean = {
        var result = true
        if (dict.size == 0) {
            result = false
        } else {
            for (key <- dict.keys) {
                if (key.matches("[A-Z]+")) {
                    result = false
                }
            }
        }
        result

    }
    def main(args: Array[String]) = {
    assert(checkDictCase((Map[String,String]("p" -> "pineapple", "b" -> "banana"))) == (true));
    assert(checkDictCase((Map[String,String]("p" -> "pineapple", "A" -> "banana", "B" -> "banana"))) == (false));
    assert(checkDictCase((Map[String,String]("p" -> "pineapple", "5" -> "banana", "a" -> "apple"))) == (false));
    assert(checkDictCase((Map[String,String]("Name" -> "John", "Age" -> "36", "City" -> "Houston"))) == (false));
    assert(checkDictCase((Map[String,String]("STATE" -> "NC", "ZIP" -> "12345"))) == (true));
    assert(checkDictCase((Map[String,String]("fruit" -> "Orange", "taste" -> "Sweet"))) == (true));
    assert(checkDictCase((Map[String,String]())) == (false));
    }

}
