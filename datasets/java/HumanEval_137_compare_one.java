import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Create a function that takes integers, floats, or strings representing
    // real numbers, and returns the larger variable in its given variable type.
    // Return None if the values are equal.
    // Note: If a real number is represented as a string, the floating point might be . or ,
    // compare_one(1, 2.5) ➞ 2.5
    // compare_one(1, "2,3") ➞ "2,3"
    // compare_one("5,1", "6") ➞ "6"
    // compare_one("1", 1) ➞ None
    public static Union_long_float_String_Optional.empty() compare_one(Union_long_float_String a, Union_long_float_String b) {
        if (a instanceof Long) {
            if (b instanceof Long) {
                return a.longValue() > b.longValue() ? a : b;
            } else if (b instanceof Float) {
                return a.longValue() > b.floatValue() ? a : b;
            } else if (b instanceof String) {
                return a.longValue() > Double.parseDouble(b.toString()) ? a : b;
            }
        } else if (a instanceof Float) {
            if (b instanceof Long) {
                return a.floatValue() > b.longValue() ? a : b;
            } else if (b instanceof Float) {
                return a.floatValue() > b.floatValue() ? a : b;
            } else if (b instanceof String) {
                return a.floatValue() > Double.parseDouble(b.toString()) ? a : b;
            }
        } else if (a instanceof String) {
            if (b instanceof Long) {
                return Double.parseDouble(a.toString()) > b.longValue() ? a : b;
            } else if (b instanceof Float) {
                return Double.parseDouble(a.toString()) > b.floatValue() ? a : b;
            } else if (b instanceof String) {
                return Double.parseDouble(a.toString()) > Double.parseDouble(b.toString()) ? a : b;
            }
        }
        return null;
    }
    // Create a function that takes two integers, and returns the larger value.
    // If the values are equal, return the first value.
    // compare_two(1, 2) ➞ 2
    // compare_two(1, "2") ➞ 1
    // compare_two("1", "2") ➞ 1
    public static Union_long_String compare_two(Union_long_String a, Union_long_String b) {
        if (a instanceof Long) {
            if (b instanceof Long) {
                return a.longValue() > b.longValue() ? a :

    }
    public static void main(String[] args) {
    compare_one((Union_long_float_String(1l)), (Union_long_float_String(2l))).equals(Optional.of(2l));
    compare_one((Union_long_float_String(1l)), (Union_long_float_String(2.5f))).equals(Optional.of(2.5f));
    compare_one((Union_long_float_String(2l)), (Union_long_float_String(3l))).equals(Optional.of(3l));
    compare_one((Union_long_float_String(5l)), (Union_long_float_String(6l))).equals(Optional.of(6l));
    compare_one((Union_long_float_String(1l)), (Union_long_float_String("2,3"))).equals(Optional.of("2,3"));
    compare_one((Union_long_float_String("5,1")), (Union_long_float_String("6"))).equals(Optional.of("6"));
    compare_one((Union_long_float_String("1")), (Union_long_float_String("2"))).equals(Optional.of("2"));
    compare_one((Union_long_float_String("1")), (Union_long_float_String(1l))).equals(Optional.empty());
    }

}
