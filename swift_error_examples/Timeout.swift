// ----------- problem HumanEval_100_make_a_pile, completion 195 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 30 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 43 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 112 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_115_max_fill, completion 132 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    while true {
        var max = 0
        var max_index = 0
        for (index, row) in grid.enumerated() {
            let sum = row.reduce(0, +)
            if sum > max {
                max = sum
                max_index = index
            }
        }
        if max == 0 {
            break
        }
        count += 1
        for i in 0..<grid[max_index].count {
            if grid[max_index][i] == 1 {
                grid[max_index][i] = 0
            } else {
                break
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



// ----------- problem HumanEval_49_modp, completion 156 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 107 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 189 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    var p = p
    var result = 1
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
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



// ----------- problem HumanEval_100_make_a_pile, completion 23 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 3 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 25 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 1 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var next = n
    while next > 0 {
        result.append(next)
        next = next % 2 == 0 ? next + 1 : next + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 89 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 156 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 173 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_1_separate_paren_groups, completion 114 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    var result: [String] = []
    var paren_string = paren_string
    while paren_string.count > 0 {
        let next_paren_group = paren_string.prefix(while: { $0 != " " })
        paren_string = String(paren_string.dropFirst(next_paren_group.count))
        paren_string = paren_string.prefix(while: { $0 == " " }).description + String(paren_string.dropFirst(paren_string.prefix(while: { $0 == " " }).count))
        result.append(next_paren_group.description)
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



// ----------- problem HumanEval_83_starts_one_ends, completion 48 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, return the count of the numbers of n-digit
/// positive integers that start or end with 1.
func starts_one_ends(n: Int) -> Int {
    var count = 0
    for i in 1...n {
        count += starts_one_ends(n: i)
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
            
assert(starts_one_ends(n: 1) == 1)
assert(starts_one_ends(n: 2) == 18)
assert(starts_one_ends(n: 3) == 180)
assert(starts_one_ends(n: 4) == 1800)
assert(starts_one_ends(n: 5) == 18000)



// ----------- problem HumanEval_49_modp, completion 82 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 174 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var level = n
    while level > 0 {
        result.append(level)
        level = (level % 2 == 0) ? level + 1 : level + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 195 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 164 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 67 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 196 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var pile = [Int]()
    var current = n
    while current > 0 {
        pile.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
    }
    return pile
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 11 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 113 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 120 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 163 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = (i % 2 == 0) ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 91 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var count = n
    while count > 0 {
        result.append(count)
        if count % 2 == 0 {
            count += 1
        } else {
            count += 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 13 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 105 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 114 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 168 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_115_max_fill, completion 9 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    while true {
        var filled = false
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 {
                    filled = true
                    grid[i][j] = 0
                    count += 1
                }
            }
        }
        if !filled {
            break
        }
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 0 {
                    grid[i][j] = 1
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



// ----------- problem HumanEval_100_make_a_pile, completion 89 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var count = n
    while count > 0 {
        result.append(count)
        if count % 2 == 0 {
            count += 1
        } else {
            count += 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 62 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_17_parse_music, completion 123 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Input to this function is a string representing musical notes in a special ASCII format.
/// Your task is to parse this string and return array of integers corresponding to how many beats does each
/// not last.
/// Here is a legend:
/// 'o' - whole note, lasts four beats
/// 'o|' - half note, lasts two beats
/// '.|' - quater note, lasts one beat
/// >>> parse_music(music_string: "o o| .| o| o| .| .| .| .| o o")
/// [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
func parse_music(music_string: String) -> [Int] {
    var result = [Int]()
    var music_string = music_string
    while music_string.count > 0 {
        if music_string.hasPrefix("o") {
            result.append(4)
            music_string.removeFirst()
        } else if music_string.hasPrefix("o|") {
            result.append(2)
            music_string.removeFirst(2)
        } else if music_string.hasPrefix(".|") {
            result.append(1)
            music_string.removeFirst(2)
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
            
assert(parse_music(music_string: "") == [] as [Int])
assert(parse_music(music_string: "o o o o") == [4, 4, 4, 4])
assert(parse_music(music_string: ".| .| .| .|") == [1, 1, 1, 1])
assert(parse_music(music_string: "o| o| .| .| o o o o") == [2, 2, 1, 1, 4, 4, 4, 4])
assert(parse_music(music_string: "o| .| o| .| o o| o o|") == [2, 1, 2, 1, 4, 2, 4, 2])



// ----------- problem HumanEval_49_modp, completion 186 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 171 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 131 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 103 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 16 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 98 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_109_move_one_ball, completion 60 ------------
// status = Timeout
// exit_code = -1
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
    var i = 0
    while i < arr.count - 1 {
        if arr[i] > arr[i + 1] {
            arr.remove(at: i)
            arr.insert(arr[arr.count - 1], at: 0)
            i = 0
        } else {
            i += 1
        }
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



// ----------- problem HumanEval_83_starts_one_ends, completion 66 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, return the count of the numbers of n-digit
/// positive integers that start or end with 1.
func starts_one_ends(n: Int) -> Int {
    var count = 0
    for i in 1...n {
        count += starts_one_ends(n: i)
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
            
assert(starts_one_ends(n: 1) == 1)
assert(starts_one_ends(n: 2) == 18)
assert(starts_one_ends(n: 3) == 180)
assert(starts_one_ends(n: 4) == 1800)
assert(starts_one_ends(n: 5) == 18000)



// ----------- problem HumanEval_100_make_a_pile, completion 87 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 31 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var stones = [Int]()
    var current = n
    while current > 0 {
        stones.append(current)
        if current % 2 == 0 {
            current += 1
        } else {
            current += 2
        }
    }
    return stones
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 70 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 48 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_76_is_simple_power, completion 90 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Your task is to write a function that returns true if a number x is a simple
/// power of n and false in other cases.
/// x is a simple power of n if n**int=x
/// For example:
/// >>> is_simple_power(x: 1, n: 4)
/// true
/// >>> is_simple_power(x: 2, n: 2)
/// true
/// >>> is_simple_power(x: 8, n: 2)
/// true
/// >>> is_simple_power(x: 3, n: 2)
/// false
/// >>> is_simple_power(x: 3, n: 1)
/// false
/// >>> is_simple_power(x: 5, n: 3)
/// false
func is_simple_power(x: Int, n: Int) -> Bool {
    if x < 0 || n < 0 {
        return false
    }
    if x == 0 && n == 0 {
        return false
    }
    if x == 0 && n != 0 {
        return true
    }
    if x == 1 && n == 0 {
        return true
    }
    if x == 1 && n != 0 {
        return false
    }
    if n == 0 {
        return false
    }
    if n == 1 {
        return true
    }
    if x == n {
        return true
    }
    var result = 1
    var i = 1
    while result <= x {
        result = n * n
        i += 1
    }
    if result == x {
        return true
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
            
assert(is_simple_power(x: 16, n: 2) == true)
assert(is_simple_power(x: 143214, n: 16) == false)
assert(is_simple_power(x: 4, n: 2) == true)
assert(is_simple_power(x: 9, n: 3) == true)
assert(is_simple_power(x: 16, n: 4) == true)
assert(is_simple_power(x: 24, n: 2) == false)
assert(is_simple_power(x: 128, n: 4) == false)
assert(is_simple_power(x: 12, n: 6) == false)
assert(is_simple_power(x: 1, n: 1) == true)
assert(is_simple_power(x: 1, n: 12) == true)



// ----------- problem HumanEval_100_make_a_pile, completion 52 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 138 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_83_starts_one_ends, completion 107 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, return the count of the numbers of n-digit
/// positive integers that start or end with 1.
func starts_one_ends(n: Int) -> Int {
    var count = 0
    for i in 1...n {
        count += starts_one_ends(n: i)
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
            
assert(starts_one_ends(n: 1) == 1)
assert(starts_one_ends(n: 2) == 18)
assert(starts_one_ends(n: 3) == 180)
assert(starts_one_ends(n: 4) == 1800)
assert(starts_one_ends(n: 5) == 18000)



// ----------- problem HumanEval_100_make_a_pile, completion 190 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 183 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 81 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 51 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = (current % 2 == 0) ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 151 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 105 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 133 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    var p = p
    var result = 1
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
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



// ----------- problem HumanEval_49_modp, completion 138 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 172 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_83_starts_one_ends, completion 32 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, return the count of the numbers of n-digit
/// positive integers that start or end with 1.
func starts_one_ends(n: Int) -> Int {
    var count = 0
    for i in 1...n {
        count += starts_one_ends(n: i)
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
            
assert(starts_one_ends(n: 1) == 1)
assert(starts_one_ends(n: 2) == 18)
assert(starts_one_ends(n: 3) == 180)
assert(starts_one_ends(n: 4) == 1800)
assert(starts_one_ends(n: 5) == 18000)



// ----------- problem HumanEval_49_modp, completion 61 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 152 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 55 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 169 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 15 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    var p = p
    var result = 1
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
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



// ----------- problem HumanEval_100_make_a_pile, completion 189 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_83_starts_one_ends, completion 28 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, return the count of the numbers of n-digit
/// positive integers that start or end with 1.
func starts_one_ends(n: Int) -> Int {
    var count = 0
    for i in 1...n {
        count += starts_one_ends(n: i)
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
            
assert(starts_one_ends(n: 1) == 1)
assert(starts_one_ends(n: 2) == 18)
assert(starts_one_ends(n: 3) == 180)
assert(starts_one_ends(n: 4) == 1800)
assert(starts_one_ends(n: 5) == 18000)



// ----------- problem HumanEval_100_make_a_pile, completion 137 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 129 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 55 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 97 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 161 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var number = n
    while number > 0 {
        result.append(number)
        if number % 2 == 0 {
            number += 1
        } else {
            number += 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 72 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var next = n
    while next > 0 {
        result.append(next)
        next = next % 2 == 0 ? next + 1 : next + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 122 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 48 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_76_is_simple_power, completion 121 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Your task is to write a function that returns true if a number x is a simple
/// power of n and false in other cases.
/// x is a simple power of n if n**int=x
/// For example:
/// >>> is_simple_power(x: 1, n: 4)
/// true
/// >>> is_simple_power(x: 2, n: 2)
/// true
/// >>> is_simple_power(x: 8, n: 2)
/// true
/// >>> is_simple_power(x: 3, n: 2)
/// false
/// >>> is_simple_power(x: 3, n: 1)
/// false
/// >>> is_simple_power(x: 5, n: 3)
/// false
func is_simple_power(x: Int, n: Int) -> Bool {
    if n == 1 {
        return x == 1
    }
    var result = 1
    var i = 1
    while result <= x {
        result = n * n
        i += 1
    }
    return result == x
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_simple_power(x: 16, n: 2) == true)
assert(is_simple_power(x: 143214, n: 16) == false)
assert(is_simple_power(x: 4, n: 2) == true)
assert(is_simple_power(x: 9, n: 3) == true)
assert(is_simple_power(x: 16, n: 4) == true)
assert(is_simple_power(x: 24, n: 2) == false)
assert(is_simple_power(x: 128, n: 4) == false)
assert(is_simple_power(x: 12, n: 6) == false)
assert(is_simple_power(x: 1, n: 1) == true)
assert(is_simple_power(x: 1, n: 12) == true)



// ----------- problem HumanEval_49_modp, completion 74 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 86 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    var p = p
    var result = 1
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
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



// ----------- problem HumanEval_49_modp, completion 0 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 188 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 149 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_17_parse_music, completion 66 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Input to this function is a string representing musical notes in a special ASCII format.
/// Your task is to parse this string and return array of integers corresponding to how many beats does each
/// not last.
/// Here is a legend:
/// 'o' - whole note, lasts four beats
/// 'o|' - half note, lasts two beats
/// '.|' - quater note, lasts one beat
/// >>> parse_music(music_string: "o o| .| o| o| .| .| .| .| o o")
/// [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
func parse_music(music_string: String) -> [Int] {
    var beats = [Int]()
    var music_string = music_string
    while music_string.count > 0 {
        if music_string.hasPrefix("o") {
            beats.append(4)
            music_string.removeFirst()
        } else if music_string.hasPrefix("o|") {
            beats.append(2)
            music_string.removeFirst(2)
        } else if music_string.hasPrefix(".|") {
            beats.append(1)
            music_string.removeFirst(2)
        }
    }
    return beats
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(parse_music(music_string: "") == [] as [Int])
assert(parse_music(music_string: "o o o o") == [4, 4, 4, 4])
assert(parse_music(music_string: ".| .| .| .|") == [1, 1, 1, 1])
assert(parse_music(music_string: "o| o| .| .| o o o o") == [2, 2, 1, 1, 4, 4, 4, 4])
assert(parse_music(music_string: "o| .| o| .| o o| o o|") == [2, 1, 2, 1, 4, 2, 4, 2])



// ----------- problem HumanEval_49_modp, completion 69 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    var p = p
    var result = 1
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
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



// ----------- problem HumanEval_100_make_a_pile, completion 128 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 4 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 19 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 80 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 57 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 102 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_115_max_fill, completion 1 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    while true {
        var isEmpty = true
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 {
                    isEmpty = false
                    grid[i][j] = 0
                    count += 1
                }
            }
        }
        if isEmpty {
            break
        }
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 0 {
                    grid[i][j] = 1
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



// ----------- problem HumanEval_100_make_a_pile, completion 115 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 117 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 101 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n == 1 {
        return n % p
    }
    if n % 2 == 0 {
        return (modp(n: n / 2, p: p) * modp(n: n / 2, p: p)) % p
    }
    return (modp(n: n - 1, p: p) * modp(n: n, p: p)) % p
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_100_make_a_pile, completion 44 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var num = n
    while num > 0 {
        result.append(num)
        num = num % 2 == 0 ? num + 1 : num + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_115_max_fill, completion 91 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    while !grid.isEmpty {
        var row = grid.removeFirst()
        while !row.isEmpty {
            let max = row.max()!
            if max > capacity {
                row = row.map { $0 - capacity }
            } else {
                row = row.map { $0 - max }
            }
            count += 1
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



// ----------- problem HumanEval_100_make_a_pile, completion 66 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 158 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 7 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 91 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 36 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 38 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 0 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_109_move_one_ball, completion 71 ------------
// status = Timeout
// exit_code = -1
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
    if arr.count == 0 {
        return true
    }
    var i = 0
    while i < arr.count - 1 {
        if arr[i] > arr[i + 1] {
            arr.insert(arr.remove(at: i), at: 0)
            i = 0
        } else {
            i += 1
        }
    }
    return arr == arr.sorted()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_100_make_a_pile, completion 199 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 123 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 27 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 35 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 106 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var level = n
    while level > 0 {
        result.append(level)
        level = level.isMultiple(of: 2) ? level + 1 : level + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 104 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 5 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var num = n
    while num > 0 {
        result.append(num)
        num = num % 2 == 0 ? num + 1 : num + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 140 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    var p = p
    var result = 1
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
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



// ----------- problem HumanEval_49_modp, completion 193 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 167 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_17_parse_music, completion 61 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Input to this function is a string representing musical notes in a special ASCII format.
/// Your task is to parse this string and return array of integers corresponding to how many beats does each
/// not last.
/// Here is a legend:
/// 'o' - whole note, lasts four beats
/// 'o|' - half note, lasts two beats
/// '.|' - quater note, lasts one beat
/// >>> parse_music(music_string: "o o| .| o| o| .| .| .| .| o o")
/// [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
func parse_music(music_string: String) -> [Int] {
    var result = [Int]()
    var music_string = music_string
    while music_string.count > 0 {
        if music_string.hasPrefix("o") {
            result.append(4)
            music_string.removeFirst()
        } else if music_string.hasPrefix("o|") {
            result.append(2)
            music_string.removeFirst(2)
        } else if music_string.hasPrefix(".|") {
            result.append(1)
            music_string.removeFirst(2)
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
            
assert(parse_music(music_string: "") == [] as [Int])
assert(parse_music(music_string: "o o o o") == [4, 4, 4, 4])
assert(parse_music(music_string: ".| .| .| .|") == [1, 1, 1, 1])
assert(parse_music(music_string: "o| o| .| .| o o o o") == [2, 2, 1, 1, 4, 4, 4, 4])
assert(parse_music(music_string: "o| .| o| .| o o| o o|") == [2, 1, 2, 1, 4, 2, 4, 2])



// ----------- problem HumanEval_100_make_a_pile, completion 119 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var next = n
    while next > 0 {
        result.append(next)
        next = next % 2 == 0 ? next + 1 : next + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_83_starts_one_ends, completion 106 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, return the count of the numbers of n-digit
/// positive integers that start or end with 1.
func starts_one_ends(n: Int) -> Int {
    var count = 0
    for i in 1...n {
        count += starts_one_ends(n: i)
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
            
assert(starts_one_ends(n: 1) == 1)
assert(starts_one_ends(n: 2) == 18)
assert(starts_one_ends(n: 3) == 180)
assert(starts_one_ends(n: 4) == 1800)
assert(starts_one_ends(n: 5) == 18000)



// ----------- problem HumanEval_100_make_a_pile, completion 47 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_115_max_fill, completion 197 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    while true {
        var filled = false
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 {
                    filled = true
                    grid[i][j] = 0
                    if i > 0 {
                        grid[i - 1][j] = min(grid[i - 1][j] + 1, capacity)
                    }
                    if i < grid.count - 1 {
                        grid[i + 1][j] = min(grid[i + 1][j] + 1, capacity)
                    }
                    if j > 0 {
                        grid[i][j - 1] = min(grid[i][j - 1] + 1, capacity)
                    }
                    if j < grid[i].count - 1 {
                        grid[i][j + 1] = min(grid[i][j + 1] + 1, capacity)
                    }
                }
            }
        }
        if !filled {
            break
        }
        count += 1
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



// ----------- problem HumanEval_100_make_a_pile, completion 28 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current.isMultiple(of: 2) ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_115_max_fill, completion 148 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    while true {
        var filled = false
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 {
                    filled = true
                    grid[i][j] = 0
                    if i > 0 {
                        grid[i - 1][j] = min(grid[i - 1][j] + 1, capacity)
                    }
                    if i < grid.count - 1 {
                        grid[i + 1][j] = min(grid[i + 1][j] + 1, capacity)
                    }
                    if j > 0 {
                        grid[i][j - 1] = min(grid[i][j - 1] + 1, capacity)
                    }
                    if j < grid[i].count - 1 {
                        grid[i][j + 1] = min(grid[i][j + 1] + 1, capacity)
                    }
                }
            }
        }
        if !filled {
            break
        }
        count += 1
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



// ----------- problem HumanEval_100_make_a_pile, completion 177 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 171 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_115_max_fill, completion 178 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    while true {
        var filled = false
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 {
                    filled = true
                    grid[i][j] = 0
                    if i > 0 {
                        grid[i - 1][j] = 1
                    }
                    if i < grid.count - 1 {
                        grid[i + 1][j] = 1
                    }
                    if j > 0 {
                        grid[i][j - 1] = 1
                    }
                    if j < grid[i].count - 1 {
                        grid[i][j + 1] = 1
                    }
                }
            }
        }
        if filled {
            count += 1
        } else {
            break
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



// ----------- problem HumanEval_100_make_a_pile, completion 95 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 101 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 84 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 65 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 8 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 77 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 178 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 38 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_115_max_fill, completion 83 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    var count = 0
    var grid = grid
    var buckets = [Int](repeating: 0, count: grid[0].count)
    while true {
        var filled = false
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 {
                    filled = true
                    if buckets[j] < capacity {
                        buckets[j] += 1
                        grid[i][j] = 0
                    }
                }
            }
        }
        if !filled {
            break
        }
        count += 1
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



// ----------- problem HumanEval_49_modp, completion 98 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    var p = p
    var result = 1
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
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



// ----------- problem HumanEval_115_max_fill, completion 16 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    while true {
        var filled = false
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 {
                    filled = true
                    grid[i][j] = 0
                    if i > 0 {
                        grid[i - 1][j] = min(grid[i - 1][j] + 1, capacity)
                    }
                    if i < grid.count - 1 {
                        grid[i + 1][j] = min(grid[i + 1][j] + 1, capacity)
                    }
                    if j > 0 {
                        grid[i][j - 1] = min(grid[i][j - 1] + 1, capacity)
                    }
                    if j < grid[i].count - 1 {
                        grid[i][j + 1] = min(grid[i][j + 1] + 1, capacity)
                    }
                }
            }
        }
        if !filled {
            break
        }
        count += 1
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



// ----------- problem HumanEval_49_modp, completion 77 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 192 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_83_starts_one_ends, completion 2 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, return the count of the numbers of n-digit
/// positive integers that start or end with 1.
func starts_one_ends(n: Int) -> Int {
    var count = 0
    for i in 1...n {
        count += starts_one_ends(n: i)
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
            
assert(starts_one_ends(n: 1) == 1)
assert(starts_one_ends(n: 2) == 18)
assert(starts_one_ends(n: 3) == 180)
assert(starts_one_ends(n: 4) == 1800)
assert(starts_one_ends(n: 5) == 18000)



// ----------- problem HumanEval_154_cycpattern_check, completion 7 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if a.count < b.count {
        return false
    }
    let a = Array(a)
    let b = Array(b)
    var i = 0
    while i < a.count {
        let j = 0
        while j < b.count {
            if a[i] == b[j] {
                let k = 0
                while k < b.count {
                    if a[(i + k) % a.count] != b[(j + k) % b.count] {
                        break
                    }
                    if k == b.count - 1 {
                        return true
                    }
                }
            }
        }
        i += 1
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



// ----------- problem HumanEval_100_make_a_pile, completion 166 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 15 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 37 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_115_max_fill, completion 137 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    while true {
        var filled = false
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 {
                    filled = true
                    grid[i][j] = 0
                    if i > 0 {
                        grid[i - 1][j] = min(grid[i - 1][j] + 1, capacity)
                    }
                    if i < grid.count - 1 {
                        grid[i + 1][j] = min(grid[i + 1][j] + 1, capacity)
                    }
                    if j > 0 {
                        grid[i][j - 1] = min(grid[i][j - 1] + 1, capacity)
                    }
                    if j < grid[i].count - 1 {
                        grid[i][j + 1] = min(grid[i][j + 1] + 1, capacity)
                    }
                }
            }
        }
        if !filled {
            break
        }
        count += 1
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



// ----------- problem HumanEval_100_make_a_pile, completion 71 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_17_parse_music, completion 140 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Input to this function is a string representing musical notes in a special ASCII format.
/// Your task is to parse this string and return array of integers corresponding to how many beats does each
/// not last.
/// Here is a legend:
/// 'o' - whole note, lasts four beats
/// 'o|' - half note, lasts two beats
/// '.|' - quater note, lasts one beat
/// >>> parse_music(music_string: "o o| .| o| o| .| .| .| .| o o")
/// [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
func parse_music(music_string: String) -> [Int] {
    var result = [Int]()
    var music_string = music_string
    while music_string.count > 0 {
        if music_string.hasPrefix("o") {
            result.append(4)
            music_string.removeFirst()
        } else if music_string.hasPrefix("o|") {
            result.append(2)
            music_string.removeFirst(2)
        } else if music_string.hasPrefix(".|") {
            result.append(1)
            music_string.removeFirst(2)
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
            
assert(parse_music(music_string: "") == [] as [Int])
assert(parse_music(music_string: "o o o o") == [4, 4, 4, 4])
assert(parse_music(music_string: ".| .| .| .|") == [1, 1, 1, 1])
assert(parse_music(music_string: "o| o| .| .| o o o o") == [2, 2, 1, 1, 4, 4, 4, 4])
assert(parse_music(music_string: "o| .| o| .| o o| o o|") == [2, 1, 2, 1, 4, 2, 4, 2])



// ----------- problem HumanEval_100_make_a_pile, completion 63 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [n]
    var current = n
    while current > 1 {
        if current % 2 == 0 {
            current += 1
        } else {
            current += 2
        }
        result.append(current)
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 182 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 82 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 166 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    } else if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 56 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var n = n
    while n > 0 {
        result.append(n)
        n = n % 2 == 0 ? n + 1 : n + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 27 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 183 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 125 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i.isMultiple(of: 2) ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_83_starts_one_ends, completion 34 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, return the count of the numbers of n-digit
/// positive integers that start or end with 1.
func starts_one_ends(n: Int) -> Int {
    var count = 0
    for i in 1...n {
        count += starts_one_ends(n: i)
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
            
assert(starts_one_ends(n: 1) == 1)
assert(starts_one_ends(n: 2) == 18)
assert(starts_one_ends(n: 3) == 180)
assert(starts_one_ends(n: 4) == 1800)
assert(starts_one_ends(n: 5) == 18000)



// ----------- problem HumanEval_100_make_a_pile, completion 99 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var level = n
    while level > 0 {
        result.append(level)
        level = level % 2 == 0 ? level + 1 : level + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 10 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 198 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 127 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var number = n
    while number > 0 {
        result.append(number)
        if number % 2 == 0 {
            number += 1
        } else {
            number += 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 94 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = (i % 2 == 0) ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 34 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 6 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 29 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 146 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 148 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 16 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_115_max_fill, completion 70 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    var grid = grid
    var row = 0
    while row < grid.count {
        var col = 0
        while col < grid[row].count {
            if grid[row][col] == 1 {
                result += 1
                var bucket = capacity
                while bucket > 0 {
                    if row > 0 && grid[row - 1][col] == 1 {
                        grid[row - 1][col] = 0
                        bucket -= 1
                    }
                    if row < grid.count - 1 && grid[row + 1][col] == 1 {
                        grid[row + 1][col] = 0
                        bucket -= 1
                    }
                    if col > 0 && grid[row][col - 1] == 1 {
                        grid[row][col - 1] = 0
                        bucket -= 1
                    }
                    if col < grid[row].count - 1 && grid[row][col + 1] == 1 {
                        grid[row][col + 1] = 0
                        bucket -= 1
                    }
                }
            }
            col += 1
        }
        row += 1
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



// ----------- problem HumanEval_100_make_a_pile, completion 160 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 192 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 97 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var num = n
    while num > 0 {
        result.append(num)
        num = num % 2 == 0 ? num + 1 : num + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 108 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 185 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 165 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 139 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 149 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 178 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 69 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 63 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_115_max_fill, completion 185 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    while true {
        var full = true
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 {
                    full = false
                    break
                }
            }
        }
        if full {
            break
        }
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 {
                    grid[i][j] = 0
                    if i - 1 >= 0 {
                        grid[i - 1][j] = min(grid[i - 1][j] + 1, capacity)
                    }
                    if i + 1 < grid.count {
                        grid[i + 1][j] = min(grid[i + 1][j] + 1, capacity)
                    }
                    if j - 1 >= 0 {
                        grid[i][j - 1] = min(grid[i][j - 1] + 1, capacity)
                    }
                    if j + 1 < grid[i].count {
                        grid[i][j + 1] = min(grid[i][j + 1] + 1, capacity)
                    }
                }
            }
        }
        count += 1
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



// ----------- problem HumanEval_100_make_a_pile, completion 49 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 109 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 88 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 154 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 116 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 133 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 14 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var stones = [Int]()
    var current = n
    while current > 0 {
        stones.append(current)
        if current % 2 == 0 {
            current += 1
        } else {
            current += 2
        }
    }
    return stones
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 143 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 40 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 50 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 42 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_115_max_fill, completion 49 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    while true {
        var allZero = true
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 {
                    allZero = false
                    grid[i][j] = 0
                    count += 1
                }
            }
        }
        if allZero {
            break
        }
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 0 {
                    grid[i][j] = 1
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



// ----------- problem HumanEval_100_make_a_pile, completion 185 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = (i % 2 == 0) ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_17_parse_music, completion 177 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Input to this function is a string representing musical notes in a special ASCII format.
/// Your task is to parse this string and return array of integers corresponding to how many beats does each
/// not last.
/// Here is a legend:
/// 'o' - whole note, lasts four beats
/// 'o|' - half note, lasts two beats
/// '.|' - quater note, lasts one beat
/// >>> parse_music(music_string: "o o| .| o| o| .| .| .| .| o o")
/// [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
func parse_music(music_string: String) -> [Int] {
    var beats: [Int] = []
    var music_string = music_string
    while music_string.count > 0 {
        if music_string.hasPrefix("o") {
            beats.append(4)
            music_string.removeFirst()
        } else if music_string.hasPrefix("o|") {
            beats.append(2)
            music_string.removeFirst(2)
        } else if music_string.hasPrefix(".|") {
            beats.append(1)
            music_string.removeFirst(2)
        }
    }
    return beats
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(parse_music(music_string: "") == [] as [Int])
assert(parse_music(music_string: "o o o o") == [4, 4, 4, 4])
assert(parse_music(music_string: ".| .| .| .|") == [1, 1, 1, 1])
assert(parse_music(music_string: "o| o| .| .| o o o o") == [2, 2, 1, 1, 4, 4, 4, 4])
assert(parse_music(music_string: "o| .| o| .| o o| o o|") == [2, 1, 2, 1, 4, 2, 4, 2])



// ----------- problem HumanEval_100_make_a_pile, completion 45 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 130 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 26 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 73 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 141 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 41 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_83_starts_one_ends, completion 116 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, return the count of the numbers of n-digit
/// positive integers that start or end with 1.
func starts_one_ends(n: Int) -> Int {
    var count = 0
    for i in 1...n {
        count += starts_one_ends(n: i)
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
            
assert(starts_one_ends(n: 1) == 1)
assert(starts_one_ends(n: 2) == 18)
assert(starts_one_ends(n: 3) == 180)
assert(starts_one_ends(n: 4) == 1800)
assert(starts_one_ends(n: 5) == 18000)



// ----------- problem HumanEval_49_modp, completion 153 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 181 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = (current % 2 == 0) ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 1 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 96 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = (current % 2 == 0) ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_115_max_fill, completion 21 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    while true {
        var found = false
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 {
                    found = true
                    grid[i][j] = 0
                    count += 1
                }
            }
        }
        if !found {
            break
        }
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 0 {
                    grid[i][j] = 1
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



// ----------- problem HumanEval_109_move_one_ball, completion 160 ------------
// status = Timeout
// exit_code = -1
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
    if arr.count == 0 {
        return true
    }
    var arr = arr
    var count = 0
    while arr.sorted() != arr {
        let last = arr.removeLast()
        arr.insert(last, at: 0)
        count += 1
    }
    return count <= arr.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_49_modp, completion 93 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 157 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 70 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 168 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current.isMultiple(of: 2) ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_83_starts_one_ends, completion 4 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, return the count of the numbers of n-digit
/// positive integers that start or end with 1.
func starts_one_ends(n: Int) -> Int {
    var count = 0
    for i in 1...n {
        count += starts_one_ends(n: i)
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
            
assert(starts_one_ends(n: 1) == 1)
assert(starts_one_ends(n: 2) == 18)
assert(starts_one_ends(n: 3) == 180)
assert(starts_one_ends(n: 4) == 1800)
assert(starts_one_ends(n: 5) == 18000)



// ----------- problem HumanEval_49_modp, completion 85 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 187 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 18 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_115_max_fill, completion 45 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    while true {
        var isEmpty = true
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 {
                    isEmpty = false
                    grid[i][j] = 0
                    count += 1
                }
            }
        }
        if isEmpty {
            break
        }
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 0 {
                    grid[i][j] = 1
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



// ----------- problem HumanEval_100_make_a_pile, completion 121 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 2 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 79 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var level = n
    while level > 0 {
        result.append(level)
        level = level % 2 == 0 ? level + 1 : level + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 80 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 73 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 148 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_109_move_one_ball, completion 126 ------------
// status = Timeout
// exit_code = -1
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
    if arr.count == 0 {
        return true
    }
    var arr = arr
    var i = 0
    while i < arr.count - 1 {
        if arr[i] > arr[i + 1] {
            arr.remove(at: i)
            arr.insert(arr[arr.count - 1], at: 0)
            i = 0
        } else {
            i += 1
        }
    }
    return arr == arr.sorted()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_100_make_a_pile, completion 145 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var res = [Int]()
    var i = n
    while i > 0 {
        res.append(i)
        if i % 2 == 0 {
            i += 1
        } else {
            i += 2
        }
    }
    return res
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 100 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 24 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_109_move_one_ball, completion 153 ------------
// status = Timeout
// exit_code = -1
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
    guard arr.count > 0 else { return true }
    var arr = arr
    var i = 0
    while i < arr.count - 1 {
        if arr[i] > arr[i + 1] {
            arr.insert(arr.removeLast(), at: 0)
            i = 0
        } else {
            i += 1
        }
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



// ----------- problem HumanEval_100_make_a_pile, completion 159 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = (i % 2 == 0) ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 146 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 76 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_83_starts_one_ends, completion 31 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, return the count of the numbers of n-digit
/// positive integers that start or end with 1.
func starts_one_ends(n: Int) -> Int {
    var count = 0
    for i in 1...n {
        count += starts_one_ends(n: i)
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
            
assert(starts_one_ends(n: 1) == 1)
assert(starts_one_ends(n: 2) == 18)
assert(starts_one_ends(n: 3) == 180)
assert(starts_one_ends(n: 4) == 1800)
assert(starts_one_ends(n: 5) == 18000)



// ----------- problem HumanEval_100_make_a_pile, completion 78 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 188 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 170 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 2 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_115_max_fill, completion 155 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    var count = 0
    var wells = grid
    var buckets = Array(repeating: capacity, count: grid[0].count)
    while true {
        var is_empty = true
        for i in 0..<wells.count {
            for j in 0..<wells[i].count {
                if wells[i][j] == 1 {
                    is_empty = false
                    if buckets[j] > 0 {
                        buckets[j] -= 1
                        wells[i][j] = 0
                    }
                }
            }
        }
        if is_empty {
            break
        }
        count += 1
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



// ----------- problem HumanEval_100_make_a_pile, completion 32 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 136 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_83_starts_one_ends, completion 71 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, return the count of the numbers of n-digit
/// positive integers that start or end with 1.
func starts_one_ends(n: Int) -> Int {
    var count = 0
    for i in 1...n {
        count += starts_one_ends(n: i)
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
            
assert(starts_one_ends(n: 1) == 1)
assert(starts_one_ends(n: 2) == 18)
assert(starts_one_ends(n: 3) == 180)
assert(starts_one_ends(n: 4) == 1800)
assert(starts_one_ends(n: 5) == 18000)



// ----------- problem HumanEval_100_make_a_pile, completion 53 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 126 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 90 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i.isMultiple(of: 2) ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 81 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 85 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 139 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 174 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 126 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 155 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 176 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 179 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 140 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 86 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 33 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 60 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 180 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 191 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var pile = [Int]()
    var i = n
    while i > 0 {
        pile.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
    }
    return pile
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_115_max_fill, completion 191 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    while true {
        var has_water = false
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 {
                    has_water = true
                    break
                }
            }
            if has_water {
                break
            }
        }
        if !has_water {
            break
        }
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 {
                    grid[i][j] = 0
                    if i > 0 {
                        grid[i - 1][j] = 1
                    }
                    if i < grid.count - 1 {
                        grid[i + 1][j] = 1
                    }
                    if j > 0 {
                        grid[i][j - 1] = 1
                    }
                    if j < grid[i].count - 1 {
                        grid[i][j + 1] = 1
                    }
                }
            }
        }
        count += 1
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



// ----------- problem HumanEval_83_starts_one_ends, completion 166 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, return the count of the numbers of n-digit
/// positive integers that start or end with 1.
func starts_one_ends(n: Int) -> Int {
    var count = 0
    for i in 1...n {
        count += starts_one_ends(n: i)
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
            
assert(starts_one_ends(n: 1) == 1)
assert(starts_one_ends(n: 2) == 18)
assert(starts_one_ends(n: 3) == 180)
assert(starts_one_ends(n: 4) == 1800)
assert(starts_one_ends(n: 5) == 18000)



// ----------- problem HumanEval_100_make_a_pile, completion 153 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 43 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_88_sort_array, completion 70 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if array.count == 0 {
        return array
    }
    if array.count == 1 {
        return array
    }
    if array.count == 2 {
        if (array[0] + array[1]) % 2 == 0 {
            return [array[1], array[0]]
        } else {
            return array
        }
    }
    var newArray = array
    var i = 0
    while i < newArray.count - 1 {
        if (newArray[i] + newArray[i + 1]) % 2 == 0 {
            newArray.swapAt(i, i + 1)
            i = 0
        } else {
            i += 1
        }
    }
    return newArray
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_100_make_a_pile, completion 124 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 132 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 175 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_49_modp, completion 173 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 116 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 106 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

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
    if n == 0 {
        return 1
    }
    if n % 2 == 0 {
        return modp(n: n / 2, p: p) * modp(n: n / 2, p: p) % p
    } else {
        return modp(n: n - 1, p: p) * modp(n: n, p: p) % p
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
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_100_make_a_pile, completion 54 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_83_starts_one_ends, completion 190 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, return the count of the numbers of n-digit
/// positive integers that start or end with 1.
func starts_one_ends(n: Int) -> Int {
    var count = 0
    for i in 1...n {
        count += starts_one_ends(n: i)
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
            
assert(starts_one_ends(n: 1) == 1)
assert(starts_one_ends(n: 2) == 18)
assert(starts_one_ends(n: 3) == 180)
assert(starts_one_ends(n: 4) == 1800)
assert(starts_one_ends(n: 5) == 18000)



// ----------- problem HumanEval_100_make_a_pile, completion 147 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 194 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 39 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current.isMultiple(of: 2) ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_83_starts_one_ends, completion 75 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, return the count of the numbers of n-digit
/// positive integers that start or end with 1.
func starts_one_ends(n: Int) -> Int {
    var count = 0
    for i in 1...n {
        count += starts_one_ends(n: i)
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
            
assert(starts_one_ends(n: 1) == 1)
assert(starts_one_ends(n: 2) == 18)
assert(starts_one_ends(n: 3) == 180)
assert(starts_one_ends(n: 4) == 1800)
assert(starts_one_ends(n: 5) == 18000)



// ----------- problem HumanEval_100_make_a_pile, completion 9 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 83 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var i = n
    while i > 0 {
        result.append(i)
        i = i % 2 == 0 ? i + 1 : i + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



// ----------- problem HumanEval_100_make_a_pile, completion 92 ------------
// status = Timeout
// exit_code = -1
/* stderr = 

*/
/* stdout = 

*/


/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in an array, where element at index
/// i represents the number of stones in the level (i+1).
/// Examples:
/// >>> make_a_pile(n: 3)
/// [3, 5, 7]
func make_a_pile(n: Int) -> [Int] {
    var result = [Int]()
    var current = n
    while current > 0 {
        result.append(current)
        current = current % 2 == 0 ? current + 1 : current + 2
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
            
assert(make_a_pile(n: 3) == [3, 5, 7])
assert(make_a_pile(n: 4) == [4, 6, 8, 10])
assert(make_a_pile(n: 5) == [5, 7, 9, 11, 13])
assert(make_a_pile(n: 6) == [6, 8, 10, 12, 14, 16])
assert(make_a_pile(n: 8) == [8, 10, 12, 14, 16, 18, 20, 22])



