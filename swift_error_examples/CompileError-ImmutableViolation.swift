// ----------- problem HumanEval_37_sort_even, completion 187 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpqlnvojq2.swift:17:36: warning: 'index(of:)' is deprecated: renamed to 'firstIndex(of:)'
    let even_values = l.filter { l.index(of: $0)! % 2 == 0 }
                                   ^
/tmp/tmpqlnvojq2.swift:17:36: note: use 'firstIndex(of:)' instead
    let even_values = l.filter { l.index(of: $0)! % 2 == 0 }
                                   ^~~~~
                                   firstIndex
/tmp/tmpqlnvojq2.swift:18:17: error: cannot use mutating member on immutable value: 'even_values' is a 'let' constant
    even_values.sort()
    ~~~~~~~~~~~ ^
/tmp/tmpqlnvojq2.swift:17:5: note: change 'let' to 'var' to make it mutable
    let even_values = l.filter { l.index(of: $0)! % 2 == 0 }
    ^~~
    var

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
    var l = l
    var even_indicies = [Int]()
    for i in 0..<l.count {
        if i % 2 == 0 {
            even_indicies.append(i)
        }
    }
    let even_values = l.filter { l.index(of: $0)! % 2 == 0 }
    even_values.sort()
    for i in 0..<even_values.count {
        l[even_indicies[i]] = even_values[i]
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
            
assert(sort_even(l: [1, 2, 3]) == [1, 2, 3])
assert(sort_even(l: [5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == [-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123])
assert(sort_even(l: [5, 8, -12, 4, 23, 2, 3, 11, 12, -10]) == [-12, 8, 3, 4, 5, 2, 12, 11, 23, -10])



// ----------- problem HumanEval_59_largest_prime_factor, completion 144 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3pmijin4.swift:13:15: error: left side of mutating operator isn't mutable: 'n' is a 'let' constant
            n /= i
            ~ ^

*/
/* stdout = 

*/


/// Return the largest prime factor of n. Assume n > 1 and is not a prime.
/// >>> largest_prime_factor(n: 13195)
/// 29
/// >>> largest_prime_factor(n: 2048)
/// 2
func largest_prime_factor(n: Int) -> Int {
    var largest_prime = 1
    var i = 2
    while i * i <= n {
        if n % i == 0 {
            largest_prime = i
            n /= i
        } else {
            i += 1
        }
    }
    if n > 1 {
        largest_prime = n
    }
    return largest_prime
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(largest_prime_factor(n: 15) == 5)
assert(largest_prime_factor(n: 27) == 3)
assert(largest_prime_factor(n: 63) == 7)
assert(largest_prime_factor(n: 330) == 11)
assert(largest_prime_factor(n: 13195) == 29)



// ----------- problem HumanEval_154_cycpattern_check, completion 184 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmph8n_6mwy.swift:28:9: error: cannot assign to value: 'b' is a 'let' constant
        b = b_rotated
        ^
/tmp/tmph8n_6mwy.swift:17:5: note: change 'let' to 'var' to make it mutable
    let b = b.lowercased()
    ^~~
    var

*/
/* stdout = 

*/


/// You are given 2 words. You need to return true if the second word or any of its rotations is a substring in the first word
/// >>> cycpattern_check(a: "abcd", b: "abd")
/// false
/// >>> cycpattern_check(a: "hello", b: "ell")
/// true
/// >>> cycpattern_check(a: "whassup", b: "psus")
/// false
/// >>> cycpattern_check(a: "abab", b: "baa")
/// true
/// >>> cycpattern_check(a: "efef", b: "eeff")
/// false
/// >>> cycpattern_check(a: "himenss", b: "simen")
/// true
func cycpattern_check(a: String, b: String) -> Bool {
    let a = a.lowercased()
    let b = b.lowercased()
    if a.count < b.count { return false }
    if a.count == b.count { return a == b }
    let b_count = b.count
    var b_index = b.startIndex
    for _ in 0..<b_count {
        if a.contains(b) { return true }
        b_index = b.index(after: b_index)
        let b_first = b[b.startIndex..<b_index]
        let b_last = b[b_index..<b.endIndex]
        let b_rotated = String(b_last + b_first)
        b = b_rotated
    }
    return false
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(cycpattern_check(a: "xyzw", b: "xyw") == false)
assert(cycpattern_check(a: "yello", b: "ell") == true)
assert(cycpattern_check(a: "whattup", b: "ptut") == false)
assert(cycpattern_check(a: "efef", b: "fee") == true)
assert(cycpattern_check(a: "abab", b: "aabb") == false)
assert(cycpattern_check(a: "winemtt", b: "tinem") == true)



// ----------- problem HumanEval_123_get_odd_collatz, completion 62 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpuzuxmb3e.swift:19:15: error: left side of mutating operator isn't mutable: 'n' is a 'let' constant
            n /= 2
            ~ ^
/tmp/tmpuzuxmb3e.swift:21:13: error: cannot assign to value: 'n' is a 'let' constant
            n = 3 * n + 1
            ^

*/
/* stdout = 

*/


/// Given a positive integer n, return a sorted array that has the odd numbers in collatz sequence.
/// The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
/// as follows: start with any positive integer n. Then each term is obtained from the 
/// previous term as follows: if the previous term is even, the next term is one half of 
/// the previous term. If the previous term is odd, the next term is 3 times the previous
/// term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
/// Note: 
/// 1. Collatz(1) is [1].
/// 2. returned array sorted in increasing order.
/// For example:
/// get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
/// >>> get_odd_collatz(n: 5)
/// [1, 5]
func get_odd_collatz(n: Int) -> [Int] {
    var collatz = [n]
    while n != 1 {
        if n % 2 == 0 {
            n /= 2
        } else {
            n = 3 * n + 1
        }
        collatz.append(n)
    }
    return collatz.filter { $0 % 2 != 0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_odd_collatz(n: 14) == [1, 5, 7, 11, 13, 17])
assert(get_odd_collatz(n: 5) == [1, 5])
assert(get_odd_collatz(n: 12) == [1, 3, 5])
assert(get_odd_collatz(n: 1) == [1])



// ----------- problem HumanEval_115_max_fill, completion 122 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpcg2yv925.swift:35:34: error: left side of mutating operator isn't mutable: 'capacity' is a 'let' constant
                        capacity -= 1
                        ~~~~~~~~ ^
/tmp/tmpcg2yv925.swift:39:17: error: cannot assign to value: 'capacity' is a 'let' constant
                capacity = capacity + 1
                ^~~~~~~~

*/
/* stdout = 

*/


/// You are given a rectangular grid of wells. Each row represents a single well,
/// and each 1 in a row represents a single unit of water.
/// Each well has a corresponding bucket that can be used to extract water from it, 
/// and all buckets have the same capacity.
/// Your task is to use the buckets to empty the wells.
/// Output the number of times you need to lower the buckets.
/// Example 1:
/// >>> max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1)
/// 6
/// Example 2:
/// >>> max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2)
/// 5
/// Example 3:
/// >>> max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5)
/// 0
/// Constraints:
/// * all wells have the same length
/// * 1 <= grid.length <= 10^2
/// * 1 <= grid[:,1].length <= 10^2
/// * grid[i][j] -> 0 | 1
/// * 1 <= capacity <= 10
func max_fill(grid: [[Int]], capacity: Int) -> Int {
    var grid = grid
    var count = 0
    for i in 0..<grid.count {
        for j in 0..<grid[i].count {
            if grid[i][j] == 1 {
                grid[i][j] = 0
                count += 1
                var k = i
                while k < grid.count && capacity > 0 {
                    if grid[k][j] == 1 {
                        grid[k][j] = 0
                        capacity -= 1
                    }
                    k += 1
                }
                capacity = capacity + 1
            }
        }
    }
    return count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1) == 6)
assert(max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2) == 5)
assert(max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5) == 0)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 2) == 4)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 9) == 2)



// ----------- problem HumanEval_49_modp, completion 150 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpdyncz1pz.swift:20:9: error: cannot assign to value: 'p' is a 'let' constant
        p = (p * p) % 101
        ^

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var n = n
    var result = 1
    while n > 0 {
        if n % 2 == 1 {
            result = (result * p) % 101
        }
        p = (p * p) % 101
        n /= 2
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_94_skjkasdkd, completion 39 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp8kptth2u.swift:20:12: error: cannot find 'isPrime' in scope
        if isPrime(i) {
           ^~~~~~~
/tmp/tmp8kptth2u.swift:28:13: error: left side of mutating operator isn't mutable: 'max' is a 'let' constant
        max /= 10
        ~~~ ^
/tmp/tmp8kptth2u.swift:24:5: note: change 'let' to 'var' to make it mutable
    let max = primes.max()!
    ^~~
    var

*/
/* stdout = 

*/


/// You are given an array of integers.
/// You need to find the largest prime value and return the sum of its digits.
/// Examples:
/// >>> skjkasdkd(lst: [0, 3, 2, 1, 3, 5, 7, 4, 5, 5, 5, 2, 181, 32, 4, 32, 3, 2, 32, 324, 4, 3])
/// 10
/// >>> skjkasdkd(lst: [1, 0, 1, 8, 2, 4597, 2, 1, 3, 40, 1, 2, 1, 2, 4, 2, 5, 1])
/// 25
/// >>> skjkasdkd(lst: [1, 3, 1, 32, 5107, 34, 83278, 109, 163, 23, 2323, 32, 30, 1, 9, 3])
/// 13
/// >>> skjkasdkd(lst: [0, 724, 32, 71, 99, 32, 6, 0, 5, 91, 83, 0, 5, 6])
/// 11
/// >>> skjkasdkd(lst: [0, 81, 12, 3, 1, 21])
/// 3
/// >>> skjkasdkd(lst: [0, 8, 1, 2, 1, 7])
/// 7
func skjkasdkd(lst: [Int]) -> Int {
    var primes = [Int]()
    for i in lst {
        if isPrime(i) {
            primes.append(i)
        }
    }
    let max = primes.max()!
    var sum = 0
    while max > 0 {
        sum += max % 10
        max /= 10
    }
    return sum
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(skjkasdkd(lst: [0, 3, 2, 1, 3, 5, 7, 4, 5, 5, 5, 2, 181, 32, 4, 32, 3, 2, 32, 324, 4, 3]) == 10)
assert(skjkasdkd(lst: [1, 0, 1, 8, 2, 4597, 2, 1, 3, 40, 1, 2, 1, 2, 4, 2, 5, 1]) == 25)
assert(skjkasdkd(lst: [1, 3, 1, 32, 5107, 34, 83278, 109, 163, 23, 2323, 32, 30, 1, 9, 3]) == 13)
assert(skjkasdkd(lst: [0, 724, 32, 71, 99, 32, 6, 0, 5, 91, 83, 0, 5, 6]) == 11)
assert(skjkasdkd(lst: [0, 81, 12, 3, 1, 21]) == 3)
assert(skjkasdkd(lst: [0, 8, 1, 2, 1, 7]) == 7)
assert(skjkasdkd(lst: [8191]) == 19)
assert(skjkasdkd(lst: [8191, 123456, 127, 7]) == 19)
assert(skjkasdkd(lst: [127, 97, 8192]) == 10)



// ----------- problem HumanEval_75_is_multiply_prime, completion 7 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpz_gmrepg.swift:16:15: error: left side of mutating operator isn't mutable: 'a' is a 'let' constant
            a /= prime_numbers[i]
            ~ ^

*/
/* stdout = 

*/


/// Write a function that returns true if the given number is the multiplication of 3 prime numbers
/// and false otherwise.
/// Knowing that (a) is less then 100. 
/// Example:
/// >>> is_multiply_prime(a: 30)
/// true
/// 30 = 2 * 3 * 5
func is_multiply_prime(a: Int) -> Bool {
    var prime_numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
    var prime_factors = [Int]()
    var i = 0
    while a > 1 {
        if a % prime_numbers[i] == 0 {
            prime_factors.append(prime_numbers[i])
            a /= prime_numbers[i]
        } else {
            i += 1
        }
    }
    return prime_factors.count == 3
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_multiply_prime(a: 5) == false)
assert(is_multiply_prime(a: 30) == true)
assert(is_multiply_prime(a: 8) == true)
assert(is_multiply_prime(a: 10) == false)
assert(is_multiply_prime(a: 125) == true)
assert(is_multiply_prime(a: 105) == true)
assert(is_multiply_prime(a: 126) == false)
assert(is_multiply_prime(a: 729) == false)
assert(is_multiply_prime(a: 891) == false)
assert(is_multiply_prime(a: 1001) == true)



// ----------- problem HumanEval_59_largest_prime_factor, completion 130 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp0gp9yuaq.swift:13:15: error: left side of mutating operator isn't mutable: 'n' is a 'let' constant
            n /= i
            ~ ^

*/
/* stdout = 

*/


/// Return the largest prime factor of n. Assume n > 1 and is not a prime.
/// >>> largest_prime_factor(n: 13195)
/// 29
/// >>> largest_prime_factor(n: 2048)
/// 2
func largest_prime_factor(n: Int) -> Int {
    var largest_prime = 1
    var i = 2
    while i < n {
        if n % i == 0 {
            largest_prime = i
            n /= i
        } else {
            i += 1
        }
    }
    return largest_prime
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(largest_prime_factor(n: 15) == 5)
assert(largest_prime_factor(n: 27) == 3)
assert(largest_prime_factor(n: 63) == 7)
assert(largest_prime_factor(n: 330) == 11)
assert(largest_prime_factor(n: 13195) == 29)



// ----------- problem HumanEval_120_maximum, completion 172 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpnfm5lb3c.swift:29:13: error: cannot use mutating member on immutable value: 'arr' is a 'let' constant
        arr.swapAt(i, index)
        ~~~ ^

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
        var max = arr[i]
        var index = i
        for j in i+1..<arr.count {
            if arr[j] > max {
                max = arr[j]
                index = j
            }
        }
        result.append(max)
        arr.swapAt(i, index)
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



// ----------- problem HumanEval_59_largest_prime_factor, completion 86 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmphimoprsf.swift:13:15: error: left side of mutating operator isn't mutable: 'n' is a 'let' constant
            n /= i
            ~ ^

*/
/* stdout = 

*/


/// Return the largest prime factor of n. Assume n > 1 and is not a prime.
/// >>> largest_prime_factor(n: 13195)
/// 29
/// >>> largest_prime_factor(n: 2048)
/// 2
func largest_prime_factor(n: Int) -> Int {
    var largest_prime_factor = 1
    var i = 2
    while i * i <= n {
        if n % i == 0 {
            largest_prime_factor = i
            n /= i
        } else {
            i += 1
        }
    }
    if n > 1 {
        largest_prime_factor = n
    }
    return largest_prime_factor
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(largest_prime_factor(n: 15) == 5)
assert(largest_prime_factor(n: 27) == 3)
assert(largest_prime_factor(n: 63) == 7)
assert(largest_prime_factor(n: 330) == 11)
assert(largest_prime_factor(n: 13195) == 29)



// ----------- problem HumanEval_49_modp, completion 194 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1hlpbsha.swift:21:9: error: cannot assign to value: 'p' is a 'let' constant
        p = (p * p) % n
        ^

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var n = n
    var result = 1
    while n > 0 {
        if n % 2 == 1 {
            result = (result * p) % n
        }
        n = n / 2
        p = (p * p) % n
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_129_minPath, completion 155 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpsffhrgp1.swift:60:11: error: left side of mutating operator isn't mutable: 'k' is a 'let' constant
        k -= 1
        ~ ^

*/
/* stdout = 

*/


/// Given a grid with N rows and N columns (N >= 2) and a positive integer k, 
/// each cell of the grid contains a value. Every integer in the range [1, N * N]
/// inclusive appears exactly once on the cells of the grid.
/// You have to find the minimum path of length k in the grid. You can start
/// from any cell, and in each step you can move to any of the neighbor cells,
/// in other words, you can go to cells which share an edge with you current
/// cell.
/// Please note that a path of length k means visiting exactly k cells (not
/// necessarily distinct).
/// You CANNOT go off the grid.
/// A path A (of length k) is considered less than a path B (of length k) if
/// after making the ordered arrays of the values on the cells that A and B go
/// through (let's call them lst_A and lst_B), lst_A is lexicographically less
/// than lst_B, in other words, there exist an integer index i (1 <= i <= k)
/// such that lst_A[i] < lst_B[i] and for any j (1 <= j < i) we have
/// lst_A[j] = lst_B[j].
/// It is guaranteed that the answer is unique.
/// Return an ordered array of the values on the cells that the minimum path go through.
/// Examples:    
/// >>> minPath(grid: [[1, 2, 3], [4, 5, 6], [7, 8, 9]], k: 3)
/// [1, 2, 1]
/// >>> minPath(grid: [[5, 9, 3], [4, 1, 6], [7, 8, 2]], k: 1)
/// [1]
func minPath(grid: [[Int]], k: Int) -> [Int] {
    let n = grid.count
    var dp = Array(repeating: Array(repeating: Int.max, count: n), count: n)
    var prev = Array(repeating: Array(repeating: 0, count: n), count: n)
    for i in 0..<n {
        for j in 0..<n {
            if i == 0 && j == 0 {
                dp[i][j] = grid[i][j]
            } else if i == 0 {
                dp[i][j] = dp[i][j - 1] + grid[i][j]
                prev[i][j] = 1
            } else if j == 0 {
                dp[i][j] = dp[i - 1][j] + grid[i][j]
                prev[i][j] = 2
            } else {
                if dp[i - 1][j] < dp[i][j - 1] {
                    dp[i][j] = dp[i - 1][j] + grid[i][j]
                    prev[i][j] = 2
                } else {
                    dp[i][j] = dp[i][j - 1] + grid[i][j]
                    prev[i][j] = 1
                }
            }
        }
    }
    var path = [Int]()
    var i = n - 1
    var j = n - 1
    while k > 0 {
        path.append(grid[i][j])
        if prev[i][j] == 1 {
            j -= 1
        } else {
            i -= 1
        }
        k -= 1
    }
    return path
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(minPath(grid: [[1, 2, 3], [4, 5, 6], [7, 8, 9]], k: 3) == [1, 2, 1])
assert(minPath(grid: [[5, 9, 3], [4, 1, 6], [7, 8, 2]], k: 1) == [1])
assert(minPath(grid: [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]], k: 4) == [1, 2, 1, 2])
assert(minPath(grid: [[6, 4, 13, 10], [5, 7, 12, 1], [3, 16, 11, 15], [8, 14, 9, 2]], k: 7) == [1, 10, 1, 10, 1, 10, 1])
assert(minPath(grid: [[8, 14, 9, 2], [6, 4, 13, 15], [5, 7, 1, 12], [3, 10, 11, 16]], k: 5) == [1, 7, 1, 7, 1])
assert(minPath(grid: [[11, 8, 7, 2], [5, 16, 14, 4], [9, 3, 15, 6], [12, 13, 10, 1]], k: 9) == [1, 6, 1, 6, 1, 6, 1, 6, 1])
assert(minPath(grid: [[12, 13, 10, 1], [9, 3, 15, 6], [5, 16, 14, 4], [11, 8, 7, 2]], k: 12) == [1, 6, 1, 6, 1, 6, 1, 6, 1, 6, 1, 6])
assert(minPath(grid: [[2, 7, 4], [3, 1, 5], [6, 8, 9]], k: 8) == [1, 3, 1, 3, 1, 3, 1, 3])
assert(minPath(grid: [[6, 1, 5], [3, 8, 9], [2, 7, 4]], k: 8) == [1, 5, 1, 5, 1, 5, 1, 5])
assert(minPath(grid: [[1, 2], [3, 4]], k: 10) == [1, 2, 1, 2, 1, 2, 1, 2, 1, 2])
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])



// ----------- problem HumanEval_115_max_fill, completion 79 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpaw72i86y.swift:48:32: error: left side of mutating operator isn't mutable: 'grid' is a 'let' constant
                    grid[i][j] -= 1
                    ~~~~       ^

*/
/* stdout = 

*/


/// You are given a rectangular grid of wells. Each row represents a single well,
/// and each 1 in a row represents a single unit of water.
/// Each well has a corresponding bucket that can be used to extract water from it, 
/// and all buckets have the same capacity.
/// Your task is to use the buckets to empty the wells.
/// Output the number of times you need to lower the buckets.
/// Example 1:
/// >>> max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1)
/// 6
/// Example 2:
/// >>> max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2)
/// 5
/// Example 3:
/// >>> max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5)
/// 0
/// Constraints:
/// * all wells have the same length
/// * 1 <= grid.length <= 10^2
/// * 1 <= grid[:,1].length <= 10^2
/// * grid[i][j] -> 0 | 1
/// * 1 <= capacity <= 10
func max_fill(grid: [[Int]], capacity: Int) -> Int {
    var result = 0
    var max_row = 0
    var max_col = 0
    var max_value = 0
    for row in grid {
        for col in row {
            if col > max_value {
                max_value = col
                max_row = grid.firstIndex(of: row)!
                max_col = row.firstIndex(of: col)!
            }
        }
    }
    while max_value > 0 {
        for row in grid {
            for col in row {
                if col > 0 {
                    result += 1
                }
            }
        }
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] > 0 {
                    grid[i][j] -= 1
                }
            }
        }
        max_value = 0
        for row in grid {
            for col in row {
                if col > max_value {
                    max_value = col
                    max_row = grid.firstIndex(of: row)!
                    max_col = row.firstIndex(of: col)!
                }
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
            
assert(max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1) == 6)
assert(max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2) == 5)
assert(max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5) == 0)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 2) == 4)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 9) == 2)



// ----------- problem HumanEval_129_minPath, completion 181 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp5g9efhjo.swift:67:11: error: left side of mutating operator isn't mutable: 'k' is a 'let' constant
        k -= 1
        ~ ^

*/
/* stdout = 

*/


/// Given a grid with N rows and N columns (N >= 2) and a positive integer k, 
/// each cell of the grid contains a value. Every integer in the range [1, N * N]
/// inclusive appears exactly once on the cells of the grid.
/// You have to find the minimum path of length k in the grid. You can start
/// from any cell, and in each step you can move to any of the neighbor cells,
/// in other words, you can go to cells which share an edge with you current
/// cell.
/// Please note that a path of length k means visiting exactly k cells (not
/// necessarily distinct).
/// You CANNOT go off the grid.
/// A path A (of length k) is considered less than a path B (of length k) if
/// after making the ordered arrays of the values on the cells that A and B go
/// through (let's call them lst_A and lst_B), lst_A is lexicographically less
/// than lst_B, in other words, there exist an integer index i (1 <= i <= k)
/// such that lst_A[i] < lst_B[i] and for any j (1 <= j < i) we have
/// lst_A[j] = lst_B[j].
/// It is guaranteed that the answer is unique.
/// Return an ordered array of the values on the cells that the minimum path go through.
/// Examples:    
/// >>> minPath(grid: [[1, 2, 3], [4, 5, 6], [7, 8, 9]], k: 3)
/// [1, 2, 1]
/// >>> minPath(grid: [[5, 9, 3], [4, 1, 6], [7, 8, 2]], k: 1)
/// [1]
func minPath(grid: [[Int]], k: Int) -> [Int] {
    let n = grid.count
    var minPath = [Int]()
    var minPathSum = Int.max
    var minPathGrid = [[Int]]()
    for i in 0..<n {
        minPathGrid.append(Array(repeating: 0, count: n))
    }
    for i in 0..<n {
        for j in 0..<n {
            if i == 0 && j == 0 {
                minPathGrid[i][j] = grid[i][j]
            } else if i == 0 {
                minPathGrid[i][j] = minPathGrid[i][j - 1] + grid[i][j]
            } else if j == 0 {
                minPathGrid[i][j] = minPathGrid[i - 1][j] + grid[i][j]
            } else {
                minPathGrid[i][j] = min(minPathGrid[i - 1][j], minPathGrid[i][j - 1]) + grid[i][j]
            }
        }
    }
    var i = n - 1
    var j = n - 1
    while k > 0 {
        if i == 0 && j == 0 {
            minPath.append(grid[i][j])
            break
        } else if i == 0 {
            minPath.append(grid[i][j])
            j -= 1
        } else if j == 0 {
            minPath.append(grid[i][j])
            i -= 1
        } else {
            if minPathGrid[i - 1][j] < minPathGrid[i][j - 1] {
                minPath.append(grid[i][j])
                i -= 1
            } else {
                minPath.append(grid[i][j])
                j -= 1
            }
        }
        k -= 1
    }
    return minPath.reversed()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(minPath(grid: [[1, 2, 3], [4, 5, 6], [7, 8, 9]], k: 3) == [1, 2, 1])
assert(minPath(grid: [[5, 9, 3], [4, 1, 6], [7, 8, 2]], k: 1) == [1])
assert(minPath(grid: [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]], k: 4) == [1, 2, 1, 2])
assert(minPath(grid: [[6, 4, 13, 10], [5, 7, 12, 1], [3, 16, 11, 15], [8, 14, 9, 2]], k: 7) == [1, 10, 1, 10, 1, 10, 1])
assert(minPath(grid: [[8, 14, 9, 2], [6, 4, 13, 15], [5, 7, 1, 12], [3, 10, 11, 16]], k: 5) == [1, 7, 1, 7, 1])
assert(minPath(grid: [[11, 8, 7, 2], [5, 16, 14, 4], [9, 3, 15, 6], [12, 13, 10, 1]], k: 9) == [1, 6, 1, 6, 1, 6, 1, 6, 1])
assert(minPath(grid: [[12, 13, 10, 1], [9, 3, 15, 6], [5, 16, 14, 4], [11, 8, 7, 2]], k: 12) == [1, 6, 1, 6, 1, 6, 1, 6, 1, 6, 1, 6])
assert(minPath(grid: [[2, 7, 4], [3, 1, 5], [6, 8, 9]], k: 8) == [1, 3, 1, 3, 1, 3, 1, 3])
assert(minPath(grid: [[6, 1, 5], [3, 8, 9], [2, 7, 4]], k: 8) == [1, 5, 1, 5, 1, 5, 1, 5])
assert(minPath(grid: [[1, 2], [3, 4]], k: 10) == [1, 2, 1, 2, 1, 2, 1, 2, 1, 2])
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])



// ----------- problem HumanEval_156_int_to_mini_roman, completion 180 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpnpc78nm9.swift:26:23: error: left side of mutating operator isn't mutable: 'digit' is a 'let' constant
                digit -= 5
                ~~~~~ ^
/tmp/tmpnpc78nm9.swift:18:9: note: change 'let' to 'var' to make it mutable
        let digit = num % 10
        ^~~
        var

*/
/* stdout = 

*/


/// Given a positive integer, obtain its roman numeral equivalent as a string,
/// and return it in lowercase.
/// Restrictions: 1 <= num <= 1000
/// Examples:
/// >>> int_to_mini_roman(number: 19)
/// "xix"
/// >>> int_to_mini_roman(number: 152)
/// "clii"
/// >>> int_to_mini_roman(number: 426)
/// "cdxxvi"
func int_to_mini_roman(number: Int) -> String {
    let roman_numerals = ["i", "v", "x", "l", "c", "d", "m"]
    var result = ""
    var num = number
    var i = 0
    while num > 0 {
        let digit = num % 10
        if digit == 9 {
            result = roman_numerals[i] + roman_numerals[i + 2] + result
        } else if digit == 4 {
            result = roman_numerals[i] + roman_numerals[i + 1] + result
        } else {
            if digit >= 5 {
                result = roman_numerals[i + 1] + result
                digit -= 5
            }
            for _ in 0..<digit {
                result = roman_numerals[i] + result
            }
        }
        num /= 10
        i += 2
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
            
assert(int_to_mini_roman(number: 19) == "xix")
assert(int_to_mini_roman(number: 152) == "clii")
assert(int_to_mini_roman(number: 251) == "ccli")
assert(int_to_mini_roman(number: 426) == "cdxxvi")
assert(int_to_mini_roman(number: 500) == "d")
assert(int_to_mini_roman(number: 1) == "i")
assert(int_to_mini_roman(number: 4) == "iv")
assert(int_to_mini_roman(number: 43) == "xliii")
assert(int_to_mini_roman(number: 90) == "xc")
assert(int_to_mini_roman(number: 94) == "xciv")
assert(int_to_mini_roman(number: 532) == "dxxxii")
assert(int_to_mini_roman(number: 900) == "cm")
assert(int_to_mini_roman(number: 994) == "cmxciv")
assert(int_to_mini_roman(number: 1000) == "m")



// ----------- problem HumanEval_59_largest_prime_factor, completion 79 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp4aexu3be.swift:13:15: error: left side of mutating operator isn't mutable: 'n' is a 'let' constant
            n /= i
            ~ ^

*/
/* stdout = 

*/


/// Return the largest prime factor of n. Assume n > 1 and is not a prime.
/// >>> largest_prime_factor(n: 13195)
/// 29
/// >>> largest_prime_factor(n: 2048)
/// 2
func largest_prime_factor(n: Int) -> Int {
    var largest_prime = 0
    var i = 2
    while i <= n {
        if n % i == 0 {
            largest_prime = i
            n /= i
        } else {
            i += 1
        }
    }
    return largest_prime
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(largest_prime_factor(n: 15) == 5)
assert(largest_prime_factor(n: 27) == 3)
assert(largest_prime_factor(n: 63) == 7)
assert(largest_prime_factor(n: 330) == 11)
assert(largest_prime_factor(n: 13195) == 29)



// ----------- problem HumanEval_120_maximum, completion 177 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpw9md84j1.swift:28:13: error: cannot use mutating member on immutable value: 'arr' is a 'let' constant
        arr.swapAt(i, max)
        ~~~ ^

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
    var max = 0
    for i in 0..<k {
        max = i
        for j in i+1..<arr.count {
            if arr[j] > arr[max] {
                max = j
            }
        }
        result.append(arr[max])
        arr.swapAt(i, max)
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



// ----------- problem HumanEval_115_max_fill, completion 11 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmphyuu5ah6.swift:35:34: error: left side of mutating operator isn't mutable: 'capacity' is a 'let' constant
                        capacity -= 1
                        ~~~~~~~~ ^

*/
/* stdout = 

*/


/// You are given a rectangular grid of wells. Each row represents a single well,
/// and each 1 in a row represents a single unit of water.
/// Each well has a corresponding bucket that can be used to extract water from it, 
/// and all buckets have the same capacity.
/// Your task is to use the buckets to empty the wells.
/// Output the number of times you need to lower the buckets.
/// Example 1:
/// >>> max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1)
/// 6
/// Example 2:
/// >>> max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2)
/// 5
/// Example 3:
/// >>> max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5)
/// 0
/// Constraints:
/// * all wells have the same length
/// * 1 <= grid.length <= 10^2
/// * 1 <= grid[:,1].length <= 10^2
/// * grid[i][j] -> 0 | 1
/// * 1 <= capacity <= 10
func max_fill(grid: [[Int]], capacity: Int) -> Int {
    var grid = grid
    var count = 0
    for i in 0..<grid.count {
        for j in 0..<grid[i].count {
            if grid[i][j] == 1 {
                grid[i][j] = 0
                count += 1
                var k = i
                while k < grid.count && capacity > 0 {
                    if grid[k][j] == 1 {
                        grid[k][j] = 0
                        capacity -= 1
                    }
                    k += 1
                }
            }
        }
    }
    return count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1) == 6)
assert(max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2) == 5)
assert(max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5) == 0)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 2) == 4)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 9) == 2)



// ----------- problem HumanEval_120_maximum, completion 132 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpei_tkcrn.swift:31:13: error: cannot use mutating member on immutable value: 'arr' is a 'let' constant
        arr.swapAt(i, maxIndex)
        ~~~ ^

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
    var max = arr[0]
    var maxIndex = 0
    for i in 0..<k {
        max = arr[i]
        maxIndex = i
        for j in i..<arr.count {
            if arr[j] > max {
                max = arr[j]
                maxIndex = j
            }
        }
        result.append(max)
        arr.swapAt(i, maxIndex)
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



// ----------- problem HumanEval_59_largest_prime_factor, completion 187 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3pmijin4.swift:13:15: error: left side of mutating operator isn't mutable: 'n' is a 'let' constant
            n /= i
            ~ ^

*/
/* stdout = 

*/


/// Return the largest prime factor of n. Assume n > 1 and is not a prime.
/// >>> largest_prime_factor(n: 13195)
/// 29
/// >>> largest_prime_factor(n: 2048)
/// 2
func largest_prime_factor(n: Int) -> Int {
    var largest_prime = 1
    var i = 2
    while i * i <= n {
        if n % i == 0 {
            largest_prime = i
            n /= i
        } else {
            i += 1
        }
    }
    if n > 1 {
        largest_prime = n
    }
    return largest_prime
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(largest_prime_factor(n: 15) == 5)
assert(largest_prime_factor(n: 27) == 3)
assert(largest_prime_factor(n: 63) == 7)
assert(largest_prime_factor(n: 330) == 11)
assert(largest_prime_factor(n: 13195) == 29)



// ----------- problem HumanEval_49_modp, completion 131 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp5ggcxm5l.swift:21:9: error: cannot assign to value: 'n' is a 'let' constant
        n = (n * n) % p
        ^

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var x = 1
    var y = n
    while y > 0 {
        if y % 2 == 1 {
            x = (x * n) % p
        }
        y = y / 2
        n = (n * n) % p
    }
    return x
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_83_starts_one_ends, completion 20 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6bsqfvzr.swift:9:10: error: cannot assign through subscript: 'dp' is a 'let' constant
    dp[1][0] = 1
    ~~   ^
/tmp/tmp6bsqfvzr.swift:8:5: note: change 'let' to 'var' to make it mutable
    let dp = Array(repeating: Array(repeating: 0, count: 2), count: n + 1)
    ^~~
    var
/tmp/tmp6bsqfvzr.swift:10:10: error: cannot assign through subscript: 'dp' is a 'let' constant
    dp[1][1] = 1
    ~~   ^
/tmp/tmp6bsqfvzr.swift:8:5: note: change 'let' to 'var' to make it mutable
    let dp = Array(repeating: Array(repeating: 0, count: 2), count: n + 1)
    ^~~
    var
/tmp/tmp6bsqfvzr.swift:12:14: error: cannot assign through subscript: 'dp' is a 'let' constant
        dp[i][0] = dp[i - 1][0] + dp[i - 1][1]
        ~~   ^
/tmp/tmp6bsqfvzr.swift:8:5: note: change 'let' to 'var' to make it mutable
    let dp = Array(repeating: Array(repeating: 0, count: 2), count: n + 1)
    ^~~
    var
/tmp/tmp6bsqfvzr.swift:13:14: error: cannot assign through subscript: 'dp' is a 'let' constant
        dp[i][1] = dp[i - 1][0]
        ~~   ^
/tmp/tmp6bsqfvzr.swift:8:5: note: change 'let' to 'var' to make it mutable
    let dp = Array(repeating: Array(repeating: 0, count: 2), count: n + 1)
    ^~~
    var

*/
/* stdout = 

*/


/// Given a positive integer n, return the count of the numbers of n-digit
/// positive integers that start or end with 1.
func starts_one_ends(n: Int) -> Int {
    if n == 1 {
        return 2
    }
    let dp = Array(repeating: Array(repeating: 0, count: 2), count: n + 1)
    dp[1][0] = 1
    dp[1][1] = 1
    for i in 2...n {
        dp[i][0] = dp[i - 1][0] + dp[i - 1][1]
        dp[i][1] = dp[i - 1][0]
    }
    return dp[n][0] + dp[n][1]
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(starts_one_ends(n: 1) == 1)
assert(starts_one_ends(n: 2) == 18)
assert(starts_one_ends(n: 3) == 180)
assert(starts_one_ends(n: 4) == 1800)
assert(starts_one_ends(n: 5) == 18000)



// ----------- problem HumanEval_123_get_odd_collatz, completion 151 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpuzuxmb3e.swift:19:15: error: left side of mutating operator isn't mutable: 'n' is a 'let' constant
            n /= 2
            ~ ^
/tmp/tmpuzuxmb3e.swift:21:13: error: cannot assign to value: 'n' is a 'let' constant
            n = 3 * n + 1
            ^

*/
/* stdout = 

*/


/// Given a positive integer n, return a sorted array that has the odd numbers in collatz sequence.
/// The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
/// as follows: start with any positive integer n. Then each term is obtained from the 
/// previous term as follows: if the previous term is even, the next term is one half of 
/// the previous term. If the previous term is odd, the next term is 3 times the previous
/// term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
/// Note: 
/// 1. Collatz(1) is [1].
/// 2. returned array sorted in increasing order.
/// For example:
/// get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
/// >>> get_odd_collatz(n: 5)
/// [1, 5]
func get_odd_collatz(n: Int) -> [Int] {
    var collatz = [n]
    while n != 1 {
        if n % 2 == 0 {
            n /= 2
        } else {
            n = 3 * n + 1
        }
        collatz.append(n)
    }
    return collatz.filter { $0 % 2 != 0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_odd_collatz(n: 14) == [1, 5, 7, 11, 13, 17])
assert(get_odd_collatz(n: 5) == [1, 5])
assert(get_odd_collatz(n: 12) == [1, 3, 5])
assert(get_odd_collatz(n: 1) == [1])



// ----------- problem HumanEval_123_get_odd_collatz, completion 40 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpuzuxmb3e.swift:19:15: error: left side of mutating operator isn't mutable: 'n' is a 'let' constant
            n /= 2
            ~ ^
/tmp/tmpuzuxmb3e.swift:21:13: error: cannot assign to value: 'n' is a 'let' constant
            n = 3 * n + 1
            ^

*/
/* stdout = 

*/


/// Given a positive integer n, return a sorted array that has the odd numbers in collatz sequence.
/// The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
/// as follows: start with any positive integer n. Then each term is obtained from the 
/// previous term as follows: if the previous term is even, the next term is one half of 
/// the previous term. If the previous term is odd, the next term is 3 times the previous
/// term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
/// Note: 
/// 1. Collatz(1) is [1].
/// 2. returned array sorted in increasing order.
/// For example:
/// get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
/// >>> get_odd_collatz(n: 5)
/// [1, 5]
func get_odd_collatz(n: Int) -> [Int] {
    var collatz = [n]
    while n != 1 {
        if n % 2 == 0 {
            n /= 2
        } else {
            n = 3 * n + 1
        }
        collatz.append(n)
    }
    return collatz.filter { $0 % 2 != 0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_odd_collatz(n: 14) == [1, 5, 7, 11, 13, 17])
assert(get_odd_collatz(n: 5) == [1, 5])
assert(get_odd_collatz(n: 12) == [1, 3, 5])
assert(get_odd_collatz(n: 1) == [1])



// ----------- problem HumanEval_12_longest, completion 74 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpiuliedj6.swift:15:17: error: cannot assign to value: 'longestString' is a 'let' constant
                longestString = string
                ^~~~~~~~~~~~~

*/
/* stdout = 

*/


/// Out of array of strings, return the longest one. Return the first one in case of multiple
/// strings of the same length. Return nil in case the input array is empty.
/// >>> longest(strings: [] as [String])
/// nil
/// >>> longest(strings: ["a", "b", "c"])
/// "a"
/// >>> longest(strings: ["a", "bb", "ccc"])
/// "ccc"
func longest(strings: [String]) -> String? {
    var longestString: String?
    for string in strings {
        if let longestString = longestString {
            if string.count > longestString.count {
                longestString = string
            }
        } else {
            longestString = string
        }
    }
    return longestString
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(longest(strings: [] as [String]) == nil)
assert(longest(strings: ["x", "y", "z"]) == "x")
assert(longest(strings: ["x", "yyy", "zzzz", "www", "kkkk", "abc"]) == "zzzz")



// ----------- problem HumanEval_123_get_odd_collatz, completion 94 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpuzuxmb3e.swift:19:15: error: left side of mutating operator isn't mutable: 'n' is a 'let' constant
            n /= 2
            ~ ^
/tmp/tmpuzuxmb3e.swift:21:13: error: cannot assign to value: 'n' is a 'let' constant
            n = 3 * n + 1
            ^

*/
/* stdout = 

*/


/// Given a positive integer n, return a sorted array that has the odd numbers in collatz sequence.
/// The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
/// as follows: start with any positive integer n. Then each term is obtained from the 
/// previous term as follows: if the previous term is even, the next term is one half of 
/// the previous term. If the previous term is odd, the next term is 3 times the previous
/// term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
/// Note: 
/// 1. Collatz(1) is [1].
/// 2. returned array sorted in increasing order.
/// For example:
/// get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
/// >>> get_odd_collatz(n: 5)
/// [1, 5]
func get_odd_collatz(n: Int) -> [Int] {
    var collatz = [n]
    while n != 1 {
        if n % 2 == 0 {
            n /= 2
        } else {
            n = 3 * n + 1
        }
        collatz.append(n)
    }
    return collatz.filter { $0 % 2 != 0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_odd_collatz(n: 14) == [1, 5, 7, 11, 13, 17])
assert(get_odd_collatz(n: 5) == [1, 5])
assert(get_odd_collatz(n: 12) == [1, 3, 5])
assert(get_odd_collatz(n: 1) == [1])



// ----------- problem HumanEval_75_is_multiply_prime, completion 31 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpacpkxcmw.swift:17:15: error: left side of mutating operator isn't mutable: 'i' is a 'let' constant
            i -= 1
            ~ ^

*/
/* stdout = 

*/


/// Write a function that returns true if the given number is the multiplication of 3 prime numbers
/// and false otherwise.
/// Knowing that (a) is less then 100. 
/// Example:
/// >>> is_multiply_prime(a: 30)
/// true
/// 30 = 2 * 3 * 5
func is_multiply_prime(a: Int) -> Bool {
    var number = a
    var primeNumbers = [Int]()
    var isMultiplyPrime = false
    for i in 2...number {
        if number % i == 0 {
            primeNumbers.append(i)
            number /= i
            i -= 1
        }
    }
    if primeNumbers.count == 3 {
        isMultiplyPrime = true
    }
    return isMultiplyPrime
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_multiply_prime(a: 5) == false)
assert(is_multiply_prime(a: 30) == true)
assert(is_multiply_prime(a: 8) == true)
assert(is_multiply_prime(a: 10) == false)
assert(is_multiply_prime(a: 125) == true)
assert(is_multiply_prime(a: 105) == true)
assert(is_multiply_prime(a: 126) == false)
assert(is_multiply_prime(a: 729) == false)
assert(is_multiply_prime(a: 891) == false)
assert(is_multiply_prime(a: 1001) == true)



// ----------- problem HumanEval_75_is_multiply_prime, completion 108 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpgwv9j00o.swift:15:15: error: left side of mutating operator isn't mutable: 'a' is a 'let' constant
            a /= i
            ~ ^

*/
/* stdout = 

*/


/// Write a function that returns true if the given number is the multiplication of 3 prime numbers
/// and false otherwise.
/// Knowing that (a) is less then 100. 
/// Example:
/// >>> is_multiply_prime(a: 30)
/// true
/// 30 = 2 * 3 * 5
func is_multiply_prime(a: Int) -> Bool {
    var i = 2
    var prime_factors = [Int]()
    while i * i <= a {
        if a % i == 0 {
            prime_factors.append(i)
            a /= i
        } else {
            i += 1
        }
    }
    if a > 1 {
        prime_factors.append(a)
    }
    return prime_factors.count == 3
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_multiply_prime(a: 5) == false)
assert(is_multiply_prime(a: 30) == true)
assert(is_multiply_prime(a: 8) == true)
assert(is_multiply_prime(a: 10) == false)
assert(is_multiply_prime(a: 125) == true)
assert(is_multiply_prime(a: 105) == true)
assert(is_multiply_prime(a: 126) == false)
assert(is_multiply_prime(a: 729) == false)
assert(is_multiply_prime(a: 891) == false)
assert(is_multiply_prime(a: 1001) == true)



// ----------- problem HumanEval_123_get_odd_collatz, completion 68 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp7snck1sp.swift:19:15: error: left side of mutating operator isn't mutable: 'n' is a 'let' constant
            n /= 2
            ~ ^
/tmp/tmp7snck1sp.swift:21:13: error: cannot assign to value: 'n' is a 'let' constant
            n = n * 3 + 1
            ^

*/
/* stdout = 

*/


/// Given a positive integer n, return a sorted array that has the odd numbers in collatz sequence.
/// The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
/// as follows: start with any positive integer n. Then each term is obtained from the 
/// previous term as follows: if the previous term is even, the next term is one half of 
/// the previous term. If the previous term is odd, the next term is 3 times the previous
/// term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
/// Note: 
/// 1. Collatz(1) is [1].
/// 2. returned array sorted in increasing order.
/// For example:
/// get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
/// >>> get_odd_collatz(n: 5)
/// [1, 5]
func get_odd_collatz(n: Int) -> [Int] {
    var collatz = [n]
    while n != 1 {
        if n % 2 == 0 {
            n /= 2
        } else {
            n = n * 3 + 1
        }
        collatz.append(n)
    }
    return collatz.filter { $0 % 2 != 0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_odd_collatz(n: 14) == [1, 5, 7, 11, 13, 17])
assert(get_odd_collatz(n: 5) == [1, 5])
assert(get_odd_collatz(n: 12) == [1, 3, 5])
assert(get_odd_collatz(n: 1) == [1])



// ----------- problem HumanEval_115_max_fill, completion 116 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpvpjsbtaf.swift:39:24: error: cannot assign through subscript: 'grid' is a 'let' constant
                grid[i][j] = 0
                ~~~~   ^

*/
/* stdout = 

*/


/// You are given a rectangular grid of wells. Each row represents a single well,
/// and each 1 in a row represents a single unit of water.
/// Each well has a corresponding bucket that can be used to extract water from it, 
/// and all buckets have the same capacity.
/// Your task is to use the buckets to empty the wells.
/// Output the number of times you need to lower the buckets.
/// Example 1:
/// >>> max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1)
/// 6
/// Example 2:
/// >>> max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2)
/// 5
/// Example 3:
/// >>> max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5)
/// 0
/// Constraints:
/// * all wells have the same length
/// * 1 <= grid.length <= 10^2
/// * 1 <= grid[:,1].length <= 10^2
/// * grid[i][j] -> 0 | 1
/// * 1 <= capacity <= 10
func max_fill(grid: [[Int]], capacity: Int) -> Int {
    var result = 0
    var max_value = 0
    for i in 0..<grid.count {
        for j in 0..<grid[i].count {
            if grid[i][j] == 1 {
                max_value += 1
            }
        }
    }
    var current_value = 0
    var i = 0
    while current_value < max_value {
        for j in 0..<grid[i].count {
            if grid[i][j] == 1 {
                current_value += 1
                grid[i][j] = 0
            }
        }
        result += 1
        i += 1
        if i == grid.count {
            i = 0
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
            
assert(max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1) == 6)
assert(max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2) == 5)
assert(max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5) == 0)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 2) == 4)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 9) == 2)



// ----------- problem HumanEval_115_max_fill, completion 150 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmphflw8263.swift:36:34: error: left side of mutating operator isn't mutable: 'capacity' is a 'let' constant
                        capacity -= 1
                        ~~~~~~~~ ^

*/
/* stdout = 

*/


/// You are given a rectangular grid of wells. Each row represents a single well,
/// and each 1 in a row represents a single unit of water.
/// Each well has a corresponding bucket that can be used to extract water from it, 
/// and all buckets have the same capacity.
/// Your task is to use the buckets to empty the wells.
/// Output the number of times you need to lower the buckets.
/// Example 1:
/// >>> max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1)
/// 6
/// Example 2:
/// >>> max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2)
/// 5
/// Example 3:
/// >>> max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5)
/// 0
/// Constraints:
/// * all wells have the same length
/// * 1 <= grid.length <= 10^2
/// * 1 <= grid[:,1].length <= 10^2
/// * grid[i][j] -> 0 | 1
/// * 1 <= capacity <= 10
func max_fill(grid: [[Int]], capacity: Int) -> Int {
    var grid = grid
    var count = 0
    for i in 0..<grid.count {
        for j in 0..<grid[i].count {
            if grid[i][j] == 1 {
                count += 1
                grid[i][j] = 0
                var k = i
                while k < grid.count && capacity > 0 {
                    if grid[k][j] == 1 {
                        count += 1
                        grid[k][j] = 0
                        capacity -= 1
                    }
                    k += 1
                }
            }
        }
    }
    return count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1) == 6)
assert(max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2) == 5)
assert(max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5) == 0)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 2) == 4)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 9) == 2)



// ----------- problem HumanEval_59_largest_prime_factor, completion 129 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3pmijin4.swift:13:15: error: left side of mutating operator isn't mutable: 'n' is a 'let' constant
            n /= i
            ~ ^

*/
/* stdout = 

*/


/// Return the largest prime factor of n. Assume n > 1 and is not a prime.
/// >>> largest_prime_factor(n: 13195)
/// 29
/// >>> largest_prime_factor(n: 2048)
/// 2
func largest_prime_factor(n: Int) -> Int {
    var largest_prime = 1
    var i = 2
    while i * i <= n {
        if n % i == 0 {
            largest_prime = i
            n /= i
        } else {
            i += 1
        }
    }
    if n > 1 {
        largest_prime = n
    }
    return largest_prime
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(largest_prime_factor(n: 15) == 5)
assert(largest_prime_factor(n: 27) == 3)
assert(largest_prime_factor(n: 63) == 7)
assert(largest_prime_factor(n: 330) == 11)
assert(largest_prime_factor(n: 13195) == 29)



// ----------- problem HumanEval_83_starts_one_ends, completion 96 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykyck_1p.swift:6:10: error: cannot assign through subscript: 'dp' is a 'let' constant
    dp[1][0] = 1
    ~~   ^
/tmp/tmpykyck_1p.swift:5:5: note: change 'let' to 'var' to make it mutable
    let dp = Array(repeating: Array(repeating: 0, count: 2), count: n + 1)
    ^~~
    var
/tmp/tmpykyck_1p.swift:7:10: error: cannot assign through subscript: 'dp' is a 'let' constant
    dp[1][1] = 1
    ~~   ^
/tmp/tmpykyck_1p.swift:5:5: note: change 'let' to 'var' to make it mutable
    let dp = Array(repeating: Array(repeating: 0, count: 2), count: n + 1)
    ^~~
    var
/tmp/tmpykyck_1p.swift:9:14: error: cannot assign through subscript: 'dp' is a 'let' constant
        dp[i][0] = dp[i - 1][0] + dp[i - 1][1]
        ~~   ^
/tmp/tmpykyck_1p.swift:5:5: note: change 'let' to 'var' to make it mutable
    let dp = Array(repeating: Array(repeating: 0, count: 2), count: n + 1)
    ^~~
    var
/tmp/tmpykyck_1p.swift:10:14: error: cannot assign through subscript: 'dp' is a 'let' constant
        dp[i][1] = dp[i - 1][0]
        ~~   ^
/tmp/tmpykyck_1p.swift:5:5: note: change 'let' to 'var' to make it mutable
    let dp = Array(repeating: Array(repeating: 0, count: 2), count: n + 1)
    ^~~
    var

*/
/* stdout = 

*/


/// Given a positive integer n, return the count of the numbers of n-digit
/// positive integers that start or end with 1.
func starts_one_ends(n: Int) -> Int {
    let dp = Array(repeating: Array(repeating: 0, count: 2), count: n + 1)
    dp[1][0] = 1
    dp[1][1] = 1
    for i in 2...n {
        dp[i][0] = dp[i - 1][0] + dp[i - 1][1]
        dp[i][1] = dp[i - 1][0]
    }
    return dp[n][0] + dp[n][1]
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(starts_one_ends(n: 1) == 1)
assert(starts_one_ends(n: 2) == 18)
assert(starts_one_ends(n: 3) == 180)
assert(starts_one_ends(n: 4) == 1800)
assert(starts_one_ends(n: 5) == 18000)



// ----------- problem HumanEval_120_maximum, completion 66 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp5rwaern_.swift:29:13: error: cannot use mutating member on immutable value: 'arr' is a 'let' constant
        arr.swapAt(i, maxIndex)
        ~~~ ^

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
        var max = arr[i]
        var maxIndex = i
        for j in i+1..<arr.count {
            if arr[j] > max {
                max = arr[j]
                maxIndex = j
            }
        }
        result.append(max)
        arr.swapAt(i, maxIndex)
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



// ----------- problem HumanEval_120_maximum, completion 62 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpm5tkwvxo.swift:29:13: error: cannot use mutating member on immutable value: 'arr' is a 'let' constant
        arr.swapAt(i, maxIndex)
        ~~~ ^

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
        var max = Int.min
        var maxIndex = 0
        for j in i..<arr.count {
            if arr[j] > max {
                max = arr[j]
                maxIndex = j
            }
        }
        result.append(max)
        arr.swapAt(i, maxIndex)
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



// ----------- problem HumanEval_115_max_fill, completion 69 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpf6wmc35y.swift:41:32: error: cannot assign through subscript: 'grid' is a 'let' constant
                        grid[k][l] = 0
                        ~~~~   ^

*/
/* stdout = 

*/


/// You are given a rectangular grid of wells. Each row represents a single well,
/// and each 1 in a row represents a single unit of water.
/// Each well has a corresponding bucket that can be used to extract water from it, 
/// and all buckets have the same capacity.
/// Your task is to use the buckets to empty the wells.
/// Output the number of times you need to lower the buckets.
/// Example 1:
/// >>> max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1)
/// 6
/// Example 2:
/// >>> max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2)
/// 5
/// Example 3:
/// >>> max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5)
/// 0
/// Constraints:
/// * all wells have the same length
/// * 1 <= grid.length <= 10^2
/// * 1 <= grid[:,1].length <= 10^2
/// * grid[i][j] -> 0 | 1
/// * 1 <= capacity <= 10
func max_fill(grid: [[Int]], capacity: Int) -> Int {
    var result = 0
    var max = 0
    for i in 0..<grid.count {
        for j in 0..<grid[i].count {
            if grid[i][j] == 1 {
                max += 1
            }
        }
    }
    for i in 0..<grid.count {
        for j in 0..<grid[i].count {
            if grid[i][j] == 1 {
                result += 1
                var k = i
                var l = j
                while k < grid.count && l < grid[i].count {
                    if grid[k][l] == 1 {
                        grid[k][l] = 0
                        max -= 1
                    }
                    if max == 0 {
                        return result
                    }
                    k += 1
                    l += 1
                }
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
            
assert(max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1) == 6)
assert(max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2) == 5)
assert(max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5) == 0)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 2) == 4)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 9) == 2)



// ----------- problem HumanEval_115_max_fill, completion 154 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1_g3ucyj.swift:33:28: error: left side of mutating operator isn't mutable: 'row' is a 'let' constant
                    row[i] -= 1
                    ~~~    ^

*/
/* stdout = 

*/


/// You are given a rectangular grid of wells. Each row represents a single well,
/// and each 1 in a row represents a single unit of water.
/// Each well has a corresponding bucket that can be used to extract water from it, 
/// and all buckets have the same capacity.
/// Your task is to use the buckets to empty the wells.
/// Output the number of times you need to lower the buckets.
/// Example 1:
/// >>> max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1)
/// 6
/// Example 2:
/// >>> max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2)
/// 5
/// Example 3:
/// >>> max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5)
/// 0
/// Constraints:
/// * all wells have the same length
/// * 1 <= grid.length <= 10^2
/// * 1 <= grid[:,1].length <= 10^2
/// * grid[i][j] -> 0 | 1
/// * 1 <= capacity <= 10
func max_fill(grid: [[Int]], capacity: Int) -> Int {
    var result = 0
    var max_row = 0
    for row in grid {
        max_row = max(max_row, row.reduce(0, +))
    }
    for _ in 0..<max_row {
        for row in grid {
            for i in 0..<row.count {
                if row[i] > 0 {
                    row[i] -= 1
                    result += 1
                }
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
            
assert(max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1) == 6)
assert(max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2) == 5)
assert(max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5) == 0)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 2) == 4)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 9) == 2)



// ----------- problem HumanEval_115_max_fill, completion 156 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp0ko7l2va.swift:39:28: error: cannot assign through subscript: 'grid' is a 'let' constant
                    grid[i][j] = 0
                    ~~~~   ^

*/
/* stdout = 

*/


/// You are given a rectangular grid of wells. Each row represents a single well,
/// and each 1 in a row represents a single unit of water.
/// Each well has a corresponding bucket that can be used to extract water from it, 
/// and all buckets have the same capacity.
/// Your task is to use the buckets to empty the wells.
/// Output the number of times you need to lower the buckets.
/// Example 1:
/// >>> max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1)
/// 6
/// Example 2:
/// >>> max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2)
/// 5
/// Example 3:
/// >>> max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5)
/// 0
/// Constraints:
/// * all wells have the same length
/// * 1 <= grid.length <= 10^2
/// * 1 <= grid[:,1].length <= 10^2
/// * grid[i][j] -> 0 | 1
/// * 1 <= capacity <= 10
func max_fill(grid: [[Int]], capacity: Int) -> Int {
    var result = 0
    var max = 0
    for i in 0..<grid.count {
        for j in 0..<grid[i].count {
            if grid[i][j] == 1 {
                max += 1
            }
        }
    }
    var current = 0
    while current < max {
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 {
                    current += 1
                    grid[i][j] = 0
                    result += 1
                }
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
            
assert(max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1) == 6)
assert(max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2) == 5)
assert(max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5) == 0)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 2) == 4)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 9) == 2)



// ----------- problem HumanEval_120_maximum, completion 176 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpm5tkwvxo.swift:29:13: error: cannot use mutating member on immutable value: 'arr' is a 'let' constant
        arr.swapAt(i, maxIndex)
        ~~~ ^

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
        var max = Int.min
        var maxIndex = 0
        for j in i..<arr.count {
            if arr[j] > max {
                max = arr[j]
                maxIndex = j
            }
        }
        result.append(max)
        arr.swapAt(i, maxIndex)
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



// ----------- problem HumanEval_120_maximum, completion 127 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp45ev6wya.swift:32:13: error: cannot use mutating member on immutable value: 'arr' is a 'let' constant
        arr.swapAt(i, maxIndex)
        ~~~ ^

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
    guard arr.count > 0 else { return [] }
    guard arr.count > k else { return arr }
    var result = [Int]()
    var max = Int.min
    var maxIndex = 0
    for i in 0..<k {
        for j in i..<arr.count {
            if arr[j] > max {
                max = arr[j]
                maxIndex = j
            }
        }
        result.append(max)
        max = Int.min
        arr.swapAt(i, maxIndex)
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



// ----------- problem HumanEval_59_largest_prime_factor, completion 193 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmphimoprsf.swift:13:15: error: left side of mutating operator isn't mutable: 'n' is a 'let' constant
            n /= i
            ~ ^

*/
/* stdout = 

*/


/// Return the largest prime factor of n. Assume n > 1 and is not a prime.
/// >>> largest_prime_factor(n: 13195)
/// 29
/// >>> largest_prime_factor(n: 2048)
/// 2
func largest_prime_factor(n: Int) -> Int {
    var largest_prime_factor = 1
    var i = 2
    while i * i <= n {
        if n % i == 0 {
            largest_prime_factor = i
            n /= i
        } else {
            i += 1
        }
    }
    if n > 1 {
        largest_prime_factor = n
    }
    return largest_prime_factor
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(largest_prime_factor(n: 15) == 5)
assert(largest_prime_factor(n: 27) == 3)
assert(largest_prime_factor(n: 63) == 7)
assert(largest_prime_factor(n: 330) == 11)
assert(largest_prime_factor(n: 13195) == 29)



// ----------- problem HumanEval_115_max_fill, completion 96 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmphyuu5ah6.swift:35:34: error: left side of mutating operator isn't mutable: 'capacity' is a 'let' constant
                        capacity -= 1
                        ~~~~~~~~ ^

*/
/* stdout = 

*/


/// You are given a rectangular grid of wells. Each row represents a single well,
/// and each 1 in a row represents a single unit of water.
/// Each well has a corresponding bucket that can be used to extract water from it, 
/// and all buckets have the same capacity.
/// Your task is to use the buckets to empty the wells.
/// Output the number of times you need to lower the buckets.
/// Example 1:
/// >>> max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1)
/// 6
/// Example 2:
/// >>> max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2)
/// 5
/// Example 3:
/// >>> max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5)
/// 0
/// Constraints:
/// * all wells have the same length
/// * 1 <= grid.length <= 10^2
/// * 1 <= grid[:,1].length <= 10^2
/// * grid[i][j] -> 0 | 1
/// * 1 <= capacity <= 10
func max_fill(grid: [[Int]], capacity: Int) -> Int {
    var grid = grid
    var count = 0
    for i in 0..<grid.count {
        for j in 0..<grid[i].count {
            if grid[i][j] == 1 {
                grid[i][j] = 0
                count += 1
                var k = i
                while k < grid.count && capacity > 0 {
                    if grid[k][j] == 1 {
                        grid[k][j] = 0
                        capacity -= 1
                    }
                    k += 1
                }
            }
        }
    }
    return count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1) == 6)
assert(max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2) == 5)
assert(max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5) == 0)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 2) == 4)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 9) == 2)



// ----------- problem HumanEval_83_starts_one_ends, completion 9 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpn_wy40yr.swift:6:7: error: cannot assign through subscript: 'dp' is a 'let' constant
    dp[1] = 1
    ~~^
/tmp/tmpn_wy40yr.swift:5:5: note: change 'let' to 'var' to make it mutable
    let dp = Array(repeating: 0, count: n + 1)
    ^~~
    var
/tmp/tmpn_wy40yr.swift:8:37: error: cannot find 'pow' in scope
        dp[i] = dp[i - 1] * 9 + Int(pow(10, Double(i - 1)))
                                    ^~~
/tmp/tmpn_wy40yr.swift:8:11: error: cannot assign through subscript: 'dp' is a 'let' constant
        dp[i] = dp[i - 1] * 9 + Int(pow(10, Double(i - 1)))
        ~~^
/tmp/tmpn_wy40yr.swift:5:5: note: change 'let' to 'var' to make it mutable
    let dp = Array(repeating: 0, count: n + 1)
    ^~~
    var

*/
/* stdout = 

*/


/// Given a positive integer n, return the count of the numbers of n-digit
/// positive integers that start or end with 1.
func starts_one_ends(n: Int) -> Int {
    let dp = Array(repeating: 0, count: n + 1)
    dp[1] = 1
    for i in 2...n {
        dp[i] = dp[i - 1] * 9 + Int(pow(10, Double(i - 1)))
    }
    return dp[n]
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(starts_one_ends(n: 1) == 1)
assert(starts_one_ends(n: 2) == 18)
assert(starts_one_ends(n: 3) == 180)
assert(starts_one_ends(n: 4) == 1800)
assert(starts_one_ends(n: 5) == 18000)



// ----------- problem HumanEval_123_get_odd_collatz, completion 158 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpfl16tjuw.swift:19:13: error: cannot assign to value: 'n' is a 'let' constant
            n = n / 2
            ^
/tmp/tmpfl16tjuw.swift:21:13: error: cannot assign to value: 'n' is a 'let' constant
            n = 3 * n + 1
            ^

*/
/* stdout = 

*/


/// Given a positive integer n, return a sorted array that has the odd numbers in collatz sequence.
/// The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
/// as follows: start with any positive integer n. Then each term is obtained from the 
/// previous term as follows: if the previous term is even, the next term is one half of 
/// the previous term. If the previous term is odd, the next term is 3 times the previous
/// term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
/// Note: 
/// 1. Collatz(1) is [1].
/// 2. returned array sorted in increasing order.
/// For example:
/// get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
/// >>> get_odd_collatz(n: 5)
/// [1, 5]
func get_odd_collatz(n: Int) -> [Int] {
    var collatz_sequence: [Int] = [n]
    while n != 1 {
        if n % 2 == 0 {
            n = n / 2
        } else {
            n = 3 * n + 1
        }
        collatz_sequence.append(n)
    }
    var odd_collatz_sequence: [Int] = []
    for i in collatz_sequence {
        if i % 2 != 0 {
            odd_collatz_sequence.append(i)
        }
    }
    return odd_collatz_sequence
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_odd_collatz(n: 14) == [1, 5, 7, 11, 13, 17])
assert(get_odd_collatz(n: 5) == [1, 5])
assert(get_odd_collatz(n: 12) == [1, 3, 5])
assert(get_odd_collatz(n: 1) == [1])



// ----------- problem HumanEval_49_modp, completion 56 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpeunycz4b.swift:21:9: error: cannot assign to value: 'n' is a 'let' constant
        n = (n * n) % p
        ^

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var r = 1
    var b = n
    while b > 0 {
        if b % 2 == 1 {
            r = (r * n) % p
        }
        b /= 2
        n = (n * n) % p
    }
    return r
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_123_get_odd_collatz, completion 97 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpuzuxmb3e.swift:19:15: error: left side of mutating operator isn't mutable: 'n' is a 'let' constant
            n /= 2
            ~ ^
/tmp/tmpuzuxmb3e.swift:21:13: error: cannot assign to value: 'n' is a 'let' constant
            n = 3 * n + 1
            ^

*/
/* stdout = 

*/


/// Given a positive integer n, return a sorted array that has the odd numbers in collatz sequence.
/// The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
/// as follows: start with any positive integer n. Then each term is obtained from the 
/// previous term as follows: if the previous term is even, the next term is one half of 
/// the previous term. If the previous term is odd, the next term is 3 times the previous
/// term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
/// Note: 
/// 1. Collatz(1) is [1].
/// 2. returned array sorted in increasing order.
/// For example:
/// get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
/// >>> get_odd_collatz(n: 5)
/// [1, 5]
func get_odd_collatz(n: Int) -> [Int] {
    var collatz = [n]
    while n != 1 {
        if n % 2 == 0 {
            n /= 2
        } else {
            n = 3 * n + 1
        }
        collatz.append(n)
    }
    return collatz.filter { $0 % 2 != 0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_odd_collatz(n: 14) == [1, 5, 7, 11, 13, 17])
assert(get_odd_collatz(n: 5) == [1, 5])
assert(get_odd_collatz(n: 12) == [1, 3, 5])
assert(get_odd_collatz(n: 1) == [1])



// ----------- problem HumanEval_75_is_multiply_prime, completion 67 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpm5ng5wpr.swift:17:15: error: left side of mutating operator isn't mutable: 'i' is a 'let' constant
            i -= 1
            ~ ^

*/
/* stdout = 

*/


/// Write a function that returns true if the given number is the multiplication of 3 prime numbers
/// and false otherwise.
/// Knowing that (a) is less then 100. 
/// Example:
/// >>> is_multiply_prime(a: 30)
/// true
/// 30 = 2 * 3 * 5
func is_multiply_prime(a: Int) -> Bool {
    var isPrime = true
    var primeNumbers = [Int]()
    var number = a
    for i in 2...number {
        if number % i == 0 {
            primeNumbers.append(i)
            number /= i
            i -= 1
        }
    }
    if primeNumbers.count != 3 {
        isPrime = false
    }
    return isPrime
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_multiply_prime(a: 5) == false)
assert(is_multiply_prime(a: 30) == true)
assert(is_multiply_prime(a: 8) == true)
assert(is_multiply_prime(a: 10) == false)
assert(is_multiply_prime(a: 125) == true)
assert(is_multiply_prime(a: 105) == true)
assert(is_multiply_prime(a: 126) == false)
assert(is_multiply_prime(a: 729) == false)
assert(is_multiply_prime(a: 891) == false)
assert(is_multiply_prime(a: 1001) == true)



// ----------- problem HumanEval_120_maximum, completion 79 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp5rwaern_.swift:29:13: error: cannot use mutating member on immutable value: 'arr' is a 'let' constant
        arr.swapAt(i, maxIndex)
        ~~~ ^

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
        var max = arr[i]
        var maxIndex = i
        for j in i+1..<arr.count {
            if arr[j] > max {
                max = arr[j]
                maxIndex = j
            }
        }
        result.append(max)
        arr.swapAt(i, maxIndex)
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



// ----------- problem HumanEval_123_get_odd_collatz, completion 78 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpuzuxmb3e.swift:19:15: error: left side of mutating operator isn't mutable: 'n' is a 'let' constant
            n /= 2
            ~ ^
/tmp/tmpuzuxmb3e.swift:21:13: error: cannot assign to value: 'n' is a 'let' constant
            n = 3 * n + 1
            ^

*/
/* stdout = 

*/


/// Given a positive integer n, return a sorted array that has the odd numbers in collatz sequence.
/// The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
/// as follows: start with any positive integer n. Then each term is obtained from the 
/// previous term as follows: if the previous term is even, the next term is one half of 
/// the previous term. If the previous term is odd, the next term is 3 times the previous
/// term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
/// Note: 
/// 1. Collatz(1) is [1].
/// 2. returned array sorted in increasing order.
/// For example:
/// get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
/// >>> get_odd_collatz(n: 5)
/// [1, 5]
func get_odd_collatz(n: Int) -> [Int] {
    var collatz = [n]
    while n != 1 {
        if n % 2 == 0 {
            n /= 2
        } else {
            n = 3 * n + 1
        }
        collatz.append(n)
    }
    return collatz.filter { $0 % 2 != 0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_odd_collatz(n: 14) == [1, 5, 7, 11, 13, 17])
assert(get_odd_collatz(n: 5) == [1, 5])
assert(get_odd_collatz(n: 12) == [1, 3, 5])
assert(get_odd_collatz(n: 1) == [1])



// ----------- problem HumanEval_120_maximum, completion 12 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpm5tkwvxo.swift:29:13: error: cannot use mutating member on immutable value: 'arr' is a 'let' constant
        arr.swapAt(i, maxIndex)
        ~~~ ^

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
        var max = Int.min
        var maxIndex = 0
        for j in i..<arr.count {
            if arr[j] > max {
                max = arr[j]
                maxIndex = j
            }
        }
        result.append(max)
        arr.swapAt(i, maxIndex)
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



// ----------- problem HumanEval_123_get_odd_collatz, completion 128 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpuzuxmb3e.swift:19:15: error: left side of mutating operator isn't mutable: 'n' is a 'let' constant
            n /= 2
            ~ ^
/tmp/tmpuzuxmb3e.swift:21:13: error: cannot assign to value: 'n' is a 'let' constant
            n = 3 * n + 1
            ^

*/
/* stdout = 

*/


/// Given a positive integer n, return a sorted array that has the odd numbers in collatz sequence.
/// The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
/// as follows: start with any positive integer n. Then each term is obtained from the 
/// previous term as follows: if the previous term is even, the next term is one half of 
/// the previous term. If the previous term is odd, the next term is 3 times the previous
/// term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
/// Note: 
/// 1. Collatz(1) is [1].
/// 2. returned array sorted in increasing order.
/// For example:
/// get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
/// >>> get_odd_collatz(n: 5)
/// [1, 5]
func get_odd_collatz(n: Int) -> [Int] {
    var collatz = [n]
    while n != 1 {
        if n % 2 == 0 {
            n /= 2
        } else {
            n = 3 * n + 1
        }
        collatz.append(n)
    }
    return collatz.filter { $0 % 2 != 0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_odd_collatz(n: 14) == [1, 5, 7, 11, 13, 17])
assert(get_odd_collatz(n: 5) == [1, 5])
assert(get_odd_collatz(n: 12) == [1, 3, 5])
assert(get_odd_collatz(n: 1) == [1])



// ----------- problem HumanEval_154_cycpattern_check, completion 109 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpqnf_w44h.swift:25:15: error: left side of mutating operator isn't mutable: 'j' is a 'let' constant
            j += 1
            ~ ^
/tmp/tmpqnf_w44h.swift:22:9: note: change 'let' to 'var' to make it mutable
        let j = i
        ^~~
        var

*/
/* stdout = 

*/


/// You are given 2 words. You need to return true if the second word or any of its rotations is a substring in the first word
/// >>> cycpattern_check(a: "abcd", b: "abd")
/// false
/// >>> cycpattern_check(a: "hello", b: "ell")
/// true
/// >>> cycpattern_check(a: "whassup", b: "psus")
/// false
/// >>> cycpattern_check(a: "abab", b: "baa")
/// true
/// >>> cycpattern_check(a: "efef", b: "eeff")
/// false
/// >>> cycpattern_check(a: "himenss", b: "simen")
/// true
func cycpattern_check(a: String, b: String) -> Bool {
    guard a.count >= b.count else {
        return false
    }
    let a = Array(a)
    let b = Array(b)
    for i in 0..<a.count {
        let j = i
        var k = 0
        while k < b.count && a[j % a.count] == b[k] {
            j += 1
            k += 1
        }
        if k == b.count {
            return true
        }
    }
    return false
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(cycpattern_check(a: "xyzw", b: "xyw") == false)
assert(cycpattern_check(a: "yello", b: "ell") == true)
assert(cycpattern_check(a: "whattup", b: "ptut") == false)
assert(cycpattern_check(a: "efef", b: "fee") == true)
assert(cycpattern_check(a: "abab", b: "aabb") == false)
assert(cycpattern_check(a: "winemtt", b: "tinem") == true)



// ----------- problem HumanEval_115_max_fill, completion 20 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp4bt5j2nd.swift:37:34: error: left side of mutating operator isn't mutable: 'capacity' is a 'let' constant
                        capacity -= 1
                        ~~~~~~~~ ^

*/
/* stdout = 

*/


/// You are given a rectangular grid of wells. Each row represents a single well,
/// and each 1 in a row represents a single unit of water.
/// Each well has a corresponding bucket that can be used to extract water from it, 
/// and all buckets have the same capacity.
/// Your task is to use the buckets to empty the wells.
/// Output the number of times you need to lower the buckets.
/// Example 1:
/// >>> max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1)
/// 6
/// Example 2:
/// >>> max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2)
/// 5
/// Example 3:
/// >>> max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5)
/// 0
/// Constraints:
/// * all wells have the same length
/// * 1 <= grid.length <= 10^2
/// * 1 <= grid[:,1].length <= 10^2
/// * grid[i][j] -> 0 | 1
/// * 1 <= capacity <= 10
func max_fill(grid: [[Int]], capacity: Int) -> Int {
    var grid = grid
    var count = 0
    var i = 0
    while i < grid.count {
        var j = 0
        while j < grid[i].count {
            if grid[i][j] == 1 {
                grid[i][j] = 0
                count += 1
                var k = i + 1
                while k < grid.count && capacity > 0 {
                    if grid[k][j] == 1 {
                        grid[k][j] = 0
                        capacity -= 1
                    }
                    k += 1
                }
            }
            j += 1
        }
        i += 1
    }
    return count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1) == 6)
assert(max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2) == 5)
assert(max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5) == 0)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 2) == 4)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 9) == 2)



// ----------- problem HumanEval_115_max_fill, completion 47 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp4bt5j2nd.swift:37:34: error: left side of mutating operator isn't mutable: 'capacity' is a 'let' constant
                        capacity -= 1
                        ~~~~~~~~ ^

*/
/* stdout = 

*/


/// You are given a rectangular grid of wells. Each row represents a single well,
/// and each 1 in a row represents a single unit of water.
/// Each well has a corresponding bucket that can be used to extract water from it, 
/// and all buckets have the same capacity.
/// Your task is to use the buckets to empty the wells.
/// Output the number of times you need to lower the buckets.
/// Example 1:
/// >>> max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1)
/// 6
/// Example 2:
/// >>> max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2)
/// 5
/// Example 3:
/// >>> max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5)
/// 0
/// Constraints:
/// * all wells have the same length
/// * 1 <= grid.length <= 10^2
/// * 1 <= grid[:,1].length <= 10^2
/// * grid[i][j] -> 0 | 1
/// * 1 <= capacity <= 10
func max_fill(grid: [[Int]], capacity: Int) -> Int {
    var grid = grid
    var count = 0
    var i = 0
    while i < grid.count {
        var j = 0
        while j < grid[i].count {
            if grid[i][j] == 1 {
                grid[i][j] = 0
                count += 1
                var k = i + 1
                while k < grid.count && capacity > 0 {
                    if grid[k][j] == 1 {
                        grid[k][j] = 0
                        capacity -= 1
                    }
                    k += 1
                }
            }
            j += 1
        }
        i += 1
    }
    return count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1) == 6)
assert(max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2) == 5)
assert(max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5) == 0)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 2) == 4)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 9) == 2)



// ----------- problem HumanEval_156_int_to_mini_roman, completion 109 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpa24o1b_d.swift:29:26: error: left side of mutating operator isn't mutable: 'quotient' is a 'let' constant
                quotient -= 5
                ~~~~~~~~ ^
/tmp/tmpa24o1b_d.swift:20:9: note: change 'let' to 'var' to make it mutable
        let quotient = remainder / divisor
        ^~~
        var

*/
/* stdout = 

*/


/// Given a positive integer, obtain its roman numeral equivalent as a string,
/// and return it in lowercase.
/// Restrictions: 1 <= num <= 1000
/// Examples:
/// >>> int_to_mini_roman(number: 19)
/// "xix"
/// >>> int_to_mini_roman(number: 152)
/// "clii"
/// >>> int_to_mini_roman(number: 426)
/// "cdxxvi"
func int_to_mini_roman(number: Int) -> String {
    let roman_numerals = ["i", "v", "x", "l", "c", "d", "m"]
    let roman_values = [1, 5, 10, 50, 100, 500, 1000]
    var result = ""
    var remainder = number
    var index = roman_values.count - 1
    while remainder > 0 {
        let divisor = roman_values[index]
        let quotient = remainder / divisor
        remainder = remainder % divisor
        if quotient == 4 {
            result += roman_numerals[index] + roman_numerals[index + 1]
        } else if quotient == 9 {
            result += roman_numerals[index] + roman_numerals[index + 2]
        } else {
            if quotient >= 5 {
                result += roman_numerals[index + 1]
                quotient -= 5
            }
            for _ in 0..<quotient {
                result += roman_numerals[index]
            }
        }
        index -= 2
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
            
assert(int_to_mini_roman(number: 19) == "xix")
assert(int_to_mini_roman(number: 152) == "clii")
assert(int_to_mini_roman(number: 251) == "ccli")
assert(int_to_mini_roman(number: 426) == "cdxxvi")
assert(int_to_mini_roman(number: 500) == "d")
assert(int_to_mini_roman(number: 1) == "i")
assert(int_to_mini_roman(number: 4) == "iv")
assert(int_to_mini_roman(number: 43) == "xliii")
assert(int_to_mini_roman(number: 90) == "xc")
assert(int_to_mini_roman(number: 94) == "xciv")
assert(int_to_mini_roman(number: 532) == "dxxxii")
assert(int_to_mini_roman(number: 900) == "cm")
assert(int_to_mini_roman(number: 994) == "cmxciv")
assert(int_to_mini_roman(number: 1000) == "m")



// ----------- problem HumanEval_123_get_odd_collatz, completion 116 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpuzuxmb3e.swift:19:15: error: left side of mutating operator isn't mutable: 'n' is a 'let' constant
            n /= 2
            ~ ^
/tmp/tmpuzuxmb3e.swift:21:13: error: cannot assign to value: 'n' is a 'let' constant
            n = 3 * n + 1
            ^

*/
/* stdout = 

*/


/// Given a positive integer n, return a sorted array that has the odd numbers in collatz sequence.
/// The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
/// as follows: start with any positive integer n. Then each term is obtained from the 
/// previous term as follows: if the previous term is even, the next term is one half of 
/// the previous term. If the previous term is odd, the next term is 3 times the previous
/// term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
/// Note: 
/// 1. Collatz(1) is [1].
/// 2. returned array sorted in increasing order.
/// For example:
/// get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
/// >>> get_odd_collatz(n: 5)
/// [1, 5]
func get_odd_collatz(n: Int) -> [Int] {
    var collatz = [n]
    while n != 1 {
        if n % 2 == 0 {
            n /= 2
        } else {
            n = 3 * n + 1
        }
        collatz.append(n)
    }
    return collatz.filter { $0 % 2 != 0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_odd_collatz(n: 14) == [1, 5, 7, 11, 13, 17])
assert(get_odd_collatz(n: 5) == [1, 5])
assert(get_odd_collatz(n: 12) == [1, 3, 5])
assert(get_odd_collatz(n: 1) == [1])



// ----------- problem HumanEval_123_get_odd_collatz, completion 36 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpuzuxmb3e.swift:19:15: error: left side of mutating operator isn't mutable: 'n' is a 'let' constant
            n /= 2
            ~ ^
/tmp/tmpuzuxmb3e.swift:21:13: error: cannot assign to value: 'n' is a 'let' constant
            n = 3 * n + 1
            ^

*/
/* stdout = 

*/


/// Given a positive integer n, return a sorted array that has the odd numbers in collatz sequence.
/// The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
/// as follows: start with any positive integer n. Then each term is obtained from the 
/// previous term as follows: if the previous term is even, the next term is one half of 
/// the previous term. If the previous term is odd, the next term is 3 times the previous
/// term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
/// Note: 
/// 1. Collatz(1) is [1].
/// 2. returned array sorted in increasing order.
/// For example:
/// get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
/// >>> get_odd_collatz(n: 5)
/// [1, 5]
func get_odd_collatz(n: Int) -> [Int] {
    var collatz = [n]
    while n != 1 {
        if n % 2 == 0 {
            n /= 2
        } else {
            n = 3 * n + 1
        }
        collatz.append(n)
    }
    return collatz.filter { $0 % 2 != 0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_odd_collatz(n: 14) == [1, 5, 7, 11, 13, 17])
assert(get_odd_collatz(n: 5) == [1, 5])
assert(get_odd_collatz(n: 12) == [1, 3, 5])
assert(get_odd_collatz(n: 1) == [1])



// ----------- problem HumanEval_49_modp, completion 32 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpb3ca_8yl.swift:22:9: error: cannot assign to value: 'n' is a 'let' constant
        n = (n * n) % p
        ^

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var result = 1
    var power = n
    var mod = p
    while power > 0 {
        if power % 2 == 1 {
            result = (result * n) % p
        }
        power = power / 2
        n = (n * n) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_156_int_to_mini_roman, completion 199 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpfb9hrx9o.swift:26:23: error: left side of mutating operator isn't mutable: 'digit' is a 'let' constant
                digit -= 5
                ~~~~~ ^
/tmp/tmpfb9hrx9o.swift:18:9: note: change 'let' to 'var' to make it mutable
        let digit = number % 10
        ^~~
        var

*/
/* stdout = 

*/


/// Given a positive integer, obtain its roman numeral equivalent as a string,
/// and return it in lowercase.
/// Restrictions: 1 <= num <= 1000
/// Examples:
/// >>> int_to_mini_roman(number: 19)
/// "xix"
/// >>> int_to_mini_roman(number: 152)
/// "clii"
/// >>> int_to_mini_roman(number: 426)
/// "cdxxvi"
func int_to_mini_roman(number: Int) -> String {
    let roman_numerals = ["i", "v", "x", "l", "c", "d", "m"]
    var roman_numeral_string = ""
    var number = number
    var index = 0
    while number > 0 {
        let digit = number % 10
        if digit == 9 {
            roman_numeral_string = roman_numerals[index] + roman_numerals[index + 2] + roman_numeral_string
        } else if digit == 4 {
            roman_numeral_string = roman_numerals[index] + roman_numerals[index + 1] + roman_numeral_string
        } else {
            if digit >= 5 {
                roman_numeral_string = roman_numerals[index + 1] + roman_numeral_string
                digit -= 5
            }
            for _ in 0..<digit {
                roman_numeral_string = roman_numerals[index] + roman_numeral_string
            }
        }
        number /= 10
        index += 2
    }
    return roman_numeral_string
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(int_to_mini_roman(number: 19) == "xix")
assert(int_to_mini_roman(number: 152) == "clii")
assert(int_to_mini_roman(number: 251) == "ccli")
assert(int_to_mini_roman(number: 426) == "cdxxvi")
assert(int_to_mini_roman(number: 500) == "d")
assert(int_to_mini_roman(number: 1) == "i")
assert(int_to_mini_roman(number: 4) == "iv")
assert(int_to_mini_roman(number: 43) == "xliii")
assert(int_to_mini_roman(number: 90) == "xc")
assert(int_to_mini_roman(number: 94) == "xciv")
assert(int_to_mini_roman(number: 532) == "dxxxii")
assert(int_to_mini_roman(number: 900) == "cm")
assert(int_to_mini_roman(number: 994) == "cmxciv")
assert(int_to_mini_roman(number: 1000) == "m")



// ----------- problem HumanEval_129_minPath, completion 19 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp5pkj9pwr.swift:37:34: error: cannot find 'dx' in scope
                    let ni = i + dx[d]
                                 ^~
/tmp/tmp5pkj9pwr.swift:38:34: error: cannot find 'dy' in scope
                    let nj = j + dy[d]
                                 ^~
/tmp/tmp5pkj9pwr.swift:53:29: error: cannot find 'dx' in scope
                    i = i + dx[0]
                            ^~
/tmp/tmp5pkj9pwr.swift:53:21: error: cannot assign to value: 'i' is a 'let' constant
                    i = i + dx[0]
                    ^
/tmp/tmp5pkj9pwr.swift:54:29: error: cannot find 'dy' in scope
                    j = j + dy[0]
                            ^~
/tmp/tmp5pkj9pwr.swift:54:21: error: cannot assign to value: 'j' is a 'let' constant
                    j = j + dy[0]
                    ^

*/
/* stdout = 

*/


/// Given a grid with N rows and N columns (N >= 2) and a positive integer k, 
/// each cell of the grid contains a value. Every integer in the range [1, N * N]
/// inclusive appears exactly once on the cells of the grid.
/// You have to find the minimum path of length k in the grid. You can start
/// from any cell, and in each step you can move to any of the neighbor cells,
/// in other words, you can go to cells which share an edge with you current
/// cell.
/// Please note that a path of length k means visiting exactly k cells (not
/// necessarily distinct).
/// You CANNOT go off the grid.
/// A path A (of length k) is considered less than a path B (of length k) if
/// after making the ordered arrays of the values on the cells that A and B go
/// through (let's call them lst_A and lst_B), lst_A is lexicographically less
/// than lst_B, in other words, there exist an integer index i (1 <= i <= k)
/// such that lst_A[i] < lst_B[i] and for any j (1 <= j < i) we have
/// lst_A[j] = lst_B[j].
/// It is guaranteed that the answer is unique.
/// Return an ordered array of the values on the cells that the minimum path go through.
/// Examples:    
/// >>> minPath(grid: [[1, 2, 3], [4, 5, 6], [7, 8, 9]], k: 3)
/// [1, 2, 1]
/// >>> minPath(grid: [[5, 9, 3], [4, 1, 6], [7, 8, 2]], k: 1)
/// [1]
func minPath(grid: [[Int]], k: Int) -> [Int] {
    let n = grid.count
    var dp = Array(repeating: Array(repeating: Array(repeating: Int.max, count: n), count: n), count: k + 1)
    for i in 0..<n {
        for j in 0..<n {
            dp[1][i][j] = grid[i][j]
        }
    }
    for l in 2...k {
        for i in 0..<n {
            for j in 0..<n {
                for d in 0..<4 {
                    let ni = i + dx[d]
                    let nj = j + dy[d]
                    if ni >= 0 && ni < n && nj >= 0 && nj < n {
                        dp[l][i][j] = min(dp[l][i][j], dp[l - 1][ni][nj])
                    }
                }
            }
        }
    }
    var ans = Array(repeating: Int.max, count: k)
    for i in 0..<n {
        for j in 0..<n {
            if dp[k][i][j] < ans[k - 1] {
                ans[k - 1] = dp[k][i][j]
                for l in (1...k - 1).reversed() {
                    ans[l - 1] = dp[l][i][j]
                    i = i + dx[0]
                    j = j + dy[0]
                }
            }
        }
    }
    return ans
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(minPath(grid: [[1, 2, 3], [4, 5, 6], [7, 8, 9]], k: 3) == [1, 2, 1])
assert(minPath(grid: [[5, 9, 3], [4, 1, 6], [7, 8, 2]], k: 1) == [1])
assert(minPath(grid: [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]], k: 4) == [1, 2, 1, 2])
assert(minPath(grid: [[6, 4, 13, 10], [5, 7, 12, 1], [3, 16, 11, 15], [8, 14, 9, 2]], k: 7) == [1, 10, 1, 10, 1, 10, 1])
assert(minPath(grid: [[8, 14, 9, 2], [6, 4, 13, 15], [5, 7, 1, 12], [3, 10, 11, 16]], k: 5) == [1, 7, 1, 7, 1])
assert(minPath(grid: [[11, 8, 7, 2], [5, 16, 14, 4], [9, 3, 15, 6], [12, 13, 10, 1]], k: 9) == [1, 6, 1, 6, 1, 6, 1, 6, 1])
assert(minPath(grid: [[12, 13, 10, 1], [9, 3, 15, 6], [5, 16, 14, 4], [11, 8, 7, 2]], k: 12) == [1, 6, 1, 6, 1, 6, 1, 6, 1, 6, 1, 6])
assert(minPath(grid: [[2, 7, 4], [3, 1, 5], [6, 8, 9]], k: 8) == [1, 3, 1, 3, 1, 3, 1, 3])
assert(minPath(grid: [[6, 1, 5], [3, 8, 9], [2, 7, 4]], k: 8) == [1, 5, 1, 5, 1, 5, 1, 5])
assert(minPath(grid: [[1, 2], [3, 4]], k: 10) == [1, 2, 1, 2, 1, 2, 1, 2, 1, 2])
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])



// ----------- problem HumanEval_123_get_odd_collatz, completion 170 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpuzuxmb3e.swift:19:15: error: left side of mutating operator isn't mutable: 'n' is a 'let' constant
            n /= 2
            ~ ^
/tmp/tmpuzuxmb3e.swift:21:13: error: cannot assign to value: 'n' is a 'let' constant
            n = 3 * n + 1
            ^

*/
/* stdout = 

*/


/// Given a positive integer n, return a sorted array that has the odd numbers in collatz sequence.
/// The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
/// as follows: start with any positive integer n. Then each term is obtained from the 
/// previous term as follows: if the previous term is even, the next term is one half of 
/// the previous term. If the previous term is odd, the next term is 3 times the previous
/// term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
/// Note: 
/// 1. Collatz(1) is [1].
/// 2. returned array sorted in increasing order.
/// For example:
/// get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
/// >>> get_odd_collatz(n: 5)
/// [1, 5]
func get_odd_collatz(n: Int) -> [Int] {
    var collatz = [n]
    while n != 1 {
        if n % 2 == 0 {
            n /= 2
        } else {
            n = 3 * n + 1
        }
        collatz.append(n)
    }
    return collatz.filter { $0 % 2 != 0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_odd_collatz(n: 14) == [1, 5, 7, 11, 13, 17])
assert(get_odd_collatz(n: 5) == [1, 5])
assert(get_odd_collatz(n: 12) == [1, 3, 5])
assert(get_odd_collatz(n: 1) == [1])



