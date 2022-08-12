// ----------- error NullReferenceException ------------
        // Your code here
        return null;
// status = Exception
// exit_code = 1
/* stderr = 

Unhandled Exception:
System.NullReferenceException: Object reference not set to an instance of an object
  at Problem.Main (System.String[] args) [0x00029] in <d51d2c65dbe842abae804b7e421fcf17>:0 
[ERROR] FATAL UNHANDLED EXCEPTION: System.NullReferenceException: Object reference not set to an instance of an object
  at Problem.Main (System.String[] args) [0x00029] in <d51d2c65dbe842abae804b7e421fcf17>:0 

*/
/* stdout = 

*/


// ----------- error InvalidOperationException ------------
        var parens = new List<long>();
        var stack = new Stack<long>();
        var max = 0L;
        foreach (var c in paren_string) {
            if (c == '(') {
                stack.Push(max);
                max = 0;
            } else if (c == ')') {
                parens.Add(max);
                max = stack.Pop();
            } else if (c == ' ') {
                max = Math.Max(max, stack.Peek());
            }
        }
        return parens;
// status = Exception
// exit_code = 1
/* stderr = 

Unhandled Exception:
System.InvalidOperationException: Stack empty.
  at System.Collections.Generic.Stack`1[T].Peek () [0x00016] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at Problem.ParseNestedParens (System.String paren_string) [0x0006a] in <687bd6cfa0d24280944f6785451ab933>:0 
  at Problem.Main (System.String[] args) [0x00001] in <687bd6cfa0d24280944f6785451ab933>:0 
[ERROR] FATAL UNHANDLED EXCEPTION: System.InvalidOperationException: Stack empty.
  at System.Collections.Generic.Stack`1[T].Peek () [0x00016] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at Problem.ParseNestedParens (System.String paren_string) [0x0006a] in <687bd6cfa0d24280944f6785451ab933>:0 
  at Problem.Main (System.String[] args) [0x00001] in <687bd6cfa0d24280944f6785451ab933>:0 

*/
/* stdout = 

*/


// ----------- error InvalidOperationException ------------
        return strings.Aggregate((a, b) => a + b);
// status = Exception
// exit_code = 1
/* stderr = 

Unhandled Exception:
System.InvalidOperationException: Sequence contains no elements
  at System.Linq.Enumerable.Aggregate[TSource] (System.Collections.Generic.IEnumerable`1[T] source, System.Func`3[T1,T2,TResult] func) [0x00030] in <e540098dd111461e919c5863f6975c29>:0 
  at Problem.Concatenate (System.Collections.Generic.List`1[T] strings) [0x00001] in <726dd5b4561b4f93b8332c45aa01b939>:0 
  at Problem.Main (System.String[] args) [0x00006] in <726dd5b4561b4f93b8332c45aa01b939>:0 
[ERROR] FATAL UNHANDLED EXCEPTION: System.InvalidOperationException: Sequence contains no elements
  at System.Linq.Enumerable.Aggregate[TSource] (System.Collections.Generic.IEnumerable`1[T] source, System.Func`3[T1,T2,TResult] func) [0x00030] in <e540098dd111461e919c5863f6975c29>:0 
  at Problem.Concatenate (System.Collections.Generic.List`1[T] strings) [0x00001] in <726dd5b4561b4f93b8332c45aa01b939>:0 
  at Problem.Main (System.String[] args) [0x00006] in <726dd5b4561b4f93b8332c45aa01b939>:0 

*/
/* stdout = 

*/



// ----------- error FormatException ------------
        long even = 0;
        long odd = 0;
        foreach (char c in num.ToString()) {
            if (int.Parse(c.ToString()) % 2 == 0) {
                even++;
            } else {
                odd++;
            }
        }
        return Tuple.Create(even, odd);
// status = Exception
// exit_code = 1
/* stderr = 

Unhandled Exception:
System.FormatException: Input string was not in a correct format.
  at System.Number.ThrowOverflowOrFormatException (System.Boolean overflow, System.String overflowResourceKey) [0x0001a] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at System.Number.ParseInt32 (System.ReadOnlySpan`1[T] value, System.Globalization.NumberStyles styles, System.Globalization.NumberFormatInfo info) [0x00016] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at System.Int32.Parse (System.String s) [0x00016] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at Problem.EvenOddCount (System.Int64 num) [0x00025] in <f2723c55510347de8b24f7f5909ab8cc>:0 
  at Problem.Main (System.String[] args) [0x0001c] in <f2723c55510347de8b24f7f5909ab8cc>:0 
[ERROR] FATAL UNHANDLED EXCEPTION: System.FormatException: Input string was not in a correct format.
  at System.Number.ThrowOverflowOrFormatException (System.Boolean overflow, System.String overflowResourceKey) [0x0001a] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at System.Number.ParseInt32 (System.ReadOnlySpan`1[T] value, System.Globalization.NumberStyles styles, System.Globalization.NumberFormatInfo info) [0x00016] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at System.Int32.Parse (System.String s) [0x00016] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at Problem.EvenOddCount (System.Int64 num) [0x00025] in <f2723c55510347de8b24f7f5909ab8cc>:0 
  at Problem.Main (System.String[] args) [0x0001c] in <f2723c55510347de8b24f7f5909ab8cc>:0 

*/
/* stdout = 

*/


// ----------- error ArgumentOutOfRangeException ------------
        int n = grid.Count;
        var dp = new List<List<long>>();
        for (int i = 0; i < n; i++) {
            dp.Add(new List<long>());
            for (int j = 0; j < n; j++) {
                dp[i].Add(long.MaxValue);
            }
        }
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                dp[i][j] = grid[i][j];
            }
        }
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                if (i > 0) {
                    dp[i][j] = Math.Min(dp[i][j], dp[i - 1][j] + grid[i][j]);
                }
                if (j > 0) {
                    dp[i][j] = Math.Min(dp[i][j], dp[i][j - 1] + grid[i][j]);
                }
            }
        }
        var res = new List<long>();
        int x = 0;
        int y = 0;
        for (int i = 0; i < k; i++) {
            res.Add(grid[x][y]);
            if (x > 0 && dp[x - 1][y] + grid[x][y] == dp[x][y]) {
                x--;
            } else {
                y--;
            }
        }
        return res;
// status = Exception
// exit_code = 1
/* stderr = 

Unhandled Exception:
System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
  at System.Collections.Generic.List`1[T].get_Item (System.Int32 index) [0x00009] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at Problem.Minpath (System.Collections.Generic.List`1[T] grid, System.Int64 k) [0x001a9] in <1318636797d74dbe881194992b865a0e>:0 
  at Problem.Main (System.String[] args) [0x00057] in <1318636797d74dbe881194992b865a0e>:0 
[ERROR] FATAL UNHANDLED EXCEPTION: System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
  at System.Collections.Generic.List`1[T].get_Item (System.Int32 index) [0x00009] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at Problem.Minpath (System.Collections.Generic.List`1[T] grid, System.Int64 k) [0x001a9] in <1318636797d74dbe881194992b865a0e>:0 
  at Problem.Main (System.String[] args) [0x00057] in <1318636797d74dbe881194992b865a0e>:0 

*/
/* stdout = 

*/


// ----------- error IndexOutOfRangeException ------------
        int n = grid.Count;
        int m = grid[0].Count;
        long[,] dp = new long[n, m];
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                dp[i, j] = long.MaxValue;
            }
        }
        dp[0, 0] = grid[0][0];
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                if (i + 1 < n) {
                    dp[i + 1, j] = Math.Min(dp[i + 1, j], dp[i, j] + grid[i + 1][j]);
                }
                if (j + 1 < m) {
                    dp[i, j + 1] = Math.Min(dp[i, j + 1], dp[i, j] + grid[i][j + 1]);
                }
            }
        }
        List<long> ans = new List<long>();
        int x = 0;
        int y = 0;
        for (int i = 0; i < k; i++) {
            ans.Add(grid[x][y]);
            if (x + 1 < n && dp[x + 1, y] < dp[x, y + 1]) {
                x++;
            } else {
                y++;
            }
        }
        return ans;
// status = Exception
// exit_code = 1
/* stderr = 

Unhandled Exception:
System.IndexOutOfRangeException: Index was outside the bounds of the array.
  at Problem.Minpath (System.Collections.Generic.List`1[T] grid, System.Int64 k) [0x0017c] in <270ae317b1234d0c915215ae876d2ca8>:0 
  at Problem.Main (System.String[] args) [0x00057] in <270ae317b1234d0c915215ae876d2ca8>:0 
[ERROR] FATAL UNHANDLED EXCEPTION: System.IndexOutOfRangeException: Index was outside the bounds of the array.
  at Problem.Minpath (System.Collections.Generic.List`1[T] grid, System.Int64 k) [0x0017c] in <270ae317b1234d0c915215ae876d2ca8>:0 
  at Problem.Main (System.String[] args) [0x00057] in <270ae317b1234d0c915215ae876d2ca8>:0 

*/
/* stdout = 

*/




// ----------- error NotImplementedException ------------
        throw new NotImplementedException();
// status = Exception
// exit_code = 1
/* stderr = 

Unhandled Exception:
System.NotImplementedException: The method or operation is not implemented.
  at Problem.Main (System.String[] args) [0x00017] in <cf26ee2e35e04bf280e4cf37a7ad36c3>:0 
[ERROR] FATAL UNHANDLED EXCEPTION: System.NotImplementedException: The method or operation is not implemented.
  at Problem.Main (System.String[] args) [0x00017] in <cf26ee2e35e04bf280e4cf37a7ad36c3>:0 

*/
/* stdout = 

*/


// ----------- error FormatException ------------
        // TODO: Implement this function
        //throw new NotImplementedException();
        string[] nums = numbers.Split(' ');
        int[] nums2 = new int[nums.Length];
        for (int i = 0; i < nums.Length; i++)
        {
            nums2[i] = Convert.ToInt32(nums[i]);
        }
        Array.Sort(nums2);
        string result = "";
        for (int i = 0; i < nums2.Length; i++)
        {
            result += nums2[i] + " ";
        }
        return result;
// status = Exception
// exit_code = 1
/* stderr = 

Unhandled Exception:
System.FormatException: Input string was not in a correct format.
  at System.Number.ThrowOverflowOrFormatException (System.Boolean overflow, System.String overflowResourceKey) [0x0001a] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at System.Number.ParseInt32 (System.ReadOnlySpan`1[T] value, System.Globalization.NumberStyles styles, System.Globalization.NumberFormatInfo info) [0x00016] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at System.Int32.Parse (System.String s, System.IFormatProvider provider) [0x00017] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at System.Convert.ToInt32 (System.String value) [0x0000b] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at Problem.SortNumbers (System.String numbers) [0x00019] in <3438bc735d4347d495854c0d04d34364>:0 
  at Problem.Main (System.String[] args) [0x00001] in <3438bc735d4347d495854c0d04d34364>:0 
[ERROR] FATAL UNHANDLED EXCEPTION: System.FormatException: Input string was not in a correct format.
  at System.Number.ThrowOverflowOrFormatException (System.Boolean overflow, System.String overflowResourceKey) [0x0001a] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at System.Number.ParseInt32 (System.ReadOnlySpan`1[T] value, System.Globalization.NumberStyles styles, System.Globalization.NumberFormatInfo info) [0x00016] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at System.Int32.Parse (System.String s, System.IFormatProvider provider) [0x00017] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at System.Convert.ToInt32 (System.String value) [0x0000b] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at Problem.SortNumbers (System.String numbers) [0x00019] in <3438bc735d4347d495854c0d04d34364>:0 
  at Problem.Main (System.String[] args) [0x00001] in <3438bc735d4347d495854c0d04d34364>:0 

*/
/* stdout = 
*/

// ----------- error ArgumentOutOfRangeException ------------
        List<long> ret = new List<long>();
        for (int i = 0; i < l.Count; i++) {
            if (i % 3 == 0) {
                List<long> temp = new List<long>();
                for (int j = i; j < i + 3; j++) {
                    temp.Add(l[j]);
                }
                temp.Sort();
                ret.AddRange(temp);
            } else {
                ret.Add(l[i]);
            }
        }
        return ret;
// status = Exception
// exit_code = 1
/* stderr = 

Unhandled Exception:
System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
  at System.Collections.Generic.List`1[T].get_Item (System.Int32 index) [0x00009] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at Problem.SortThird (System.Collections.Generic.List`1[T] l) [0x00023] in <35e5e6f799444412aa0a0985823b0ecf>:0 
  at Problem.Main (System.String[] args) [0x00017] in <35e5e6f799444412aa0a0985823b0ecf>:0 
[ERROR] FATAL UNHANDLED EXCEPTION: System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
  at System.Collections.Generic.List`1[T].get_Item (System.Int32 index) [0x00009] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at Problem.SortThird (System.Collections.Generic.List`1[T] l) [0x00023] in <35e5e6f799444412aa0a0985823b0ecf>:0 
  at Problem.Main (System.String[] args) [0x00017] in <35e5e6f799444412aa0a0985823b0ecf>:0 

*/
/* stdout = 

*/


// ----------- error IndexOutOfRangeException ------------
        long[] primes = { 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97 };
        long[] factors = new long[3];
        int i = 0;
        int j = 0;
        while (a != 1) {
            if (a % primes[i] == 0) {
                factors[j] = primes[i];
                a /= primes[i];
                j++;
            }
            else {
                i++;
            }
        }
        return j == 3;
// status = Exception
// exit_code = 1
/* stderr = 

Unhandled Exception:
System.IndexOutOfRangeException: Index was outside the bounds of the array.
  at Problem.IsMultiplyPrime (System.Int64 a) [0x00032] in <b6b3a0bbca79409da198d64f7c1e128b>:0 
  at Problem.Main (System.String[] args) [0x00059] in <b6b3a0bbca79409da198d64f7c1e128b>:0 
[ERROR] FATAL UNHANDLED EXCEPTION: System.IndexOutOfRangeException: Index was outside the bounds of the array.
  at Problem.IsMultiplyPrime (System.Int64 a) [0x00032] in <b6b3a0bbca79409da198d64f7c1e128b>:0 
  at Problem.Main (System.String[] args) [0x00059] in <b6b3a0bbca79409da198d64f7c1e128b>:0 

*/
/* stdout = 

*/


// ----------- error NotImplementedException ------------
        throw new NotImplementedException();
// status = Exception
// exit_code = 1
/* stderr = 

Unhandled Exception:
System.NotImplementedException: The method or operation is not implemented.
  at Problem.Main (System.String[] args) [0x00017] in <cf26ee2e35e04bf280e4cf37a7ad36c3>:0 
[ERROR] FATAL UNHANDLED EXCEPTION: System.NotImplementedException: The method or operation is not implemented.
  at Problem.Main (System.String[] args) [0x00017] in <cf26ee2e35e04bf280e4cf37a7ad36c3>:0 

*/
/* stdout = 

*/



// ----------- error Name does not exist ------------
        if (n <= 0) {
            throw new ArgumentException("n must be greater than 0");
        }
        long result = 1;
        for (long i = n; i > 0; i--) {
            result *= Factorial(i);
        }
        return result;
// status = SyntaxError
// exit_code = 1
/* stderr = 

*/
/* stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmpxj79jj1q.cs(23,23): error CS0103: The name 'Factorial' does not exist in the current context

*/



// ----------- error KeyNotFoundException ------------
        var nums = numbers.Split(' ').Select(x => x.ToLower()).ToArray();
        var numMap = new Dictionary<string, int>() {
            {"zero", 0},
            {"one", 1},
            {"two", 2},
            {"three", 3},
            {"four", 4},
            {"five", 5},
            {"six", 6},
            {"seven", 7},
            {"eight", 8},
            {"nine", 9}
        };
        var numsInt = new int[nums.Length];
        for (int i = 0; i < nums.Length; i++) {
            numsInt[i] = numMap[nums[i]];
        }
        Array.Sort(numsInt);
        var numsStr = new string[nums.Length];
        for (int i = 0; i < nums.Length; i++) {
            numsStr[i] = numMap.First(x => x.Value == numsInt[i]).Key;
        }
        return string.Join(" ", numsStr);
// status = Exception
// exit_code = 1
/* stderr = 

Unhandled Exception:
System.Collections.Generic.KeyNotFoundException: The given key '' was not present in the dictionary.
  at System.Collections.Generic.Dictionary`2[TKey,TValue].get_Item (TKey key) [0x0001e] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at Problem.SortNumbers (System.String numbers) [0x000d7] in <38e7739ec14f48d3845034d12f8055fe>:0 
  at Problem.Main (System.String[] args) [0x00001] in <38e7739ec14f48d3845034d12f8055fe>:0 
[ERROR] FATAL UNHANDLED EXCEPTION: System.Collections.Generic.KeyNotFoundException: The given key '' was not present in the dictionary.
  at System.Collections.Generic.Dictionary`2[TKey,TValue].get_Item (TKey key) [0x0001e] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at Problem.SortNumbers (System.String numbers) [0x000d7] in <38e7739ec14f48d3845034d12f8055fe>:0 
  at Problem.Main (System.String[] args) [0x00001] in <38e7739ec14f48d3845034d12f8055fe>:0 

*/
/* stdout = 

*/




// ----------- error Exception: Invalid beat: ------------
        var result = new List<long>();
        var beats = new List<string>();
        var beat = new StringBuilder();
        foreach (var ch in music_string) {
            if (ch == ' ') {
                beats.Add(beat.ToString());
                beat.Clear();
            } else {
                beat.Append(ch);
            }
        }
        beats.Add(beat.ToString());
        foreach (var b in beats) {
            switch (b) {
                case "o":
                    result.Add(4);
                    break;
                case "o|":
                    result.Add(2);
                    break;
                case ".|":
                    result.Add(1);
                    break;
                default:
                    throw new Exception("Invalid beat: " + b);
            }
        }
        return result;
// status = Exception
// exit_code = 1
/* stderr = 

Unhandled Exception:
System.Exception: Invalid beat: 
  at Problem.ParseMusic (System.String music_string) [0x000ed] in <bd28b959895d42cfabf8f54a9924b731>:0 
  at Problem.Main (System.String[] args) [0x00001] in <bd28b959895d42cfabf8f54a9924b731>:0 
[ERROR] FATAL UNHANDLED EXCEPTION: System.Exception: Invalid beat: 
  at Problem.ParseMusic (System.String music_string) [0x000ed] in <bd28b959895d42cfabf8f54a9924b731>:0 
  at Problem.Main (System.String[] args) [0x00001] in <bd28b959895d42cfabf8f54a9924b731>:0 

*/
/* stdout = 

*/





// ----------- error Type Conversion Error ------------
        var result = new List<Tuple<long, long>>();
        var row = 0;
        foreach (var r in lst) {
            var col = 0;
            foreach (var c in r) {
                if (c == x) {
                    result.Add(Tuple.Create(row, col));
                }
                col++;
            }
            row++;
        }
        return result;
// status = SyntaxError
// exit_code = 1
/* stderr = 

*/
/* stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmpwx8w5coe.cs(31,32): error CS1503: Argument 1: cannot convert from 'System.Tuple<int, int>' to 'System.Tuple<long, long>'

*/




// ----------- error not all code paths return a value ------------
        // Your code goes here.
// status = SyntaxError
// exit_code = 1
/* stderr = 

*/
/* stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmpwn3r7awn.cs(32,30): error CS0161: 'Problem.Minpath(List<List<long>>, long)': not all code paths return a value

*/




// ----------- error Name does not exist ------------
        // >>> ParseNestedParens(("(()()) ((())) () ((())()())"))
        // (new List<long>(new long[]{(long)2L, (long)3L, (long)1L, (long)3L}))
        var parens = paren_string.Split(' ');
        var result = new List<long>();
        foreach (var paren in parens) {
            result.Add(ParseNestedParensHelper(paren));
        }
        return result;
// status = SyntaxError
// exit_code = 1
/* stderr = 

*/
/* stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmpmvpaew44.cs(20,24): error CS0103: The name 'ParseNestedParensHelper' does not exist in the current context

*/


// ----------- error Syntax error ------------
        if (l.Count == 0) {
            return false;
        }
        if (l.Count == 1) {
            return false;
        }
        if (l.Count == 2) {
            return l[0] + l[1] == 0;
        }
        if (l.Count == 3) {
            return l[0] + l[1] == 0 || l[0] + l[2] == 0 || l[1] + l[2] == 0;
        }
        if (l.Count == 4) {
            return l[0] + l[1] == 0 || l[0] + l[2] == 0 || l[0] + l[3] == 0 || l[1] + l[2] == 0 || l[1] + l[3] == 0 || l[2] + l[3] == 0;
        }
        if (l.Count == 5) {
            return l[0] + l[1] == 0 || l[0] + l[2] == 0 || l[0] + l[3] == 0 || l[0] + l[4] == 0 || l[1] + l[2] == 0 || l[1] + l[3] == 0 || l[1] + l[4] == 0 || l[2] + l[3] == 0 || l[2] + l[4] == 0 || l[3] + l[4] == 0;
        }
        if (l.Count == 6) {
            return l[0] + l[1] == 0 || l[0] + l[2] == 0 || l[0] + l[3] == 0 || l[0] + l[4] == 0 || l[0] + l[5] == 0 || l[1] + l[2] == 0 || l[1] + l[3] == 0 || l[1] + l[4] == 0 || l[1] + l[5] == 0 || l[2] + l[3] == 0 || l[2] + l[4] == 0 || l[2] + l[5] == 0 || l[3] + l[4
// status = SyntaxError
// exit_code = 1
/* stderr = 

*/
/* stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmpoalq87e2.cs(42,270): error CS1003: Syntax error, ']' expected
/tmp/tmpoalq87e2.cs(42,270): error CS1002: ; expected
/tmp/tmpoalq87e2.cs(44,5): error CS0106: The modifier 'public' is not valid for this item
/tmp/tmpoalq87e2.cs(56,2): error CS1513: } expected

*/


// ----------- error Declaration error ------------
        List<string> words = new List<string>();
        string word = "";
        for (int i = 0; i < s.Length; i++) {
            if (s[i] == ' ') {
                words.Add(word);
                word = "";
            } else {
                word += s[i];
            }
        }
        words.Add(word);
        string result = "";
        for (int i = 0; i < words.Count; i++) {
            char[] word = words[i].ToCharArray();
            Array.Sort(word);
            result += new string(word);
            if (i != words.Count - 1) {
                result += " ";
            }
        }
        return result;
// status = SyntaxError
// exit_code = 1
/* stderr = 

*/
/* stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmp3a4s9_o_.cs(35,20): error CS0136: A local or parameter named 'word' cannot be declared in this scope because that name is used in an enclosing local scope to define a local or parameter

*/






// ----------- error TypeNotFound ------------
        return arr.OrderBy(x => x.ToString("X"), new HexComparer()).ToList();
// status = SyntaxError
// exit_code = 1
/* stderr = 

*/
/* stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmp8e9xvroh.cs(20,54): error CS0246: The type or namespace name 'HexComparer' could not be found (are you missing a using directive or an assembly reference?)

*/




// ----------- error Invalid argument ------------
        List<long> l_copy = new List<long>(l);
        for (int i = 2; i < l.Count; i += 3) {
            l_copy.Sort((i - 2), 3);
        }
        return l_copy;
// status = SyntaxError
// exit_code = 1
/* stderr = 

*/
/* stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmpcyyqgb45.cs(19,20): error CS7036: There is no argument given that corresponds to the required formal parameter 'comparer' of 'List<long>.Sort(int, int, IComparer<long>)'

*/




// ----------- error Method not found ------------
        return n.IsPrime() ? x : y;
// status = SyntaxError
// exit_code = 1
/* stderr = 

*/
/* stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmprl6g09k8.cs(17,18): error CS1061: 'long' does not contain a definition for 'IsPrime' and no accessible extension method 'IsPrime' accepting a first argument of type 'long' could be found (are you missing a using directive or an assembly reference?)

*/







// ----------- error Invalid Assignment ------------
        long count = 0;
        foreach (long num in arr) {
            long sum = 0;
            if (num < 0) {
                sum += Math.Abs(num % 10);
                num = Math.Abs(num / 10);
            }
            while (num > 0) {
                sum += num % 10;
                num /= 10;
            }
            if (sum > 0) {
                count++;
            }
        }
        return count;
// status = SyntaxError
// exit_code = 1
/* stderr = 

*/
/* stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmpks6xo_h3.cs(25,17): error CS1656: Cannot assign to 'num' because it is a 'foreach iteration variable'
/tmp/tmpks6xo_h3.cs(29,17): error CS1656: Cannot assign to 'num' because it is a 'foreach iteration variable'

*/
