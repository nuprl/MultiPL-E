import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Return list of prime factors of given integer in the order from smallest to largest.
    // Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
    // Input number should be equal to the product of all factors
    // >>> factorize(8)
    // [2, 2, 2]
    // >>> factorize(25)
    // [5, 5]
    // >>> factorize(70)
    // [2, 5, 7]
    public static ArrayList<Long> factorize(long n) {
        ArrayList<Long> result = new ArrayList<Long>();
        for (long i = 2; i <= n; i++) {
            while (n % i == 0) {
                result.add(i);
                n /= i;
            }
        }
        return result;
    }
    // Return list of prime factors of given integer in the order from smallest to largest.
    // Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
    // Input number should be equal to the product of all factors
    // >>> factorize(8)
    // [2, 2, 2]
    // >>> factorize(25)
    // [5, 5]
    // >>> factorize(70)
    // [2, 5, 7]
    public static ArrayList<Long> factorize(int n) {
        ArrayList<Long> result = new ArrayList<Long>();
        for (long i = 2; i <= n; i++) {
            while (n % i == 0) {
                result.add(i);
                n /= i;
            }
        }
        return result;
    }
    // Return list of prime factors of given integer in the order from smallest to largest.
    // Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
    // Input number should be equal to the product of all factors
    // >>> factorize(8)
    // [2, 2, 2]
    // >>> factorize(25)
    // [5, 5]
    // >>> factorize(70)
    // [2, 5, 7]
    public static ArrayList<Integer> factorize(Integer n) {
        ArrayList<Integer> result = new ArrayList<Integer>();
        for (int i = 2; i <= n; i++) {
            while (n % i == 0) {
                result.add(i);
                n /= i;
            }
        }
        return result;
    }
    // Return list of prime factors of given integer in the order from smallest to largest.
    // Each of the factors

    }
    public static void main(String[] args) {
    factorize((2l)).equals((new ArrayList<Long>(Arrays.asList((long)2l))));
    factorize((4l)).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)2l))));
    factorize((8l)).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)2l, (long)2l))));
    factorize((57l)).equals((new ArrayList<Long>(Arrays.asList((long)3l, (long)19l))));
    factorize((3249l)).equals((new ArrayList<Long>(Arrays.asList((long)3l, (long)3l, (long)19l, (long)19l))));
    factorize((185193l)).equals((new ArrayList<Long>(Arrays.asList((long)3l, (long)3l, (long)3l, (long)19l, (long)19l, (long)19l))));
    factorize((20577l)).equals((new ArrayList<Long>(Arrays.asList((long)3l, (long)19l, (long)19l, (long)19l))));
    factorize((18l)).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)3l, (long)3l))));
    }

}
