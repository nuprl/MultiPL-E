import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
    // fib4(0) -> 0
    // fib4(1) -> 0
    // fib4(2) -> 2
    // fib4(3) -> 0
    // fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).
    // Please write a function to efficiently compute the n-th element of the fib4 number sequence.  Do not use recursion.
    // >>> fib4(5)
    // 4
    // >>> fib4(6)
    // 8
    // >>> fib4(7)
    // 14
    public static long fib4(long n) {
        if (n == 0) {
            return 0;
        }
        if (n == 1) {
            return 0;
        }
        if (n == 2) {
            return 2;
        }
        if (n == 3) {
            return 0;
        }
        long[] fib4 = new long[n + 1];
        fib4[0] = 0;
        fib4[1] = 0;
        fib4[2] = 2;
        fib4[3] = 0;
        for (int i = 4; i <= n; i++) {
            fib4[i] = fib4[i - 1] + fib4[i - 2] + fib4[i - 3] + fib4[i - 4];
        }
        return fib4[n];
    }
    // A palindrome is a word or phrase that is the same when read both forward and backward.
    // For example, "never odd or even" is a palindrome.
    // Please write a function that checks if a given word or phrase is a palindrome.
    // >>> isPalindrome("never odd or even")
    // True
    // >>> isPalindrome("abc")
    // False
    public static boolean isPalindrome(String phrase) {
        if (phrase == null) {
            return false;
        }
        if (phrase.length() == 0) {
            return true;
        }
        StringBuilder sb = new StringBuilder(phrase);
        sb.reverse();
        return phrase.equals(sb.toString());
    }
    // A number is considered perfect if its digits sum up to exactly 10.
    // Please write a function that checks if a given number is perfect.
    // >>> isPerfect(7)
    // False
    // >>> isPerfect(28)
    // True
    // >>> isPerfect(496)
    // True
    public static boolean isPerfect(int n) {
        if (n == 0) {
            return false;
        }
        int sum = 0;
        while (n > 0) {
            sum += n % 10;
           

    }
    public static void main(String[] args) {
    assert(fib4((5l)) == (4l));
    assert(fib4((8l)) == (28l));
    assert(fib4((10l)) == (104l));
    assert(fib4((12l)) == (386l));
    }

}
