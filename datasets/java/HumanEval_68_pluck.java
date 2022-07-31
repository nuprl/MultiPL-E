import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // "Given an array representing a branch of a tree that has non-negative integer nodes
    // your task is to pluck one of the nodes and return it.
    // The plucked node should be the node with the smallest even value.
    // If multiple nodes with the same smallest even value are found return the node that has smallest index.
    // The plucked node should be returned in a list, [ smalest_value, its index ],
    // If there are no even values or the given array is empty, return [].
    // Example 1:
    // Input: [4,2,3]
    // Output: [2, 1]
    // Explanation: 2 has the smallest even value, and 2 has the smallest index.
    // Example 2:
    // Input: [1,2,3]
    // Output: [2, 1]
    // Explanation: 2 has the smallest even value, and 2 has the smallest index. 
    // Example 3:
    // Input: []
    // Output: []
    // Example 4:
    // Input: [5, 0, 3, 0, 4, 2]
    // Output: [0, 1]
    // Explanation: 0 is the smallest value, but  there are two zeros,
    // so we will choose the first zero, which has the smallest index.
    // Constraints:
    // * 1 <= nodes.length <= 10000
    // * 0 <= node.value
    public static ArrayList<Long> pluck(ArrayList<Long> arr) {
        if (arr.size() == 0) {
            return new ArrayList<>();
        }
        ArrayList<Long> result = new ArrayList<>();
        int minIndex = 0;
        int minValue = arr.get(0);
        for (int i = 1; i < arr.size(); i++) {
            if (arr.get(i) % 2 == 0 && arr.get(i) < minValue) {
                minValue = arr.get(i);
                minIndex = i;
            }
        }
        result.add(minValue);
        result.add(minIndex);
        return result;
    }
    public static void main(String[] args) {
        ArrayList<Long> arr = new ArrayList<>();
        arr.add(4);
        arr.add(2);
        arr.add(3);
        System.out.println(pluck(arr));
    }
}
Problem.main(null);


    }
    public static void main(String[] args) {
    pluck((new ArrayList<Long>(Arrays.asList((long)4l, (long)2l, (long)3l)))).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)1l))));
    pluck((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l)))).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)1l))));
    pluck((new ArrayList<Long>(Arrays.asList()))).equals((new ArrayList<Long>(Arrays.asList())));
    pluck((new ArrayList<Long>(Arrays.asList((long)5l, (long)0l, (long)3l, (long)0l, (long)4l, (long)2l)))).equals((new ArrayList<Long>(Arrays.asList((long)0l, (long)1l))));
    pluck((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)0l, (long)5l, (long)3l)))).equals((new ArrayList<Long>(Arrays.asList((long)0l, (long)3l))));
    pluck((new ArrayList<Long>(Arrays.asList((long)5l, (long)4l, (long)8l, (long)4l, (long)8l)))).equals((new ArrayList<Long>(Arrays.asList((long)4l, (long)1l))));
    pluck((new ArrayList<Long>(Arrays.asList((long)7l, (long)6l, (long)7l, (long)1l)))).equals((new ArrayList<Long>(Arrays.asList((long)6l, (long)1l))));
    pluck((new ArrayList<Long>(Arrays.asList((long)7l, (long)9l, (long)7l, (long)1l)))).equals((new ArrayList<Long>(Arrays.asList())));
    }

}
