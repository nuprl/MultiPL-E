import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a positive integer N, return the total sum of its digits in binary.
    // Example
    // For N = 1000, the sum of digits will be 1 the output should be "1".
    // For N = 150, the sum of digits will be 6 the output should be "110".
    // For N = 147, the sum of digits will be 12 the output should be "1100".
    // Variables:
    // @N integer
    // Constraints: 0 ≤ N ≤ 10000.
    // Output:
    // a string of binary number
    public static String solve(long N) {
        return Long.toBinaryString(N);
    }
}
Problem.solve(1000)
Problem.solve(150)
Problem.solve(147)


    }
    public static void main(String[] args) {
    solve((1000l)).equals(("1"));
    solve((150l)).equals(("110"));
    solve((147l)).equals(("1100"));
    solve((333l)).equals(("1001"));
    solve((963l)).equals(("10010"));
    }

}
