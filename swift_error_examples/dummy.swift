// ----------- problem HumanEval_120_maximum, completion 134 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwh05dnws.swift:19:19: error: cannot find 'Heap' in scope
    var maxHeap = Heap<Int>(sort: >)
                  ^~~~

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
    var maxHeap = Heap<Int>(sort: >)
    for i in 0..<arr.count {
        maxHeap.insert(arr[i])
        if maxHeap.count > k {
            maxHeap.remove()
        }
    }
    while !maxHeap.isEmpty {
        result.append(maxHeap.remove()!)
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



// ----------- problem HumanEval_107_even_odd_palindrome, completion 181 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpv7_rtly8.swift:21:12: error: cannot find 'is_palindrome' in scope
        if is_palindrome(n: i) {
           ^~~~~~~~~~~~~

*/
/* stdout = 

*/


/// Given a positive integer n, return a tuple that has the number of even and odd
/// integer palindromes that fall within the range(1, n), inclusive.
/// Example 1:
/// >>> even_odd_palindrome(n: 3)
/// (1, 2)
/// Explanation:
/// Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd.
/// Example 2:
/// >>> even_odd_palindrome(n: 12)
/// (4, 6)
/// Explanation:
/// Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd.
/// Note:
/// 1. 1 <= n <= 10^3
/// 2. returned tuple has the number of even and odd integer palindromes respectively.
func even_odd_palindrome(n: Int) -> (Int, Int) {
    var even = 0
    var odd = 0
    for i in 1...n {
        if is_palindrome(n: i) {
            if i % 2 == 0 {
                even += 1
            } else {
                odd += 1
            }
        }
    }
    return (even, odd)
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(even_odd_palindrome(n: 123) == (8, 13))
assert(even_odd_palindrome(n: 12) == (4, 6))
assert(even_odd_palindrome(n: 3) == (1, 2))
assert(even_odd_palindrome(n: 63) == (6, 8))
assert(even_odd_palindrome(n: 25) == (5, 6))
assert(even_odd_palindrome(n: 19) == (4, 6))
assert(even_odd_palindrome(n: 9) == (4, 5))
assert(even_odd_palindrome(n: 1) == (0, 1))



// ----------- problem HumanEval_109_move_one_ball, completion 112 ------------
// status = OK
// exit_code = 0
/* stderr = 

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
    var arr = arr
    var count = 0
    var i = 0
    while i < arr.count - 1 {
        if arr[i] > arr[i + 1] {
            count += 1
        }
        i += 1
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



