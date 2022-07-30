import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Create a function that takes a value (string) representing a number
    // and returns the closest integer to it. If the number is equidistant
    // from two integers, round it away from zero.
    // Examples
    // >>> closest_integer("10")
    // 10
    // >>> closest_integer("15.3")
    // 15
    // Note:
    // Rounding away from zero means that if the given number is equidistant
    // from two integers, the one you should return is the one that is the
    // farthest from zero. For example closest_integer("14.5") should
    // return 15 and closest_integer("-14.5") should return -15.
    public static long closest_integer(String value) {
        // your code here
        return 0;
    }
}
Problem p = new Problem();
System.out.println(p.closest_integer("10"));
System.out.println(p.closest_integer("15.3"));
System.out.println(p.closest_integer("14.5"));
System.out.println(p.closest_integer("-14.5"));


    }
    public static void main(String[] args) {
    assert(closest_integer(("10")) == (10l));
    assert(closest_integer(("14.5")) == (15l));
    assert(closest_integer(("-15.5")) == (-16l));
    assert(closest_integer(("15.3")) == (15l));
    assert(closest_integer(("0")) == (0l));
    }

}
