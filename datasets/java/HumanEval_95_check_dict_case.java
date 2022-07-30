import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a dictionary, return True if all keys are strings in lower 
    // case or all keys are strings in upper case, else return False.
    // The function should return False is the given dictionary is empty.
    // Examples:
    // check_dict_case({"a":"apple", "b":"banana"}) should return True.
    // check_dict_case({"a":"apple", "A":"banana", "B":"banana"}) should return False.
    // check_dict_case({"a":"apple", "8":"banana", "a":"apple"}) should return False.
    // check_dict_case({"Name":"John", "Age":"36", "City":"Houston"}) should return False.
    // check_dict_case({"STATE":"NC", "ZIP":"12345" }) should return True.
    public static boolean check_dict_case(HashMap<String, String> dict) {
        boolean isLower = true;
        boolean isUpper = true;
        for (Map.Entry<String, String> entry : dict.entrySet()) {
            if (!entry.getKey().equals(entry.getKey().toLowerCase())) {
                isLower = false;
            }
            if (!entry.getKey().equals(entry.getKey().toUpperCase())) {
                isUpper = false;
            }
        }
        return isLower || isUpper;
    }
    // Given a dictionary, return True if all keys are strings in lower 
    // case or all keys are strings in upper case, else return False.
    // The function should return False is the given dictionary is empty.
    // Examples:
    // check_dict_case({"a":"apple", "b":"banana"}) should return True.
    // check_dict_case({"a":"apple", "A":"banana", "B":"banana"}) should return False.
    // check_dict_case({"a":"apple", "8":"banana", "a":"apple"}) should return False.
    // check_dict_case({"Name":"John", "Age":"36", "City":"Houston"}) should return False.
    // check_dict_case({"STATE":"NC", "ZIP":"12345" }) should return True.
    public static boolean check_dict_case(HashMap<String, String> dict) {
        boolean isLower = true;
        boolean isUpper = true;
        for (Map.Entry<String, String> entry : dict.entrySet()) {
            if (!entry.getKey().equals(entry.getKey().toLowerCase())) {
                isLower = false;
            }
            if (!entry.getKey().equals(entry.getKey().toUpperCase())) {
                isUpper = false;
            }
        }
        return isLower || isUpper;
    }
    // Given a dictionary, return True if all keys are strings in lower 
    // case or all keys are strings in upper case, else return False.
    // The function should return False

    }
    public static void main(String[] args) {
    assert(check_dict_case((new HashMap<String, String>(Map.of("p", "pineapple", "b", "banana")))) == (true));
    assert(check_dict_case((new HashMap<String, String>(Map.of("p", "pineapple", "A", "banana", "B", "banana")))) == (false));
    assert(check_dict_case((new HashMap<String, String>(Map.of("p", "pineapple", "5", "banana", "a", "apple")))) == (false));
    assert(check_dict_case((new HashMap<String, String>(Map.of("Name", "John", "Age", "36", "City", "Houston")))) == (false));
    assert(check_dict_case((new HashMap<String, String>(Map.of("STATE", "NC", "ZIP", "12345")))) == (true));
    assert(check_dict_case((new HashMap<String, String>(Map.of("fruit", "Orange", "taste", "Sweet")))) == (true));
    assert(check_dict_case((new HashMap<String, String>())) == (false));
    }

}
