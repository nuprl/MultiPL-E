import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // sum_to_n is a function that sums numbers from 1 to n.
    // >>> sum_to_n(30)
    // 465
    // >>> sum_to_n(100)
    // 5050
    // >>> sum_to_n(5)
    // 15
    // >>> sum_to_n(10)
    // 55
    // >>> sum_to_n(1)
    // 1
    public static long sum_to_n(long n) {
        // YOUR CODE HERE
        long sum = 0;
        for (long i = 1; i <= n; i++) {
            sum += i;
        }
        return sum;
    }
    // sum_to_n_pairs is a function that returns a list of tuples
    // that sum to n.
    // >>> sum_to_n_pairs(30)
    // [(1, 29), (2, 28), (3, 27), (4, 26), (5, 25), (6, 24), (7, 23), (8, 22), (9, 21), (10, 20), (11, 19), (12, 18), (13, 17), (14, 16), (15, 15), (16, 14), (17, 13), (18, 12), (19, 11), (20, 10), (21, 9), (22, 8), (23, 7), (24, 6), (25, 5), (26, 4), (27, 3), (28, 2), (29, 1)]
    // >>> sum_to_n_pairs(100)
    // [(1, 99), (2, 98), (3, 97), (4, 96), (5, 95), (6, 94), (7, 93), (8, 92), (9, 91), (10, 90), (11, 89), (12, 88), (13, 87), (14, 86), (15, 85), (16, 84), (17, 83), (18, 82), (19, 81), (20, 80), (21, 79), (22, 78), (23, 77), (24, 76), (25, 75), (26, 74), (27, 73), (28, 72), (29, 71), (30, 70), (31, 69), (32, 68), (33, 67), (34, 66), (35, 65), (36, 64), (37, 63), (38, 62), (39, 61), (40, 60), (41, 59), (42, 58), (43, 57), (44, 56), (45, 55), (46, 54), (47, 53), (48, 52), (49, 51

    }
    public static void main(String[] args) {
    assert(sum_to_n((1l)) == (1l));
    assert(sum_to_n((6l)) == (21l));
    assert(sum_to_n((11l)) == (66l));
    assert(sum_to_n((30l)) == (465l));
    assert(sum_to_n((100l)) == (5050l));
    }

}
