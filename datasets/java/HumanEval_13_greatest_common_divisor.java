import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Return a greatest common divisor of two integers a and b
    // >>> greatest_common_divisor(3, 5)
    // 1
    // >>> greatest_common_divisor(25, 15)
    // 5
    public static long greatest_common_divisor(long a, long b) {
        if (b == 0)
            return a;
        else
            return greatest_common_divisor(b, a % b);
    }
    // Return a greatest common divisor of two integers a and b
    // >>> greatest_common_divisor(3, 5)
    // 1
    // >>> greatest_common_divisor(25, 15)
    // 5
    public static int greatest_common_divisor(int a, int b) {
        if (b == 0)
            return a;
        else
            return greatest_common_divisor(b, a % b);
    }
    // Return a greatest common divisor of two integers a and b
    // >>> greatest_common_divisor(3, 5)
    // 1
    // >>> greatest_common_divisor(25, 15)
    // 5
    public static short greatest_common_divisor(short a, short b) {
        if (b == 0)
            return a;
        else
            return greatest_common_divisor(b, a % b);
    }
    // Return a greatest common divisor of two integers a and b
    // >>> greatest_common_divisor(3, 5)
    // 1
    // >>> greatest_common_divisor(25, 15)
    // 5
    public static byte greatest_common_divisor(byte a, byte b) {
        if (b == 0)
            return a;
        else
            return greatest_common_divisor(b, a % b);
    }
    // Return a greatest common divisor of two integers a and b
    // >>> greatest_common_divisor(3, 5)
    // 1
    // >>> greatest_common_divisor(25, 15)
    // 5
    public static long greatest_common_divisor(long a, long b, long c) {
        if (b == 0)
            return greatest_common_divisor(a, c);
        else
            return greatest_common_divisor(b, a % b, c);
    }


    }
    public static void main(String[] args) {
    assert(greatest_common_divisor((3l), (7l)) == (1l));
    assert(greatest_common_divisor((10l), (15l)) == (5l));
    assert(greatest_common_divisor((49l), (14l)) == (7l));
    assert(greatest_common_divisor((144l), (60l)) == (12l));
    }

}
