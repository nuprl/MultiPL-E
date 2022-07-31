import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // In this Kata, you have to sort an array of non-negative integers according to
    // number of ones in their binary representation in ascending order.
    // For similar number of ones, sort based on decimal value.
    // It must be implemented like this:
    // >>> sort_array([1, 5, 2, 3, 4]) == [1, 2, 3, 4, 5]
    // >>> sort_array([-2, -3, -4, -5, -6]) == [-6, -5, -4, -3, -2]
    // >>> sort_array([1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
    public static ArrayList<Long> sort_array(ArrayList<Long> arr) {
        ArrayList<Long> result = new ArrayList<>();
        ArrayList<Long> ones = new ArrayList<>();
        ArrayList<Long> zeros = new ArrayList<>();
        for (Long i : arr) {
            if (i == 0) {
                zeros.add(i);
            } else {
                ones.add(i);
            }
        }
        Collections.sort(ones);
        Collections.sort(zeros);
        result.addAll(zeros);
        result.addAll(ones);
        return result;
    }
    public static void main(String[] args) {
        ArrayList<Long> arr = new ArrayList<>();
        arr.add(1L);
        arr.add(5L);
        arr.add(2L);
        arr.add(3L);
        arr.add(4L);
        System.out.println(sort_array(arr));
    }
}

    }
    public static void main(String[] args) {
    sort_array((new ArrayList<Long>(Arrays.asList((long)1l, (long)5l, (long)2l, (long)3l, (long)4l)))).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)4l, (long)3l, (long)5l))));
    sort_array((new ArrayList<Long>(Arrays.asList((long)-2l, (long)-3l, (long)-4l, (long)-5l, (long)-6l)))).equals((new ArrayList<Long>(Arrays.asList((long)-4l, (long)-2l, (long)-6l, (long)-5l, (long)-3l))));
    sort_array((new ArrayList<Long>(Arrays.asList((long)1l, (long)0l, (long)2l, (long)3l, (long)4l)))).equals((new ArrayList<Long>(Arrays.asList((long)0l, (long)1l, (long)2l, (long)4l, (long)3l))));
    sort_array((new ArrayList<Long>(Arrays.asList()))).equals((new ArrayList<Long>(Arrays.asList())));
    sort_array((new ArrayList<Long>(Arrays.asList((long)2l, (long)5l, (long)77l, (long)4l, (long)5l, (long)3l, (long)5l, (long)7l, (long)2l, (long)3l, (long)4l)))).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)2l, (long)4l, (long)4l, (long)3l, (long)3l, (long)5l, (long)5l, (long)5l, (long)7l, (long)77l))));
    sort_array((new ArrayList<Long>(Arrays.asList((long)3l, (long)6l, (long)44l, (long)12l, (long)32l, (long)5l)))).equals((new ArrayList<Long>(Arrays.asList((long)32l, (long)3l, (long)5l, (long)6l, (long)12l, (long)44l))));
    sort_array((new ArrayList<Long>(Arrays.asList((long)2l, (long)4l, (long)8l, (long)16l, (long)32l)))).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)4l, (long)8l, (long)16l, (long)32l))));
    sort_array((new ArrayList<Long>(Arrays.asList((long)2l, (long)4l, (long)8l, (long)16l, (long)32l)))).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)4l, (long)8l, (long)16l, (long)32l))));
    }

}
