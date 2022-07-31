import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Write a function that takes an integer a and returns True 
    // if this ingeger is a cube of some integer number.
    // Note: you may assume the input is always valid.
    // Examples:
    // iscube(1) ==> True
    // iscube(2) ==> False
    // iscube(-1) ==> True
    // iscube(64) ==> True
    // iscube(0) ==> True
    // iscube(180) ==> False
    public static boolean iscube(long a) {
        if (a == 0) {
            return true;
        }
        if (a < 0) {
            return iscube(-a);
        }
        long x = a;
        while (x % 3 != 0) {
            x += a;
        }
        return x == a;
    }
    // Write a function that takes an integer a and returns True 
    // if this ingeger is a power of 2.
    // Note: you may assume the input is always valid.
    // Examples:
    // ispowerof2(1) ==> True
    // ispowerof2(2) ==> True
    // ispowerof2(3) ==> False
    // ispowerof2(4) ==> True
    // ispowerof2(5) ==> False
    public static boolean ispowerof2(long a) {
        return a > 0 && (a & (a - 1)) == 0;
    }
    // Write a function that takes an integer a and returns True 
    // if this ingeger is a power of 3.
    // Note: you may assume the input is always valid.
    // Examples:
    // ispowerof3(1) ==> True
    // ispowerof3(2) ==> False
    // ispowerof3(3) ==> True
    // ispowerof3(4) ==> False
    // ispowerof3(5) ==> False
    // ispowerof3(6) ==> False
    // ispowerof3(7) ==> False
    // ispowerof3(8) ==> True
    public static boolean ispowerof3(long a) {
        if (a == 0) {
            return false;
        }
        if (a == 1) {
            return true;
        }
        if (a < 0) {
            return ispowerof3(-a);
        }
        while (a % 3 == 0) {
            a /= 3;
        }
        return a == 1;
    }
    // Write a function that takes an integer a and returns True 
    // if this ingeger is a power of 4

    }
    public static void main(String[] args) {
    assert(iscube((1l)) == (true));
    assert(iscube((2l)) == (false));
    assert(iscube((-1l)) == (true));
    assert(iscube((64l)) == (true));
    assert(iscube((180l)) == (false));
    assert(iscube((1000l)) == (true));
    assert(iscube((0l)) == (true));
    assert(iscube((1729l)) == (false));
    }

}
