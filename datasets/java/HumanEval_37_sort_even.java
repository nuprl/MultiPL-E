import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // This function takes a list l and returns a list l' such that
    // l' is identical to l in the odd indicies, while its values at the even indicies are equal
    // to the values of the even indicies of l, but sorted.
    // >>> sort_even([1, 2, 3])
    // [1, 2, 3]
    // >>> sort_even([5, 6, 3, 4])
    // [3, 6, 5, 4]
    public static ArrayList<Long> sort_even(ArrayList<Long> l) {
        ArrayList<Long> l2 = new ArrayList<Long>();
        for (int i = 0; i < l.size(); i++) {
            if (i % 2 == 0) {
                l2.add(l.get(i));
            } else {
                l2.add(l.get(i));
                Collections.sort(l2);
            }
        }
        return l2;
    }
    // This function takes a list l and returns a list l' such that
    // l' is identical to l in the odd indicies, while its values at the even indicies are equal
    // to the values of the even indicies of l, but sorted.
    // >>> sort_even([1, 2, 3])
    // [1, 2, 3]
    // >>> sort_even([5, 6, 3, 4])
    // [3, 6, 5, 4]
    public static ArrayList<Integer> sort_even(ArrayList<Integer> l) {
        ArrayList<Integer> l2 = new ArrayList<Integer>();
        for (int i = 0; i < l.size(); i++) {
            if (i % 2 == 0) {
                l2.add(l.get(i));
            } else {
                l2.add(l.get(i));
                Collections.sort(l2);
            }
        }
        return l2;
    }
    // This function takes a list l and returns a list l' such that
    // l' is identical to l in the odd indicies, while its values at the even indicies are equal
    // to the values of the even indicies of l, but sorted.
    // >>> sort_even([1, 2, 3])
    // [1, 2, 3]
    // >>> sort_even([5, 6, 3, 4])
    // [3, 6, 5, 4]
    public static ArrayList<Double> sort_even(ArrayList<Double> l) {
        ArrayList<Double> l2 = new ArrayList<Double>();
        for (int i = 0; i < l.size(); i++)

    }
    public static void main(String[] args) {
    sort_even((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l)))).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l))));
    sort_even((new ArrayList<Long>(Arrays.asList((long)5l, (long)3l, (long)-5l, (long)2l, (long)-3l, (long)3l, (long)9l, (long)0l, (long)123l, (long)1l, (long)-10l)))).equals((new ArrayList<Long>(Arrays.asList((long)-10l, (long)3l, (long)-5l, (long)2l, (long)-3l, (long)3l, (long)5l, (long)0l, (long)9l, (long)1l, (long)123l))));
    sort_even((new ArrayList<Long>(Arrays.asList((long)5l, (long)8l, (long)-12l, (long)4l, (long)23l, (long)2l, (long)3l, (long)11l, (long)12l, (long)-10l)))).equals((new ArrayList<Long>(Arrays.asList((long)-12l, (long)8l, (long)3l, (long)4l, (long)5l, (long)2l, (long)12l, (long)11l, (long)23l, (long)-10l))));
    }

}
