import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a positive integer n, return a sorted list that has the odd numbers in collatz sequence.
    // The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
    // as follows: start with any positive integer n. Then each term is obtained from the 
    // previous term as follows: if the previous term is even, the next term is one half of 
    // the previous term. If the previous term is odd, the next term is 3 times the previous
    // term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
    // Note: 
    // 1. Collatz(1) is [1].
    // 2. returned list sorted in increasing order.
    // For example:
    // get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
    public static ArrayList<Long> get_odd_collatz(long n) {
        ArrayList<Long> result = new ArrayList<Long>();
        if (n <= 0) {
            return result;
        }
        while (n > 1) {
            if (n % 2 == 0) {
                n = n / 2;
            } else {
                n = 3 * n + 1;
            }
            result.add(n);
        }
        return result;
    }
    // Given a positive integer n, return a sorted list that has the even numbers in collatz sequence.
    // The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
    // as follows: start with any positive integer n. Then each term is obtained from the 
    // previous term as follows: if the previous term is even, the next term is one half of 
    // the previous term. If the previous term is odd, the next term is 3 times the previous
    // term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
    // Note: 
    // 1. Collatz(1) is [1].
    // 2. returned list sorted in increasing order.
    // For example:
    // get_even_collatz(5) returns [2, 4] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the even numbers are only 2, 4.
    public static ArrayList<Long> get_even_collatz(long n) {
        ArrayList<Long> result = new ArrayList<Long>();
        if (n <= 0) {
            return result;
        }
        while (n > 1) {
            if (n % 2 == 0) {
                result.add(n);
                n = n / 2;
            } else {
                n = 3 * n + 1;
            }
        }
        result.add(1);
        return result;
    }
    // Given a positive integer n, return a sorted list that has the odd numbers in collatz sequence.
    // The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
    // as follows: start with any positive integer n. Then each term is obtained

    }
    public static void main(String[] args) {
    get_odd_collatz((14l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)5l, (long)7l, (long)11l, (long)13l, (long)17l))));
    get_odd_collatz((5l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)5l))));
    get_odd_collatz((12l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)3l, (long)5l))));
    get_odd_collatz((1l)).equals((new ArrayList<Long>(Arrays.asList((long)1l))));
    }

}
