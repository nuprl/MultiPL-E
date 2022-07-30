import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Write a function that accepts a list of strings as a parameter,
    // deletes the strings that have odd lengths from it,
    // and returns the resulted list with a sorted order,
    // The list is always a list of strings and never an array of numbers,
    // and it may contain duplicates.
    // The order of the list should be ascending by length of each word, and you
    // should return the list sorted by that rule.
    // If two words have the same length, sort the list alphabetically.
    // The function should return a list of strings in sorted order.
    // You may assume that all words will have the same length.
    // For example:
    // assert list_sort(["aa", "a", "aaa"]) => ["aa"]
    // assert list_sort(["ab", "a", "aaa", "cd"]) => ["ab", "cd"]
    public static ArrayList<String> sorted_list_sum(ArrayList<String> lst) {
        ArrayList<String> result = new ArrayList<String>();
        for (String s : lst) {
            if (s.length() % 2 == 0) {
                result.add(s);
            }
        }
        Collections.sort(result, new Comparator<String>() {
            @Override
            public int compare(String o1, String o2) {
                return o1.length() - o2.length();
            }
        });
        return result;
    }
    // Write a function that accepts a list of strings as a parameter,
    // and returns a list of the strings that have the same length as the longest string in the list.
    // If there are no strings with the same length as the longest string, return an empty list.
    // If there are multiple strings with the same length as the longest string,
    // return a list with all of them.
    // For example:
    // assert same_length(["aa", "a", "aaa"]) => ["aaa"]
    // assert same_length(["ab", "a", "aaa", "cd"]) => ["aaa", "cd"]
    public static ArrayList<String> same_length(ArrayList<String> lst) {
        ArrayList<String> result = new ArrayList<String>();
        int max = 0;
        for (String s : lst) {
            if (s.length() > max) {
                max = s.length();
            }
        }
        for (String s : lst) {
            if (s.length() == max) {
                result.add(s);
            }
        }
        return result;
    }
    // Write a function that accepts a list of strings as a parameter,
    // and returns a list of the strings that have the same length as the shortest string in the list.
    // If there are no strings with the same length as the shortest string, return an empty list.
    // If there are multiple strings with the same length as the shortest string,
    // return a list with all of them.
    // For example:
    // assert same_length(["aa", "a", "

    }
    public static void main(String[] args) {
    sorted_list_sum((new ArrayList<String>(Arrays.asList((String)"aa", (String)"a", (String)"aaa")))).equals((new ArrayList<String>(Arrays.asList((String)"aa"))));
    sorted_list_sum((new ArrayList<String>(Arrays.asList((String)"school", (String)"AI", (String)"asdf", (String)"b")))).equals((new ArrayList<String>(Arrays.asList((String)"AI", (String)"asdf", (String)"school"))));
    sorted_list_sum((new ArrayList<String>(Arrays.asList((String)"d", (String)"b", (String)"c", (String)"a")))).equals((new ArrayList<String>(Arrays.asList())));
    sorted_list_sum((new ArrayList<String>(Arrays.asList((String)"d", (String)"dcba", (String)"abcd", (String)"a")))).equals((new ArrayList<String>(Arrays.asList((String)"abcd", (String)"dcba"))));
    sorted_list_sum((new ArrayList<String>(Arrays.asList((String)"AI", (String)"ai", (String)"au")))).equals((new ArrayList<String>(Arrays.asList((String)"AI", (String)"ai", (String)"au"))));
    sorted_list_sum((new ArrayList<String>(Arrays.asList((String)"a", (String)"b", (String)"b", (String)"c", (String)"c", (String)"a")))).equals((new ArrayList<String>(Arrays.asList())));
    sorted_list_sum((new ArrayList<String>(Arrays.asList((String)"aaaa", (String)"bbbb", (String)"dd", (String)"cc")))).equals((new ArrayList<String>(Arrays.asList((String)"cc", (String)"dd", (String)"aaaa", (String)"bbbb"))));
    }

}
