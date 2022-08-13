# ---- HumanEval_19_sort_numbers --- completion 26 ---- 
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
        var sorted = nums.Select(x => numMap[x]).OrderBy(x => x).Select(x => numMap.First(y => y.Value == x).Key).ToArray();
        return string.Join(" ", sorted);
    }
    public static void Main(string[] args) {
    Debug.Assert(SortNumbers(("")).Equals(("")));
    Debug.Assert(SortNumbers(("three")).Equals(("three")));
    Debug.Assert(SortNumbers(("three five nine")).Equals(("three five nine")));
    Debug.Assert(SortNumbers(("five zero four seven nine eight")).Equals(("zero four five seven eight nine")));
    Debug.Assert(SortNumbers(("six five four three two one zero")).Equals(("zero one two three four five six")));
    }

}

# status = Exception
# exit_code = 1
''' stderr = 

Unhandled Exception:
System.Collections.Generic.KeyNotFoundException: The given key '' was not present in the dictionary.
  at System.Collections.Generic.Dictionary`2[TKey,TValue].get_Item (TKey key) [0x0001e] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at Problem+<>c__DisplayClass0_0.<SortNumbers>b__1 (System.String x) [0x00000] in <35a03b41158348a1883ef16b0641ef83>:0 
  at System.Linq.Enumerable+SelectArrayIterator`2[TSource,TResult].ToArray () [0x00012] in <e540098dd111461e919c5863f6975c29>:0 
  at System.Linq.Buffer`1[TElement]..ctor (System.Collections.Generic.IEnumerable`1[T] source) [0x0000a] in <e540098dd111461e919c5863f6975c29>:0 
  at System.Linq.OrderedEnumerable`1+<GetEnumerator>d__3[TElement].MoveNext () [0x0001e] in <e540098dd111461e919c5863f6975c29>:0 
  at System.Linq.Enumerable+SelectIPartitionIterator`2[TSource,TResult].PreallocatingToArray (System.Int32 count) [0x00035] in <e540098dd111461e919c5863f6975c29>:0 
  at System.Linq.Enumerable+SelectIPartitionIterator`2[TSource,TResult].ToArray () [0x00023] in <e540098dd111461e919c5863f6975c29>:0 
  at System.Linq.Enumerable.ToArray[TSource] (System.Collections.Generic.IEnumerable`1[T] source) [0x0001f] in <e540098dd111461e919c5863f6975c29>:0 
  at Problem.SortNumbers (System.String numbers) [0x0010f] in <35a03b41158348a1883ef16b0641ef83>:0 
  at Problem.Main (System.String[] args) [0x00001] in <35a03b41158348a1883ef16b0641ef83>:0 
[ERROR] FATAL UNHANDLED EXCEPTION: System.Collections.Generic.KeyNotFoundException: The given key '' was not present in the dictionary.
  at System.Collections.Generic.Dictionary`2[TKey,TValue].get_Item (TKey key) [0x0001e] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at Problem+<>c__DisplayClass0_0.<SortNumbers>b__1 (System.String x) [0x00000] in <35a03b41158348a1883ef16b0641ef83>:0 
  at System.Linq.Enumerable+SelectArrayIterator`2[TSource,TResult].ToArray () [0x00012] in <e540098dd111461e919c5863f6975c29>:0 
  at System.Linq.Buffer`1[TElement]..ctor (System.Collections.Generic.IEnumerable`1[T] source) [0x0000a] in <e54009
'''
''' stdout = 

'''





# ---- HumanEval_19_sort_numbers --- completion 98 ---- 
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
    }
    public static void Main(string[] args) {
    Debug.Assert(SortNumbers(("")).Equals(("")));
    Debug.Assert(SortNumbers(("three")).Equals(("three")));
    Debug.Assert(SortNumbers(("three five nine")).Equals(("three five nine")));
    Debug.Assert(SortNumbers(("five zero four seven nine eight")).Equals(("zero four five seven eight nine")));
    Debug.Assert(SortNumbers(("six five four three two one zero")).Equals(("zero one two three four five six")));
    }

}

# status = Exception
# exit_code = 1
''' stderr = 

Unhandled Exception:
System.Collections.Generic.KeyNotFoundException: The given key '' was not present in the dictionary.
  at System.Collections.Generic.Dictionary`2[TKey,TValue].get_Item (TKey key) [0x0001e] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at Problem.SortNumbers (System.String numbers) [0x000d7] in <38e7739ec14f48d3845034d12f8055fe>:0 
  at Problem.Main (System.String[] args) [0x00001] in <38e7739ec14f48d3845034d12f8055fe>:0 
[ERROR] FATAL UNHANDLED EXCEPTION: System.Collections.Generic.KeyNotFoundException: The given key '' was not present in the dictionary.
  at System.Collections.Generic.Dictionary`2[TKey,TValue].get_Item (TKey key) [0x0001e] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at Problem.SortNumbers (System.String numbers) [0x000d7] in <38e7739ec14f48d3845034d12f8055fe>:0 
  at Problem.Main (System.String[] args) [0x00001] in <38e7739ec14f48d3845034d12f8055fe>:0 

'''
''' stdout = 

'''





# ---- HumanEval_19_sort_numbers --- completion 112 ---- 
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
        var nums = new List<int>();
        var numeral = new Dictionary<string, int>() {
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
        foreach (var num in numbers.Split(' ')) {
            nums.Add(numeral[num]);
        }
        nums.Sort();
        var result = new List<string>();
        foreach (var num in nums) {
            result.Add(numeral.First(x => x.Value == num).Key);
        }
        return string.Join(" ", result);
    }
    public static void Main(string[] args) {
    Debug.Assert(SortNumbers(("")).Equals(("")));
    Debug.Assert(SortNumbers(("three")).Equals(("three")));
    Debug.Assert(SortNumbers(("three five nine")).Equals(("three five nine")));
    Debug.Assert(SortNumbers(("five zero four seven nine eight")).Equals(("zero four five seven eight nine")));
    Debug.Assert(SortNumbers(("six five four three two one zero")).Equals(("zero one two three four five six")));
    }

}

# status = Exception
# exit_code = 1
''' stderr = 

Unhandled Exception:
System.Collections.Generic.KeyNotFoundException: The given key '' was not present in the dictionary.
  at System.Collections.Generic.Dictionary`2[TKey,TValue].get_Item (TKey key) [0x0001e] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at Problem.SortNumbers (System.String numbers) [0x000a7] in <9d66d1d4a80b417391cff61bee408419>:0 
  at Problem.Main (System.String[] args) [0x00001] in <9d66d1d4a80b417391cff61bee408419>:0 
[ERROR] FATAL UNHANDLED EXCEPTION: System.Collections.Generic.KeyNotFoundException: The given key '' was not present in the dictionary.
  at System.Collections.Generic.Dictionary`2[TKey,TValue].get_Item (TKey key) [0x0001e] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at Problem.SortNumbers (System.String numbers) [0x000a7] in <9d66d1d4a80b417391cff61bee408419>:0 
  at Problem.Main (System.String[] args) [0x00001] in <9d66d1d4a80b417391cff61bee408419>:0 

'''
''' stdout = 

'''





# ---- HumanEval_19_sort_numbers --- completion 130 ---- 
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
        var nums = new List<int>();
        var numeralMap = new Dictionary<string, int>();
        numeralMap["zero"] = 0;
        numeralMap["one"] = 1;
        numeralMap["two"] = 2;
        numeralMap["three"] = 3;
        numeralMap["four"] = 4;
        numeralMap["five"] = 5;
        numeralMap["six"] = 6;
        numeralMap["seven"] = 7;
        numeralMap["eight"] = 8;
        numeralMap["nine"] = 9;
        var numeralMapReverse = new Dictionary<int, string>();
        numeralMapReverse[0] = "zero";
        numeralMapReverse[1] = "one";
        numeralMapReverse[2] = "two";
        numeralMapReverse[3] = "three";
        numeralMapReverse[4] = "four";
        numeralMapReverse[5] = "five";
        numeralMapReverse[6] = "six";
        numeralMapReverse[7] = "seven";
        numeralMapReverse[8] = "eight";
        numeralMapReverse[9] = "nine";
        var numeralList = numbers.Split(' ');
        foreach (var numeral in numeralList) {
            nums.Add(numeralMap[numeral]);
        }
        nums.Sort();
        var result = new List<string>();
        foreach (var num in nums) {
            result.Add(numeralMapReverse[num]);
        }
        return string.Join(" ", result);
    }
    public static void Main(string[] args) {
    Debug.Assert(SortNumbers(("")).Equals(("")));
    Debug.Assert(SortNumbers(("three")).Equals(("three")));
    Debug.Assert(SortNumbers(("three five nine")).Equals(("three five nine")));
    Debug.Assert(SortNumbers(("five zero four seven nine eight")).Equals(("zero four five seven eight nine")));
    Debug.Assert(SortNumbers(("six five four three two one zero")).Equals(("zero one two three four five six")));
    }

}

# status = Exception
# exit_code = 1
''' stderr = 

Unhandled Exception:
System.Collections.Generic.KeyNotFoundException: The given key '' was not present in the dictionary.
  at System.Collections.Generic.Dictionary`2[TKey,TValue].get_Item (TKey key) [0x0001e] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at Problem.SortNumbers (System.String numbers) [0x00134] in <d61edc6fb17b47379649f1337b009993>:0 
  at Problem.Main (System.String[] args) [0x00001] in <d61edc6fb17b47379649f1337b009993>:0 
[ERROR] FATAL UNHANDLED EXCEPTION: System.Collections.Generic.KeyNotFoundException: The given key '' was not present in the dictionary.
  at System.Collections.Generic.Dictionary`2[TKey,TValue].get_Item (TKey key) [0x0001e] in <aa5dff9b31c64fce86559bbbf6cd364f>:0 
  at Problem.SortNumbers (System.String numbers) [0x00134] in <d61edc6fb17b47379649f1337b009993>:0 
  at Problem.Main (System.String[] args) [0x00001] in <d61edc6fb17b47379649f1337b009993>:0 

'''
''' stdout = 

'''





