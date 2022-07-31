using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // You are given a 2 dimensional data, as a nested lists,
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
    public static List<Tuple<int, int>> GetRow(List<List<int>> lst, int x) {
        List<Tuple<int, int>> result = new List<Tuple<int, int>>();
        if (lst.Count == 0) return result;
        int[] rows = new int[lst.Count];
        for (int i = 0; i < lst.Count; i++) {
            rows[i] = lst[i].Count;
        }
        Array.Sort(rows);
        int[] row = new int[rows.Length];
        for (int i = 0; i < rows.Length; i++) {
            row[i] = rows[i];
        }
        for (int i = 0; i < row.Length; i++) {
            int[] col = new int[row[i]];
            for (int j = 0; j < row[i]; j++) {
                col[j] = lst[i][j];
            }
            Array.Sort(col);
            Array.Reverse(col);
            for (int j = 0; j < col.Length; j++) {
                if (col[j] == x) {
                    result.Add(new Tuple<int, int>(i, j));
                }
            }
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(GetRow((new List<List<int>>(new List<int>[]{(List<int>)new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)5, (int)6}), (List<int>)new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)1, (int)6}), (List<int>)new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)5, (int)1})})), (1)).Equals((new List<Tuple<int, int>>(new Tuple<int, int>[]{(Tuple<int, int>)Tuple.Create(0, 0), (Tuple<int, int>)Tuple.Create(1, 4), (Tuple<int, int>)Tuple.Create(1, 0), (Tuple<int, int>)Tuple.Create(2, 5), (Tuple<int, int>)Tuple.Create(2, 0)}))));
    Debug.Assert(GetRow((new List<List<int>>(new List<int>[]{(List<int>)new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)5, (int)6}), (List<int>)new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)5, (int)6}), (List<int>)new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)5, (int)6}), (List<int>)new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)5, (int)6}), (List<int>)new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)5, (int)6}), (List<int>)new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)5, (int)6})})), (2)).Equals((new List<Tuple<int, int>>(new Tuple<int, int>[]{(Tuple<int, int>)Tuple.Create(0, 1), (Tuple<int, int>)Tuple.Create(1, 1), (Tuple<int, int>)Tuple.Create(2, 1), (Tuple<int, int>)Tuple.Create(3, 1), (Tuple<int, int>)Tuple.Create(4, 1), (Tuple<int, int>)Tuple.Create(5, 1)}))));
    Debug.Assert(GetRow((new List<List<int>>(new List<int>[]{(List<int>)new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)5, (int)6}), (List<int>)new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)5, (int)6}), (List<int>)new List<int>(new int[]{(int)1, (int)1, (int)3, (int)4, (int)5, (int)6}), (List<int>)new List<int>(new int[]{(int)1, (int)2, (int)1, (int)4, (int)5, (int)6}), (List<int>)new List<int>(new int[]{(int)1, (int)2, (int)3, (int)1, (int)5, (int)6}), (List<int>)new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)1, (int)6}), (List<int>)new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)5, (int)1})})), (1)).Equals((new List<Tuple<int, int>>(new Tuple<int, int>[]{(Tuple<int, int>)Tuple.Create(0, 0), (Tuple<int, int>)Tuple.Create(1, 0), (Tuple<int, int>)Tuple.Create(2, 1), (Tuple<int, int>)Tuple.Create(2, 0), (Tuple<int, int>)Tuple.Create(3, 2), (Tuple<int, int>)Tuple.Create(3, 0), (Tuple<int, int>)Tuple.Create(4, 3), (Tuple<int, int>)Tuple.Create(4, 0), (Tuple<int, int>)Tuple.Create(5, 4), (Tuple<int, int>)Tuple.Create(5, 0), (Tuple<int, int>)Tuple.Create(6, 5), (Tuple<int, int>)Tuple.Create(6, 0)}))));
    Debug.Assert(GetRow((new List<List<int>>()), (1)).Equals((new List<Tuple<int, int>>())));
    Debug.Assert(GetRow((new List<List<int>>(new List<int>[]{(List<int>)new List<int>(new int[]{(int)1})})), (2)).Equals((new List<Tuple<int, int>>())));
    Debug.Assert(GetRow((new List<List<int>>(new List<int>[]{(List<int>)new List<int>(), (List<int>)new List<int>(new int[]{(int)1}), (List<int>)new List<int>(new int[]{(int)1, (int)2, (int)3})})), (3)).Equals((new List<Tuple<int, int>>(new Tuple<int, int>[]{(Tuple<int, int>)Tuple.Create(2, 2)}))));
    }

}
