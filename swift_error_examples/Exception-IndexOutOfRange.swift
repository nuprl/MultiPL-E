// ----------- problem HumanEval_126_is_sorted, completion 148 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 140 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ad2048b0c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ad2045a7561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ad2045a7286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ad2045a713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ad2045a6bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ad2043a6e83 <unavailable> + 188035
6    tmphoo0nmhz                        0x000056384653d419 <unavailable> + 9241
7    tmphoo0nmhz                        0x000056384653c4eb <unavailable> + 5355
8    libc.so.6                          0x00002ad204a9c460 __libc_start_main + 245
9    tmphoo0nmhz                        0x000056384653c209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 161 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_33_sort_third, completion 48 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b84e96c7c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b84e93be561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b84e93be286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b84e93be13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b84e93bdbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b84e91bde83 <unavailable> + 188035
6    tmpmgdrezrc                        0x000055d6fe0c5ec1 <unavailable> + 7873
7    tmpmgdrezrc                        0x000055d6fe0c5614 <unavailable> + 5652
8    libc.so.6                          0x00002b84e98b3460 __libc_start_main + 245
9    tmpmgdrezrc                        0x000055d6fe0c52d9 <unavailable> + 4825

*/
/* stdout = 

*/


/// This function takes an array l and returns an array l' such that
/// l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
/// to the values of the corresponding indicies of l, but sorted.
/// >>> sort_third(l: [1, 2, 3])
/// [1, 2, 3]
/// >>> sort_third(l: [5, 6, 3, 4, 8, 9, 2])
/// [2, 6, 3, 4, 8, 9, 5]
func sort_third(l: [Int]) -> [Int] {
    var l = l
    for i in stride(from: 2, to: l.count, by: 3) {
        for j in stride(from: i, to: 0, by: -3) {
            if l[j] < l[j - 3] {
                let temp = l[j]
                l[j] = l[j - 3]
                l[j - 3] = temp
            }
        }
    }
    return l
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_third(l: [5, 6, 3, 4, 8, 9, 2]) == [2, 6, 3, 4, 8, 9, 5])
assert(sort_third(l: [5, 8, 3, 4, 6, 9, 2]) == [2, 8, 3, 4, 6, 9, 5])
assert(sort_third(l: [5, 6, 9, 4, 8, 3, 2]) == [2, 6, 9, 4, 8, 3, 5])
assert(sort_third(l: [5, 6, 3, 4, 8, 9, 2, 1]) == [2, 6, 3, 4, 8, 9, 5, 1])



// ----------- problem HumanEval_130_tri, completion 101 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002aac01482c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aac01179561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aac01179286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aac0117913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aac01178bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002aac00f78e83 <unavailable> + 188035
6    tmp0oi1klnf                        0x0000563f4e17b843 <unavailable> + 10307
7    tmp0oi1klnf                        0x0000563f4e17a6db <unavailable> + 5851
8    libc.so.6                          0x00002aac0166e460 __libc_start_main + 245
9    tmp0oi1klnf                        0x0000563f4e17a3f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    if n < 3 {
        return Array(result[0...n])
    }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 36 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 0 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b887adb3c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b887aaaa561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b887aaaa286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b887aaaa13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b887aaa9bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b887a8a9e83 <unavailable> + 188035
6    tmpbndktfr7                        0x000055f1a4e95b58 <unavailable> + 7000
7    tmpbndktfr7                        0x000055f1a4e9562d <unavailable> + 5677
8    libc.so.6                          0x00002b887af9f460 __libc_start_main + 245
9    tmpbndktfr7                        0x000055f1a4e95339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_130_tri, completion 177 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b8c2d03ac80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b8c2cd31561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b8c2cd31286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b8c2cd3113c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b8c2cd30bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b8c2cb30e83 <unavailable> + 188035
6    tmp_k3q15uz                        0x0000563fe4c78444 <unavailable> + 9284
7    tmp_k3q15uz                        0x0000563fe4c774eb <unavailable> + 5355
8    libc.so.6                          0x00002b8c2d226460 __libc_start_main + 245
9    tmp_k3q15uz                        0x0000563fe4c77209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var tri = [1, 3, 2]
    guard n > 2 else { return tri }
    for i in 3...n {
        tri.append(i % 2 == 0 ? 1 + i / 2 : tri[i - 1] + tri[i - 2] + tri[i + 1])
    }
    return tri
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_130_tri, completion 5 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b65834efc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b65831e6561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b65831e6286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b65831e613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b65831e5bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b6582fe5e83 <unavailable> + 188035
6    tmp8v1gq5gk                        0x000055ae172f667a <unavailable> + 9850
7    tmp8v1gq5gk                        0x000055ae172f56db <unavailable> + 5851
8    libc.so.6                          0x00002b65836db460 __libc_start_main + 245
9    tmp8v1gq5gk                        0x000055ae172f53f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    guard n > 2 else { return Array(result[0...n]) }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 194 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 102 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b65b1890c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b65b1587561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b65b1587286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b65b158713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b65b1586bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b65b1386e83 <unavailable> + 188035
6    tmpk57ye95c                        0x000055c2c4b6284f <unavailable> + 10319
7    tmpk57ye95c                        0x000055c2c4b616db <unavailable> + 5851
8    libc.so.6                          0x00002b65b1a7c460 __libc_start_main + 245
9    tmpk57ye95c                        0x000055c2c4b613f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    if n <= 2 {
        return Array(result[0...n])
    }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_10_make_palindrome, completion 69 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002abca3660c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002abca3357561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002abca3357286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002abca335713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002abca3356bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002abca3156e83 <unavailable> + 188035
6    tmpizcq0w2d                        0x000055dee67c374a <unavailable> + 10058
7    tmpizcq0w2d                        0x000055dee67c2ac5 <unavailable> + 6853
8    libc.so.6                          0x00002abca384c460 __libc_start_main + 245
9    tmpizcq0w2d                        0x000055dee67c27c9 <unavailable> + 6089

*/
/* stdout = 

*/


/// Find the shortest palindrome that begins with a supplied string.
/// Algorithm idea is simple:
/// - Find the longest postfix of supplied string that is a palindrome.
/// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
/// >>> make_palindrome(string: "")
/// ""
/// >>> make_palindrome(string: "cat")
/// "catac"
/// >>> make_palindrome(string: "cata")
/// "catac"
func make_palindrome(string: String) -> String {
    let string_length = string.count
    let string_chars = Array(string)
    var longest_palindrome_length = 0
    var longest_palindrome_center = 0
    var palindrome_lengths = Array(repeating: 0, count: string_length)
    for i in 0..<string_length {
        let mirror_i = 2 * longest_palindrome_center - i
        if i < longest_palindrome_length {
            palindrome_lengths[i] = min(longest_palindrome_length - i, palindrome_lengths[mirror_i])
        }
        while i + palindrome_lengths[i] + 1 < string_length && i - palindrome_lengths[i] - 1 >= 0 && string_chars[i + palindrome_lengths[i] + 1] == string_chars[i - palindrome_lengths[i] - 1] {
            palindrome_lengths[i] += 1
        }
        if i + palindrome_lengths[i] > longest_palindrome_length {
            longest_palindrome_length = i + palindrome_lengths[i]
            longest_palindrome_center = i
        }
    }
    let longest_palindrome_start = (longest_palindrome_center - palindrome_lengths[longest_palindrome_center]) / 2
    let longest_palindrome_end = (longest_palindrome_center + palindrome_lengths[longest_palindrome_center]) / 2
    let prefix = String(string_chars[0..<longest_palindrome_start])
    let suffix = String(string_chars[longest_palindrome_end..<string_length])
    return string + String(suffix.reversed())
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(make_palindrome(string: "") == "")
assert(make_palindrome(string: "x") == "x")
assert(make_palindrome(string: "xyz") == "xyzyx")
assert(make_palindrome(string: "xyx") == "xyx")
assert(make_palindrome(string: "jerry") == "jerryrrej")



// ----------- problem HumanEval_130_tri, completion 37 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b4402e35c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b4402b2c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b4402b2c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b4402b2c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b4402b2bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b440292be83 <unavailable> + 188035
6    tmpbqjdaz6i                        0x00005566c08d7454 <unavailable> + 9300
7    tmpbqjdaz6i                        0x00005566c08d64eb <unavailable> + 5355
8    libc.so.6                          0x00002b4403021460 __libc_start_main + 245
9    tmpbqjdaz6i                        0x00005566c08d6209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    guard n > 2 else { return result }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 88 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 178 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 194 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1a31d56c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1a31a4d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1a31a4d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b1a31a4d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1a31a4cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b1a3184ce83 <unavailable> + 188035
6    tmpajcjyx79                        0x00005557113abae8 <unavailable> + 6888
7    tmpajcjyx79                        0x00005557113ab5ad <unavailable> + 5549
8    libc.so.6                          0x00002b1a31f42460 __libc_start_main + 245
9    tmpajcjyx79                        0x00005557113ab2b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    result.append(max)
    for i in 1..<numbers.count {
        if numbers[i] > max {
            max = numbers[i]
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_119_match_parens, completion 159 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b8ec984dc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b8ec9544561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b8ec9544286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b8ec954413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b8ec9543bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b8ec9343fc3 <unavailable> + 188355
6    tmpm1vg7uc3                        0x000055c159d1fa17 <unavailable> + 10775
7    tmpm1vg7uc3                        0x000055c159d1e735 <unavailable> + 5941
8    libc.so.6                          0x00002b8ec9a39460 __libc_start_main + 245
9    tmpm1vg7uc3                        0x000055c159d1e3d9 <unavailable> + 5081

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var str = ""
    while lst.count > 0 {
        if lst[0].count > lst[1].count {
            str += lst[0]
            lst.remove(at: 0)
        } else {
            str += lst[1]
            lst.remove(at: 1)
        }
    }
    var count = 0
    for c in str {
        if c == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            return "No"
        }
    }
    return "Yes"
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_120_maximum, completion 11 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ba50e44fc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba50e146561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba50e146286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba50e14613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba50e145bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ba50df45e83 <unavailable> + 188035
6    tmp9im5po73                        0x0000560b386938f2 <unavailable> + 10482
7    tmp9im5po73                        0x0000560b386934b6 <unavailable> + 9398
8    libc.so.6                          0x00002ba50e63b460 __libc_start_main + 245
9    tmp9im5po73                        0x0000560b38692429 <unavailable> + 5161

*/
/* stdout = 

*/


/// Given an array arr of integers and a positive integer k, return a sorted array 
/// of length k with the maximum k numbers in arr.
/// Example 1:
/// >>> maximum(arr: [-3, -4, 5], k: 3)
/// [-4, -3, 5]
/// Example 2:
/// >>> maximum(arr: [4, -4, 4], k: 2)
/// [4, 4]
/// Example 3:
/// >>> maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1)
/// [2]
/// Note:
/// 1. The length of the array will be in the range of [1, 1000].
/// 2. The elements in the array will be in the range of [-1000, 1000].
/// 3. 0 <= k <= len(arr)
func maximum(arr: [Int], k: Int) -> [Int] {
    var result = [Int]()
    for i in 0..<k {
        result.append(arr[i])
    }
    result.sort()
    for i in k..<arr.count {
        if arr[i] > result[0] {
            result[0] = arr[i]
            result.sort()
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(maximum(arr: [-3, -4, 5], k: 3) == [-4, -3, 5])
assert(maximum(arr: [4, -4, 4], k: 2) == [4, 4])
assert(maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1) == [2])
assert(maximum(arr: [123, -123, 20, 0, 1, 2, -3], k: 3) == [2, 20, 123])
assert(maximum(arr: [-123, 20, 0, 1, 2, -3], k: 4) == [0, 1, 2, 20])
assert(maximum(arr: [5, 15, 0, 3, -13, -8, 0], k: 7) == [-13, -8, 0, 0, 3, 5, 15])
assert(maximum(arr: [-1, 0, 2, 5, 3, -10], k: 2) == [3, 5])
assert(maximum(arr: [1, 0, 5, -7], k: 1) == [5])
assert(maximum(arr: [4, -4], k: 2) == [-4, 4])
assert(maximum(arr: [-10, 10], k: 2) == [-10, 10])
assert(maximum(arr: [1, 2, 3, -23, 243, -400, 0], k: 0) == [] as [Int])



// ----------- problem HumanEval_130_tri, completion 174 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ae889c51c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae889948561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae889948286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae88994813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae889947bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ae889747e83 <unavailable> + 188035
6    tmpyix3dkrm                        0x000055db61fb1444 <unavailable> + 9284
7    tmpyix3dkrm                        0x000055db61fb04eb <unavailable> + 5355
8    libc.so.6                          0x00002ae889e3d460 __libc_start_main + 245
9    tmpyix3dkrm                        0x000055db61fb0209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    guard n > 2 else { return result }
    for i in 3...n {
        result.append(i % 2 == 0 ? 1 + i / 2 : result[i - 1] + result[i - 2] + result[i + 1])
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_9_rolling_max, completion 45 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b5a2296cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b5a22663561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b5a22663286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b5a2266313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b5a22662bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b5a22462e83 <unavailable> + 188035
6    tmpf5224ffh                        0x000055a73c59ab68 <unavailable> + 7016
7    tmpf5224ffh                        0x000055a73c59a62d <unavailable> + 5677
8    libc.so.6                          0x00002b5a22b58460 __libc_start_main + 245
9    tmpf5224ffh                        0x000055a73c59a339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max_so_far = numbers[0]
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_70_strange_sort_list, completion 1 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Array.swift:1331: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b642669ac80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b6426391561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b6426391286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b642639113c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b6426390bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftCore.so                    0x00002b642637e018 <unavailable> + 1355800
6    tmpifzj_fko                        0x00005582fd2e9aa5 <unavailable> + 10917
7    tmpifzj_fko                        0x00005582fd2e869c <unavailable> + 5788
8    libc.so.6                          0x00002b6426886460 __libc_start_main + 245
9    tmpifzj_fko                        0x00005582fd2e8379 <unavailable> + 4985

*/
/* stdout = 

*/


/// Given array of integers, return array in strange order.
/// Strange sorting, is when you start with the minimum value,
/// then maximum of the remaining integers, then minimum and so on.
/// Examples:
/// >>> strange_sort_list(lst: [1, 2, 3, 4])
/// [1, 4, 2, 3]
/// >>> strange_sort_list(lst: [5, 5, 5, 5])
/// [5, 5, 5, 5]
/// >>> strange_sort_list(lst: [] as [Int])
/// [] as [Int]
func strange_sort_list(lst: [Int]) -> [Int] {
    var result = [Int]()
    var copy = lst
    var min = copy.min()
    var max = copy.max()
    var minIndex = copy.index(of: min!)
    var maxIndex = copy.index(of: max!)
    var i = 0
    while i < copy.count {
        if i % 2 == 0 {
            result.append(min!)
            copy.remove(at: minIndex!)
            min = copy.min()
            minIndex = copy.index(of: min!)
        } else {
            result.append(max!)
            copy.remove(at: maxIndex!)
            max = copy.max()
            maxIndex = copy.index(of: max!)
        }
        i += 1
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strange_sort_list(lst: [1, 2, 3, 4]) == [1, 4, 2, 3])
assert(strange_sort_list(lst: [5, 6, 7, 8, 9]) == [5, 9, 6, 8, 7])
assert(strange_sort_list(lst: [1, 2, 3, 4, 5]) == [1, 5, 2, 4, 3])
assert(strange_sort_list(lst: [5, 6, 7, 8, 9, 1]) == [1, 9, 5, 8, 6, 7])
assert(strange_sort_list(lst: [5, 5, 5, 5]) == [5, 5, 5, 5])
assert(strange_sort_list(lst: [] as [Int]) == [] as [Int])
assert(strange_sort_list(lst: [1, 2, 3, 4, 5, 6, 7, 8]) == [1, 8, 2, 7, 3, 6, 4, 5])
assert(strange_sort_list(lst: [0, 2, 2, 2, 5, 5, -5, -5]) == [-5, 5, -5, 5, 0, 2, 2, 2])
assert(strange_sort_list(lst: [111111]) == [111111])



// ----------- problem HumanEval_9_rolling_max, completion 29 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b5a2296cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b5a22663561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b5a22663286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b5a2266313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b5a22662bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b5a22462e83 <unavailable> + 188035
6    tmpf5224ffh                        0x000055a73c59ab68 <unavailable> + 7016
7    tmpf5224ffh                        0x000055a73c59a62d <unavailable> + 5677
8    libc.so.6                          0x00002b5a22b58460 __libc_start_main + 245
9    tmpf5224ffh                        0x000055a73c59a339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max_so_far = numbers[0]
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 69 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_120_maximum, completion 17 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ba50e44fc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba50e146561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba50e146286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba50e14613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba50e145bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ba50df45e83 <unavailable> + 188035
6    tmp9im5po73                        0x0000560b386938f2 <unavailable> + 10482
7    tmp9im5po73                        0x0000560b386934b6 <unavailable> + 9398
8    libc.so.6                          0x00002ba50e63b460 __libc_start_main + 245
9    tmp9im5po73                        0x0000560b38692429 <unavailable> + 5161

*/
/* stdout = 

*/


/// Given an array arr of integers and a positive integer k, return a sorted array 
/// of length k with the maximum k numbers in arr.
/// Example 1:
/// >>> maximum(arr: [-3, -4, 5], k: 3)
/// [-4, -3, 5]
/// Example 2:
/// >>> maximum(arr: [4, -4, 4], k: 2)
/// [4, 4]
/// Example 3:
/// >>> maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1)
/// [2]
/// Note:
/// 1. The length of the array will be in the range of [1, 1000].
/// 2. The elements in the array will be in the range of [-1000, 1000].
/// 3. 0 <= k <= len(arr)
func maximum(arr: [Int], k: Int) -> [Int] {
    var result = [Int]()
    for i in 0..<k {
        result.append(arr[i])
    }
    result.sort()
    for i in k..<arr.count {
        if arr[i] > result[0] {
            result[0] = arr[i]
            result.sort()
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(maximum(arr: [-3, -4, 5], k: 3) == [-4, -3, 5])
assert(maximum(arr: [4, -4, 4], k: 2) == [4, 4])
assert(maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1) == [2])
assert(maximum(arr: [123, -123, 20, 0, 1, 2, -3], k: 3) == [2, 20, 123])
assert(maximum(arr: [-123, 20, 0, 1, 2, -3], k: 4) == [0, 1, 2, 20])
assert(maximum(arr: [5, 15, 0, 3, -13, -8, 0], k: 7) == [-13, -8, 0, 0, 3, 5, 15])
assert(maximum(arr: [-1, 0, 2, 5, 3, -10], k: 2) == [3, 5])
assert(maximum(arr: [1, 0, 5, -7], k: 1) == [5])
assert(maximum(arr: [4, -4], k: 2) == [-4, 4])
assert(maximum(arr: [-10, 10], k: 2) == [-10, 10])
assert(maximum(arr: [1, 2, 3, -23, 243, -400, 0], k: 0) == [] as [Int])



// ----------- problem HumanEval_126_is_sorted, completion 140 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_120_maximum, completion 49 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ba50e44fc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba50e146561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba50e146286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba50e14613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba50e145bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ba50df45e83 <unavailable> + 188035
6    tmp9im5po73                        0x0000560b386938f2 <unavailable> + 10482
7    tmp9im5po73                        0x0000560b386934b6 <unavailable> + 9398
8    libc.so.6                          0x00002ba50e63b460 __libc_start_main + 245
9    tmp9im5po73                        0x0000560b38692429 <unavailable> + 5161

*/
/* stdout = 

*/


/// Given an array arr of integers and a positive integer k, return a sorted array 
/// of length k with the maximum k numbers in arr.
/// Example 1:
/// >>> maximum(arr: [-3, -4, 5], k: 3)
/// [-4, -3, 5]
/// Example 2:
/// >>> maximum(arr: [4, -4, 4], k: 2)
/// [4, 4]
/// Example 3:
/// >>> maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1)
/// [2]
/// Note:
/// 1. The length of the array will be in the range of [1, 1000].
/// 2. The elements in the array will be in the range of [-1000, 1000].
/// 3. 0 <= k <= len(arr)
func maximum(arr: [Int], k: Int) -> [Int] {
    var result = [Int]()
    for i in 0..<k {
        result.append(arr[i])
    }
    result.sort()
    for i in k..<arr.count {
        if arr[i] > result[0] {
            result[0] = arr[i]
            result.sort()
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(maximum(arr: [-3, -4, 5], k: 3) == [-4, -3, 5])
assert(maximum(arr: [4, -4, 4], k: 2) == [4, 4])
assert(maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1) == [2])
assert(maximum(arr: [123, -123, 20, 0, 1, 2, -3], k: 3) == [2, 20, 123])
assert(maximum(arr: [-123, 20, 0, 1, 2, -3], k: 4) == [0, 1, 2, 20])
assert(maximum(arr: [5, 15, 0, 3, -13, -8, 0], k: 7) == [-13, -8, 0, 0, 3, 5, 15])
assert(maximum(arr: [-1, 0, 2, 5, 3, -10], k: 2) == [3, 5])
assert(maximum(arr: [1, 0, 5, -7], k: 1) == [5])
assert(maximum(arr: [4, -4], k: 2) == [-4, 4])
assert(maximum(arr: [-10, 10], k: 2) == [-10, 10])
assert(maximum(arr: [1, 2, 3, -23, 243, -400, 0], k: 0) == [] as [Int])



// ----------- problem HumanEval_9_rolling_max, completion 186 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b864c653c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b864c34a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b864c34a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b864c34a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b864c349bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b864c149e83 <unavailable> + 188035
6    tmpimc4yzz7                        0x00005624a2b35a5f <unavailable> + 6751
7    tmpimc4yzz7                        0x00005624a2b3552d <unavailable> + 5421
8    libc.so.6                          0x00002b864c83f460 __libc_start_main + 245
9    tmpimc4yzz7                        0x00005624a2b35239 <unavailable> + 4665

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    for number in numbers {
        max = max > number ? max : number
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 85 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b4f8b798c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b4f8b48f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b4f8b48f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b4f8b48f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b4f8b48ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b4f8b28ee83 <unavailable> + 188035
6    tmpvnxjb_eu                        0x0000564a1439405b <unavailable> + 8283
7    tmpvnxjb_eu                        0x0000564a143939d4 <unavailable> + 6612
8    libc.so.6                          0x00002b4f8b984460 __libc_start_main + 245
9    tmpvnxjb_eu                        0x0000564a143931a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            return false
        }
        prev = lst[i]
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 99 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 197 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ba2849a6c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba28469d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba28469d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba28469d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba28469cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ba28449ce83 <unavailable> + 188035
6    tmp1i3yyrcl                        0x000055c63c7a5af8 <unavailable> + 6904
7    tmp1i3yyrcl                        0x000055c63c7a55bd <unavailable> + 5565
8    libc.so.6                          0x00002ba284b92460 __libc_start_main + 245
9    tmp1i3yyrcl                        0x000055c63c7a52c9 <unavailable> + 4809

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    for number in numbers {
        max = Swift.max(max, number)
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_149_sorted_list_sum, completion 182 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b96d389dc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b96d3594561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b96d3594286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b96d359413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b96d3593bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b96d3393fc3 <unavailable> + 188355
6    tmpl3tka3d2                        0x000055a3bc86e82c <unavailable> + 10284
7    tmpl3tka3d2                        0x000055a3bc86d84d <unavailable> + 6221
8    libc.so.6                          0x00002b96d3a89460 __libc_start_main + 245
9    tmpl3tka3d2                        0x000055a3bc86d4c9 <unavailable> + 5321

*/
/* stdout = 

*/


/// Write a function that accepts an array of strings as a parameter,
/// deletes the strings that have odd lengths from it,
/// and returns the resulted array with a sorted order,
/// The array is always an array of strings and never an array of numbers,
/// and it may contain duplicates.
/// The order of the array should be ascending by length of each word, and you
/// should return the array sorted by that rule.
/// If two words have the same length, sort the array alphabetically.
/// The function should return an array of strings in sorted order.
/// You may assume that all words will have the same length.
/// For example:
/// >>> sorted_list_sum(lst: ["aa", "a", "aaa"])
/// ["aa"]
/// >>> sorted_list_sum(lst: ["ab", "a", "aaa", "cd"])
/// ["ab", "cd"]
func sorted_list_sum(lst: [String]) -> [String] {
    var new_lst = lst
    for i in 0..<new_lst.count {
        if new_lst[i].count % 2 != 0 {
            new_lst.remove(at: i)
        }
    }
    new_lst.sort()
    return new_lst
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sorted_list_sum(lst: ["aa", "a", "aaa"]) == ["aa"])
assert(sorted_list_sum(lst: ["school", "AI", "asdf", "b"]) == ["AI", "asdf", "school"])
assert(sorted_list_sum(lst: ["d", "b", "c", "a"]) == [] as [String])
assert(sorted_list_sum(lst: ["d", "dcba", "abcd", "a"]) == ["abcd", "dcba"])
assert(sorted_list_sum(lst: ["AI", "ai", "au"]) == ["AI", "ai", "au"])
assert(sorted_list_sum(lst: ["a", "b", "b", "c", "c", "a"]) == [] as [String])
assert(sorted_list_sum(lst: ["aaaa", "bbbb", "dd", "cc"]) == ["cc", "dd", "aaaa", "bbbb"])



// ----------- problem HumanEval_120_maximum, completion 9 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b478bdf9c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b478baf0561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b478baf0286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b478baf013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b478baefbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b478b8efe83 <unavailable> + 188035
6    tmpnl0krhtf                        0x000056052e2fb74f <unavailable> + 10063
7    tmpnl0krhtf                        0x000056052e2fb496 <unavailable> + 9366
8    libc.so.6                          0x00002b478bfe5460 __libc_start_main + 245
9    tmpnl0krhtf                        0x000056052e2fa409 <unavailable> + 5129

*/
/* stdout = 

*/


/// Given an array arr of integers and a positive integer k, return a sorted array 
/// of length k with the maximum k numbers in arr.
/// Example 1:
/// >>> maximum(arr: [-3, -4, 5], k: 3)
/// [-4, -3, 5]
/// Example 2:
/// >>> maximum(arr: [4, -4, 4], k: 2)
/// [4, 4]
/// Example 3:
/// >>> maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1)
/// [2]
/// Note:
/// 1. The length of the array will be in the range of [1, 1000].
/// 2. The elements in the array will be in the range of [-1000, 1000].
/// 3. 0 <= k <= len(arr)
func maximum(arr: [Int], k: Int) -> [Int] {
    var result = [Int]()
    for num in arr {
        if result.count < k {
            result.append(num)
            result.sort()
        } else {
            if num > result[0] {
                result.remove(at: 0)
                result.append(num)
                result.sort()
            }
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(maximum(arr: [-3, -4, 5], k: 3) == [-4, -3, 5])
assert(maximum(arr: [4, -4, 4], k: 2) == [4, 4])
assert(maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1) == [2])
assert(maximum(arr: [123, -123, 20, 0, 1, 2, -3], k: 3) == [2, 20, 123])
assert(maximum(arr: [-123, 20, 0, 1, 2, -3], k: 4) == [0, 1, 2, 20])
assert(maximum(arr: [5, 15, 0, 3, -13, -8, 0], k: 7) == [-13, -8, 0, 0, 3, 5, 15])
assert(maximum(arr: [-1, 0, 2, 5, 3, -10], k: 2) == [3, 5])
assert(maximum(arr: [1, 0, 5, -7], k: 1) == [5])
assert(maximum(arr: [4, -4], k: 2) == [-4, 4])
assert(maximum(arr: [-10, 10], k: 2) == [-10, 10])
assert(maximum(arr: [1, 2, 3, -23, 243, -400, 0], k: 0) == [] as [Int])



// ----------- problem HumanEval_9_rolling_max, completion 20 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1385adbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b13857d2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b13857d2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b13857d213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b13857d1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b13855d1e83 <unavailable> + 188035
6    tmpburnh_0r                        0x000055614ce96ad8 <unavailable> + 6872
7    tmpburnh_0r                        0x000055614ce965ad <unavailable> + 5549
8    libc.so.6                          0x00002b1385cc7460 __libc_start_main + 245
9    tmpburnh_0r                        0x000055614ce962b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        if numbers[i] > max_so_far {
            max_so_far = numbers[i]
        }
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_9_rolling_max, completion 42 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ae8d202ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae8d1d25561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae8d1d25286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae8d1d2513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae8d1d24bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ae8d1b24e83 <unavailable> + 188035
6    tmpwrcrc0v8                        0x000055d19e210a5f <unavailable> + 6751
7    tmpwrcrc0v8                        0x000055d19e21052d <unavailable> + 5421
8    libc.so.6                          0x00002ae8d221a460 __libc_start_main + 245
9    tmpwrcrc0v8                        0x000055d19e210239 <unavailable> + 4665

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    for number in numbers {
        if number > max {
            max = number
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 180 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 12 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_120_maximum, completion 195 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ba50e44fc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba50e146561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba50e146286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba50e14613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba50e145bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ba50df45e83 <unavailable> + 188035
6    tmp9im5po73                        0x0000560b386938f2 <unavailable> + 10482
7    tmp9im5po73                        0x0000560b386934b6 <unavailable> + 9398
8    libc.so.6                          0x00002ba50e63b460 __libc_start_main + 245
9    tmp9im5po73                        0x0000560b38692429 <unavailable> + 5161

*/
/* stdout = 

*/


/// Given an array arr of integers and a positive integer k, return a sorted array 
/// of length k with the maximum k numbers in arr.
/// Example 1:
/// >>> maximum(arr: [-3, -4, 5], k: 3)
/// [-4, -3, 5]
/// Example 2:
/// >>> maximum(arr: [4, -4, 4], k: 2)
/// [4, 4]
/// Example 3:
/// >>> maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1)
/// [2]
/// Note:
/// 1. The length of the array will be in the range of [1, 1000].
/// 2. The elements in the array will be in the range of [-1000, 1000].
/// 3. 0 <= k <= len(arr)
func maximum(arr: [Int], k: Int) -> [Int] {
    var result = [Int]()
    for i in 0..<k {
        result.append(arr[i])
    }
    result.sort()
    for i in k..<arr.count {
        if arr[i] > result[0] {
            result[0] = arr[i]
            result.sort()
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(maximum(arr: [-3, -4, 5], k: 3) == [-4, -3, 5])
assert(maximum(arr: [4, -4, 4], k: 2) == [4, 4])
assert(maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1) == [2])
assert(maximum(arr: [123, -123, 20, 0, 1, 2, -3], k: 3) == [2, 20, 123])
assert(maximum(arr: [-123, 20, 0, 1, 2, -3], k: 4) == [0, 1, 2, 20])
assert(maximum(arr: [5, 15, 0, 3, -13, -8, 0], k: 7) == [-13, -8, 0, 0, 3, 5, 15])
assert(maximum(arr: [-1, 0, 2, 5, 3, -10], k: 2) == [3, 5])
assert(maximum(arr: [1, 0, 5, -7], k: 1) == [5])
assert(maximum(arr: [4, -4], k: 2) == [-4, 4])
assert(maximum(arr: [-10, 10], k: 2) == [-10, 10])
assert(maximum(arr: [1, 2, 3, -23, 243, -400, 0], k: 0) == [] as [Int])



// ----------- problem HumanEval_126_is_sorted, completion 63 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 172 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 118 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002aeb63431c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aeb63128561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aeb63128286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aeb6312813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aeb63127bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002aeb62f27e83 <unavailable> + 188035
6    tmpfg_mhb9h                        0x000055cbfebc0042 <unavailable> + 8258
7    tmpfg_mhb9h                        0x000055cbfebbf9d4 <unavailable> + 6612
8    libc.so.6                          0x00002aeb6361d460 __libc_start_main + 245
9    tmpfg_mhb9h                        0x000055cbfebbf1a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            return false
        }
        prev = lst[i]
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_120_maximum, completion 122 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ba50e44fc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba50e146561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba50e146286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba50e14613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba50e145bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ba50df45e83 <unavailable> + 188035
6    tmp9im5po73                        0x0000560b386938f2 <unavailable> + 10482
7    tmp9im5po73                        0x0000560b386934b6 <unavailable> + 9398
8    libc.so.6                          0x00002ba50e63b460 __libc_start_main + 245
9    tmp9im5po73                        0x0000560b38692429 <unavailable> + 5161

*/
/* stdout = 

*/


/// Given an array arr of integers and a positive integer k, return a sorted array 
/// of length k with the maximum k numbers in arr.
/// Example 1:
/// >>> maximum(arr: [-3, -4, 5], k: 3)
/// [-4, -3, 5]
/// Example 2:
/// >>> maximum(arr: [4, -4, 4], k: 2)
/// [4, 4]
/// Example 3:
/// >>> maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1)
/// [2]
/// Note:
/// 1. The length of the array will be in the range of [1, 1000].
/// 2. The elements in the array will be in the range of [-1000, 1000].
/// 3. 0 <= k <= len(arr)
func maximum(arr: [Int], k: Int) -> [Int] {
    var result = [Int]()
    for i in 0..<k {
        result.append(arr[i])
    }
    result.sort()
    for i in k..<arr.count {
        if arr[i] > result[0] {
            result[0] = arr[i]
            result.sort()
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(maximum(arr: [-3, -4, 5], k: 3) == [-4, -3, 5])
assert(maximum(arr: [4, -4, 4], k: 2) == [4, 4])
assert(maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1) == [2])
assert(maximum(arr: [123, -123, 20, 0, 1, 2, -3], k: 3) == [2, 20, 123])
assert(maximum(arr: [-123, 20, 0, 1, 2, -3], k: 4) == [0, 1, 2, 20])
assert(maximum(arr: [5, 15, 0, 3, -13, -8, 0], k: 7) == [-13, -8, 0, 0, 3, 5, 15])
assert(maximum(arr: [-1, 0, 2, 5, 3, -10], k: 2) == [3, 5])
assert(maximum(arr: [1, 0, 5, -7], k: 1) == [5])
assert(maximum(arr: [4, -4], k: 2) == [-4, 4])
assert(maximum(arr: [-10, 10], k: 2) == [-10, 10])
assert(maximum(arr: [1, 2, 3, -23, 243, -400, 0], k: 0) == [] as [Int])



// ----------- problem HumanEval_9_rolling_max, completion 4 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b864c653c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b864c34a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b864c34a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b864c34a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b864c349bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b864c149e83 <unavailable> + 188035
6    tmpimc4yzz7                        0x00005624a2b35a5f <unavailable> + 6751
7    tmpimc4yzz7                        0x00005624a2b3552d <unavailable> + 5421
8    libc.so.6                          0x00002b864c83f460 __libc_start_main + 245
9    tmpimc4yzz7                        0x00005624a2b35239 <unavailable> + 4665

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    for number in numbers {
        max = max > number ? max : number
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_120_maximum, completion 22 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b95824e5c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b95821dc561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b95821dc286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b95821dc13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b95821dbbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b9581fdbe83 <unavailable> + 188035
6    tmpoc_4zi62                        0x0000559ce0810876 <unavailable> + 10358
7    tmpoc_4zi62                        0x0000559ce08104f6 <unavailable> + 9462
8    libc.so.6                          0x00002b95826d1460 __libc_start_main + 245
9    tmpoc_4zi62                        0x0000559ce080f469 <unavailable> + 5225

*/
/* stdout = 

*/


/// Given an array arr of integers and a positive integer k, return a sorted array 
/// of length k with the maximum k numbers in arr.
/// Example 1:
/// >>> maximum(arr: [-3, -4, 5], k: 3)
/// [-4, -3, 5]
/// Example 2:
/// >>> maximum(arr: [4, -4, 4], k: 2)
/// [4, 4]
/// Example 3:
/// >>> maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1)
/// [2]
/// Note:
/// 1. The length of the array will be in the range of [1, 1000].
/// 2. The elements in the array will be in the range of [-1000, 1000].
/// 3. 0 <= k <= len(arr)
func maximum(arr: [Int], k: Int) -> [Int] {
    var result = [Int]()
    var temp = [Int]()
    for i in 0..<arr.count {
        if result.count < k {
            result.append(arr[i])
            result.sort()
        } else {
            if arr[i] > result[0] {
                result.removeFirst()
                result.append(arr[i])
                result.sort()
            }
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(maximum(arr: [-3, -4, 5], k: 3) == [-4, -3, 5])
assert(maximum(arr: [4, -4, 4], k: 2) == [4, 4])
assert(maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1) == [2])
assert(maximum(arr: [123, -123, 20, 0, 1, 2, -3], k: 3) == [2, 20, 123])
assert(maximum(arr: [-123, 20, 0, 1, 2, -3], k: 4) == [0, 1, 2, 20])
assert(maximum(arr: [5, 15, 0, 3, -13, -8, 0], k: 7) == [-13, -8, 0, 0, 3, 5, 15])
assert(maximum(arr: [-1, 0, 2, 5, 3, -10], k: 2) == [3, 5])
assert(maximum(arr: [1, 0, 5, -7], k: 1) == [5])
assert(maximum(arr: [4, -4], k: 2) == [-4, 4])
assert(maximum(arr: [-10, 10], k: 2) == [-10, 10])
assert(maximum(arr: [1, 2, 3, -23, 243, -400, 0], k: 0) == [] as [Int])



// ----------- problem HumanEval_120_maximum, completion 191 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002af01312ac80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af012e21561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af012e21286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af012e2113c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af012e20bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002af012c20e83 <unavailable> + 188035
6    tmpnsl1720i                        0x000055beccfa0836 <unavailable> + 10294
7    tmpnsl1720i                        0x000055beccfa04b6 <unavailable> + 9398
8    libc.so.6                          0x00002af013316460 __libc_start_main + 245
9    tmpnsl1720i                        0x000055beccf9f429 <unavailable> + 5161

*/
/* stdout = 

*/


/// Given an array arr of integers and a positive integer k, return a sorted array 
/// of length k with the maximum k numbers in arr.
/// Example 1:
/// >>> maximum(arr: [-3, -4, 5], k: 3)
/// [-4, -3, 5]
/// Example 2:
/// >>> maximum(arr: [4, -4, 4], k: 2)
/// [4, 4]
/// Example 3:
/// >>> maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1)
/// [2]
/// Note:
/// 1. The length of the array will be in the range of [1, 1000].
/// 2. The elements in the array will be in the range of [-1000, 1000].
/// 3. 0 <= k <= len(arr)
func maximum(arr: [Int], k: Int) -> [Int] {
    var result = [Int]()
    var max = [Int]()
    for i in 0..<arr.count {
        if max.count < k {
            max.append(arr[i])
            max.sort()
        } else {
            if arr[i] > max[0] {
                max[0] = arr[i]
                max.sort()
            }
        }
    }
    return max
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(maximum(arr: [-3, -4, 5], k: 3) == [-4, -3, 5])
assert(maximum(arr: [4, -4, 4], k: 2) == [4, 4])
assert(maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1) == [2])
assert(maximum(arr: [123, -123, 20, 0, 1, 2, -3], k: 3) == [2, 20, 123])
assert(maximum(arr: [-123, 20, 0, 1, 2, -3], k: 4) == [0, 1, 2, 20])
assert(maximum(arr: [5, 15, 0, 3, -13, -8, 0], k: 7) == [-13, -8, 0, 0, 3, 5, 15])
assert(maximum(arr: [-1, 0, 2, 5, 3, -10], k: 2) == [3, 5])
assert(maximum(arr: [1, 0, 5, -7], k: 1) == [5])
assert(maximum(arr: [4, -4], k: 2) == [-4, 4])
assert(maximum(arr: [-10, 10], k: 2) == [-10, 10])
assert(maximum(arr: [1, 2, 3, -23, 243, -400, 0], k: 0) == [] as [Int])



// ----------- problem HumanEval_126_is_sorted, completion 103 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 139 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b36f732bc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b36f7022561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b36f7022286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b36f702213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b36f7021bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b36f6e21e83 <unavailable> + 188035
6    tmpbhyastnx                        0x000055dd3b875fd6 <unavailable> + 8150
7    tmpbhyastnx                        0x000055dd3b875954 <unavailable> + 6484
8    libc.so.6                          0x00002b36f7517460 __libc_start_main + 245
9    tmpbhyastnx                        0x000055dd3b875129 <unavailable> + 4393

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for num in lst {
        if num < prev {
            sorted = false
        }
        prev = num
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 67 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 9 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002aac01482c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aac01179561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aac01179286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aac0117913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aac01178bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002aac00f78e83 <unavailable> + 188035
6    tmp0oi1klnf                        0x0000563f4e17b843 <unavailable> + 10307
7    tmp0oi1klnf                        0x0000563f4e17a6db <unavailable> + 5851
8    libc.so.6                          0x00002aac0166e460 __libc_start_main + 245
9    tmp0oi1klnf                        0x0000563f4e17a3f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    if n < 3 {
        return Array(result[0...n])
    }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_9_rolling_max, completion 170 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b864c653c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b864c34a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b864c34a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b864c34a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b864c349bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b864c149e83 <unavailable> + 188035
6    tmpimc4yzz7                        0x00005624a2b35a5f <unavailable> + 6751
7    tmpimc4yzz7                        0x00005624a2b3552d <unavailable> + 5421
8    libc.so.6                          0x00002b864c83f460 __libc_start_main + 245
9    tmpimc4yzz7                        0x00005624a2b35239 <unavailable> + 4665

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    for number in numbers {
        max = max > number ? max : number
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 11 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_120_maximum, completion 186 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b4b14da7c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b4b14a9e561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b4b14a9e286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b4b14a9e13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b4b14a9dbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b4b1489de83 <unavailable> + 188035
6    tmpp83zfj4a                        0x00005596693e877d <unavailable> + 10109
7    tmpp83zfj4a                        0x00005596693e8496 <unavailable> + 9366
8    libc.so.6                          0x00002b4b14f93460 __libc_start_main + 245
9    tmpp83zfj4a                        0x00005596693e7409 <unavailable> + 5129

*/
/* stdout = 

*/


/// Given an array arr of integers and a positive integer k, return a sorted array 
/// of length k with the maximum k numbers in arr.
/// Example 1:
/// >>> maximum(arr: [-3, -4, 5], k: 3)
/// [-4, -3, 5]
/// Example 2:
/// >>> maximum(arr: [4, -4, 4], k: 2)
/// [4, 4]
/// Example 3:
/// >>> maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1)
/// [2]
/// Note:
/// 1. The length of the array will be in the range of [1, 1000].
/// 2. The elements in the array will be in the range of [-1000, 1000].
/// 3. 0 <= k <= len(arr)
func maximum(arr: [Int], k: Int) -> [Int] {
    var result = [Int]()
    var max = [Int]()
    for num in arr {
        if max.count < k {
            max.append(num)
            max.sort()
        } else {
            if num > max[0] {
                max[0] = num
                max.sort()
            }
        }
    }
    return max
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(maximum(arr: [-3, -4, 5], k: 3) == [-4, -3, 5])
assert(maximum(arr: [4, -4, 4], k: 2) == [4, 4])
assert(maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1) == [2])
assert(maximum(arr: [123, -123, 20, 0, 1, 2, -3], k: 3) == [2, 20, 123])
assert(maximum(arr: [-123, 20, 0, 1, 2, -3], k: 4) == [0, 1, 2, 20])
assert(maximum(arr: [5, 15, 0, 3, -13, -8, 0], k: 7) == [-13, -8, 0, 0, 3, 5, 15])
assert(maximum(arr: [-1, 0, 2, 5, 3, -10], k: 2) == [3, 5])
assert(maximum(arr: [1, 0, 5, -7], k: 1) == [5])
assert(maximum(arr: [4, -4], k: 2) == [-4, 4])
assert(maximum(arr: [-10, 10], k: 2) == [-10, 10])
assert(maximum(arr: [1, 2, 3, -23, 243, -400, 0], k: 0) == [] as [Int])



// ----------- problem HumanEval_37_sort_even, completion 132 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b3ed8fa6c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3ed8c9d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3ed8c9d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3ed8c9d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3ed8c9cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b3ed8a9ce83 <unavailable> + 188035
6    tmphckdnyhc                        0x000055f2a6285071 <unavailable> + 8305
7    tmphckdnyhc                        0x000055f2a62847b4 <unavailable> + 6068
8    libc.so.6                          0x00002b3ed9192460 __libc_start_main + 245
9    tmphckdnyhc                        0x000055f2a6284499 <unavailable> + 5273

*/
/* stdout = 

*/


/// This function takes an array l and returns an array l' such that
/// l' is identical to l in the odd indicies, while its values at the even indicies are equal
/// to the values of the even indicies of l, but sorted.
/// >>> sort_even(l: [1, 2, 3])
/// [1, 2, 3]
/// >>> sort_even(l: [5, 6, 3, 4])
/// [3, 6, 5, 4]
func sort_even(l: [Int]) -> [Int] {
    var l_even = [Int]()
    var l_odd = [Int]()
    var l_sorted = [Int]()
    for (index, value) in l.enumerated() {
        if index % 2 == 0 {
            l_even.append(value)
        } else {
            l_odd.append(value)
        }
    }
    l_even.sort()
    for (index, value) in l_even.enumerated() {
        l_sorted.append(value)
        l_sorted.append(l_odd[index])
    }
    return l_sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_even(l: [1, 2, 3]) == [1, 2, 3])
assert(sort_even(l: [5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == [-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123])
assert(sort_even(l: [5, 8, -12, 4, 23, 2, 3, 11, 12, -10]) == [-12, 8, 3, 4, 5, 2, 12, 11, 23, -10])



// ----------- problem HumanEval_114_minSubArraySum, completion 68 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b10ef5b0c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b10ef2a7561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b10ef2a7286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b10ef2a713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b10ef2a6bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b10ef0a6e83 <unavailable> + 188035
6    tmpim5j5mj6                        0x0000561351eaaf25 <unavailable> + 7973
7    tmpim5j5mj6                        0x0000561351eaa3dc <unavailable> + 5084
8    libc.so.6                          0x00002b10ef79c460 __libc_start_main + 245
9    tmpim5j5mj6                        0x0000561351eaa0a9 <unavailable> + 4265

*/
/* stdout = 

*/


/// Given an array of integers nums, find the minimum sum of any non-empty sub-array
/// of nums.
/// Example
/// >>> minSubArraySum(nums: [2, 3, 4, 1, 2, 4])
/// 1
/// >>> minSubArraySum(nums: [-1, -2, -3])
/// -6
func minSubArraySum(nums: [Int]) -> Int {
    var minSum = Int.max
    var sum = 0
    var start = 0
    var end = 0
    while end < nums.count {
        sum += nums[end]
        while sum >= 0 {
            minSum = min(minSum, sum)
            sum -= nums[start]
            start += 1
        }
        end += 1
    }
    return minSum
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(minSubArraySum(nums: [2, 3, 4, 1, 2, 4]) == 1)
assert(minSubArraySum(nums: [-1, -2, -3]) == -6)
assert(minSubArraySum(nums: [-1, -2, -3, 2, -10]) == -14)
assert(minSubArraySum(nums: [-9999999999999999]) == -9999999999999999)
assert(minSubArraySum(nums: [0, 10, 20, 1000000]) == 0)
assert(minSubArraySum(nums: [-1, -2, -3, 10, -5]) == -6)
assert(minSubArraySum(nums: [100, -1, -2, -3, 10, -5]) == -6)
assert(minSubArraySum(nums: [10, 11, 13, 8, 3, 4]) == 3)
assert(minSubArraySum(nums: [100, -33, 32, -1, 0, -2]) == -33)
assert(minSubArraySum(nums: [-10]) == -10)
assert(minSubArraySum(nums: [7]) == 7)
assert(minSubArraySum(nums: [1, -1]) == -1)



// ----------- problem HumanEval_130_tri, completion 97 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b65834efc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b65831e6561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b65831e6286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b65831e613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b65831e5bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b6582fe5e83 <unavailable> + 188035
6    tmp8v1gq5gk                        0x000055ae172f667a <unavailable> + 9850
7    tmp8v1gq5gk                        0x000055ae172f56db <unavailable> + 5851
8    libc.so.6                          0x00002b65836db460 __libc_start_main + 245
9    tmp8v1gq5gk                        0x000055ae172f53f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    guard n > 2 else { return Array(result[0...n]) }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 104 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 25 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 106 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ad2048b0c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ad2045a7561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ad2045a7286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ad2045a713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ad2045a6bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ad2043a6e83 <unavailable> + 188035
6    tmphoo0nmhz                        0x000056384653d419 <unavailable> + 9241
7    tmphoo0nmhz                        0x000056384653c4eb <unavailable> + 5355
8    libc.so.6                          0x00002ad204a9c460 __libc_start_main + 245
9    tmphoo0nmhz                        0x000056384653c209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_9_rolling_max, completion 106 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1a31d56c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1a31a4d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1a31a4d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b1a31a4d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1a31a4cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b1a3184ce83 <unavailable> + 188035
6    tmpajcjyx79                        0x00005557113abae8 <unavailable> + 6888
7    tmpajcjyx79                        0x00005557113ab5ad <unavailable> + 5549
8    libc.so.6                          0x00002b1a31f42460 __libc_start_main + 245
9    tmpajcjyx79                        0x00005557113ab2b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    result.append(max)
    for i in 1..<numbers.count {
        if numbers[i] > max {
            max = numbers[i]
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 68 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 90 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b63d91cac80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b63d8ec1561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b63d8ec1286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b63d8ec113c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b63d8ec0bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b63d8cc0e83 <unavailable> + 188035
6    tmpmovtpr7h                        0x0000556e2bd2eae8 <unavailable> + 6888
7    tmpmovtpr7h                        0x0000556e2bd2e5ad <unavailable> + 5549
8    libc.so.6                          0x00002b63d93b6460 __libc_start_main + 245
9    tmpmovtpr7h                        0x0000556e2bd2e2b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_elements = [Int]()
    var max_element = numbers[0]
    max_elements.append(max_element)
    for i in 1..<numbers.count {
        if numbers[i] > max_element {
            max_element = numbers[i]
        }
        max_elements.append(max_element)
    }
    return max_elements
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_37_sort_even, completion 92 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b473c537c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b473c22e561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b473c22e286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b473c22e13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b473c22dbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b473c02de83 <unavailable> + 188035
6    tmpj8_83i5n                        0x00005574bb781042 <unavailable> + 8258
7    tmpj8_83i5n                        0x00005574bb780764 <unavailable> + 5988
8    libc.so.6                          0x00002b473c723460 __libc_start_main + 245
9    tmpj8_83i5n                        0x00005574bb780449 <unavailable> + 5193

*/
/* stdout = 

*/


/// This function takes an array l and returns an array l' such that
/// l' is identical to l in the odd indicies, while its values at the even indicies are equal
/// to the values of the even indicies of l, but sorted.
/// >>> sort_even(l: [1, 2, 3])
/// [1, 2, 3]
/// >>> sort_even(l: [5, 6, 3, 4])
/// [3, 6, 5, 4]
func sort_even(l: [Int]) -> [Int] {
    var l_even: [Int] = []
    var l_odd: [Int] = []
    var l_sorted: [Int] = []
    for (index, value) in l.enumerated() {
        if index % 2 == 0 {
            l_even.append(value)
        } else {
            l_odd.append(value)
        }
    }
    l_even.sort()
    for (index, value) in l_even.enumerated() {
        l_sorted.append(value)
        l_sorted.append(l_odd[index])
    }
    return l_sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_even(l: [1, 2, 3]) == [1, 2, 3])
assert(sort_even(l: [5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == [-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123])
assert(sort_even(l: [5, 8, -12, 4, 23, 2, 3, 11, 12, -10]) == [-12, 8, 3, 4, 5, 2, 12, 11, 23, -10])



// ----------- problem HumanEval_9_rolling_max, completion 92 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b5a2296cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b5a22663561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b5a22663286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b5a2266313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b5a22662bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b5a22462e83 <unavailable> + 188035
6    tmpf5224ffh                        0x000055a73c59ab68 <unavailable> + 7016
7    tmpf5224ffh                        0x000055a73c59a62d <unavailable> + 5677
8    libc.so.6                          0x00002b5a22b58460 __libc_start_main + 245
9    tmpf5224ffh                        0x000055a73c59a339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max_so_far = numbers[0]
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_9_rolling_max, completion 149 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b887adb3c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b887aaaa561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b887aaaa286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b887aaaa13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b887aaa9bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b887a8a9e83 <unavailable> + 188035
6    tmpbndktfr7                        0x000055f1a4e95b58 <unavailable> + 7000
7    tmpbndktfr7                        0x000055f1a4e9562d <unavailable> + 5677
8    libc.so.6                          0x00002b887af9f460 __libc_start_main + 245
9    tmpbndktfr7                        0x000055f1a4e95339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_9_rolling_max, completion 16 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1385adbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b13857d2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b13857d2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b13857d213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b13857d1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b13855d1e83 <unavailable> + 188035
6    tmpburnh_0r                        0x000055614ce96ad8 <unavailable> + 6872
7    tmpburnh_0r                        0x000055614ce965ad <unavailable> + 5549
8    libc.so.6                          0x00002b1385cc7460 __libc_start_main + 245
9    tmpburnh_0r                        0x000055614ce962b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        if numbers[i] > max_so_far {
            max_so_far = numbers[i]
        }
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_9_rolling_max, completion 67 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b5a2296cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b5a22663561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b5a22663286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b5a2266313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b5a22662bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b5a22462e83 <unavailable> + 188035
6    tmpf5224ffh                        0x000055a73c59ab68 <unavailable> + 7016
7    tmpf5224ffh                        0x000055a73c59a62d <unavailable> + 5677
8    libc.so.6                          0x00002b5a22b58460 __libc_start_main + 245
9    tmpf5224ffh                        0x000055a73c59a339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max_so_far = numbers[0]
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 131 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 60 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ae889c51c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae889948561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae889948286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae88994813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae889947bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ae889747e83 <unavailable> + 188035
6    tmpyix3dkrm                        0x000055db61fb1444 <unavailable> + 9284
7    tmpyix3dkrm                        0x000055db61fb04eb <unavailable> + 5355
8    libc.so.6                          0x00002ae889e3d460 __libc_start_main + 245
9    tmpyix3dkrm                        0x000055db61fb0209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    guard n > 2 else { return result }
    for i in 3...n {
        result.append(i % 2 == 0 ? 1 + i / 2 : result[i - 1] + result[i - 2] + result[i + 1])
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_9_rolling_max, completion 128 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b8a9df2fc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b8a9dc26561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b8a9dc26286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b8a9dc2613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b8a9dc25bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b8a9da25e83 <unavailable> + 188035
6    tmpfjtnts9a                        0x000055f58ecdec9b <unavailable> + 7323
7    tmpfjtnts9a                        0x000055f58ecde75d <unavailable> + 5981
8    libc.so.6                          0x00002b8a9e11b460 __libc_start_main + 245
9    tmpfjtnts9a                        0x000055f58ecde469 <unavailable> + 5225

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max_so_far = numbers[0]
    result.append(max_so_far)
    for number in numbers[1..<numbers.count] {
        max_so_far = max(max_so_far, number)
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_9_rolling_max, completion 36 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ae8d202ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae8d1d25561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae8d1d25286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae8d1d2513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae8d1d24bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ae8d1b24e83 <unavailable> + 188035
6    tmpwrcrc0v8                        0x000055d19e210a5f <unavailable> + 6751
7    tmpwrcrc0v8                        0x000055d19e21052d <unavailable> + 5421
8    libc.so.6                          0x00002ae8d221a460 __libc_start_main + 245
9    tmpwrcrc0v8                        0x000055d19e210239 <unavailable> + 4665

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    for number in numbers {
        if number > max {
            max = number
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_119_match_parens, completion 168 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b7e86023c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7e85d1a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7e85d1a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7e85d1a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7e85d19bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b7e85b19fc3 <unavailable> + 188355
6    tmpmuf_byst                        0x0000556879bd2a17 <unavailable> + 10775
7    tmpmuf_byst                        0x0000556879bd1735 <unavailable> + 5941
8    libc.so.6                          0x00002b7e8620f460 __libc_start_main + 245
9    tmpmuf_byst                        0x0000556879bd13d9 <unavailable> + 5081

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var str = ""
    while lst.count > 0 {
        if lst[0].count > lst[1].count {
            str += lst[0]
            lst.remove(at: 0)
        } else {
            str += lst[1]
            lst.remove(at: 1)
        }
    }
    var count = 0
    for c in str {
        if c == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            return "No"
        }
    }
    return count == 0 ? "Yes" : "No"
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_126_is_sorted, completion 154 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 79 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ad2048b0c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ad2045a7561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ad2045a7286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ad2045a713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ad2045a6bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ad2043a6e83 <unavailable> + 188035
6    tmphoo0nmhz                        0x000056384653d419 <unavailable> + 9241
7    tmphoo0nmhz                        0x000056384653c4eb <unavailable> + 5355
8    libc.so.6                          0x00002ad204a9c460 __libc_start_main + 245
9    tmphoo0nmhz                        0x000056384653c209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_130_tri, completion 6 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ad2048b0c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ad2045a7561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ad2045a7286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ad2045a713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ad2045a6bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ad2043a6e83 <unavailable> + 188035
6    tmphoo0nmhz                        0x000056384653d419 <unavailable> + 9241
7    tmphoo0nmhz                        0x000056384653c4eb <unavailable> + 5355
8    libc.so.6                          0x00002ad204a9c460 __libc_start_main + 245
9    tmphoo0nmhz                        0x000056384653c209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 132 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 183 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b864c653c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b864c34a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b864c34a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b864c34a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b864c349bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b864c149e83 <unavailable> + 188035
6    tmpimc4yzz7                        0x00005624a2b35a5f <unavailable> + 6751
7    tmpimc4yzz7                        0x00005624a2b3552d <unavailable> + 5421
8    libc.so.6                          0x00002b864c83f460 __libc_start_main + 245
9    tmpimc4yzz7                        0x00005624a2b35239 <unavailable> + 4665

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    for number in numbers {
        max = max > number ? max : number
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 155 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 99 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ae8d202ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae8d1d25561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae8d1d25286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae8d1d2513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae8d1d24bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ae8d1b24e83 <unavailable> + 188035
6    tmpwrcrc0v8                        0x000055d19e210a5f <unavailable> + 6751
7    tmpwrcrc0v8                        0x000055d19e21052d <unavailable> + 5421
8    libc.so.6                          0x00002ae8d221a460 __libc_start_main + 245
9    tmpwrcrc0v8                        0x000055d19e210239 <unavailable> + 4665

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    for number in numbers {
        if number > max {
            max = number
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 3 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_120_maximum, completion 169 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ac69d661c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ac69d358561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ac69d358286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ac69d35813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ac69d357bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ac69d157e83 <unavailable> + 188035
6    tmp9qm8el6e                        0x0000555b64a3290f <unavailable> + 10511
7    tmp9qm8el6e                        0x0000555b64a324b6 <unavailable> + 9398
8    libc.so.6                          0x00002ac69d84d460 __libc_start_main + 245
9    tmp9qm8el6e                        0x0000555b64a31429 <unavailable> + 5161

*/
/* stdout = 

*/


/// Given an array arr of integers and a positive integer k, return a sorted array 
/// of length k with the maximum k numbers in arr.
/// Example 1:
/// >>> maximum(arr: [-3, -4, 5], k: 3)
/// [-4, -3, 5]
/// Example 2:
/// >>> maximum(arr: [4, -4, 4], k: 2)
/// [4, 4]
/// Example 3:
/// >>> maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1)
/// [2]
/// Note:
/// 1. The length of the array will be in the range of [1, 1000].
/// 2. The elements in the array will be in the range of [-1000, 1000].
/// 3. 0 <= k <= len(arr)
func maximum(arr: [Int], k: Int) -> [Int] {
    guard arr.count >= k else { return arr }
    var result = [Int]()
    for i in 0..<k {
        result.append(arr[i])
    }
    result.sort()
    for i in k..<arr.count {
        if arr[i] > result[0] {
            result[0] = arr[i]
            result.sort()
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(maximum(arr: [-3, -4, 5], k: 3) == [-4, -3, 5])
assert(maximum(arr: [4, -4, 4], k: 2) == [4, 4])
assert(maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1) == [2])
assert(maximum(arr: [123, -123, 20, 0, 1, 2, -3], k: 3) == [2, 20, 123])
assert(maximum(arr: [-123, 20, 0, 1, 2, -3], k: 4) == [0, 1, 2, 20])
assert(maximum(arr: [5, 15, 0, 3, -13, -8, 0], k: 7) == [-13, -8, 0, 0, 3, 5, 15])
assert(maximum(arr: [-1, 0, 2, 5, 3, -10], k: 2) == [3, 5])
assert(maximum(arr: [1, 0, 5, -7], k: 1) == [5])
assert(maximum(arr: [4, -4], k: 2) == [-4, 4])
assert(maximum(arr: [-10, 10], k: 2) == [-10, 10])
assert(maximum(arr: [1, 2, 3, -23, 243, -400, 0], k: 0) == [] as [Int])



// ----------- problem HumanEval_9_rolling_max, completion 124 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b887adb3c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b887aaaa561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b887aaaa286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b887aaaa13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b887aaa9bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b887a8a9e83 <unavailable> + 188035
6    tmpbndktfr7                        0x000055f1a4e95b58 <unavailable> + 7000
7    tmpbndktfr7                        0x000055f1a4e9562d <unavailable> + 5677
8    libc.so.6                          0x00002b887af9f460 __libc_start_main + 245
9    tmpbndktfr7                        0x000055f1a4e95339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_130_tri, completion 48 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002aac01482c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aac01179561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aac01179286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aac0117913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aac01178bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002aac00f78e83 <unavailable> + 188035
6    tmp0oi1klnf                        0x0000563f4e17b843 <unavailable> + 10307
7    tmp0oi1klnf                        0x0000563f4e17a6db <unavailable> + 5851
8    libc.so.6                          0x00002aac0166e460 __libc_start_main + 245
9    tmp0oi1klnf                        0x0000563f4e17a3f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    if n < 3 {
        return Array(result[0...n])
    }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_130_tri, completion 57 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002af196b6ac80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af196861561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af196861286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af19686113c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af196860bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002af196660e83 <unavailable> + 188035
6    tmpux9k7arg                        0x000055aac0a222de <unavailable> + 8926
7    tmpux9k7arg                        0x000055aac0a213fb <unavailable> + 5115
8    libc.so.6                          0x00002af196d56460 __libc_start_main + 245
9    tmpux9k7arg                        0x000055aac0a21119 <unavailable> + 4377

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    if n == 0 {
        return [1]
    }
    if n == 1 {
        return [1, 3]
    }
    if n == 2 {
        return [1, 3, 2]
    }
    var result = [1, 3, 2]
    var i = 3
    while i <= n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
        i += 1
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 76 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 137 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 43 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b887adb3c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b887aaaa561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b887aaaa286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b887aaaa13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b887aaa9bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b887a8a9e83 <unavailable> + 188035
6    tmpbndktfr7                        0x000055f1a4e95b58 <unavailable> + 7000
7    tmpbndktfr7                        0x000055f1a4e9562d <unavailable> + 5677
8    libc.so.6                          0x00002b887af9f460 __libc_start_main + 245
9    tmpbndktfr7                        0x000055f1a4e95339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 96 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b7af8891c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7af8588561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7af8588286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7af858813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7af8587bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b7af8387e83 <unavailable> + 188035
6    tmp0a55xqsr                        0x000055984cb16fc2 <unavailable> + 8130
7    tmp0a55xqsr                        0x000055984cb16954 <unavailable> + 6484
8    libc.so.6                          0x00002b7af8a7d460 __libc_start_main + 245
9    tmp0a55xqsr                        0x000055984cb16129 <unavailable> + 4393

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var prev = lst[0]
    for num in lst {
        if num < prev {
            return false
        }
        prev = num
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 12 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b65b1890c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b65b1587561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b65b1587286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b65b158713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b65b1586bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b65b1386e83 <unavailable> + 188035
6    tmpk57ye95c                        0x000055c2c4b6284f <unavailable> + 10319
7    tmpk57ye95c                        0x000055c2c4b616db <unavailable> + 5851
8    libc.so.6                          0x00002b65b1a7c460 __libc_start_main + 245
9    tmpk57ye95c                        0x000055c2c4b613f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    if n <= 2 {
        return Array(result[0...n])
    }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_9_rolling_max, completion 167 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b887adb3c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b887aaaa561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b887aaaa286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b887aaaa13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b887aaa9bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b887a8a9e83 <unavailable> + 188035
6    tmpbndktfr7                        0x000055f1a4e95b58 <unavailable> + 7000
7    tmpbndktfr7                        0x000055f1a4e9562d <unavailable> + 5677
8    libc.so.6                          0x00002b887af9f460 __libc_start_main + 245
9    tmpbndktfr7                        0x000055f1a4e95339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_130_tri, completion 41 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ae39777cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae397473561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae397473286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae39747313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae397472bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ae397272e83 <unavailable> + 188035
6    tmpecvuq2am                        0x00005579eec6c419 <unavailable> + 9241
7    tmpecvuq2am                        0x00005579eec6b4eb <unavailable> + 5355
8    libc.so.6                          0x00002ae397968460 __libc_start_main + 245
9    tmpecvuq2am                        0x00005579eec6b209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result: [Int] = [1, 3, 2]
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 29 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 131 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1a31d56c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1a31a4d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1a31a4d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b1a31a4d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1a31a4cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b1a3184ce83 <unavailable> + 188035
6    tmpajcjyx79                        0x00005557113abae8 <unavailable> + 6888
7    tmpajcjyx79                        0x00005557113ab5ad <unavailable> + 5549
8    libc.so.6                          0x00002b1a31f42460 __libc_start_main + 245
9    tmpajcjyx79                        0x00005557113ab2b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    result.append(max)
    for i in 1..<numbers.count {
        if numbers[i] > max {
            max = numbers[i]
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 176 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_109_move_one_ball, completion 5 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b246617fc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b2465e76561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b2465e76286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b2465e7613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b2465e75bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b2465c75e83 <unavailable> + 188035
6    tmpgrxnexzn                        0x000055b619227efe <unavailable> + 7934
7    tmpgrxnexzn                        0x000055b61922802b <unavailable> + 8235
8    tmpgrxnexzn                        0x000055b61922802b <unavailable> + 8235
9    tmpgrxnexzn                        0x000055b619227585 <unavailable> + 5509
10   libc.so.6                          0x00002b246636b460 __libc_start_main + 245
11   tmpgrxnexzn                        0x000055b619227259 <unavailable> + 4697

*/
/* stdout = 

*/


/// We have an array 'arr' of N integers arr[1], arr[2], ..., arr[N].The
/// numbers in the array will be randomly ordered. Your task is to determine if
/// it is possible to get an array sorted in non-decreasing order by performing 
/// the following operation on the given array:
/// You are allowed to perform right shift operation any number of times.
/// One right shift operation means shifting all elements of the array by one
/// position in the right direction. The last element of the array will be moved to
/// the starting position in the array i.e. 0th index. 
/// If it is possible to obtain the sorted array by performing the above operation
/// then return true else return false.
/// If the given array is empty then return true.
/// Note: The given array is guaranteed to have unique elements.
/// For Example:
/// >>> move_one_ball(arr: [3, 4, 5, 1, 2])
/// true
/// Explanation: By performin 2 right shift operations, non-decreasing order can
/// be achieved for the given array.
/// >>> move_one_ball(arr: [3, 5, 4, 1, 2])
/// false
/// Explanation:It is not possible to get non-decreasing order for the given
/// array by performing any number of right shift operations.
func move_one_ball(arr: [Int]) -> Bool {
    if arr.count == 0 {
        return true
    }
    var arr = arr
    var count = 0
    for i in 0..<arr.count {
        if arr[i] == i + 1 {
            count += 1
        }
    }
    if count == arr.count {
        return true
    }
    for i in 0..<arr.count {
        if arr[i] != i + 1 {
            if arr[i] == arr.count {
                arr.remove(at: i)
                arr.insert(arr[i - 1], at: 0)
            } else {
                arr.remove(at: i)
                arr.insert(arr[i], at: arr[i] - 1)
            }
            break
        }
    }
    return move_one_ball(arr: arr)
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(move_one_ball(arr: [3, 4, 5, 1, 2]) == true)
assert(move_one_ball(arr: [3, 5, 10, 1, 2]) == true)
assert(move_one_ball(arr: [4, 3, 1, 2]) == false)
assert(move_one_ball(arr: [3, 5, 4, 1, 2]) == false)
assert(move_one_ball(arr: [] as [Int]) == true)



// ----------- problem HumanEval_10_make_palindrome, completion 174 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002add129fcc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002add126f3561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002add126f3286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002add126f313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002add126f2bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002add124f2e83 <unavailable> + 188035
6    tmpgfs0k04j                        0x0000557da29640fc <unavailable> + 8444
7    tmpgfs0k04j                        0x0000557da29638b5 <unavailable> + 6325
8    libc.so.6                          0x00002add12be8460 __libc_start_main + 245
9    tmpgfs0k04j                        0x0000557da29635b9 <unavailable> + 5561

*/
/* stdout = 

*/


/// Find the shortest palindrome that begins with a supplied string.
/// Algorithm idea is simple:
/// - Find the longest postfix of supplied string that is a palindrome.
/// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
/// >>> make_palindrome(string: "")
/// ""
/// >>> make_palindrome(string: "cat")
/// "catac"
/// >>> make_palindrome(string: "cata")
/// "catac"
func make_palindrome(string: String) -> String {
    let s = Array(string)
    let n = s.count
    var lps = [Int](repeating: 0, count: n)
    var i = 1
    var len = 0
    while i < n {
        if s[i] == s[len] {
            len += 1
            lps[i] = len
            i += 1
        } else {
            if len != 0 {
                len = lps[len - 1]
            } else {
                lps[i] = 0
                i += 1
            }
        }
    }
    let prefix = String(s[0..<(n - lps[n - 1])].reversed())
    return string + prefix
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(make_palindrome(string: "") == "")
assert(make_palindrome(string: "x") == "x")
assert(make_palindrome(string: "xyz") == "xyzyx")
assert(make_palindrome(string: "xyx") == "xyx")
assert(make_palindrome(string: "jerry") == "jerryrrej")



// ----------- problem HumanEval_5_intersperse, completion 106 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b962273ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b9622435561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b9622435286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b962243513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b9622434bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b9622234e83 <unavailable> + 188035
6    tmpjej4daj1                        0x000055c431696858 <unavailable> + 6232
7    tmpjej4daj1                        0x000055c4316963d2 <unavailable> + 5074
8    libc.so.6                          0x00002b962292a460 __libc_start_main + 245
9    tmpjej4daj1                        0x000055c4316960d9 <unavailable> + 4313

*/
/* stdout = 

*/


/// Insert a number 'delimeter' between every two consecutive elements of input array `numbers'
/// >>> intersperse(numbers: [] as [Int], delimeter: 4)
/// [] as [Int]
/// >>> intersperse(numbers: [1, 2, 3], delimeter: 4)
/// [1, 4, 2, 4, 3]
func intersperse(numbers: [Int], delimeter: Int) -> [Int] {
    var result: [Int] = []
    var i = 0
    while i < numbers.count - 1 {
        result.append(numbers[i])
        result.append(delimeter)
        i += 1
    }
    result.append(numbers[i])
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(intersperse(numbers: [] as [Int], delimeter: 7) == [] as [Int])
assert(intersperse(numbers: [5, 6, 3, 2], delimeter: 8) == [5, 8, 6, 8, 3, 8, 2])
assert(intersperse(numbers: [2, 2, 2], delimeter: 2) == [2, 2, 2, 2, 2])



// ----------- problem HumanEval_126_is_sorted, completion 64 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 19 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002acdd8845c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002acdd853c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002acdd853c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002acdd853c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002acdd853bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002acdd833be83 <unavailable> + 188035
6    tmp0vt2toem                        0x0000557c8c9b9056 <unavailable> + 8278
7    tmp0vt2toem                        0x0000557c8c9b89d4 <unavailable> + 6612
8    libc.so.6                          0x00002acdd8a31460 __libc_start_main + 245
9    tmp0vt2toem                        0x0000557c8c9b81a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var previous = lst[0]
    for i in 1..<lst.count {
        if lst[i] < previous {
            sorted = false
        }
        previous = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 102 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 44 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 162 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ae889c51c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae889948561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae889948286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae88994813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae889947bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ae889747e83 <unavailable> + 188035
6    tmpyix3dkrm                        0x000055db61fb1444 <unavailable> + 9284
7    tmpyix3dkrm                        0x000055db61fb04eb <unavailable> + 5355
8    libc.so.6                          0x00002ae889e3d460 __libc_start_main + 245
9    tmpyix3dkrm                        0x000055db61fb0209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    guard n > 2 else { return result }
    for i in 3...n {
        result.append(i % 2 == 0 ? 1 + i / 2 : result[i - 1] + result[i - 2] + result[i + 1])
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_9_rolling_max, completion 62 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ae8d202ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae8d1d25561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae8d1d25286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae8d1d2513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae8d1d24bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ae8d1b24e83 <unavailable> + 188035
6    tmpwrcrc0v8                        0x000055d19e210a5f <unavailable> + 6751
7    tmpwrcrc0v8                        0x000055d19e21052d <unavailable> + 5421
8    libc.so.6                          0x00002ae8d221a460 __libc_start_main + 245
9    tmpwrcrc0v8                        0x000055d19e210239 <unavailable> + 4665

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    for number in numbers {
        if number > max {
            max = number
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_130_tri, completion 82 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b4402e35c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b4402b2c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b4402b2c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b4402b2c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b4402b2bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b440292be83 <unavailable> + 188035
6    tmpbqjdaz6i                        0x00005566c08d7454 <unavailable> + 9300
7    tmpbqjdaz6i                        0x00005566c08d64eb <unavailable> + 5355
8    libc.so.6                          0x00002b4403021460 __libc_start_main + 245
9    tmpbqjdaz6i                        0x00005566c08d6209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    guard n > 2 else { return result }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 192 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b4f8b798c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b4f8b48f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b4f8b48f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b4f8b48f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b4f8b48ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b4f8b28ee83 <unavailable> + 188035
6    tmpvnxjb_eu                        0x0000564a1439405b <unavailable> + 8283
7    tmpvnxjb_eu                        0x0000564a143939d4 <unavailable> + 6612
8    libc.so.6                          0x00002b4f8b984460 __libc_start_main + 245
9    tmpvnxjb_eu                        0x0000564a143931a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            return false
        }
        prev = lst[i]
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 34 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1a31d56c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1a31a4d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1a31a4d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b1a31a4d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1a31a4cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b1a3184ce83 <unavailable> + 188035
6    tmpajcjyx79                        0x00005557113abae8 <unavailable> + 6888
7    tmpajcjyx79                        0x00005557113ab5ad <unavailable> + 5549
8    libc.so.6                          0x00002b1a31f42460 __libc_start_main + 245
9    tmpajcjyx79                        0x00005557113ab2b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    result.append(max)
    for i in 1..<numbers.count {
        if numbers[i] > max {
            max = numbers[i]
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_9_rolling_max, completion 163 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b5a2296cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b5a22663561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b5a22663286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b5a2266313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b5a22662bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b5a22462e83 <unavailable> + 188035
6    tmpf5224ffh                        0x000055a73c59ab68 <unavailable> + 7016
7    tmpf5224ffh                        0x000055a73c59a62d <unavailable> + 5677
8    libc.so.6                          0x00002b5a22b58460 __libc_start_main + 245
9    tmpf5224ffh                        0x000055a73c59a339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max_so_far = numbers[0]
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 106 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_149_sorted_list_sum, completion 161 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b96d389dc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b96d3594561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b96d3594286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b96d359413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b96d3593bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b96d3393fc3 <unavailable> + 188355
6    tmpl3tka3d2                        0x000055a3bc86e82c <unavailable> + 10284
7    tmpl3tka3d2                        0x000055a3bc86d84d <unavailable> + 6221
8    libc.so.6                          0x00002b96d3a89460 __libc_start_main + 245
9    tmpl3tka3d2                        0x000055a3bc86d4c9 <unavailable> + 5321

*/
/* stdout = 

*/


/// Write a function that accepts an array of strings as a parameter,
/// deletes the strings that have odd lengths from it,
/// and returns the resulted array with a sorted order,
/// The array is always an array of strings and never an array of numbers,
/// and it may contain duplicates.
/// The order of the array should be ascending by length of each word, and you
/// should return the array sorted by that rule.
/// If two words have the same length, sort the array alphabetically.
/// The function should return an array of strings in sorted order.
/// You may assume that all words will have the same length.
/// For example:
/// >>> sorted_list_sum(lst: ["aa", "a", "aaa"])
/// ["aa"]
/// >>> sorted_list_sum(lst: ["ab", "a", "aaa", "cd"])
/// ["ab", "cd"]
func sorted_list_sum(lst: [String]) -> [String] {
    var new_lst = lst
    for i in 0..<new_lst.count {
        if new_lst[i].count % 2 != 0 {
            new_lst.remove(at: i)
        }
    }
    new_lst.sort()
    return new_lst
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sorted_list_sum(lst: ["aa", "a", "aaa"]) == ["aa"])
assert(sorted_list_sum(lst: ["school", "AI", "asdf", "b"]) == ["AI", "asdf", "school"])
assert(sorted_list_sum(lst: ["d", "b", "c", "a"]) == [] as [String])
assert(sorted_list_sum(lst: ["d", "dcba", "abcd", "a"]) == ["abcd", "dcba"])
assert(sorted_list_sum(lst: ["AI", "ai", "au"]) == ["AI", "ai", "au"])
assert(sorted_list_sum(lst: ["a", "b", "b", "c", "c", "a"]) == [] as [String])
assert(sorted_list_sum(lst: ["aaaa", "bbbb", "dd", "cc"]) == ["cc", "dd", "aaaa", "bbbb"])



// ----------- problem HumanEval_130_tri, completion 27 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b29777a2c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b2977499561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b2977499286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b297749913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b2977498bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b2977298e83 <unavailable> + 188035
6    tmp7m7i3lm2                        0x000055e293b1d66a <unavailable> + 9834
7    tmp7m7i3lm2                        0x000055e293b1c6db <unavailable> + 5851
8    libc.so.6                          0x00002b297798e460 __libc_start_main + 245
9    tmp7m7i3lm2                        0x000055e293b1c3f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    guard n > 2 else { return Array(result[0...n]) }
    for i in 3...n {
        result.append(i % 2 == 0 ? 1 + i / 2 : result[i - 1] + result[i - 2] + result[i + 1])
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_130_tri, completion 188 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b4402e35c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b4402b2c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b4402b2c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b4402b2c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b4402b2bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b440292be83 <unavailable> + 188035
6    tmpbqjdaz6i                        0x00005566c08d7454 <unavailable> + 9300
7    tmpbqjdaz6i                        0x00005566c08d64eb <unavailable> + 5355
8    libc.so.6                          0x00002b4403021460 __libc_start_main + 245
9    tmpbqjdaz6i                        0x00005566c08d6209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    guard n > 2 else { return result }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_9_rolling_max, completion 137 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1a31d56c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1a31a4d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1a31a4d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b1a31a4d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1a31a4cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b1a3184ce83 <unavailable> + 188035
6    tmpajcjyx79                        0x00005557113abae8 <unavailable> + 6888
7    tmpajcjyx79                        0x00005557113ab5ad <unavailable> + 5549
8    libc.so.6                          0x00002b1a31f42460 __libc_start_main + 245
9    tmpajcjyx79                        0x00005557113ab2b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    result.append(max)
    for i in 1..<numbers.count {
        if numbers[i] > max {
            max = numbers[i]
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 164 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 163 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 60 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 55 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1a31d56c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1a31a4d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1a31a4d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b1a31a4d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1a31a4cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b1a3184ce83 <unavailable> + 188035
6    tmpajcjyx79                        0x00005557113abae8 <unavailable> + 6888
7    tmpajcjyx79                        0x00005557113ab5ad <unavailable> + 5549
8    libc.so.6                          0x00002b1a31f42460 __libc_start_main + 245
9    tmpajcjyx79                        0x00005557113ab2b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    result.append(max)
    for i in 1..<numbers.count {
        if numbers[i] > max {
            max = numbers[i]
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_9_rolling_max, completion 96 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ba2849a6c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba28469d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba28469d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba28469d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba28469cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ba28449ce83 <unavailable> + 188035
6    tmp1i3yyrcl                        0x000055c63c7a5af8 <unavailable> + 6904
7    tmp1i3yyrcl                        0x000055c63c7a55bd <unavailable> + 5565
8    libc.so.6                          0x00002ba284b92460 __libc_start_main + 245
9    tmp1i3yyrcl                        0x000055c63c7a52c9 <unavailable> + 4809

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    for number in numbers {
        max = Swift.max(max, number)
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 184 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 51 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ae889c51c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae889948561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae889948286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae88994813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae889947bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ae889747e83 <unavailable> + 188035
6    tmpyix3dkrm                        0x000055db61fb1444 <unavailable> + 9284
7    tmpyix3dkrm                        0x000055db61fb04eb <unavailable> + 5355
8    libc.so.6                          0x00002ae889e3d460 __libc_start_main + 245
9    tmpyix3dkrm                        0x000055db61fb0209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    guard n > 2 else { return result }
    for i in 3...n {
        result.append(i % 2 == 0 ? 1 + i / 2 : result[i - 1] + result[i - 2] + result[i + 1])
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 166 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_37_sort_even, completion 140 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b2adc035c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b2adbd2c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b2adbd2c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b2adbd2c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b2adbd2bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b2adbb2be83 <unavailable> + 188035
6    tmp7oxceufx                        0x000055966f0d01f1 <unavailable> + 8689
7    tmp7oxceufx                        0x000055966f0cf904 <unavailable> + 6404
8    libc.so.6                          0x00002b2adc221460 __libc_start_main + 245
9    tmp7oxceufx                        0x000055966f0cf5e9 <unavailable> + 5609

*/
/* stdout = 

*/


/// This function takes an array l and returns an array l' such that
/// l' is identical to l in the odd indicies, while its values at the even indicies are equal
/// to the values of the even indicies of l, but sorted.
/// >>> sort_even(l: [1, 2, 3])
/// [1, 2, 3]
/// >>> sort_even(l: [5, 6, 3, 4])
/// [3, 6, 5, 4]
func sort_even(l: [Int]) -> [Int] {
    var l_even = l.enumerated().filter { $0.offset % 2 == 0 }.map { $0.element }
    l_even.sort()
    var l_odd = l.enumerated().filter { $0.offset % 2 == 1 }.map { $0.element }
    var l_new = [Int]()
    for i in 0..<l_even.count {
        l_new.append(l_even[i])
        l_new.append(l_odd[i])
    }
    return l_new
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_even(l: [1, 2, 3]) == [1, 2, 3])
assert(sort_even(l: [5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == [-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123])
assert(sort_even(l: [5, 8, -12, 4, 23, 2, 3, 11, 12, -10]) == [-12, 8, 3, 4, 5, 2, 12, 11, 23, -10])



// ----------- problem HumanEval_9_rolling_max, completion 168 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b5a2296cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b5a22663561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b5a22663286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b5a2266313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b5a22662bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b5a22462e83 <unavailable> + 188035
6    tmpf5224ffh                        0x000055a73c59ab68 <unavailable> + 7016
7    tmpf5224ffh                        0x000055a73c59a62d <unavailable> + 5677
8    libc.so.6                          0x00002b5a22b58460 __libc_start_main + 245
9    tmpf5224ffh                        0x000055a73c59a339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max_so_far = numbers[0]
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 151 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_37_sort_even, completion 13 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b3ed8fa6c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3ed8c9d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3ed8c9d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3ed8c9d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3ed8c9cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b3ed8a9ce83 <unavailable> + 188035
6    tmphckdnyhc                        0x000055f2a6285071 <unavailable> + 8305
7    tmphckdnyhc                        0x000055f2a62847b4 <unavailable> + 6068
8    libc.so.6                          0x00002b3ed9192460 __libc_start_main + 245
9    tmphckdnyhc                        0x000055f2a6284499 <unavailable> + 5273

*/
/* stdout = 

*/


/// This function takes an array l and returns an array l' such that
/// l' is identical to l in the odd indicies, while its values at the even indicies are equal
/// to the values of the even indicies of l, but sorted.
/// >>> sort_even(l: [1, 2, 3])
/// [1, 2, 3]
/// >>> sort_even(l: [5, 6, 3, 4])
/// [3, 6, 5, 4]
func sort_even(l: [Int]) -> [Int] {
    var l_even = [Int]()
    var l_odd = [Int]()
    var l_sorted = [Int]()
    for (index, value) in l.enumerated() {
        if index % 2 == 0 {
            l_even.append(value)
        } else {
            l_odd.append(value)
        }
    }
    l_even.sort()
    for (index, value) in l_even.enumerated() {
        l_sorted.append(value)
        l_sorted.append(l_odd[index])
    }
    return l_sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_even(l: [1, 2, 3]) == [1, 2, 3])
assert(sort_even(l: [5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == [-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123])
assert(sort_even(l: [5, 8, -12, 4, 23, 2, 3, 11, 12, -10]) == [-12, 8, 3, 4, 5, 2, 12, 11, 23, -10])



// ----------- problem HumanEval_9_rolling_max, completion 1 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1385adbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b13857d2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b13857d2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b13857d213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b13857d1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b13855d1e83 <unavailable> + 188035
6    tmpburnh_0r                        0x000055614ce96ad8 <unavailable> + 6872
7    tmpburnh_0r                        0x000055614ce965ad <unavailable> + 5549
8    libc.so.6                          0x00002b1385cc7460 __libc_start_main + 245
9    tmpburnh_0r                        0x000055614ce962b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        if numbers[i] > max_so_far {
            max_so_far = numbers[i]
        }
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 150 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 112 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ba635048c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba634d3f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba634d3f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba634d3f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba634d3ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ba634b3ee83 <unavailable> + 188035
6    tmpfn6bbfp_                        0x000055b32db7d428 <unavailable> + 9256
7    tmpfn6bbfp_                        0x000055b32db7c4eb <unavailable> + 5355
8    libc.so.6                          0x00002ba635234460 __libc_start_main + 245
9    tmpfn6bbfp_                        0x000055b32db7c209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    guard n > 0 else { return [] }
    var result = [1, 3, 2]
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 82 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ad7fc3f9c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ad7fc0f0561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ad7fc0f0286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ad7fc0f013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ad7fc0efbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ad7fbeefe83 <unavailable> + 188035
6    tmprmp9durr                        0x000055e024a5205b <unavailable> + 8283
7    tmprmp9durr                        0x000055e024a519d4 <unavailable> + 6612
8    libc.so.6                          0x00002ad7fc5e5460 __libc_start_main + 245
9    tmprmp9durr                        0x000055e024a511a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    var current = lst[0]
    for i in 1..<lst.count {
        if lst[i] < current {
            return false
        }
        current = lst[i]
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 165 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1a31d56c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1a31a4d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1a31a4d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b1a31a4d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1a31a4cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b1a3184ce83 <unavailable> + 188035
6    tmpajcjyx79                        0x00005557113abae8 <unavailable> + 6888
7    tmpajcjyx79                        0x00005557113ab5ad <unavailable> + 5549
8    libc.so.6                          0x00002b1a31f42460 __libc_start_main + 245
9    tmpajcjyx79                        0x00005557113ab2b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    result.append(max)
    for i in 1..<numbers.count {
        if numbers[i] > max {
            max = numbers[i]
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_9_rolling_max, completion 161 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1a31d56c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1a31a4d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1a31a4d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b1a31a4d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1a31a4cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b1a3184ce83 <unavailable> + 188035
6    tmpajcjyx79                        0x00005557113abae8 <unavailable> + 6888
7    tmpajcjyx79                        0x00005557113ab5ad <unavailable> + 5549
8    libc.so.6                          0x00002b1a31f42460 __libc_start_main + 245
9    tmpajcjyx79                        0x00005557113ab2b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    result.append(max)
    for i in 1..<numbers.count {
        if numbers[i] > max {
            max = numbers[i]
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_10_make_palindrome, completion 45 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b5a19920c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b5a19617561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b5a19617286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b5a1961713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b5a19616bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b5a19416e83 <unavailable> + 188035
6    tmpm4hy444c                        0x00005586f5a2243f <unavailable> + 9279
7    tmpm4hy444c                        0x00005586f5a21965 <unavailable> + 6501
8    libc.so.6                          0x00002b5a19b0c460 __libc_start_main + 245
9    tmpm4hy444c                        0x00005586f5a21669 <unavailable> + 5737

*/
/* stdout = 

*/


/// Find the shortest palindrome that begins with a supplied string.
/// Algorithm idea is simple:
/// - Find the longest postfix of supplied string that is a palindrome.
/// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
/// >>> make_palindrome(string: "")
/// ""
/// >>> make_palindrome(string: "cat")
/// "catac"
/// >>> make_palindrome(string: "cata")
/// "catac"
func make_palindrome(string: String) -> String {
    let string = Array(string)
    let length = string.count
    var longest_palindrome_suffix = [Int](repeating: 0, count: length)
    var i = 1
    while i < length {
        if string[i] == string[longest_palindrome_suffix[i - 1]] {
            longest_palindrome_suffix[i] = longest_palindrome_suffix[i - 1] + 1
        } else {
            var j = longest_palindrome_suffix[i - 1]
            while j > 0 && string[i] != string[j] {
                j = longest_palindrome_suffix[j - 1]
            }
            if string[i] == string[j] {
                longest_palindrome_suffix[i] = j + 1
            }
        }
        i += 1
    }
    let prefix = string[0..<(length - longest_palindrome_suffix[length - 1])]
    return String(string + prefix.reversed())
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(make_palindrome(string: "") == "")
assert(make_palindrome(string: "x") == "x")
assert(make_palindrome(string: "xyz") == "xyzyx")
assert(make_palindrome(string: "xyx") == "xyx")
assert(make_palindrome(string: "jerry") == "jerryrrej")



// ----------- problem HumanEval_126_is_sorted, completion 41 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 52 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b4f8b798c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b4f8b48f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b4f8b48f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b4f8b48f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b4f8b48ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b4f8b28ee83 <unavailable> + 188035
6    tmpvnxjb_eu                        0x0000564a1439405b <unavailable> + 8283
7    tmpvnxjb_eu                        0x0000564a143939d4 <unavailable> + 6612
8    libc.so.6                          0x00002b4f8b984460 __libc_start_main + 245
9    tmpvnxjb_eu                        0x0000564a143931a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            return false
        }
        prev = lst[i]
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 47 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1edba5bc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1edb752561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1edb752286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b1edb75213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1edb751bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b1edb551e83 <unavailable> + 188035
6    tmp2svewl4y                        0x000055d5b903a221 <unavailable> + 8737
7    tmp2svewl4y                        0x000055d5b90393fb <unavailable> + 5115
8    libc.so.6                          0x00002b1edbc47460 __libc_start_main + 245
9    tmp2svewl4y                        0x000055d5b9039119 <unavailable> + 4377

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    guard n > 0 else { return [] }
    var result = [1, 3, 2]
    var i = 3
    while i <= n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
        i += 1
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_120_maximum, completion 150 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ba50e44fc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba50e146561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba50e146286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba50e14613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba50e145bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ba50df45e83 <unavailable> + 188035
6    tmp9im5po73                        0x0000560b386938f2 <unavailable> + 10482
7    tmp9im5po73                        0x0000560b386934b6 <unavailable> + 9398
8    libc.so.6                          0x00002ba50e63b460 __libc_start_main + 245
9    tmp9im5po73                        0x0000560b38692429 <unavailable> + 5161

*/
/* stdout = 

*/


/// Given an array arr of integers and a positive integer k, return a sorted array 
/// of length k with the maximum k numbers in arr.
/// Example 1:
/// >>> maximum(arr: [-3, -4, 5], k: 3)
/// [-4, -3, 5]
/// Example 2:
/// >>> maximum(arr: [4, -4, 4], k: 2)
/// [4, 4]
/// Example 3:
/// >>> maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1)
/// [2]
/// Note:
/// 1. The length of the array will be in the range of [1, 1000].
/// 2. The elements in the array will be in the range of [-1000, 1000].
/// 3. 0 <= k <= len(arr)
func maximum(arr: [Int], k: Int) -> [Int] {
    var result = [Int]()
    for i in 0..<k {
        result.append(arr[i])
    }
    result.sort()
    for i in k..<arr.count {
        if arr[i] > result[0] {
            result[0] = arr[i]
            result.sort()
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(maximum(arr: [-3, -4, 5], k: 3) == [-4, -3, 5])
assert(maximum(arr: [4, -4, 4], k: 2) == [4, 4])
assert(maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1) == [2])
assert(maximum(arr: [123, -123, 20, 0, 1, 2, -3], k: 3) == [2, 20, 123])
assert(maximum(arr: [-123, 20, 0, 1, 2, -3], k: 4) == [0, 1, 2, 20])
assert(maximum(arr: [5, 15, 0, 3, -13, -8, 0], k: 7) == [-13, -8, 0, 0, 3, 5, 15])
assert(maximum(arr: [-1, 0, 2, 5, 3, -10], k: 2) == [3, 5])
assert(maximum(arr: [1, 0, 5, -7], k: 1) == [5])
assert(maximum(arr: [4, -4], k: 2) == [-4, 4])
assert(maximum(arr: [-10, 10], k: 2) == [-10, 10])
assert(maximum(arr: [1, 2, 3, -23, 243, -400, 0], k: 0) == [] as [Int])



// ----------- problem HumanEval_126_is_sorted, completion 107 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 42 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002aac01482c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aac01179561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aac01179286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aac0117913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aac01178bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002aac00f78e83 <unavailable> + 188035
6    tmp0oi1klnf                        0x0000563f4e17b843 <unavailable> + 10307
7    tmp0oi1klnf                        0x0000563f4e17a6db <unavailable> + 5851
8    libc.so.6                          0x00002aac0166e460 __libc_start_main + 245
9    tmp0oi1klnf                        0x0000563f4e17a3f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    if n < 3 {
        return Array(result[0...n])
    }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 110 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 111 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b369053cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3690233561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3690233286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b369023313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3690232bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b3690034e83 <unavailable> + 188035
6    tmp92mjqsb4                        0x000056428af87b68 <unavailable> + 7016
7    tmp92mjqsb4                        0x000056428af8762d <unavailable> + 5677
8    libc.so.6                          0x00002b3690728460 __libc_start_main + 245
9    tmp92mjqsb4                        0x000056428af87339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max_value = numbers[0]
    for i in 0..<numbers.count {
        max_value = max(max_value, numbers[i])
        result.append(max_value)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_9_rolling_max, completion 196 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ae8d202ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae8d1d25561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae8d1d25286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae8d1d2513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae8d1d24bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ae8d1b24e83 <unavailable> + 188035
6    tmpwrcrc0v8                        0x000055d19e210a5f <unavailable> + 6751
7    tmpwrcrc0v8                        0x000055d19e21052d <unavailable> + 5421
8    libc.so.6                          0x00002ae8d221a460 __libc_start_main + 245
9    tmpwrcrc0v8                        0x000055d19e210239 <unavailable> + 4665

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    for number in numbers {
        if number > max {
            max = number
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 75 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 197 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_149_sorted_list_sum, completion 92 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b96d389dc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b96d3594561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b96d3594286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b96d359413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b96d3593bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b96d3393fc3 <unavailable> + 188355
6    tmpl3tka3d2                        0x000055a3bc86e82c <unavailable> + 10284
7    tmpl3tka3d2                        0x000055a3bc86d84d <unavailable> + 6221
8    libc.so.6                          0x00002b96d3a89460 __libc_start_main + 245
9    tmpl3tka3d2                        0x000055a3bc86d4c9 <unavailable> + 5321

*/
/* stdout = 

*/


/// Write a function that accepts an array of strings as a parameter,
/// deletes the strings that have odd lengths from it,
/// and returns the resulted array with a sorted order,
/// The array is always an array of strings and never an array of numbers,
/// and it may contain duplicates.
/// The order of the array should be ascending by length of each word, and you
/// should return the array sorted by that rule.
/// If two words have the same length, sort the array alphabetically.
/// The function should return an array of strings in sorted order.
/// You may assume that all words will have the same length.
/// For example:
/// >>> sorted_list_sum(lst: ["aa", "a", "aaa"])
/// ["aa"]
/// >>> sorted_list_sum(lst: ["ab", "a", "aaa", "cd"])
/// ["ab", "cd"]
func sorted_list_sum(lst: [String]) -> [String] {
    var new_lst = lst
    for i in 0..<new_lst.count {
        if new_lst[i].count % 2 != 0 {
            new_lst.remove(at: i)
        }
    }
    new_lst.sort()
    return new_lst
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sorted_list_sum(lst: ["aa", "a", "aaa"]) == ["aa"])
assert(sorted_list_sum(lst: ["school", "AI", "asdf", "b"]) == ["AI", "asdf", "school"])
assert(sorted_list_sum(lst: ["d", "b", "c", "a"]) == [] as [String])
assert(sorted_list_sum(lst: ["d", "dcba", "abcd", "a"]) == ["abcd", "dcba"])
assert(sorted_list_sum(lst: ["AI", "ai", "au"]) == ["AI", "ai", "au"])
assert(sorted_list_sum(lst: ["a", "b", "b", "c", "c", "a"]) == [] as [String])
assert(sorted_list_sum(lst: ["aaaa", "bbbb", "dd", "cc"]) == ["cc", "dd", "aaaa", "bbbb"])



// ----------- problem HumanEval_126_is_sorted, completion 7 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 88 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1a31d56c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1a31a4d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1a31a4d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b1a31a4d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1a31a4cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b1a3184ce83 <unavailable> + 188035
6    tmpajcjyx79                        0x00005557113abae8 <unavailable> + 6888
7    tmpajcjyx79                        0x00005557113ab5ad <unavailable> + 5549
8    libc.so.6                          0x00002b1a31f42460 __libc_start_main + 245
9    tmpajcjyx79                        0x00005557113ab2b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    result.append(max)
    for i in 1..<numbers.count {
        if numbers[i] > max {
            max = numbers[i]
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_130_tri, completion 198 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b4402e35c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b4402b2c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b4402b2c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b4402b2c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b4402b2bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b440292be83 <unavailable> + 188035
6    tmpbqjdaz6i                        0x00005566c08d7454 <unavailable> + 9300
7    tmpbqjdaz6i                        0x00005566c08d64eb <unavailable> + 5355
8    libc.so.6                          0x00002b4403021460 __libc_start_main + 245
9    tmpbqjdaz6i                        0x00005566c08d6209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    guard n > 2 else { return result }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_9_rolling_max, completion 182 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ae8d202ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae8d1d25561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae8d1d25286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae8d1d2513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae8d1d24bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ae8d1b24e83 <unavailable> + 188035
6    tmpwrcrc0v8                        0x000055d19e210a5f <unavailable> + 6751
7    tmpwrcrc0v8                        0x000055d19e21052d <unavailable> + 5421
8    libc.so.6                          0x00002ae8d221a460 __libc_start_main + 245
9    tmpwrcrc0v8                        0x000055d19e210239 <unavailable> + 4665

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    for number in numbers {
        if number > max {
            max = number
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 179 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 166 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b5a2296cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b5a22663561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b5a22663286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b5a2266313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b5a22662bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b5a22462e83 <unavailable> + 188035
6    tmpf5224ffh                        0x000055a73c59ab68 <unavailable> + 7016
7    tmpf5224ffh                        0x000055a73c59a62d <unavailable> + 5677
8    libc.so.6                          0x00002b5a22b58460 __libc_start_main + 245
9    tmpf5224ffh                        0x000055a73c59a339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max_so_far = numbers[0]
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_37_sort_even, completion 67 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b2adc035c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b2adbd2c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b2adbd2c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b2adbd2c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b2adbd2bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b2adbb2be83 <unavailable> + 188035
6    tmp7oxceufx                        0x000055966f0d01f1 <unavailable> + 8689
7    tmp7oxceufx                        0x000055966f0cf904 <unavailable> + 6404
8    libc.so.6                          0x00002b2adc221460 __libc_start_main + 245
9    tmp7oxceufx                        0x000055966f0cf5e9 <unavailable> + 5609

*/
/* stdout = 

*/


/// This function takes an array l and returns an array l' such that
/// l' is identical to l in the odd indicies, while its values at the even indicies are equal
/// to the values of the even indicies of l, but sorted.
/// >>> sort_even(l: [1, 2, 3])
/// [1, 2, 3]
/// >>> sort_even(l: [5, 6, 3, 4])
/// [3, 6, 5, 4]
func sort_even(l: [Int]) -> [Int] {
    var l_even = l.enumerated().filter { $0.offset % 2 == 0 }.map { $0.element }
    l_even.sort()
    var l_odd = l.enumerated().filter { $0.offset % 2 == 1 }.map { $0.element }
    var l_new = [Int]()
    for i in 0..<l_even.count {
        l_new.append(l_even[i])
        l_new.append(l_odd[i])
    }
    return l_new
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_even(l: [1, 2, 3]) == [1, 2, 3])
assert(sort_even(l: [5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == [-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123])
assert(sort_even(l: [5, 8, -12, 4, 23, 2, 3, 11, 12, -10]) == [-12, 8, 3, 4, 5, 2, 12, 11, 23, -10])



// ----------- problem HumanEval_37_sort_even, completion 127 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b5d98b57c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b5d9884e561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b5d9884e286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b5d9884e13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b5d9884dbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b5d9864de83 <unavailable> + 188035
6    tmp9jybq8am                        0x000055a9d0507071 <unavailable> + 8305
7    tmp9jybq8am                        0x000055a9d05067b4 <unavailable> + 6068
8    libc.so.6                          0x00002b5d98d43460 __libc_start_main + 245
9    tmp9jybq8am                        0x000055a9d0506499 <unavailable> + 5273

*/
/* stdout = 

*/


/// This function takes an array l and returns an array l' such that
/// l' is identical to l in the odd indicies, while its values at the even indicies are equal
/// to the values of the even indicies of l, but sorted.
/// >>> sort_even(l: [1, 2, 3])
/// [1, 2, 3]
/// >>> sort_even(l: [5, 6, 3, 4])
/// [3, 6, 5, 4]
func sort_even(l: [Int]) -> [Int] {
    var l_even = [Int]()
    var l_odd = [Int]()
    for (index, value) in l.enumerated() {
        if index % 2 == 0 {
            l_even.append(value)
        } else {
            l_odd.append(value)
        }
    }
    l_even.sort()
    var l_new = [Int]()
    for (index, value) in l_even.enumerated() {
        l_new.append(value)
        l_new.append(l_odd[index])
    }
    return l_new
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_even(l: [1, 2, 3]) == [1, 2, 3])
assert(sort_even(l: [5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == [-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123])
assert(sort_even(l: [5, 8, -12, 4, 23, 2, 3, 11, 12, -10]) == [-12, 8, 3, 4, 5, 2, 12, 11, 23, -10])



// ----------- problem HumanEval_126_is_sorted, completion 124 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 147 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b4402e35c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b4402b2c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b4402b2c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b4402b2c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b4402b2bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b440292be83 <unavailable> + 188035
6    tmpbqjdaz6i                        0x00005566c08d7454 <unavailable> + 9300
7    tmpbqjdaz6i                        0x00005566c08d64eb <unavailable> + 5355
8    libc.so.6                          0x00002b4403021460 __libc_start_main + 245
9    tmpbqjdaz6i                        0x00005566c08d6209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    guard n > 2 else { return result }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_9_rolling_max, completion 5 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b4c40b07c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b4c407fe561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b4c407fe286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b4c407fe13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b4c407fdbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b4c405fde83 <unavailable> + 188035
6    tmpdf9p27m8                        0x000055eef40f0a5f <unavailable> + 6751
7    tmpdf9p27m8                        0x000055eef40f052d <unavailable> + 5421
8    libc.so.6                          0x00002b4c40cf3460 __libc_start_main + 245
9    tmpdf9p27m8                        0x000055eef40f0239 <unavailable> + 4665

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var current_max = numbers[0]
    for number in numbers {
        if number > current_max {
            current_max = number
        }
        result.append(current_max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 55 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b36f732bc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b36f7022561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b36f7022286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b36f702213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b36f7021bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b36f6e21e83 <unavailable> + 188035
6    tmpbhyastnx                        0x000055dd3b875fd6 <unavailable> + 8150
7    tmpbhyastnx                        0x000055dd3b875954 <unavailable> + 6484
8    libc.so.6                          0x00002b36f7517460 __libc_start_main + 245
9    tmpbhyastnx                        0x000055dd3b875129 <unavailable> + 4393

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for num in lst {
        if num < prev {
            sorted = false
        }
        prev = num
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_37_sort_even, completion 32 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b4632e78c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b4632b6f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b4632b6f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b4632b6f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b4632b6ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b463296ee83 <unavailable> + 188035
6    tmp47fcmsv8                        0x0000562ab3429c66 <unavailable> + 7270
7    tmp47fcmsv8                        0x0000562ab34295f4 <unavailable> + 5620
8    libc.so.6                          0x00002b4633064460 __libc_start_main + 245
9    tmp47fcmsv8                        0x0000562ab34292d9 <unavailable> + 4825

*/
/* stdout = 

*/


/// This function takes an array l and returns an array l' such that
/// l' is identical to l in the odd indicies, while its values at the even indicies are equal
/// to the values of the even indicies of l, but sorted.
/// >>> sort_even(l: [1, 2, 3])
/// [1, 2, 3]
/// >>> sort_even(l: [5, 6, 3, 4])
/// [3, 6, 5, 4]
func sort_even(l: [Int]) -> [Int] {
    var l_prime = l
    for i in stride(from: 0, to: l.count, by: 2) {
        l_prime[i] = l[i]
        l_prime[i+1] = l[i+1]
        if l[i] > l[i+1] {
            l_prime[i] = l[i+1]
            l_prime[i+1] = l[i]
        }
    }
    return l_prime
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_even(l: [1, 2, 3]) == [1, 2, 3])
assert(sort_even(l: [5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == [-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123])
assert(sort_even(l: [5, 8, -12, 4, 23, 2, 3, 11, 12, -10]) == [-12, 8, 3, 4, 5, 2, 12, 11, 23, -10])



// ----------- problem HumanEval_126_is_sorted, completion 160 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 159 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 72 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 192 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ae889c51c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae889948561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae889948286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae88994813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae889947bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ae889747e83 <unavailable> + 188035
6    tmpyix3dkrm                        0x000055db61fb1444 <unavailable> + 9284
7    tmpyix3dkrm                        0x000055db61fb04eb <unavailable> + 5355
8    libc.so.6                          0x00002ae889e3d460 __libc_start_main + 245
9    tmpyix3dkrm                        0x000055db61fb0209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    guard n > 2 else { return result }
    for i in 3...n {
        result.append(i % 2 == 0 ? 1 + i / 2 : result[i - 1] + result[i - 2] + result[i + 1])
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 183 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 57 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b5a2296cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b5a22663561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b5a22663286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b5a2266313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b5a22662bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b5a22462e83 <unavailable> + 188035
6    tmpf5224ffh                        0x000055a73c59ab68 <unavailable> + 7016
7    tmpf5224ffh                        0x000055a73c59a62d <unavailable> + 5677
8    libc.so.6                          0x00002b5a22b58460 __libc_start_main + 245
9    tmpf5224ffh                        0x000055a73c59a339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max_so_far = numbers[0]
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 38 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002aeb63431c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aeb63128561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aeb63128286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aeb6312813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aeb63127bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002aeb62f27e83 <unavailable> + 188035
6    tmpfg_mhb9h                        0x000055cbfebc0042 <unavailable> + 8258
7    tmpfg_mhb9h                        0x000055cbfebbf9d4 <unavailable> + 6612
8    libc.so.6                          0x00002aeb6361d460 __libc_start_main + 245
9    tmpfg_mhb9h                        0x000055cbfebbf1a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            return false
        }
        prev = lst[i]
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 93 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002aac01482c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aac01179561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aac01179286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aac0117913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aac01178bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002aac00f78e83 <unavailable> + 188035
6    tmp0oi1klnf                        0x0000563f4e17b843 <unavailable> + 10307
7    tmp0oi1klnf                        0x0000563f4e17a6db <unavailable> + 5851
8    libc.so.6                          0x00002aac0166e460 __libc_start_main + 245
9    tmp0oi1klnf                        0x0000563f4e17a3f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    if n < 3 {
        return Array(result[0...n])
    }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_9_rolling_max, completion 101 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b5a2296cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b5a22663561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b5a22663286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b5a2266313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b5a22662bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b5a22462e83 <unavailable> + 188035
6    tmpf5224ffh                        0x000055a73c59ab68 <unavailable> + 7016
7    tmpf5224ffh                        0x000055a73c59a62d <unavailable> + 5677
8    libc.so.6                          0x00002b5a22b58460 __libc_start_main + 245
9    tmpf5224ffh                        0x000055a73c59a339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max_so_far = numbers[0]
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 83 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b4f8b798c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b4f8b48f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b4f8b48f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b4f8b48f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b4f8b48ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b4f8b28ee83 <unavailable> + 188035
6    tmpvnxjb_eu                        0x0000564a1439405b <unavailable> + 8283
7    tmpvnxjb_eu                        0x0000564a143939d4 <unavailable> + 6612
8    libc.so.6                          0x00002b4f8b984460 __libc_start_main + 245
9    tmpvnxjb_eu                        0x0000564a143931a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            return false
        }
        prev = lst[i]
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 2 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002aeb63431c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aeb63128561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aeb63128286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aeb6312813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aeb63127bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002aeb62f27e83 <unavailable> + 188035
6    tmpfg_mhb9h                        0x000055cbfebc0042 <unavailable> + 8258
7    tmpfg_mhb9h                        0x000055cbfebbf9d4 <unavailable> + 6612
8    libc.so.6                          0x00002aeb6361d460 __libc_start_main + 245
9    tmpfg_mhb9h                        0x000055cbfebbf1a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            return false
        }
        prev = lst[i]
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 118 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1a31d56c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1a31a4d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1a31a4d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b1a31a4d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1a31a4cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b1a3184ce83 <unavailable> + 188035
6    tmpajcjyx79                        0x00005557113abae8 <unavailable> + 6888
7    tmpajcjyx79                        0x00005557113ab5ad <unavailable> + 5549
8    libc.so.6                          0x00002b1a31f42460 __libc_start_main + 245
9    tmpajcjyx79                        0x00005557113ab2b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    result.append(max)
    for i in 1..<numbers.count {
        if numbers[i] > max {
            max = numbers[i]
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_130_tri, completion 72 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ad2048b0c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ad2045a7561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ad2045a7286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ad2045a713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ad2045a6bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ad2043a6e83 <unavailable> + 188035
6    tmphoo0nmhz                        0x000056384653d419 <unavailable> + 9241
7    tmphoo0nmhz                        0x000056384653c4eb <unavailable> + 5355
8    libc.so.6                          0x00002ad204a9c460 __libc_start_main + 245
9    tmphoo0nmhz                        0x000056384653c209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 10 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 141 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 47 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002aca9179cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aca91493561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aca91493286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aca9149313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aca91492bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002aca91292e83 <unavailable> + 188035
6    tmp8gblldz4                        0x000055eb0b244056 <unavailable> + 8278
7    tmp8gblldz4                        0x000055eb0b2439d4 <unavailable> + 6612
8    libc.so.6                          0x00002aca91988460 __libc_start_main + 245
9    tmp8gblldz4                        0x000055eb0b2431a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if prev > lst[i] {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 125 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b4402e35c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b4402b2c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b4402b2c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b4402b2c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b4402b2bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b440292be83 <unavailable> + 188035
6    tmpbqjdaz6i                        0x00005566c08d7454 <unavailable> + 9300
7    tmpbqjdaz6i                        0x00005566c08d64eb <unavailable> + 5355
8    libc.so.6                          0x00002b4403021460 __libc_start_main + 245
9    tmpbqjdaz6i                        0x00005566c08d6209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    guard n > 2 else { return result }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 127 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 46 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_37_sort_even, completion 165 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b3ed8fa6c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3ed8c9d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3ed8c9d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3ed8c9d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3ed8c9cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b3ed8a9ce83 <unavailable> + 188035
6    tmphckdnyhc                        0x000055f2a6285071 <unavailable> + 8305
7    tmphckdnyhc                        0x000055f2a62847b4 <unavailable> + 6068
8    libc.so.6                          0x00002b3ed9192460 __libc_start_main + 245
9    tmphckdnyhc                        0x000055f2a6284499 <unavailable> + 5273

*/
/* stdout = 

*/


/// This function takes an array l and returns an array l' such that
/// l' is identical to l in the odd indicies, while its values at the even indicies are equal
/// to the values of the even indicies of l, but sorted.
/// >>> sort_even(l: [1, 2, 3])
/// [1, 2, 3]
/// >>> sort_even(l: [5, 6, 3, 4])
/// [3, 6, 5, 4]
func sort_even(l: [Int]) -> [Int] {
    var l_even = [Int]()
    var l_odd = [Int]()
    var l_sorted = [Int]()
    for (index, value) in l.enumerated() {
        if index % 2 == 0 {
            l_even.append(value)
        } else {
            l_odd.append(value)
        }
    }
    l_even.sort()
    for (index, value) in l_even.enumerated() {
        l_sorted.append(value)
        l_sorted.append(l_odd[index])
    }
    return l_sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_even(l: [1, 2, 3]) == [1, 2, 3])
assert(sort_even(l: [5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == [-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123])
assert(sort_even(l: [5, 8, -12, 4, 23, 2, 3, 11, 12, -10]) == [-12, 8, 3, 4, 5, 2, 12, 11, 23, -10])



// ----------- problem HumanEval_126_is_sorted, completion 196 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b578739ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b5787095561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b5787095286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b578709513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b5787094bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b5786e94e83 <unavailable> + 188035
6    tmp7t53bnqc                        0x000055fb3f657fd6 <unavailable> + 8150
7    tmp7t53bnqc                        0x000055fb3f657954 <unavailable> + 6484
8    libc.so.6                          0x00002b578758a460 __libc_start_main + 245
9    tmp7t53bnqc                        0x000055fb3f657129 <unavailable> + 4393

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var last = lst[0]
    for num in lst {
        if num < last {
            sorted = false
        }
        last = num
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 122 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ad2048b0c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ad2045a7561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ad2045a7286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ad2045a713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ad2045a6bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ad2043a6e83 <unavailable> + 188035
6    tmphoo0nmhz                        0x000056384653d419 <unavailable> + 9241
7    tmphoo0nmhz                        0x000056384653c4eb <unavailable> + 5355
8    libc.so.6                          0x00002ad204a9c460 __libc_start_main + 245
9    tmphoo0nmhz                        0x000056384653c209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 48 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ae233096c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae232d8d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae232d8d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae232d8d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae232d8cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ae232b8ce83 <unavailable> + 188035
6    tmpu6wlv5u8                        0x000055cb5e6c605b <unavailable> + 8283
7    tmpu6wlv5u8                        0x000055cb5e6c59d4 <unavailable> + 6612
8    libc.so.6                          0x00002ae233282460 __libc_start_main + 245
9    tmpu6wlv5u8                        0x000055cb5e6c51a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] == prev {
            return false
        }
        if lst[i] < prev {
            return false
        }
        prev = lst[i]
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 98 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002aac01482c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aac01179561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aac01179286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aac0117913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aac01178bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002aac00f78e83 <unavailable> + 188035
6    tmp0oi1klnf                        0x0000563f4e17b843 <unavailable> + 10307
7    tmp0oi1klnf                        0x0000563f4e17a6db <unavailable> + 5851
8    libc.so.6                          0x00002aac0166e460 __libc_start_main + 245
9    tmp0oi1klnf                        0x0000563f4e17a3f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    if n < 3 {
        return Array(result[0...n])
    }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_10_make_palindrome, completion 133 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ba4b99cfc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba4b96c6561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba4b96c6286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba4b96c613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba4b96c5bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ba4b94c5e83 <unavailable> + 188035
6    tmp3o2qeppf                        0x000055ea70113176 <unavailable> + 8566
7    tmp3o2qeppf                        0x000055ea70112805 <unavailable> + 6149
8    libc.so.6                          0x00002ba4b9bbb460 __libc_start_main + 245
9    tmp3o2qeppf                        0x000055ea70112509 <unavailable> + 5385

*/
/* stdout = 

*/


/// Find the shortest palindrome that begins with a supplied string.
/// Algorithm idea is simple:
/// - Find the longest postfix of supplied string that is a palindrome.
/// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
/// >>> make_palindrome(string: "")
/// ""
/// >>> make_palindrome(string: "cat")
/// "catac"
/// >>> make_palindrome(string: "cata")
/// "catac"
func make_palindrome(string: String) -> String {
    let reversed = String(string.reversed())
    let string_length = string.count
    let reversed_length = reversed.count
    var lps = [Int](repeating: 0, count: reversed_length)
    var i = 1
    var j = 0
    while i < reversed_length {
        if reversed[reversed.index(reversed.startIndex, offsetBy: i)] == reversed[reversed.index(reversed.startIndex, offsetBy: j)] {
            lps[i] = j + 1
            i += 1
            j += 1
        } else if j > 0 {
            j = lps[j - 1]
        } else {
            lps[i] = 0
            i += 1
        }
    }
    return string + String(reversed.suffix(reversed_length - lps[reversed_length - 1]))
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(make_palindrome(string: "") == "")
assert(make_palindrome(string: "x") == "x")
assert(make_palindrome(string: "xyz") == "xyzyx")
assert(make_palindrome(string: "xyx") == "xyx")
assert(make_palindrome(string: "jerry") == "jerryrrej")



// ----------- problem HumanEval_126_is_sorted, completion 188 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 152 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1a31d56c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1a31a4d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1a31a4d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b1a31a4d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1a31a4cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b1a3184ce83 <unavailable> + 188035
6    tmpajcjyx79                        0x00005557113abae8 <unavailable> + 6888
7    tmpajcjyx79                        0x00005557113ab5ad <unavailable> + 5549
8    libc.so.6                          0x00002b1a31f42460 __libc_start_main + 245
9    tmpajcjyx79                        0x00005557113ab2b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    result.append(max)
    for i in 1..<numbers.count {
        if numbers[i] > max {
            max = numbers[i]
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_9_rolling_max, completion 174 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1a31d56c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1a31a4d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1a31a4d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b1a31a4d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1a31a4cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b1a3184ce83 <unavailable> + 188035
6    tmpajcjyx79                        0x00005557113abae8 <unavailable> + 6888
7    tmpajcjyx79                        0x00005557113ab5ad <unavailable> + 5549
8    libc.so.6                          0x00002b1a31f42460 __libc_start_main + 245
9    tmpajcjyx79                        0x00005557113ab2b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    result.append(max)
    for i in 1..<numbers.count {
        if numbers[i] > max {
            max = numbers[i]
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_9_rolling_max, completion 73 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1385adbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b13857d2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b13857d2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b13857d213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b13857d1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b13855d1e83 <unavailable> + 188035
6    tmpburnh_0r                        0x000055614ce96ad8 <unavailable> + 6872
7    tmpburnh_0r                        0x000055614ce965ad <unavailable> + 5549
8    libc.so.6                          0x00002b1385cc7460 __libc_start_main + 245
9    tmpburnh_0r                        0x000055614ce962b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        if numbers[i] > max_so_far {
            max_so_far = numbers[i]
        }
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 119 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 167 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 130 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ad2048b0c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ad2045a7561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ad2045a7286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ad2045a713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ad2045a6bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ad2043a6e83 <unavailable> + 188035
6    tmphoo0nmhz                        0x000056384653d419 <unavailable> + 9241
7    tmphoo0nmhz                        0x000056384653c4eb <unavailable> + 5355
8    libc.so.6                          0x00002ad204a9c460 __libc_start_main + 245
9    tmphoo0nmhz                        0x000056384653c209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_120_maximum, completion 53 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002af01312ac80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af012e21561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af012e21286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af012e2113c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af012e20bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002af012c20e83 <unavailable> + 188035
6    tmpnsl1720i                        0x000055beccfa0836 <unavailable> + 10294
7    tmpnsl1720i                        0x000055beccfa04b6 <unavailable> + 9398
8    libc.so.6                          0x00002af013316460 __libc_start_main + 245
9    tmpnsl1720i                        0x000055beccf9f429 <unavailable> + 5161

*/
/* stdout = 

*/


/// Given an array arr of integers and a positive integer k, return a sorted array 
/// of length k with the maximum k numbers in arr.
/// Example 1:
/// >>> maximum(arr: [-3, -4, 5], k: 3)
/// [-4, -3, 5]
/// Example 2:
/// >>> maximum(arr: [4, -4, 4], k: 2)
/// [4, 4]
/// Example 3:
/// >>> maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1)
/// [2]
/// Note:
/// 1. The length of the array will be in the range of [1, 1000].
/// 2. The elements in the array will be in the range of [-1000, 1000].
/// 3. 0 <= k <= len(arr)
func maximum(arr: [Int], k: Int) -> [Int] {
    var result = [Int]()
    var max = [Int]()
    for i in 0..<arr.count {
        if max.count < k {
            max.append(arr[i])
            max.sort()
        } else {
            if arr[i] > max[0] {
                max[0] = arr[i]
                max.sort()
            }
        }
    }
    return max
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(maximum(arr: [-3, -4, 5], k: 3) == [-4, -3, 5])
assert(maximum(arr: [4, -4, 4], k: 2) == [4, 4])
assert(maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1) == [2])
assert(maximum(arr: [123, -123, 20, 0, 1, 2, -3], k: 3) == [2, 20, 123])
assert(maximum(arr: [-123, 20, 0, 1, 2, -3], k: 4) == [0, 1, 2, 20])
assert(maximum(arr: [5, 15, 0, 3, -13, -8, 0], k: 7) == [-13, -8, 0, 0, 3, 5, 15])
assert(maximum(arr: [-1, 0, 2, 5, 3, -10], k: 2) == [3, 5])
assert(maximum(arr: [1, 0, 5, -7], k: 1) == [5])
assert(maximum(arr: [4, -4], k: 2) == [-4, 4])
assert(maximum(arr: [-10, 10], k: 2) == [-10, 10])
assert(maximum(arr: [1, 2, 3, -23, 243, -400, 0], k: 0) == [] as [Int])



// ----------- problem HumanEval_126_is_sorted, completion 79 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002aeb63431c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aeb63128561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aeb63128286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aeb6312813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aeb63127bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002aeb62f27e83 <unavailable> + 188035
6    tmpfg_mhb9h                        0x000055cbfebc0042 <unavailable> + 8258
7    tmpfg_mhb9h                        0x000055cbfebbf9d4 <unavailable> + 6612
8    libc.so.6                          0x00002aeb6361d460 __libc_start_main + 245
9    tmpfg_mhb9h                        0x000055cbfebbf1a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            return false
        }
        prev = lst[i]
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 97 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b887adb3c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b887aaaa561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b887aaaa286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b887aaaa13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b887aaa9bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b887a8a9e83 <unavailable> + 188035
6    tmpbndktfr7                        0x000055f1a4e95b58 <unavailable> + 7000
7    tmpbndktfr7                        0x000055f1a4e9562d <unavailable> + 5677
8    libc.so.6                          0x00002b887af9f460 __libc_start_main + 245
9    tmpbndktfr7                        0x000055f1a4e95339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 193 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 77 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b65b1890c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b65b1587561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b65b1587286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b65b158713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b65b1586bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b65b1386e83 <unavailable> + 188035
6    tmpk57ye95c                        0x000055c2c4b6284f <unavailable> + 10319
7    tmpk57ye95c                        0x000055c2c4b616db <unavailable> + 5851
8    libc.so.6                          0x00002b65b1a7c460 __libc_start_main + 245
9    tmpk57ye95c                        0x000055c2c4b613f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    if n <= 2 {
        return Array(result[0...n])
    }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 122 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_149_sorted_list_sum, completion 143 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b96d389dc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b96d3594561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b96d3594286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b96d359413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b96d3593bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b96d3393fc3 <unavailable> + 188355
6    tmpl3tka3d2                        0x000055a3bc86e82c <unavailable> + 10284
7    tmpl3tka3d2                        0x000055a3bc86d84d <unavailable> + 6221
8    libc.so.6                          0x00002b96d3a89460 __libc_start_main + 245
9    tmpl3tka3d2                        0x000055a3bc86d4c9 <unavailable> + 5321

*/
/* stdout = 

*/


/// Write a function that accepts an array of strings as a parameter,
/// deletes the strings that have odd lengths from it,
/// and returns the resulted array with a sorted order,
/// The array is always an array of strings and never an array of numbers,
/// and it may contain duplicates.
/// The order of the array should be ascending by length of each word, and you
/// should return the array sorted by that rule.
/// If two words have the same length, sort the array alphabetically.
/// The function should return an array of strings in sorted order.
/// You may assume that all words will have the same length.
/// For example:
/// >>> sorted_list_sum(lst: ["aa", "a", "aaa"])
/// ["aa"]
/// >>> sorted_list_sum(lst: ["ab", "a", "aaa", "cd"])
/// ["ab", "cd"]
func sorted_list_sum(lst: [String]) -> [String] {
    var new_lst = lst
    for i in 0..<new_lst.count {
        if new_lst[i].count % 2 != 0 {
            new_lst.remove(at: i)
        }
    }
    new_lst.sort()
    return new_lst
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sorted_list_sum(lst: ["aa", "a", "aaa"]) == ["aa"])
assert(sorted_list_sum(lst: ["school", "AI", "asdf", "b"]) == ["AI", "asdf", "school"])
assert(sorted_list_sum(lst: ["d", "b", "c", "a"]) == [] as [String])
assert(sorted_list_sum(lst: ["d", "dcba", "abcd", "a"]) == ["abcd", "dcba"])
assert(sorted_list_sum(lst: ["AI", "ai", "au"]) == ["AI", "ai", "au"])
assert(sorted_list_sum(lst: ["a", "b", "b", "c", "c", "a"]) == [] as [String])
assert(sorted_list_sum(lst: ["aaaa", "bbbb", "dd", "cc"]) == ["cc", "dd", "aaaa", "bbbb"])



// ----------- problem HumanEval_130_tri, completion 139 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b6af51f0c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b6af4ee7561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b6af4ee7286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b6af4ee713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b6af4ee6bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b6af4ce6e83 <unavailable> + 188035
6    tmpqnlp53wh                        0x000055bff8ada465 <unavailable> + 9317
7    tmpqnlp53wh                        0x000055bff8ad94eb <unavailable> + 5355
8    libc.so.6                          0x00002b6af53dc460 __libc_start_main + 245
9    tmpqnlp53wh                        0x000055bff8ad9209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    if n <= 2 {
        return result
    }
    for i in 3...n {
        result.append(i % 2 == 0 ? 1 + i / 2 : result[i - 1] + result[i - 2] + result[i + 1])
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_9_rolling_max, completion 33 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ad4fcc4ac80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ad4fc941561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ad4fc941286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ad4fc94113c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ad4fc940bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ad4fc740e83 <unavailable> + 188035
6    tmppz76rxxv                        0x000055dc9e8feb68 <unavailable> + 7016
7    tmppz76rxxv                        0x000055dc9e8fe62d <unavailable> + 5677
8    libc.so.6                          0x00002ad4fce36460 __libc_start_main + 245
9    tmppz76rxxv                        0x000055dc9e8fe339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max_value = numbers[0]
    result.append(max_value)
    for i in 1..<numbers.count {
        max_value = max(max_value, numbers[i])
        result.append(max_value)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 130 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 62 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 125 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 94 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1a31d56c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1a31a4d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1a31a4d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b1a31a4d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1a31a4cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b1a3184ce83 <unavailable> + 188035
6    tmpajcjyx79                        0x00005557113abae8 <unavailable> + 6888
7    tmpajcjyx79                        0x00005557113ab5ad <unavailable> + 5549
8    libc.so.6                          0x00002b1a31f42460 __libc_start_main + 245
9    tmpajcjyx79                        0x00005557113ab2b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    result.append(max)
    for i in 1..<numbers.count {
        if numbers[i] > max {
            max = numbers[i]
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_37_sort_even, completion 122 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b2adc035c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b2adbd2c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b2adbd2c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b2adbd2c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b2adbd2bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b2adbb2be83 <unavailable> + 188035
6    tmp7oxceufx                        0x000055966f0d01f1 <unavailable> + 8689
7    tmp7oxceufx                        0x000055966f0cf904 <unavailable> + 6404
8    libc.so.6                          0x00002b2adc221460 __libc_start_main + 245
9    tmp7oxceufx                        0x000055966f0cf5e9 <unavailable> + 5609

*/
/* stdout = 

*/


/// This function takes an array l and returns an array l' such that
/// l' is identical to l in the odd indicies, while its values at the even indicies are equal
/// to the values of the even indicies of l, but sorted.
/// >>> sort_even(l: [1, 2, 3])
/// [1, 2, 3]
/// >>> sort_even(l: [5, 6, 3, 4])
/// [3, 6, 5, 4]
func sort_even(l: [Int]) -> [Int] {
    var l_even = l.enumerated().filter { $0.offset % 2 == 0 }.map { $0.element }
    l_even.sort()
    var l_odd = l.enumerated().filter { $0.offset % 2 == 1 }.map { $0.element }
    var l_new = [Int]()
    for i in 0..<l_even.count {
        l_new.append(l_even[i])
        l_new.append(l_odd[i])
    }
    return l_new
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_even(l: [1, 2, 3]) == [1, 2, 3])
assert(sort_even(l: [5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == [-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123])
assert(sort_even(l: [5, 8, -12, 4, 23, 2, 3, 11, 12, -10]) == [-12, 8, 3, 4, 5, 2, 12, 11, 23, -10])



// ----------- problem HumanEval_9_rolling_max, completion 147 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b6265e0ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b6265b05561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b6265b05286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b6265b0513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b6265b04bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b6265904e83 <unavailable> + 188035
6    tmp53h8pqtf                        0x000055a85c822ae8 <unavailable> + 6888
7    tmp53h8pqtf                        0x000055a85c8225ad <unavailable> + 5549
8    libc.so.6                          0x00002b6265ffa460 __libc_start_main + 245
9    tmp53h8pqtf                        0x000055a85c8222b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max_so_far = numbers[0]
    result.append(max_so_far)
    for i in 1..<numbers.count {
        if numbers[i] > max_so_far {
            max_so_far = numbers[i]
        }
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_120_maximum, completion 68 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ba50e44fc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba50e146561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba50e146286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba50e14613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba50e145bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ba50df45e83 <unavailable> + 188035
6    tmp9im5po73                        0x0000560b386938f2 <unavailable> + 10482
7    tmp9im5po73                        0x0000560b386934b6 <unavailable> + 9398
8    libc.so.6                          0x00002ba50e63b460 __libc_start_main + 245
9    tmp9im5po73                        0x0000560b38692429 <unavailable> + 5161

*/
/* stdout = 

*/


/// Given an array arr of integers and a positive integer k, return a sorted array 
/// of length k with the maximum k numbers in arr.
/// Example 1:
/// >>> maximum(arr: [-3, -4, 5], k: 3)
/// [-4, -3, 5]
/// Example 2:
/// >>> maximum(arr: [4, -4, 4], k: 2)
/// [4, 4]
/// Example 3:
/// >>> maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1)
/// [2]
/// Note:
/// 1. The length of the array will be in the range of [1, 1000].
/// 2. The elements in the array will be in the range of [-1000, 1000].
/// 3. 0 <= k <= len(arr)
func maximum(arr: [Int], k: Int) -> [Int] {
    var result = [Int]()
    for i in 0..<k {
        result.append(arr[i])
    }
    result.sort()
    for i in k..<arr.count {
        if arr[i] > result[0] {
            result[0] = arr[i]
            result.sort()
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(maximum(arr: [-3, -4, 5], k: 3) == [-4, -3, 5])
assert(maximum(arr: [4, -4, 4], k: 2) == [4, 4])
assert(maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1) == [2])
assert(maximum(arr: [123, -123, 20, 0, 1, 2, -3], k: 3) == [2, 20, 123])
assert(maximum(arr: [-123, 20, 0, 1, 2, -3], k: 4) == [0, 1, 2, 20])
assert(maximum(arr: [5, 15, 0, 3, -13, -8, 0], k: 7) == [-13, -8, 0, 0, 3, 5, 15])
assert(maximum(arr: [-1, 0, 2, 5, 3, -10], k: 2) == [3, 5])
assert(maximum(arr: [1, 0, 5, -7], k: 1) == [5])
assert(maximum(arr: [4, -4], k: 2) == [-4, 4])
assert(maximum(arr: [-10, 10], k: 2) == [-10, 10])
assert(maximum(arr: [1, 2, 3, -23, 243, -400, 0], k: 0) == [] as [Int])



// ----------- problem HumanEval_9_rolling_max, completion 76 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b5a2296cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b5a22663561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b5a22663286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b5a2266313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b5a22662bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b5a22462e83 <unavailable> + 188035
6    tmpf5224ffh                        0x000055a73c59ab68 <unavailable> + 7016
7    tmpf5224ffh                        0x000055a73c59a62d <unavailable> + 5677
8    libc.so.6                          0x00002b5a22b58460 __libc_start_main + 245
9    tmpf5224ffh                        0x000055a73c59a339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max_so_far = numbers[0]
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_9_rolling_max, completion 126 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1a31d56c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1a31a4d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1a31a4d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b1a31a4d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1a31a4cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b1a3184ce83 <unavailable> + 188035
6    tmpajcjyx79                        0x00005557113abae8 <unavailable> + 6888
7    tmpajcjyx79                        0x00005557113ab5ad <unavailable> + 5549
8    libc.so.6                          0x00002b1a31f42460 __libc_start_main + 245
9    tmpajcjyx79                        0x00005557113ab2b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    result.append(max)
    for i in 1..<numbers.count {
        if numbers[i] > max {
            max = numbers[i]
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_9_rolling_max, completion 146 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b887adb3c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b887aaaa561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b887aaaa286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b887aaaa13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b887aaa9bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b887a8a9e83 <unavailable> + 188035
6    tmpbndktfr7                        0x000055f1a4e95b58 <unavailable> + 7000
7    tmpbndktfr7                        0x000055f1a4e9562d <unavailable> + 5677
8    libc.so.6                          0x00002b887af9f460 __libc_start_main + 245
9    tmpbndktfr7                        0x000055f1a4e95339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_130_tri, completion 107 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b65b1890c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b65b1587561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b65b1587286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b65b158713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b65b1586bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b65b1386e83 <unavailable> + 188035
6    tmpk57ye95c                        0x000055c2c4b6284f <unavailable> + 10319
7    tmpk57ye95c                        0x000055c2c4b616db <unavailable> + 5851
8    libc.so.6                          0x00002b65b1a7c460 __libc_start_main + 245
9    tmpk57ye95c                        0x000055c2c4b613f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    if n <= 2 {
        return Array(result[0...n])
    }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_130_tri, completion 111 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ae889c51c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae889948561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae889948286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae88994813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae889947bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ae889747e83 <unavailable> + 188035
6    tmpyix3dkrm                        0x000055db61fb1444 <unavailable> + 9284
7    tmpyix3dkrm                        0x000055db61fb04eb <unavailable> + 5355
8    libc.so.6                          0x00002ae889e3d460 __libc_start_main + 245
9    tmpyix3dkrm                        0x000055db61fb0209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    guard n > 2 else { return result }
    for i in 3...n {
        result.append(i % 2 == 0 ? 1 + i / 2 : result[i - 1] + result[i - 2] + result[i + 1])
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 49 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 87 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0d5b059c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0d5ad50561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0d5ad50286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0d5ad5013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0d5ad4fbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0d5ab4fe83 <unavailable> + 188035
6    tmpan36m1nn                        0x000055c784a3653a <unavailable> + 9530
7    tmpan36m1nn                        0x000055c784a354eb <unavailable> + 5355
8    libc.so.6                          0x00002b0d5b245460 __libc_start_main + 245
9    tmpan36m1nn                        0x000055c784a35209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    if n == 0 {
        return [1]
    } else if n == 1 {
        return [1, 3]
    } else if n == 2 {
        return [1, 3, 2]
    } else {
        for i in 3...n {
            if i % 2 == 0 {
                result.append(1 + i / 2)
            } else {
                result.append(result[i - 1] + result[i - 2] + result[i + 1])
            }
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 133 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002aee6a3a7c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aee6a09e561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aee6a09e286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aee6a09e13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aee6a09dbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002aee69e9de83 <unavailable> + 188035
6    tmp91h05hug                        0x00005647a5845056 <unavailable> + 8278
7    tmp91h05hug                        0x00005647a58449d4 <unavailable> + 6612
8    libc.so.6                          0x00002aee6a593460 __libc_start_main + 245
9    tmp91h05hug                        0x00005647a58441a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] <= prev {
            sorted = false
            break
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 101 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 50 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b887adb3c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b887aaaa561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b887aaaa286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b887aaaa13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b887aaa9bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b887a8a9e83 <unavailable> + 188035
6    tmpbndktfr7                        0x000055f1a4e95b58 <unavailable> + 7000
7    tmpbndktfr7                        0x000055f1a4e9562d <unavailable> + 5677
8    libc.so.6                          0x00002b887af9f460 __libc_start_main + 245
9    tmpbndktfr7                        0x000055f1a4e95339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_130_tri, completion 20 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ba2870afc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba286da6561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba286da6286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba286da613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba286da5bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ba286ba5e83 <unavailable> + 188035
6    tmp4_8i_oxx                        0x0000564310fd74ee <unavailable> + 9454
7    tmp4_8i_oxx                        0x0000564310fd64eb <unavailable> + 5355
8    libc.so.6                          0x00002ba28729b460 __libc_start_main + 245
9    tmp4_8i_oxx                        0x0000564310fd6209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    if n == 0 {
        return [1]
    }
    if n == 1 {
        return [1, 3]
    }
    if n == 2 {
        return [1, 3, 2]
    }
    var result = [1, 3, 2]
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_130_tri, completion 74 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b65834efc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b65831e6561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b65831e6286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b65831e613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b65831e5bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b6582fe5e83 <unavailable> + 188035
6    tmp8v1gq5gk                        0x000055ae172f667a <unavailable> + 9850
7    tmp8v1gq5gk                        0x000055ae172f56db <unavailable> + 5851
8    libc.so.6                          0x00002b65836db460 __libc_start_main + 245
9    tmp8v1gq5gk                        0x000055ae172f53f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    guard n > 2 else { return Array(result[0...n]) }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 27 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_37_sort_even, completion 181 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b7fb16a0c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7fb1397561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7fb1397286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7fb139713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7fb1396bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b7fb1196e83 <unavailable> + 188035
6    tmpzmkc2ue1                        0x000055ce6e6e4071 <unavailable> + 8305
7    tmpzmkc2ue1                        0x000055ce6e6e37b4 <unavailable> + 6068
8    libc.so.6                          0x00002b7fb188c460 __libc_start_main + 245
9    tmpzmkc2ue1                        0x000055ce6e6e3499 <unavailable> + 5273

*/
/* stdout = 

*/


/// This function takes an array l and returns an array l' such that
/// l' is identical to l in the odd indicies, while its values at the even indicies are equal
/// to the values of the even indicies of l, but sorted.
/// >>> sort_even(l: [1, 2, 3])
/// [1, 2, 3]
/// >>> sort_even(l: [5, 6, 3, 4])
/// [3, 6, 5, 4]
func sort_even(l: [Int]) -> [Int] {
    var evens = [Int]()
    var odds = [Int]()
    var result = [Int]()
    for (index, value) in l.enumerated() {
        if index % 2 == 0 {
            odds.append(value)
        } else {
            evens.append(value)
        }
    }
    evens.sort()
    for (index, value) in odds.enumerated() {
        result.append(value)
        result.append(evens[index])
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_even(l: [1, 2, 3]) == [1, 2, 3])
assert(sort_even(l: [5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == [-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123])
assert(sort_even(l: [5, 8, -12, 4, 23, 2, 3, 11, 12, -10]) == [-12, 8, 3, 4, 5, 2, 12, 11, 23, -10])



// ----------- problem HumanEval_126_is_sorted, completion 170 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 127 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ba2870afc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba286da6561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba286da6286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba286da613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba286da5bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ba286ba5e83 <unavailable> + 188035
6    tmp4_8i_oxx                        0x0000564310fd74ee <unavailable> + 9454
7    tmp4_8i_oxx                        0x0000564310fd64eb <unavailable> + 5355
8    libc.so.6                          0x00002ba28729b460 __libc_start_main + 245
9    tmp4_8i_oxx                        0x0000564310fd6209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    if n == 0 {
        return [1]
    }
    if n == 1 {
        return [1, 3]
    }
    if n == 2 {
        return [1, 3, 2]
    }
    var result = [1, 3, 2]
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_130_tri, completion 142 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b18884f6c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b18881ed561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b18881ed286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b18881ed13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b18881ecbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b1887fece83 <unavailable> + 188035
6    tmpf2z9w9tx                        0x00005575b98ba419 <unavailable> + 9241
7    tmpf2z9w9tx                        0x00005575b98b94eb <unavailable> + 5355
8    libc.so.6                          0x00002b18886e2460 __libc_start_main + 245
9    tmpf2z9w9tx                        0x00005575b98b9209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var tribonacci = [1, 3, 2]
    for i in 3...n {
        if i % 2 == 0 {
            tribonacci.append(1 + i / 2)
        } else {
            tribonacci.append(tribonacci[i - 1] + tribonacci[i - 2] + tribonacci[i + 1])
        }
    }
    return tribonacci
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_46_fib4, completion 41 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0131eaac80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0131ba1561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0131ba1286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0131ba113c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0131ba0bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b01319a0e83 <unavailable> + 188035
6    tmpy30m1ruj                        0x000055f7cdba795c <unavailable> + 6492
7    tmpy30m1ruj                        0x000055f7cdba7528 <unavailable> + 5416
8    libc.so.6                          0x00002b0132096460 __libc_start_main + 245
9    tmpy30m1ruj                        0x000055f7cdba7249 <unavailable> + 4681

*/
/* stdout = 

*/


/// The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
/// fib4(0) -> 0
/// fib4(1) -> 0
/// fib4(2) -> 2
/// fib4(3) -> 0
/// fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).
/// Please write a function to efficiently compute the n-th element of the fib4 number sequence.  Do not use recursion.
/// >>> fib4(n: 5)
/// 4
/// >>> fib4(n: 6)
/// 8
/// >>> fib4(n: 7)
/// 14
func fib4(n: Int) -> Int {
    let fib4 = [0, 0, 2, 0]
    var fib4_n = fib4
    if n <= 3 {
        return fib4[n]
    }
    for i in 4...n {
        fib4_n.append(fib4_n[i-1] + fib4_n[i-2] + fib4_n[i-3] + fib4_n[i-4])
        fib4_n.removeFirst()
    }
    return fib4_n[3]
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fib4(n: 5) == 4)
assert(fib4(n: 8) == 28)
assert(fib4(n: 10) == 104)
assert(fib4(n: 12) == 386)



// ----------- problem HumanEval_9_rolling_max, completion 19 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1385adbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b13857d2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b13857d2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b13857d213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b13857d1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b13855d1e83 <unavailable> + 188035
6    tmpburnh_0r                        0x000055614ce96ad8 <unavailable> + 6872
7    tmpburnh_0r                        0x000055614ce965ad <unavailable> + 5549
8    libc.so.6                          0x00002b1385cc7460 __libc_start_main + 245
9    tmpburnh_0r                        0x000055614ce962b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        if numbers[i] > max_so_far {
            max_so_far = numbers[i]
        }
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 74 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b36f732bc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b36f7022561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b36f7022286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b36f702213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b36f7021bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b36f6e21e83 <unavailable> + 188035
6    tmpbhyastnx                        0x000055dd3b875fd6 <unavailable> + 8150
7    tmpbhyastnx                        0x000055dd3b875954 <unavailable> + 6484
8    libc.so.6                          0x00002b36f7517460 __libc_start_main + 245
9    tmpbhyastnx                        0x000055dd3b875129 <unavailable> + 4393

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for num in lst {
        if num < prev {
            sorted = false
        }
        prev = num
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_109_move_one_ball, completion 105 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b56bbef6c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b56bbbed561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b56bbbed286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b56bbbed13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b56bbbecbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b56bb9ece83 <unavailable> + 188035
6    tmpfi37wf4w                        0x000055e86910faa6 <unavailable> + 6822
7    tmpfi37wf4w                        0x000055e86910f4d5 <unavailable> + 5333
8    libc.so.6                          0x00002b56bc0e2460 __libc_start_main + 245
9    tmpfi37wf4w                        0x000055e86910f1a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// We have an array 'arr' of N integers arr[1], arr[2], ..., arr[N].The
/// numbers in the array will be randomly ordered. Your task is to determine if
/// it is possible to get an array sorted in non-decreasing order by performing 
/// the following operation on the given array:
/// You are allowed to perform right shift operation any number of times.
/// One right shift operation means shifting all elements of the array by one
/// position in the right direction. The last element of the array will be moved to
/// the starting position in the array i.e. 0th index. 
/// If it is possible to obtain the sorted array by performing the above operation
/// then return true else return false.
/// If the given array is empty then return true.
/// Note: The given array is guaranteed to have unique elements.
/// For Example:
/// >>> move_one_ball(arr: [3, 4, 5, 1, 2])
/// true
/// Explanation: By performin 2 right shift operations, non-decreasing order can
/// be achieved for the given array.
/// >>> move_one_ball(arr: [3, 5, 4, 1, 2])
/// false
/// Explanation:It is not possible to get non-decreasing order for the given
/// array by performing any number of right shift operations.
func move_one_ball(arr: [Int]) -> Bool {
    if arr.count == 0 {
        return true
    }
    var arr = arr
    var count = 0
    for i in 0..<arr.count {
        if arr[i] > arr[i+1] {
            count += 1
        }
    }
    if count > 1 {
        return false
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(move_one_ball(arr: [3, 4, 5, 1, 2]) == true)
assert(move_one_ball(arr: [3, 5, 10, 1, 2]) == true)
assert(move_one_ball(arr: [4, 3, 1, 2]) == false)
assert(move_one_ball(arr: [3, 5, 4, 1, 2]) == false)
assert(move_one_ball(arr: [] as [Int]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 98 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b864c653c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b864c34a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b864c34a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b864c34a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b864c349bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b864c149e83 <unavailable> + 188035
6    tmpimc4yzz7                        0x00005624a2b35a5f <unavailable> + 6751
7    tmpimc4yzz7                        0x00005624a2b3552d <unavailable> + 5421
8    libc.so.6                          0x00002b864c83f460 __libc_start_main + 245
9    tmpimc4yzz7                        0x00005624a2b35239 <unavailable> + 4665

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    for number in numbers {
        max = max > number ? max : number
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 1 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b6a7acdec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b6a7a9d5561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b6a7a9d5286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b6a7a9d513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b6a7a9d4bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b6a7a7d4e83 <unavailable> + 188035
6    tmpqddor0o8                        0x000056074bcd7042 <unavailable> + 8258
7    tmpqddor0o8                        0x000056074bcd69d4 <unavailable> + 6612
8    libc.so.6                          0x00002b6a7aeca460 __libc_start_main + 245
9    tmpqddor0o8                        0x000056074bcd61a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] <= prev {
            return false
        }
        prev = lst[i]
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 144 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002aac01482c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aac01179561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aac01179286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aac0117913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aac01178bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002aac00f78e83 <unavailable> + 188035
6    tmp0oi1klnf                        0x0000563f4e17b843 <unavailable> + 10307
7    tmp0oi1klnf                        0x0000563f4e17a6db <unavailable> + 5851
8    libc.so.6                          0x00002aac0166e460 __libc_start_main + 245
9    tmp0oi1klnf                        0x0000563f4e17a3f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    if n < 3 {
        return Array(result[0...n])
    }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 4 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b4f8b798c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b4f8b48f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b4f8b48f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b4f8b48f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b4f8b48ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b4f8b28ee83 <unavailable> + 188035
6    tmpvnxjb_eu                        0x0000564a1439405b <unavailable> + 8283
7    tmpvnxjb_eu                        0x0000564a143939d4 <unavailable> + 6612
8    libc.so.6                          0x00002b4f8b984460 __libc_start_main + 245
9    tmpvnxjb_eu                        0x0000564a143931a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            return false
        }
        prev = lst[i]
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 137 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002aac01482c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aac01179561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aac01179286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aac0117913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aac01178bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002aac00f78e83 <unavailable> + 188035
6    tmp0oi1klnf                        0x0000563f4e17b843 <unavailable> + 10307
7    tmp0oi1klnf                        0x0000563f4e17a6db <unavailable> + 5851
8    libc.so.6                          0x00002aac0166e460 __libc_start_main + 245
9    tmp0oi1klnf                        0x0000563f4e17a3f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    if n < 3 {
        return Array(result[0...n])
    }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_149_sorted_list_sum, completion 83 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b96d389dc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b96d3594561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b96d3594286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b96d359413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b96d3593bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b96d3393fc3 <unavailable> + 188355
6    tmpl3tka3d2                        0x000055a3bc86e82c <unavailable> + 10284
7    tmpl3tka3d2                        0x000055a3bc86d84d <unavailable> + 6221
8    libc.so.6                          0x00002b96d3a89460 __libc_start_main + 245
9    tmpl3tka3d2                        0x000055a3bc86d4c9 <unavailable> + 5321

*/
/* stdout = 

*/


/// Write a function that accepts an array of strings as a parameter,
/// deletes the strings that have odd lengths from it,
/// and returns the resulted array with a sorted order,
/// The array is always an array of strings and never an array of numbers,
/// and it may contain duplicates.
/// The order of the array should be ascending by length of each word, and you
/// should return the array sorted by that rule.
/// If two words have the same length, sort the array alphabetically.
/// The function should return an array of strings in sorted order.
/// You may assume that all words will have the same length.
/// For example:
/// >>> sorted_list_sum(lst: ["aa", "a", "aaa"])
/// ["aa"]
/// >>> sorted_list_sum(lst: ["ab", "a", "aaa", "cd"])
/// ["ab", "cd"]
func sorted_list_sum(lst: [String]) -> [String] {
    var new_lst = lst
    for i in 0..<new_lst.count {
        if new_lst[i].count % 2 != 0 {
            new_lst.remove(at: i)
        }
    }
    new_lst.sort()
    return new_lst
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sorted_list_sum(lst: ["aa", "a", "aaa"]) == ["aa"])
assert(sorted_list_sum(lst: ["school", "AI", "asdf", "b"]) == ["AI", "asdf", "school"])
assert(sorted_list_sum(lst: ["d", "b", "c", "a"]) == [] as [String])
assert(sorted_list_sum(lst: ["d", "dcba", "abcd", "a"]) == ["abcd", "dcba"])
assert(sorted_list_sum(lst: ["AI", "ai", "au"]) == ["AI", "ai", "au"])
assert(sorted_list_sum(lst: ["a", "b", "b", "c", "c", "a"]) == [] as [String])
assert(sorted_list_sum(lst: ["aaaa", "bbbb", "dd", "cc"]) == ["cc", "dd", "aaaa", "bbbb"])



// ----------- problem HumanEval_126_is_sorted, completion 135 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 64 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1385adbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b13857d2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b13857d2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b13857d213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b13857d1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b13855d1e83 <unavailable> + 188035
6    tmpburnh_0r                        0x000055614ce96ad8 <unavailable> + 6872
7    tmpburnh_0r                        0x000055614ce965ad <unavailable> + 5549
8    libc.so.6                          0x00002b1385cc7460 __libc_start_main + 245
9    tmpburnh_0r                        0x000055614ce962b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        if numbers[i] > max_so_far {
            max_so_far = numbers[i]
        }
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 53 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002aee6a3a7c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aee6a09e561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aee6a09e286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aee6a09e13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aee6a09dbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002aee69e9de83 <unavailable> + 188035
6    tmp91h05hug                        0x00005647a5845056 <unavailable> + 8278
7    tmp91h05hug                        0x00005647a58449d4 <unavailable> + 6612
8    libc.so.6                          0x00002aee6a593460 __libc_start_main + 245
9    tmp91h05hug                        0x00005647a58441a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] <= prev {
            sorted = false
            break
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 32 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b58c8183c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b58c7e7a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b58c7e7a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b58c7e7a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b58c7e79bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b58c7c79e83 <unavailable> + 188035
6    tmpz_ko00hi                        0x0000557abec9f66a <unavailable> + 9834
7    tmpz_ko00hi                        0x0000557abec9e6db <unavailable> + 5851
8    libc.so.6                          0x00002b58c836f460 __libc_start_main + 245
9    tmpz_ko00hi                        0x0000557abec9e3f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    guard n > 2 else {
        return Array(result[0...n])
    }
    for i in 3...n {
        result.append(i % 2 == 0 ? 1 + i / 2 : result[i - 1] + result[i - 2] + result[i + 1])
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_149_sorted_list_sum, completion 82 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b96d389dc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b96d3594561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b96d3594286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b96d359413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b96d3593bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b96d3393fc3 <unavailable> + 188355
6    tmpl3tka3d2                        0x000055a3bc86e82c <unavailable> + 10284
7    tmpl3tka3d2                        0x000055a3bc86d84d <unavailable> + 6221
8    libc.so.6                          0x00002b96d3a89460 __libc_start_main + 245
9    tmpl3tka3d2                        0x000055a3bc86d4c9 <unavailable> + 5321

*/
/* stdout = 

*/


/// Write a function that accepts an array of strings as a parameter,
/// deletes the strings that have odd lengths from it,
/// and returns the resulted array with a sorted order,
/// The array is always an array of strings and never an array of numbers,
/// and it may contain duplicates.
/// The order of the array should be ascending by length of each word, and you
/// should return the array sorted by that rule.
/// If two words have the same length, sort the array alphabetically.
/// The function should return an array of strings in sorted order.
/// You may assume that all words will have the same length.
/// For example:
/// >>> sorted_list_sum(lst: ["aa", "a", "aaa"])
/// ["aa"]
/// >>> sorted_list_sum(lst: ["ab", "a", "aaa", "cd"])
/// ["ab", "cd"]
func sorted_list_sum(lst: [String]) -> [String] {
    var new_lst = lst
    for i in 0..<new_lst.count {
        if new_lst[i].count % 2 != 0 {
            new_lst.remove(at: i)
        }
    }
    new_lst.sort()
    return new_lst
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sorted_list_sum(lst: ["aa", "a", "aaa"]) == ["aa"])
assert(sorted_list_sum(lst: ["school", "AI", "asdf", "b"]) == ["AI", "asdf", "school"])
assert(sorted_list_sum(lst: ["d", "b", "c", "a"]) == [] as [String])
assert(sorted_list_sum(lst: ["d", "dcba", "abcd", "a"]) == ["abcd", "dcba"])
assert(sorted_list_sum(lst: ["AI", "ai", "au"]) == ["AI", "ai", "au"])
assert(sorted_list_sum(lst: ["a", "b", "b", "c", "c", "a"]) == [] as [String])
assert(sorted_list_sum(lst: ["aaaa", "bbbb", "dd", "cc"]) == ["cc", "dd", "aaaa", "bbbb"])



// ----------- problem HumanEval_149_sorted_list_sum, completion 135 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b96d389dc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b96d3594561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b96d3594286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b96d359413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b96d3593bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b96d3393fc3 <unavailable> + 188355
6    tmpl3tka3d2                        0x000055a3bc86e82c <unavailable> + 10284
7    tmpl3tka3d2                        0x000055a3bc86d84d <unavailable> + 6221
8    libc.so.6                          0x00002b96d3a89460 __libc_start_main + 245
9    tmpl3tka3d2                        0x000055a3bc86d4c9 <unavailable> + 5321

*/
/* stdout = 

*/


/// Write a function that accepts an array of strings as a parameter,
/// deletes the strings that have odd lengths from it,
/// and returns the resulted array with a sorted order,
/// The array is always an array of strings and never an array of numbers,
/// and it may contain duplicates.
/// The order of the array should be ascending by length of each word, and you
/// should return the array sorted by that rule.
/// If two words have the same length, sort the array alphabetically.
/// The function should return an array of strings in sorted order.
/// You may assume that all words will have the same length.
/// For example:
/// >>> sorted_list_sum(lst: ["aa", "a", "aaa"])
/// ["aa"]
/// >>> sorted_list_sum(lst: ["ab", "a", "aaa", "cd"])
/// ["ab", "cd"]
func sorted_list_sum(lst: [String]) -> [String] {
    var new_lst = lst
    for i in 0..<new_lst.count {
        if new_lst[i].count % 2 != 0 {
            new_lst.remove(at: i)
        }
    }
    new_lst.sort()
    return new_lst
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sorted_list_sum(lst: ["aa", "a", "aaa"]) == ["aa"])
assert(sorted_list_sum(lst: ["school", "AI", "asdf", "b"]) == ["AI", "asdf", "school"])
assert(sorted_list_sum(lst: ["d", "b", "c", "a"]) == [] as [String])
assert(sorted_list_sum(lst: ["d", "dcba", "abcd", "a"]) == ["abcd", "dcba"])
assert(sorted_list_sum(lst: ["AI", "ai", "au"]) == ["AI", "ai", "au"])
assert(sorted_list_sum(lst: ["a", "b", "b", "c", "c", "a"]) == [] as [String])
assert(sorted_list_sum(lst: ["aaaa", "bbbb", "dd", "cc"]) == ["cc", "dd", "aaaa", "bbbb"])



// ----------- problem HumanEval_9_rolling_max, completion 85 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1385adbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b13857d2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b13857d2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b13857d213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b13857d1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b13855d1e83 <unavailable> + 188035
6    tmpburnh_0r                        0x000055614ce96ad8 <unavailable> + 6872
7    tmpburnh_0r                        0x000055614ce965ad <unavailable> + 5549
8    libc.so.6                          0x00002b1385cc7460 __libc_start_main + 245
9    tmpburnh_0r                        0x000055614ce962b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        if numbers[i] > max_so_far {
            max_so_far = numbers[i]
        }
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_149_sorted_list_sum, completion 132 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b96d389dc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b96d3594561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b96d3594286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b96d359413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b96d3593bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b96d3393fc3 <unavailable> + 188355
6    tmpl3tka3d2                        0x000055a3bc86e82c <unavailable> + 10284
7    tmpl3tka3d2                        0x000055a3bc86d84d <unavailable> + 6221
8    libc.so.6                          0x00002b96d3a89460 __libc_start_main + 245
9    tmpl3tka3d2                        0x000055a3bc86d4c9 <unavailable> + 5321

*/
/* stdout = 

*/


/// Write a function that accepts an array of strings as a parameter,
/// deletes the strings that have odd lengths from it,
/// and returns the resulted array with a sorted order,
/// The array is always an array of strings and never an array of numbers,
/// and it may contain duplicates.
/// The order of the array should be ascending by length of each word, and you
/// should return the array sorted by that rule.
/// If two words have the same length, sort the array alphabetically.
/// The function should return an array of strings in sorted order.
/// You may assume that all words will have the same length.
/// For example:
/// >>> sorted_list_sum(lst: ["aa", "a", "aaa"])
/// ["aa"]
/// >>> sorted_list_sum(lst: ["ab", "a", "aaa", "cd"])
/// ["ab", "cd"]
func sorted_list_sum(lst: [String]) -> [String] {
    var new_lst = lst
    for i in 0..<new_lst.count {
        if new_lst[i].count % 2 != 0 {
            new_lst.remove(at: i)
        }
    }
    new_lst.sort()
    return new_lst
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sorted_list_sum(lst: ["aa", "a", "aaa"]) == ["aa"])
assert(sorted_list_sum(lst: ["school", "AI", "asdf", "b"]) == ["AI", "asdf", "school"])
assert(sorted_list_sum(lst: ["d", "b", "c", "a"]) == [] as [String])
assert(sorted_list_sum(lst: ["d", "dcba", "abcd", "a"]) == ["abcd", "dcba"])
assert(sorted_list_sum(lst: ["AI", "ai", "au"]) == ["AI", "ai", "au"])
assert(sorted_list_sum(lst: ["a", "b", "b", "c", "c", "a"]) == [] as [String])
assert(sorted_list_sum(lst: ["aaaa", "bbbb", "dd", "cc"]) == ["cc", "dd", "aaaa", "bbbb"])



// ----------- problem HumanEval_9_rolling_max, completion 193 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1a31d56c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1a31a4d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1a31a4d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b1a31a4d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1a31a4cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b1a3184ce83 <unavailable> + 188035
6    tmpajcjyx79                        0x00005557113abae8 <unavailable> + 6888
7    tmpajcjyx79                        0x00005557113ab5ad <unavailable> + 5549
8    libc.so.6                          0x00002b1a31f42460 __libc_start_main + 245
9    tmpajcjyx79                        0x00005557113ab2b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    result.append(max)
    for i in 1..<numbers.count {
        if numbers[i] > max {
            max = numbers[i]
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_9_rolling_max, completion 192 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b504562bc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b5045322561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b5045322286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b504532213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b5045321bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b5045121e83 <unavailable> + 188035
6    tmp3c2ots5w                        0x000056465a096ae8 <unavailable> + 6888
7    tmp3c2ots5w                        0x000056465a0965ad <unavailable> + 5549
8    libc.so.6                          0x00002b5045817460 __libc_start_main + 245
9    tmp3c2ots5w                        0x000056465a0962b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    for i in 0..<numbers.count {
        max = max > numbers[i] ? max : numbers[i]
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 58 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b578739ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b5787095561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b5787095286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b578709513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b5787094bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b5786e94e83 <unavailable> + 188035
6    tmp7t53bnqc                        0x000055fb3f657fd6 <unavailable> + 8150
7    tmp7t53bnqc                        0x000055fb3f657954 <unavailable> + 6484
8    libc.so.6                          0x00002b578758a460 __libc_start_main + 245
9    tmp7t53bnqc                        0x000055fb3f657129 <unavailable> + 4393

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var last = lst[0]
    for num in lst {
        if num < last {
            sorted = false
        }
        last = num
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 74 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ba2849a6c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba28469d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba28469d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba28469d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba28469cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ba28449ce83 <unavailable> + 188035
6    tmp1i3yyrcl                        0x000055c63c7a5af8 <unavailable> + 6904
7    tmp1i3yyrcl                        0x000055c63c7a55bd <unavailable> + 5565
8    libc.so.6                          0x00002ba284b92460 __libc_start_main + 245
9    tmp1i3yyrcl                        0x000055c63c7a52c9 <unavailable> + 4809

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    for number in numbers {
        max = Swift.max(max, number)
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 89 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 88 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ad2048b0c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ad2045a7561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ad2045a7286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ad2045a713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ad2045a6bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ad2043a6e83 <unavailable> + 188035
6    tmphoo0nmhz                        0x000056384653d419 <unavailable> + 9241
7    tmphoo0nmhz                        0x000056384653c4eb <unavailable> + 5355
8    libc.so.6                          0x00002ad204a9c460 __libc_start_main + 245
9    tmphoo0nmhz                        0x000056384653c209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_9_rolling_max, completion 3 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1385adbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b13857d2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b13857d2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b13857d213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b13857d1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b13855d1e83 <unavailable> + 188035
6    tmpburnh_0r                        0x000055614ce96ad8 <unavailable> + 6872
7    tmpburnh_0r                        0x000055614ce965ad <unavailable> + 5549
8    libc.so.6                          0x00002b1385cc7460 __libc_start_main + 245
9    tmpburnh_0r                        0x000055614ce962b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        if numbers[i] > max_so_far {
            max_so_far = numbers[i]
        }
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 174 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 158 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b887adb3c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b887aaaa561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b887aaaa286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b887aaaa13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b887aaa9bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b887a8a9e83 <unavailable> + 188035
6    tmpbndktfr7                        0x000055f1a4e95b58 <unavailable> + 7000
7    tmpbndktfr7                        0x000055f1a4e9562d <unavailable> + 5677
8    libc.so.6                          0x00002b887af9f460 __libc_start_main + 245
9    tmpbndktfr7                        0x000055f1a4e95339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_9_rolling_max, completion 38 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1a31d56c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1a31a4d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1a31a4d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b1a31a4d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1a31a4cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b1a3184ce83 <unavailable> + 188035
6    tmpajcjyx79                        0x00005557113abae8 <unavailable> + 6888
7    tmpajcjyx79                        0x00005557113ab5ad <unavailable> + 5549
8    libc.so.6                          0x00002b1a31f42460 __libc_start_main + 245
9    tmpajcjyx79                        0x00005557113ab2b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    result.append(max)
    for i in 1..<numbers.count {
        if numbers[i] > max {
            max = numbers[i]
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 152 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 158 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 136 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002aeb63431c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aeb63128561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aeb63128286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aeb6312813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aeb63127bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002aeb62f27e83 <unavailable> + 188035
6    tmpfg_mhb9h                        0x000055cbfebc0042 <unavailable> + 8258
7    tmpfg_mhb9h                        0x000055cbfebbf9d4 <unavailable> + 6612
8    libc.so.6                          0x00002aeb6361d460 __libc_start_main + 245
9    tmpfg_mhb9h                        0x000055cbfebbf1a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            return false
        }
        prev = lst[i]
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_149_sorted_list_sum, completion 55 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ade247d3c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ade244ca561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ade244ca286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ade244ca13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ade244c9bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ade242c9fc3 <unavailable> + 188355
6    tmpvzps4c7k                        0x000055ab388c37b5 <unavailable> + 10165
7    tmpvzps4c7k                        0x000055ab388c27cd <unavailable> + 6093
8    libc.so.6                          0x00002ade249bf460 __libc_start_main + 245
9    tmpvzps4c7k                        0x000055ab388c2449 <unavailable> + 5193

*/
/* stdout = 

*/


/// Write a function that accepts an array of strings as a parameter,
/// deletes the strings that have odd lengths from it,
/// and returns the resulted array with a sorted order,
/// The array is always an array of strings and never an array of numbers,
/// and it may contain duplicates.
/// The order of the array should be ascending by length of each word, and you
/// should return the array sorted by that rule.
/// If two words have the same length, sort the array alphabetically.
/// The function should return an array of strings in sorted order.
/// You may assume that all words will have the same length.
/// For example:
/// >>> sorted_list_sum(lst: ["aa", "a", "aaa"])
/// ["aa"]
/// >>> sorted_list_sum(lst: ["ab", "a", "aaa", "cd"])
/// ["ab", "cd"]
func sorted_list_sum(lst: [String]) -> [String] {
    var new_lst = lst
    for i in 0..<new_lst.count {
        if new_lst[i].count % 2 != 0 {
            new_lst.remove(at: i)
        }
    }
    return new_lst.sorted()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sorted_list_sum(lst: ["aa", "a", "aaa"]) == ["aa"])
assert(sorted_list_sum(lst: ["school", "AI", "asdf", "b"]) == ["AI", "asdf", "school"])
assert(sorted_list_sum(lst: ["d", "b", "c", "a"]) == [] as [String])
assert(sorted_list_sum(lst: ["d", "dcba", "abcd", "a"]) == ["abcd", "dcba"])
assert(sorted_list_sum(lst: ["AI", "ai", "au"]) == ["AI", "ai", "au"])
assert(sorted_list_sum(lst: ["a", "b", "b", "c", "c", "a"]) == [] as [String])
assert(sorted_list_sum(lst: ["aaaa", "bbbb", "dd", "cc"]) == ["cc", "dd", "aaaa", "bbbb"])



// ----------- problem HumanEval_126_is_sorted, completion 50 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_37_sort_even, completion 34 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b7fb16a0c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7fb1397561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7fb1397286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7fb139713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7fb1396bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b7fb1196e83 <unavailable> + 188035
6    tmpzmkc2ue1                        0x000055ce6e6e4071 <unavailable> + 8305
7    tmpzmkc2ue1                        0x000055ce6e6e37b4 <unavailable> + 6068
8    libc.so.6                          0x00002b7fb188c460 __libc_start_main + 245
9    tmpzmkc2ue1                        0x000055ce6e6e3499 <unavailable> + 5273

*/
/* stdout = 

*/


/// This function takes an array l and returns an array l' such that
/// l' is identical to l in the odd indicies, while its values at the even indicies are equal
/// to the values of the even indicies of l, but sorted.
/// >>> sort_even(l: [1, 2, 3])
/// [1, 2, 3]
/// >>> sort_even(l: [5, 6, 3, 4])
/// [3, 6, 5, 4]
func sort_even(l: [Int]) -> [Int] {
    var evens = [Int]()
    var odds = [Int]()
    var result = [Int]()
    for (index, value) in l.enumerated() {
        if index % 2 == 0 {
            odds.append(value)
        } else {
            evens.append(value)
        }
    }
    evens.sort()
    for (index, value) in odds.enumerated() {
        result.append(value)
        result.append(evens[index])
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_even(l: [1, 2, 3]) == [1, 2, 3])
assert(sort_even(l: [5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == [-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123])
assert(sort_even(l: [5, 8, -12, 4, 23, 2, 3, 11, 12, -10]) == [-12, 8, 3, 4, 5, 2, 12, 11, 23, -10])



// ----------- problem HumanEval_126_is_sorted, completion 20 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_120_maximum, completion 173 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002aebddd7fc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aebdda76561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aebdda76286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aebdda7613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aebdda75bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002aebdd875e83 <unavailable> + 188035
6    tmppbb1u4k7                        0x000055eb0b838876 <unavailable> + 10358
7    tmppbb1u4k7                        0x000055eb0b8384f6 <unavailable> + 9462
8    libc.so.6                          0x00002aebddf6b460 __libc_start_main + 245
9    tmppbb1u4k7                        0x000055eb0b837469 <unavailable> + 5225

*/
/* stdout = 

*/


/// Given an array arr of integers and a positive integer k, return a sorted array 
/// of length k with the maximum k numbers in arr.
/// Example 1:
/// >>> maximum(arr: [-3, -4, 5], k: 3)
/// [-4, -3, 5]
/// Example 2:
/// >>> maximum(arr: [4, -4, 4], k: 2)
/// [4, 4]
/// Example 3:
/// >>> maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1)
/// [2]
/// Note:
/// 1. The length of the array will be in the range of [1, 1000].
/// 2. The elements in the array will be in the range of [-1000, 1000].
/// 3. 0 <= k <= len(arr)
func maximum(arr: [Int], k: Int) -> [Int] {
    var result = [Int]()
    var temp = [Int]()
    for i in 0..<arr.count {
        if temp.count < k {
            temp.append(arr[i])
            temp.sort()
        } else {
            if arr[i] > temp[0] {
                temp.removeFirst()
                temp.append(arr[i])
                temp.sort()
            }
        }
    }
    result = temp
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(maximum(arr: [-3, -4, 5], k: 3) == [-4, -3, 5])
assert(maximum(arr: [4, -4, 4], k: 2) == [4, 4])
assert(maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1) == [2])
assert(maximum(arr: [123, -123, 20, 0, 1, 2, -3], k: 3) == [2, 20, 123])
assert(maximum(arr: [-123, 20, 0, 1, 2, -3], k: 4) == [0, 1, 2, 20])
assert(maximum(arr: [5, 15, 0, 3, -13, -8, 0], k: 7) == [-13, -8, 0, 0, 3, 5, 15])
assert(maximum(arr: [-1, 0, 2, 5, 3, -10], k: 2) == [3, 5])
assert(maximum(arr: [1, 0, 5, -7], k: 1) == [5])
assert(maximum(arr: [4, -4], k: 2) == [-4, 4])
assert(maximum(arr: [-10, 10], k: 2) == [-10, 10])
assert(maximum(arr: [1, 2, 3, -23, 243, -400, 0], k: 0) == [] as [Int])



// ----------- problem HumanEval_126_is_sorted, completion 191 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b4f8b798c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b4f8b48f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b4f8b48f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b4f8b48f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b4f8b48ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b4f8b28ee83 <unavailable> + 188035
6    tmpvnxjb_eu                        0x0000564a1439405b <unavailable> + 8283
7    tmpvnxjb_eu                        0x0000564a143939d4 <unavailable> + 6612
8    libc.so.6                          0x00002b4f8b984460 __libc_start_main + 245
9    tmpvnxjb_eu                        0x0000564a143931a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            return false
        }
        prev = lst[i]
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_135_can_arrange, completion 164 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b854bd7bc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b854ba72561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b854ba72286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b854ba7213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b854ba71bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b854b871e83 <unavailable> + 188035
6    tmpy3f8wczz                        0x000056369252a932 <unavailable> + 6450
7    tmpy3f8wczz                        0x000056369252a81c <unavailable> + 6172
8    libc.so.6                          0x00002b854bf67460 __libc_start_main + 245
9    tmpy3f8wczz                        0x000056369252a1a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Create a function which returns the largest index of an element which
/// is not greater than or equal to the element immediately preceding it. If
/// no such element exists then return -1. The given array will not contain
/// duplicate values.
/// Examples:
/// >>> can_arrange(arr: [1, 2, 4, 3, 5])
/// 3
/// >>> can_arrange(arr: [1, 2, 3])
/// -1
func can_arrange(arr: [Int]) -> Int {
    var max = arr[0]
    var index = -1
    for i in 1..<arr.count {
        if arr[i] < max {
            index = i
        } else {
            max = arr[i]
        }
    }
    return index
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(can_arrange(arr: [1, 2, 4, 3, 5]) == 3)
assert(can_arrange(arr: [1, 2, 4, 5]) == -1)
assert(can_arrange(arr: [1, 4, 2, 5, 6, 7, 8, 9, 10]) == 2)
assert(can_arrange(arr: [4, 8, 5, 7, 3]) == 4)
assert(can_arrange(arr: [] as [Int]) == -1)



// ----------- problem HumanEval_130_tri, completion 100 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ad2048b0c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ad2045a7561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ad2045a7286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ad2045a713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ad2045a6bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ad2043a6e83 <unavailable> + 188035
6    tmphoo0nmhz                        0x000056384653d419 <unavailable> + 9241
7    tmphoo0nmhz                        0x000056384653c4eb <unavailable> + 5355
8    libc.so.6                          0x00002ad204a9c460 __libc_start_main + 245
9    tmphoo0nmhz                        0x000056384653c209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_9_rolling_max, completion 77 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1a31d56c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1a31a4d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1a31a4d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b1a31a4d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1a31a4cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b1a3184ce83 <unavailable> + 188035
6    tmpajcjyx79                        0x00005557113abae8 <unavailable> + 6888
7    tmpajcjyx79                        0x00005557113ab5ad <unavailable> + 5549
8    libc.so.6                          0x00002b1a31f42460 __libc_start_main + 245
9    tmpajcjyx79                        0x00005557113ab2b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    result.append(max)
    for i in 1..<numbers.count {
        if numbers[i] > max {
            max = numbers[i]
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_109_move_one_ball, completion 172 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ad1a83aac80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ad1a80a1561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ad1a80a1286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ad1a80a113c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ad1a80a0bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ad1a7ea0e83 <unavailable> + 188035
6    tmpm4rl1dba                        0x00005604f26dca9b <unavailable> + 6811
7    tmpm4rl1dba                        0x00005604f26dc4d5 <unavailable> + 5333
8    libc.so.6                          0x00002ad1a8596460 __libc_start_main + 245
9    tmpm4rl1dba                        0x00005604f26dc1a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// We have an array 'arr' of N integers arr[1], arr[2], ..., arr[N].The
/// numbers in the array will be randomly ordered. Your task is to determine if
/// it is possible to get an array sorted in non-decreasing order by performing 
/// the following operation on the given array:
/// You are allowed to perform right shift operation any number of times.
/// One right shift operation means shifting all elements of the array by one
/// position in the right direction. The last element of the array will be moved to
/// the starting position in the array i.e. 0th index. 
/// If it is possible to obtain the sorted array by performing the above operation
/// then return true else return false.
/// If the given array is empty then return true.
/// Note: The given array is guaranteed to have unique elements.
/// For Example:
/// >>> move_one_ball(arr: [3, 4, 5, 1, 2])
/// true
/// Explanation: By performin 2 right shift operations, non-decreasing order can
/// be achieved for the given array.
/// >>> move_one_ball(arr: [3, 5, 4, 1, 2])
/// false
/// Explanation:It is not possible to get non-decreasing order for the given
/// array by performing any number of right shift operations.
func move_one_ball(arr: [Int]) -> Bool {
    guard arr.count > 0 else { return true }
    var arr = arr
    var count = 0
    for i in 0..<arr.count {
        if arr[i] > arr[i+1] {
            count += 1
        }
    }
    return count <= 1
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(move_one_ball(arr: [3, 4, 5, 1, 2]) == true)
assert(move_one_ball(arr: [3, 5, 10, 1, 2]) == true)
assert(move_one_ball(arr: [4, 3, 1, 2]) == false)
assert(move_one_ball(arr: [3, 5, 4, 1, 2]) == false)
assert(move_one_ball(arr: [] as [Int]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 93 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b887adb3c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b887aaaa561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b887aaaa286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b887aaaa13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b887aaa9bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b887a8a9e83 <unavailable> + 188035
6    tmpbndktfr7                        0x000055f1a4e95b58 <unavailable> + 7000
7    tmpbndktfr7                        0x000055f1a4e9562d <unavailable> + 5677
8    libc.so.6                          0x00002b887af9f460 __libc_start_main + 245
9    tmpbndktfr7                        0x000055f1a4e95339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_130_tri, completion 138 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002aac01482c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aac01179561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aac01179286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aac0117913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aac01178bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002aac00f78e83 <unavailable> + 188035
6    tmp0oi1klnf                        0x0000563f4e17b843 <unavailable> + 10307
7    tmp0oi1klnf                        0x0000563f4e17a6db <unavailable> + 5851
8    libc.so.6                          0x00002aac0166e460 __libc_start_main + 245
9    tmp0oi1klnf                        0x0000563f4e17a3f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    if n < 3 {
        return Array(result[0...n])
    }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_9_rolling_max, completion 60 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b887adb3c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b887aaaa561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b887aaaa286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b887aaaa13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b887aaa9bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b887a8a9e83 <unavailable> + 188035
6    tmpbndktfr7                        0x000055f1a4e95b58 <unavailable> + 7000
7    tmpbndktfr7                        0x000055f1a4e9562d <unavailable> + 5677
8    libc.so.6                          0x00002b887af9f460 __libc_start_main + 245
9    tmpbndktfr7                        0x000055f1a4e95339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_130_tri, completion 113 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b65834efc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b65831e6561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b65831e6286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b65831e613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b65831e5bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b6582fe5e83 <unavailable> + 188035
6    tmp8v1gq5gk                        0x000055ae172f667a <unavailable> + 9850
7    tmp8v1gq5gk                        0x000055ae172f56db <unavailable> + 5851
8    libc.so.6                          0x00002b65836db460 __libc_start_main + 245
9    tmp8v1gq5gk                        0x000055ae172f53f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    guard n > 2 else { return Array(result[0...n]) }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_9_rolling_max, completion 195 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1385adbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b13857d2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b13857d2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b13857d213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b13857d1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b13855d1e83 <unavailable> + 188035
6    tmpburnh_0r                        0x000055614ce96ad8 <unavailable> + 6872
7    tmpburnh_0r                        0x000055614ce965ad <unavailable> + 5549
8    libc.so.6                          0x00002b1385cc7460 __libc_start_main + 245
9    tmpburnh_0r                        0x000055614ce962b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        if numbers[i] > max_so_far {
            max_so_far = numbers[i]
        }
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 143 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002acdd8845c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002acdd853c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002acdd853c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002acdd853c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002acdd853bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002acdd833be83 <unavailable> + 188035
6    tmp0vt2toem                        0x0000557c8c9b9056 <unavailable> + 8278
7    tmp0vt2toem                        0x0000557c8c9b89d4 <unavailable> + 6612
8    libc.so.6                          0x00002acdd8a31460 __libc_start_main + 245
9    tmp0vt2toem                        0x0000557c8c9b81a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var previous = lst[0]
    for i in 1..<lst.count {
        if lst[i] < previous {
            sorted = false
        }
        previous = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 92 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 188 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1385adbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b13857d2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b13857d2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b13857d213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b13857d1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b13855d1e83 <unavailable> + 188035
6    tmpburnh_0r                        0x000055614ce96ad8 <unavailable> + 6872
7    tmpburnh_0r                        0x000055614ce965ad <unavailable> + 5549
8    libc.so.6                          0x00002b1385cc7460 __libc_start_main + 245
9    tmpburnh_0r                        0x000055614ce962b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        if numbers[i] > max_so_far {
            max_so_far = numbers[i]
        }
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 142 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002aeb63431c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aeb63128561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aeb63128286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aeb6312813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aeb63127bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002aeb62f27e83 <unavailable> + 188035
6    tmpfg_mhb9h                        0x000055cbfebc0042 <unavailable> + 8258
7    tmpfg_mhb9h                        0x000055cbfebbf9d4 <unavailable> + 6612
8    libc.so.6                          0x00002aeb6361d460 __libc_start_main + 245
9    tmpfg_mhb9h                        0x000055cbfebbf1a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            return false
        }
        prev = lst[i]
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 55 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ae889c51c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae889948561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae889948286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae88994813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae889947bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ae889747e83 <unavailable> + 188035
6    tmpyix3dkrm                        0x000055db61fb1444 <unavailable> + 9284
7    tmpyix3dkrm                        0x000055db61fb04eb <unavailable> + 5355
8    libc.so.6                          0x00002ae889e3d460 __libc_start_main + 245
9    tmpyix3dkrm                        0x000055db61fb0209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    guard n > 2 else { return result }
    for i in 3...n {
        result.append(i % 2 == 0 ? 1 + i / 2 : result[i - 1] + result[i - 2] + result[i + 1])
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 59 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 0 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002aeb63431c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aeb63128561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aeb63128286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aeb6312813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aeb63127bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002aeb62f27e83 <unavailable> + 188035
6    tmpfg_mhb9h                        0x000055cbfebc0042 <unavailable> + 8258
7    tmpfg_mhb9h                        0x000055cbfebbf9d4 <unavailable> + 6612
8    libc.so.6                          0x00002aeb6361d460 __libc_start_main + 245
9    tmpfg_mhb9h                        0x000055cbfebbf1a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            return false
        }
        prev = lst[i]
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 81 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_37_sort_even, completion 173 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002afc4742dc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afc47124561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afc47124286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afc4712413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afc47123bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002afc46f23e83 <unavailable> + 188035
6    tmp0relinu6                        0x0000557acd78e071 <unavailable> + 8305
7    tmp0relinu6                        0x0000557acd78d7b4 <unavailable> + 6068
8    libc.so.6                          0x00002afc47619460 __libc_start_main + 245
9    tmp0relinu6                        0x0000557acd78d499 <unavailable> + 5273

*/
/* stdout = 

*/


/// This function takes an array l and returns an array l' such that
/// l' is identical to l in the odd indicies, while its values at the even indicies are equal
/// to the values of the even indicies of l, but sorted.
/// >>> sort_even(l: [1, 2, 3])
/// [1, 2, 3]
/// >>> sort_even(l: [5, 6, 3, 4])
/// [3, 6, 5, 4]
func sort_even(l: [Int]) -> [Int] {
    var l_even = [Int]()
    var l_odd = [Int]()
    for (index, value) in l.enumerated() {
        if index % 2 == 0 {
            l_even.append(value)
        } else {
            l_odd.append(value)
        }
    }
    l_even.sort()
    var l_prime = [Int]()
    for (index, value) in l_even.enumerated() {
        l_prime.append(value)
        l_prime.append(l_odd[index])
    }
    return l_prime
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_even(l: [1, 2, 3]) == [1, 2, 3])
assert(sort_even(l: [5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == [-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123])
assert(sort_even(l: [5, 8, -12, 4, 23, 2, 3, 11, 12, -10]) == [-12, 8, 3, 4, 5, 2, 12, 11, 23, -10])



// ----------- problem HumanEval_90_next_smallest, completion 160 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ad11210bc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ad111e02561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ad111e02286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ad111e0213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ad111e01bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ad111c01e83 <unavailable> + 188035
6    tmpwwixtz5f                        0x000055a7f2fece98 <unavailable> + 7832
7    tmpwwixtz5f                        0x000055a7f2fec7e8 <unavailable> + 6120
8    libc.so.6                          0x00002ad1122f7460 __libc_start_main + 245
9    tmpwwixtz5f                        0x000055a7f2fec1a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// You are given an array of integers.
/// Write a function next_smallest() that returns the 2nd smallest element of the array.
/// Return nil if there is no such element.
/// >>> next_smallest(lst: [1, 2, 3, 4, 5])
/// 2
/// >>> next_smallest(lst: [5, 1, 4, 3, 2])
/// 2
/// >>> next_smallest(lst: [] as [Int])
/// nil
/// >>> next_smallest(lst: [1, 1])
/// nil
func next_smallest(lst: [Int]) -> Int? {
    var min = lst[0]
    var secondMin = Int.max
    for i in 1..<lst.count {
        if lst[i] < min {
            secondMin = min
            min = lst[i]
        } else if lst[i] < secondMin {
            secondMin = lst[i]
        }
    }
    return secondMin == Int.max ? nil : secondMin
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(next_smallest(lst: [1, 2, 3, 4, 5]) == 2)
assert(next_smallest(lst: [5, 1, 4, 3, 2]) == 2)
assert(next_smallest(lst: [] as [Int]) == nil)
assert(next_smallest(lst: [1, 1]) == nil)
assert(next_smallest(lst: [1, 1, 1, 1, 0]) == 1)
assert(next_smallest(lst: [1, 1]) == nil)
assert(next_smallest(lst: [-35, 34, 12, -45]) == -35)



// ----------- problem HumanEval_126_is_sorted, completion 42 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 112 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b887adb3c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b887aaaa561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b887aaaa286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b887aaaa13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b887aaa9bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b887a8a9e83 <unavailable> + 188035
6    tmpbndktfr7                        0x000055f1a4e95b58 <unavailable> + 7000
7    tmpbndktfr7                        0x000055f1a4e9562d <unavailable> + 5677
8    libc.so.6                          0x00002b887af9f460 __libc_start_main + 245
9    tmpbndktfr7                        0x000055f1a4e95339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 109 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002aeb63431c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aeb63128561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aeb63128286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aeb6312813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aeb63127bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002aeb62f27e83 <unavailable> + 188035
6    tmpfg_mhb9h                        0x000055cbfebc0042 <unavailable> + 8258
7    tmpfg_mhb9h                        0x000055cbfebbf9d4 <unavailable> + 6612
8    libc.so.6                          0x00002aeb6361d460 __libc_start_main + 245
9    tmpfg_mhb9h                        0x000055cbfebbf1a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            return false
        }
        prev = lst[i]
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 156 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 53 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ad2048b0c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ad2045a7561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ad2045a7286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ad2045a713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ad2045a6bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ad2043a6e83 <unavailable> + 188035
6    tmphoo0nmhz                        0x000056384653d419 <unavailable> + 9241
7    tmphoo0nmhz                        0x000056384653c4eb <unavailable> + 5355
8    libc.so.6                          0x00002ad204a9c460 __libc_start_main + 245
9    tmphoo0nmhz                        0x000056384653c209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_9_rolling_max, completion 107 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1385adbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b13857d2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b13857d2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b13857d213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b13857d1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b13855d1e83 <unavailable> + 188035
6    tmpburnh_0r                        0x000055614ce96ad8 <unavailable> + 6872
7    tmpburnh_0r                        0x000055614ce965ad <unavailable> + 5549
8    libc.so.6                          0x00002b1385cc7460 __libc_start_main + 245
9    tmpburnh_0r                        0x000055614ce962b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        if numbers[i] > max_so_far {
            max_so_far = numbers[i]
        }
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_9_rolling_max, completion 110 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b5a2296cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b5a22663561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b5a22663286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b5a2266313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b5a22662bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b5a22462e83 <unavailable> + 188035
6    tmpf5224ffh                        0x000055a73c59ab68 <unavailable> + 7016
7    tmpf5224ffh                        0x000055a73c59a62d <unavailable> + 5677
8    libc.so.6                          0x00002b5a22b58460 __libc_start_main + 245
9    tmpf5224ffh                        0x000055a73c59a339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max_so_far = numbers[0]
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 95 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 56 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002aac01482c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aac01179561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aac01179286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aac0117913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aac01178bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002aac00f78e83 <unavailable> + 188035
6    tmp0oi1klnf                        0x0000563f4e17b843 <unavailable> + 10307
7    tmp0oi1klnf                        0x0000563f4e17a6db <unavailable> + 5851
8    libc.so.6                          0x00002aac0166e460 __libc_start_main + 245
9    tmp0oi1klnf                        0x0000563f4e17a3f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    if n < 3 {
        return Array(result[0...n])
    }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_130_tri, completion 135 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b50fa965c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b50fa65c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b50fa65c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b50fa65c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b50fa65bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b50fa45be83 <unavailable> + 188035
6    tmpp3uraqpp                        0x000055f4f37ff454 <unavailable> + 9300
7    tmpp3uraqpp                        0x000055f4f37fe4eb <unavailable> + 5355
8    libc.so.6                          0x00002b50fab51460 __libc_start_main + 245
9    tmpp3uraqpp                        0x000055f4f37fe209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result: [Int] = [1, 3, 2]
    guard n > 2 else { return result }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_135_can_arrange, completion 6 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b854bd7bc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b854ba72561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b854ba72286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b854ba7213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b854ba71bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b854b871e83 <unavailable> + 188035
6    tmpy3f8wczz                        0x000056369252a932 <unavailable> + 6450
7    tmpy3f8wczz                        0x000056369252a81c <unavailable> + 6172
8    libc.so.6                          0x00002b854bf67460 __libc_start_main + 245
9    tmpy3f8wczz                        0x000056369252a1a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Create a function which returns the largest index of an element which
/// is not greater than or equal to the element immediately preceding it. If
/// no such element exists then return -1. The given array will not contain
/// duplicate values.
/// Examples:
/// >>> can_arrange(arr: [1, 2, 4, 3, 5])
/// 3
/// >>> can_arrange(arr: [1, 2, 3])
/// -1
func can_arrange(arr: [Int]) -> Int {
    var max = arr[0]
    var index = -1
    for i in 1..<arr.count {
        if arr[i] < max {
            index = i
        } else {
            max = arr[i]
        }
    }
    return index
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(can_arrange(arr: [1, 2, 4, 3, 5]) == 3)
assert(can_arrange(arr: [1, 2, 4, 5]) == -1)
assert(can_arrange(arr: [1, 4, 2, 5, 6, 7, 8, 9, 10]) == 2)
assert(can_arrange(arr: [4, 8, 5, 7, 3]) == 4)
assert(can_arrange(arr: [] as [Int]) == -1)



// ----------- problem HumanEval_126_is_sorted, completion 54 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b4a68dc6c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b4a68abd561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b4a68abd286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b4a68abd13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b4a68abcbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b4a688bce83 <unavailable> + 188035
6    tmpnynbpdx3                        0x0000562f219ad056 <unavailable> + 8278
7    tmpnynbpdx3                        0x0000562f219ac9d4 <unavailable> + 6612
8    libc.so.6                          0x00002b4a68fb2460 __libc_start_main + 245
9    tmpnynbpdx3                        0x0000562f219ac1a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var last = lst[0]
    for i in 1..<lst.count {
        if lst[i] < last {
            sorted = false
        }
        last = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_119_match_parens, completion 110 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b8ec984dc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b8ec9544561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b8ec9544286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b8ec954413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b8ec9543bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b8ec9343fc3 <unavailable> + 188355
6    tmpm1vg7uc3                        0x000055c159d1fa17 <unavailable> + 10775
7    tmpm1vg7uc3                        0x000055c159d1e735 <unavailable> + 5941
8    libc.so.6                          0x00002b8ec9a39460 __libc_start_main + 245
9    tmpm1vg7uc3                        0x000055c159d1e3d9 <unavailable> + 5081

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var str = ""
    while lst.count > 0 {
        if lst[0].count > lst[1].count {
            str += lst[0]
            lst.remove(at: 0)
        } else {
            str += lst[1]
            lst.remove(at: 1)
        }
    }
    var count = 0
    for c in str {
        if c == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            return "No"
        }
    }
    return "Yes"
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_10_make_palindrome, completion 43 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ba4ffc01c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba4ff8f8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba4ff8f8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba4ff8f813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba4ff8f7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ba4ff6f80a3 <unavailable> + 188579
6    tmpm1kozu4j                        0x000055f8d2c1d5aa <unavailable> + 9642
7    tmpm1kozu4j                        0x000055f8d2c1c861 <unavailable> + 6241
8    libc.so.6                          0x00002ba4ffded460 __libc_start_main + 245
9    tmpm1kozu4j                        0x000055f8d2c1c389 <unavailable> + 5001

*/
/* stdout = 

*/


/// Find the shortest palindrome that begins with a supplied string.
/// Algorithm idea is simple:
/// - Find the longest postfix of supplied string that is a palindrome.
/// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
/// >>> make_palindrome(string: "")
/// ""
/// >>> make_palindrome(string: "cat")
/// "catac"
/// >>> make_palindrome(string: "cata")
/// "catac"
func make_palindrome(string: String) -> String {
    let string_length = string.count
    if string_length == 0 {
        return ""
    }
    let string_array = Array(string)
    var longest_palindrome_length = 0
    var longest_palindrome_index = 0
    for i in 0..<string_length {
        var palindrome_length = 0
        var palindrome_index = 0
        var j = 0
        while i - j >= 0 && i + j < string_length && string_array[i - j] == string_array[i + j] {
            palindrome_length = 2 * j + 1
            palindrome_index = i - j
            j += 1
        }
        if palindrome_length > longest_palindrome_length {
            longest_palindrome_length = palindrome_length
            longest_palindrome_index = palindrome_index
        }
        palindrome_length = 0
        palindrome_index = 0
        j = 0
        while i - j >= 0 && i + j + 1 < string_length && string_array[i - j] == string_array[i + j + 1] {
            palindrome_length = 2 * j + 2
            palindrome_index = i - j
            j += 1
        }
        if palindrome_length > longest_palindrome_length {
            longest_palindrome_length = palindrome_length
            longest_palindrome_index = palindrome_index
        }
    }
    var result = string
    for i in 0..<string_length - longest_palindrome_length {
        result.append(string_array[longest_palindrome_index + longest_palindrome_length - i - 1])
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(make_palindrome(string: "") == "")
assert(make_palindrome(string: "x") == "x")
assert(make_palindrome(string: "xyz") == "xyzyx")
assert(make_palindrome(string: "xyx") == "xyx")
assert(make_palindrome(string: "jerry") == "jerryrrej")



// ----------- problem HumanEval_126_is_sorted, completion 39 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 104 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1385adbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b13857d2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b13857d2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b13857d213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b13857d1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b13855d1e83 <unavailable> + 188035
6    tmpburnh_0r                        0x000055614ce96ad8 <unavailable> + 6872
7    tmpburnh_0r                        0x000055614ce965ad <unavailable> + 5549
8    libc.so.6                          0x00002b1385cc7460 __libc_start_main + 245
9    tmpburnh_0r                        0x000055614ce962b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        if numbers[i] > max_so_far {
            max_so_far = numbers[i]
        }
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_9_rolling_max, completion 187 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b887adb3c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b887aaaa561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b887aaaa286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b887aaaa13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b887aaa9bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b887a8a9e83 <unavailable> + 188035
6    tmpbndktfr7                        0x000055f1a4e95b58 <unavailable> + 7000
7    tmpbndktfr7                        0x000055f1a4e9562d <unavailable> + 5677
8    libc.so.6                          0x00002b887af9f460 __libc_start_main + 245
9    tmpbndktfr7                        0x000055f1a4e95339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 16 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 77 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ad8f305ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ad8f2d55561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ad8f2d55286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ad8f2d5513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ad8f2d54bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ad8f2b54e83 <unavailable> + 188035
6    tmprqnjmoat                        0x000055d0fc1b406c <unavailable> + 8300
7    tmprqnjmoat                        0x000055d0fc1b39d4 <unavailable> + 6612
8    libc.so.6                          0x00002ad8f324a460 __libc_start_main + 245
9    tmprqnjmoat                        0x000055d0fc1b31a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    var count = 1
    for i in 1..<lst.count {
        if lst[i] == prev {
            count += 1
        } else {
            count = 1
        }
        if count > 1 {
            return false
        }
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_70_strange_sort_list, completion 40 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Array.swift:1331: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ae9ac91ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae9ac615561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae9ac615286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae9ac61513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae9ac614bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftCore.so                    0x00002ae9ac602018 <unavailable> + 1355800
6    tmp1rk2td04                        0x00005624e0f517f9 <unavailable> + 10233
7    tmp1rk2td04                        0x00005624e0f5063c <unavailable> + 5692
8    libc.so.6                          0x00002ae9acb0a460 __libc_start_main + 245
9    tmp1rk2td04                        0x00005624e0f50319 <unavailable> + 4889

*/
/* stdout = 

*/


/// Given array of integers, return array in strange order.
/// Strange sorting, is when you start with the minimum value,
/// then maximum of the remaining integers, then minimum and so on.
/// Examples:
/// >>> strange_sort_list(lst: [1, 2, 3, 4])
/// [1, 4, 2, 3]
/// >>> strange_sort_list(lst: [5, 5, 5, 5])
/// [5, 5, 5, 5]
/// >>> strange_sort_list(lst: [] as [Int])
/// [] as [Int]
func strange_sort_list(lst: [Int]) -> [Int] {
    if lst.count <= 1 {
        return lst
    }
    var lst = lst
    var result: [Int] = []
    var min = lst.min()!
    var max = lst.max()!
    var minIndex = lst.index(of: min)!
    var maxIndex = lst.index(of: max)!
    while lst.count > 0 {
        result.append(min)
        lst.remove(at: minIndex)
        if lst.count > 0 {
            result.append(max)
            lst.remove(at: maxIndex)
        }
        if lst.count > 0 {
            min = lst.min()!
            max = lst.max()!
            minIndex = lst.index(of: min)!
            maxIndex = lst.index(of: max)!
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strange_sort_list(lst: [1, 2, 3, 4]) == [1, 4, 2, 3])
assert(strange_sort_list(lst: [5, 6, 7, 8, 9]) == [5, 9, 6, 8, 7])
assert(strange_sort_list(lst: [1, 2, 3, 4, 5]) == [1, 5, 2, 4, 3])
assert(strange_sort_list(lst: [5, 6, 7, 8, 9, 1]) == [1, 9, 5, 8, 6, 7])
assert(strange_sort_list(lst: [5, 5, 5, 5]) == [5, 5, 5, 5])
assert(strange_sort_list(lst: [] as [Int]) == [] as [Int])
assert(strange_sort_list(lst: [1, 2, 3, 4, 5, 6, 7, 8]) == [1, 8, 2, 7, 3, 6, 4, 5])
assert(strange_sort_list(lst: [0, 2, 2, 2, 5, 5, -5, -5]) == [-5, 5, -5, 5, 0, 2, 2, 2])
assert(strange_sort_list(lst: [111111]) == [111111])



// ----------- problem HumanEval_9_rolling_max, completion 102 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1385adbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b13857d2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b13857d2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b13857d213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b13857d1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b13855d1e83 <unavailable> + 188035
6    tmpburnh_0r                        0x000055614ce96ad8 <unavailable> + 6872
7    tmpburnh_0r                        0x000055614ce965ad <unavailable> + 5549
8    libc.so.6                          0x00002b1385cc7460 __libc_start_main + 245
9    tmpburnh_0r                        0x000055614ce962b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        if numbers[i] > max_so_far {
            max_so_far = numbers[i]
        }
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_9_rolling_max, completion 143 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ac302de9c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ac302ae0561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ac302ae0286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ac302ae013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ac302adfbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ac3028dfe83 <unavailable> + 188035
6    tmpedc3tx66                        0x0000562e7e25ab68 <unavailable> + 7016
7    tmpedc3tx66                        0x0000562e7e25a62d <unavailable> + 5677
8    libc.so.6                          0x00002ac302fd5460 __libc_start_main + 245
9    tmpedc3tx66                        0x0000562e7e25a339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var current_max = numbers[0]
    result.append(current_max)
    for i in 1..<numbers.count {
        current_max = max(current_max, numbers[i])
        result.append(current_max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_130_tri, completion 89 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b65b1890c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b65b1587561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b65b1587286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b65b158713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b65b1586bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b65b1386e83 <unavailable> + 188035
6    tmpk57ye95c                        0x000055c2c4b6284f <unavailable> + 10319
7    tmpk57ye95c                        0x000055c2c4b616db <unavailable> + 5851
8    libc.so.6                          0x00002b65b1a7c460 __libc_start_main + 245
9    tmpk57ye95c                        0x000055c2c4b613f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    if n <= 2 {
        return Array(result[0...n])
    }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 145 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 186 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b4f8b798c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b4f8b48f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b4f8b48f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b4f8b48f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b4f8b48ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b4f8b28ee83 <unavailable> + 188035
6    tmpvnxjb_eu                        0x0000564a1439405b <unavailable> + 8283
7    tmpvnxjb_eu                        0x0000564a143939d4 <unavailable> + 6612
8    libc.so.6                          0x00002b4f8b984460 __libc_start_main + 245
9    tmpvnxjb_eu                        0x0000564a143931a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            return false
        }
        prev = lst[i]
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_37_sort_even, completion 153 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b8662630c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b8662327561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b8662327286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b866232713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b8662326bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b8662126e83 <unavailable> + 188035
6    tmpylv33sv3                        0x00005579c949c071 <unavailable> + 8305
7    tmpylv33sv3                        0x00005579c949b7b4 <unavailable> + 6068
8    libc.so.6                          0x00002b866281c460 __libc_start_main + 245
9    tmpylv33sv3                        0x00005579c949b499 <unavailable> + 5273

*/
/* stdout = 

*/


/// This function takes an array l and returns an array l' such that
/// l' is identical to l in the odd indicies, while its values at the even indicies are equal
/// to the values of the even indicies of l, but sorted.
/// >>> sort_even(l: [1, 2, 3])
/// [1, 2, 3]
/// >>> sort_even(l: [5, 6, 3, 4])
/// [3, 6, 5, 4]
func sort_even(l: [Int]) -> [Int] {
    var l_even = [Int]()
    var l_odd = [Int]()
    for (index, value) in l.enumerated() {
        if index % 2 == 0 {
            l_even.append(value)
        } else {
            l_odd.append(value)
        }
    }
    l_even.sort()
    var l_sorted = [Int]()
    for (index, value) in l_even.enumerated() {
        l_sorted.append(value)
        l_sorted.append(l_odd[index])
    }
    return l_sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_even(l: [1, 2, 3]) == [1, 2, 3])
assert(sort_even(l: [5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == [-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123])
assert(sort_even(l: [5, 8, -12, 4, 23, 2, 3, 11, 12, -10]) == [-12, 8, 3, 4, 5, 2, 12, 11, 23, -10])



// ----------- problem HumanEval_126_is_sorted, completion 128 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_9_rolling_max, completion 159 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1385adbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b13857d2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b13857d2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b13857d213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b13857d1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b13855d1e83 <unavailable> + 188035
6    tmpburnh_0r                        0x000055614ce96ad8 <unavailable> + 6872
7    tmpburnh_0r                        0x000055614ce965ad <unavailable> + 5549
8    libc.so.6                          0x00002b1385cc7460 __libc_start_main + 245
9    tmpburnh_0r                        0x000055614ce962b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        if numbers[i] > max_so_far {
            max_so_far = numbers[i]
        }
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_9_rolling_max, completion 138 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ae8d202ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae8d1d25561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae8d1d25286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae8d1d2513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae8d1d24bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ae8d1b24e83 <unavailable> + 188035
6    tmpwrcrc0v8                        0x000055d19e210a5f <unavailable> + 6751
7    tmpwrcrc0v8                        0x000055d19e21052d <unavailable> + 5421
8    libc.so.6                          0x00002ae8d221a460 __libc_start_main + 245
9    tmpwrcrc0v8                        0x000055d19e210239 <unavailable> + 4665

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    for number in numbers {
        if number > max {
            max = number
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_130_tri, completion 196 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ba635048c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba634d3f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba634d3f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba634d3f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba634d3ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ba634b3ee83 <unavailable> + 188035
6    tmpfn6bbfp_                        0x000055b32db7d428 <unavailable> + 9256
7    tmpfn6bbfp_                        0x000055b32db7c4eb <unavailable> + 5355
8    libc.so.6                          0x00002ba635234460 __libc_start_main + 245
9    tmpfn6bbfp_                        0x000055b32db7c209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    guard n > 0 else { return [] }
    var result = [1, 3, 2]
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_9_rolling_max, completion 113 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ac302de9c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ac302ae0561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ac302ae0286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ac302ae013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ac302adfbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ac3028dfe83 <unavailable> + 188035
6    tmpedc3tx66                        0x0000562e7e25ab68 <unavailable> + 7016
7    tmpedc3tx66                        0x0000562e7e25a62d <unavailable> + 5677
8    libc.so.6                          0x00002ac302fd5460 __libc_start_main + 245
9    tmpedc3tx66                        0x0000562e7e25a339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var current_max = numbers[0]
    result.append(current_max)
    for i in 1..<numbers.count {
        current_max = max(current_max, numbers[i])
        result.append(current_max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_9_rolling_max, completion 190 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1385adbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b13857d2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b13857d2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b13857d213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b13857d1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b13855d1e83 <unavailable> + 188035
6    tmpburnh_0r                        0x000055614ce96ad8 <unavailable> + 6872
7    tmpburnh_0r                        0x000055614ce965ad <unavailable> + 5549
8    libc.so.6                          0x00002b1385cc7460 __libc_start_main + 245
9    tmpburnh_0r                        0x000055614ce962b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        if numbers[i] > max_so_far {
            max_so_far = numbers[i]
        }
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_130_tri, completion 141 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ae889c51c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae889948561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae889948286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae88994813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae889947bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ae889747e83 <unavailable> + 188035
6    tmpyix3dkrm                        0x000055db61fb1444 <unavailable> + 9284
7    tmpyix3dkrm                        0x000055db61fb04eb <unavailable> + 5355
8    libc.so.6                          0x00002ae889e3d460 __libc_start_main + 245
9    tmpyix3dkrm                        0x000055db61fb0209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    guard n > 2 else { return result }
    for i in 3...n {
        result.append(i % 2 == 0 ? 1 + i / 2 : result[i - 1] + result[i - 2] + result[i + 1])
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_130_tri, completion 191 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b65b1890c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b65b1587561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b65b1587286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b65b158713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b65b1586bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b65b1386e83 <unavailable> + 188035
6    tmpk57ye95c                        0x000055c2c4b6284f <unavailable> + 10319
7    tmpk57ye95c                        0x000055c2c4b616db <unavailable> + 5851
8    libc.so.6                          0x00002b65b1a7c460 __libc_start_main + 245
9    tmpk57ye95c                        0x000055c2c4b613f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    if n <= 2 {
        return Array(result[0...n])
    }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_120_maximum, completion 166 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ba50e44fc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba50e146561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba50e146286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba50e14613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba50e145bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ba50df45e83 <unavailable> + 188035
6    tmp9im5po73                        0x0000560b386938f2 <unavailable> + 10482
7    tmp9im5po73                        0x0000560b386934b6 <unavailable> + 9398
8    libc.so.6                          0x00002ba50e63b460 __libc_start_main + 245
9    tmp9im5po73                        0x0000560b38692429 <unavailable> + 5161

*/
/* stdout = 

*/


/// Given an array arr of integers and a positive integer k, return a sorted array 
/// of length k with the maximum k numbers in arr.
/// Example 1:
/// >>> maximum(arr: [-3, -4, 5], k: 3)
/// [-4, -3, 5]
/// Example 2:
/// >>> maximum(arr: [4, -4, 4], k: 2)
/// [4, 4]
/// Example 3:
/// >>> maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1)
/// [2]
/// Note:
/// 1. The length of the array will be in the range of [1, 1000].
/// 2. The elements in the array will be in the range of [-1000, 1000].
/// 3. 0 <= k <= len(arr)
func maximum(arr: [Int], k: Int) -> [Int] {
    var result = [Int]()
    for i in 0..<k {
        result.append(arr[i])
    }
    result.sort()
    for i in k..<arr.count {
        if arr[i] > result[0] {
            result[0] = arr[i]
            result.sort()
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(maximum(arr: [-3, -4, 5], k: 3) == [-4, -3, 5])
assert(maximum(arr: [4, -4, 4], k: 2) == [4, 4])
assert(maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1) == [2])
assert(maximum(arr: [123, -123, 20, 0, 1, 2, -3], k: 3) == [2, 20, 123])
assert(maximum(arr: [-123, 20, 0, 1, 2, -3], k: 4) == [0, 1, 2, 20])
assert(maximum(arr: [5, 15, 0, 3, -13, -8, 0], k: 7) == [-13, -8, 0, 0, 3, 5, 15])
assert(maximum(arr: [-1, 0, 2, 5, 3, -10], k: 2) == [3, 5])
assert(maximum(arr: [1, 0, 5, -7], k: 1) == [5])
assert(maximum(arr: [4, -4], k: 2) == [-4, 4])
assert(maximum(arr: [-10, 10], k: 2) == [-10, 10])
assert(maximum(arr: [1, 2, 3, -23, 243, -400, 0], k: 0) == [] as [Int])



// ----------- problem HumanEval_9_rolling_max, completion 63 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b887adb3c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b887aaaa561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b887aaaa286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b887aaaa13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b887aaa9bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b887a8a9e83 <unavailable> + 188035
6    tmpbndktfr7                        0x000055f1a4e95b58 <unavailable> + 7000
7    tmpbndktfr7                        0x000055f1a4e9562d <unavailable> + 5677
8    libc.so.6                          0x00002b887af9f460 __libc_start_main + 245
9    tmpbndktfr7                        0x000055f1a4e95339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_126_is_sorted, completion 98 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 34 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_120_maximum, completion 189 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ba50e44fc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba50e146561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba50e146286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba50e14613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba50e145bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ba50df45e83 <unavailable> + 188035
6    tmp9im5po73                        0x0000560b386938f2 <unavailable> + 10482
7    tmp9im5po73                        0x0000560b386934b6 <unavailable> + 9398
8    libc.so.6                          0x00002ba50e63b460 __libc_start_main + 245
9    tmp9im5po73                        0x0000560b38692429 <unavailable> + 5161

*/
/* stdout = 

*/


/// Given an array arr of integers and a positive integer k, return a sorted array 
/// of length k with the maximum k numbers in arr.
/// Example 1:
/// >>> maximum(arr: [-3, -4, 5], k: 3)
/// [-4, -3, 5]
/// Example 2:
/// >>> maximum(arr: [4, -4, 4], k: 2)
/// [4, 4]
/// Example 3:
/// >>> maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1)
/// [2]
/// Note:
/// 1. The length of the array will be in the range of [1, 1000].
/// 2. The elements in the array will be in the range of [-1000, 1000].
/// 3. 0 <= k <= len(arr)
func maximum(arr: [Int], k: Int) -> [Int] {
    var result = [Int]()
    for i in 0..<k {
        result.append(arr[i])
    }
    result.sort()
    for i in k..<arr.count {
        if arr[i] > result[0] {
            result[0] = arr[i]
            result.sort()
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(maximum(arr: [-3, -4, 5], k: 3) == [-4, -3, 5])
assert(maximum(arr: [4, -4, 4], k: 2) == [4, 4])
assert(maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1) == [2])
assert(maximum(arr: [123, -123, 20, 0, 1, 2, -3], k: 3) == [2, 20, 123])
assert(maximum(arr: [-123, 20, 0, 1, 2, -3], k: 4) == [0, 1, 2, 20])
assert(maximum(arr: [5, 15, 0, 3, -13, -8, 0], k: 7) == [-13, -8, 0, 0, 3, 5, 15])
assert(maximum(arr: [-1, 0, 2, 5, 3, -10], k: 2) == [3, 5])
assert(maximum(arr: [1, 0, 5, -7], k: 1) == [5])
assert(maximum(arr: [4, -4], k: 2) == [-4, 4])
assert(maximum(arr: [-10, 10], k: 2) == [-10, 10])
assert(maximum(arr: [1, 2, 3, -23, 243, -400, 0], k: 0) == [] as [Int])



// ----------- problem HumanEval_126_is_sorted, completion 173 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b98d4136c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b98d3e2d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b98d3e2d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b98d3e2d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b98d3e2cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b98d3c2ce83 <unavailable> + 188035
6    tmpj58558tf                        0x000055c93df0ffe6 <unavailable> + 8166
7    tmpj58558tf                        0x000055c93df0f954 <unavailable> + 6484
8    libc.so.6                          0x00002b98d4322460 __libc_start_main + 245
9    tmpj58558tf                        0x000055c93df0f129 <unavailable> + 4393

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    var count = 0
    for i in lst {
        if i < prev {
            sorted = false
        }
        if i == prev {
            count += 1
        }
        prev = i
    }
    if count > 1 {
        sorted = false
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 170 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b4402e35c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b4402b2c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b4402b2c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b4402b2c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b4402b2bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b440292be83 <unavailable> + 188035
6    tmpbqjdaz6i                        0x00005566c08d7454 <unavailable> + 9300
7    tmpbqjdaz6i                        0x00005566c08d64eb <unavailable> + 5355
8    libc.so.6                          0x00002b4403021460 __libc_start_main + 245
9    tmpbqjdaz6i                        0x00005566c08d6209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    guard n > 2 else { return result }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_120_maximum, completion 93 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ba50e44fc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba50e146561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba50e146286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba50e14613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba50e145bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ba50df45e83 <unavailable> + 188035
6    tmp9im5po73                        0x0000560b386938f2 <unavailable> + 10482
7    tmp9im5po73                        0x0000560b386934b6 <unavailable> + 9398
8    libc.so.6                          0x00002ba50e63b460 __libc_start_main + 245
9    tmp9im5po73                        0x0000560b38692429 <unavailable> + 5161

*/
/* stdout = 

*/


/// Given an array arr of integers and a positive integer k, return a sorted array 
/// of length k with the maximum k numbers in arr.
/// Example 1:
/// >>> maximum(arr: [-3, -4, 5], k: 3)
/// [-4, -3, 5]
/// Example 2:
/// >>> maximum(arr: [4, -4, 4], k: 2)
/// [4, 4]
/// Example 3:
/// >>> maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1)
/// [2]
/// Note:
/// 1. The length of the array will be in the range of [1, 1000].
/// 2. The elements in the array will be in the range of [-1000, 1000].
/// 3. 0 <= k <= len(arr)
func maximum(arr: [Int], k: Int) -> [Int] {
    var result = [Int]()
    for i in 0..<k {
        result.append(arr[i])
    }
    result.sort()
    for i in k..<arr.count {
        if arr[i] > result[0] {
            result[0] = arr[i]
            result.sort()
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(maximum(arr: [-3, -4, 5], k: 3) == [-4, -3, 5])
assert(maximum(arr: [4, -4, 4], k: 2) == [4, 4])
assert(maximum(arr: [-3, 2, 1, 2, -1, -2, 1], k: 1) == [2])
assert(maximum(arr: [123, -123, 20, 0, 1, 2, -3], k: 3) == [2, 20, 123])
assert(maximum(arr: [-123, 20, 0, 1, 2, -3], k: 4) == [0, 1, 2, 20])
assert(maximum(arr: [5, 15, 0, 3, -13, -8, 0], k: 7) == [-13, -8, 0, 0, 3, 5, 15])
assert(maximum(arr: [-1, 0, 2, 5, 3, -10], k: 2) == [3, 5])
assert(maximum(arr: [1, 0, 5, -7], k: 1) == [5])
assert(maximum(arr: [4, -4], k: 2) == [-4, 4])
assert(maximum(arr: [-10, 10], k: 2) == [-10, 10])
assert(maximum(arr: [1, 2, 3, -23, 243, -400, 0], k: 0) == [] as [Int])



// ----------- problem HumanEval_9_rolling_max, completion 156 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1a31d56c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1a31a4d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1a31a4d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b1a31a4d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1a31a4cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b1a3184ce83 <unavailable> + 188035
6    tmpajcjyx79                        0x00005557113abae8 <unavailable> + 6888
7    tmpajcjyx79                        0x00005557113ab5ad <unavailable> + 5549
8    libc.so.6                          0x00002b1a31f42460 __libc_start_main + 245
9    tmpajcjyx79                        0x00005557113ab2b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    result.append(max)
    for i in 1..<numbers.count {
        if numbers[i] > max {
            max = numbers[i]
        }
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_9_rolling_max, completion 108 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b887adb3c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b887aaaa561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b887aaaa286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b887aaaa13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b887aaa9bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b887a8a9e83 <unavailable> + 188035
6    tmpbndktfr7                        0x000055f1a4e95b58 <unavailable> + 7000
7    tmpbndktfr7                        0x000055f1a4e9562d <unavailable> + 5677
8    libc.so.6                          0x00002b887af9f460 __libc_start_main + 245
9    tmpbndktfr7                        0x000055f1a4e95339 <unavailable> + 4921

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        max_so_far = max(max_so_far, numbers[i])
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_9_rolling_max, completion 51 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b864c653c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b864c34a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b864c34a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b864c34a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b864c349bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b864c149e83 <unavailable> + 188035
6    tmpimc4yzz7                        0x00005624a2b35a5f <unavailable> + 6751
7    tmpimc4yzz7                        0x00005624a2b3552d <unavailable> + 5421
8    libc.so.6                          0x00002b864c83f460 __libc_start_main + 245
9    tmpimc4yzz7                        0x00005624a2b35239 <unavailable> + 4665

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var max = numbers[0]
    for number in numbers {
        max = max > number ? max : number
        result.append(max)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_93_encode, completion 160 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ad72c520c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ad72c217561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ad72c217286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ad72c21713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ad72c216bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ad72c0170a3 <unavailable> + 188579
6    tmp7p13t8y0                        0x00005609452c0100 <unavailable> + 8448
7    tmp7p13t8y0                        0x00005609452bf766 <unavailable> + 5990
8    libc.so.6                          0x00002ad72c70c460 __libc_start_main + 245
9    tmp7p13t8y0                        0x00005609452bf469 <unavailable> + 5225

*/
/* stdout = 

*/


/// Write a function that takes a message, and encodes in such a 
/// way that it swaps case of all letters, replaces all vowels in 
/// the message with the letter that appears 2 places ahead of that 
/// vowel in the english alphabet. 
/// Assume only letters. 
/// Examples:
/// >>> encode(message: "test")
/// "TGST"
/// >>> encode(message: "This is a message")
/// "tHKS KS C MGSSCGG"
func encode(message: String) -> String {
    let vowels = ["a", "e", "i", "o", "u"]
    var encoded = ""
    for char in message {
        if vowels.contains(String(char).lowercased()) {
            encoded += String(char).lowercased() == "z" ? "b" : String(Array(String(char).lowercased())[1])
        } else {
            encoded += String(char).lowercased() == String(char) ? String(char).uppercased() : String(char).lowercased()
        }
    }
    return encoded
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(encode(message: "TEST") == "tgst")
assert(encode(message: "Mudasir") == "mWDCSKR")
assert(encode(message: "YES") == "ygs")
assert(encode(message: "This is a message") == "tHKS KS C MGSSCGG")
assert(encode(message: "I DoNt KnOw WhAt tO WrItE") == "k dQnT kNqW wHcT Tq wRkTg")



// ----------- problem HumanEval_126_is_sorted, completion 144 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 183 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ae889c51c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae889948561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae889948286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae88994813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae889947bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ae889747e83 <unavailable> + 188035
6    tmpyix3dkrm                        0x000055db61fb1444 <unavailable> + 9284
7    tmpyix3dkrm                        0x000055db61fb04eb <unavailable> + 5355
8    libc.so.6                          0x00002ae889e3d460 __libc_start_main + 245
9    tmpyix3dkrm                        0x000055db61fb0209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    guard n > 2 else { return result }
    for i in 3...n {
        result.append(i % 2 == 0 ? 1 + i / 2 : result[i - 1] + result[i - 2] + result[i + 1])
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 22 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_130_tri, completion 68 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002ad2048b0c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ad2045a7561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ad2045a7286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ad2045a713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ad2045a6bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002ad2043a6e83 <unavailable> + 188035
6    tmphoo0nmhz                        0x000056384653d419 <unavailable> + 9241
7    tmphoo0nmhz                        0x000056384653c4eb <unavailable> + 5355
8    libc.so.6                          0x00002ad204a9c460 __libc_start_main + 245
9    tmphoo0nmhz                        0x000056384653c209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_130_tri, completion 50 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002aac01482c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aac01179561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aac01179286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aac0117913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aac01178bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002aac00f78e83 <unavailable> + 188035
6    tmp0oi1klnf                        0x0000563f4e17b843 <unavailable> + 10307
7    tmp0oi1klnf                        0x0000563f4e17a6db <unavailable> + 5851
8    libc.so.6                          0x00002aac0166e460 __libc_start_main + 245
9    tmp0oi1klnf                        0x0000563f4e17a3f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result = [1, 3, 2]
    if n < 3 {
        return Array(result[0...n])
    }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_9_rolling_max, completion 117 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b1385adbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b13857d2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b13857d2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b13857d213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b13857d1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b13855d1e83 <unavailable> + 188035
6    tmpburnh_0r                        0x000055614ce96ad8 <unavailable> + 6872
7    tmpburnh_0r                        0x000055614ce965ad <unavailable> + 5549
8    libc.so.6                          0x00002b1385cc7460 __libc_start_main + 245
9    tmpburnh_0r                        0x000055614ce962b9 <unavailable> + 4793

*/
/* stdout = 

*/


/// From a given array of integers, generate an array of rolling maximum element found until given moment
/// in the sequence.
/// >>> rolling_max(numbers: [1, 2, 3, 2, 3, 4, 2])
/// [1, 2, 3, 3, 3, 4, 4]
func rolling_max(numbers: [Int]) -> [Int] {
    var max_so_far = numbers[0]
    var result = [Int]()
    result.append(max_so_far)
    for i in 1..<numbers.count {
        if numbers[i] > max_so_far {
            max_so_far = numbers[i]
        }
        result.append(max_so_far)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(rolling_max(numbers: [] as [Int]) == [] as [Int])
assert(rolling_max(numbers: [1, 2, 3, 4]) == [1, 2, 3, 4])
assert(rolling_max(numbers: [4, 3, 2, 1]) == [4, 4, 4, 4])
assert(rolling_max(numbers: [3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])



// ----------- problem HumanEval_37_sort_even, completion 121 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002af520c30c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af520927561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af520927286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af52092713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af520926bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002af520726e83 <unavailable> + 188035
6    tmpphw9jif7                        0x0000563340367071 <unavailable> + 8305
7    tmpphw9jif7                        0x00005633403667b4 <unavailable> + 6068
8    libc.so.6                          0x00002af520e1c460 __libc_start_main + 245
9    tmpphw9jif7                        0x0000563340366499 <unavailable> + 5273

*/
/* stdout = 

*/


/// This function takes an array l and returns an array l' such that
/// l' is identical to l in the odd indicies, while its values at the even indicies are equal
/// to the values of the even indicies of l, but sorted.
/// >>> sort_even(l: [1, 2, 3])
/// [1, 2, 3]
/// >>> sort_even(l: [5, 6, 3, 4])
/// [3, 6, 5, 4]
func sort_even(l: [Int]) -> [Int] {
    var l_even = [Int]()
    var l_odd = [Int]()
    var l_sorted = [Int]()
    for (i, e) in l.enumerated() {
        if i % 2 == 0 {
            l_even.append(e)
        } else {
            l_odd.append(e)
        }
    }
    l_even.sort()
    for (i, e) in l_even.enumerated() {
        l_sorted.append(e)
        l_sorted.append(l_odd[i])
    }
    return l_sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_even(l: [1, 2, 3]) == [1, 2, 3])
assert(sort_even(l: [5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == [-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123])
assert(sort_even(l: [5, 8, -12, 4, 23, 2, 3, 11, 12, -10]) == [-12, 8, 3, 4, 5, 2, 12, 11, 23, -10])



// ----------- problem HumanEval_130_tri, completion 70 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b29918acc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b29915a3561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b29915a3286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b29915a313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b29915a2bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b29913a2e83 <unavailable> + 188035
6    tmpr6yys_ch                        0x000055b6a1b8e84f <unavailable> + 10319
7    tmpr6yys_ch                        0x000055b6a1b8d6db <unavailable> + 5851
8    libc.so.6                          0x00002b2991a98460 __libc_start_main + 245
9    tmpr6yys_ch                        0x000055b6a1b8d3f9 <unavailable> + 5113

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    var result: [Int] = [1, 3, 2]
    if n <= 2 {
        return Array(result[0...n])
    }
    for i in 3...n {
        if i % 2 == 0 {
            result.append(1 + i / 2)
        } else {
            result.append(result[i - 1] + result[i - 2] + result[i + 1])
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_126_is_sorted, completion 30 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
Current stack trace:
0    libswiftCore.so                    0x00002b0f53e9ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f53b95561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f53b95286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f53b9513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f53b94bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftSwiftOnoneSupport.so       0x00002b0f53994e83 <unavailable> + 188035
6    tmpxw1it7dp                        0x000055d47d69a056 <unavailable> + 8278
7    tmpxw1it7dp                        0x000055d47d6999d4 <unavailable> + 6612
8    libc.so.6                          0x00002b0f5408a460 __libc_start_main + 245
9    tmpxw1it7dp                        0x000055d47d6991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    var prev = lst[0]
    for i in 1..<lst.count {
        if lst[i] < prev {
            sorted = false
        }
        prev = lst[i]
    }
    return sorted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



