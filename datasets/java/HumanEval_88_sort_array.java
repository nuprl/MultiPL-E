import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given an array of non-negative integers, return a copy of the given array after sorting,
    // you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
    // or sort it in descending order if the sum( first index value, last index value) is even.
    // Note:
    // * don't change the given array.
    // Examples:
    // * sort_array([]) => []
    // * sort_array([5]) => [5]
    // * sort_array([2, 4, 3, 0, 1, 5]) => [0, 1, 2, 3, 4, 5]
    // * sort_array([2, 4, 3, 0, 1, 5, 6]) => [6, 5, 4, 3, 2, 1, 0]
    public static ArrayList<Long> sort_array(ArrayList<Long> array) {
        ArrayList<Long> result = new ArrayList<Long>();
        if (array.size() == 0) {
            return result;
        }
        if (array.size() == 1) {
            result.add(array.get(0));
            return result;
        }
        int sum = 0;
        for (Long i : array) {
            sum += i;
        }
        if (sum % 2 == 0) {
            Collections.sort(array, Collections.reverseOrder());
        } else {
            Collections.sort(array);
        }
        for (Long i : array) {
            result.add(i);
        }
        return result;
    }
    // Given a string, return the length of the longest substring without repeating characters.
    // Examples:
    // * length_of_longest_substring("abcabcbb") => 3
    // * length_of_longest_substring("bbbbb") => 1
    // * length_of_longest_substring("pwwkew") => 3
    public static int length_of_longest_substring(String s) {
        if (s.length() == 0) {
            return 0;
        }
        int max = 0;
        int current = 0;
        HashSet<Character> set = new HashSet<Character>();
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (set.contains(c)) {
                max = Math.max(max, current);
                while (set.contains(c)) {
                    set.remove(s.charAt(i - current));
                    current--;
                }
            }
            set.add(c);
            current++;
        }
        max = Math.max(max, current);
        return max;
    }
    // Given a string, return the length of the longest substring without repeating characters.
    // Examples:
    // * length_of_longest_substring("abcabcbb") => 3
    // * length_of_longest_sub

    }
    public static void main(String[] args) {
    sort_array((new ArrayList<Long>(Arrays.asList()))).equals((new ArrayList<Long>(Arrays.asList())));
    sort_array((new ArrayList<Long>(Arrays.asList((long)5l)))).equals((new ArrayList<Long>(Arrays.asList((long)5l))));
    sort_array((new ArrayList<Long>(Arrays.asList((long)2l, (long)4l, (long)3l, (long)0l, (long)1l, (long)5l)))).equals((new ArrayList<Long>(Arrays.asList((long)0l, (long)1l, (long)2l, (long)3l, (long)4l, (long)5l))));
    sort_array((new ArrayList<Long>(Arrays.asList((long)2l, (long)4l, (long)3l, (long)0l, (long)1l, (long)5l, (long)6l)))).equals((new ArrayList<Long>(Arrays.asList((long)6l, (long)5l, (long)4l, (long)3l, (long)2l, (long)1l, (long)0l))));
    sort_array((new ArrayList<Long>(Arrays.asList((long)2l, (long)1l)))).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l))));
    sort_array((new ArrayList<Long>(Arrays.asList((long)15l, (long)42l, (long)87l, (long)32l, (long)11l, (long)0l)))).equals((new ArrayList<Long>(Arrays.asList((long)0l, (long)11l, (long)15l, (long)32l, (long)42l, (long)87l))));
    sort_array((new ArrayList<Long>(Arrays.asList((long)21l, (long)14l, (long)23l, (long)11l)))).equals((new ArrayList<Long>(Arrays.asList((long)23l, (long)21l, (long)14l, (long)11l))));
    }

}
