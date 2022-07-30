import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given an array arr of integers and a positive integer k, return a sorted list 
    // of length k with the maximum k numbers in arr.
    // Example 1:
    // Input: arr = [-3, -4, 5], k = 3
    // Output: [-4, -3, 5]
    // Example 2:
    // Input: arr = [4, -4, 4], k = 2
    // Output: [4, 4]
    // Example 3:
    // Input: arr = [-3, 2, 1, 2, -1, -2, 1], k = 1
    // Output: [2]
    // Note:
    // 1. The length of the array will be in the range of [1, 1000].
    // 2. The elements in the array will be in the range of [-1000, 1000].
    // 3. 0 <= k <= len(arr)
    public static ArrayList<Long> maximum(ArrayList<Long> arr, long k) {
        // Write your code here
        ArrayList<Long> result = new ArrayList<>();
        PriorityQueue<Long> pq = new PriorityQueue<>();
        for (int i = 0; i < arr.size(); i++) {
            pq.add(arr.get(i));
            if (pq.size() > k) {
                pq.poll();
            }
        }
        while (!pq.isEmpty()) {
            result.add(pq.poll());
        }
        Collections.reverse(result);
        return result;
    }
    public static void main(String[] args) {
        ArrayList<Long> arr = new ArrayList<>();
        arr.add(-3L);
        arr.add(-4L);
        arr.add(5L);
        long k = 3;
        System.out.println(maximum(arr, k));
    }
}


    }
    public static void main(String[] args) {
    maximum((new ArrayList<Long>(Arrays.asList((long)-3l, (long)-4l, (long)5l))), (3l)).equals((new ArrayList<Long>(Arrays.asList((long)-4l, (long)-3l, (long)5l))));
    maximum((new ArrayList<Long>(Arrays.asList((long)4l, (long)-4l, (long)4l))), (2l)).equals((new ArrayList<Long>(Arrays.asList((long)4l, (long)4l))));
    maximum((new ArrayList<Long>(Arrays.asList((long)-3l, (long)2l, (long)1l, (long)2l, (long)-1l, (long)-2l, (long)1l))), (1l)).equals((new ArrayList<Long>(Arrays.asList((long)2l))));
    maximum((new ArrayList<Long>(Arrays.asList((long)123l, (long)-123l, (long)20l, (long)0l, (long)1l, (long)2l, (long)-3l))), (3l)).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)20l, (long)123l))));
    maximum((new ArrayList<Long>(Arrays.asList((long)-123l, (long)20l, (long)0l, (long)1l, (long)2l, (long)-3l))), (4l)).equals((new ArrayList<Long>(Arrays.asList((long)0l, (long)1l, (long)2l, (long)20l))));
    maximum((new ArrayList<Long>(Arrays.asList((long)5l, (long)15l, (long)0l, (long)3l, (long)-13l, (long)-8l, (long)0l))), (7l)).equals((new ArrayList<Long>(Arrays.asList((long)-13l, (long)-8l, (long)0l, (long)0l, (long)3l, (long)5l, (long)15l))));
    maximum((new ArrayList<Long>(Arrays.asList((long)-1l, (long)0l, (long)2l, (long)5l, (long)3l, (long)-10l))), (2l)).equals((new ArrayList<Long>(Arrays.asList((long)3l, (long)5l))));
    maximum((new ArrayList<Long>(Arrays.asList((long)1l, (long)0l, (long)5l, (long)-7l))), (1l)).equals((new ArrayList<Long>(Arrays.asList((long)5l))));
    maximum((new ArrayList<Long>(Arrays.asList((long)4l, (long)-4l))), (2l)).equals((new ArrayList<Long>(Arrays.asList((long)-4l, (long)4l))));
    maximum((new ArrayList<Long>(Arrays.asList((long)-10l, (long)10l))), (2l)).equals((new ArrayList<Long>(Arrays.asList((long)-10l, (long)10l))));
    maximum((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)-23l, (long)243l, (long)-400l, (long)0l))), (0l)).equals((new ArrayList<Long>(Arrays.asList())));
    }

}
