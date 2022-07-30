import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Concatenate list of strings into a single string
    // >>> concatenate([])
    // ''
    // >>> concatenate(['a', 'b', 'c'])
    // 'abc'
    public static String concatenate(ArrayList<String> strings) {
        StringBuilder result = new StringBuilder();
        for (String string : strings) {
            result.append(string);
        }
        return result.toString();
    }
    // Return the number of elements in the given list
    // >>> count([])
    // 0
    // >>> count([1, 2, 3])
    // 3
    public static int count(ArrayList<Integer> list) {
        return list.size();
    }
    // Return the number of elements in the given list
    // >>> count([])
    // 0
    // >>> count([1, 2, 3])
    // 3
    public static int count(List<Integer> list) {
        return list.size();
    }
    // Return the number of elements in the given list
    // >>> count([])
    // 0
    // >>> count([1, 2, 3])
    // 3
    public static int count(Collection<Integer> list) {
        return list.size();
    }
    // Return the number of elements in the given list
    // >>> count([])
    // 0
    // >>> count([1, 2, 3])
    // 3
    public static int count(Iterable<Integer> list) {
        return list.iterator().hasNext() ? 1 : 0;
    }
    // Return the number of elements in the given list
    // >>> count([])
    // 0
    // >>> count([1, 2, 3])
    // 3
    public static int count(Iterator<Integer> list) {
        return list.hasNext() ? 1 : 0;
    }
    // Return the number of elements in the given list
    // >>> count([])
    // 0
    // >>> count([1, 2, 3])
    // 3
    public static int count(Enumeration<Integer> list) {
        return list.hasMoreElements() ? 1 : 0;
    }
    // Return the number of elements in the given list
    // >>> count([])
    // 0
    // >>> count([1, 2, 3])
    // 3
    public static int count(Enumeration<Integer> list)

    }
    public static void main(String[] args) {
    concatenate((new ArrayList<String>(Arrays.asList()))).equals((""));
    concatenate((new ArrayList<String>(Arrays.asList((String)"x", (String)"y", (String)"z")))).equals(("xyz"));
    concatenate((new ArrayList<String>(Arrays.asList((String)"x", (String)"y", (String)"z", (String)"w", (String)"k")))).equals(("xyzwk"));
    }

}
