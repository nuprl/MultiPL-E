import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Create a function that returns a tuple (a, b), where 'a' is
    // the largest of negative integers, and 'b' is the smallest
    // of positive integers in a list.
    // If there is no negative or positive integers, return them as None.
    // Examples:
    // largest_smallest_integers([2, 4, 1, 3, 5, 7]) == (None, 1)
    // largest_smallest_integers([]) == (None, None)
    // largest_smallest_integers([0]) == (None, None)
    public static Pair<Optional<Long>, Optional<Long>> largest_smallest_integers(ArrayList<Long> lst) {
        if (lst.size() == 0) {
            return new Pair<>(Optional.empty(), Optional.empty());
        }
        long min = Long.MAX_VALUE;
        long max = Long.MIN_VALUE;
        for (Long i : lst) {
            if (i < 0) {
                min = Math.min(min, i);
            } else {
                max = Math.max(max, i);
            }
        }
        return new Pair<>(Optional.ofNullable(min), Optional.ofNullable(max));
    }
    public static void main(String[] args) {
        ArrayList<Long> lst = new ArrayList<>();
        lst.add(2L);
        lst.add(4L);
        lst.add(1L);
        lst.add(3L);
        lst.add(5L);
        lst.add(7L);
        Pair<Optional<Long>, Optional<Long>> result = largest_smallest_integers(lst);
        System.out.println(result);
    }
}
Problem.main(null);


    }
    public static void main(String[] args) {
    largest_smallest_integers((new ArrayList<Long>(Arrays.asList((long)2l, (long)4l, (long)1l, (long)3l, (long)5l, (long)7l)))).equals(Pair.with(Optional.empty(), 1l));
    largest_smallest_integers((new ArrayList<Long>(Arrays.asList((long)2l, (long)4l, (long)1l, (long)3l, (long)5l, (long)7l, (long)0l)))).equals(Pair.with(Optional.empty(), 1l));
    largest_smallest_integers((new ArrayList<Long>(Arrays.asList((long)1l, (long)3l, (long)2l, (long)4l, (long)5l, (long)6l, (long)-2l)))).equals(Pair.with(-2l, 1l));
    largest_smallest_integers((new ArrayList<Long>(Arrays.asList((long)4l, (long)5l, (long)3l, (long)6l, (long)2l, (long)7l, (long)-7l)))).equals(Pair.with(-7l, 2l));
    largest_smallest_integers((new ArrayList<Long>(Arrays.asList((long)7l, (long)3l, (long)8l, (long)4l, (long)9l, (long)2l, (long)5l, (long)-9l)))).equals(Pair.with(-9l, 2l));
    largest_smallest_integers((new ArrayList<Long>(Arrays.asList()))).equals(Pair.with(Optional.empty(), Optional.empty()));
    largest_smallest_integers((new ArrayList<Long>(Arrays.asList((long)0l)))).equals(Pair.with(Optional.empty(), Optional.empty()));
    largest_smallest_integers((new ArrayList<Long>(Arrays.asList((long)-1l, (long)-3l, (long)-5l, (long)-6l)))).equals(Pair.with(-1l, Optional.empty()));
    largest_smallest_integers((new ArrayList<Long>(Arrays.asList((long)-1l, (long)-3l, (long)-5l, (long)-6l, (long)0l)))).equals(Pair.with(-1l, Optional.empty()));
    largest_smallest_integers((new ArrayList<Long>(Arrays.asList((long)-6l, (long)-4l, (long)-4l, (long)-3l, (long)1l)))).equals(Pair.with(-3l, 1l));
    largest_smallest_integers((new ArrayList<Long>(Arrays.asList((long)-6l, (long)-4l, (long)-4l, (long)-3l, (long)-100l, (long)1l)))).equals(Pair.with(-3l, 1l));
    }

}
