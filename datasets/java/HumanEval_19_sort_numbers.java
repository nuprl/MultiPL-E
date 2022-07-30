import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Input is a space-delimited string of numberals from 'zero' to 'nine'.
    // Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
    // Return the string with numbers sorted from smallest to largest
    // >>> sort_numbers('three one five')
    // 'one three five'
    public static String sort_numbers(String numbers) {
        String[] nums = numbers.split(" ");
        List<Integer> ints = new ArrayList<>();
        for (String num : nums) {
            ints.add(Integer.parseInt(num));
        }
        Collections.sort(ints);
        StringBuilder sb = new StringBuilder();
        for (Integer i : ints) {
            sb.append(i).append(" ");
        }
        return sb.toString().trim();
    }
    // Input is a space-delimited string of numberals from 'zero' to 'nine'.
    // Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
    // Return the string with numbers sorted from smallest to largest
    // >>> sort_numbers('three one five')
    // 'one three five'
    public static String sort_numbers(String numbers) {
        String[] nums = numbers.split(" ");
        List<Integer> ints = new ArrayList<>();
        for (String num : nums) {
            ints.add(Integer.parseInt(num));
        }
        Collections.sort(ints);
        StringBuilder sb = new StringBuilder();
        for (Integer i : ints) {
            sb.append(i).append(" ");
        }
        return sb.toString().trim();
    }
    // Input is a space-delimited string of numberals from 'zero' to 'nine'.
    // Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
    // Return the string with numbers sorted from smallest to largest
    // >>> sort_numbers('three one five')
    // 'one three five'
    public static String sort_numbers(String numbers) {
        String[] nums = numbers.split(" ");
        List<Integer> ints = new ArrayList<>();
        for (String num : nums) {
            ints.add(Integer.parseInt

    }
    public static void main(String[] args) {
    sort_numbers(("")).equals((""));
    sort_numbers(("three")).equals(("three"));
    sort_numbers(("three five nine")).equals(("three five nine"));
    sort_numbers(("five zero four seven nine eight")).equals(("zero four five seven eight nine"));
    sort_numbers(("six five four three two one zero")).equals(("zero one two three four five six"));
    }

}
