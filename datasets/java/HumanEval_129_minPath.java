import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a grid with N rows and N columns (N >= 2) and a positive integer k, 
    // each cell of the grid contains a value. Every integer in the range [1, N * N]
    // inclusive appears exactly once on the cells of the grid.
    // You have to find the minimum path of length k in the grid. You can start
    // from any cell, and in each step you can move to any of the neighbor cells,
    // in other words, you can go to cells which share an edge with you current
    // cell.
    // Please note that a path of length k means visiting exactly k cells (not
    // necessarily distinct).
    // You CANNOT go off the grid.
    // A path A (of length k) is considered less than a path B (of length k) if
    // after making the ordered lists of the values on the cells that A and B go
    // through (let's call them lst_A and lst_B), lst_A is lexicographically less
    // than lst_B, in other words, there exist an integer index i (1 <= i <= k)
    // such that lst_A[i] < lst_B[i] and for any j (1 <= j < i) we have
    // lst_A[j] = lst_B[j].
    // It is guaranteed that the answer is unique.
    // Return an ordered list of the values on the cells that the minimum path go through.
    // Examples:
    // Input: grid = [ [1,2,3], [4,5,6], [7,8,9]], k = 3
    // Output: [1, 2, 1]
    // Input: grid = [ [5,9,3], [4,1,6], [7,8,2]], k = 1
    // Output: [1]
    public static ArrayList<Long> minPath(ArrayList<ArrayList<Long>> grid, long k) {
        int n = grid.size();
        if (n < 2) {
            return new ArrayList<Long>();
        }
        int m = grid.get(0).size();
        if (m < 2) {
            return new ArrayList<Long>();
        }
        if (k < 1 || k > n * m) {
            return new ArrayList<Long>();
        }
        ArrayList<ArrayList<Long>> dp = new ArrayList<ArrayList<Long>>();
        for (int i = 0; i < n; i++) {
            ArrayList<Long> row = new ArrayList<Long>();
            for (int j = 0; j < m; j++) {
                row.add(getDefaultValue(Long.class));
            }
            dp.add(row);
        }
        dp.get(0).set(0, grid.get(0).get(0));
        for (int i = 1; i < n; i++) {
            dp.get(i).set(0, dp.get(i - 1).get(0) + grid.get(i).get(0));
        }
        for (int j = 1; j < m; j++) {
            dp.get(0).set(j, dp.get(0).get(j - 1) + grid.get(0).get(j));
        }
        for (int i = 1; i < n; i++) {
            for (int j = 1; j < m; j++) {
                dp.get(i).set(j, Math.min(dp.get(i - 1).get(j), dp.get(i).get(j - 1)) + grid.get(i).get(j));
            }
        }
        ArrayList<Long> res = new ArrayList<Long>();
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                if (dp.get(i).get(j) == k) {
                    res.add(grid.get(i).get(

    }
    public static void main(String[] args) {
    minPath((new ArrayList<ArrayList<Long>>(Arrays.asList((ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)4l, (long)5l, (long)6l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)7l, (long)8l, (long)9l))))), (3l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)1l))));
    minPath((new ArrayList<ArrayList<Long>>(Arrays.asList((ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)5l, (long)9l, (long)3l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)4l, (long)1l, (long)6l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)7l, (long)8l, (long)2l))))), (1l)).equals((new ArrayList<Long>(Arrays.asList((long)1l))));
    minPath((new ArrayList<ArrayList<Long>>(Arrays.asList((ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)5l, (long)6l, (long)7l, (long)8l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)9l, (long)10l, (long)11l, (long)12l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)13l, (long)14l, (long)15l, (long)16l))))), (4l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)1l, (long)2l))));
    minPath((new ArrayList<ArrayList<Long>>(Arrays.asList((ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)6l, (long)4l, (long)13l, (long)10l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)5l, (long)7l, (long)12l, (long)1l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)3l, (long)16l, (long)11l, (long)15l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)8l, (long)14l, (long)9l, (long)2l))))), (7l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)10l, (long)1l, (long)10l, (long)1l, (long)10l, (long)1l))));
    minPath((new ArrayList<ArrayList<Long>>(Arrays.asList((ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)8l, (long)14l, (long)9l, (long)2l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)6l, (long)4l, (long)13l, (long)15l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)5l, (long)7l, (long)1l, (long)12l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)3l, (long)10l, (long)11l, (long)16l))))), (5l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)7l, (long)1l, (long)7l, (long)1l))));
    minPath((new ArrayList<ArrayList<Long>>(Arrays.asList((ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)11l, (long)8l, (long)7l, (long)2l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)5l, (long)16l, (long)14l, (long)4l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)9l, (long)3l, (long)15l, (long)6l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)12l, (long)13l, (long)10l, (long)1l))))), (9l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)6l, (long)1l, (long)6l, (long)1l, (long)6l, (long)1l, (long)6l, (long)1l))));
    minPath((new ArrayList<ArrayList<Long>>(Arrays.asList((ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)12l, (long)13l, (long)10l, (long)1l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)9l, (long)3l, (long)15l, (long)6l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)5l, (long)16l, (long)14l, (long)4l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)11l, (long)8l, (long)7l, (long)2l))))), (12l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)6l, (long)1l, (long)6l, (long)1l, (long)6l, (long)1l, (long)6l, (long)1l, (long)6l, (long)1l, (long)6l))));
    minPath((new ArrayList<ArrayList<Long>>(Arrays.asList((ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)2l, (long)7l, (long)4l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)3l, (long)1l, (long)5l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)6l, (long)8l, (long)9l))))), (8l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)3l, (long)1l, (long)3l, (long)1l, (long)3l, (long)1l, (long)3l))));
    minPath((new ArrayList<ArrayList<Long>>(Arrays.asList((ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)6l, (long)1l, (long)5l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)3l, (long)8l, (long)9l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)2l, (long)7l, (long)4l))))), (8l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)5l, (long)1l, (long)5l, (long)1l, (long)5l, (long)1l, (long)5l))));
    minPath((new ArrayList<ArrayList<Long>>(Arrays.asList((ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)1l, (long)2l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)3l, (long)4l))))), (10l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)1l, (long)2l, (long)1l, (long)2l, (long)1l, (long)2l, (long)1l, (long)2l))));
    minPath((new ArrayList<ArrayList<Long>>(Arrays.asList((ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)1l, (long)3l)), (ArrayList<Long>)new ArrayList<Long>(Arrays.asList((long)3l, (long)2l))))), (10l)).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)3l, (long)1l, (long)3l, (long)1l, (long)3l, (long)1l, (long)3l, (long)1l, (long)3l))));
    }

}
