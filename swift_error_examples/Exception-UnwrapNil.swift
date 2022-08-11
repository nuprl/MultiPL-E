// ----------- problem HumanEval_67_fruit_distribution, completion 53 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp7duvkawn/tmp7duvkawn.swift:20: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002ab414bf8c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ab4148ef561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ab4148ef286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ab4148ef13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ab4148eebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp7duvkawn                        0x000055bb18feff9a <unavailable> + 8090
6    tmp7duvkawn                        0x000055bb18fef64b <unavailable> + 5707
7    libc.so.6                          0x00002ab414de4460 __libc_start_main + 245
8    tmp7duvkawn                        0x000055bb18fef349 <unavailable> + 4937

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    // Write your code here
    var s = s.split(separator: " ")
    let a = Int(s[0])!
    let o = Int(s[2])!
    return n - a - o
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_19_sort_numbers, completion 22 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp34qrg8s1/tmp34qrg8s1.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b1e56b23c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1e5681a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1e5681a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b1e5681a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1e56819bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp34qrg8s1                        0x000056299ea2705f <unavailable> + 8287
6    libswiftCore.so                    0x00002b1e5693bc90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b1e5693c110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b1e5693ad30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b1e5693ad15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b1e56a6065a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b1e5684f720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b1e5684f70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b1e5693a460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b1e5693a370 Sequence.sorted(by:) + 193
15   tmp34qrg8s1                        0x000056299ea26d6e <unavailable> + 7534
16   tmp34qrg8s1                        0x000056299ea268c1 <unavailable> + 6337
17   libc.so.6                          0x00002b1e56d0f460 __libc_start_main + 245
18   tmp34qrg8s1                        0x000056299ea263e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (s1, s2) -> Bool in
        let n1 = Int(s1)!
        let n2 = Int(s2)!
        return n1 < n2
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_19_sort_numbers, completion 156 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpb_vkuxt6/tmpb_vkuxt6.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7961dacc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7961aa3561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7961aa3286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7961aa313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7961aa2bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpb_vkuxt6                        0x000056122102803c <unavailable> + 8252
6    libswiftCore.so                    0x00002b7961bc4c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b7961bc5110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b7961bc3d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b7961bc3d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b7961ce965a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b7961ad8720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b7961ad870f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b7961bc3460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b7961bc3370 Sequence.sorted(by:) + 193
15   tmpb_vkuxt6                        0x0000561221027d6e <unavailable> + 7534
16   tmpb_vkuxt6                        0x00005612210278c1 <unavailable> + 6337
17   libc.so.6                          0x00002b7961f98460 __libc_start_main + 245
18   tmpb_vkuxt6                        0x00005612210273e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (lhs, rhs) -> Bool in
        return Int(lhs)! < Int(rhs)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_70_strange_sort_list, completion 103 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmplgfkf04e/tmplgfkf04e.swift:21: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b847832bc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b8478022561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b8478022286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b847802213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b8478021bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmplgfkf04e                        0x0000559a723f673d <unavailable> + 10045
6    tmplgfkf04e                        0x0000559a723f577b <unavailable> + 6011
7    libc.so.6                          0x00002b8478517460 __libc_start_main + 245
8    tmplgfkf04e                        0x0000559a723f5319 <unavailable> + 4889

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
    var lst = lst
    var result: [Int] = []
    while !lst.isEmpty {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        result.append(max)
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_19_sort_numbers, completion 115 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpynqhc_m4/tmpynqhc_m4.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7a73162c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7a72e59561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7a72e59286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7a72e5913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7a72e58bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpynqhc_m4                        0x000055936b50a03c <unavailable> + 8252
6    libswiftCore.so                    0x00002b7a72f7ac90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b7a72f7b110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b7a72f79d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b7a72f79d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b7a7309f65a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b7a72e8e720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b7a72e8e70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b7a72f79460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b7a72f79370 Sequence.sorted(by:) + 193
15   tmpynqhc_m4                        0x000055936b509d6e <unavailable> + 7534
16   tmpynqhc_m4                        0x000055936b5098c1 <unavailable> + 6337
17   libc.so.6                          0x00002b7a7334e460 __libc_start_main + 245
18   tmpynqhc_m4                        0x000055936b5093e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (a, b) -> Bool in
        return Int(a)! < Int(b)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_67_fruit_distribution, completion 184 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpz83izk74/tmpz83izk74.swift:21: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b0287144c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0286e3b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0286e3b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0286e3b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0286e3abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpz83izk74                        0x000056509ac08fb8 <unavailable> + 8120
6    tmpz83izk74                        0x000056509ac0864b <unavailable> + 5707
7    libc.so.6                          0x00002b0287330460 __libc_start_main + 245
8    tmpz83izk74                        0x000056509ac08349 <unavailable> + 4937

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    // Write your code here
    var s = s.split(separator: " ")
    var n = n
    var a = Int(s[0])!
    var o = Int(s[2])!
    n -= a + o
    return n
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_19_sort_numbers, completion 178 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp45z5vcrr/tmp45z5vcrr.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002afff7496c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afff718d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afff718d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afff718d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afff718cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp45z5vcrr                        0x0000562fa55d403c <unavailable> + 8252
6    libswiftCore.so                    0x00002afff72aec90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002afff72af110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002afff72add30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002afff72add15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002afff73d365a <unavailable> + 3819098
11   libswiftCore.so                    0x00002afff71c2720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002afff71c270f <unavailable> + 1652495
13   libswiftCore.so                    0x00002afff72ad460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002afff72ad370 Sequence.sorted(by:) + 193
15   tmp45z5vcrr                        0x0000562fa55d3d6e <unavailable> + 7534
16   tmp45z5vcrr                        0x0000562fa55d38c1 <unavailable> + 6337
17   libc.so.6                          0x00002afff7682460 __libc_start_main + 245
18   tmp45z5vcrr                        0x0000562fa55d33e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let numbers = numbers.split(separator: " ")
    let sorted = numbers.sorted { (lhs, rhs) -> Bool in
        return Int(lhs)! < Int(rhs)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_70_strange_sort_list, completion 10 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp_0lll_od/tmp_0lll_od.swift:21: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002abc1a770c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002abc1a467561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002abc1a467286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002abc1a46713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002abc1a466bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp_0lll_od                        0x000055a714a0573e <unavailable> + 10046
6    tmp_0lll_od                        0x000055a714a0477b <unavailable> + 6011
7    libc.so.6                          0x00002abc1a95c460 __libc_start_main + 245
8    tmp_0lll_od                        0x000055a714a04319 <unavailable> + 4889

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
    var result: [Int] = []
    var lst = lst
    while lst.count > 0 {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        result.append(max)
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_67_fruit_distribution, completion 189 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpnn2noxvm/tmpnn2noxvm.swift:22: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7a3be13c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7a3bb0a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7a3bb0a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7a3bb0a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7a3bb09bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpnn2noxvm                        0x000056280758811a <unavailable> + 8474
6    tmpnn2noxvm                        0x000056280758774b <unavailable> + 5963
7    libc.so.6                          0x00002b7a3bfff460 __libc_start_main + 245
8    tmpnn2noxvm                        0x0000562807587449 <unavailable> + 5193

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    // Write your code here
    var arr = s.split(separator: " ")
    var sum = 0
    for i in 0..<arr.count{
        if i % 2 == 0{
            sum += Int(arr[i])!
        }
    }
    return n - sum
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_67_fruit_distribution, completion 5 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpyvix5341/tmpyvix5341.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b4021a63c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b402175a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b402175a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b402175a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b4021759bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpyvix5341                        0x000055f534d7febd <unavailable> + 7869
6    tmpyvix5341                        0x000055f534d7f5fb <unavailable> + 5627
7    libc.so.6                          0x00002b4021c4f460 __libc_start_main + 245
8    tmpyvix5341                        0x000055f534d7f2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let arr = s.split(separator: " ")
    let apples = Int(arr[0])!
    let oranges = Int(arr[2])!
    let mangoes = n - apples - oranges
    return mangoes
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_88_sort_array, completion 58 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp5iovv1h7/tmp5iovv1h7.swift:18: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b2406583c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b240627a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b240627a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b240627a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b2406279bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp5iovv1h7                        0x000056133d6fbefd <unavailable> + 7933
6    tmp5iovv1h7                        0x000056133d6fb50d <unavailable> + 5389
7    libc.so.6                          0x00002b240676f460 __libc_start_main + 245
8    tmp5iovv1h7                        0x000056133d6fb219 <unavailable> + 4633

*/
/* stdout = 

*/


/// Given an array of non-negative integers, return a coswift of the given array after sorting,
/// you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
/// or sort it in descending order if the sum( first index value, last index value) is even.
/// Note:
/// * don't change the given array.
/// Examples:
/// >>> sort_array(array: [] as [Int])
/// [] as [Int]
/// >>> sort_array(array: [5])
/// [5]
/// >>> sort_array(array: [2, 4, 3, 0, 1, 5])
/// [0, 1, 2, 3, 4, 5]
/// >>> sort_array(array: [2, 4, 3, 0, 1, 5, 6])
/// [6, 5, 4, 3, 2, 1, 0]
func sort_array(array: [Int]) -> [Int] {
    var result = array
    let sum = array.first! + array.last!
    if sum % 2 == 0 {
        result.sort(by: >)
    } else {
        result.sort(by: <)
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
            
assert(sort_array(array: [] as [Int]) == [] as [Int])
assert(sort_array(array: [5]) == [5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5]) == [0, 1, 2, 3, 4, 5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5, 6]) == [6, 5, 4, 3, 2, 1, 0])
assert(sort_array(array: [2, 1]) == [1, 2])
assert(sort_array(array: [15, 42, 87, 32, 11, 0]) == [0, 11, 15, 32, 42, 87])
assert(sort_array(array: [21, 14, 23, 11]) == [23, 21, 14, 11])



// ----------- problem HumanEval_67_fruit_distribution, completion 139 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpywydsiss/tmpywydsiss.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b26d1238c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b26d0f2f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b26d0f2f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b26d0f2f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b26d0f2ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpywydsiss                        0x00005653cef2beaa <unavailable> + 7850
6    tmpywydsiss                        0x00005653cef2b5fb <unavailable> + 5627
7    libc.so.6                          0x00002b26d1424460 __libc_start_main + 245
8    tmpywydsiss                        0x00005653cef2b2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let arr = s.split(separator: " ")
    let a = Int(arr[0])!
    let o = Int(arr[2])!
    return n - a - o
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_67_fruit_distribution, completion 160 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpz16e2wjp/tmpz16e2wjp.swift:20: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b608361dc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b6083314561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b6083314286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b608331413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b6083313bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpz16e2wjp                        0x000055d620bf6eaa <unavailable> + 7850
6    tmpz16e2wjp                        0x000055d620bf65fb <unavailable> + 5627
7    libc.so.6                          0x00002b6083809460 __libc_start_main + 245
8    tmpz16e2wjp                        0x000055d620bf62f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    // Write your code here
    let arr = s.split(separator: " ")
    let a = Int(arr[0])!
    let o = Int(arr[2])!
    return n - a - o
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_19_sort_numbers, completion 192 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpynqhc_m4/tmpynqhc_m4.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7a73162c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7a72e59561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7a72e59286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7a72e5913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7a72e58bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpynqhc_m4                        0x000055936b50a03c <unavailable> + 8252
6    libswiftCore.so                    0x00002b7a72f7ac90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b7a72f7b110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b7a72f79d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b7a72f79d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b7a7309f65a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b7a72e8e720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b7a72e8e70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b7a72f79460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b7a72f79370 Sequence.sorted(by:) + 193
15   tmpynqhc_m4                        0x000055936b509d6e <unavailable> + 7534
16   tmpynqhc_m4                        0x000055936b5098c1 <unavailable> + 6337
17   libc.so.6                          0x00002b7a7334e460 __libc_start_main + 245
18   tmpynqhc_m4                        0x000055936b5093e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (a, b) -> Bool in
        return Int(a)! < Int(b)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_67_fruit_distribution, completion 159 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpq0od723g/tmpq0od723g.swift:20: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002abe7564ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002abe75345561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002abe75345286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002abe7534513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002abe75344bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpq0od723g                        0x000055b0c2275faa <unavailable> + 8106
6    tmpq0od723g                        0x000055b0c227564b <unavailable> + 5707
7    libc.so.6                          0x00002abe7583a460 __libc_start_main + 245
8    tmpq0od723g                        0x000055b0c2275349 <unavailable> + 4937

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    // Write your code here
    var fruits = s.split(separator: " ")
    var apples = Int(fruits[0])!
    var oranges = Int(fruits[2])!
    var mangoes = n - apples - oranges
    return mangoes
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_19_sort_numbers, completion 173 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpynqhc_m4/tmpynqhc_m4.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7a73162c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7a72e59561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7a72e59286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7a72e5913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7a72e58bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpynqhc_m4                        0x000055936b50a03c <unavailable> + 8252
6    libswiftCore.so                    0x00002b7a72f7ac90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b7a72f7b110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b7a72f79d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b7a72f79d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b7a7309f65a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b7a72e8e720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b7a72e8e70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b7a72f79460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b7a72f79370 Sequence.sorted(by:) + 193
15   tmpynqhc_m4                        0x000055936b509d6e <unavailable> + 7534
16   tmpynqhc_m4                        0x000055936b5098c1 <unavailable> + 6337
17   libc.so.6                          0x00002b7a7334e460 __libc_start_main + 245
18   tmpynqhc_m4                        0x000055936b5093e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (a, b) -> Bool in
        return Int(a)! < Int(b)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_70_strange_sort_list, completion 143 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpnad2sfxw/tmpnad2sfxw.swift:23: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b2867653c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b286734a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b286734a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b286734a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b2867349bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpnad2sfxw                        0x00005639acbf87b3 <unavailable> + 10163
6    tmpnad2sfxw                        0x00005639acbf77db <unavailable> + 6107
7    libc.so.6                          0x00002b286783f460 __libc_start_main + 245
8    tmpnad2sfxw                        0x00005639acbf7379 <unavailable> + 4985

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
    var lst = lst
    while lst.count > 0 {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        if min != max {
            result.append(max)
        }
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_70_strange_sort_list, completion 169 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpwm5c7q4i/tmpwm5c7q4i.swift:25: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002ba2a76a6c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba2a739d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba2a739d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba2a739d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba2a739cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpwm5c7q4i                        0x0000561e23fc57c1 <unavailable> + 10177
6    tmpwm5c7q4i                        0x0000561e23fc47cb <unavailable> + 6091
7    libc.so.6                          0x00002ba2a7892460 __libc_start_main + 245
8    tmpwm5c7q4i                        0x0000561e23fc4369 <unavailable> + 4969

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
    var lst = lst
    while !lst.isEmpty {
        let min = lst.min()!
        let max = lst.max()!
        if min != max {
            result.append(min)
            result.append(max)
        } else {
            result.append(min)
        }
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_19_sort_numbers, completion 93 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpynqhc_m4/tmpynqhc_m4.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7a73162c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7a72e59561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7a72e59286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7a72e5913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7a72e58bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpynqhc_m4                        0x000055936b50a03c <unavailable> + 8252
6    libswiftCore.so                    0x00002b7a72f7ac90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b7a72f7b110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b7a72f79d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b7a72f79d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b7a7309f65a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b7a72e8e720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b7a72e8e70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b7a72f79460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b7a72f79370 Sequence.sorted(by:) + 193
15   tmpynqhc_m4                        0x000055936b509d6e <unavailable> + 7534
16   tmpynqhc_m4                        0x000055936b5098c1 <unavailable> + 6337
17   libc.so.6                          0x00002b7a7334e460 __libc_start_main + 245
18   tmpynqhc_m4                        0x000055936b5093e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (a, b) -> Bool in
        return Int(a)! < Int(b)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_67_fruit_distribution, completion 167 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpybd6fg3_/tmpybd6fg3_.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b882f3cec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b882f0c5561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b882f0c5286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b882f0c513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b882f0c4bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpybd6fg3_                        0x000055a3c316ceaa <unavailable> + 7850
6    tmpybd6fg3_                        0x000055a3c316c5fb <unavailable> + 5627
7    libc.so.6                          0x00002b882f5ba460 __libc_start_main + 245
8    tmpybd6fg3_                        0x000055a3c316c2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let fruits = s.split(separator: " ")
    let apples = Int(fruits[0])!
    let oranges = Int(fruits[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_145_order_by_points, completion 65 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp83jtypo7/tmp83jtypo7.swift:13: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b9fb1ac4c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b9fb17bb561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b9fb17bb286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b9fb17bb13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b9fb17babb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp83jtypo7                        0x000055d53f71d2fa <unavailable> + 8954
6    libswiftCore.so                    0x00002b9fb18ca410 Sequence.reduce<A>(_:_:) + 530
7    tmp83jtypo7                        0x000055d53f71d0d3 <unavailable> + 8403
8    libswiftCore.so                    0x00002b9fb18dcc90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
9    libswiftCore.so                    0x00002b9fb18dd110 MutableCollection<>._insertionSort(within:by:) + 356
10   libswiftCore.so                    0x00002b9fb18dbd30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
11   libswiftCore.so                    0x00002b9fb18dbd15 <unavailable> + 2616597
12   libswiftCore.so                    0x00002b9fb1a0165a <unavailable> + 3819098
13   libswiftCore.so                    0x00002b9fb17f0720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
14   libswiftCore.so                    0x00002b9fb17f070f <unavailable> + 1652495
15   libswiftCore.so                    0x00002b9fb18db460 MutableCollection<>.sort(by:) + 771
16   libswiftCore.so                    0x00002b9fb18db370 Sequence.sorted(by:) + 193
17   tmp83jtypo7                        0x000055d53f71d000 <unavailable> + 8192
18   tmp83jtypo7                        0x000055d53f71c6b4 <unavailable> + 5812
19   libc.so.6                          0x00002b9fb1cb0460 __libc_start_main + 245
20   tmp83jtypo7                        0x000055d53f71c389 <unavaila
*/
/* stdout = 

*/


/// Write a function which sorts the given array of integers
/// in ascending order according to the sum of their digits.
/// Note: if there are several items with similar sum of their digits,
/// order them based on their index in original array.
/// For example:
/// >>> order_by_points(nums: [1, 11, -1, -11, -12])
/// [-1, -11, 1, -12, 11]
/// >>> order_by_points(nums: [] as [Int])
/// [] as [Int]
func order_by_points(nums: [Int]) -> [Int] {
    return nums.sorted { (a, b) -> Bool in
        let sumA = String(a).reduce(0) { $0 + Int(String($1))! }
        let sumB = String(b).reduce(0) { $0 + Int(String($1))! }
        return sumA < sumB
    }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(order_by_points(nums: [1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11])
assert(order_by_points(nums: [1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]) == [0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457])
assert(order_by_points(nums: [] as [Int]) == [] as [Int])
assert(order_by_points(nums: [1, -11, -32, 43, 54, -98, 2, -3]) == [-3, -32, -98, -11, 1, 2, 43, 54])
assert(order_by_points(nums: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == [1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9])
assert(order_by_points(nums: [0, 6, 6, -76, -21, 23, 4]) == [-76, -21, 0, 4, 23, 6, 6])



// ----------- problem HumanEval_67_fruit_distribution, completion 121 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpybd6fg3_/tmpybd6fg3_.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b882f3cec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b882f0c5561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b882f0c5286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b882f0c513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b882f0c4bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpybd6fg3_                        0x000055a3c316ceaa <unavailable> + 7850
6    tmpybd6fg3_                        0x000055a3c316c5fb <unavailable> + 5627
7    libc.so.6                          0x00002b882f5ba460 __libc_start_main + 245
8    tmpybd6fg3_                        0x000055a3c316c2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let fruits = s.split(separator: " ")
    let apples = Int(fruits[0])!
    let oranges = Int(fruits[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_145_order_by_points, completion 157 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpkw1wpe01/tmpkw1wpe01.swift:13: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7d783b1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7d780a8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7d780a8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7d780a813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7d780a7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpkw1wpe01                        0x000055d0a35eb4f1 <unavailable> + 9457
6    libswiftCore.so                    0x00002b7d78090820 Collection.map<A>(_:) + 426
7    tmpkw1wpe01                        0x000055d0a35eb131 <unavailable> + 8497
8    libswiftCore.so                    0x00002b7d781c9c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
9    libswiftCore.so                    0x00002b7d781ca110 MutableCollection<>._insertionSort(within:by:) + 356
10   libswiftCore.so                    0x00002b7d781c8d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
11   libswiftCore.so                    0x00002b7d781c8d15 <unavailable> + 2616597
12   libswiftCore.so                    0x00002b7d782ee65a <unavailable> + 3819098
13   libswiftCore.so                    0x00002b7d780dd720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
14   libswiftCore.so                    0x00002b7d780dd70f <unavailable> + 1652495
15   libswiftCore.so                    0x00002b7d781c8460 MutableCollection<>.sort(by:) + 771
16   libswiftCore.so                    0x00002b7d781c8370 Sequence.sorted(by:) + 193
17   tmpkw1wpe01                        0x000055d0a35eb060 <unavailable> + 8288
18   tmpkw1wpe01                        0x000055d0a35ea714 <unavailable> + 5908
19   libc.so.6                          0x00002b7d7859d460 __libc_start_main + 245
20   tmpkw1wpe01                        0x000055d0a35ea3e9 <unavailable
*/
/* stdout = 

*/


/// Write a function which sorts the given array of integers
/// in ascending order according to the sum of their digits.
/// Note: if there are several items with similar sum of their digits,
/// order them based on their index in original array.
/// For example:
/// >>> order_by_points(nums: [1, 11, -1, -11, -12])
/// [-1, -11, 1, -12, 11]
/// >>> order_by_points(nums: [] as [Int])
/// [] as [Int]
func order_by_points(nums: [Int]) -> [Int] {
    return nums.sorted { (a, b) -> Bool in
        let aSum = String(a).map { Int(String($0))! }.reduce(0, +)
        let bSum = String(b).map { Int(String($0))! }.reduce(0, +)
        return aSum < bSum
    }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(order_by_points(nums: [1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11])
assert(order_by_points(nums: [1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]) == [0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457])
assert(order_by_points(nums: [] as [Int]) == [] as [Int])
assert(order_by_points(nums: [1, -11, -32, 43, 54, -98, 2, -3]) == [-3, -32, -98, -11, 1, 2, 43, 54])
assert(order_by_points(nums: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == [1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9])
assert(order_by_points(nums: [0, 6, 6, -76, -21, 23, 4]) == [-76, -21, 0, 4, 23, 6, 6])



// ----------- problem HumanEval_88_sort_array, completion 133 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmplaqtma4y/tmplaqtma4y.swift:34: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b1435354c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b143504b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b143504b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b143504b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b143504abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmplaqtma4y                        0x0000557c7ae82755 <unavailable> + 10069
6    tmplaqtma4y                        0x0000557c7ae8163d <unavailable> + 5693
7    libc.so.6                          0x00002b1435540460 __libc_start_main + 245
8    tmplaqtma4y                        0x0000557c7ae81349 <unavailable> + 4937

*/
/* stdout = 

*/


/// Given an array of non-negative integers, return a coswift of the given array after sorting,
/// you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
/// or sort it in descending order if the sum( first index value, last index value) is even.
/// Note:
/// * don't change the given array.
/// Examples:
/// >>> sort_array(array: [] as [Int])
/// [] as [Int]
/// >>> sort_array(array: [5])
/// [5]
/// >>> sort_array(array: [2, 4, 3, 0, 1, 5])
/// [0, 1, 2, 3, 4, 5]
/// >>> sort_array(array: [2, 4, 3, 0, 1, 5, 6])
/// [6, 5, 4, 3, 2, 1, 0]
func sort_array(array: [Int]) -> [Int] {
    var array = array
    var i = 0
    var j = array.count - 1
    while i < j {
        if array[i] % 2 == 0 && array[j] % 2 == 1 {
            array.swapAt(i, j)
            i += 1
            j -= 1
        } else if array[i] % 2 == 1 && array[j] % 2 == 0 {
            i += 1
            j -= 1
        } else if array[i] % 2 == 0 && array[j] % 2 == 0 {
            j -= 1
        } else {
            i += 1
        }
    }
    if (array.first! + array.last!) % 2 == 0 {
        array.reverse()
    }
    return array
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_array(array: [] as [Int]) == [] as [Int])
assert(sort_array(array: [5]) == [5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5]) == [0, 1, 2, 3, 4, 5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5, 6]) == [6, 5, 4, 3, 2, 1, 0])
assert(sort_array(array: [2, 1]) == [1, 2])
assert(sort_array(array: [15, 42, 87, 32, 11, 0]) == [0, 11, 15, 32, 42, 87])
assert(sort_array(array: [21, 14, 23, 11]) == [23, 21, 14, 11])



// ----------- problem HumanEval_145_order_by_points, completion 85 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpdf_hl_00/tmpdf_hl_00.swift:13: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b05782f1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0577fe8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0577fe8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0577fe813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0577fe7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpdf_hl_00                        0x0000559aecb842fa <unavailable> + 8954
6    libswiftCore.so                    0x00002b05780f7410 Sequence.reduce<A>(_:_:) + 530
7    tmpdf_hl_00                        0x0000559aecb840d3 <unavailable> + 8403
8    libswiftCore.so                    0x00002b0578109c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
9    libswiftCore.so                    0x00002b057810a110 MutableCollection<>._insertionSort(within:by:) + 356
10   libswiftCore.so                    0x00002b0578108d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
11   libswiftCore.so                    0x00002b0578108d15 <unavailable> + 2616597
12   libswiftCore.so                    0x00002b057822e65a <unavailable> + 3819098
13   libswiftCore.so                    0x00002b057801d720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
14   libswiftCore.so                    0x00002b057801d70f <unavailable> + 1652495
15   libswiftCore.so                    0x00002b0578108460 MutableCollection<>.sort(by:) + 771
16   libswiftCore.so                    0x00002b0578108370 Sequence.sorted(by:) + 193
17   tmpdf_hl_00                        0x0000559aecb84000 <unavailable> + 8192
18   tmpdf_hl_00                        0x0000559aecb836b4 <unavailable> + 5812
19   libc.so.6                          0x00002b05784dd460 __libc_start_main + 245
20   tmpdf_hl_00                        0x0000559aecb83389 <unavaila
*/
/* stdout = 

*/


/// Write a function which sorts the given array of integers
/// in ascending order according to the sum of their digits.
/// Note: if there are several items with similar sum of their digits,
/// order them based on their index in original array.
/// For example:
/// >>> order_by_points(nums: [1, 11, -1, -11, -12])
/// [-1, -11, 1, -12, 11]
/// >>> order_by_points(nums: [] as [Int])
/// [] as [Int]
func order_by_points(nums: [Int]) -> [Int] {
    return nums.sorted { (a, b) -> Bool in
        let aSum = String(a).reduce(0) { $0 + Int(String($1))! }
        let bSum = String(b).reduce(0) { $0 + Int(String($1))! }
        return aSum < bSum
    }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(order_by_points(nums: [1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11])
assert(order_by_points(nums: [1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]) == [0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457])
assert(order_by_points(nums: [] as [Int]) == [] as [Int])
assert(order_by_points(nums: [1, -11, -32, 43, 54, -98, 2, -3]) == [-3, -32, -98, -11, 1, 2, 43, 54])
assert(order_by_points(nums: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == [1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9])
assert(order_by_points(nums: [0, 6, 6, -76, -21, 23, 4]) == [-76, -21, 0, 4, 23, 6, 6])



// ----------- problem HumanEval_70_strange_sort_list, completion 97 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp7bp8juob/tmp7bp8juob.swift:21: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002ae5e6f10c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae5e6c07561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae5e6c07286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae5e6c0713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae5e6c06bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp7bp8juob                        0x000056460e54e789 <unavailable> + 10121
6    tmp7bp8juob                        0x000056460e54d7cb <unavailable> + 6091
7    libc.so.6                          0x00002ae5e70fc460 __libc_start_main + 245
8    tmp7bp8juob                        0x000056460e54d369 <unavailable> + 4969

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
    var lst = lst
    while !lst.isEmpty {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        result.append(max)
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_70_strange_sort_list, completion 173 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpa0x4i88k/tmpa0x4i88k.swift:23: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002ae87c146c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae87be3d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae87be3d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae87be3d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae87be3cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpa0x4i88k                        0x000055ab9aca4760 <unavailable> + 10080
6    tmpa0x4i88k                        0x000055ab9aca377b <unavailable> + 6011
7    libc.so.6                          0x00002ae87c332460 __libc_start_main + 245
8    tmpa0x4i88k                        0x000055ab9aca3319 <unavailable> + 4889

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
    var lst = lst
    var result: [Int] = []
    while !lst.isEmpty {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        if min != max {
            result.append(max)
        }
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_145_order_by_points, completion 124 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpp10j8hmw/tmpp10j8hmw.swift:16: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b3723d5ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3723a55561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3723a55286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3723a5513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3723a54bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpp10j8hmw                        0x0000561b7f0f52b5 <unavailable> + 8885
6    libswiftCore.so                    0x00002b3723b76c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b3723b77110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b3723b75d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b3723b75d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b3723c9b65a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b3723a8a720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b3723a8a70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b3723b75460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b3723b75370 Sequence.sorted(by:) + 193
15   tmpp10j8hmw                        0x0000561b7f0f4fc0 <unavailable> + 8128
16   tmpp10j8hmw                        0x0000561b7f0f4674 <unavailable> + 5748
17   libc.so.6                          0x00002b3723f4a460 __libc_start_main + 245
18   tmpp10j8hmw                        0x0000561b7f0f4349 <unavailable> + 4937

*/
/* stdout = 

*/


/// Write a function which sorts the given array of integers
/// in ascending order according to the sum of their digits.
/// Note: if there are several items with similar sum of their digits,
/// order them based on their index in original array.
/// For example:
/// >>> order_by_points(nums: [1, 11, -1, -11, -12])
/// [-1, -11, 1, -12, 11]
/// >>> order_by_points(nums: [] as [Int])
/// [] as [Int]
func order_by_points(nums: [Int]) -> [Int] {
    return nums.sorted { (lhs, rhs) -> Bool in
        var lhsSum = 0
        var rhsSum = 0
        for char in String(lhs) {
            lhsSum += Int(String(char))!
        }
        for char in String(rhs) {
            rhsSum += Int(String(char))!
        }
        return lhsSum < rhsSum
    }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(order_by_points(nums: [1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11])
assert(order_by_points(nums: [1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]) == [0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457])
assert(order_by_points(nums: [] as [Int]) == [] as [Int])
assert(order_by_points(nums: [1, -11, -32, 43, 54, -98, 2, -3]) == [-3, -32, -98, -11, 1, 2, 43, 54])
assert(order_by_points(nums: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == [1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9])
assert(order_by_points(nums: [0, 6, 6, -76, -21, 23, 4]) == [-76, -21, 0, 4, 23, 6, 6])



// ----------- problem HumanEval_67_fruit_distribution, completion 142 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmprd31g2wb/tmprd31g2wb.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002afc720d9c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afc71dd0561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afc71dd0286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afc71dd013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afc71dcfbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmprd31g2wb                        0x000055f789418eaa <unavailable> + 7850
6    tmprd31g2wb                        0x000055f7894185fb <unavailable> + 5627
7    libc.so.6                          0x00002afc722c5460 __libc_start_main + 245
8    tmprd31g2wb                        0x000055f7894182f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let arr = s.split(separator: " ")
    let apples = Int(arr[0])!
    let oranges = Int(arr[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_67_fruit_distribution, completion 11 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpybd6fg3_/tmpybd6fg3_.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b882f3cec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b882f0c5561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b882f0c5286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b882f0c513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b882f0c4bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpybd6fg3_                        0x000055a3c316ceaa <unavailable> + 7850
6    tmpybd6fg3_                        0x000055a3c316c5fb <unavailable> + 5627
7    libc.so.6                          0x00002b882f5ba460 __libc_start_main + 245
8    tmpybd6fg3_                        0x000055a3c316c2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let fruits = s.split(separator: " ")
    let apples = Int(fruits[0])!
    let oranges = Int(fruits[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_19_sort_numbers, completion 67 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpb_vkuxt6/tmpb_vkuxt6.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7961dacc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7961aa3561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7961aa3286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7961aa313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7961aa2bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpb_vkuxt6                        0x000056122102803c <unavailable> + 8252
6    libswiftCore.so                    0x00002b7961bc4c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b7961bc5110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b7961bc3d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b7961bc3d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b7961ce965a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b7961ad8720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b7961ad870f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b7961bc3460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b7961bc3370 Sequence.sorted(by:) + 193
15   tmpb_vkuxt6                        0x0000561221027d6e <unavailable> + 7534
16   tmpb_vkuxt6                        0x00005612210278c1 <unavailable> + 6337
17   libc.so.6                          0x00002b7961f98460 __libc_start_main + 245
18   tmpb_vkuxt6                        0x00005612210273e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (lhs, rhs) -> Bool in
        return Int(lhs)! < Int(rhs)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_145_order_by_points, completion 143 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpdf_hl_00/tmpdf_hl_00.swift:13: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b05782f1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0577fe8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0577fe8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0577fe813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0577fe7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpdf_hl_00                        0x0000559aecb842fa <unavailable> + 8954
6    libswiftCore.so                    0x00002b05780f7410 Sequence.reduce<A>(_:_:) + 530
7    tmpdf_hl_00                        0x0000559aecb840d3 <unavailable> + 8403
8    libswiftCore.so                    0x00002b0578109c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
9    libswiftCore.so                    0x00002b057810a110 MutableCollection<>._insertionSort(within:by:) + 356
10   libswiftCore.so                    0x00002b0578108d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
11   libswiftCore.so                    0x00002b0578108d15 <unavailable> + 2616597
12   libswiftCore.so                    0x00002b057822e65a <unavailable> + 3819098
13   libswiftCore.so                    0x00002b057801d720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
14   libswiftCore.so                    0x00002b057801d70f <unavailable> + 1652495
15   libswiftCore.so                    0x00002b0578108460 MutableCollection<>.sort(by:) + 771
16   libswiftCore.so                    0x00002b0578108370 Sequence.sorted(by:) + 193
17   tmpdf_hl_00                        0x0000559aecb84000 <unavailable> + 8192
18   tmpdf_hl_00                        0x0000559aecb836b4 <unavailable> + 5812
19   libc.so.6                          0x00002b05784dd460 __libc_start_main + 245
20   tmpdf_hl_00                        0x0000559aecb83389 <unavaila
*/
/* stdout = 

*/


/// Write a function which sorts the given array of integers
/// in ascending order according to the sum of their digits.
/// Note: if there are several items with similar sum of their digits,
/// order them based on their index in original array.
/// For example:
/// >>> order_by_points(nums: [1, 11, -1, -11, -12])
/// [-1, -11, 1, -12, 11]
/// >>> order_by_points(nums: [] as [Int])
/// [] as [Int]
func order_by_points(nums: [Int]) -> [Int] {
    return nums.sorted { (a, b) -> Bool in
        let aSum = String(a).reduce(0) { $0 + Int(String($1))! }
        let bSum = String(b).reduce(0) { $0 + Int(String($1))! }
        return aSum < bSum
    }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(order_by_points(nums: [1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11])
assert(order_by_points(nums: [1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]) == [0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457])
assert(order_by_points(nums: [] as [Int]) == [] as [Int])
assert(order_by_points(nums: [1, -11, -32, 43, 54, -98, 2, -3]) == [-3, -32, -98, -11, 1, 2, 43, 54])
assert(order_by_points(nums: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == [1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9])
assert(order_by_points(nums: [0, 6, 6, -76, -21, 23, 4]) == [-76, -21, 0, 4, 23, 6, 6])



// ----------- problem HumanEval_70_strange_sort_list, completion 79 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp_0lll_od/tmp_0lll_od.swift:21: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002abc1a770c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002abc1a467561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002abc1a467286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002abc1a46713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002abc1a466bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp_0lll_od                        0x000055a714a0573e <unavailable> + 10046
6    tmp_0lll_od                        0x000055a714a0477b <unavailable> + 6011
7    libc.so.6                          0x00002abc1a95c460 __libc_start_main + 245
8    tmp_0lll_od                        0x000055a714a04319 <unavailable> + 4889

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
    var result: [Int] = []
    var lst = lst
    while lst.count > 0 {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        result.append(max)
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_19_sort_numbers, completion 138 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpynqhc_m4/tmpynqhc_m4.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7a73162c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7a72e59561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7a72e59286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7a72e5913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7a72e58bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpynqhc_m4                        0x000055936b50a03c <unavailable> + 8252
6    libswiftCore.so                    0x00002b7a72f7ac90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b7a72f7b110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b7a72f79d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b7a72f79d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b7a7309f65a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b7a72e8e720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b7a72e8e70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b7a72f79460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b7a72f79370 Sequence.sorted(by:) + 193
15   tmpynqhc_m4                        0x000055936b509d6e <unavailable> + 7534
16   tmpynqhc_m4                        0x000055936b5098c1 <unavailable> + 6337
17   libc.so.6                          0x00002b7a7334e460 __libc_start_main + 245
18   tmpynqhc_m4                        0x000055936b5093e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (a, b) -> Bool in
        return Int(a)! < Int(b)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_67_fruit_distribution, completion 38 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmprd31g2wb/tmprd31g2wb.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002afc720d9c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afc71dd0561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afc71dd0286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afc71dd013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afc71dcfbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmprd31g2wb                        0x000055f789418eaa <unavailable> + 7850
6    tmprd31g2wb                        0x000055f7894185fb <unavailable> + 5627
7    libc.so.6                          0x00002afc722c5460 __libc_start_main + 245
8    tmprd31g2wb                        0x000055f7894182f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let arr = s.split(separator: " ")
    let apples = Int(arr[0])!
    let oranges = Int(arr[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_70_strange_sort_list, completion 179 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp7bp8juob/tmp7bp8juob.swift:21: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002ae5e6f10c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae5e6c07561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae5e6c07286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae5e6c0713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae5e6c06bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp7bp8juob                        0x000056460e54e789 <unavailable> + 10121
6    tmp7bp8juob                        0x000056460e54d7cb <unavailable> + 6091
7    libc.so.6                          0x00002ae5e70fc460 __libc_start_main + 245
8    tmp7bp8juob                        0x000056460e54d369 <unavailable> + 4969

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
    var lst = lst
    while !lst.isEmpty {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        result.append(max)
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_145_order_by_points, completion 15 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpkw1wpe01/tmpkw1wpe01.swift:13: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7d783b1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7d780a8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7d780a8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7d780a813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7d780a7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpkw1wpe01                        0x000055d0a35eb4f1 <unavailable> + 9457
6    libswiftCore.so                    0x00002b7d78090820 Collection.map<A>(_:) + 426
7    tmpkw1wpe01                        0x000055d0a35eb131 <unavailable> + 8497
8    libswiftCore.so                    0x00002b7d781c9c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
9    libswiftCore.so                    0x00002b7d781ca110 MutableCollection<>._insertionSort(within:by:) + 356
10   libswiftCore.so                    0x00002b7d781c8d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
11   libswiftCore.so                    0x00002b7d781c8d15 <unavailable> + 2616597
12   libswiftCore.so                    0x00002b7d782ee65a <unavailable> + 3819098
13   libswiftCore.so                    0x00002b7d780dd720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
14   libswiftCore.so                    0x00002b7d780dd70f <unavailable> + 1652495
15   libswiftCore.so                    0x00002b7d781c8460 MutableCollection<>.sort(by:) + 771
16   libswiftCore.so                    0x00002b7d781c8370 Sequence.sorted(by:) + 193
17   tmpkw1wpe01                        0x000055d0a35eb060 <unavailable> + 8288
18   tmpkw1wpe01                        0x000055d0a35ea714 <unavailable> + 5908
19   libc.so.6                          0x00002b7d7859d460 __libc_start_main + 245
20   tmpkw1wpe01                        0x000055d0a35ea3e9 <unavailable
*/
/* stdout = 

*/


/// Write a function which sorts the given array of integers
/// in ascending order according to the sum of their digits.
/// Note: if there are several items with similar sum of their digits,
/// order them based on their index in original array.
/// For example:
/// >>> order_by_points(nums: [1, 11, -1, -11, -12])
/// [-1, -11, 1, -12, 11]
/// >>> order_by_points(nums: [] as [Int])
/// [] as [Int]
func order_by_points(nums: [Int]) -> [Int] {
    return nums.sorted { (a, b) -> Bool in
        let aSum = String(a).map { Int(String($0))! }.reduce(0, +)
        let bSum = String(b).map { Int(String($0))! }.reduce(0, +)
        return aSum < bSum
    }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(order_by_points(nums: [1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11])
assert(order_by_points(nums: [1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]) == [0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457])
assert(order_by_points(nums: [] as [Int]) == [] as [Int])
assert(order_by_points(nums: [1, -11, -32, 43, 54, -98, 2, -3]) == [-3, -32, -98, -11, 1, 2, 43, 54])
assert(order_by_points(nums: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == [1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9])
assert(order_by_points(nums: [0, 6, 6, -76, -21, 23, 4]) == [-76, -21, 0, 4, 23, 6, 6])



// ----------- problem HumanEval_67_fruit_distribution, completion 153 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpywydsiss/tmpywydsiss.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b26d1238c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b26d0f2f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b26d0f2f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b26d0f2f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b26d0f2ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpywydsiss                        0x00005653cef2beaa <unavailable> + 7850
6    tmpywydsiss                        0x00005653cef2b5fb <unavailable> + 5627
7    libc.so.6                          0x00002b26d1424460 __libc_start_main + 245
8    tmpywydsiss                        0x00005653cef2b2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let arr = s.split(separator: " ")
    let a = Int(arr[0])!
    let o = Int(arr[2])!
    return n - a - o
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_70_strange_sort_list, completion 72 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpbn1f36cp/tmpbn1f36cp.swift:20: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002abb1d108c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002abb1cdff561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002abb1cdff286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002abb1cdff13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002abb1cdfebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpbn1f36cp                        0x0000562c25989638 <unavailable> + 9784
6    tmpbn1f36cp                        0x0000562c2598863c <unavailable> + 5692
7    libc.so.6                          0x00002abb1d2f4460 __libc_start_main + 245
8    tmpbn1f36cp                        0x0000562c25988319 <unavailable> + 4889

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
    var lst = lst
    var result = [Int]()
    var min = lst.min()
    var max = lst.max()
    while min != nil || max != nil {
        if min != nil {
            result.append(min!)
            lst.remove(at: lst.index(of: min!)!)
            min = lst.min()
        }
        if max != nil {
            result.append(max!)
            lst.remove(at: lst.index(of: max!)!)
            max = lst.max()
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



// ----------- problem HumanEval_145_order_by_points, completion 52 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpdf_hl_00/tmpdf_hl_00.swift:13: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b05782f1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0577fe8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0577fe8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0577fe813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0577fe7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpdf_hl_00                        0x0000559aecb842fa <unavailable> + 8954
6    libswiftCore.so                    0x00002b05780f7410 Sequence.reduce<A>(_:_:) + 530
7    tmpdf_hl_00                        0x0000559aecb840d3 <unavailable> + 8403
8    libswiftCore.so                    0x00002b0578109c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
9    libswiftCore.so                    0x00002b057810a110 MutableCollection<>._insertionSort(within:by:) + 356
10   libswiftCore.so                    0x00002b0578108d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
11   libswiftCore.so                    0x00002b0578108d15 <unavailable> + 2616597
12   libswiftCore.so                    0x00002b057822e65a <unavailable> + 3819098
13   libswiftCore.so                    0x00002b057801d720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
14   libswiftCore.so                    0x00002b057801d70f <unavailable> + 1652495
15   libswiftCore.so                    0x00002b0578108460 MutableCollection<>.sort(by:) + 771
16   libswiftCore.so                    0x00002b0578108370 Sequence.sorted(by:) + 193
17   tmpdf_hl_00                        0x0000559aecb84000 <unavailable> + 8192
18   tmpdf_hl_00                        0x0000559aecb836b4 <unavailable> + 5812
19   libc.so.6                          0x00002b05784dd460 __libc_start_main + 245
20   tmpdf_hl_00                        0x0000559aecb83389 <unavaila
*/
/* stdout = 

*/


/// Write a function which sorts the given array of integers
/// in ascending order according to the sum of their digits.
/// Note: if there are several items with similar sum of their digits,
/// order them based on their index in original array.
/// For example:
/// >>> order_by_points(nums: [1, 11, -1, -11, -12])
/// [-1, -11, 1, -12, 11]
/// >>> order_by_points(nums: [] as [Int])
/// [] as [Int]
func order_by_points(nums: [Int]) -> [Int] {
    return nums.sorted { (a, b) -> Bool in
        let aSum = String(a).reduce(0) { $0 + Int(String($1))! }
        let bSum = String(b).reduce(0) { $0 + Int(String($1))! }
        return aSum < bSum
    }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(order_by_points(nums: [1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11])
assert(order_by_points(nums: [1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]) == [0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457])
assert(order_by_points(nums: [] as [Int]) == [] as [Int])
assert(order_by_points(nums: [1, -11, -32, 43, 54, -98, 2, -3]) == [-3, -32, -98, -11, 1, 2, 43, 54])
assert(order_by_points(nums: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == [1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9])
assert(order_by_points(nums: [0, 6, 6, -76, -21, 23, 4]) == [-76, -21, 0, 4, 23, 6, 6])



// ----------- problem HumanEval_67_fruit_distribution, completion 147 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpybd6fg3_/tmpybd6fg3_.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b882f3cec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b882f0c5561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b882f0c5286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b882f0c513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b882f0c4bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpybd6fg3_                        0x000055a3c316ceaa <unavailable> + 7850
6    tmpybd6fg3_                        0x000055a3c316c5fb <unavailable> + 5627
7    libc.so.6                          0x00002b882f5ba460 __libc_start_main + 245
8    tmpybd6fg3_                        0x000055a3c316c2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let fruits = s.split(separator: " ")
    let apples = Int(fruits[0])!
    let oranges = Int(fruits[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_70_strange_sort_list, completion 21 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp7bp8juob/tmp7bp8juob.swift:21: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002ae5e6f10c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae5e6c07561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae5e6c07286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae5e6c0713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae5e6c06bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp7bp8juob                        0x000056460e54e789 <unavailable> + 10121
6    tmp7bp8juob                        0x000056460e54d7cb <unavailable> + 6091
7    libc.so.6                          0x00002ae5e70fc460 __libc_start_main + 245
8    tmp7bp8juob                        0x000056460e54d369 <unavailable> + 4969

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
    var lst = lst
    while !lst.isEmpty {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        result.append(max)
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_67_fruit_distribution, completion 103 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpybd6fg3_/tmpybd6fg3_.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b882f3cec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b882f0c5561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b882f0c5286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b882f0c513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b882f0c4bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpybd6fg3_                        0x000055a3c316ceaa <unavailable> + 7850
6    tmpybd6fg3_                        0x000055a3c316c5fb <unavailable> + 5627
7    libc.so.6                          0x00002b882f5ba460 __libc_start_main + 245
8    tmpybd6fg3_                        0x000055a3c316c2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let fruits = s.split(separator: " ")
    let apples = Int(fruits[0])!
    let oranges = Int(fruits[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_88_sort_array, completion 31 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp5iovv1h7/tmp5iovv1h7.swift:18: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b2406583c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b240627a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b240627a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b240627a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b2406279bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp5iovv1h7                        0x000056133d6fbefd <unavailable> + 7933
6    tmp5iovv1h7                        0x000056133d6fb50d <unavailable> + 5389
7    libc.so.6                          0x00002b240676f460 __libc_start_main + 245
8    tmp5iovv1h7                        0x000056133d6fb219 <unavailable> + 4633

*/
/* stdout = 

*/


/// Given an array of non-negative integers, return a coswift of the given array after sorting,
/// you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
/// or sort it in descending order if the sum( first index value, last index value) is even.
/// Note:
/// * don't change the given array.
/// Examples:
/// >>> sort_array(array: [] as [Int])
/// [] as [Int]
/// >>> sort_array(array: [5])
/// [5]
/// >>> sort_array(array: [2, 4, 3, 0, 1, 5])
/// [0, 1, 2, 3, 4, 5]
/// >>> sort_array(array: [2, 4, 3, 0, 1, 5, 6])
/// [6, 5, 4, 3, 2, 1, 0]
func sort_array(array: [Int]) -> [Int] {
    var result = array
    let sum = array.first! + array.last!
    if sum % 2 == 0 {
        result.sort(by: >)
    } else {
        result.sort(by: <)
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
            
assert(sort_array(array: [] as [Int]) == [] as [Int])
assert(sort_array(array: [5]) == [5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5]) == [0, 1, 2, 3, 4, 5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5, 6]) == [6, 5, 4, 3, 2, 1, 0])
assert(sort_array(array: [2, 1]) == [1, 2])
assert(sort_array(array: [15, 42, 87, 32, 11, 0]) == [0, 11, 15, 32, 42, 87])
assert(sort_array(array: [21, 14, 23, 11]) == [23, 21, 14, 11])



// ----------- problem HumanEval_19_sort_numbers, completion 41 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpynqhc_m4/tmpynqhc_m4.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7a73162c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7a72e59561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7a72e59286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7a72e5913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7a72e58bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpynqhc_m4                        0x000055936b50a03c <unavailable> + 8252
6    libswiftCore.so                    0x00002b7a72f7ac90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b7a72f7b110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b7a72f79d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b7a72f79d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b7a7309f65a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b7a72e8e720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b7a72e8e70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b7a72f79460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b7a72f79370 Sequence.sorted(by:) + 193
15   tmpynqhc_m4                        0x000055936b509d6e <unavailable> + 7534
16   tmpynqhc_m4                        0x000055936b5098c1 <unavailable> + 6337
17   libc.so.6                          0x00002b7a7334e460 __libc_start_main + 245
18   tmpynqhc_m4                        0x000055936b5093e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (a, b) -> Bool in
        return Int(a)! < Int(b)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_70_strange_sort_list, completion 167 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmprs8_3o03/tmprs8_3o03.swift:21: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002af911ec2c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af911bb9561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af911bb9286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af911bb913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af911bb8bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmprs8_3o03                        0x0000556cbe485737 <unavailable> + 10039
6    tmprs8_3o03                        0x0000556cbe48477b <unavailable> + 6011
7    libc.so.6                          0x00002af9120ae460 __libc_start_main + 245
8    tmprs8_3o03                        0x0000556cbe484319 <unavailable> + 4889

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
    var lst = lst
    var result: [Int] = []
    while lst.count > 0 {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        result.append(max)
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_70_strange_sort_list, completion 63 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpa0x4i88k/tmpa0x4i88k.swift:23: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002ae87c146c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae87be3d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae87be3d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae87be3d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae87be3cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpa0x4i88k                        0x000055ab9aca4760 <unavailable> + 10080
6    tmpa0x4i88k                        0x000055ab9aca377b <unavailable> + 6011
7    libc.so.6                          0x00002ae87c332460 __libc_start_main + 245
8    tmpa0x4i88k                        0x000055ab9aca3319 <unavailable> + 4889

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
    var lst = lst
    var result: [Int] = []
    while !lst.isEmpty {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        if min != max {
            result.append(max)
        }
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_67_fruit_distribution, completion 198 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmprd31g2wb/tmprd31g2wb.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002afc720d9c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afc71dd0561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afc71dd0286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afc71dd013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afc71dcfbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmprd31g2wb                        0x000055f789418eaa <unavailable> + 7850
6    tmprd31g2wb                        0x000055f7894185fb <unavailable> + 5627
7    libc.so.6                          0x00002afc722c5460 __libc_start_main + 245
8    tmprd31g2wb                        0x000055f7894182f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let arr = s.split(separator: " ")
    let apples = Int(arr[0])!
    let oranges = Int(arr[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_145_order_by_points, completion 88 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpqx_dx3rr/tmpqx_dx3rr.swift:13: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002ac665058c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ac664d4f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ac664d4f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ac664d4f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ac664d4ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpqx_dx3rr                        0x0000563217efa2fa <unavailable> + 8954
6    libswiftCore.so                    0x00002ac664e5e410 Sequence.reduce<A>(_:_:) + 530
7    tmpqx_dx3rr                        0x0000563217efa0d3 <unavailable> + 8403
8    libswiftCore.so                    0x00002ac664e70c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
9    libswiftCore.so                    0x00002ac664e71110 MutableCollection<>._insertionSort(within:by:) + 356
10   libswiftCore.so                    0x00002ac664e6fd30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
11   libswiftCore.so                    0x00002ac664e6fd15 <unavailable> + 2616597
12   libswiftCore.so                    0x00002ac664f9565a <unavailable> + 3819098
13   libswiftCore.so                    0x00002ac664d84720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
14   libswiftCore.so                    0x00002ac664d8470f <unavailable> + 1652495
15   libswiftCore.so                    0x00002ac664e6f460 MutableCollection<>.sort(by:) + 771
16   libswiftCore.so                    0x00002ac664e6f370 Sequence.sorted(by:) + 193
17   tmpqx_dx3rr                        0x0000563217efa000 <unavailable> + 8192
18   tmpqx_dx3rr                        0x0000563217ef96b4 <unavailable> + 5812
19   libc.so.6                          0x00002ac665244460 __libc_start_main + 245
20   tmpqx_dx3rr                        0x0000563217ef9389 <unavaila
*/
/* stdout = 

*/


/// Write a function which sorts the given array of integers
/// in ascending order according to the sum of their digits.
/// Note: if there are several items with similar sum of their digits,
/// order them based on their index in original array.
/// For example:
/// >>> order_by_points(nums: [1, 11, -1, -11, -12])
/// [-1, -11, 1, -12, 11]
/// >>> order_by_points(nums: [] as [Int])
/// [] as [Int]
func order_by_points(nums: [Int]) -> [Int] {
    return nums.sorted {
        let sum1 = String($0).reduce(0) { $0 + Int(String($1))! }
        let sum2 = String($1).reduce(0) { $0 + Int(String($1))! }
        return sum1 < sum2
    }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(order_by_points(nums: [1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11])
assert(order_by_points(nums: [1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]) == [0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457])
assert(order_by_points(nums: [] as [Int]) == [] as [Int])
assert(order_by_points(nums: [1, -11, -32, 43, 54, -98, 2, -3]) == [-3, -32, -98, -11, 1, 2, 43, 54])
assert(order_by_points(nums: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == [1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9])
assert(order_by_points(nums: [0, 6, 6, -76, -21, 23, 4]) == [-76, -21, 0, 4, 23, 6, 6])



// ----------- problem HumanEval_145_order_by_points, completion 34 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp993e8184/tmp993e8184.swift:14: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b005af9dc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b005ac94561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b005ac94286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b005ac9413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b005ac93bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp993e8184                        0x000055c02e2b231a <unavailable> + 8986
6    libswiftCore.so                    0x00002b005ada3410 Sequence.reduce<A>(_:_:) + 530
7    tmp993e8184                        0x000055c02e2b20f3 <unavailable> + 8435
8    libswiftSwiftOnoneSupport.so       0x00002b005aa80020 specialized MutableCollection<>._insertionSort(within:sortedEnd:by:) + 152
9    libswiftSwiftOnoneSupport.so       0x00002b005aa8704d <unavailable> + 135245
10   libswiftSwiftOnoneSupport.so       0x00002b005aa820d2 <unavailable> + 114898
11   libswiftSwiftOnoneSupport.so       0x00002b005aa817b0 specialized MutableCollection<>.sort(by:) + 27
12   tmp993e8184                        0x000055c02e2b2009 <unavailable> + 8201
13   tmp993e8184                        0x000055c02e2b16c4 <unavailable> + 5828
14   libc.so.6                          0x00002b005b189460 __libc_start_main + 245
15   tmp993e8184                        0x000055c02e2b1399 <unavailable> + 5017

*/
/* stdout = 

*/


/// Write a function which sorts the given array of integers
/// in ascending order according to the sum of their digits.
/// Note: if there are several items with similar sum of their digits,
/// order them based on their index in original array.
/// For example:
/// >>> order_by_points(nums: [1, 11, -1, -11, -12])
/// [-1, -11, 1, -12, 11]
/// >>> order_by_points(nums: [] as [Int])
/// [] as [Int]
func order_by_points(nums: [Int]) -> [Int] {
    var nums = nums
    nums.sort { (a, b) -> Bool in
        let aSum = String(a).reduce(0) { $0 + Int(String($1))! }
        let bSum = String(b).reduce(0) { $0 + Int(String($1))! }
        return aSum < bSum
    }
    return nums
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(order_by_points(nums: [1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11])
assert(order_by_points(nums: [1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]) == [0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457])
assert(order_by_points(nums: [] as [Int]) == [] as [Int])
assert(order_by_points(nums: [1, -11, -32, 43, 54, -98, 2, -3]) == [-3, -32, -98, -11, 1, 2, 43, 54])
assert(order_by_points(nums: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == [1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9])
assert(order_by_points(nums: [0, 6, 6, -76, -21, 23, 4]) == [-76, -21, 0, 4, 23, 6, 6])



// ----------- problem HumanEval_19_sort_numbers, completion 126 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpynqhc_m4/tmpynqhc_m4.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7a73162c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7a72e59561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7a72e59286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7a72e5913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7a72e58bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpynqhc_m4                        0x000055936b50a03c <unavailable> + 8252
6    libswiftCore.so                    0x00002b7a72f7ac90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b7a72f7b110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b7a72f79d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b7a72f79d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b7a7309f65a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b7a72e8e720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b7a72e8e70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b7a72f79460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b7a72f79370 Sequence.sorted(by:) + 193
15   tmpynqhc_m4                        0x000055936b509d6e <unavailable> + 7534
16   tmpynqhc_m4                        0x000055936b5098c1 <unavailable> + 6337
17   libc.so.6                          0x00002b7a7334e460 __libc_start_main + 245
18   tmpynqhc_m4                        0x000055936b5093e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (a, b) -> Bool in
        return Int(a)! < Int(b)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_67_fruit_distribution, completion 30 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpywydsiss/tmpywydsiss.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b26d1238c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b26d0f2f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b26d0f2f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b26d0f2f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b26d0f2ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpywydsiss                        0x00005653cef2beaa <unavailable> + 7850
6    tmpywydsiss                        0x00005653cef2b5fb <unavailable> + 5627
7    libc.so.6                          0x00002b26d1424460 __libc_start_main + 245
8    tmpywydsiss                        0x00005653cef2b2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let arr = s.split(separator: " ")
    let a = Int(arr[0])!
    let o = Int(arr[2])!
    return n - a - o
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_89_encrypt, completion 43 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpl7f8tcbd/tmpl7f8tcbd.swift:26: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002abe39310c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002abe39007561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002abe39007286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002abe3900713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002abe39006bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpl7f8tcbd                        0x000055dc7b84b2cf <unavailable> + 8911
6    tmpl7f8tcbd                        0x000055dc7b84a696 <unavailable> + 5782
7    libc.so.6                          0x00002abe394fc460 __libc_start_main + 245
8    tmpl7f8tcbd                        0x000055dc7b84a399 <unavailable> + 5017

*/
/* stdout = 

*/


/// Create a function encrypt that takes a string as an argument and
/// returns a string encrypted with the alphabet being rotated. 
/// The alphabet should be rotated in a manner such that the letters 
/// shift down by two multiplied to two places.
/// For example:
/// >>> encrypt(s: "hi")
/// "lm"
/// >>> encrypt(s: "asdfghjkl")
/// "ewhjklnop"
/// >>> encrypt(s: "gf")
/// "kj"
/// >>> encrypt(s: "et")
/// "ix"
func encrypt(s: String) -> String {
    var encrypted = ""
    for char in s {
        var newChar = char
        if char == "z" {
            newChar = "b"
        } else if char == "y" {
            newChar = "a"
        } else if char == " " {
            newChar = " "
        } else {
            newChar = Character(UnicodeScalar(Int(String(char))! + 2)!)
        }
        encrypted += String(newChar)
    }
    return encrypted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(encrypt(s: "hi") == "lm")
assert(encrypt(s: "asdfghjkl") == "ewhjklnop")
assert(encrypt(s: "gf") == "kj")
assert(encrypt(s: "et") == "ix")
assert(encrypt(s: "faewfawefaewg") == "jeiajeaijeiak")
assert(encrypt(s: "hellomyfriend") == "lippsqcjvmirh")
assert(encrypt(s: "dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh") == "hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl")
assert(encrypt(s: "a") == "e")



// ----------- problem HumanEval_93_encode, completion 73 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp12kjzhua/tmp12kjzhua.swift:18: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002ac33988fc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ac339586561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ac339586286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ac33958613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ac339585bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp12kjzhua                        0x000055cc5e20b292 <unavailable> + 8850
6    tmp12kjzhua                        0x000055cc5e20a8d6 <unavailable> + 6358
7    libc.so.6                          0x00002ac339a7b460 __libc_start_main + 245
8    tmp12kjzhua                        0x000055cc5e20a5d9 <unavailable> + 5593

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
    var encodedMessage = ""
    let vowels = ["a", "e", "i", "o", "u"]
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    for char in message {
        if vowels.contains(String(char).lowercased()) {
            let index = alphabet.index(alphabet.startIndex, offsetBy: alphabet.distance(from: alphabet.startIndex, to: alphabet.firstIndex(of: char)!) + 2)
            encodedMessage.append(alphabet[index])
        } else {
            encodedMessage.append(char)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_70_strange_sort_list, completion 113 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpfoaxw91r/tmpfoaxw91r.swift:21: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002ba8a8d6ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba8a8a65561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba8a8a65286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba8a8a6513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba8a8a64bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpfoaxw91r                        0x0000561365a60782 <unavailable> + 10114
6    tmpfoaxw91r                        0x0000561365a5f7cb <unavailable> + 6091
7    libc.so.6                          0x00002ba8a8f5a460 __libc_start_main + 245
8    tmpfoaxw91r                        0x0000561365a5f369 <unavailable> + 4969

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
    var lst = lst
    var result = [Int]()
    while !lst.isEmpty {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        result.append(max)
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_145_order_by_points, completion 60 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp7_qi7trl/tmp7_qi7trl.swift:13: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b2dcd1ecc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b2dccee3561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b2dccee3286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b2dccee313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b2dccee2bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp7_qi7trl                        0x00005624999082fa <unavailable> + 8954
6    libswiftCore.so                    0x00002b2dccff2410 Sequence.reduce<A>(_:_:) + 530
7    tmp7_qi7trl                        0x00005624999080d3 <unavailable> + 8403
8    libswiftCore.so                    0x00002b2dcd004c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
9    libswiftCore.so                    0x00002b2dcd005110 MutableCollection<>._insertionSort(within:by:) + 356
10   libswiftCore.so                    0x00002b2dcd003d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
11   libswiftCore.so                    0x00002b2dcd003d15 <unavailable> + 2616597
12   libswiftCore.so                    0x00002b2dcd12965a <unavailable> + 3819098
13   libswiftCore.so                    0x00002b2dccf18720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
14   libswiftCore.so                    0x00002b2dccf1870f <unavailable> + 1652495
15   libswiftCore.so                    0x00002b2dcd003460 MutableCollection<>.sort(by:) + 771
16   libswiftCore.so                    0x00002b2dcd003370 Sequence.sorted(by:) + 193
17   tmp7_qi7trl                        0x0000562499908000 <unavailable> + 8192
18   tmp7_qi7trl                        0x00005624999076b4 <unavailable> + 5812
19   libc.so.6                          0x00002b2dcd3d8460 __libc_start_main + 245
20   tmp7_qi7trl                        0x0000562499907389 <unavaila
*/
/* stdout = 

*/


/// Write a function which sorts the given array of integers
/// in ascending order according to the sum of their digits.
/// Note: if there are several items with similar sum of their digits,
/// order them based on their index in original array.
/// For example:
/// >>> order_by_points(nums: [1, 11, -1, -11, -12])
/// [-1, -11, 1, -12, 11]
/// >>> order_by_points(nums: [] as [Int])
/// [] as [Int]
func order_by_points(nums: [Int]) -> [Int] {
    return nums.sorted(by: { (a, b) -> Bool in
        let aSum = String(a).reduce(0, { $0 + Int(String($1))! })
        let bSum = String(b).reduce(0, { $0 + Int(String($1))! })
        return aSum < bSum
    })
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(order_by_points(nums: [1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11])
assert(order_by_points(nums: [1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]) == [0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457])
assert(order_by_points(nums: [] as [Int]) == [] as [Int])
assert(order_by_points(nums: [1, -11, -32, 43, 54, -98, 2, -3]) == [-3, -32, -98, -11, 1, 2, 43, 54])
assert(order_by_points(nums: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == [1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9])
assert(order_by_points(nums: [0, 6, 6, -76, -21, 23, 4]) == [-76, -21, 0, 4, 23, 6, 6])



// ----------- problem HumanEval_67_fruit_distribution, completion 94 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpjnl521vc/tmpjnl521vc.swift:21: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b47b064fc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b47b0346561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b47b0346286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b47b034613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b47b0345bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpjnl521vc                        0x000055c617a88d03 <unavailable> + 7427
6    tmpjnl521vc                        0x000055c617a8858b <unavailable> + 5515
7    libc.so.6                          0x00002b47b083b460 __libc_start_main + 245
8    tmpjnl521vc                        0x000055c617a88289 <unavailable> + 4745

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    var total = 0
    var fruit = ""
    for char in s {
        if char == " " {
            total += Int(fruit)!
            fruit = ""
        } else {
            fruit += String(char)
        }
    }
    total += Int(fruit)!
    return n - total
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_145_order_by_points, completion 169 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpdf_hl_00/tmpdf_hl_00.swift:13: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b05782f1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0577fe8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0577fe8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0577fe813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0577fe7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpdf_hl_00                        0x0000559aecb842fa <unavailable> + 8954
6    libswiftCore.so                    0x00002b05780f7410 Sequence.reduce<A>(_:_:) + 530
7    tmpdf_hl_00                        0x0000559aecb840d3 <unavailable> + 8403
8    libswiftCore.so                    0x00002b0578109c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
9    libswiftCore.so                    0x00002b057810a110 MutableCollection<>._insertionSort(within:by:) + 356
10   libswiftCore.so                    0x00002b0578108d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
11   libswiftCore.so                    0x00002b0578108d15 <unavailable> + 2616597
12   libswiftCore.so                    0x00002b057822e65a <unavailable> + 3819098
13   libswiftCore.so                    0x00002b057801d720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
14   libswiftCore.so                    0x00002b057801d70f <unavailable> + 1652495
15   libswiftCore.so                    0x00002b0578108460 MutableCollection<>.sort(by:) + 771
16   libswiftCore.so                    0x00002b0578108370 Sequence.sorted(by:) + 193
17   tmpdf_hl_00                        0x0000559aecb84000 <unavailable> + 8192
18   tmpdf_hl_00                        0x0000559aecb836b4 <unavailable> + 5812
19   libc.so.6                          0x00002b05784dd460 __libc_start_main + 245
20   tmpdf_hl_00                        0x0000559aecb83389 <unavaila
*/
/* stdout = 

*/


/// Write a function which sorts the given array of integers
/// in ascending order according to the sum of their digits.
/// Note: if there are several items with similar sum of their digits,
/// order them based on their index in original array.
/// For example:
/// >>> order_by_points(nums: [1, 11, -1, -11, -12])
/// [-1, -11, 1, -12, 11]
/// >>> order_by_points(nums: [] as [Int])
/// [] as [Int]
func order_by_points(nums: [Int]) -> [Int] {
    return nums.sorted { (a, b) -> Bool in
        let aSum = String(a).reduce(0) { $0 + Int(String($1))! }
        let bSum = String(b).reduce(0) { $0 + Int(String($1))! }
        return aSum < bSum
    }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(order_by_points(nums: [1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11])
assert(order_by_points(nums: [1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]) == [0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457])
assert(order_by_points(nums: [] as [Int]) == [] as [Int])
assert(order_by_points(nums: [1, -11, -32, 43, 54, -98, 2, -3]) == [-3, -32, -98, -11, 1, 2, 43, 54])
assert(order_by_points(nums: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == [1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9])
assert(order_by_points(nums: [0, 6, 6, -76, -21, 23, 4]) == [-76, -21, 0, 4, 23, 6, 6])



// ----------- problem HumanEval_145_order_by_points, completion 98 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpdf_hl_00/tmpdf_hl_00.swift:13: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b05782f1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0577fe8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0577fe8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0577fe813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0577fe7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpdf_hl_00                        0x0000559aecb842fa <unavailable> + 8954
6    libswiftCore.so                    0x00002b05780f7410 Sequence.reduce<A>(_:_:) + 530
7    tmpdf_hl_00                        0x0000559aecb840d3 <unavailable> + 8403
8    libswiftCore.so                    0x00002b0578109c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
9    libswiftCore.so                    0x00002b057810a110 MutableCollection<>._insertionSort(within:by:) + 356
10   libswiftCore.so                    0x00002b0578108d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
11   libswiftCore.so                    0x00002b0578108d15 <unavailable> + 2616597
12   libswiftCore.so                    0x00002b057822e65a <unavailable> + 3819098
13   libswiftCore.so                    0x00002b057801d720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
14   libswiftCore.so                    0x00002b057801d70f <unavailable> + 1652495
15   libswiftCore.so                    0x00002b0578108460 MutableCollection<>.sort(by:) + 771
16   libswiftCore.so                    0x00002b0578108370 Sequence.sorted(by:) + 193
17   tmpdf_hl_00                        0x0000559aecb84000 <unavailable> + 8192
18   tmpdf_hl_00                        0x0000559aecb836b4 <unavailable> + 5812
19   libc.so.6                          0x00002b05784dd460 __libc_start_main + 245
20   tmpdf_hl_00                        0x0000559aecb83389 <unavaila
*/
/* stdout = 

*/


/// Write a function which sorts the given array of integers
/// in ascending order according to the sum of their digits.
/// Note: if there are several items with similar sum of their digits,
/// order them based on their index in original array.
/// For example:
/// >>> order_by_points(nums: [1, 11, -1, -11, -12])
/// [-1, -11, 1, -12, 11]
/// >>> order_by_points(nums: [] as [Int])
/// [] as [Int]
func order_by_points(nums: [Int]) -> [Int] {
    return nums.sorted { (a, b) -> Bool in
        let aSum = String(a).reduce(0) { $0 + Int(String($1))! }
        let bSum = String(b).reduce(0) { $0 + Int(String($1))! }
        return aSum < bSum
    }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(order_by_points(nums: [1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11])
assert(order_by_points(nums: [1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]) == [0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457])
assert(order_by_points(nums: [] as [Int]) == [] as [Int])
assert(order_by_points(nums: [1, -11, -32, 43, 54, -98, 2, -3]) == [-3, -32, -98, -11, 1, 2, 43, 54])
assert(order_by_points(nums: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == [1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9])
assert(order_by_points(nums: [0, 6, 6, -76, -21, 23, 4]) == [-76, -21, 0, 4, 23, 6, 6])



// ----------- problem HumanEval_67_fruit_distribution, completion 169 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpyvix5341/tmpyvix5341.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b4021a63c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b402175a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b402175a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b402175a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b4021759bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpyvix5341                        0x000055f534d7febd <unavailable> + 7869
6    tmpyvix5341                        0x000055f534d7f5fb <unavailable> + 5627
7    libc.so.6                          0x00002b4021c4f460 __libc_start_main + 245
8    tmpyvix5341                        0x000055f534d7f2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let arr = s.split(separator: " ")
    let apples = Int(arr[0])!
    let oranges = Int(arr[2])!
    let mangoes = n - apples - oranges
    return mangoes
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_19_sort_numbers, completion 4 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpnveobtux/tmpnveobtux.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002aae6540fc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aae65106561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aae65106286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aae6510613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aae65105bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpnveobtux                        0x000055ce1ceb503c <unavailable> + 8252
6    libswiftCore.so                    0x00002aae65227c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002aae65228110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002aae65226d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002aae65226d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002aae6534c65a <unavailable> + 3819098
11   libswiftCore.so                    0x00002aae6513b720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002aae6513b70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002aae65226460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002aae65226370 Sequence.sorted(by:) + 193
15   tmpnveobtux                        0x000055ce1ceb4d6e <unavailable> + 7534
16   tmpnveobtux                        0x000055ce1ceb48c1 <unavailable> + 6337
17   libc.so.6                          0x00002aae655fb460 __libc_start_main + 245
18   tmpnveobtux                        0x000055ce1ceb43e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let numbers = numbers.split(separator: " ")
    let sortedNumbers = numbers.sorted { (lhs, rhs) -> Bool in
        return Int(lhs)! < Int(rhs)!
    }
    return sortedNumbers.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_19_sort_numbers, completion 40 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmppmnnnf58/tmppmnnnf58.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b49f0c4ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b49f0945561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b49f0945286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b49f094513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b49f0944bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmppmnnnf58                        0x0000559e9e31000d <unavailable> + 8205
6    libswiftCore.so                    0x00002b49f0a66c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b49f0a67110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b49f0a65d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b49f0a65d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b49f0b8b65a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b49f097a720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b49f097a70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b49f0a65460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b49f0a65370 Sequence.sorted(by:) + 193
15   tmppmnnnf58                        0x0000559e9e30fdae <unavailable> + 7598
16   tmppmnnnf58                        0x0000559e9e30f901 <unavailable> + 6401
17   libc.so.6                          0x00002b49f0e3a460 __libc_start_main + 245
18   tmppmnnnf58                        0x0000559e9e30f429 <unavailable> + 5161

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted(by: {
        return Int(String($0))! < Int(String($1))!
    })
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_67_fruit_distribution, completion 192 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpybd6fg3_/tmpybd6fg3_.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b882f3cec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b882f0c5561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b882f0c5286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b882f0c513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b882f0c4bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpybd6fg3_                        0x000055a3c316ceaa <unavailable> + 7850
6    tmpybd6fg3_                        0x000055a3c316c5fb <unavailable> + 5627
7    libc.so.6                          0x00002b882f5ba460 __libc_start_main + 245
8    tmpybd6fg3_                        0x000055a3c316c2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let fruits = s.split(separator: " ")
    let apples = Int(fruits[0])!
    let oranges = Int(fruits[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_19_sort_numbers, completion 48 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpynqhc_m4/tmpynqhc_m4.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7a73162c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7a72e59561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7a72e59286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7a72e5913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7a72e58bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpynqhc_m4                        0x000055936b50a03c <unavailable> + 8252
6    libswiftCore.so                    0x00002b7a72f7ac90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b7a72f7b110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b7a72f79d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b7a72f79d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b7a7309f65a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b7a72e8e720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b7a72e8e70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b7a72f79460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b7a72f79370 Sequence.sorted(by:) + 193
15   tmpynqhc_m4                        0x000055936b509d6e <unavailable> + 7534
16   tmpynqhc_m4                        0x000055936b5098c1 <unavailable> + 6337
17   libc.so.6                          0x00002b7a7334e460 __libc_start_main + 245
18   tmpynqhc_m4                        0x000055936b5093e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (a, b) -> Bool in
        return Int(a)! < Int(b)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_19_sort_numbers, completion 131 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp_iioyz9q/tmp_iioyz9q.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002aecf54a5c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aecf519c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aecf519c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aecf519c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aecf519bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp_iioyz9q                        0x000055915b61303c <unavailable> + 8252
6    libswiftCore.so                    0x00002aecf52bdc90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002aecf52be110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002aecf52bcd30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002aecf52bcd15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002aecf53e265a <unavailable> + 3819098
11   libswiftCore.so                    0x00002aecf51d1720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002aecf51d170f <unavailable> + 1652495
13   libswiftCore.so                    0x00002aecf52bc460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002aecf52bc370 Sequence.sorted(by:) + 193
15   tmp_iioyz9q                        0x000055915b612d6e <unavailable> + 7534
16   tmp_iioyz9q                        0x000055915b6128c1 <unavailable> + 6337
17   libc.so.6                          0x00002aecf5691460 __libc_start_main + 245
18   tmp_iioyz9q                        0x000055915b6123e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sortedNums = nums.sorted { (a, b) -> Bool in
        return Int(a)! < Int(b)!
    }
    return sortedNums.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_67_fruit_distribution, completion 149 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpybd6fg3_/tmpybd6fg3_.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b882f3cec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b882f0c5561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b882f0c5286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b882f0c513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b882f0c4bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpybd6fg3_                        0x000055a3c316ceaa <unavailable> + 7850
6    tmpybd6fg3_                        0x000055a3c316c5fb <unavailable> + 5627
7    libc.so.6                          0x00002b882f5ba460 __libc_start_main + 245
8    tmpybd6fg3_                        0x000055a3c316c2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let fruits = s.split(separator: " ")
    let apples = Int(fruits[0])!
    let oranges = Int(fruits[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_19_sort_numbers, completion 31 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpb_vkuxt6/tmpb_vkuxt6.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7961dacc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7961aa3561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7961aa3286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7961aa313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7961aa2bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpb_vkuxt6                        0x000056122102803c <unavailable> + 8252
6    libswiftCore.so                    0x00002b7961bc4c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b7961bc5110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b7961bc3d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b7961bc3d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b7961ce965a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b7961ad8720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b7961ad870f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b7961bc3460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b7961bc3370 Sequence.sorted(by:) + 193
15   tmpb_vkuxt6                        0x0000561221027d6e <unavailable> + 7534
16   tmpb_vkuxt6                        0x00005612210278c1 <unavailable> + 6337
17   libc.so.6                          0x00002b7961f98460 __libc_start_main + 245
18   tmpb_vkuxt6                        0x00005612210273e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (lhs, rhs) -> Bool in
        return Int(lhs)! < Int(rhs)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_70_strange_sort_list, completion 88 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpi2ngi7nz/tmpi2ngi7nz.swift:26: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b21db0a5c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b21dad9c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b21dad9c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b21dad9c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b21dad9bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpi2ngi7nz                        0x00005625cdce57da <unavailable> + 10202
6    tmpi2ngi7nz                        0x00005625cdce47db <unavailable> + 6107
7    libc.so.6                          0x00002b21db291460 __libc_start_main + 245
8    tmpi2ngi7nz                        0x00005625cdce4379 <unavailable> + 4985

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
    if lst.count == 0 {
        return []
    }
    var result = [Int]()
    var lst = lst
    while lst.count > 0 {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        if min != max {
            result.append(max)
        }
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_67_fruit_distribution, completion 119 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpz4sps2j5/tmpz4sps2j5.swift:20: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002af7cd0bcc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af7ccdb3561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af7ccdb3286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af7ccdb313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af7ccdb2bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpz4sps2j5                        0x00005625d7576eaa <unavailable> + 7850
6    tmpz4sps2j5                        0x00005625d75765fb <unavailable> + 5627
7    libc.so.6                          0x00002af7cd2a8460 __libc_start_main + 245
8    tmpz4sps2j5                        0x00005625d75762f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    // Write your code here
    let arr = s.split(separator: " ")
    let numOfApples = Int(arr[0])!
    let numOfOranges = Int(arr[2])!
    return n - numOfApples - numOfOranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_67_fruit_distribution, completion 199 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpifne_gv0/tmpifne_gv0.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002afad4a52c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afad4749561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afad4749286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afad474913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afad4748bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpifne_gv0                        0x000056012dad3eaa <unavailable> + 7850
6    tmpifne_gv0                        0x000056012dad35fb <unavailable> + 5627
7    libc.so.6                          0x00002afad4c3e460 __libc_start_main + 245
8    tmpifne_gv0                        0x000056012dad32f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let arr = s.split(separator: " ")
    let num1 = Int(arr[0])!
    let num2 = Int(arr[2])!
    return n - num1 - num2
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_67_fruit_distribution, completion 42 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpmeunyigx/tmpmeunyigx.swift:21: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002ae4236d8c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae4233cf561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae4233cf286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae4233cf13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae4233cebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpmeunyigx                        0x00005634766caec5 <unavailable> + 7877
6    tmpmeunyigx                        0x00005634766ca5fb <unavailable> + 5627
7    libc.so.6                          0x00002ae4238c4460 __libc_start_main + 245
8    tmpmeunyigx                        0x00005634766ca2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    // Write your code here
    var result = 0
    let arr = s.split(separator: " ")
    let num1 = Int(arr[0])!
    let num2 = Int(arr[2])!
    result = n - (num1 + num2)
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
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_70_strange_sort_list, completion 185 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpfoaxw91r/tmpfoaxw91r.swift:21: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002ba8a8d6ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba8a8a65561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba8a8a65286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba8a8a6513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba8a8a64bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpfoaxw91r                        0x0000561365a60782 <unavailable> + 10114
6    tmpfoaxw91r                        0x0000561365a5f7cb <unavailable> + 6091
7    libc.so.6                          0x00002ba8a8f5a460 __libc_start_main + 245
8    tmpfoaxw91r                        0x0000561365a5f369 <unavailable> + 4969

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
    var lst = lst
    var result = [Int]()
    while !lst.isEmpty {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        result.append(max)
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_19_sort_numbers, completion 99 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpynqhc_m4/tmpynqhc_m4.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7a73162c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7a72e59561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7a72e59286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7a72e5913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7a72e58bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpynqhc_m4                        0x000055936b50a03c <unavailable> + 8252
6    libswiftCore.so                    0x00002b7a72f7ac90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b7a72f7b110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b7a72f79d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b7a72f79d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b7a7309f65a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b7a72e8e720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b7a72e8e70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b7a72f79460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b7a72f79370 Sequence.sorted(by:) + 193
15   tmpynqhc_m4                        0x000055936b509d6e <unavailable> + 7534
16   tmpynqhc_m4                        0x000055936b5098c1 <unavailable> + 6337
17   libc.so.6                          0x00002b7a7334e460 __libc_start_main + 245
18   tmpynqhc_m4                        0x000055936b5093e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (a, b) -> Bool in
        return Int(a)! < Int(b)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_70_strange_sort_list, completion 96 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpb5v89kdf/tmpb5v89kdf.swift:23: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b1a1763cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1a17333561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1a17333286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b1a1733313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1a17332bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpb5v89kdf                        0x00005625d8709799 <unavailable> + 10137
6    tmpb5v89kdf                        0x00005625d87087cb <unavailable> + 6091
7    libc.so.6                          0x00002b1a17828460 __libc_start_main + 245
8    tmpb5v89kdf                        0x00005625d8708369 <unavailable> + 4969

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
    var lst = lst
    var min = 0
    var max = 0
    while !lst.isEmpty {
        min = lst.min()!
        max = lst.max()!
        result.append(min)
        result.append(max)
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_19_sort_numbers, completion 3 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpw5amscrz/tmpw5amscrz.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b9c717d8c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b9c714cf561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b9c714cf286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b9c714cf13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b9c714cebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpw5amscrz                        0x000055853a0b303c <unavailable> + 8252
6    libswiftCore.so                    0x00002b9c715f0c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b9c715f1110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b9c715efd30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b9c715efd15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b9c7171565a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b9c71504720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b9c7150470f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b9c715ef460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b9c715ef370 Sequence.sorted(by:) + 193
15   tmpw5amscrz                        0x000055853a0b2d6e <unavailable> + 7534
16   tmpw5amscrz                        0x000055853a0b28c1 <unavailable> + 6337
17   libc.so.6                          0x00002b9c719c4460 __libc_start_main + 245
18   tmpw5amscrz                        0x000055853a0b23e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let nums_sorted = nums.sorted { (a, b) -> Bool in
        return Int(a)! < Int(b)!
    }
    return nums_sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_145_order_by_points, completion 142 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpkw1wpe01/tmpkw1wpe01.swift:13: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7d783b1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7d780a8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7d780a8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7d780a813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7d780a7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpkw1wpe01                        0x000055d0a35eb4f1 <unavailable> + 9457
6    libswiftCore.so                    0x00002b7d78090820 Collection.map<A>(_:) + 426
7    tmpkw1wpe01                        0x000055d0a35eb131 <unavailable> + 8497
8    libswiftCore.so                    0x00002b7d781c9c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
9    libswiftCore.so                    0x00002b7d781ca110 MutableCollection<>._insertionSort(within:by:) + 356
10   libswiftCore.so                    0x00002b7d781c8d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
11   libswiftCore.so                    0x00002b7d781c8d15 <unavailable> + 2616597
12   libswiftCore.so                    0x00002b7d782ee65a <unavailable> + 3819098
13   libswiftCore.so                    0x00002b7d780dd720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
14   libswiftCore.so                    0x00002b7d780dd70f <unavailable> + 1652495
15   libswiftCore.so                    0x00002b7d781c8460 MutableCollection<>.sort(by:) + 771
16   libswiftCore.so                    0x00002b7d781c8370 Sequence.sorted(by:) + 193
17   tmpkw1wpe01                        0x000055d0a35eb060 <unavailable> + 8288
18   tmpkw1wpe01                        0x000055d0a35ea714 <unavailable> + 5908
19   libc.so.6                          0x00002b7d7859d460 __libc_start_main + 245
20   tmpkw1wpe01                        0x000055d0a35ea3e9 <unavailable
*/
/* stdout = 

*/


/// Write a function which sorts the given array of integers
/// in ascending order according to the sum of their digits.
/// Note: if there are several items with similar sum of their digits,
/// order them based on their index in original array.
/// For example:
/// >>> order_by_points(nums: [1, 11, -1, -11, -12])
/// [-1, -11, 1, -12, 11]
/// >>> order_by_points(nums: [] as [Int])
/// [] as [Int]
func order_by_points(nums: [Int]) -> [Int] {
    return nums.sorted { (a, b) -> Bool in
        let aSum = String(a).map { Int(String($0))! }.reduce(0, +)
        let bSum = String(b).map { Int(String($0))! }.reduce(0, +)
        return aSum < bSum
    }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(order_by_points(nums: [1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11])
assert(order_by_points(nums: [1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]) == [0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457])
assert(order_by_points(nums: [] as [Int]) == [] as [Int])
assert(order_by_points(nums: [1, -11, -32, 43, 54, -98, 2, -3]) == [-3, -32, -98, -11, 1, 2, 43, 54])
assert(order_by_points(nums: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == [1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9])
assert(order_by_points(nums: [0, 6, 6, -76, -21, 23, 4]) == [-76, -21, 0, 4, 23, 6, 6])



// ----------- problem HumanEval_88_sort_array, completion 157 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpmpq9ky1g/tmpmpq9ky1g.swift:17: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002af0ca60ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af0ca305561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af0ca305286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af0ca30513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af0ca304bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpmpq9ky1g                        0x00005558d2151f7b <unavailable> + 8059
6    tmpmpq9ky1g                        0x00005558d215159d <unavailable> + 5533
7    libc.so.6                          0x00002af0ca7fa460 __libc_start_main + 245
8    tmpmpq9ky1g                        0x00005558d21512a9 <unavailable> + 4777

*/
/* stdout = 

*/


/// Given an array of non-negative integers, return a coswift of the given array after sorting,
/// you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
/// or sort it in descending order if the sum( first index value, last index value) is even.
/// Note:
/// * don't change the given array.
/// Examples:
/// >>> sort_array(array: [] as [Int])
/// [] as [Int]
/// >>> sort_array(array: [5])
/// [5]
/// >>> sort_array(array: [2, 4, 3, 0, 1, 5])
/// [0, 1, 2, 3, 4, 5]
/// >>> sort_array(array: [2, 4, 3, 0, 1, 5, 6])
/// [6, 5, 4, 3, 2, 1, 0]
func sort_array(array: [Int]) -> [Int] {
    let sum = array.first! + array.last!
    return sum % 2 == 0 ? array.sorted(by: >) : array.sorted()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_array(array: [] as [Int]) == [] as [Int])
assert(sort_array(array: [5]) == [5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5]) == [0, 1, 2, 3, 4, 5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5, 6]) == [6, 5, 4, 3, 2, 1, 0])
assert(sort_array(array: [2, 1]) == [1, 2])
assert(sort_array(array: [15, 42, 87, 32, 11, 0]) == [0, 11, 15, 32, 42, 87])
assert(sort_array(array: [21, 14, 23, 11]) == [23, 21, 14, 11])



// ----------- problem HumanEval_19_sort_numbers, completion 149 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpynqhc_m4/tmpynqhc_m4.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7a73162c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7a72e59561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7a72e59286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7a72e5913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7a72e58bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpynqhc_m4                        0x000055936b50a03c <unavailable> + 8252
6    libswiftCore.so                    0x00002b7a72f7ac90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b7a72f7b110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b7a72f79d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b7a72f79d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b7a7309f65a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b7a72e8e720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b7a72e8e70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b7a72f79460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b7a72f79370 Sequence.sorted(by:) + 193
15   tmpynqhc_m4                        0x000055936b509d6e <unavailable> + 7534
16   tmpynqhc_m4                        0x000055936b5098c1 <unavailable> + 6337
17   libc.so.6                          0x00002b7a7334e460 __libc_start_main + 245
18   tmpynqhc_m4                        0x000055936b5093e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (a, b) -> Bool in
        return Int(a)! < Int(b)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_99_closest_integer, completion 97 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpd8a3g9ft/tmpd8a3g9ft.swift:16: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b9ae3a62c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b9ae3759561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b9ae3759286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b9ae375913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b9ae3758bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpd8a3g9ft                        0x0000559d5b19c75a <unavailable> + 5978
6    tmpd8a3g9ft                        0x0000559d5b19c3dd <unavailable> + 5085
7    libc.so.6                          0x00002b9ae3c4e460 __libc_start_main + 245
8    tmpd8a3g9ft                        0x0000559d5b19c039 <unavailable> + 4153

*/
/* stdout = 

*/


/// Create a function that takes a value (string) representing a number
/// and returns the closest integer to it. If the number is equidistant
/// from two integers, round it away from zero.
/// Examples
/// >>> closest_integer(value: "10")
/// 10
/// >>> closest_integer(value: "15.3")
/// 15
/// Note:
/// Rounding away from zero means that if the given number is equidistant
/// from two integers, the one you should return is the one that is the
/// farthest from zero. For example closest_integer("14.5") should
/// return 15 and closest_integer("-14.5") should return -15.
func closest_integer(value: String) -> Int {
    return Int(value)!
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(closest_integer(value: "10") == 10)
assert(closest_integer(value: "14.5") == 15)
assert(closest_integer(value: "-15.5") == -16)
assert(closest_integer(value: "15.3") == 15)
assert(closest_integer(value: "0") == 0)



// ----------- problem HumanEval_67_fruit_distribution, completion 178 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpum5wx8cn/tmpum5wx8cn.swift:20: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b6d84e6fc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b6d84b66561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b6d84b66286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b6d84b6613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b6d84b65bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpum5wx8cn                        0x000055e504246eaa <unavailable> + 7850
6    tmpum5wx8cn                        0x000055e5042465fb <unavailable> + 5627
7    libc.so.6                          0x00002b6d8505b460 __libc_start_main + 245
8    tmpum5wx8cn                        0x000055e5042462f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    // Write your code here
    let arr = s.split(separator: " ")
    let apples = Int(arr[0])!
    let oranges = Int(arr[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_1_separate_paren_groups, completion 2 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp2a5yitxi/tmp2a5yitxi.swift:12: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b65bf4b4c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b65bf1ab561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b65bf1ab286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b65bf1ab13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b65bf1aabb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp2a5yitxi                        0x00005579f72a71ce <unavailable> + 8654
6    tmp2a5yitxi                        0x00005579f72a6976 <unavailable> + 6518
7    libc.so.6                          0x00002b65bf6a0460 __libc_start_main + 245
8    tmp2a5yitxi                        0x00005579f72a6679 <unavailable> + 5753

*/
/* stdout = 

*/


/// Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
/// separate those group into separate strings and return the array of those.
/// Separate groups are balanced (each open brace is properly closed) and not nested within each other
/// Ignore any spaces in the input string.
/// >>> separate_paren_groups(paren_string: "( ) (( )) (( )( ))")
/// ["()", "(())", "(()())"]
func separate_paren_groups(paren_string: String) -> [String] {
    var result = [String]()
    var paren_string = paren_string
    while paren_string.count > 0 {
        let first_paren = paren_string.firstIndex(of: "(")!
        let last_paren = paren_string.lastIndex(of: ")")!
        result.append(String(paren_string[first_paren...last_paren]))
        paren_string = String(paren_string[last_paren...])
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
            
assert(separate_paren_groups(paren_string: "(()()) ((())) () ((())()())") == ["(()())", "((()))", "()", "((())()())"])
assert(separate_paren_groups(paren_string: "() (()) ((())) (((())))") == ["()", "(())", "((()))", "(((())))"])
assert(separate_paren_groups(paren_string: "(()(())((())))") == ["(()(())((())))"])
assert(separate_paren_groups(paren_string: "( ) (( )) (( )( ))") == ["()", "(())", "(()())"])



// ----------- problem HumanEval_67_fruit_distribution, completion 197 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpybd6fg3_/tmpybd6fg3_.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b882f3cec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b882f0c5561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b882f0c5286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b882f0c513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b882f0c4bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpybd6fg3_                        0x000055a3c316ceaa <unavailable> + 7850
6    tmpybd6fg3_                        0x000055a3c316c5fb <unavailable> + 5627
7    libc.so.6                          0x00002b882f5ba460 __libc_start_main + 245
8    tmpybd6fg3_                        0x000055a3c316c2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let fruits = s.split(separator: " ")
    let apples = Int(fruits[0])!
    let oranges = Int(fruits[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_67_fruit_distribution, completion 50 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp_0p24u5v/tmp_0p24u5v.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002afb68f17c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afb68c0e561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afb68c0e286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afb68c0e13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afb68c0dbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp_0p24u5v                        0x000055b27cd1beaa <unavailable> + 7850
6    tmp_0p24u5v                        0x000055b27cd1b5fb <unavailable> + 5627
7    libc.so.6                          0x00002afb69103460 __libc_start_main + 245
8    tmp_0p24u5v                        0x000055b27cd1b2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let arr = s.split(separator: " ")
    let num_apples = Int(arr[0])!
    let num_oranges = Int(arr[2])!
    return n - num_apples - num_oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_70_strange_sort_list, completion 89 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmprs8_3o03/tmprs8_3o03.swift:21: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002af911ec2c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af911bb9561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af911bb9286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af911bb913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af911bb8bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmprs8_3o03                        0x0000556cbe485737 <unavailable> + 10039
6    tmprs8_3o03                        0x0000556cbe48477b <unavailable> + 6011
7    libc.so.6                          0x00002af9120ae460 __libc_start_main + 245
8    tmprs8_3o03                        0x0000556cbe484319 <unavailable> + 4889

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
    var lst = lst
    var result: [Int] = []
    while lst.count > 0 {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        result.append(max)
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_67_fruit_distribution, completion 170 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmprd31g2wb/tmprd31g2wb.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002afc720d9c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afc71dd0561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afc71dd0286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afc71dd013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afc71dcfbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmprd31g2wb                        0x000055f789418eaa <unavailable> + 7850
6    tmprd31g2wb                        0x000055f7894185fb <unavailable> + 5627
7    libc.so.6                          0x00002afc722c5460 __libc_start_main + 245
8    tmprd31g2wb                        0x000055f7894182f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let arr = s.split(separator: " ")
    let apples = Int(arr[0])!
    let oranges = Int(arr[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_67_fruit_distribution, completion 107 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpdgrmdmmk/tmpdgrmdmmk.swift:20: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7462e15c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7462b0c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7462b0c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7462b0c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7462b0bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpdgrmdmmk                        0x0000558ce263ceaa <unavailable> + 7850
6    tmpdgrmdmmk                        0x0000558ce263c5fb <unavailable> + 5627
7    libc.so.6                          0x00002b7463001460 __libc_start_main + 245
8    tmpdgrmdmmk                        0x0000558ce263c2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    // Write your code here
    let arr = s.split(separator: " ")
    let apple = Int(arr[0])!
    let orange = Int(arr[2])!
    return n - apple - orange
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_70_strange_sort_list, completion 141 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp8jtru9mw/tmp8jtru9mw.swift:24: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b61dc765c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b61dc45c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b61dc45c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b61dc45c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b61dc45bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp8jtru9mw                        0x0000564ffd06469f <unavailable> + 9887
6    tmp8jtru9mw                        0x0000564ffd06377b <unavailable> + 6011
7    libc.so.6                          0x00002b61dc951460 __libc_start_main + 245
8    tmp8jtru9mw                        0x0000564ffd063319 <unavailable> + 4889

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
    var result: [Int] = []
    var mutableLst = lst
    var min = mutableLst.min()
    var max = mutableLst.max()
    while mutableLst.count > 0 {
        if let min = min {
            result.append(min)
            mutableLst.remove(at: mutableLst.index(of: min)!)
        }
        if let max = max {
            result.append(max)
            mutableLst.remove(at: mutableLst.index(of: max)!)
        }
        min = mutableLst.min()
        max = mutableLst.max()
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



// ----------- problem HumanEval_19_sort_numbers, completion 165 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpc4ahxh59/tmpc4ahxh59.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002af90aa87c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af90a77e561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af90a77e286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af90a77e13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af90a77dbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpc4ahxh59                        0x00005631ba303036 <unavailable> + 8246
6    libswiftCore.so                    0x00002af90a89fc90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002af90a8a0110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002af90a89ed30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002af90a89ed15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002af90a9c465a <unavailable> + 3819098
11   libswiftCore.so                    0x00002af90a7b3720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002af90a7b370f <unavailable> + 1652495
13   libswiftCore.so                    0x00002af90a89e460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002af90a89e370 Sequence.sorted(by:) + 193
15   tmpc4ahxh59                        0x00005631ba302dae <unavailable> + 7598
16   tmpc4ahxh59                        0x00005631ba302901 <unavailable> + 6401
17   libc.so.6                          0x00002af90ac73460 __libc_start_main + 245
18   tmpc4ahxh59                        0x00005631ba302429 <unavailable> + 5161

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted(by: {
        let a = Int(String($0))!
        let b = Int(String($1))!
        return a < b
    })
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_67_fruit_distribution, completion 87 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmprd31g2wb/tmprd31g2wb.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002afc720d9c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afc71dd0561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afc71dd0286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afc71dd013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afc71dcfbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmprd31g2wb                        0x000055f789418eaa <unavailable> + 7850
6    tmprd31g2wb                        0x000055f7894185fb <unavailable> + 5627
7    libc.so.6                          0x00002afc722c5460 __libc_start_main + 245
8    tmprd31g2wb                        0x000055f7894182f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let arr = s.split(separator: " ")
    let apples = Int(arr[0])!
    let oranges = Int(arr[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_67_fruit_distribution, completion 70 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmprd31g2wb/tmprd31g2wb.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002afc720d9c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afc71dd0561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afc71dd0286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afc71dd013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afc71dcfbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmprd31g2wb                        0x000055f789418eaa <unavailable> + 7850
6    tmprd31g2wb                        0x000055f7894185fb <unavailable> + 5627
7    libc.so.6                          0x00002afc722c5460 __libc_start_main + 245
8    tmprd31g2wb                        0x000055f7894182f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let arr = s.split(separator: " ")
    let apples = Int(arr[0])!
    let oranges = Int(arr[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_70_strange_sort_list, completion 37 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpwcrscl31/tmpwcrscl31.swift:21: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b9fbe6c6c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b9fbe3bd561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b9fbe3bd286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b9fbe3bd13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b9fbe3bcbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpwcrscl31                        0x000055b5e8f10793 <unavailable> + 10131
6    tmpwcrscl31                        0x000055b5e8f0f7db <unavailable> + 6107
7    libc.so.6                          0x00002b9fbe8b2460 __libc_start_main + 245
8    tmpwcrscl31                        0x000055b5e8f0f379 <unavailable> + 4985

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
    var lst = lst
    while lst.count > 0 {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        result.append(max)
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_70_strange_sort_list, completion 36 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpwcrscl31/tmpwcrscl31.swift:21: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b9fbe6c6c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b9fbe3bd561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b9fbe3bd286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b9fbe3bd13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b9fbe3bcbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpwcrscl31                        0x000055b5e8f10793 <unavailable> + 10131
6    tmpwcrscl31                        0x000055b5e8f0f7db <unavailable> + 6107
7    libc.so.6                          0x00002b9fbe8b2460 __libc_start_main + 245
8    tmpwcrscl31                        0x000055b5e8f0f379 <unavailable> + 4985

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
    var lst = lst
    while lst.count > 0 {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        result.append(max)
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_70_strange_sort_list, completion 154 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmplgfkf04e/tmplgfkf04e.swift:21: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b847832bc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b8478022561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b8478022286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b847802213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b8478021bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmplgfkf04e                        0x0000559a723f673d <unavailable> + 10045
6    tmplgfkf04e                        0x0000559a723f577b <unavailable> + 6011
7    libc.so.6                          0x00002b8478517460 __libc_start_main + 245
8    tmplgfkf04e                        0x0000559a723f5319 <unavailable> + 4889

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
    var lst = lst
    var result: [Int] = []
    while !lst.isEmpty {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        result.append(max)
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_19_sort_numbers, completion 75 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpynqhc_m4/tmpynqhc_m4.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7a73162c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7a72e59561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7a72e59286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7a72e5913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7a72e58bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpynqhc_m4                        0x000055936b50a03c <unavailable> + 8252
6    libswiftCore.so                    0x00002b7a72f7ac90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b7a72f7b110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b7a72f79d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b7a72f79d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b7a7309f65a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b7a72e8e720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b7a72e8e70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b7a72f79460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b7a72f79370 Sequence.sorted(by:) + 193
15   tmpynqhc_m4                        0x000055936b509d6e <unavailable> + 7534
16   tmpynqhc_m4                        0x000055936b5098c1 <unavailable> + 6337
17   libc.so.6                          0x00002b7a7334e460 __libc_start_main + 245
18   tmpynqhc_m4                        0x000055936b5093e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (a, b) -> Bool in
        return Int(a)! < Int(b)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_67_fruit_distribution, completion 75 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpybd6fg3_/tmpybd6fg3_.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b882f3cec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b882f0c5561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b882f0c5286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b882f0c513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b882f0c4bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpybd6fg3_                        0x000055a3c316ceaa <unavailable> + 7850
6    tmpybd6fg3_                        0x000055a3c316c5fb <unavailable> + 5627
7    libc.so.6                          0x00002b882f5ba460 __libc_start_main + 245
8    tmpybd6fg3_                        0x000055a3c316c2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let fruits = s.split(separator: " ")
    let apples = Int(fruits[0])!
    let oranges = Int(fruits[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_70_strange_sort_list, completion 191 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmplgfkf04e/tmplgfkf04e.swift:21: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b847832bc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b8478022561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b8478022286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b847802213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b8478021bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmplgfkf04e                        0x0000559a723f673d <unavailable> + 10045
6    tmplgfkf04e                        0x0000559a723f577b <unavailable> + 6011
7    libc.so.6                          0x00002b8478517460 __libc_start_main + 245
8    tmplgfkf04e                        0x0000559a723f5319 <unavailable> + 4889

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
    var lst = lst
    var result: [Int] = []
    while !lst.isEmpty {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        result.append(max)
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_70_strange_sort_list, completion 102 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpwcrscl31/tmpwcrscl31.swift:21: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b9fbe6c6c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b9fbe3bd561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b9fbe3bd286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b9fbe3bd13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b9fbe3bcbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpwcrscl31                        0x000055b5e8f10793 <unavailable> + 10131
6    tmpwcrscl31                        0x000055b5e8f0f7db <unavailable> + 6107
7    libc.so.6                          0x00002b9fbe8b2460 __libc_start_main + 245
8    tmpwcrscl31                        0x000055b5e8f0f379 <unavailable> + 4985

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
    var lst = lst
    while lst.count > 0 {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        result.append(max)
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_67_fruit_distribution, completion 187 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpnn2noxvm/tmpnn2noxvm.swift:22: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7a3be13c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7a3bb0a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7a3bb0a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7a3bb0a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7a3bb09bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpnn2noxvm                        0x000056280758811a <unavailable> + 8474
6    tmpnn2noxvm                        0x000056280758774b <unavailable> + 5963
7    libc.so.6                          0x00002b7a3bfff460 __libc_start_main + 245
8    tmpnn2noxvm                        0x0000562807587449 <unavailable> + 5193

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    // Write your code here
    var arr = s.split(separator: " ")
    var sum = 0
    for i in 0..<arr.count{
        if i % 2 == 0{
            sum += Int(arr[i])!
        }
    }
    return n - sum
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_67_fruit_distribution, completion 186 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpiqkyrvnn/tmpiqkyrvnn.swift:20: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b91b1c4ac80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b91b1941561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b91b1941286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b91b194113c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b91b1940bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpiqkyrvnn                        0x000055f0ee9afebd <unavailable> + 7869
6    tmpiqkyrvnn                        0x000055f0ee9af5fb <unavailable> + 5627
7    libc.so.6                          0x00002b91b1e36460 __libc_start_main + 245
8    tmpiqkyrvnn                        0x000055f0ee9af2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    // Write your code here
    let arr = s.split(separator: " ")
    let numOfApples = Int(arr[0])!
    let numOfOranges = Int(arr[2])!
    let numOfMangoes = n - numOfApples - numOfOranges
    return numOfMangoes
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_19_sort_numbers, completion 190 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpynqhc_m4/tmpynqhc_m4.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7a73162c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7a72e59561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7a72e59286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7a72e5913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7a72e58bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpynqhc_m4                        0x000055936b50a03c <unavailable> + 8252
6    libswiftCore.so                    0x00002b7a72f7ac90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b7a72f7b110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b7a72f79d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b7a72f79d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b7a7309f65a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b7a72e8e720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b7a72e8e70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b7a72f79460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b7a72f79370 Sequence.sorted(by:) + 193
15   tmpynqhc_m4                        0x000055936b509d6e <unavailable> + 7534
16   tmpynqhc_m4                        0x000055936b5098c1 <unavailable> + 6337
17   libc.so.6                          0x00002b7a7334e460 __libc_start_main + 245
18   tmpynqhc_m4                        0x000055936b5093e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (a, b) -> Bool in
        return Int(a)! < Int(b)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_88_sort_array, completion 179 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpmpq9ky1g/tmpmpq9ky1g.swift:17: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002af0ca60ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af0ca305561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af0ca305286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af0ca30513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af0ca304bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpmpq9ky1g                        0x00005558d2151f7b <unavailable> + 8059
6    tmpmpq9ky1g                        0x00005558d215159d <unavailable> + 5533
7    libc.so.6                          0x00002af0ca7fa460 __libc_start_main + 245
8    tmpmpq9ky1g                        0x00005558d21512a9 <unavailable> + 4777

*/
/* stdout = 

*/


/// Given an array of non-negative integers, return a coswift of the given array after sorting,
/// you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
/// or sort it in descending order if the sum( first index value, last index value) is even.
/// Note:
/// * don't change the given array.
/// Examples:
/// >>> sort_array(array: [] as [Int])
/// [] as [Int]
/// >>> sort_array(array: [5])
/// [5]
/// >>> sort_array(array: [2, 4, 3, 0, 1, 5])
/// [0, 1, 2, 3, 4, 5]
/// >>> sort_array(array: [2, 4, 3, 0, 1, 5, 6])
/// [6, 5, 4, 3, 2, 1, 0]
func sort_array(array: [Int]) -> [Int] {
    let sum = array.first! + array.last!
    return sum % 2 == 0 ? array.sorted(by: >) : array.sorted()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_array(array: [] as [Int]) == [] as [Int])
assert(sort_array(array: [5]) == [5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5]) == [0, 1, 2, 3, 4, 5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5, 6]) == [6, 5, 4, 3, 2, 1, 0])
assert(sort_array(array: [2, 1]) == [1, 2])
assert(sort_array(array: [15, 42, 87, 32, 11, 0]) == [0, 11, 15, 32, 42, 87])
assert(sort_array(array: [21, 14, 23, 11]) == [23, 21, 14, 11])



// ----------- problem HumanEval_70_strange_sort_list, completion 158 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp7hv7g0p0/tmp7hv7g0p0.swift:21: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b9685d55c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b9685a4c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b9685a4c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b9685a4c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b9685a4bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp7hv7g0p0                        0x000055af5aad2793 <unavailable> + 10131
6    tmp7hv7g0p0                        0x000055af5aad17db <unavailable> + 6107
7    libc.so.6                          0x00002b9685f41460 __libc_start_main + 245
8    tmp7hv7g0p0                        0x000055af5aad1379 <unavailable> + 4985

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
    var mutableLst = lst
    while mutableLst.count > 0 {
        let min = mutableLst.min()!
        let max = mutableLst.max()!
        result.append(min)
        result.append(max)
        mutableLst.remove(at: mutableLst.index(of: min)!)
        mutableLst.remove(at: mutableLst.index(of: max)!)
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



// ----------- problem HumanEval_19_sort_numbers, completion 37 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpynqhc_m4/tmpynqhc_m4.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7a73162c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7a72e59561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7a72e59286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7a72e5913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7a72e58bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpynqhc_m4                        0x000055936b50a03c <unavailable> + 8252
6    libswiftCore.so                    0x00002b7a72f7ac90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b7a72f7b110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b7a72f79d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b7a72f79d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b7a7309f65a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b7a72e8e720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b7a72e8e70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b7a72f79460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b7a72f79370 Sequence.sorted(by:) + 193
15   tmpynqhc_m4                        0x000055936b509d6e <unavailable> + 7534
16   tmpynqhc_m4                        0x000055936b5098c1 <unavailable> + 6337
17   libc.so.6                          0x00002b7a7334e460 __libc_start_main + 245
18   tmpynqhc_m4                        0x000055936b5093e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (a, b) -> Bool in
        return Int(a)! < Int(b)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_67_fruit_distribution, completion 20 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp746a8z19/tmp746a8z19.swift:22: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b0f849e9c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0f846e0561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0f846e0286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0f846e013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0f846dfbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp746a8z19                        0x0000555ae6996d03 <unavailable> + 7427
6    tmp746a8z19                        0x0000555ae699658b <unavailable> + 5515
7    libc.so.6                          0x00002b0f84bd5460 __libc_start_main + 245
8    tmp746a8z19                        0x0000555ae6996289 <unavailable> + 4745

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    // Write your code here
    var total = 0
    var fruit = ""
    for char in s {
        if char == " " {
            total += Int(fruit)!
            fruit = ""
        } else {
            fruit += String(char)
        }
    }
    total += Int(fruit)!
    return n - total
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_19_sort_numbers, completion 102 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp_xhxbywt/tmp_xhxbywt.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b4f79f76c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b4f79c6d561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b4f79c6d286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b4f79c6d13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b4f79c6cbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp_xhxbywt                        0x000055781d37f05f <unavailable> + 8287
6    libswiftCore.so                    0x00002b4f79d8ec90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b4f79d8f110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b4f79d8dd30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b4f79d8dd15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b4f79eb365a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b4f79ca2720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b4f79ca270f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b4f79d8d460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b4f79d8d370 Sequence.sorted(by:) + 193
15   tmp_xhxbywt                        0x000055781d37ed6e <unavailable> + 7534
16   tmp_xhxbywt                        0x000055781d37e8c1 <unavailable> + 6337
17   libc.so.6                          0x00002b4f7a162460 __libc_start_main + 245
18   tmp_xhxbywt                        0x000055781d37e3e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (a, b) -> Bool in
        let numA = Int(a)!
        let numB = Int(b)!
        return numA < numB
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_67_fruit_distribution, completion 82 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpywydsiss/tmpywydsiss.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b26d1238c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b26d0f2f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b26d0f2f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b26d0f2f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b26d0f2ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpywydsiss                        0x00005653cef2beaa <unavailable> + 7850
6    tmpywydsiss                        0x00005653cef2b5fb <unavailable> + 5627
7    libc.so.6                          0x00002b26d1424460 __libc_start_main + 245
8    tmpywydsiss                        0x00005653cef2b2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let arr = s.split(separator: " ")
    let a = Int(arr[0])!
    let o = Int(arr[2])!
    return n - a - o
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_67_fruit_distribution, completion 89 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpybd6fg3_/tmpybd6fg3_.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b882f3cec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b882f0c5561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b882f0c5286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b882f0c513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b882f0c4bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpybd6fg3_                        0x000055a3c316ceaa <unavailable> + 7850
6    tmpybd6fg3_                        0x000055a3c316c5fb <unavailable> + 5627
7    libc.so.6                          0x00002b882f5ba460 __libc_start_main + 245
8    tmpybd6fg3_                        0x000055a3c316c2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let fruits = s.split(separator: " ")
    let apples = Int(fruits[0])!
    let oranges = Int(fruits[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_67_fruit_distribution, completion 72 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpu9dvs2sx/tmpu9dvs2sx.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b8c2f4d7c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b8c2f1ce561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b8c2f1ce286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b8c2f1ce13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b8c2f1cdbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpu9dvs2sx                        0x0000560964ebaf9a <unavailable> + 8090
6    tmpu9dvs2sx                        0x0000560964eba64b <unavailable> + 5707
7    libc.so.6                          0x00002b8c2f6c3460 __libc_start_main + 245
8    tmpu9dvs2sx                        0x0000560964eba349 <unavailable> + 4937

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    var fruits = s.split(separator: " ")
    let apples = Int(fruits[0])!
    let oranges = Int(fruits[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_67_fruit_distribution, completion 8 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpyvix5341/tmpyvix5341.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b4021a63c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b402175a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b402175a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b402175a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b4021759bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpyvix5341                        0x000055f534d7febd <unavailable> + 7869
6    tmpyvix5341                        0x000055f534d7f5fb <unavailable> + 5627
7    libc.so.6                          0x00002b4021c4f460 __libc_start_main + 245
8    tmpyvix5341                        0x000055f534d7f2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let arr = s.split(separator: " ")
    let apples = Int(arr[0])!
    let oranges = Int(arr[2])!
    let mangoes = n - apples - oranges
    return mangoes
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_19_sort_numbers, completion 14 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpynqhc_m4/tmpynqhc_m4.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7a73162c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7a72e59561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7a72e59286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7a72e5913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7a72e58bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpynqhc_m4                        0x000055936b50a03c <unavailable> + 8252
6    libswiftCore.so                    0x00002b7a72f7ac90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b7a72f7b110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b7a72f79d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b7a72f79d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b7a7309f65a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b7a72e8e720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b7a72e8e70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b7a72f79460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b7a72f79370 Sequence.sorted(by:) + 193
15   tmpynqhc_m4                        0x000055936b509d6e <unavailable> + 7534
16   tmpynqhc_m4                        0x000055936b5098c1 <unavailable> + 6337
17   libc.so.6                          0x00002b7a7334e460 __libc_start_main + 245
18   tmpynqhc_m4                        0x000055936b5093e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (a, b) -> Bool in
        return Int(a)! < Int(b)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_67_fruit_distribution, completion 132 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp2fi83smh/tmp2fi83smh.swift:18: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b8e9d0e8c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b8e9cddf561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b8e9cddf286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b8e9cddf13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b8e9cddebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp2fi83smh                        0x0000564c6b692e90 <unavailable> + 7824
6    tmp2fi83smh                        0x0000564c6b6925fb <unavailable> + 5627
7    libc.so.6                          0x00002b8e9d2d4460 __libc_start_main + 245
8    tmp2fi83smh                        0x0000564c6b6922f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let arr = s.split(separator: " ")
    let num = Int(arr[0])! + Int(arr[2])!
    return n - num
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_70_strange_sort_list, completion 107 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpkvn_0tfj/tmpkvn_0tfj.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002af343a5ac80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af343751561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af343751286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af34375113c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af343750bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpkvn_0tfj                        0x000055f01bd777d5 <unavailable> + 10197
6    tmpkvn_0tfj                        0x000055f01bd7677b <unavailable> + 6011
7    libc.so.6                          0x00002af343c46460 __libc_start_main + 245
8    tmpkvn_0tfj                        0x000055f01bd76319 <unavailable> + 4889

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
    var lst = lst
    var result: [Int] = []
    while !lst.isEmpty {
        result.append(lst.min()!)
        result.append(lst.max()!)
        lst.remove(at: lst.index(of: lst.min()!)!)
        lst.remove(at: lst.index(of: lst.max()!)!)
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



// ----------- problem HumanEval_145_order_by_points, completion 80 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpdf_hl_00/tmpdf_hl_00.swift:13: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b05782f1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0577fe8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0577fe8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b0577fe813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0577fe7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpdf_hl_00                        0x0000559aecb842fa <unavailable> + 8954
6    libswiftCore.so                    0x00002b05780f7410 Sequence.reduce<A>(_:_:) + 530
7    tmpdf_hl_00                        0x0000559aecb840d3 <unavailable> + 8403
8    libswiftCore.so                    0x00002b0578109c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
9    libswiftCore.so                    0x00002b057810a110 MutableCollection<>._insertionSort(within:by:) + 356
10   libswiftCore.so                    0x00002b0578108d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
11   libswiftCore.so                    0x00002b0578108d15 <unavailable> + 2616597
12   libswiftCore.so                    0x00002b057822e65a <unavailable> + 3819098
13   libswiftCore.so                    0x00002b057801d720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
14   libswiftCore.so                    0x00002b057801d70f <unavailable> + 1652495
15   libswiftCore.so                    0x00002b0578108460 MutableCollection<>.sort(by:) + 771
16   libswiftCore.so                    0x00002b0578108370 Sequence.sorted(by:) + 193
17   tmpdf_hl_00                        0x0000559aecb84000 <unavailable> + 8192
18   tmpdf_hl_00                        0x0000559aecb836b4 <unavailable> + 5812
19   libc.so.6                          0x00002b05784dd460 __libc_start_main + 245
20   tmpdf_hl_00                        0x0000559aecb83389 <unavaila
*/
/* stdout = 

*/


/// Write a function which sorts the given array of integers
/// in ascending order according to the sum of their digits.
/// Note: if there are several items with similar sum of their digits,
/// order them based on their index in original array.
/// For example:
/// >>> order_by_points(nums: [1, 11, -1, -11, -12])
/// [-1, -11, 1, -12, 11]
/// >>> order_by_points(nums: [] as [Int])
/// [] as [Int]
func order_by_points(nums: [Int]) -> [Int] {
    return nums.sorted { (a, b) -> Bool in
        let aSum = String(a).reduce(0) { $0 + Int(String($1))! }
        let bSum = String(b).reduce(0) { $0 + Int(String($1))! }
        return aSum < bSum
    }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(order_by_points(nums: [1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11])
assert(order_by_points(nums: [1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]) == [0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457])
assert(order_by_points(nums: [] as [Int]) == [] as [Int])
assert(order_by_points(nums: [1, -11, -32, 43, 54, -98, 2, -3]) == [-3, -32, -98, -11, 1, 2, 43, 54])
assert(order_by_points(nums: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == [1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9])
assert(order_by_points(nums: [0, 6, 6, -76, -21, 23, 4]) == [-76, -21, 0, 4, 23, 6, 6])



// ----------- problem HumanEval_70_strange_sort_list, completion 197 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmplgfkf04e/tmplgfkf04e.swift:21: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b847832bc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b8478022561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b8478022286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b847802213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b8478021bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmplgfkf04e                        0x0000559a723f673d <unavailable> + 10045
6    tmplgfkf04e                        0x0000559a723f577b <unavailable> + 6011
7    libc.so.6                          0x00002b8478517460 __libc_start_main + 245
8    tmplgfkf04e                        0x0000559a723f5319 <unavailable> + 4889

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
    var lst = lst
    var result: [Int] = []
    while !lst.isEmpty {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        result.append(max)
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_67_fruit_distribution, completion 190 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpybd6fg3_/tmpybd6fg3_.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b882f3cec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b882f0c5561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b882f0c5286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b882f0c513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b882f0c4bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpybd6fg3_                        0x000055a3c316ceaa <unavailable> + 7850
6    tmpybd6fg3_                        0x000055a3c316c5fb <unavailable> + 5627
7    libc.so.6                          0x00002b882f5ba460 __libc_start_main + 245
8    tmpybd6fg3_                        0x000055a3c316c2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let fruits = s.split(separator: " ")
    let apples = Int(fruits[0])!
    let oranges = Int(fruits[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_67_fruit_distribution, completion 13 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpldm0vnq5/tmpldm0vnq5.swift:20: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002ad8f7bd4c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ad8f78cb561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ad8f78cb286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ad8f78cb13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ad8f78cabb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpldm0vnq5                        0x000056041fdd0ec5 <unavailable> + 7877
6    tmpldm0vnq5                        0x000056041fdd05fb <unavailable> + 5627
7    libc.so.6                          0x00002ad8f7dc0460 __libc_start_main + 245
8    tmpldm0vnq5                        0x000056041fdd02f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    var result = 0
    let arr = s.split(separator: " ")
    let apples = Int(arr[0])!
    let oranges = Int(arr[2])!
    result = n - apples - oranges
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
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_70_strange_sort_list, completion 184 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpnad2sfxw/tmpnad2sfxw.swift:23: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b2867653c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b286734a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b286734a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b286734a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b2867349bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpnad2sfxw                        0x00005639acbf87b3 <unavailable> + 10163
6    tmpnad2sfxw                        0x00005639acbf77db <unavailable> + 6107
7    libc.so.6                          0x00002b286783f460 __libc_start_main + 245
8    tmpnad2sfxw                        0x00005639acbf7379 <unavailable> + 4985

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
    var lst = lst
    while lst.count > 0 {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        if min != max {
            result.append(max)
        }
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_19_sort_numbers, completion 8 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpynqhc_m4/tmpynqhc_m4.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7a73162c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7a72e59561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7a72e59286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7a72e5913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7a72e58bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpynqhc_m4                        0x000055936b50a03c <unavailable> + 8252
6    libswiftCore.so                    0x00002b7a72f7ac90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b7a72f7b110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b7a72f79d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b7a72f79d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b7a7309f65a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b7a72e8e720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b7a72e8e70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b7a72f79460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b7a72f79370 Sequence.sorted(by:) + 193
15   tmpynqhc_m4                        0x000055936b509d6e <unavailable> + 7534
16   tmpynqhc_m4                        0x000055936b5098c1 <unavailable> + 6337
17   libc.so.6                          0x00002b7a7334e460 __libc_start_main + 245
18   tmpynqhc_m4                        0x000055936b5093e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (a, b) -> Bool in
        return Int(a)! < Int(b)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_67_fruit_distribution, completion 9 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmprd31g2wb/tmprd31g2wb.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002afc720d9c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afc71dd0561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afc71dd0286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afc71dd013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afc71dcfbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmprd31g2wb                        0x000055f789418eaa <unavailable> + 7850
6    tmprd31g2wb                        0x000055f7894185fb <unavailable> + 5627
7    libc.so.6                          0x00002afc722c5460 __libc_start_main + 245
8    tmprd31g2wb                        0x000055f7894182f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let arr = s.split(separator: " ")
    let apples = Int(arr[0])!
    let oranges = Int(arr[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_70_strange_sort_list, completion 115 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpsvubp91t/tmpsvubp91t.swift:21: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002af83b2dec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af83afd5561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af83afd5286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af83afd513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af83afd4bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpsvubp91t                        0x000055d46ff9f744 <unavailable> + 10052
6    tmpsvubp91t                        0x000055d46ff9e77b <unavailable> + 6011
7    libc.so.6                          0x00002af83b4ca460 __libc_start_main + 245
8    tmpsvubp91t                        0x000055d46ff9e319 <unavailable> + 4889

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
    var result: [Int] = []
    var lst = lst
    while !lst.isEmpty {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        result.append(max)
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_67_fruit_distribution, completion 92 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpybd6fg3_/tmpybd6fg3_.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b882f3cec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b882f0c5561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b882f0c5286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b882f0c513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b882f0c4bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpybd6fg3_                        0x000055a3c316ceaa <unavailable> + 7850
6    tmpybd6fg3_                        0x000055a3c316c5fb <unavailable> + 5627
7    libc.so.6                          0x00002b882f5ba460 __libc_start_main + 245
8    tmpybd6fg3_                        0x000055a3c316c2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let fruits = s.split(separator: " ")
    let apples = Int(fruits[0])!
    let oranges = Int(fruits[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_67_fruit_distribution, completion 55 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpe51nmr29/tmpe51nmr29.swift:25: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b0897c90c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b0897987561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b0897987286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b089798713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b0897986bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpe51nmr29                        0x000055a56fc32eaf <unavailable> + 7855
6    tmpe51nmr29                        0x000055a56fc3258b <unavailable> + 5515
7    libc.so.6                          0x00002b0897e7c460 __libc_start_main + 245
8    tmpe51nmr29                        0x000055a56fc32289 <unavailable> + 4745

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    var sum = 0
    var num = 0
    var str = ""
    for i in s {
        if i == " " {
            sum += Int(str)!
            str = ""
        } else if i == "a" {
            sum += Int(str)!
            str = ""
        } else if i == "n" {
            sum += Int(str)!
            str = ""
        } else if i == "d" {
            sum += Int(str)!
            str = ""
        } else {
            str += String(i)
        }
    }
    num = n - sum
    return num
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_19_sort_numbers, completion 74 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpynqhc_m4/tmpynqhc_m4.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7a73162c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7a72e59561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7a72e59286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7a72e5913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7a72e58bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpynqhc_m4                        0x000055936b50a03c <unavailable> + 8252
6    libswiftCore.so                    0x00002b7a72f7ac90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b7a72f7b110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b7a72f79d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b7a72f79d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b7a7309f65a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b7a72e8e720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b7a72e8e70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b7a72f79460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b7a72f79370 Sequence.sorted(by:) + 193
15   tmpynqhc_m4                        0x000055936b509d6e <unavailable> + 7534
16   tmpynqhc_m4                        0x000055936b5098c1 <unavailable> + 6337
17   libc.so.6                          0x00002b7a7334e460 __libc_start_main + 245
18   tmpynqhc_m4                        0x000055936b5093e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (a, b) -> Bool in
        return Int(a)! < Int(b)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_67_fruit_distribution, completion 99 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmprd31g2wb/tmprd31g2wb.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002afc720d9c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afc71dd0561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afc71dd0286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afc71dd013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afc71dcfbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmprd31g2wb                        0x000055f789418eaa <unavailable> + 7850
6    tmprd31g2wb                        0x000055f7894185fb <unavailable> + 5627
7    libc.so.6                          0x00002afc722c5460 __libc_start_main + 245
8    tmprd31g2wb                        0x000055f7894182f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let arr = s.split(separator: " ")
    let apples = Int(arr[0])!
    let oranges = Int(arr[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_19_sort_numbers, completion 127 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpb_vkuxt6/tmpb_vkuxt6.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7961dacc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7961aa3561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7961aa3286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7961aa313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7961aa2bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpb_vkuxt6                        0x000056122102803c <unavailable> + 8252
6    libswiftCore.so                    0x00002b7961bc4c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b7961bc5110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b7961bc3d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b7961bc3d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b7961ce965a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b7961ad8720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b7961ad870f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b7961bc3460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b7961bc3370 Sequence.sorted(by:) + 193
15   tmpb_vkuxt6                        0x0000561221027d6e <unavailable> + 7534
16   tmpb_vkuxt6                        0x00005612210278c1 <unavailable> + 6337
17   libc.so.6                          0x00002b7961f98460 __libc_start_main + 245
18   tmpb_vkuxt6                        0x00005612210273e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (lhs, rhs) -> Bool in
        return Int(lhs)! < Int(rhs)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_145_order_by_points, completion 31 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpkw1wpe01/tmpkw1wpe01.swift:13: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7d783b1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7d780a8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7d780a8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7d780a813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7d780a7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpkw1wpe01                        0x000055d0a35eb4f1 <unavailable> + 9457
6    libswiftCore.so                    0x00002b7d78090820 Collection.map<A>(_:) + 426
7    tmpkw1wpe01                        0x000055d0a35eb131 <unavailable> + 8497
8    libswiftCore.so                    0x00002b7d781c9c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
9    libswiftCore.so                    0x00002b7d781ca110 MutableCollection<>._insertionSort(within:by:) + 356
10   libswiftCore.so                    0x00002b7d781c8d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
11   libswiftCore.so                    0x00002b7d781c8d15 <unavailable> + 2616597
12   libswiftCore.so                    0x00002b7d782ee65a <unavailable> + 3819098
13   libswiftCore.so                    0x00002b7d780dd720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
14   libswiftCore.so                    0x00002b7d780dd70f <unavailable> + 1652495
15   libswiftCore.so                    0x00002b7d781c8460 MutableCollection<>.sort(by:) + 771
16   libswiftCore.so                    0x00002b7d781c8370 Sequence.sorted(by:) + 193
17   tmpkw1wpe01                        0x000055d0a35eb060 <unavailable> + 8288
18   tmpkw1wpe01                        0x000055d0a35ea714 <unavailable> + 5908
19   libc.so.6                          0x00002b7d7859d460 __libc_start_main + 245
20   tmpkw1wpe01                        0x000055d0a35ea3e9 <unavailable
*/
/* stdout = 

*/


/// Write a function which sorts the given array of integers
/// in ascending order according to the sum of their digits.
/// Note: if there are several items with similar sum of their digits,
/// order them based on their index in original array.
/// For example:
/// >>> order_by_points(nums: [1, 11, -1, -11, -12])
/// [-1, -11, 1, -12, 11]
/// >>> order_by_points(nums: [] as [Int])
/// [] as [Int]
func order_by_points(nums: [Int]) -> [Int] {
    return nums.sorted { (a, b) -> Bool in
        let aSum = String(a).map { Int(String($0))! }.reduce(0, +)
        let bSum = String(b).map { Int(String($0))! }.reduce(0, +)
        return aSum < bSum
    }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(order_by_points(nums: [1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11])
assert(order_by_points(nums: [1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]) == [0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457])
assert(order_by_points(nums: [] as [Int]) == [] as [Int])
assert(order_by_points(nums: [1, -11, -32, 43, 54, -98, 2, -3]) == [-3, -32, -98, -11, 1, 2, 43, 54])
assert(order_by_points(nums: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == [1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9])
assert(order_by_points(nums: [0, 6, 6, -76, -21, 23, 4]) == [-76, -21, 0, 4, 23, 6, 6])



// ----------- problem HumanEval_145_order_by_points, completion 192 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp2da30mrd/tmp2da30mrd.swift:15: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002ae2407c0c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae2404b7561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae2404b7286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae2404b713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae2404b6bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp2da30mrd                        0x000055a97b35b651 <unavailable> + 9809
6    libswiftCore.so                    0x00002ae24049f820 Collection.map<A>(_:) + 426
7    tmp2da30mrd                        0x000055a97b35b25f <unavailable> + 8799
8    libswiftCore.so                    0x00002ae2405d8c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
9    libswiftCore.so                    0x00002ae2405d9110 MutableCollection<>._insertionSort(within:by:) + 356
10   libswiftCore.so                    0x00002ae2405d7d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
11   libswiftCore.so                    0x00002ae2405d7d15 <unavailable> + 2616597
12   libswiftCore.so                    0x00002ae2406fd65a <unavailable> + 3819098
13   libswiftCore.so                    0x00002ae2404ec720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
14   libswiftCore.so                    0x00002ae2404ec70f <unavailable> + 1652495
15   libswiftCore.so                    0x00002ae2405d7460 MutableCollection<>.sort(by:) + 771
16   libswiftCore.so                    0x00002ae2405d7370 Sequence.sorted(by:) + 193
17   tmp2da30mrd                        0x000055a97b35b160 <unavailable> + 8544
18   tmp2da30mrd                        0x000055a97b35a814 <unavailable> + 6164
19   libc.so.6                          0x00002ae2409ac460 __libc_start_main + 245
20   tmp2da30mrd                        0x000055a97b35a4e9 <unavailable
*/
/* stdout = 

*/


/// Write a function which sorts the given array of integers
/// in ascending order according to the sum of their digits.
/// Note: if there are several items with similar sum of their digits,
/// order them based on their index in original array.
/// For example:
/// >>> order_by_points(nums: [1, 11, -1, -11, -12])
/// [-1, -11, 1, -12, 11]
/// >>> order_by_points(nums: [] as [Int])
/// [] as [Int]
func order_by_points(nums: [Int]) -> [Int] {
    return nums.sorted(by: {
        var sum1 = 0
        var sum2 = 0
        for digit in String($0).map({Int(String($0))!}) {
            sum1 += digit
        }
        for digit in String($1).map({Int(String($0))!}) {
            sum2 += digit
        }
        return sum1 < sum2
    })
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(order_by_points(nums: [1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11])
assert(order_by_points(nums: [1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]) == [0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457])
assert(order_by_points(nums: [] as [Int]) == [] as [Int])
assert(order_by_points(nums: [1, -11, -32, 43, 54, -98, 2, -3]) == [-3, -32, -98, -11, 1, 2, 43, 54])
assert(order_by_points(nums: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == [1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9])
assert(order_by_points(nums: [0, 6, 6, -76, -21, 23, 4]) == [-76, -21, 0, 4, 23, 6, 6])



// ----------- problem HumanEval_70_strange_sort_list, completion 56 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpsx64nb5p/tmpsx64nb5p.swift:27: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b3e7b087c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3e7ad7e561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3e7ad7e286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3e7ad7e13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3e7ad7dbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpsx64nb5p                        0x000056037ee0e725 <unavailable> + 10021
6    tmpsx64nb5p                        0x000056037ee0d7db <unavailable> + 6107
7    libc.so.6                          0x00002b3e7b273460 __libc_start_main + 245
8    tmpsx64nb5p                        0x000056037ee0d379 <unavailable> + 4985

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
    if lst.count == 0 {
        return []
    }
    var lst = lst
    var result = [Int]()
    var min = lst.min()
    var max = lst.max()
    while lst.count > 0 {
        if let min = min {
            result.append(min)
            lst.remove(at: lst.index(of: min)!)
        }
        if let max = max {
            result.append(max)
            lst.remove(at: lst.index(of: max)!)
        }
        min = lst.min()
        max = lst.max()
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



// ----------- problem HumanEval_67_fruit_distribution, completion 33 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpum5wx8cn/tmpum5wx8cn.swift:20: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b6d84e6fc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b6d84b66561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b6d84b66286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b6d84b6613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b6d84b65bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpum5wx8cn                        0x000055e504246eaa <unavailable> + 7850
6    tmpum5wx8cn                        0x000055e5042465fb <unavailable> + 5627
7    libc.so.6                          0x00002b6d8505b460 __libc_start_main + 245
8    tmpum5wx8cn                        0x000055e5042462f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    // Write your code here
    let arr = s.split(separator: " ")
    let apples = Int(arr[0])!
    let oranges = Int(arr[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_88_sort_array, completion 11 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpfg4xqjr1/tmpfg4xqjr1.swift:18: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002ae6426a1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae642398561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae642398286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae64239813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae642397bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpfg4xqjr1                        0x00005572e773aefd <unavailable> + 7933
6    tmpfg4xqjr1                        0x00005572e773a50d <unavailable> + 5389
7    libc.so.6                          0x00002ae64288d460 __libc_start_main + 245
8    tmpfg4xqjr1                        0x00005572e773a219 <unavailable> + 4633

*/
/* stdout = 

*/


/// Given an array of non-negative integers, return a coswift of the given array after sorting,
/// you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
/// or sort it in descending order if the sum( first index value, last index value) is even.
/// Note:
/// * don't change the given array.
/// Examples:
/// >>> sort_array(array: [] as [Int])
/// [] as [Int]
/// >>> sort_array(array: [5])
/// [5]
/// >>> sort_array(array: [2, 4, 3, 0, 1, 5])
/// [0, 1, 2, 3, 4, 5]
/// >>> sort_array(array: [2, 4, 3, 0, 1, 5, 6])
/// [6, 5, 4, 3, 2, 1, 0]
func sort_array(array: [Int]) -> [Int] {
    var sortedArray = array
    let sum = array.first! + array.last!
    if sum % 2 == 0 {
        sortedArray.sort(by: >)
    } else {
        sortedArray.sort(by: <)
    }
    return sortedArray
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_array(array: [] as [Int]) == [] as [Int])
assert(sort_array(array: [5]) == [5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5]) == [0, 1, 2, 3, 4, 5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5, 6]) == [6, 5, 4, 3, 2, 1, 0])
assert(sort_array(array: [2, 1]) == [1, 2])
assert(sort_array(array: [15, 42, 87, 32, 11, 0]) == [0, 11, 15, 32, 42, 87])
assert(sort_array(array: [21, 14, 23, 11]) == [23, 21, 14, 11])



// ----------- problem HumanEval_70_strange_sort_list, completion 99 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp1eia0k1u/tmp1eia0k1u.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b2a9457cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b2a94273561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b2a94273286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b2a9427313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b2a94272bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp1eia0k1u                        0x00005562ea879822 <unavailable> + 10274
6    tmp1eia0k1u                        0x00005562ea8787db <unavailable> + 6107
7    libc.so.6                          0x00002b2a94768460 __libc_start_main + 245
8    tmp1eia0k1u                        0x00005562ea878379 <unavailable> + 4985

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
    var lst = lst
    while lst.count > 0 {
        result.append(lst.min()!)
        result.append(lst.max()!)
        lst.remove(at: lst.index(of: lst.min()!)!)
        lst.remove(at: lst.index(of: lst.max()!)!)
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



// ----------- problem HumanEval_19_sort_numbers, completion 36 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpynqhc_m4/tmpynqhc_m4.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7a73162c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7a72e59561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7a72e59286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7a72e5913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7a72e58bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpynqhc_m4                        0x000055936b50a03c <unavailable> + 8252
6    libswiftCore.so                    0x00002b7a72f7ac90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b7a72f7b110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b7a72f79d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b7a72f79d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b7a7309f65a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b7a72e8e720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b7a72e8e70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b7a72f79460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b7a72f79370 Sequence.sorted(by:) + 193
15   tmpynqhc_m4                        0x000055936b509d6e <unavailable> + 7534
16   tmpynqhc_m4                        0x000055936b5098c1 <unavailable> + 6337
17   libc.so.6                          0x00002b7a7334e460 __libc_start_main + 245
18   tmpynqhc_m4                        0x000055936b5093e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (a, b) -> Bool in
        return Int(a)! < Int(b)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_145_order_by_points, completion 20 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp54rtx7kw/tmp54rtx7kw.swift:13: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002ac514261c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ac513f58561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ac513f58286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ac513f5813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ac513f57bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp54rtx7kw                        0x0000559bde0854f1 <unavailable> + 9457
6    libswiftCore.so                    0x00002ac513f40820 Collection.map<A>(_:) + 426
7    tmp54rtx7kw                        0x0000559bde085131 <unavailable> + 8497
8    libswiftCore.so                    0x00002ac514079c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
9    libswiftCore.so                    0x00002ac51407a110 MutableCollection<>._insertionSort(within:by:) + 356
10   libswiftCore.so                    0x00002ac514078d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
11   libswiftCore.so                    0x00002ac514078d15 <unavailable> + 2616597
12   libswiftCore.so                    0x00002ac51419e65a <unavailable> + 3819098
13   libswiftCore.so                    0x00002ac513f8d720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
14   libswiftCore.so                    0x00002ac513f8d70f <unavailable> + 1652495
15   libswiftCore.so                    0x00002ac514078460 MutableCollection<>.sort(by:) + 771
16   libswiftCore.so                    0x00002ac514078370 Sequence.sorted(by:) + 193
17   tmp54rtx7kw                        0x0000559bde085060 <unavailable> + 8288
18   tmp54rtx7kw                        0x0000559bde084714 <unavailable> + 5908
19   libc.so.6                          0x00002ac51444d460 __libc_start_main + 245
20   tmp54rtx7kw                        0x0000559bde0843e9 <unavailable
*/
/* stdout = 

*/


/// Write a function which sorts the given array of integers
/// in ascending order according to the sum of their digits.
/// Note: if there are several items with similar sum of their digits,
/// order them based on their index in original array.
/// For example:
/// >>> order_by_points(nums: [1, 11, -1, -11, -12])
/// [-1, -11, 1, -12, 11]
/// >>> order_by_points(nums: [] as [Int])
/// [] as [Int]
func order_by_points(nums: [Int]) -> [Int] {
    return nums.sorted(by: {
        let a = String($0).map { Int(String($0))! }.reduce(0, +)
        let b = String($1).map { Int(String($0))! }.reduce(0, +)
        return a < b
    })
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(order_by_points(nums: [1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11])
assert(order_by_points(nums: [1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]) == [0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457])
assert(order_by_points(nums: [] as [Int]) == [] as [Int])
assert(order_by_points(nums: [1, -11, -32, 43, 54, -98, 2, -3]) == [-3, -32, -98, -11, 1, 2, 43, 54])
assert(order_by_points(nums: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == [1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9])
assert(order_by_points(nums: [0, 6, 6, -76, -21, 23, 4]) == [-76, -21, 0, 4, 23, 6, 6])



// ----------- problem HumanEval_19_sort_numbers, completion 176 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpnveobtux/tmpnveobtux.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002aae6540fc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aae65106561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aae65106286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aae6510613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aae65105bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpnveobtux                        0x000055ce1ceb503c <unavailable> + 8252
6    libswiftCore.so                    0x00002aae65227c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002aae65228110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002aae65226d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002aae65226d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002aae6534c65a <unavailable> + 3819098
11   libswiftCore.so                    0x00002aae6513b720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002aae6513b70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002aae65226460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002aae65226370 Sequence.sorted(by:) + 193
15   tmpnveobtux                        0x000055ce1ceb4d6e <unavailable> + 7534
16   tmpnveobtux                        0x000055ce1ceb48c1 <unavailable> + 6337
17   libc.so.6                          0x00002aae655fb460 __libc_start_main + 245
18   tmpnveobtux                        0x000055ce1ceb43e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let numbers = numbers.split(separator: " ")
    let sortedNumbers = numbers.sorted { (lhs, rhs) -> Bool in
        return Int(lhs)! < Int(rhs)!
    }
    return sortedNumbers.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_67_fruit_distribution, completion 155 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp1cvogc4x/tmp1cvogc4x.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b6d333eec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b6d330e5561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b6d330e5286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b6d330e513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b6d330e4bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp1cvogc4x                        0x000055d7dd5d3eaa <unavailable> + 7850
6    tmp1cvogc4x                        0x000055d7dd5d35fb <unavailable> + 5627
7    libc.so.6                          0x00002b6d335da460 __libc_start_main + 245
8    tmp1cvogc4x                        0x000055d7dd5d32f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let arr = s.split(separator: " ")
    let numOfApples = Int(arr[0])!
    let numOfOranges = Int(arr[2])!
    return n - numOfApples - numOfOranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_70_strange_sort_list, completion 95 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpwcrscl31/tmpwcrscl31.swift:21: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b9fbe6c6c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b9fbe3bd561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b9fbe3bd286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b9fbe3bd13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b9fbe3bcbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpwcrscl31                        0x000055b5e8f10793 <unavailable> + 10131
6    tmpwcrscl31                        0x000055b5e8f0f7db <unavailable> + 6107
7    libc.so.6                          0x00002b9fbe8b2460 __libc_start_main + 245
8    tmpwcrscl31                        0x000055b5e8f0f379 <unavailable> + 4985

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
    var lst = lst
    while lst.count > 0 {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        result.append(max)
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_19_sort_numbers, completion 136 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpa0in6i85/tmpa0in6i85.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002ac904c74c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ac90496b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ac90496b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ac90496b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ac90496abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpa0in6i85                        0x000056067d362036 <unavailable> + 8246
6    libswiftCore.so                    0x00002ac904a8cc90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002ac904a8d110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002ac904a8bd30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002ac904a8bd15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002ac904bb165a <unavailable> + 3819098
11   libswiftCore.so                    0x00002ac9049a0720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002ac9049a070f <unavailable> + 1652495
13   libswiftCore.so                    0x00002ac904a8b460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002ac904a8b370 Sequence.sorted(by:) + 193
15   tmpa0in6i85                        0x000056067d361dae <unavailable> + 7598
16   tmpa0in6i85                        0x000056067d361901 <unavailable> + 6401
17   libc.so.6                          0x00002ac904e60460 __libc_start_main + 245
18   tmpa0in6i85                        0x000056067d361429 <unavailable> + 5161

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted(by: {
        let num1 = Int(String($0))!
        let num2 = Int(String($1))!
        return num1 < num2
    })
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_70_strange_sort_list, completion 82 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpwcrscl31/tmpwcrscl31.swift:21: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b9fbe6c6c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b9fbe3bd561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b9fbe3bd286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b9fbe3bd13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b9fbe3bcbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpwcrscl31                        0x000055b5e8f10793 <unavailable> + 10131
6    tmpwcrscl31                        0x000055b5e8f0f7db <unavailable> + 6107
7    libc.so.6                          0x00002b9fbe8b2460 __libc_start_main + 245
8    tmpwcrscl31                        0x000055b5e8f0f379 <unavailable> + 4985

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
    var lst = lst
    while lst.count > 0 {
        let min = lst.min()!
        let max = lst.max()!
        result.append(min)
        result.append(max)
        lst.remove(at: lst.index(of: min)!)
        lst.remove(at: lst.index(of: max)!)
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



// ----------- problem HumanEval_67_fruit_distribution, completion 126 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpuaachpz1/tmpuaachpz1.swift:20: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b06d3a6ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b06d3765561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b06d3765286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b06d376513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b06d3764bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpuaachpz1                        0x0000561781505eaa <unavailable> + 7850
6    tmpuaachpz1                        0x00005617815055fb <unavailable> + 5627
7    libc.so.6                          0x00002b06d3c5a460 __libc_start_main + 245
8    tmpuaachpz1                        0x00005617815052f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    // Write your code here
    let s = s.split(separator: " ")
    let a = Int(s[0])!
    let o = Int(s[2])!
    return n - a - o
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_145_order_by_points, completion 28 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp54rtx7kw/tmp54rtx7kw.swift:13: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002ac514261c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ac513f58561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ac513f58286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ac513f5813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ac513f57bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp54rtx7kw                        0x0000559bde0854f1 <unavailable> + 9457
6    libswiftCore.so                    0x00002ac513f40820 Collection.map<A>(_:) + 426
7    tmp54rtx7kw                        0x0000559bde085131 <unavailable> + 8497
8    libswiftCore.so                    0x00002ac514079c90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
9    libswiftCore.so                    0x00002ac51407a110 MutableCollection<>._insertionSort(within:by:) + 356
10   libswiftCore.so                    0x00002ac514078d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
11   libswiftCore.so                    0x00002ac514078d15 <unavailable> + 2616597
12   libswiftCore.so                    0x00002ac51419e65a <unavailable> + 3819098
13   libswiftCore.so                    0x00002ac513f8d720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
14   libswiftCore.so                    0x00002ac513f8d70f <unavailable> + 1652495
15   libswiftCore.so                    0x00002ac514078460 MutableCollection<>.sort(by:) + 771
16   libswiftCore.so                    0x00002ac514078370 Sequence.sorted(by:) + 193
17   tmp54rtx7kw                        0x0000559bde085060 <unavailable> + 8288
18   tmp54rtx7kw                        0x0000559bde084714 <unavailable> + 5908
19   libc.so.6                          0x00002ac51444d460 __libc_start_main + 245
20   tmp54rtx7kw                        0x0000559bde0843e9 <unavailable
*/
/* stdout = 

*/


/// Write a function which sorts the given array of integers
/// in ascending order according to the sum of their digits.
/// Note: if there are several items with similar sum of their digits,
/// order them based on their index in original array.
/// For example:
/// >>> order_by_points(nums: [1, 11, -1, -11, -12])
/// [-1, -11, 1, -12, 11]
/// >>> order_by_points(nums: [] as [Int])
/// [] as [Int]
func order_by_points(nums: [Int]) -> [Int] {
    return nums.sorted(by: {
        let a = String($0).map { Int(String($0))! }.reduce(0, +)
        let b = String($1).map { Int(String($0))! }.reduce(0, +)
        return a < b
    })
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(order_by_points(nums: [1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11])
assert(order_by_points(nums: [1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]) == [0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457])
assert(order_by_points(nums: [] as [Int]) == [] as [Int])
assert(order_by_points(nums: [1, -11, -32, 43, 54, -98, 2, -3]) == [-3, -32, -98, -11, 1, 2, 43, 54])
assert(order_by_points(nums: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == [1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9])
assert(order_by_points(nums: [0, 6, 6, -76, -21, 23, 4]) == [-76, -21, 0, 4, 23, 6, 6])



// ----------- problem HumanEval_145_order_by_points, completion 7 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmp993e8184/tmp993e8184.swift:14: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b005af9dc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b005ac94561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b005ac94286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b005ac9413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b005ac93bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp993e8184                        0x000055c02e2b231a <unavailable> + 8986
6    libswiftCore.so                    0x00002b005ada3410 Sequence.reduce<A>(_:_:) + 530
7    tmp993e8184                        0x000055c02e2b20f3 <unavailable> + 8435
8    libswiftSwiftOnoneSupport.so       0x00002b005aa80020 specialized MutableCollection<>._insertionSort(within:sortedEnd:by:) + 152
9    libswiftSwiftOnoneSupport.so       0x00002b005aa8704d <unavailable> + 135245
10   libswiftSwiftOnoneSupport.so       0x00002b005aa820d2 <unavailable> + 114898
11   libswiftSwiftOnoneSupport.so       0x00002b005aa817b0 specialized MutableCollection<>.sort(by:) + 27
12   tmp993e8184                        0x000055c02e2b2009 <unavailable> + 8201
13   tmp993e8184                        0x000055c02e2b16c4 <unavailable> + 5828
14   libc.so.6                          0x00002b005b189460 __libc_start_main + 245
15   tmp993e8184                        0x000055c02e2b1399 <unavailable> + 5017

*/
/* stdout = 

*/


/// Write a function which sorts the given array of integers
/// in ascending order according to the sum of their digits.
/// Note: if there are several items with similar sum of their digits,
/// order them based on their index in original array.
/// For example:
/// >>> order_by_points(nums: [1, 11, -1, -11, -12])
/// [-1, -11, 1, -12, 11]
/// >>> order_by_points(nums: [] as [Int])
/// [] as [Int]
func order_by_points(nums: [Int]) -> [Int] {
    var nums = nums
    nums.sort { (a, b) -> Bool in
        let aSum = String(a).reduce(0) { $0 + Int(String($1))! }
        let bSum = String(b).reduce(0) { $0 + Int(String($1))! }
        return aSum < bSum
    }
    return nums
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(order_by_points(nums: [1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11])
assert(order_by_points(nums: [1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]) == [0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457])
assert(order_by_points(nums: [] as [Int]) == [] as [Int])
assert(order_by_points(nums: [1, -11, -32, 43, 54, -98, 2, -3]) == [-3, -32, -98, -11, 1, 2, 43, 54])
assert(order_by_points(nums: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == [1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9])
assert(order_by_points(nums: [0, 6, 6, -76, -21, 23, 4]) == [-76, -21, 0, 4, 23, 6, 6])



// ----------- problem HumanEval_19_sort_numbers, completion 133 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpynqhc_m4/tmpynqhc_m4.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7a73162c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7a72e59561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7a72e59286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7a72e5913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7a72e58bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpynqhc_m4                        0x000055936b50a03c <unavailable> + 8252
6    libswiftCore.so                    0x00002b7a72f7ac90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b7a72f7b110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b7a72f79d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b7a72f79d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b7a7309f65a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b7a72e8e720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b7a72e8e70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b7a72f79460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b7a72f79370 Sequence.sorted(by:) + 193
15   tmpynqhc_m4                        0x000055936b509d6e <unavailable> + 7534
16   tmpynqhc_m4                        0x000055936b5098c1 <unavailable> + 6337
17   libc.so.6                          0x00002b7a7334e460 __libc_start_main + 245
18   tmpynqhc_m4                        0x000055936b5093e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (a, b) -> Bool in
        return Int(a)! < Int(b)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_67_fruit_distribution, completion 183 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpybd6fg3_/tmpybd6fg3_.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b882f3cec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b882f0c5561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b882f0c5286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b882f0c513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b882f0c4bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpybd6fg3_                        0x000055a3c316ceaa <unavailable> + 7850
6    tmpybd6fg3_                        0x000055a3c316c5fb <unavailable> + 5627
7    libc.so.6                          0x00002b882f5ba460 __libc_start_main + 245
8    tmpybd6fg3_                        0x000055a3c316c2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let fruits = s.split(separator: " ")
    let apples = Int(fruits[0])!
    let oranges = Int(fruits[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_67_fruit_distribution, completion 66 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpor58knhk/tmpor58knhk.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b226c834c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b226c52b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b226c52b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b226c52b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b226c52abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpor58knhk                        0x0000560f48e0cebd <unavailable> + 7869
6    tmpor58knhk                        0x0000560f48e0c5fb <unavailable> + 5627
7    libc.so.6                          0x00002b226ca20460 __libc_start_main + 245
8    tmpor58knhk                        0x0000560f48e0c2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let arr = s.split(separator: " ")
    let num_apples = Int(arr[0])!
    let num_oranges = Int(arr[2])!
    let num_mangoes = n - num_apples - num_oranges
    return num_mangoes
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_67_fruit_distribution, completion 4 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpyvix5341/tmpyvix5341.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b4021a63c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b402175a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b402175a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b402175a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b4021759bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpyvix5341                        0x000055f534d7febd <unavailable> + 7869
6    tmpyvix5341                        0x000055f534d7f5fb <unavailable> + 5627
7    libc.so.6                          0x00002b4021c4f460 __libc_start_main + 245
8    tmpyvix5341                        0x000055f534d7f2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let arr = s.split(separator: " ")
    let apples = Int(arr[0])!
    let oranges = Int(arr[2])!
    let mangoes = n - apples - oranges
    return mangoes
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_67_fruit_distribution, completion 74 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpybd6fg3_/tmpybd6fg3_.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b882f3cec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b882f0c5561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b882f0c5286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b882f0c513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b882f0c4bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpybd6fg3_                        0x000055a3c316ceaa <unavailable> + 7850
6    tmpybd6fg3_                        0x000055a3c316c5fb <unavailable> + 5627
7    libc.so.6                          0x00002b882f5ba460 __libc_start_main + 245
8    tmpybd6fg3_                        0x000055a3c316c2f9 <unavailable> + 4857

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    let fruits = s.split(separator: " ")
    let apples = Int(fruits[0])!
    let oranges = Int(fruits[2])!
    return n - apples - oranges
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_70_strange_sort_list, completion 65 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpkvn_0tfj/tmpkvn_0tfj.swift:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002af343a5ac80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af343751561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af343751286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af34375113c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af343750bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpkvn_0tfj                        0x000055f01bd777d5 <unavailable> + 10197
6    tmpkvn_0tfj                        0x000055f01bd7677b <unavailable> + 6011
7    libc.so.6                          0x00002af343c46460 __libc_start_main + 245
8    tmpkvn_0tfj                        0x000055f01bd76319 <unavailable> + 4889

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
    var lst = lst
    var result: [Int] = []
    while !lst.isEmpty {
        result.append(lst.min()!)
        result.append(lst.max()!)
        lst.remove(at: lst.index(of: lst.min()!)!)
        lst.remove(at: lst.index(of: lst.max()!)!)
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



// ----------- problem HumanEval_19_sort_numbers, completion 189 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpynqhc_m4/tmpynqhc_m4.swift:10: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b7a73162c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b7a72e59561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b7a72e59286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b7a72e5913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b7a72e58bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpynqhc_m4                        0x000055936b50a03c <unavailable> + 8252
6    libswiftCore.so                    0x00002b7a72f7ac90 MutableCollection<>._insertionSort(within:sortedEnd:by:) + 770
7    libswiftCore.so                    0x00002b7a72f7b110 MutableCollection<>._insertionSort(within:by:) + 356
8    libswiftCore.so                    0x00002b7a72f79d30 UnsafeMutableBufferPointer._stableSortImpl(by:) + 319
9    libswiftCore.so                    0x00002b7a72f79d15 <unavailable> + 2616597
10   libswiftCore.so                    0x00002b7a7309f65a <unavailable> + 3819098
11   libswiftCore.so                    0x00002b7a72e8e720 ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:) + 130
12   libswiftCore.so                    0x00002b7a72e8e70f <unavailable> + 1652495
13   libswiftCore.so                    0x00002b7a72f79460 MutableCollection<>.sort(by:) + 771
14   libswiftCore.so                    0x00002b7a72f79370 Sequence.sorted(by:) + 193
15   tmpynqhc_m4                        0x000055936b509d6e <unavailable> + 7534
16   tmpynqhc_m4                        0x000055936b5098c1 <unavailable> + 6337
17   libc.so.6                          0x00002b7a7334e460 __libc_start_main + 245
18   tmpynqhc_m4                        0x000055936b5093e9 <unavailable> + 5097

*/
/* stdout = 

*/


/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sort_numbers(numbers: "three one five")
/// "one three five"
func sort_numbers(numbers: String) -> String {
    let nums = numbers.split(separator: " ")
    let sorted = nums.sorted { (a, b) -> Bool in
        return Int(a)! < Int(b)!
    }
    return sorted.joined(separator: " ")
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_numbers(numbers: "") == "")
assert(sort_numbers(numbers: "three") == "three")
assert(sort_numbers(numbers: "three five nine") == "three five nine")
assert(sort_numbers(numbers: "five zero four seven nine eight") == "zero four five seven eight nine")
assert(sort_numbers(numbers: "six five four three two one zero") == "zero one two three four five six")



// ----------- problem HumanEval_67_fruit_distribution, completion 7 ------------
// status = Exception
// exit_code = -4
/* stderr = 
tmpou2i4b8z/tmpou2i4b8z.swift:20: Fatal error: Unexpectedly found nil while unwrapping an Optional value
Current stack trace:
0    libswiftCore.so                    0x00002b03b3d55c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b03b3a4c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b03b3a4c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b03b3a4c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b03b3a4bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpou2i4b8z                        0x000056191e082faa <unavailable> + 8106
6    tmpou2i4b8z                        0x000056191e08264b <unavailable> + 5707
7    libc.so.6                          0x00002b03b3f41460 __libc_start_main + 245
8    tmpou2i4b8z                        0x000056191e082349 <unavailable> + 4937

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    // Write your code here
    var arr = s.split(separator: " ")
    var apples = Int(arr[0])!
    var oranges = Int(arr[2])!
    var mango = n - apples - oranges
    return mango
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



