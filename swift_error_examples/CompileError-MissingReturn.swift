// ----------- problem HumanEval_129_minPath, completion 130 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpynop6alr.swift:56:9: warning: initialization of variable 'ans' was never used; consider replacing with assignment to '_' or removing it
    var ans = [Int]()
    ~~~~^~~
    _
/tmp/tmpynop6alr.swift:57:9: warning: initialization of variable 'i' was never used; consider replacing with assignment to '_' or removing it
    var i = n
    ~~~~^
    _
/tmp/tmpynop6alr.swift:58:1: error: missing return in global function expected to return '[Int]'
}
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
    var dp = Array(repeating: Array(repeating: Int.max, count: n), count: n)
    var visited = Array(repeating: Array(repeating: false, count: n), count: n)
    var queue = [(Int, Int, Int)]()
    queue.append((0, 0, grid[0][0]))
    dp[0][0] = grid[0][0]
    visited[0][0] = true
    while !queue.isEmpty {
        let (i, j, val) = queue.removeFirst()
        if i > 0 && !visited[i - 1][j] {
            visited[i - 1][j] = true
            dp[i - 1][j] = min(dp[i - 1][j], val + grid[i - 1][j])
            queue.append((i - 1, j, dp[i - 1][j]))
        }
        if i < n - 1 && !visited[i + 1][j] {
            visited[i + 1][j] = true
            dp[i + 1][j] = min(dp[i + 1][j], val + grid[i + 1][j])
            queue.append((i + 1, j, dp[i + 1][j]))
        }
        if j > 0 && !visited[i][j - 1] {
            visited[i][j - 1] = true
            dp[i][j - 1] = min(dp[i][j - 1], val + grid[i][j - 1])
            queue.append((i, j - 1, dp[i][j - 1]))
        }
        if j < n - 1 && !visited[i][j + 1] {
            visited[i][j + 1] = true
            dp[i][j + 1] = min(dp[i][j + 1], val + grid[i][j + 1])
            queue.append((i, j + 1, dp[i][j + 1]))
        }
    }
    var ans = [Int]()
    var i = n
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_83_starts_one_ends, completion 114 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpoj5n3izh.swift:105:1: error: missing return in global function expected to return 'Int'
}
^

*/
/* stdout = 

*/


/// Given a positive integer n, return the count of the numbers of n-digit
/// positive integers that start or end with 1.
func starts_one_ends(n: Int) -> Int {
    if n == 1 {
        return 2
    }
    if n == 2 {
        return 4
    }
    if n == 3 {
        return 8
    }
    if n == 4 {
        return 16
    }
    if n == 5 {
        return 32
    }
    if n == 6 {
        return 64
    }
    if n == 7 {
        return 128
    }
    if n == 8 {
        return 256
    }
    if n == 9 {
        return 512
    }
    if n == 10 {
        return 1024
    }
    if n == 11 {
        return 2048
    }
    if n == 12 {
        return 4096
    }
    if n == 13 {
        return 8192
    }
    if n == 14 {
        return 16384
    }
    if n == 15 {
        return 32768
    }
    if n == 16 {
        return 65536
    }
    if n == 17 {
        return 131072
    }
    if n == 18 {
        return 262144
    }
    if n == 19 {
        return 524288
    }
    if n == 20 {
        return 1048576
    }
    if n == 21 {
        return 2097152
    }
    if n == 22 {
        return 4194304
    }
    if n == 23 {
        return 8388608
    }
    if n == 24 {
        return 16777216
    }
    if n == 25 {
        return 33554432
    }
    if n == 26 {
        return 67108864
    }
    if n == 27 {
        return 134217728
    }
    if n == 28 {
        return 268435456
    }
    if n == 29 {
        return 536870912
    }
    if n == 30 {
        return 1073741824
    }
    if n == 31 {
        return 2147483648
    }
    if n == 32 {
        return 4294967296
    }
    if n == 33 {
        return 8589934592
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
            
assert(starts_one_ends(n: 1) == 1)
assert(starts_one_ends(n: 2) == 18)
assert(starts_one_ends(n: 3) == 180)
assert(starts_one_ends(n: 4) == 1800)
assert(starts_one_ends(n: 5) == 18000)



// ----------- problem HumanEval_83_starts_one_ends, completion 67 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpoj5n3izh.swift:105:1: error: missing return in global function expected to return 'Int'
}
^

*/
/* stdout = 

*/


/// Given a positive integer n, return the count of the numbers of n-digit
/// positive integers that start or end with 1.
func starts_one_ends(n: Int) -> Int {
    if n == 1 {
        return 2
    }
    if n == 2 {
        return 4
    }
    if n == 3 {
        return 8
    }
    if n == 4 {
        return 16
    }
    if n == 5 {
        return 32
    }
    if n == 6 {
        return 64
    }
    if n == 7 {
        return 128
    }
    if n == 8 {
        return 256
    }
    if n == 9 {
        return 512
    }
    if n == 10 {
        return 1024
    }
    if n == 11 {
        return 2048
    }
    if n == 12 {
        return 4096
    }
    if n == 13 {
        return 8192
    }
    if n == 14 {
        return 16384
    }
    if n == 15 {
        return 32768
    }
    if n == 16 {
        return 65536
    }
    if n == 17 {
        return 131072
    }
    if n == 18 {
        return 262144
    }
    if n == 19 {
        return 524288
    }
    if n == 20 {
        return 1048576
    }
    if n == 21 {
        return 2097152
    }
    if n == 22 {
        return 4194304
    }
    if n == 23 {
        return 8388608
    }
    if n == 24 {
        return 16777216
    }
    if n == 25 {
        return 33554432
    }
    if n == 26 {
        return 67108864
    }
    if n == 27 {
        return 134217728
    }
    if n == 28 {
        return 268435456
    }
    if n == 29 {
        return 536870912
    }
    if n == 30 {
        return 1073741824
    }
    if n == 31 {
        return 2147483648
    }
    if n == 32 {
        return 4294967296
    }
    if n == 33 {
        return 8589934592
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
            
assert(starts_one_ends(n: 1) == 1)
assert(starts_one_ends(n: 2) == 18)
assert(starts_one_ends(n: 3) == 180)
assert(starts_one_ends(n: 4) == 1800)
assert(starts_one_ends(n: 5) == 18000)



// ----------- problem HumanEval_83_starts_one_ends, completion 171 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpop424s6m.swift:43:1: error: missing return in global function expected to return 'Int'
}
^

*/
/* stdout = 

*/


/// Given a positive integer n, return the count of the numbers of n-digit
/// positive integers that start or end with 1.
func starts_one_ends(n: Int) -> Int {
    // The number of n-digit numbers that start or end with 1 is the same as
    // the number of n-digit numbers that start or end with 2.
    //
    // The number of n-digit numbers that start or end with 1 is the same as
    // the number of n-digit numbers that start or end with 9.
    //
    // The number of n-digit numbers that start or end with 1 is the same as
    // the number of n-digit numbers that start or end with 0.
    //
    // The number of n-digit numbers that start or end with 1 is the same as
    // the number of n-digit numbers that start or end with 8.
    //
    // The number of n-digit numbers that start or end with 1 is the same as
    // the number of n-digit numbers that start or end with 7.
    //
    // The number of n-digit numbers that start or end with 1 is the same as
    // the number of n-digit numbers that start or end with 6.
    //
    // The number of n-digit numbers that start or end with 1 is the same as
    // the number of n-digit numbers that start or end with 5.
    //
    // The number of n-digit numbers that start or end with 1 is the same as
    // the number of n-digit numbers that start or end with 4.
    //
    // The number of n-digit numbers that start or end with 1 is the same as
    // the number of n-digit numbers that start or end with 3.
    //
    // The number of n-digit numbers that start or end with 1 is the same as
    // the number of n-digit numbers that start or end with 2.
    //
    // The number of n-digit numbers that start or end with 1 is the same as
    // the number of n-digit numbers that start or end with 9.
    //
    // The number of n-digit numbers that start or end with 1 is the same as
    // the number of n-digit numbers that start or end with 0.
    //
    // The number of n-digit numbers that start or end with 1 is the same as
    // the number of n-digit numbers that start
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



