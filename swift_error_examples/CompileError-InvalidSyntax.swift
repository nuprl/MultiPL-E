// ----------- problem HumanEval_160_do_algebra, completion 189 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 52 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 63 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 59 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_129_minPath, completion 197 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpxdkzb6rm.swift:59:1: error: expected expression after operator
}
^
/tmp/tmpxdkzb6rm.swift:84:81: error: expected '}' at end of brace statement
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])
                                                                                ^
/tmp/tmpxdkzb6rm.swift:34:26: note: to match this opening '{'
    while !queue.isEmpty {
                         ^
/tmp/tmpxdkzb6rm.swift:84:81: error: expected '}' at end of brace statement
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])
                                                                                ^
/tmp/tmpxdkzb6rm.swift:25:46: note: to match this opening '{'
func minPath(grid: [[Int]], k: Int) -> [Int] {
                                             ^
/tmp/tmpxdkzb6rm.swift:62:6: error: operator functions can only be declared at global or in type scope
func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
     ^
/tmp/tmpxdkzb6rm.swift:74:8: error: cannot call value of non-function type '[Int]'
assert(minPath(grid: [[1, 2, 3], [4, 5, 6], [7, 8, 9]], k: 3) == [1, 2, 1])
       ^
/tmp/tmpxdkzb6rm.swift:75:8: error: cannot call value of non-function type '[Int]'
assert(minPath(grid: [[5, 9, 3], [4, 1, 6], [7, 8, 2]], k: 1) == [1])
       ^
/tmp/tmpxdkzb6rm.swift:76:8: error: cannot call value of non-function type '[Int]'
assert(minPath(grid: [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]], k: 4) == [1, 2, 1, 2])
       ^
/tmp/tmpxdkzb6rm.swift:77:8: error: cannot call value of non-function type '[Int]'
assert(minPath(grid: [[6, 4, 13, 10], [5, 7, 12, 1], [3, 16, 11, 15], [8, 14, 9, 2]], k: 7) == [1, 10, 1, 10, 1, 10, 1])
       ^
/tmp/tmpxdkzb6rm.swift:78:8: error: cannot call value of non-function type '[Int]'
assert(minPath(grid: [[8, 14, 9, 2], [6, 4, 13, 15], [5, 7, 1, 12], [3, 10, 11, 16]], k: 5) == [1, 7, 1, 7, 1])
       ^
/tmp/tmpxdkzb6rm.swift:79:8: error: cannot call value of non-function type '[Int]'
assert(minPath(grid: [[
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
    var dp = [[Int]](repeating: [Int](repeating: Int.max, count: n), count: n)
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
    var queue = [(Int, Int, Int)]()
    queue.append((0, 0, 0))
    dp[0][0] = grid[0][0]
    visited[0][0] = true
    var minPath = [Int]()
    while !queue.isEmpty {
        let (i, j, pathLength) = queue.removeFirst()
        if pathLength == k {
            if minPath.isEmpty || dp[i][j] < minPath[0] {
                minPath = [dp[i][j]]
            } else if dp[i][j] == minPath[0] {
                minPath.append(dp[i][j])
            }
        } else {
            if i > 0 && !visited[i - 1][j] {
                dp[i - 1][j] = min(dp[i - 1][j], dp[i][j] + grid[i - 1][j])
                visited[i - 1][j] = true
                queue.append((i - 1, j, pathLength + 1))
            }
            if i < n - 1 && !visited[i + 1][j] {
                dp[i + 1][j] = min(dp[i + 1][j], dp[i][j] + grid[i + 1][j])
                visited[i + 1][j] = true
                queue.append((i + 1, j, pathLength + 1))
            }
            if j > 0 && !visited[i][j - 1] {
                dp[i][j - 1] = min(dp[i][j - 1], dp[i][j] + grid[i][j - 1])
                visited[i][j - 1] = true
                queue.append((i, j - 1, pathLength + 1))
            }
            if j < n -
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_160_do_algebra, completion 113 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 124 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 22 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpg60_blx1.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpg60_blx1.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpg60_blx1.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpg60_blx1.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i + 1]
        case "-":
            result -= operand[i + 1]
        case "*":
            result *= operand[i + 1]
        case "//":
            result /= operand[i + 1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i + 1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 64 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 117 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 94 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 39 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpg60_blx1.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpg60_blx1.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpg60_blx1.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpg60_blx1.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i + 1]
        case "-":
            result -= operand[i + 1]
        case "*":
            result *= operand[i + 1]
        case "//":
            result /= operand[i + 1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i + 1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 128 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 145 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_129_minPath, completion 190 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp8tq0rq8q.swift:59:1: error: expected expression after operator
}
^
/tmp/tmp8tq0rq8q.swift:84:81: error: expected '}' at end of brace statement
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])
                                                                                ^
/tmp/tmp8tq0rq8q.swift:38:24: note: to match this opening '{'
        for i in 0..<n {
                       ^
/tmp/tmp8tq0rq8q.swift:84:81: error: expected '}' at end of brace statement
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])
                                                                                ^
/tmp/tmp8tq0rq8q.swift:35:20: note: to match this opening '{'
    for _ in 1..<k {
                   ^
/tmp/tmp8tq0rq8q.swift:84:81: error: expected '}' at end of brace statement
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])
                                                                                ^
/tmp/tmp8tq0rq8q.swift:25:46: note: to match this opening '{'
func minPath(grid: [[Int]], k: Int) -> [Int] {
                                             ^
/tmp/tmp8tq0rq8q.swift:44:39: error: binary operator '<' cannot be applied to two '[Int]' operands
                    if path[i - 1][j] < path[i][j] {
                                      ^
Swift.Comparable:1:17: note: candidate requires that '[Int]' conform to 'Comparable' (requirement specified as 'Self' : 'Comparable')
public protocol Comparable : Equatable {
                ^
/tmp/tmp8tq0rq8q.swift:62:6: error: operator functions can only be declared at global or in type scope
func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
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
    var path = Array(repeating: Array(repeating: [Int](), count: n), count: n)
    for i in 0..<n {
        for j in 0..<n {
            dp[i][j] = grid[i][j]
            path[i][j] = [grid[i][j]]
        }
    }
    for _ in 1..<k {
        var newDp = Array(repeating: Array(repeating: Int.max, count: n), count: n)
        var newPath = Array(repeating: Array(repeating: [Int](), count: n), count: n)
        for i in 0..<n {
            for j in 0..<n {
                if i > 0 && dp[i - 1][j] < dp[i][j] {
                    newDp[i][j] = dp[i - 1][j]
                    newPath[i][j] = path[i - 1][j]
                } else if i > 0 && dp[i - 1][j] == dp[i][j] {
                    if path[i - 1][j] < path[i][j] {
                        newDp[i][j] = dp[i - 1][j]
                        newPath[i][j] = path[i - 1][j]
                    } else {
                        newDp[i][j] = dp[i][j]
                        newPath[i][j] = path[i][j]
                    }
                } else {
                    newDp[i][j] = dp[i][j]
                    newPath[i][j] = path[i][j]
                }
                if j > 0 && dp[i][j - 1] < newDp[i][j] {
                    newDp[i][j] = dp[i][j - 1]
                    newPath[i][j] = path[i][j - 1]
                } else if j > 0 &&
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_160_do_algebra, completion 150 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 32 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 185 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 196 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 70 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 69 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 2 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 192 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp0kx1xkj2.swift:23:15: error: expected expression after operator
    while i < operator.count {
              ^
/tmp/tmp0kx1xkj2.swift:23:23: error: '.' is not allowed in operator names
    while i < operator.count {
                      ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    var i = 0
    while i < operator.count {
        switch operator[i] {
        case "+":
            result += operand[i + 1]
        case "-":
            result -= operand[i + 1]
        case "*":
            result *= operand[i + 1]
        case "//":
            result /= operand[i + 1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i + 1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 162 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 47 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 68 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 49 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 67 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 159 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 176 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 61 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 175 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 79 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp9jmdto1z.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmp9jmdto1z.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmp9jmdto1z.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmp9jmdto1z.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            print("Invalid operator")
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 40 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpg60_blx1.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpg60_blx1.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpg60_blx1.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpg60_blx1.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i + 1]
        case "-":
            result -= operand[i + 1]
        case "*":
            result *= operand[i + 1]
        case "//":
            result /= operand[i + 1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i + 1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 35 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 111 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 56 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 115 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 147 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 166 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 123 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 125 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_10_make_palindrome, completion 31 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplrpw7nu8.swift:58:1: error: expected expression after operator
}
^
/tmp/tmplrpw7nu8.swift:77:56: error: expected '}' at end of brace statement
assert(make_palindrome(string: "jerry") == "jerryrrej")
                                                       ^
/tmp/tmplrpw7nu8.swift:12:48: note: to match this opening '{'
func make_palindrome(string: String) -> String {
                                               ^
/tmp/tmplrpw7nu8.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmplrpw7nu8.swift:61:6: error: operator functions can only be declared at global or in type scope
func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
     ^

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
    let string = string.characters
    let string_length = string.count
    if string_length == 0 {
        return ""
    }
    var longest_palindrome_length = 0
    var longest_palindrome_index = 0
    var longest_palindrome_end = 0
    var longest_palindrome_start = 0
    var longest_palindrome_end_index = 0
    var longest_palindrome_start_index = 0
    var palindrome_length = 0
    var palindrome_index = 0
    var palindrome_end = 0
    var palindrome_start = 0
    var palindrome_end_index = 0
    var palindrome_start_index = 0
    for i in 0..<string_length {
        let c = string[string.index(string.startIndex, offsetBy: i)]
        if i > 0 && c == string[string.index(string.startIndex, offsetBy: i - 1)] {
            palindrome_length = 2
            palindrome_index = i - 1
            palindrome_end = i
            palindrome_start = i - 1
            palindrome_end_index = i
            palindrome_start_index = i - 1
        } else {
            palindrome_length = 1
            palindrome_index = i
            palindrome_end = i
            palindrome_start = i
            palindrome_end_index = i
            palindrome_start_index = i
        }
        var j = 1
        while i - j >= 0 && i + j < string_length && string[string.index(string.startIndex, offsetBy: i - j)] == string[string.index(string.startIndex, offsetBy: i + j)] {
            palindrome_length += 2
            palindrome_index = i - j
            palindrome_end = i + j
            palindrome_start = i - j
            palindrome_end_index = i + j
            palindrome_start_index = i - j
            j += 1
        }
        if palindrome_length >
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_160_do_algebra, completion 106 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 193 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 142 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 195 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 126 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 90 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 133 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 57 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 7 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 110 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 58 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 148 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 26 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 95 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 62 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 177 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 170 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 48 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 82 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 42 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 37 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 16 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 41 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpg60_blx1.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpg60_blx1.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpg60_blx1.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpg60_blx1.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i + 1]
        case "-":
            result -= operand[i + 1]
        case "*":
            result *= operand[i + 1]
        case "//":
            result /= operand[i + 1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i + 1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 72 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 188 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 3 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 43 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_94_skjkasdkd, completion 18 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpxg5ceen0.swift:103:10: error: expected 'in' after for-each pattern
    for i
         ^
/tmp/tmpxg5ceen0.swift:103:10: error: expected Sequence expression for for-each loop
    for i
         ^
/tmp/tmpxg5ceen0.swift:103:10: error: expected '{' to start the body of for-each loop
    for i
         ^

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
    var lst = lst
    var max = 0
    for i in lst {
        if i > max {
            max = i
        }
    }
    for i in lst {
        if i == max {
            lst.remove(at: lst.firstIndex(of: i)!)
        }
    }
    var max2 = 0
    for i in lst {
        if i > max2 {
            max2 = i
        }
    }
    var max3 = 0
    for i in lst {
        if i > max3 {
            max3 = i
        }
    }
    var max4 = 0
    for i in lst {
        if i > max4 {
            max4 = i
        }
    }
    var max5 = 0
    for i in lst {
        if i > max5 {
            max5 = i
        }
    }
    var max6 = 0
    for i in lst {
        if i > max6 {
            max6 = i
        }
    }
    var max7 = 0
    for i in lst {
        if i > max7 {
            max7 = i
        }
    }
    var max8 = 0
    for i in lst {
        if i > max8 {
            max8 = i
        }
    }
    var max9 = 0
    for i in lst {
        if i > max9 {
            max9 = i
        }
    }
    var max10 = 0
    for i in lst {
        if i > max10 {
            max10 = i
        }
    }
    var max11 = 0
    for i in lst {
        if i > max11 {
            max11 = i
        }
    }
    var max12 = 0
    for i in lst {
        if i > max12 {
            max12 = i
        }
    }
    var max13 = 0
    for i in lst {
        if i > max13 {
            max13 = i
        }
    }
    var max14 = 0
    for i
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_160_do_algebra, completion 143 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 18 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 87 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 81 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 118 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 51 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 71 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 50 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 14 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 46 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpg60_blx1.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpg60_blx1.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpg60_blx1.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpg60_blx1.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i + 1]
        case "-":
            result -= operand[i + 1]
        case "*":
            result *= operand[i + 1]
        case "//":
            result /= operand[i + 1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i + 1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 138 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 104 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 168 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 76 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 136 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 179 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 114 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 66 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_129_minPath, completion 127 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpsp9ux6a3.swift:62:1: error: expected expression after operator
}
^
/tmp/tmpsp9ux6a3.swift:87:81: error: expected '}' at end of brace statement
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])
                                                                                ^
/tmp/tmpsp9ux6a3.swift:25:46: note: to match this opening '{'
func minPath(grid: [[Int]], k: Int) -> [Int] {
                                             ^
/tmp/tmpsp9ux6a3.swift:65:6: error: operator functions can only be declared at global or in type scope
func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
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
                if i > 0 {
                    dp[l][i][j] = min(dp[l][i][j], dp[l - 1][i - 1][j])
                }
                if i < n - 1 {
                    dp[l][i][j] = min(dp[l][i][j], dp[l - 1][i + 1][j])
                }
                if j > 0 {
                    dp[l][i][j] = min(dp[l][i][j], dp[l - 1][i][j - 1])
                }
                if j < n - 1 {
                    dp[l][i][j] = min(dp[l][i][j], dp[l - 1][i][j + 1])
                }
            }
        }
    }
    var ans = [Int]()
    var i = 0, j = 0
    while ans.count < k {
        ans.append(grid[i][j])
        if i > 0 && dp[k - ans.count][i - 1][j] < dp[k - ans.count][i][j] {
            i -= 1
        } else if i < n - 1 && dp[k - ans.count][i + 1][j] < dp[k - ans.count][i][j] {
            i += 1
        } else if j > 0 && dp[k - ans.count][i][j - 1] < dp[k - ans.count][i][j] {
            j -= 1
        } else if j < n - 1 && dp[k - ans.count][i][j + 1] <
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_160_do_algebra, completion 130 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 74 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 89 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 15 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpg60_blx1.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpg60_blx1.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpg60_blx1.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpg60_blx1.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i + 1]
        case "-":
            result -= operand[i + 1]
        case "*":
            result *= operand[i + 1]
        case "//":
            result /= operand[i + 1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i + 1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 156 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 149 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 45 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 122 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 153 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 197 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 97 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 28 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 44 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 131 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 36 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 157 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 174 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 141 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 54 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 33 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 11 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 23 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 29 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 169 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_129_minPath, completion 20 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwwhuypvs.swift:82:12: error: expected pattern
        for
           ^
/tmp/tmpwwhuypvs.swift:82:12: error: expected Sequence expression for for-each loop
        for
           ^
/tmp/tmpwwhuypvs.swift:82:12: error: expected '{' to start the body of for-each loop
        for
           ^
/tmp/tmpwwhuypvs.swift:108:81: error: expected '}' at end of brace statement
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])
                                                                                ^
/tmp/tmpwwhuypvs.swift:25:46: note: to match this opening '{'
func minPath(grid: [[Int]], k: Int) -> [Int] {
                                             ^
/tmp/tmpwwhuypvs.swift:86:6: error: operator functions can only be declared at global or in type scope
func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
     ^
/tmp/tmpwwhuypvs.swift:98:8: error: cannot call value of non-function type '[Int]'
assert(minPath(grid: [[1, 2, 3], [4, 5, 6], [7, 8, 9]], k: 3) == [1, 2, 1])
       ^
/tmp/tmpwwhuypvs.swift:99:8: error: cannot call value of non-function type '[Int]'
assert(minPath(grid: [[5, 9, 3], [4, 1, 6], [7, 8, 2]], k: 1) == [1])
       ^
/tmp/tmpwwhuypvs.swift:100:8: error: cannot call value of non-function type '[Int]'
assert(minPath(grid: [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]], k: 4) == [1, 2, 1, 2])
       ^
/tmp/tmpwwhuypvs.swift:101:8: error: cannot call value of non-function type '[Int]'
assert(minPath(grid: [[6, 4, 13, 10], [5, 7, 12, 1], [3, 16, 11, 15], [8, 14, 9, 2]], k: 7) == [1, 10, 1, 10, 1, 10, 1])
       ^
/tmp/tmpwwhuypvs.swift:102:8: error: cannot call value of non-function type '[Int]'
assert(minPath(grid: [[8, 14, 9, 2], [6, 4, 13, 15], [5, 7, 1, 12], [3, 10, 11, 16]], k: 5) == [1, 7, 1, 7, 1])
       ^
/tmp/tmpwwhuypvs.swift:103:8: error: cannot call value of non-function type '[Int]'
assert(minPath(grid: [[11, 8, 7, 2], [5, 16, 14, 4], [9, 3, 15, 6], [12, 13, 10, 1]], k: 9) == [1, 6, 1, 6, 1, 6, 1, 6, 1])
       ^
/tmp/tmpwwhuypvs.
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
    var visited = Array(repeating: Array(repeating: false, count: n), count: n)
    var minPath = Array(repeating: 0, count: k)
    var minPathSum = Int.max
    var minPathValues = [Int]()
    var path = [Int]()
    var pathSum = 0
    var pathValues = [Int]()
    var pathIndex = 0
    var minPathIndex = 0
    var minPathFound = false
    func dfs(row: Int, col: Int) {
        if pathIndex == k {
            if pathSum < minPathSum {
                minPathSum = pathSum
                minPathIndex = 0
                minPath = path
                minPathValues = pathValues
                minPathFound = true
            } else if pathSum == minPathSum {
                var i = 0
                while i < k {
                    if pathValues[i] < minPathValues[i] {
                        minPathSum = pathSum
                        minPathIndex = 0
                        minPath = path
                        minPathValues = pathValues
                        minPathFound = true
                        break
                    } else if pathValues[i] > minPathValues[i] {
                        break
                    }
                    i += 1
                }
            }
            return
        }
        if row < 0 || row >= n || col < 0 || col >= n || visited[row][col] {
            return
        }
        visited[row][col] = true
        path.append(grid[row][col])
        pathSum += grid[row][col]
        pathValues.append(grid[row][col])
        pathIndex += 1
        dfs(row: row - 1, col: col)
        dfs(row: row + 1, col: col)
        dfs(row: row, col: col - 1)
        dfs(row: row, col: col + 1)
        pathIndex -= 1
        pathSum -= grid[row][col]
        pathValues.removeLast()
        path.removeLast()
        visited[row][col] = false
    }
    for i in 0..<n {
        for
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_160_do_algebra, completion 60 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 27 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpg60_blx1.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpg60_blx1.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpg60_blx1.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpg60_blx1.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i + 1]
        case "-":
            result -= operand[i + 1]
        case "*":
            result *= operand[i + 1]
        case "//":
            result /= operand[i + 1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i + 1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 9 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 158 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 161 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 19 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 190 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 25 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp9i30wdjx.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmp9i30wdjx.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmp9i30wdjx.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmp9i30wdjx.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i + 1]
        case "-":
            result -= operand[i + 1]
        case "*":
            result *= operand[i + 1]
        case "//":
            result /= operand[i + 1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i + 1])))
        default:
            print("Invalid operator")
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 93 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 135 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 144 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 151 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 78 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 73 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 167 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 24 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp9jmdto1z.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmp9jmdto1z.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmp9jmdto1z.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmp9jmdto1z.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            print("Invalid operator")
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 31 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpg60_blx1.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpg60_blx1.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpg60_blx1.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpg60_blx1.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i + 1]
        case "-":
            result -= operand[i + 1]
        case "*":
            result *= operand[i + 1]
        case "//":
            result /= operand[i + 1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i + 1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 108 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 107 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 180 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3c0zo5bv.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmp3c0zo5bv.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmp3c0zo5bv.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmp3c0zo5bv.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            result = 0
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 65 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 152 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 155 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 38 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_129_minPath, completion 121 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp8tq0rq8q.swift:59:1: error: expected expression after operator
}
^
/tmp/tmp8tq0rq8q.swift:84:81: error: expected '}' at end of brace statement
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])
                                                                                ^
/tmp/tmp8tq0rq8q.swift:38:24: note: to match this opening '{'
        for i in 0..<n {
                       ^
/tmp/tmp8tq0rq8q.swift:84:81: error: expected '}' at end of brace statement
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])
                                                                                ^
/tmp/tmp8tq0rq8q.swift:35:20: note: to match this opening '{'
    for _ in 1..<k {
                   ^
/tmp/tmp8tq0rq8q.swift:84:81: error: expected '}' at end of brace statement
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])
                                                                                ^
/tmp/tmp8tq0rq8q.swift:25:46: note: to match this opening '{'
func minPath(grid: [[Int]], k: Int) -> [Int] {
                                             ^
/tmp/tmp8tq0rq8q.swift:44:39: error: binary operator '<' cannot be applied to two '[Int]' operands
                    if path[i - 1][j] < path[i][j] {
                                      ^
Swift.Comparable:1:17: note: candidate requires that '[Int]' conform to 'Comparable' (requirement specified as 'Self' : 'Comparable')
public protocol Comparable : Equatable {
                ^
/tmp/tmp8tq0rq8q.swift:62:6: error: operator functions can only be declared at global or in type scope
func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
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
    var path = Array(repeating: Array(repeating: [Int](), count: n), count: n)
    for i in 0..<n {
        for j in 0..<n {
            dp[i][j] = grid[i][j]
            path[i][j] = [grid[i][j]]
        }
    }
    for _ in 1..<k {
        var newDp = Array(repeating: Array(repeating: Int.max, count: n), count: n)
        var newPath = Array(repeating: Array(repeating: [Int](), count: n), count: n)
        for i in 0..<n {
            for j in 0..<n {
                if i > 0 && dp[i - 1][j] < dp[i][j] {
                    newDp[i][j] = dp[i - 1][j]
                    newPath[i][j] = path[i - 1][j]
                } else if i > 0 && dp[i - 1][j] == dp[i][j] {
                    if path[i - 1][j] < path[i][j] {
                        newDp[i][j] = dp[i - 1][j]
                        newPath[i][j] = path[i - 1][j]
                    } else {
                        newDp[i][j] = dp[i][j]
                        newPath[i][j] = path[i][j]
                    }
                } else {
                    newDp[i][j] = dp[i][j]
                    newPath[i][j] = path[i][j]
                }
                if j > 0 && dp[i][j - 1] < newDp[i][j] {
                    newDp[i][j] = dp[i][j - 1]
                    newPath[i][j] = path[i][j - 1]
                } else if j > 0 &&
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_160_do_algebra, completion 88 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 194 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 183 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 120 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 163 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 92 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 4 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 199 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 129 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 178 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 109 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 91 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 77 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 191 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 21 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpg60_blx1.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpg60_blx1.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpg60_blx1.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpg60_blx1.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i + 1]
        case "-":
            result -= operand[i + 1]
        case "*":
            result *= operand[i + 1]
        case "//":
            result /= operand[i + 1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i + 1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 86 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 101 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 100 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 1 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 112 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 186 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 105 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 20 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpg60_blx1.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpg60_blx1.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpg60_blx1.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpg60_blx1.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i + 1]
        case "-":
            result -= operand[i + 1]
        case "*":
            result *= operand[i + 1]
        case "//":
            result /= operand[i + 1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i + 1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 132 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 172 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_129_minPath, completion 117 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp8tq0rq8q.swift:59:1: error: expected expression after operator
}
^
/tmp/tmp8tq0rq8q.swift:84:81: error: expected '}' at end of brace statement
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])
                                                                                ^
/tmp/tmp8tq0rq8q.swift:38:24: note: to match this opening '{'
        for i in 0..<n {
                       ^
/tmp/tmp8tq0rq8q.swift:84:81: error: expected '}' at end of brace statement
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])
                                                                                ^
/tmp/tmp8tq0rq8q.swift:35:20: note: to match this opening '{'
    for _ in 1..<k {
                   ^
/tmp/tmp8tq0rq8q.swift:84:81: error: expected '}' at end of brace statement
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])
                                                                                ^
/tmp/tmp8tq0rq8q.swift:25:46: note: to match this opening '{'
func minPath(grid: [[Int]], k: Int) -> [Int] {
                                             ^
/tmp/tmp8tq0rq8q.swift:44:39: error: binary operator '<' cannot be applied to two '[Int]' operands
                    if path[i - 1][j] < path[i][j] {
                                      ^
Swift.Comparable:1:17: note: candidate requires that '[Int]' conform to 'Comparable' (requirement specified as 'Self' : 'Comparable')
public protocol Comparable : Equatable {
                ^
/tmp/tmp8tq0rq8q.swift:62:6: error: operator functions can only be declared at global or in type scope
func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
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
    var path = Array(repeating: Array(repeating: [Int](), count: n), count: n)
    for i in 0..<n {
        for j in 0..<n {
            dp[i][j] = grid[i][j]
            path[i][j] = [grid[i][j]]
        }
    }
    for _ in 1..<k {
        var newDp = Array(repeating: Array(repeating: Int.max, count: n), count: n)
        var newPath = Array(repeating: Array(repeating: [Int](), count: n), count: n)
        for i in 0..<n {
            for j in 0..<n {
                if i > 0 && dp[i - 1][j] < dp[i][j] {
                    newDp[i][j] = dp[i - 1][j]
                    newPath[i][j] = path[i - 1][j]
                } else if i > 0 && dp[i - 1][j] == dp[i][j] {
                    if path[i - 1][j] < path[i][j] {
                        newDp[i][j] = dp[i - 1][j]
                        newPath[i][j] = path[i - 1][j]
                    } else {
                        newDp[i][j] = dp[i][j]
                        newPath[i][j] = path[i][j]
                    }
                } else {
                    newDp[i][j] = dp[i][j]
                    newPath[i][j] = path[i][j]
                }
                if j > 0 && dp[i][j - 1] < newDp[i][j] {
                    newDp[i][j] = dp[i][j - 1]
                    newPath[i][j] = path[i][j - 1]
                } else if j > 0 &&
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_160_do_algebra, completion 84 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 85 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 55 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 127 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 119 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 121 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 140 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 6 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 184 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 165 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 0 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 164 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp9jmdto1z.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmp9jmdto1z.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmp9jmdto1z.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmp9jmdto1z.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            print("Invalid operator")
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 134 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 187 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 102 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 198 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp9jmdto1z.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmp9jmdto1z.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmp9jmdto1z.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmp9jmdto1z.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            print("Invalid operator")
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 13 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 116 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 10 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 181 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 34 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 75 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 103 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp9jmdto1z.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmp9jmdto1z.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmp9jmdto1z.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmp9jmdto1z.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            print("Invalid operator")
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 98 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 83 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_141_file_name_check, completion 143 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpmpfms87c.swift:19:9: error: keyword 'extension' cannot be used as an identifier here
    var extension = ""
        ^
/tmp/tmpmpfms87c.swift:19:9: note: if this name is unavoidable, use backticks to escape it
    var extension = ""
        ^~~~~~~~~
        `extension`
/tmp/tmpmpfms87c.swift:26:23: error: expected type name in extension declaration
            extension += String(char)
                      ^
/tmp/tmpmpfms87c.swift:26:23: error: expected '{' in extension
            extension += String(char)
                      ^
/tmp/tmpmpfms87c.swift:26:13: error: declaration is only valid at file scope
            extension += String(char)
            ^
/tmp/tmpmpfms87c.swift:29:30: error: expected expression after operator
    if digits > 3 || !dot || extension.count == 0 || extension.count > 3 || extension != "txt" && extension != "exe" && extension != "dll" {
                             ^
/tmp/tmpmpfms87c.swift:29:39: error: expected type name in extension declaration
    if digits > 3 || !dot || extension.count == 0 || extension.count > 3 || extension != "txt" && extension != "exe" && extension != "dll" {
                                      ^
/tmp/tmpmpfms87c.swift:29:39: error: expected '{' in extension
    if digits > 3 || !dot || extension.count == 0 || extension.count > 3 || extension != "txt" && extension != "exe" && extension != "dll" {
                                      ^
/tmp/tmpmpfms87c.swift:29:30: error: declaration is only valid at file scope
    if digits > 3 || !dot || extension.count == 0 || extension.count > 3 || extension != "txt" && extension != "exe" && extension != "dll" {
                             ^
/tmp/tmpmpfms87c.swift:29:63: error: expected type name in extension declaration
    if digits > 3 || !dot || extension.count == 0 || extension.count > 3 || extension != "txt" && extension != "exe" && extension != "dll" {
                                                              ^
/tmp/tmpmpfms87c.swift:29:63: error: expected '{' in extension
    if digits > 3 || !dot
*/
/* stdout = 

*/


/// Create a function which takes a string representing a file's name, and returns
/// 'Yes' if the the file's name is valid, and returns 'No' otherwise.
/// A file's name is considered to be valid if and only if all the following conditions 
/// are met:
/// - There should not be more than three digits ('0'-'9') in the file's name.
/// - The file's name contains exactly one dot '.'
/// - The substring before the dot should not be empty, and it starts with a letter from 
/// the latin alphapet ('a'-'z' and 'A'-'Z').
/// - The substring after the dot should be one of these: ['txt', 'exe', 'dll']
/// Examples:
/// >>> file_name_check(file_name: "example.txt")
/// "Yes"
/// >>> file_name_check(file_name: "1example.dll")
/// "No"
func file_name_check(file_name: String) -> String {
    var digits = 0
    var dot = false
    var extension = ""
    for char in file_name {
        if char >= "0" && char <= "9" {
            digits += 1
        } else if char == "." {
            dot = true
        } else if dot {
            extension += String(char)
        }
    }
    if digits > 3 || !dot || extension.count == 0 || extension.count > 3 || extension != "txt" && extension != "exe" && extension != "dll" {
        return "No"
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
            
assert(file_name_check(file_name: "example.txt") == "Yes")
assert(file_name_check(file_name: "1example.dll") == "No")
assert(file_name_check(file_name: "s1sdf3.asd") == "No")
assert(file_name_check(file_name: "K.dll") == "Yes")
assert(file_name_check(file_name: "MY16FILE3.exe") == "Yes")
assert(file_name_check(file_name: "His12FILE94.exe") == "No")
assert(file_name_check(file_name: "_Y.txt") == "No")
assert(file_name_check(file_name: "?aREYA.exe") == "No")
assert(file_name_check(file_name: "/this_is_valid.dll") == "No")
assert(file_name_check(file_name: "this_is_valid.wow") == "No")
assert(file_name_check(file_name: "this_is_valid.txt") == "Yes")
assert(file_name_check(file_name: "this_is_valid.txtexe") == "No")
assert(file_name_check(file_name: "#this2_i4s_5valid.ten") == "No")
assert(file_name_check(file_name: "@this1_is6_valid.exe") == "No")
assert(file_name_check(file_name: "this_is_12valid.6exe4.txt") == "No")
assert(file_name_check(file_name: "all.exe.txt") == "No")
assert(file_name_check(file_name: "I563_No.exe") == "Yes")
assert(file_name_check(file_name: "Is3youfault.txt") == "Yes")
assert(file_name_check(file_name: "no_one#knows.dll") == "Yes")
assert(file_name_check(file_name: "1I563_Yes3.exe") == "No")
assert(file_name_check(file_name: "I563_Yes3.txtt") == "No")
assert(file_name_check(file_name: "final..txt") == "No")
assert(file_name_check(file_name: "final132") == "No")
assert(file_name_check(file_name: "_f4indsartal132.") == "No")
assert(file_name_check(file_name: ".txt") == "No")
assert(file_name_check(file_name: "s.") == "No")



// ----------- problem HumanEval_160_do_algebra, completion 17 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_129_minPath, completion 7 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp8tq0rq8q.swift:59:1: error: expected expression after operator
}
^
/tmp/tmp8tq0rq8q.swift:84:81: error: expected '}' at end of brace statement
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])
                                                                                ^
/tmp/tmp8tq0rq8q.swift:38:24: note: to match this opening '{'
        for i in 0..<n {
                       ^
/tmp/tmp8tq0rq8q.swift:84:81: error: expected '}' at end of brace statement
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])
                                                                                ^
/tmp/tmp8tq0rq8q.swift:35:20: note: to match this opening '{'
    for _ in 1..<k {
                   ^
/tmp/tmp8tq0rq8q.swift:84:81: error: expected '}' at end of brace statement
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])
                                                                                ^
/tmp/tmp8tq0rq8q.swift:25:46: note: to match this opening '{'
func minPath(grid: [[Int]], k: Int) -> [Int] {
                                             ^
/tmp/tmp8tq0rq8q.swift:44:39: error: binary operator '<' cannot be applied to two '[Int]' operands
                    if path[i - 1][j] < path[i][j] {
                                      ^
Swift.Comparable:1:17: note: candidate requires that '[Int]' conform to 'Comparable' (requirement specified as 'Self' : 'Comparable')
public protocol Comparable : Equatable {
                ^
/tmp/tmp8tq0rq8q.swift:62:6: error: operator functions can only be declared at global or in type scope
func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
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
    var path = Array(repeating: Array(repeating: [Int](), count: n), count: n)
    for i in 0..<n {
        for j in 0..<n {
            dp[i][j] = grid[i][j]
            path[i][j] = [grid[i][j]]
        }
    }
    for _ in 1..<k {
        var newDp = Array(repeating: Array(repeating: Int.max, count: n), count: n)
        var newPath = Array(repeating: Array(repeating: [Int](), count: n), count: n)
        for i in 0..<n {
            for j in 0..<n {
                if i > 0 && dp[i - 1][j] < dp[i][j] {
                    newDp[i][j] = dp[i - 1][j]
                    newPath[i][j] = path[i - 1][j]
                } else if i > 0 && dp[i - 1][j] == dp[i][j] {
                    if path[i - 1][j] < path[i][j] {
                        newDp[i][j] = dp[i - 1][j]
                        newPath[i][j] = path[i - 1][j]
                    } else {
                        newDp[i][j] = dp[i][j]
                        newPath[i][j] = path[i][j]
                    }
                } else {
                    newDp[i][j] = dp[i][j]
                    newPath[i][j] = path[i][j]
                }
                if j > 0 && dp[i][j - 1] < newDp[i][j] {
                    newDp[i][j] = dp[i][j - 1]
                    newPath[i][j] = path[i][j - 1]
                } else if j > 0 &&
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_160_do_algebra, completion 30 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 146 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 173 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 99 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 154 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 53 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 12 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_129_minPath, completion 55 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp8tq0rq8q.swift:59:1: error: expected expression after operator
}
^
/tmp/tmp8tq0rq8q.swift:84:81: error: expected '}' at end of brace statement
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])
                                                                                ^
/tmp/tmp8tq0rq8q.swift:38:24: note: to match this opening '{'
        for i in 0..<n {
                       ^
/tmp/tmp8tq0rq8q.swift:84:81: error: expected '}' at end of brace statement
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])
                                                                                ^
/tmp/tmp8tq0rq8q.swift:35:20: note: to match this opening '{'
    for _ in 1..<k {
                   ^
/tmp/tmp8tq0rq8q.swift:84:81: error: expected '}' at end of brace statement
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])
                                                                                ^
/tmp/tmp8tq0rq8q.swift:25:46: note: to match this opening '{'
func minPath(grid: [[Int]], k: Int) -> [Int] {
                                             ^
/tmp/tmp8tq0rq8q.swift:44:39: error: binary operator '<' cannot be applied to two '[Int]' operands
                    if path[i - 1][j] < path[i][j] {
                                      ^
Swift.Comparable:1:17: note: candidate requires that '[Int]' conform to 'Comparable' (requirement specified as 'Self' : 'Comparable')
public protocol Comparable : Equatable {
                ^
/tmp/tmp8tq0rq8q.swift:62:6: error: operator functions can only be declared at global or in type scope
func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
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
    var path = Array(repeating: Array(repeating: [Int](), count: n), count: n)
    for i in 0..<n {
        for j in 0..<n {
            dp[i][j] = grid[i][j]
            path[i][j] = [grid[i][j]]
        }
    }
    for _ in 1..<k {
        var newDp = Array(repeating: Array(repeating: Int.max, count: n), count: n)
        var newPath = Array(repeating: Array(repeating: [Int](), count: n), count: n)
        for i in 0..<n {
            for j in 0..<n {
                if i > 0 && dp[i - 1][j] < dp[i][j] {
                    newDp[i][j] = dp[i - 1][j]
                    newPath[i][j] = path[i - 1][j]
                } else if i > 0 && dp[i - 1][j] == dp[i][j] {
                    if path[i - 1][j] < path[i][j] {
                        newDp[i][j] = dp[i - 1][j]
                        newPath[i][j] = path[i - 1][j]
                    } else {
                        newDp[i][j] = dp[i][j]
                        newPath[i][j] = path[i][j]
                    }
                } else {
                    newDp[i][j] = dp[i][j]
                    newPath[i][j] = path[i][j]
                }
                if j > 0 && dp[i][j - 1] < newDp[i][j] {
                    newDp[i][j] = dp[i][j - 1]
                    newPath[i][j] = path[i][j - 1]
                } else if j > 0 &&
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_160_do_algebra, completion 171 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 80 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 139 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 160 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 96 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 5 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 137 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 8 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



// ----------- problem HumanEval_160_do_algebra, completion 182 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwd7fnoii.swift:22:18: error: expected expression after operator
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:22:18: error: expected '{' to start the body of for-each loop
    for i in 0..<operator.count {
                 ^
/tmp/tmpwd7fnoii.swift:23:16: error: expected expression in 'switch' statement
        switch operator[i] {
               ^
/tmp/tmpwd7fnoii.swift:23:24: error: '[' is not allowed in operator names
        switch operator[i] {
                       ^

*/
/* stdout = 

*/


/// Given two arrays operator, and operand. The first array has basic algebra operations, and 
/// the second array is an array of integers. Use the two given arrays to build the algebric 
/// expression and return the evaluation of this expression.
/// The basic algebra operations:
/// Addition ( + ) 
/// Subtraction ( - ) 
/// Multiplication ( * ) 
/// Floor division ( // ) 
/// Exponentiation ( ** ) 
/// Example:
/// operator['+', '*', '-']
/// array = [2, 3, 4, 5]
/// result = 2 + 3 * 4 - 5
/// => result = 9
/// Note:
/// The length of operator array is equal to the length of operand array minus one.
/// Operand is an array of of non-negative integers.
/// Operator array has at least one operator, and operand array has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 0..<operator.count {
        switch operator[i] {
        case "+":
            result += operand[i+1]
        case "-":
            result -= operand[i+1]
        case "*":
            result *= operand[i+1]
        case "//":
            result /= operand[i+1]
        case "**":
            result = Int(pow(Double(result), Double(operand[i+1])))
        default:
            break
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
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)



