import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // You are given two intervals,
    // where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
    // The given intervals are closed which means that the interval (start, end)
    // includes both start and end.
    // For each given interval, it is assumed that its start is less or equal its end.
    // Your task is to determine whether the length of intersection of these two 
    // intervals is a prime number.
    // Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
    // which its length is 1, which not a prime number.
    // If the length of the intersection is a prime number, return "YES",
    // otherwise, return "NO".
    // If the two intervals don't intersect, return "NO".
    // [input/output] samples:
    // intersection((1, 2), (2, 3)) ==> "NO"
    // intersection((-1, 1), (0, 4)) ==> "NO"
    // intersection((-3, -1), (-5, 5)) ==> "YES"
    public static String intersection(Pair<Long, Long> interval1, Pair<Long, Long> interval2) {
        long start1 = interval1.getValue0();
        long end1 = interval1.getValue1();
        long start2 = interval2.getValue0();
        long end2 = interval2.getValue1();
        long start = Math.max(start1, start2);
        long end = Math.min(end1, end2);
        if (start > end) {
            return "NO";
        }
        long length = end - start;
        if (length < 2) {
            return "NO";
        }
        if (length == 2) {
            return "YES";
        }
        if (length == 3) {
            return "NO";
        }
        if (length % 2 == 0) {
            return "NO";
        }
        if (length % 3 == 0) {
            return "NO";
        }
        if (length % 5 == 0) {
            return "NO";
        }
        if (length % 7 == 0) {
            return "NO";
        }
        return "YES";
    }
}
Problem.intersection(new Pair<Long, Long>(1, 2), new Pair<Long, Long>(2, 3));
Problem.intersection(new Pair<Long, Long>(-1, 1), new Pair<Long, Long>(0, 4));
Problem.intersection(new Pair<Long, Long>(-3, -1), new Pair<Long, Long>(-5, 5));


    }
    public static void main(String[] args) {
    intersection((Pair.with(1l, 2l)), (Pair.with(2l, 3l))).equals(("NO"));
    intersection((Pair.with(-1l, 1l)), (Pair.with(0l, 4l))).equals(("NO"));
    intersection((Pair.with(-3l, -1l)), (Pair.with(-5l, 5l))).equals(("YES"));
    intersection((Pair.with(-2l, 2l)), (Pair.with(-4l, 0l))).equals(("YES"));
    intersection((Pair.with(-11l, 2l)), (Pair.with(-1l, -1l))).equals(("NO"));
    intersection((Pair.with(1l, 2l)), (Pair.with(3l, 5l))).equals(("NO"));
    intersection((Pair.with(1l, 2l)), (Pair.with(1l, 2l))).equals(("NO"));
    intersection((Pair.with(-2l, -2l)), (Pair.with(-3l, -2l))).equals(("NO"));
    }

}
