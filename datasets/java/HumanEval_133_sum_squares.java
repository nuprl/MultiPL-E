import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // You are given a list of numbers.
    // You need to return the sum of squared numbers in the given list,
    // round each element in the list to the upper int(Ceiling) first.
    // Examples:
    // For lst = [1,2,3] the output should be 14
    // For lst = [1,4,9] the output should be 98
    // For lst = [1,3,5,7] the output should be 84
    // For lst = [1.4,4.2,0] the output should be 29
    // For lst = [-2.4,1,1] the output should be 6
    public static long sum_squares(ArrayList<Float> lst) {
        // Write your code here
        long sum = 0;
        for (Float f : lst) {
            sum += Math.round(Math.pow(f, 2));
        }
        return sum;
    }
    // You are given a list of numbers.
    // You need to return the sum of squared numbers in the given list,
    // round each element in the list to the upper int(Ceiling) first.
    // Examples:
    // For lst = [1,2,3] the output should be 14
    // For lst = [1,4,9] the output should be 98
    // For lst = [1,3,5,7] the output should be 84
    // For lst = [1.4,4.2,0] the output should be 29
    // For lst = [-2.4,1,1] the output should be 6
    public static long sum_squares_2(ArrayList<Double> lst) {
        // Write your code here
        long sum = 0;
        for (Double d : lst) {
            sum += Math.round(Math.pow(d, 2));
        }
        return sum;
    }
    // You are given a list of numbers.
    // You need to return the sum of squared numbers in the given list,
    // round each element in the list to the upper int(Ceiling) first.
    // Examples:
    // For lst = [1,2,3] the output should be 14
    // For lst = [1,4,9] the output should be 98
    // For lst = [1,3,5,7] the output should be 84
    // For lst = [1.4,4.2,0] the output should be 29
    // For lst = [-2.4,1,1] the output should be 6
    public static long sum_squares_3(ArrayList<Integer> lst) {
        // Write your code here
        long sum = 0;
        for (Integer i : lst) {
            sum += Math.round(Math.pow(i,

    }
    public static void main(String[] args) {
    assert(sum_squares((new ArrayList<Float>(Arrays.asList((float)1.0f, (float)2.0f, (float)3.0f)))) == (14l));
    assert(sum_squares((new ArrayList<Float>(Arrays.asList((float)1.0f, (float)2.0f, (float)3.0f)))) == (14l));
    assert(sum_squares((new ArrayList<Float>(Arrays.asList((float)1.0f, (float)3.0f, (float)5.0f, (float)7.0f)))) == (84l));
    assert(sum_squares((new ArrayList<Float>(Arrays.asList((float)1.4f, (float)4.2f, (float)0.0f)))) == (29l));
    assert(sum_squares((new ArrayList<Float>(Arrays.asList((float)-2.4f, (float)1.0f, (float)1.0f)))) == (6l));
    assert(sum_squares((new ArrayList<Float>(Arrays.asList((float)100.0f, (float)1.0f, (float)15.0f, (float)2.0f)))) == (10230l));
    assert(sum_squares((new ArrayList<Float>(Arrays.asList((float)10000.0f, (float)10000.0f)))) == (200000000l));
    assert(sum_squares((new ArrayList<Float>(Arrays.asList((float)-1.4f, (float)4.6f, (float)6.3f)))) == (75l));
    assert(sum_squares((new ArrayList<Float>(Arrays.asList((float)-1.4f, (float)17.9f, (float)18.9f, (float)19.9f)))) == (1086l));
    assert(sum_squares((new ArrayList<Float>(Arrays.asList((float)0.0f)))) == (0l));
    assert(sum_squares((new ArrayList<Float>(Arrays.asList((float)-1.0f)))) == (1l));
    assert(sum_squares((new ArrayList<Float>(Arrays.asList((float)-1.0f, (float)1.0f, (float)0.0f)))) == (2l));
    }

}
