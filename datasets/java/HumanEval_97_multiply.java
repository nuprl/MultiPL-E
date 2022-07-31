import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Complete the function that takes two integers and returns 
    // the product of their unit digits.
    // Assume the input is always valid.
    // Examples:
    // multiply(148, 412) should return 16.
    // multiply(19, 28) should return 72.
    // multiply(2020, 1851) should return 0.
    // multiply(14,-15) should return 20.
    public static long multiply(long a, long b) {
        if (a == 0 || b == 0) {
            return 0;
        }
        if (a < 0) {
            a = -a;
            b = -b;
        }
        if (b < 0) {
            b = -b;
            a = -a;
        }
        long result = 0;
        while (a > 0) {
            if ((a & 1) == 1) {
                result += b;
            }
            a >>= 1;
            b <<= 1;
        }
        return result;
    }
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        for (int i = 0; i < n; i++) {
            long a = scanner.nextLong();
            long b = scanner.nextLong();
            System.out.println(multiply(a, b));
        }
        scanner.close();
    }
}
Problem.multiply(14, -15)


    }
    public static void main(String[] args) {
    assert(multiply((148l), (412l)) == (16l));
    assert(multiply((19l), (28l)) == (72l));
    assert(multiply((2020l), (1851l)) == (0l));
    assert(multiply((14l), (-15l)) == (20l));
    assert(multiply((76l), (67l)) == (42l));
    assert(multiply((17l), (27l)) == (49l));
    assert(multiply((0l), (1l)) == (0l));
    assert(multiply((0l), (0l)) == (0l));
    }

}
