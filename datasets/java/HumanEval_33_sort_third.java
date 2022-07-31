import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // This function takes a list l and returns a list l' such that
    // l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
    // to the values of the corresponding indicies of l, but sorted.
    // >>> sort_third([1, 2, 3])
    // [1, 2, 3]
    // >>> sort_third([5, 6, 3, 4, 8, 9, 2])
    // [2, 6, 3, 4, 8, 9, 5]
    public static ArrayList<Long> sort_third(ArrayList<Long> l) {
    ArrayList<Long> l2 = new ArrayList<Long>();
    for (int i = 0; i < l.size(); i++) {
        if (i % 3 == 0) {
            l2.add(l.get(i));
        } else {
            l2.add(l.get(i));
        }
    }
    return l2;
}
    // This function takes a list l and returns a list l' such that
    // l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
    // to the values of the corresponding indicies of l, but sorted.
    // >>> sort_third([1, 2, 3])
    // [1, 2, 3]
    // >>> sort_third([5, 6, 3, 4, 8, 9, 2])
    // [2, 6, 3, 4, 8, 9, 5]
    public static ArrayList<Long> sort_third(ArrayList<Long> l) {
    ArrayList<Long> l2 = new ArrayList<Long>();
    for (int i = 0; i < l.size(); i++) {
        if (i % 3 == 0) {
            l2.add(l.get(i));
        } else {
            l2.add(l.get(i));
        }
    }
    return l2;
}
    // This function takes a list l and returns a list l' such that
    // l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
    // to the values of the corresponding indicies of l, but sorted.
    // >>> sort_third([1, 2, 3])
    // [1, 2, 3]
    // >>> sort_third([5, 6, 3, 4, 8, 9, 2])
    // [2, 6, 3, 4, 8, 9, 5]
    public static ArrayList<Long> sort_third(ArrayList<Long> l) {
    ArrayList<Long> l

    }
    public static void main(String[] args) {
    sort_third((new ArrayList<Long>(Arrays.asList((long)5l, (long)6l, (long)3l, (long)4l, (long)8l, (long)9l, (long)2l)))).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)6l, (long)3l, (long)4l, (long)8l, (long)9l, (long)5l))));
    sort_third((new ArrayList<Long>(Arrays.asList((long)5l, (long)8l, (long)3l, (long)4l, (long)6l, (long)9l, (long)2l)))).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)8l, (long)3l, (long)4l, (long)6l, (long)9l, (long)5l))));
    sort_third((new ArrayList<Long>(Arrays.asList((long)5l, (long)6l, (long)9l, (long)4l, (long)8l, (long)3l, (long)2l)))).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)6l, (long)9l, (long)4l, (long)8l, (long)3l, (long)5l))));
    sort_third((new ArrayList<Long>(Arrays.asList((long)5l, (long)6l, (long)3l, (long)4l, (long)8l, (long)9l, (long)2l, (long)1l)))).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)6l, (long)3l, (long)4l, (long)8l, (long)9l, (long)5l, (long)1l))));
    }

}
