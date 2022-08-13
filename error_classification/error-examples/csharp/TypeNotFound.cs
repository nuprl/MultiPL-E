# ---- HumanEval_129_minPath --- completion 157 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a grid with N rows and N columns (N >= 2) and a positive integer k, 
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
    // >>> Minpath((new List<List<long>>(new List<long>[]{(List<long>)new List<long>(new long[]{(long)1L, (long)2L, (long)3L}), (List<long>)new List<long>(new long[]{(long)4L, (long)5L, (long)6L}), (List<long>)new List<long>(new long[]{(long)7L, (long)8L, (long)9L})})), (3L))
    // (new List<long>(new long[]{(long)1L, (long)2L, (long)1L}))
    // >>> Minpath((new List<List<long>>(new List<long>[]{(List<long>)new List<long>(new long[]{(long)5L, (long)9L, (long)3L}), (List<long>)new List<long>(new long[]{(long)4L, (long)1L, (long)6L}), (List<long>)new List<long>(new long[]{(long)7L, (long)8L, (long)2L})})), (1L))
    // (new List<long>(new long[]{(long)1L}))
    public static List<long> Minpath(List<List<long>> grid, long k) {
        var n = grid.Count;
        var m = grid[0].Count;
        var dp = new List<List<long>>(n);
        for (var i = 0; i < n; i++) {
            dp.Add(new List<long>(m));
            for (var j = 0; j < m; j++) {
                dp[i].Add(long.MaxValue);
            }
        }
        var pq = new PriorityQueue<Tuple<long, long, long>>();
        pq.Enqueue(Tuple.Create(0L, 0L, 0L));
        while (pq.Count > 0) {
            var t = pq.Dequeue();
            var x = t.Item2;
            var y = t.Item3;
            if (dp[x][y] <= t.Item1) {
                continue;
            }
            dp[x][y] = t.Item1;
            if (x > 0) {
                pq.Enqueue(Tuple.Create(t.Item1 + grid[x - 1][y], x - 1, y));
            }
            if (x < n - 1) {
                pq.Enqueue(Tuple.Create(t.Item1 + grid[x + 1][y], x + 1, y));
            }
            if (y > 0) {
                pq.Enqueue(Tuple.Create(t.Item1 + grid[x][y - 1], x, y - 1));
            }
            if (y < m - 1) {
                pq.Enqueue(Tuple.Create(t.Item1 + grid[x][y + 1], x, y + 1));
            }
        }
        var ans = new List<long>();
        for (var i = 0; i < n; i++) {
            for (var j = 0; j < m; j++) {
                if (dp[i][j] == k) {
                    ans.Add(grid[i][j]);
                }
            }
        }
        return ans;
    }
    public static void Main(string[] args) {
    Debug.Assert(Minpath((new List<List<long>>(new List<long>[]{(List<long>)new List<long>(new long[]{(long)1L, (long)2L, (long)3L}), (List<long>)new List<long>(new long[]{(long)4L, (long)5L, (long)6L}), (List<long>)new List<long>(new long[]{(long)7L, (long)8L, (long)9L})})), (3L)).Equals((new List<long>(new long[]{(long)1L, (long)2L, (long)1L}))));
    Debug.Assert(Minpath((new List<List<long>>(new List<long>[]{(List<long>)new List<long>(new long[]{(long)5L, (long)9L, (long)3L}), (List<long>)new List<long>(new long[]{(long)4L, (long)1L, (long)6L}), (List<long>)new List<long>(new long[]{(long)7L, (long)8L, (long)2L})})), (1L)).Equals((new List<long>(new long[]{(long)1L}))));
    Debug.Assert(Minpath((new List<List<long>>(new List<long>[]{(List<long>)new List<long>(new long[]{(long)1L, (long)2L, (long)3L, (long)4L}), (List<long>)new List<long>(new long[]{(long)5L, (long)6L, (long)7L, (long)8L}), (List<long>)new List<long>(new long[]{(long)9L, (long)10L, (long)11L, (long)12L}), (List<long>)new List<long>(new long[]{(long)13L, (long)14L, (long)15L, (long)16L})})), (4L)).Equals((new List<long>(new long[]{(long)1L, (long)2L, (long)1L, (long)2L}))));
    Debug.Assert(Minpath((new List<List<long>>(new List<long>[]{(List<long>)new List<long>(new long[]{(long)6L, (long)4L, (long)13L, (long)10L}), (List<long>)new List<long>(new long[]{(long)5L, (long)7L, (long)12L, (long)1L}), (List<long>)new List<long>(new long[]{(long)3L, (long)16L, (long)11L, (long)15L}), (List<long>)new List<long>(new long[]{(long)8L, (long)14L, (long)9L, (long)2L})})), (7L)).Equals((new List<long>(new long[]{(long)1L, (long)10L, (long)1L, (long)10L, (long)1L, (long)10L, (long)1L}))));
    Debug.Assert(Minpath((new List<List<long>>(new List<long>[]{(List<long>)new List<long>(new long[]{(long)8L, (long)14L, (long)9L, (long)2L}), (List<long>)new List<long>(new long[]{(long)6L, (long)4L, (long)13L, (long)15L}), (List<long>)new List<long>(new long[]{(long)5L, (long)7L, (long)1L, (long)12L}), (List<long>)new List<long>(new long[]{(long)3L, (long)10L, (long)11L, (long)16L})})), (5L)).Equals((new List<long>(new long[]{(long)1L, (long)7L, (long)1L, (long)7L, (long)1L}))));
    Debug.Assert(Minpath((new List<List<long>>(new List<long>[]{(List<long>)new List<long>(new long[]{(long)11L, (long)8L, (long)7L, (long)2L}), (List<long>)new List<long>(new long[]{(long)5L, (long)16L, (long)14L, (long)4L}), (List<long>)new List<long>(new long[]{(long)9L, (long)3L, (long)15L, (long)6L}), (List<long>)new List<long>(new long[]{(long)12L, (long)13L, (long)10L, (long)1L})})), (9L)).Equals((new List<long>(new long[]{(long)1L, (long)6L, (long)1L, (long)6L, (long)1L, (long)6L, (long)1L, (long)6L, (long)1L}))));
    Debug.Assert(Minpath((new List<List<long>>(new List<long>[]{(List<long>)new List<long>(new long[]{(long)12L, (long)13L, (long)10L, (long)1L}), (List<long>)new List<long>(new long[]{(long)9L, (long)3L, (long)15L, (long)6L}), (List<long>)new List<long>(new long[]{(long)5L, (long)16L, (long)14L, (long)4L}), (List<long>)new List<long>(new long[]{(long)11L, (long)8L, (long)7L, (long)2L})})), (12L)).Equals((new List<long>(new long[]{(long)1L, (long)6L, (long)1L, (long)6L, (long)1L, (long)6L, (long)1L, (long)6L, (long)1L, (long)6L, (long)1L, (long)6L}))));
    Debug.Assert(Minpath((new List<List<long>>(new List<long>[]{(List<long>)new List<long>(new long[]{(long)2L, (long)7L, (long)4L}), (List<long>)new List<long>(new long[]{(long)3L, (long)1L, (long)5L}), (List<long>)new List<long>(new long[]{(long)6L, (long)8L, (long)9L})})), (8L)).Equals((new List<long>(new long[]{(long)1L, (long)3L, (long)1L, (long)3L, (long)1L, (long)3L, (long)1L, (long)3L}))));
    Debug.Assert(Minpath((new List<List<long>>(new List<long>[]{(List<long>)new List<long>(new long[]{(long)6L, (long)1L, (long)5L}), (List<long>)new List<long>(new long[]{(long)3L, (long)8L, (long)9L}), (List<long>)new List<long>(new long[]{(long)2L, (long)7L, (long)4L})})), (8L)).Equals((new List<long>(new long[]{(long)1L, (long)5L, (long)1L, (long)5L, (long)1L, (long)5L, (long)1L, (long)5L}))));
    Debug.Assert(Minpath((new List<List<long>>(new List<long>[]{(List<long>)new List<long>(new long[]{(long)1L, (long)2L}), (List<long>)new List<long>(new long[]{(long)3L, (long)4L})})), (10L)).Equals((new List<long>(new long[]{(long)1L, (long)2L, (long)1L, (long)2L, (long)1L, (long)2L, (long)1L, (long)2L, (long)1L, (long)2L}))));
    Debug.Assert(Minpath((new List<List<long>>(new List<long>[]{(List<long>)new List<long>(new long[]{(long)1L, (long)3L}), (List<long>)new List<long>(new long[]{(long)3L, (long)2L})})), (10L)).Equals((new List<long>(new long[]{(long)1L, (long)3L, (long)1L, (long)3L, (long)1L, (long)3L, (long)1L, (long)3L, (long)1L, (long)3L}))));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmp16pzgqkw.cs(42,22): error CS0246: The type or namespace name 'PriorityQueue<>' could not be found (are you missing a using directive or an assembly reference?)
/tmp/tmp16pzgqkw.cs(44,16): error CS0019: Operator '>' cannot be applied to operands of type 'method group' and 'int'

'''





# ---- HumanEval_116_sort_array --- completion 0 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // In this Kata, you have to sort a list of non-negative integers according to
    // number of ones in their binary representation in ascending order.
    // For similar number of ones, sort based on decimal value.
    // It must be implemented like this:
    // >>> SortArray((new List<long>(new long[]{(long)1L, (long)5L, (long)2L, (long)3L, (long)4L})))
    // (new List<long>(new long[]{(long)1L, (long)2L, (long)3L, (long)4L, (long)5L}))
    // >>> SortArray((new List<long>(new long[]{(long)-2L, (long)-3L, (long)-4L, (long)-5L, (long)-6L})))
    // (new List<long>(new long[]{(long)-6L, (long)-5L, (long)-4L, (long)-3L, (long)-2L}))
    // >>> SortArray((new List<long>(new long[]{(long)1L, (long)0L, (long)2L, (long)3L, (long)4L})))
    // (new List<long>(new long[]{(long)0L, (long)1L, (long)2L, (long)3L, (long)4L}))
    public static List<long> SortArray(List<long> arr) {
        return arr.OrderBy(x => x.ToString("X"), new HexComparer()).ToList();
    }
    public static void Main(string[] args) {
    Debug.Assert(SortArray((new List<long>(new long[]{(long)1L, (long)5L, (long)2L, (long)3L, (long)4L}))).Equals((new List<long>(new long[]{(long)1L, (long)2L, (long)4L, (long)3L, (long)5L}))));
    Debug.Assert(SortArray((new List<long>(new long[]{(long)-2L, (long)-3L, (long)-4L, (long)-5L, (long)-6L}))).Equals((new List<long>(new long[]{(long)-4L, (long)-2L, (long)-6L, (long)-5L, (long)-3L}))));
    Debug.Assert(SortArray((new List<long>(new long[]{(long)1L, (long)0L, (long)2L, (long)3L, (long)4L}))).Equals((new List<long>(new long[]{(long)0L, (long)1L, (long)2L, (long)4L, (long)3L}))));
    Debug.Assert(SortArray((new List<long>())).Equals((new List<long>())));
    Debug.Assert(SortArray((new List<long>(new long[]{(long)2L, (long)5L, (long)77L, (long)4L, (long)5L, (long)3L, (long)5L, (long)7L, (long)2L, (long)3L, (long)4L}))).Equals((new List<long>(new long[]{(long)2L, (long)2L, (long)4L, (long)4L, (long)3L, (long)3L, (long)5L, (long)5L, (long)5L, (long)7L, (long)77L}))));
    Debug.Assert(SortArray((new List<long>(new long[]{(long)3L, (long)6L, (long)44L, (long)12L, (long)32L, (long)5L}))).Equals((new List<long>(new long[]{(long)32L, (long)3L, (long)5L, (long)6L, (long)12L, (long)44L}))));
    Debug.Assert(SortArray((new List<long>(new long[]{(long)2L, (long)4L, (long)8L, (long)16L, (long)32L}))).Equals((new List<long>(new long[]{(long)2L, (long)4L, (long)8L, (long)16L, (long)32L}))));
    Debug.Assert(SortArray((new List<long>(new long[]{(long)2L, (long)4L, (long)8L, (long)16L, (long)32L}))).Equals((new List<long>(new long[]{(long)2L, (long)4L, (long)8L, (long)16L, (long)32L}))));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmp8e9xvroh.cs(20,54): error CS0246: The type or namespace name 'HexComparer' could not be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_116_sort_array --- completion 64 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // In this Kata, you have to sort a list of non-negative integers according to
    // number of ones in their binary representation in ascending order.
    // For similar number of ones, sort based on decimal value.
    // It must be implemented like this:
    // >>> SortArray((new List<long>(new long[]{(long)1L, (long)5L, (long)2L, (long)3L, (long)4L})))
    // (new List<long>(new long[]{(long)1L, (long)2L, (long)3L, (long)4L, (long)5L}))
    // >>> SortArray((new List<long>(new long[]{(long)-2L, (long)-3L, (long)-4L, (long)-5L, (long)-6L})))
    // (new List<long>(new long[]{(long)-6L, (long)-5L, (long)-4L, (long)-3L, (long)-2L}))
    // >>> SortArray((new List<long>(new long[]{(long)1L, (long)0L, (long)2L, (long)3L, (long)4L})))
    // (new List<long>(new long[]{(long)0L, (long)1L, (long)2L, (long)3L, (long)4L}))
    public static List<long> SortArray(List<long> arr) {
        return arr.OrderBy(x => x.ToString("X"), new HexComparer()).ToList();
    }
    public static void Main(string[] args) {
    Debug.Assert(SortArray((new List<long>(new long[]{(long)1L, (long)5L, (long)2L, (long)3L, (long)4L}))).Equals((new List<long>(new long[]{(long)1L, (long)2L, (long)4L, (long)3L, (long)5L}))));
    Debug.Assert(SortArray((new List<long>(new long[]{(long)-2L, (long)-3L, (long)-4L, (long)-5L, (long)-6L}))).Equals((new List<long>(new long[]{(long)-4L, (long)-2L, (long)-6L, (long)-5L, (long)-3L}))));
    Debug.Assert(SortArray((new List<long>(new long[]{(long)1L, (long)0L, (long)2L, (long)3L, (long)4L}))).Equals((new List<long>(new long[]{(long)0L, (long)1L, (long)2L, (long)4L, (long)3L}))));
    Debug.Assert(SortArray((new List<long>())).Equals((new List<long>())));
    Debug.Assert(SortArray((new List<long>(new long[]{(long)2L, (long)5L, (long)77L, (long)4L, (long)5L, (long)3L, (long)5L, (long)7L, (long)2L, (long)3L, (long)4L}))).Equals((new List<long>(new long[]{(long)2L, (long)2L, (long)4L, (long)4L, (long)3L, (long)3L, (long)5L, (long)5L, (long)5L, (long)7L, (long)77L}))));
    Debug.Assert(SortArray((new List<long>(new long[]{(long)3L, (long)6L, (long)44L, (long)12L, (long)32L, (long)5L}))).Equals((new List<long>(new long[]{(long)32L, (long)3L, (long)5L, (long)6L, (long)12L, (long)44L}))));
    Debug.Assert(SortArray((new List<long>(new long[]{(long)2L, (long)4L, (long)8L, (long)16L, (long)32L}))).Equals((new List<long>(new long[]{(long)2L, (long)4L, (long)8L, (long)16L, (long)32L}))));
    Debug.Assert(SortArray((new List<long>(new long[]{(long)2L, (long)4L, (long)8L, (long)16L, (long)32L}))).Equals((new List<long>(new long[]{(long)2L, (long)4L, (long)8L, (long)16L, (long)32L}))));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmp8e9xvroh.cs(20,54): error CS0246: The type or namespace name 'HexComparer' could not be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_19_sort_numbers --- completion 8 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Input is a space-delimited string of numberals from 'zero' to 'nine'.
    // Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
    // Return the string with numbers sorted from smallest to largest
    // >>> SortNumbers(("three one five"))
    // ("one three five")
    public static string SortNumbers(string numbers) {
        var nums = numbers.Split(' ').Select(s => (int)Enum.Parse(typeof(Numbers), s)).OrderBy(n => n).Select(n => (Numbers)n).Select(n => n.ToString());
        return string.Join(" ", nums);
    }
    public static void Main(string[] args) {
    Debug.Assert(SortNumbers(("")).Equals(("")));
    Debug.Assert(SortNumbers(("three")).Equals(("three")));
    Debug.Assert(SortNumbers(("three five nine")).Equals(("three five nine")));
    Debug.Assert(SortNumbers(("five zero four seven nine eight")).Equals(("zero four five seven eight nine")));
    Debug.Assert(SortNumbers(("six five four three two one zero")).Equals(("zero one two three four five six")));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmpw4vc32ce.cs(15,74): error CS0246: The type or namespace name 'Numbers' could not be found (are you missing a using directive or an assembly reference?)
/tmp/tmpw4vc32ce.cs(15,117): error CS0246: The type or namespace name 'Numbers' could not be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_19_sort_numbers --- completion 42 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Input is a space-delimited string of numberals from 'zero' to 'nine'.
    // Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
    // Return the string with numbers sorted from smallest to largest
    // >>> SortNumbers(("three one five"))
    // ("one three five")
    public static string SortNumbers(string numbers) {
        var nums = numbers.Split(' ').Select(x => (int)Enum.Parse(typeof(Numbers), x)).OrderBy(x => x).Select(x => (Numbers)x).Select(x => x.ToString());
        return string.Join(" ", nums);
    }
    public static void Main(string[] args) {
    Debug.Assert(SortNumbers(("")).Equals(("")));
    Debug.Assert(SortNumbers(("three")).Equals(("three")));
    Debug.Assert(SortNumbers(("three five nine")).Equals(("three five nine")));
    Debug.Assert(SortNumbers(("five zero four seven nine eight")).Equals(("zero four five seven eight nine")));
    Debug.Assert(SortNumbers(("six five four three two one zero")).Equals(("zero one two three four five six")));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmpfq2qs9az.cs(15,74): error CS0246: The type or namespace name 'Numbers' could not be found (are you missing a using directive or an assembly reference?)
/tmp/tmpfq2qs9az.cs(15,117): error CS0246: The type or namespace name 'Numbers' could not be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_19_sort_numbers --- completion 155 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Input is a space-delimited string of numberals from 'zero' to 'nine'.
    // Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
    // Return the string with numbers sorted from smallest to largest
    // >>> SortNumbers(("three one five"))
    // ("one three five")
    public static string SortNumbers(string numbers) {
        var nums = numbers.Split(' ').Select(s => (int)Enum.Parse(typeof(Numbers), s)).OrderBy(i => i).Select(i => Enum.GetName(typeof(Numbers), i));
        return string.Join(" ", nums);
    }
    public static void Main(string[] args) {
    Debug.Assert(SortNumbers(("")).Equals(("")));
    Debug.Assert(SortNumbers(("three")).Equals(("three")));
    Debug.Assert(SortNumbers(("three five nine")).Equals(("three five nine")));
    Debug.Assert(SortNumbers(("five zero four seven nine eight")).Equals(("zero four five seven eight nine")));
    Debug.Assert(SortNumbers(("six five four three two one zero")).Equals(("zero one two three four five six")));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmpx7_xud_7.cs(15,74): error CS0246: The type or namespace name 'Numbers' could not be found (are you missing a using directive or an assembly reference?)
/tmp/tmpx7_xud_7.cs(15,136): error CS0246: The type or namespace name 'Numbers' could not be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_19_sort_numbers --- completion 182 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Input is a space-delimited string of numberals from 'zero' to 'nine'.
    // Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
    // Return the string with numbers sorted from smallest to largest
    // >>> SortNumbers(("three one five"))
    // ("one three five")
    public static string SortNumbers(string numbers) {
        var nums = numbers.Split(' ').Select(s => (int)Enum.Parse(typeof(Numbers), s)).OrderBy(i => i).Select(i => (Numbers)i).Select(n => n.ToString());
        return string.Join(" ", nums);
    }
    public static void Main(string[] args) {
    Debug.Assert(SortNumbers(("")).Equals(("")));
    Debug.Assert(SortNumbers(("three")).Equals(("three")));
    Debug.Assert(SortNumbers(("three five nine")).Equals(("three five nine")));
    Debug.Assert(SortNumbers(("five zero four seven nine eight")).Equals(("zero four five seven eight nine")));
    Debug.Assert(SortNumbers(("six five four three two one zero")).Equals(("zero one two three four five six")));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmp1ondieh6.cs(15,74): error CS0246: The type or namespace name 'Numbers' could not be found (are you missing a using directive or an assembly reference?)
/tmp/tmp1ondieh6.cs(15,117): error CS0246: The type or namespace name 'Numbers' could not be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_120_maximum --- completion 3 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a list arr of integers and a positive integer k, return a sorted list 
    // of length k with the maximum k numbers in arr.
    // Example 1:
    // >>> Maximum((new List<long>(new long[]{(long)-3L, (long)-4L, (long)5L})), (3L))
    // (new List<long>(new long[]{(long)-4L, (long)-3L, (long)5L}))
    // Example 2:
    // >>> Maximum((new List<long>(new long[]{(long)4L, (long)-4L, (long)4L})), (2L))
    // (new List<long>(new long[]{(long)4L, (long)4L}))
    // Example 3:
    // >>> Maximum((new List<long>(new long[]{(long)-3L, (long)2L, (long)1L, (long)2L, (long)-1L, (long)-2L, (long)1L})), (1L))
    // (new List<long>(new long[]{(long)2L}))
    // Note:
    // 1. The length of the list will be in the range of [1, 1000].
    // 2. The elements in the list will be in the range of [-1000, 1000].
    // 3. 0 <= k <= len(arr)
    public static List<long> Maximum(List<long> arr, long k) {
        var res = new List<long>();
        var pq = new PriorityQueue<long>();
        foreach (var x in arr) {
            pq.Add(x);
            if (pq.Count > k) {
                pq.Remove();
            }
        }
        while (pq.Count > 0) {
            res.Add(pq.Remove());
        }
        res.Reverse();
        return res;
    }
    public static void Main(string[] args) {
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-3L, (long)-4L, (long)5L})), (3L)).Equals((new List<long>(new long[]{(long)-4L, (long)-3L, (long)5L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)4L, (long)-4L, (long)4L})), (2L)).Equals((new List<long>(new long[]{(long)4L, (long)4L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-3L, (long)2L, (long)1L, (long)2L, (long)-1L, (long)-2L, (long)1L})), (1L)).Equals((new List<long>(new long[]{(long)2L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)123L, (long)-123L, (long)20L, (long)0L, (long)1L, (long)2L, (long)-3L})), (3L)).Equals((new List<long>(new long[]{(long)2L, (long)20L, (long)123L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-123L, (long)20L, (long)0L, (long)1L, (long)2L, (long)-3L})), (4L)).Equals((new List<long>(new long[]{(long)0L, (long)1L, (long)2L, (long)20L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)5L, (long)15L, (long)0L, (long)3L, (long)-13L, (long)-8L, (long)0L})), (7L)).Equals((new List<long>(new long[]{(long)-13L, (long)-8L, (long)0L, (long)0L, (long)3L, (long)5L, (long)15L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-1L, (long)0L, (long)2L, (long)5L, (long)3L, (long)-10L})), (2L)).Equals((new List<long>(new long[]{(long)3L, (long)5L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)1L, (long)0L, (long)5L, (long)-7L})), (1L)).Equals((new List<long>(new long[]{(long)5L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)4L, (long)-4L})), (2L)).Equals((new List<long>(new long[]{(long)-4L, (long)4L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-10L, (long)10L})), (2L)).Equals((new List<long>(new long[]{(long)-10L, (long)10L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)1L, (long)2L, (long)3L, (long)-23L, (long)243L, (long)-400L, (long)0L})), (0L)).Equals((new List<long>())));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmpoj94c3mf.cs(26,22): error CS0246: The type or namespace name 'PriorityQueue<>' could not be found (are you missing a using directive or an assembly reference?)
/tmp/tmpoj94c3mf.cs(29,17): error CS0019: Operator '>' cannot be applied to operands of type 'method group' and 'long'
/tmp/tmpoj94c3mf.cs(33,16): error CS0019: Operator '>' cannot be applied to operands of type 'method group' and 'int'

'''





# ---- HumanEval_120_maximum --- completion 25 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a list arr of integers and a positive integer k, return a sorted list 
    // of length k with the maximum k numbers in arr.
    // Example 1:
    // >>> Maximum((new List<long>(new long[]{(long)-3L, (long)-4L, (long)5L})), (3L))
    // (new List<long>(new long[]{(long)-4L, (long)-3L, (long)5L}))
    // Example 2:
    // >>> Maximum((new List<long>(new long[]{(long)4L, (long)-4L, (long)4L})), (2L))
    // (new List<long>(new long[]{(long)4L, (long)4L}))
    // Example 3:
    // >>> Maximum((new List<long>(new long[]{(long)-3L, (long)2L, (long)1L, (long)2L, (long)-1L, (long)-2L, (long)1L})), (1L))
    // (new List<long>(new long[]{(long)2L}))
    // Note:
    // 1. The length of the list will be in the range of [1, 1000].
    // 2. The elements in the list will be in the range of [-1000, 1000].
    // 3. 0 <= k <= len(arr)
    public static List<long> Maximum(List<long> arr, long k) {
        var result = new List<long>();
        var heap = new Heap<long>();
        foreach (var item in arr) {
            heap.Insert(item);
        }
        for (int i = 0; i < k; i++) {
            result.Add(heap.ExtractMax());
        }
        return result;
    }
    public static void Main(string[] args) {
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-3L, (long)-4L, (long)5L})), (3L)).Equals((new List<long>(new long[]{(long)-4L, (long)-3L, (long)5L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)4L, (long)-4L, (long)4L})), (2L)).Equals((new List<long>(new long[]{(long)4L, (long)4L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-3L, (long)2L, (long)1L, (long)2L, (long)-1L, (long)-2L, (long)1L})), (1L)).Equals((new List<long>(new long[]{(long)2L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)123L, (long)-123L, (long)20L, (long)0L, (long)1L, (long)2L, (long)-3L})), (3L)).Equals((new List<long>(new long[]{(long)2L, (long)20L, (long)123L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-123L, (long)20L, (long)0L, (long)1L, (long)2L, (long)-3L})), (4L)).Equals((new List<long>(new long[]{(long)0L, (long)1L, (long)2L, (long)20L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)5L, (long)15L, (long)0L, (long)3L, (long)-13L, (long)-8L, (long)0L})), (7L)).Equals((new List<long>(new long[]{(long)-13L, (long)-8L, (long)0L, (long)0L, (long)3L, (long)5L, (long)15L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-1L, (long)0L, (long)2L, (long)5L, (long)3L, (long)-10L})), (2L)).Equals((new List<long>(new long[]{(long)3L, (long)5L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)1L, (long)0L, (long)5L, (long)-7L})), (1L)).Equals((new List<long>(new long[]{(long)5L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)4L, (long)-4L})), (2L)).Equals((new List<long>(new long[]{(long)-4L, (long)4L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-10L, (long)10L})), (2L)).Equals((new List<long>(new long[]{(long)-10L, (long)10L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)1L, (long)2L, (long)3L, (long)-23L, (long)243L, (long)-400L, (long)0L})), (0L)).Equals((new List<long>())));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmpv0hopaaq.cs(26,24): error CS0246: The type or namespace name 'Heap<>' could not be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_120_maximum --- completion 73 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a list arr of integers and a positive integer k, return a sorted list 
    // of length k with the maximum k numbers in arr.
    // Example 1:
    // >>> Maximum((new List<long>(new long[]{(long)-3L, (long)-4L, (long)5L})), (3L))
    // (new List<long>(new long[]{(long)-4L, (long)-3L, (long)5L}))
    // Example 2:
    // >>> Maximum((new List<long>(new long[]{(long)4L, (long)-4L, (long)4L})), (2L))
    // (new List<long>(new long[]{(long)4L, (long)4L}))
    // Example 3:
    // >>> Maximum((new List<long>(new long[]{(long)-3L, (long)2L, (long)1L, (long)2L, (long)-1L, (long)-2L, (long)1L})), (1L))
    // (new List<long>(new long[]{(long)2L}))
    // Note:
    // 1. The length of the list will be in the range of [1, 1000].
    // 2. The elements in the list will be in the range of [-1000, 1000].
    // 3. 0 <= k <= len(arr)
    public static List<long> Maximum(List<long> arr, long k) {
        var res = new List<long>();
        var pq = new PriorityQueue<long>();
        foreach (var i in arr) {
            pq.Push(i);
            if (pq.Count > k) {
                pq.Pop();
            }
        }
        while (pq.Count > 0) {
            res.Add(pq.Pop());
        }
        res.Reverse();
        return res;
    }
    public static void Main(string[] args) {
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-3L, (long)-4L, (long)5L})), (3L)).Equals((new List<long>(new long[]{(long)-4L, (long)-3L, (long)5L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)4L, (long)-4L, (long)4L})), (2L)).Equals((new List<long>(new long[]{(long)4L, (long)4L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-3L, (long)2L, (long)1L, (long)2L, (long)-1L, (long)-2L, (long)1L})), (1L)).Equals((new List<long>(new long[]{(long)2L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)123L, (long)-123L, (long)20L, (long)0L, (long)1L, (long)2L, (long)-3L})), (3L)).Equals((new List<long>(new long[]{(long)2L, (long)20L, (long)123L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-123L, (long)20L, (long)0L, (long)1L, (long)2L, (long)-3L})), (4L)).Equals((new List<long>(new long[]{(long)0L, (long)1L, (long)2L, (long)20L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)5L, (long)15L, (long)0L, (long)3L, (long)-13L, (long)-8L, (long)0L})), (7L)).Equals((new List<long>(new long[]{(long)-13L, (long)-8L, (long)0L, (long)0L, (long)3L, (long)5L, (long)15L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-1L, (long)0L, (long)2L, (long)5L, (long)3L, (long)-10L})), (2L)).Equals((new List<long>(new long[]{(long)3L, (long)5L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)1L, (long)0L, (long)5L, (long)-7L})), (1L)).Equals((new List<long>(new long[]{(long)5L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)4L, (long)-4L})), (2L)).Equals((new List<long>(new long[]{(long)-4L, (long)4L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-10L, (long)10L})), (2L)).Equals((new List<long>(new long[]{(long)-10L, (long)10L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)1L, (long)2L, (long)3L, (long)-23L, (long)243L, (long)-400L, (long)0L})), (0L)).Equals((new List<long>())));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmph9s_30pc.cs(26,22): error CS0246: The type or namespace name 'PriorityQueue<>' could not be found (are you missing a using directive or an assembly reference?)
/tmp/tmph9s_30pc.cs(29,17): error CS0019: Operator '>' cannot be applied to operands of type 'method group' and 'long'
/tmp/tmph9s_30pc.cs(33,16): error CS0019: Operator '>' cannot be applied to operands of type 'method group' and 'int'

'''





# ---- HumanEval_120_maximum --- completion 90 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a list arr of integers and a positive integer k, return a sorted list 
    // of length k with the maximum k numbers in arr.
    // Example 1:
    // >>> Maximum((new List<long>(new long[]{(long)-3L, (long)-4L, (long)5L})), (3L))
    // (new List<long>(new long[]{(long)-4L, (long)-3L, (long)5L}))
    // Example 2:
    // >>> Maximum((new List<long>(new long[]{(long)4L, (long)-4L, (long)4L})), (2L))
    // (new List<long>(new long[]{(long)4L, (long)4L}))
    // Example 3:
    // >>> Maximum((new List<long>(new long[]{(long)-3L, (long)2L, (long)1L, (long)2L, (long)-1L, (long)-2L, (long)1L})), (1L))
    // (new List<long>(new long[]{(long)2L}))
    // Note:
    // 1. The length of the list will be in the range of [1, 1000].
    // 2. The elements in the list will be in the range of [-1000, 1000].
    // 3. 0 <= k <= len(arr)
    public static List<long> Maximum(List<long> arr, long k) {
        var result = new List<long>();
        var heap = new Heap<long>();
        foreach (var item in arr) {
            heap.Insert(item);
        }
        for (var i = 0; i < k; i++) {
            result.Add(heap.ExtractMax());
        }
        return result;
    }
    public static void Main(string[] args) {
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-3L, (long)-4L, (long)5L})), (3L)).Equals((new List<long>(new long[]{(long)-4L, (long)-3L, (long)5L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)4L, (long)-4L, (long)4L})), (2L)).Equals((new List<long>(new long[]{(long)4L, (long)4L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-3L, (long)2L, (long)1L, (long)2L, (long)-1L, (long)-2L, (long)1L})), (1L)).Equals((new List<long>(new long[]{(long)2L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)123L, (long)-123L, (long)20L, (long)0L, (long)1L, (long)2L, (long)-3L})), (3L)).Equals((new List<long>(new long[]{(long)2L, (long)20L, (long)123L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-123L, (long)20L, (long)0L, (long)1L, (long)2L, (long)-3L})), (4L)).Equals((new List<long>(new long[]{(long)0L, (long)1L, (long)2L, (long)20L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)5L, (long)15L, (long)0L, (long)3L, (long)-13L, (long)-8L, (long)0L})), (7L)).Equals((new List<long>(new long[]{(long)-13L, (long)-8L, (long)0L, (long)0L, (long)3L, (long)5L, (long)15L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-1L, (long)0L, (long)2L, (long)5L, (long)3L, (long)-10L})), (2L)).Equals((new List<long>(new long[]{(long)3L, (long)5L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)1L, (long)0L, (long)5L, (long)-7L})), (1L)).Equals((new List<long>(new long[]{(long)5L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)4L, (long)-4L})), (2L)).Equals((new List<long>(new long[]{(long)-4L, (long)4L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-10L, (long)10L})), (2L)).Equals((new List<long>(new long[]{(long)-10L, (long)10L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)1L, (long)2L, (long)3L, (long)-23L, (long)243L, (long)-400L, (long)0L})), (0L)).Equals((new List<long>())));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmpvfaejynx.cs(26,24): error CS0246: The type or namespace name 'Heap<>' could not be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_120_maximum --- completion 167 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a list arr of integers and a positive integer k, return a sorted list 
    // of length k with the maximum k numbers in arr.
    // Example 1:
    // >>> Maximum((new List<long>(new long[]{(long)-3L, (long)-4L, (long)5L})), (3L))
    // (new List<long>(new long[]{(long)-4L, (long)-3L, (long)5L}))
    // Example 2:
    // >>> Maximum((new List<long>(new long[]{(long)4L, (long)-4L, (long)4L})), (2L))
    // (new List<long>(new long[]{(long)4L, (long)4L}))
    // Example 3:
    // >>> Maximum((new List<long>(new long[]{(long)-3L, (long)2L, (long)1L, (long)2L, (long)-1L, (long)-2L, (long)1L})), (1L))
    // (new List<long>(new long[]{(long)2L}))
    // Note:
    // 1. The length of the list will be in the range of [1, 1000].
    // 2. The elements in the list will be in the range of [-1000, 1000].
    // 3. 0 <= k <= len(arr)
    public static List<long> Maximum(List<long> arr, long k) {
        var result = new List<long>();
        var maxHeap = new MaxHeap<long>(arr);
        for (var i = 0; i < k; i++) {
            result.Add(maxHeap.Pop());
        }
        return result;
    }
    public static void Main(string[] args) {
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-3L, (long)-4L, (long)5L})), (3L)).Equals((new List<long>(new long[]{(long)-4L, (long)-3L, (long)5L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)4L, (long)-4L, (long)4L})), (2L)).Equals((new List<long>(new long[]{(long)4L, (long)4L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-3L, (long)2L, (long)1L, (long)2L, (long)-1L, (long)-2L, (long)1L})), (1L)).Equals((new List<long>(new long[]{(long)2L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)123L, (long)-123L, (long)20L, (long)0L, (long)1L, (long)2L, (long)-3L})), (3L)).Equals((new List<long>(new long[]{(long)2L, (long)20L, (long)123L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-123L, (long)20L, (long)0L, (long)1L, (long)2L, (long)-3L})), (4L)).Equals((new List<long>(new long[]{(long)0L, (long)1L, (long)2L, (long)20L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)5L, (long)15L, (long)0L, (long)3L, (long)-13L, (long)-8L, (long)0L})), (7L)).Equals((new List<long>(new long[]{(long)-13L, (long)-8L, (long)0L, (long)0L, (long)3L, (long)5L, (long)15L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-1L, (long)0L, (long)2L, (long)5L, (long)3L, (long)-10L})), (2L)).Equals((new List<long>(new long[]{(long)3L, (long)5L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)1L, (long)0L, (long)5L, (long)-7L})), (1L)).Equals((new List<long>(new long[]{(long)5L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)4L, (long)-4L})), (2L)).Equals((new List<long>(new long[]{(long)-4L, (long)4L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-10L, (long)10L})), (2L)).Equals((new List<long>(new long[]{(long)-10L, (long)10L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)1L, (long)2L, (long)3L, (long)-23L, (long)243L, (long)-400L, (long)0L})), (0L)).Equals((new List<long>())));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmpde3yrb00.cs(26,27): error CS0246: The type or namespace name 'MaxHeap<>' could not be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_120_maximum --- completion 172 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a list arr of integers and a positive integer k, return a sorted list 
    // of length k with the maximum k numbers in arr.
    // Example 1:
    // >>> Maximum((new List<long>(new long[]{(long)-3L, (long)-4L, (long)5L})), (3L))
    // (new List<long>(new long[]{(long)-4L, (long)-3L, (long)5L}))
    // Example 2:
    // >>> Maximum((new List<long>(new long[]{(long)4L, (long)-4L, (long)4L})), (2L))
    // (new List<long>(new long[]{(long)4L, (long)4L}))
    // Example 3:
    // >>> Maximum((new List<long>(new long[]{(long)-3L, (long)2L, (long)1L, (long)2L, (long)-1L, (long)-2L, (long)1L})), (1L))
    // (new List<long>(new long[]{(long)2L}))
    // Note:
    // 1. The length of the list will be in the range of [1, 1000].
    // 2. The elements in the list will be in the range of [-1000, 1000].
    // 3. 0 <= k <= len(arr)
    public static List<long> Maximum(List<long> arr, long k) {
        var result = new List<long>();
        var heap = new Heap<long>();
        foreach (var item in arr) {
            heap.Push(item);
        }
        for (var i = 0; i < k; i++) {
            result.Add(heap.Pop());
        }
        return result;
    }
    public static void Main(string[] args) {
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-3L, (long)-4L, (long)5L})), (3L)).Equals((new List<long>(new long[]{(long)-4L, (long)-3L, (long)5L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)4L, (long)-4L, (long)4L})), (2L)).Equals((new List<long>(new long[]{(long)4L, (long)4L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-3L, (long)2L, (long)1L, (long)2L, (long)-1L, (long)-2L, (long)1L})), (1L)).Equals((new List<long>(new long[]{(long)2L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)123L, (long)-123L, (long)20L, (long)0L, (long)1L, (long)2L, (long)-3L})), (3L)).Equals((new List<long>(new long[]{(long)2L, (long)20L, (long)123L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-123L, (long)20L, (long)0L, (long)1L, (long)2L, (long)-3L})), (4L)).Equals((new List<long>(new long[]{(long)0L, (long)1L, (long)2L, (long)20L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)5L, (long)15L, (long)0L, (long)3L, (long)-13L, (long)-8L, (long)0L})), (7L)).Equals((new List<long>(new long[]{(long)-13L, (long)-8L, (long)0L, (long)0L, (long)3L, (long)5L, (long)15L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-1L, (long)0L, (long)2L, (long)5L, (long)3L, (long)-10L})), (2L)).Equals((new List<long>(new long[]{(long)3L, (long)5L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)1L, (long)0L, (long)5L, (long)-7L})), (1L)).Equals((new List<long>(new long[]{(long)5L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)4L, (long)-4L})), (2L)).Equals((new List<long>(new long[]{(long)-4L, (long)4L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)-10L, (long)10L})), (2L)).Equals((new List<long>(new long[]{(long)-10L, (long)10L}))));
    Debug.Assert(Maximum((new List<long>(new long[]{(long)1L, (long)2L, (long)3L, (long)-23L, (long)243L, (long)-400L, (long)0L})), (0L)).Equals((new List<long>())));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmp9cz9vo06.cs(26,24): error CS0246: The type or namespace name 'Heap<>' could not be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_39_prime_fib --- completion 159 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // prime_fib returns n-th number that is a Fibonacci number and it's also prime.
    // >>> PrimeFib((1L))
    // (2L)
    // >>> PrimeFib((2L))
    // (3L)
    // >>> PrimeFib((3L))
    // (5L)
    // >>> PrimeFib((4L))
    // (13L)
    // >>> PrimeFib((5L))
    // (89L)
    public static long PrimeFib(long n) {
        var f = new Fibonacci();
        long i = 0;
        long p = 0;
        while (i < n) {
            p = f.Next();
            if (IsPrime(p)) {
                i++;
            }
        }
        return p;
    }
    public static void Main(string[] args) {
    Debug.Assert(PrimeFib((1L)) == (2L));
    Debug.Assert(PrimeFib((2L)) == (3L));
    Debug.Assert(PrimeFib((3L)) == (5L));
    Debug.Assert(PrimeFib((4L)) == (13L));
    Debug.Assert(PrimeFib((5L)) == (89L));
    Debug.Assert(PrimeFib((6L)) == (233L));
    Debug.Assert(PrimeFib((7L)) == (1597L));
    Debug.Assert(PrimeFib((8L)) == (28657L));
    Debug.Assert(PrimeFib((9L)) == (514229L));
    Debug.Assert(PrimeFib((10L)) == (433494437L));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmp8ruta3ww.cs(21,21): error CS0246: The type or namespace name 'Fibonacci' could not be found (are you missing a using directive or an assembly reference?)
/tmp/tmp8ruta3ww.cs(26,17): error CS0103: The name 'IsPrime' does not exist in the current context

'''





# ---- HumanEval_154_cycpattern_check --- completion 15 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // You are given 2 words. You need to return true if the second word or any of its rotations is a substring in the first word
    // >>> CycpatternCheck(("abcd"), ("abd"))
    // (false)
    // >>> CycpatternCheck(("hello"), ("ell"))
    // (true)
    // >>> CycpatternCheck(("whassup"), ("psus"))
    // (false)
    // >>> CycpatternCheck(("abab"), ("baa"))
    // (true)
    // >>> CycpatternCheck(("efef"), ("eeff"))
    // (false)
    // >>> CycpatternCheck(("himenss"), ("simen"))
    // (true)
    public static bool CycpatternCheck(string a, string b) {
        var a_len = a.Length;
        var b_len = b.Length;
        if (a_len < b_len) return false;
        var a_hash = new RollingHash(a);
        var b_hash = new RollingHash(b);
        var b_hash_rotated = new RollingHash(b);
        for (int i = 0; i < b_len; i++) {
            b_hash_rotated.Roll(b[i]);
            if (a_hash.GetHash() == b_hash_rotated.GetHash()) {
                return true;
            }
        }
        return false;
    }
    public static void Main(string[] args) {
    Debug.Assert(CycpatternCheck(("xyzw"), ("xyw")) == (false));
    Debug.Assert(CycpatternCheck(("yello"), ("ell")) == (true));
    Debug.Assert(CycpatternCheck(("whattup"), ("ptut")) == (false));
    Debug.Assert(CycpatternCheck(("efef"), ("fee")) == (true));
    Debug.Assert(CycpatternCheck(("abab"), ("aabb")) == (false));
    Debug.Assert(CycpatternCheck(("winemtt"), ("tinem")) == (true));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmpyhp_sw9g.cs(26,26): error CS0246: The type or namespace name 'RollingHash' could not be found (are you missing a using directive or an assembly reference?)
/tmp/tmpyhp_sw9g.cs(27,26): error CS0246: The type or namespace name 'RollingHash' could not be found (are you missing a using directive or an assembly reference?)
/tmp/tmpyhp_sw9g.cs(28,34): error CS0246: The type or namespace name 'RollingHash' could not be found (are you missing a using directive or an assembly reference?)

'''





