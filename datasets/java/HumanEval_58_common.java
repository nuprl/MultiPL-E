import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Return sorted unique common elements for two lists.
    // >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
    // [1, 5, 653]
    // >>> common([5, 3, 2, 8], [3, 2])
    // [2, 3]
    public static ArrayList<Long> common(ArrayList<Long> l1, ArrayList<Long> l2) {
        ArrayList<Long> result = new ArrayList<Long>();
        for (Long i : l1) {
            if (l2.contains(i)) {
                result.add(i);
            }
        }
        Collections.sort(result);
        return result;
    }
    // Return sorted unique common elements for three lists.
    // >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121], [1, 5, 653])
    // [1, 5, 653]
    // >>> common([5, 3, 2, 8], [3, 2], [2, 3])
    // [2, 3]
    public static ArrayList<Long> common(ArrayList<Long> l1, ArrayList<Long> l2, ArrayList<Long> l3) {
        ArrayList<Long> result = new ArrayList<Long>();
        for (Long i : l1) {
            if (l2.contains(i) && l3.contains(i)) {
                result.add(i);
            }
        }
        Collections.sort(result);
        return result;
    }
    // Return sorted unique common elements for four lists.
    // >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121], [1, 5, 653], [1, 5, 653, 3, 2])
    // [1, 5, 653]
    // >>> common([5, 3, 2, 8], [3, 2], [2, 3], [2, 3, 5])
    // [2, 3]
    public static ArrayList<Long> common(ArrayList<Long> l1, ArrayList<Long> l2, ArrayList<Long> l3, ArrayList<Long> l4) {
        ArrayList<Long> result = new ArrayList<Long>();
        for (Long i : l1) {
            if (l2.contains(i) && l3.contains(i) && l4.

    }
    public static void main(String[] args) {
    common((new ArrayList<Long>(Arrays.asList((long)1l, (long)4l, (long)3l, (long)34l, (long)653l, (long)2l, (long)5l))), (new ArrayList<Long>(Arrays.asList((long)5l, (long)7l, (long)1l, (long)5l, (long)9l, (long)653l, (long)121l)))).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)5l, (long)653l))));
    common((new ArrayList<Long>(Arrays.asList((long)5l, (long)3l, (long)2l, (long)8l))), (new ArrayList<Long>(Arrays.asList((long)3l, (long)2l)))).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)3l))));
    common((new ArrayList<Long>(Arrays.asList((long)4l, (long)3l, (long)2l, (long)8l))), (new ArrayList<Long>(Arrays.asList((long)3l, (long)2l, (long)4l)))).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)3l, (long)4l))));
    common((new ArrayList<Long>(Arrays.asList((long)4l, (long)3l, (long)2l, (long)8l))), (new ArrayList<Long>(Arrays.asList()))).equals((new ArrayList<Long>(Arrays.asList())));
    }

}
