import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given an array of integers nums, find the minimum sum of any non-empty sub-array
    // of nums.
    // Example
    // minSubArraySum([2, 3, 4, 1, 2, 4]) == 1
    // minSubArraySum([-1, -2, -3]) == -6
    public static long minSubArraySum(ArrayList<Long> nums) {
        long sum = 0;
        long min = Long.MAX_VALUE;
        for (long num : nums) {
            sum += num;
            min = Math.min(min, sum);
            sum = Math.min(sum, 0);
        }
        return min;
    }
    // Given an array of integers nums, find the maximum sum of any non-empty sub-array
    // of nums.
    // Example
    // maxSubArraySum([2, 3, 4, 1, 2, 4]) == 10
    // maxSubArraySum([-1, -2, -3]) == -1
    public static long maxSubArraySum(ArrayList<Long> nums) {
        long sum = 0;
        long max = Long.MIN_VALUE;
        for (long num : nums) {
            sum += num;
            max = Math.max(max, sum);
            sum = Math.max(sum, 0);
        }
        return max;
    }
    // Given an array of integers nums, find the maximum sum of any contiguous sub-array
    // of nums.
    // Example
    // maxSubArraySum([2, 3, 4, 1, 2, 4]) == 10
    // maxSubArraySum([-1, -2, -3]) == -1
    public static long maxSubArraySum(ArrayList<Long> nums) {
        long max = Long.MIN_VALUE;
        long sum = 0;
        for (long num : nums) {
            sum = Math.max(sum + num, num);
            max = Math.max(max, sum);
        }
        return max;
    }
    // Given an array of integers nums, find the maximum sum of any contiguous sub-array
    // of nums of length k.
    // Example
    // maxSubArrayLen([2, 3, 4, 1, 2, 4], 2) == 9
    // maxSubArrayLen([2, 3, 4, 1, 2, 4], 3) == 10
    // maxSubArrayLen([2, 3, 4, 1, 2, 4], 4) ==

    }
    public static void main(String[] args) {
    assert(minSubArraySum((new ArrayList<Long>(Arrays.asList((long)2l, (long)3l, (long)4l, (long)1l, (long)2l, (long)4l)))) == (1l));
    assert(minSubArraySum((new ArrayList<Long>(Arrays.asList((long)-1l, (long)-2l, (long)-3l)))) == (-6l));
    assert(minSubArraySum((new ArrayList<Long>(Arrays.asList((long)-1l, (long)-2l, (long)-3l, (long)2l, (long)-10l)))) == (-14l));
    assert(minSubArraySum((new ArrayList<Long>(Arrays.asList((long)-9999999999999999l)))) == (-9999999999999999l));
    assert(minSubArraySum((new ArrayList<Long>(Arrays.asList((long)0l, (long)10l, (long)20l, (long)1000000l)))) == (0l));
    assert(minSubArraySum((new ArrayList<Long>(Arrays.asList((long)-1l, (long)-2l, (long)-3l, (long)10l, (long)-5l)))) == (-6l));
    assert(minSubArraySum((new ArrayList<Long>(Arrays.asList((long)100l, (long)-1l, (long)-2l, (long)-3l, (long)10l, (long)-5l)))) == (-6l));
    assert(minSubArraySum((new ArrayList<Long>(Arrays.asList((long)10l, (long)11l, (long)13l, (long)8l, (long)3l, (long)4l)))) == (3l));
    assert(minSubArraySum((new ArrayList<Long>(Arrays.asList((long)100l, (long)-33l, (long)32l, (long)-1l, (long)0l, (long)-2l)))) == (-33l));
    assert(minSubArraySum((new ArrayList<Long>(Arrays.asList((long)-10l)))) == (-10l));
    assert(minSubArraySum((new ArrayList<Long>(Arrays.asList((long)7l)))) == (7l));
    assert(minSubArraySum((new ArrayList<Long>(Arrays.asList((long)1l, (long)-1l)))) == (-1l));
    }

}
