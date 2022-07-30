import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // You are given a 2 dimensional data, as a nested lists,
    // which is similar to matrix, however, unlike matrices,
    // each row may contain a different number of columns.
    // Given lst, and integer x, find integers x in the list,
    // and return list of tuples, [(x1, y1), (x2, y2) ...] such that
    // each tuple is a coordinate - (row, columns), starting with 0.
    // Sort coordinates initially by rows in ascending order.
    // Also, sort coordinates of the row by columns in descending order.
    // Examples:
    // get_row([
    // [1,2,3,4,5,6],
    // [1,2,3,4,1,6],
    // [1,2,3,4,5,1]
    // ], 1) == [(0, 0), (1, 4), (1, 0), (2, 5), (2, 0)]
    // get_row([], 1) == []
    // get_row([[], [1], [1, 2, 3]], 3) == [(2, 2)]
    public static ArrayList<Pair<Long, Long>> get_row(ArrayList<ArrayList<Long>> lst, long x) {
        ArrayList<Pair<Long, Long>> result = new ArrayList<>();
        if (lst.size() == 0) {
            return result;
        }
        ArrayList<Pair<Long, Long>> result1 = new ArrayList<>();
        for (int i = 0; i < lst.size(); i++) {
            if (lst.get(i).contains(x)) {
                result1.add(new Pair<>(i, lst.get(i).indexOf(x)));
            }
        }
        Collections.sort(result1, new Comparator<Pair<Long, Long>>() {
            @Override
            public int compare(Pair<Long, Long> o1, Pair<Long, Long> o2) {
                if (o1.getValue0() == o2.getValue0()) {
                    return o2.getValue1() - o1.getValue1();
                }
                return o1.getValue0() - o2.getValue0();
            }
        });
        for (int i = 0; i < result1.size(); i++) {
            result.add(new Pair<>(result1.get(i).getValue0(), result1.get(i).getValue1()));
        }
        return result;
    }
    public static void main(String[] args) {
        ArrayList<ArrayList<Long>> lst = new ArrayList<>();
        lst.add(new ArrayList<Long>() {
            {
                add(1L);
                add(2L);
                add(3L);
                add(4L);
                add(5L);
                add(6L);
            }
        });
        lst.add(new ArrayList<Long>() {
            {
                add(1L);
                add(2L);
                add(3L);
                add(4L);
                add(1L);
                add(6L);
            }
        });
        lst.add(new ArrayList<Long>() {
            {
                add(1L);
               

    }
    public static void main(String[] args) {
    get_row((new ArrayList<ArrayList<Long>>(Arrays.asList((ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l, (long)5l, (long)6l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l, (long)1l, (long)6l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l, (long)5l, (long)1l))))), (1l)).equals((new ArrayList<Pair<Long, Long>>(Arrays.asList((Pair<Long, Long>)Pair.with(0l, 0l), (Pair<Long, Long>)Pair.with(1l, 4l), (Pair<Long, Long>)Pair.with(1l, 0l), (Pair<Long, Long>)Pair.with(2l, 5l), (Pair<Long, Long>)Pair.with(2l, 0l)))));
    get_row((new ArrayList<ArrayList<Long>>(Arrays.asList((ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l, (long)5l, (long)6l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l, (long)5l, (long)6l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l, (long)5l, (long)6l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l, (long)5l, (long)6l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l, (long)5l, (long)6l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l, (long)5l, (long)6l))))), (2l)).equals((new ArrayList<Pair<Long, Long>>(Arrays.asList((Pair<Long, Long>)Pair.with(0l, 1l), (Pair<Long, Long>)Pair.with(1l, 1l), (Pair<Long, Long>)Pair.with(2l, 1l), (Pair<Long, Long>)Pair.with(3l, 1l), (Pair<Long, Long>)Pair.with(4l, 1l), (Pair<Long, Long>)Pair.with(5l, 1l)))));
    get_row((new ArrayList<ArrayList<Long>>(Arrays.asList((ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l, (long)5l, (long)6l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l, (long)5l, (long)6l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)1l, (long)1l, (long)3l, (long)4l, (long)5l, (long)6l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)1l, (long)4l, (long)5l, (long)6l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)1l, (long)5l, (long)6l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l, (long)1l, (long)6l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l, (long)5l, (long)1l))))), (1l)).equals((new ArrayList<Pair<Long, Long>>(Arrays.asList((Pair<Long, Long>)Pair.with(0l, 0l), (Pair<Long, Long>)Pair.with(1l, 0l), (Pair<Long, Long>)Pair.with(2l, 1l), (Pair<Long, Long>)Pair.with(2l, 0l), (Pair<Long, Long>)Pair.with(3l, 2l), (Pair<Long, Long>)Pair.with(3l, 0l), (Pair<Long, Long>)Pair.with(4l, 3l), (Pair<Long, Long>)Pair.with(4l, 0l), (Pair<Long, Long>)Pair.with(5l, 4l), (Pair<Long, Long>)Pair.with(5l, 0l), (Pair<Long, Long>)Pair.with(6l, 5l), (Pair<Long, Long>)Pair.with(6l, 0l)))));
    get_row((new ArrayList<ArrayList<Long>>(Arrays.asList())), (1l)).equals((new ArrayList<Pair<Long, Long>>(Arrays.asList())));
    get_row((new ArrayList<ArrayList<Long>>(Arrays.asList((ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)1l))))), (2l)).equals((new ArrayList<Pair<Long, Long>>(Arrays.asList())));
    get_row((new ArrayList<ArrayList<Long>>(Arrays.asList((ArrayList<Long>)new ArrayList<Long>(Arrays.asList()), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)1l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l))))), (3l)).equals((new ArrayList<Pair<Long, Long>>(Arrays.asList((Pair<Long, Long>)Pair.with(2l, 2l)))));
    }

}
