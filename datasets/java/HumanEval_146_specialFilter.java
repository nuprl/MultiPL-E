import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Write a function that takes an array of numbers as input and returns 
    // the number of elements in the array that are greater than 10 and both 
    // first and last digits of a number are odd (1, 3, 5, 7, 9).
    // For example:
    // specialFilter([15, -73, 14, -15]) => 1 
    // specialFilter([33, -2, -3, 45, 21, 109]) => 2
    public static long specialFilter(ArrayList<Long> nums) {
        long count = 0;
        for (Long num : nums) {
            if (num > 10 && (num % 10) % 2 == 1 && (num / 10) % 10 % 2 == 1) {
                count++;
            }
        }
        return count;
    }
    // Write a function that takes an array of numbers as input and returns 
    // the number of elements in the array that are greater than 10 and both 
    // first and last digits of a number are odd (1, 3, 5, 7, 9).
    // For example:
    // specialFilter([15, -73, 14, -15]) => 1 
    // specialFilter([33, -2, -3, 45, 21, 109]) => 2
    public static long specialFilter(int[] nums) {
        long count = 0;
        for (int num : nums) {
            if (num > 10 && (num % 10) % 2 == 1 && (num / 10) % 10 % 2 == 1) {
                count++;
            }
        }
        return count;
    }
    // Write a function that takes an array of numbers as input and returns 
    // the number of elements in the array that are greater than 10 and both 
    // first and last digits of a number are odd (1, 3, 5, 7, 9).
    // For example:
    // specialFilter([15, -73, 14, -15]) => 1 
    // specialFilter([33, -2, -3, 45, 21, 109]) => 2
    public static long specialFilter(long[] nums) {
        long count = 0;
        for (long num : nums) {
            if (num > 10 && (num % 10) % 2 == 1 && (num / 10) % 10 % 2 == 1) {
                count++;
            }
        }
        return count;
    }
    // Write a function that takes an array of numbers as input and returns 
    // the number of elements in the array that are greater than 10 and both 
    // first and last digits of a number are odd (1, 3, 5, 7, 9).
    //

    }
    public static void main(String[] args) {
    assert(specialFilter((new ArrayList<Long>(Arrays.asList((long)5l, (long)-2l, (long)1l, (long)-5l)))) == (0l));
    assert(specialFilter((new ArrayList<Long>(Arrays.asList((long)15l, (long)-73l, (long)14l, (long)-15l)))) == (1l));
    assert(specialFilter((new ArrayList<Long>(Arrays.asList((long)33l, (long)-2l, (long)-3l, (long)45l, (long)21l, (long)109l)))) == (2l));
    assert(specialFilter((new ArrayList<Long>(Arrays.asList((long)43l, (long)-12l, (long)93l, (long)125l, (long)121l, (long)109l)))) == (4l));
    assert(specialFilter((new ArrayList<Long>(Arrays.asList((long)71l, (long)-2l, (long)-33l, (long)75l, (long)21l, (long)19l)))) == (3l));
    assert(specialFilter((new ArrayList<Long>(Arrays.asList((long)1l)))) == (0l));
    assert(specialFilter((new ArrayList<Long>(Arrays.asList()))) == (0l));
    }

}
