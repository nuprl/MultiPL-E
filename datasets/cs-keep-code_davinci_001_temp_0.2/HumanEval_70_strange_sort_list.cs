using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given list of integers, return list in strange order.
    // Strange sorting, is when you start with the minimum value,
    // then maximum of the remaining integers, then minimum and so on.
    // Examples:
    // strange_sort_list([1, 2, 3, 4]) == [1, 4, 2, 3]
    // strange_sort_list([5, 5, 5, 5]) == [5, 5, 5, 5]
    // strange_sort_list([]) == []
    public static List<int> StrangeSortList(List<int> lst) {
        List<int> result = new List<int>();
        int min = lst.Min();
        int max = lst.Max();
        while (min != max) {
            result.Add(min);
            result.Add(max);
            lst.Remove(min);
            lst.Remove(max);
            min = lst.Min();
            max = lst.Max();
        }
        result.Add(min);
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(StrangeSortList((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4}))).Equals((new List<int>(new int[]{(int)1, (int)4, (int)2, (int)3}))));
    Debug.Assert(StrangeSortList((new List<int>(new int[]{(int)5, (int)6, (int)7, (int)8, (int)9}))).Equals((new List<int>(new int[]{(int)5, (int)9, (int)6, (int)8, (int)7}))));
    Debug.Assert(StrangeSortList((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)5}))).Equals((new List<int>(new int[]{(int)1, (int)5, (int)2, (int)4, (int)3}))));
    Debug.Assert(StrangeSortList((new List<int>(new int[]{(int)5, (int)6, (int)7, (int)8, (int)9, (int)1}))).Equals((new List<int>(new int[]{(int)1, (int)9, (int)5, (int)8, (int)6, (int)7}))));
    Debug.Assert(StrangeSortList((new List<int>(new int[]{(int)5, (int)5, (int)5, (int)5}))).Equals((new List<int>(new int[]{(int)5, (int)5, (int)5, (int)5}))));
    Debug.Assert(StrangeSortList((new List<int>())).Equals((new List<int>())));
    Debug.Assert(StrangeSortList((new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4, (int)5, (int)6, (int)7, (int)8}))).Equals((new List<int>(new int[]{(int)1, (int)8, (int)2, (int)7, (int)3, (int)6, (int)4, (int)5}))));
    Debug.Assert(StrangeSortList((new List<int>(new int[]{(int)0, (int)2, (int)2, (int)2, (int)5, (int)5, (int)-5, (int)-5}))).Equals((new List<int>(new int[]{(int)-5, (int)5, (int)-5, (int)5, (int)0, (int)2, (int)2, (int)2}))));
    Debug.Assert(StrangeSortList((new List<int>(new int[]{(int)111111}))).Equals((new List<int>(new int[]{(int)111111}))));
    }

}
