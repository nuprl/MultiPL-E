import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Implement the function f that takes n as a parameter,
    // and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even
    // or the sum of numbers from 1 to i otherwise.
    // i starts from 1.
    // the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
    // Example:
    // f(5) == [1, 2, 6, 24, 15]
    public static ArrayList<Long> f(long n) {
        ArrayList<Long> result = new ArrayList<>();
        for (long i = 1; i <= n; i++) {
            if (i % 2 == 0) {
                result.add(factorial(i));
            } else {
                result.add(sum(i));
            }
        }
        return result;
    }
    public static long factorial(long n) {
        long result = 1;
        for (long i = 1; i <= n; i++) {
            result *= i;
        }
        return result;
    }
    public static long sum(long n) {
        long result = 0;
        for (long i = 1; i <= n; i++) {
            result += i;
        }
        return result;
    }
    public static void main(String[] args) {
        ArrayList<Long> result = f(5);
        System.out.println(result);
    }
}
Problem.main(null);


    }
    public static void main(String[] args) {
    f((5l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)6l, (long)24l, (long)15l))));
    f((7l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)6l, (long)24l, (long)15l, (long)720l, (long)28l))));
    f((1l)).equals((new ArrayList<Long>(Arrays.asList((long)1l))));
    f((3l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)6l))));
    }

}
