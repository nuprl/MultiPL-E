import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Imagine a road that's a perfectly straight infinitely long line.
    // n cars are driving left to right;  simultaneously, a different set of n cars
    // are driving right to left.   The two sets of cars start out being very far from
    // each other.  All cars move in the same speed.  Two cars are said to collide
    // when a car that's moving left to right hits a car that's moving right to left.
    // However, the cars are infinitely sturdy and strong; as a result, they continue moving
    // in their trajectory as if they did not collide.
    // This function outputs the number of such collisions.
    public static long car_race_collision(long n) {
        return 0;
    }
    // Given a list of numbers, return the number of pairs of numbers that have a difference of k.
    // For example, if the input is [1, 7, 5, 9, 2, 12, 3] and k is 2, your program should return 4,
    // since the pairs (1, 3), (3, 5), (5, 7), and (7, 9) have a difference of 2.
    public static long pairs_with_difference(int[] numbers, int k) {
        return 0;
    }
    // Given a list of numbers, return the number of pairs of numbers that have a sum of k.
    // For example, if the input is [1, 7, 5, 9, 2, 12, 3] and k is 6, your program should return 2,
    // since the pairs (5, 1) and (7, 3) have a sum of 6.
    public static long pairs_with_sum(int[] numbers, int k) {
        return 0;
    }
    // Given a list of numbers, return the number of pairs of numbers that have a product of k.
    // For example, if the input is [1, 7, 5, 9, 2, 12, 3] and k is 6, your program should return 2,
    // since the pairs (5, 1) and (7, 3) have a product of 6.
    public static long pairs_with_product(int[] numbers, int k) {
        return 0;
    }
    // Given a list of numbers, return the number of pairs of numbers that have a sum of k.
    // For example, if the input is [1, 7, 5, 9, 2, 12, 3] and k is 6, your program should return 2,
    // since the pairs (5, 1) and (7, 3) have a sum of 6.
    public static long pairs_with_sum(int[] numbers, int k) {
        return 0;
    }
    // Given a list of numbers, return the number of pairs of numbers that have a product of k.
    // For example, if the input is [1, 7, 5, 9, 2, 12

    }
    public static void main(String[] args) {
    assert(car_race_collision((2l)) == (4l));
    assert(car_race_collision((3l)) == (9l));
    assert(car_race_collision((4l)) == (16l));
    assert(car_race_collision((8l)) == (64l));
    assert(car_race_collision((10l)) == (100l));
    }

}
