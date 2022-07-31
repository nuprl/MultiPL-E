import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a list of numbers, return the sum of squares of the numbers
    // in the list that are odd. Ignore numbers that are negative or not integers.
    // double_the_difference([1, 3, 2, 0]) == 1 + 9 + 0 + 0 = 10
    // double_the_difference([-1, -2, 0]) == 0
    // double_the_difference([9, -2]) == 81
    // double_the_difference([0]) == 0  
    // If the input list is empty, return 0.
    public static long double_the_difference(ArrayList<Float> lst) {
        long sum = 0;
        for (Float f : lst) {
            if (f > 0 && f % 2 == 1) {
                sum += f * f;
            }
        }
        return sum;
    }
    // Given a list of numbers, return the sum of squares of the numbers
    // in the list that are odd. Ignore numbers that are negative or not integers.
    // double_the_difference([1, 3, 2, 0]) == 1 + 9 + 0 + 0 = 10
    // double_the_difference([-1, -2, 0]) == 0
    // double_the_difference([9, -2]) == 81
    // double_the_difference([0]) == 0  
    // If the input list is empty, return 0.
    public static long double_the_difference(ArrayList<Integer> lst) {
        long sum = 0;
        for (Integer i : lst) {
            if (i > 0 && i % 2 == 1) {
                sum += i * i;
            }
        }
        return sum;
    }
    // Given a list of numbers, return the sum of squares of the numbers
    // in the list that are odd. Ignore numbers that are negative or not integers.
    // double_the_difference([1, 3, 2, 0]) == 1 + 9 + 0 + 0 = 10
    // double_the_difference([-1, -2, 0]) == 0
    // double_the_difference([9, -2]) == 81
    // double_the_difference([0]) == 0  
    // If the input list is empty, return 0.
    public static long double_the_difference(ArrayList<Long> lst) {
        long sum = 0;
        for (Long l : lst) {
            if (l > 0 && l % 2 == 1) {
                sum += l * l;
            }
        }
        return sum;
    }
    // Given a list of numbers, return the sum of squares of the numbers
    // in the list that are odd. Ignore numbers that are negative or not integers

    }
    public static void main(String[] args) {
    assert(double_the_difference((new ArrayList<Float>(Arrays.asList()))) == (0l));
    assert(double_the_difference((new ArrayList<Float>(Arrays.asList((float)5.0f, (float)4.0f)))) == (25l));
    assert(double_the_difference((new ArrayList<Float>(Arrays.asList((float)0.1f, (float)0.2f, (float)0.3f)))) == (0l));
    assert(double_the_difference((new ArrayList<Float>(Arrays.asList((float)-10.0f, (float)-20.0f, (float)-30.0f)))) == (0l));
    assert(double_the_difference((new ArrayList<Float>(Arrays.asList((float)-1.0f, (float)-2.0f, (float)8.0f)))) == (0l));
    assert(double_the_difference((new ArrayList<Float>(Arrays.asList((float)0.2f, (float)3.0f, (float)5.0f)))) == (34l));
    assert(double_the_difference((new ArrayList<Float>(Arrays.asList((float)-9.0f, (float)-7.0f, (float)-5.0f, (float)-3.0f, (float)-1.0f, (float)1.0f, (float)3.0f, (float)5.0f, (float)7.0f, (float)9.0f)))) == (165l));
    }

}
