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



// ----------- problem HumanEval_88_sort_array, completion 191 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpink_5xr1.swift:19:50: error: unary operator cannot be separated from its operand
    let sorted = array.sorted(by: sum % 2 == 0 ? > : <)
                                                 ^~
                                                  
/tmp/tmpink_5xr1.swift:19:52: error: expected expression after '?' in ternary expression
    let sorted = array.sorted(by: sum % 2 == 0 ? > : <)
                                                   ^
/tmp/tmpink_5xr1.swift:18:9: warning: initialization of immutable value 'sum' was never used; consider replacing with assignment to '_' or removing it
    let sum = array[0] + array[array.count - 1]
    ~~~~^~~
    _

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
    guard array.count > 1 else { return array }
    let sum = array[0] + array[array.count - 1]
    let sorted = array.sorted(by: sum % 2 == 0 ? > : <)
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
            
assert(sort_array(array: [] as [Int]) == [] as [Int])
assert(sort_array(array: [5]) == [5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5]) == [0, 1, 2, 3, 4, 5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5, 6]) == [6, 5, 4, 3, 2, 1, 0])
assert(sort_array(array: [2, 1]) == [1, 2])
assert(sort_array(array: [15, 42, 87, 32, 11, 0]) == [0, 11, 15, 32, 42, 87])
assert(sort_array(array: [21, 14, 23, 11]) == [23, 21, 14, 11])



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



// ----------- problem HumanEval_88_sort_array, completion 84 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpink_5xr1.swift:19:50: error: unary operator cannot be separated from its operand
    let sorted = array.sorted(by: sum % 2 == 0 ? > : <)
                                                 ^~
                                                  
/tmp/tmpink_5xr1.swift:19:52: error: expected expression after '?' in ternary expression
    let sorted = array.sorted(by: sum % 2 == 0 ? > : <)
                                                   ^
/tmp/tmpink_5xr1.swift:18:9: warning: initialization of immutable value 'sum' was never used; consider replacing with assignment to '_' or removing it
    let sum = array[0] + array[array.count - 1]
    ~~~~^~~
    _

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
    guard array.count > 1 else { return array }
    let sum = array[0] + array[array.count - 1]
    let sorted = array.sorted(by: sum % 2 == 0 ? > : <)
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
            
assert(sort_array(array: [] as [Int]) == [] as [Int])
assert(sort_array(array: [5]) == [5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5]) == [0, 1, 2, 3, 4, 5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5, 6]) == [6, 5, 4, 3, 2, 1, 0])
assert(sort_array(array: [2, 1]) == [1, 2])
assert(sort_array(array: [15, 42, 87, 32, 11, 0]) == [0, 11, 15, 32, 42, 87])
assert(sort_array(array: [21, 14, 23, 11]) == [23, 21, 14, 11])



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



// ----------- problem HumanEval_88_sort_array, completion 121 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpink_5xr1.swift:19:50: error: unary operator cannot be separated from its operand
    let sorted = array.sorted(by: sum % 2 == 0 ? > : <)
                                                 ^~
                                                  
/tmp/tmpink_5xr1.swift:19:52: error: expected expression after '?' in ternary expression
    let sorted = array.sorted(by: sum % 2 == 0 ? > : <)
                                                   ^
/tmp/tmpink_5xr1.swift:18:9: warning: initialization of immutable value 'sum' was never used; consider replacing with assignment to '_' or removing it
    let sum = array[0] + array[array.count - 1]
    ~~~~^~~
    _

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
    guard array.count > 1 else { return array }
    let sum = array[0] + array[array.count - 1]
    let sorted = array.sorted(by: sum % 2 == 0 ? > : <)
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
            
assert(sort_array(array: [] as [Int]) == [] as [Int])
assert(sort_array(array: [5]) == [5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5]) == [0, 1, 2, 3, 4, 5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5, 6]) == [6, 5, 4, 3, 2, 1, 0])
assert(sort_array(array: [2, 1]) == [1, 2])
assert(sort_array(array: [15, 42, 87, 32, 11, 0]) == [0, 11, 15, 32, 42, 87])
assert(sort_array(array: [21, 14, 23, 11]) == [23, 21, 14, 11])



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



// ----------- problem HumanEval_46_fib4, completion 136 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpr2f7u8oj.swift:59:9: error: keyword 'as' cannot be used as an identifier here
    var as = 0
        ^
/tmp/tmpr2f7u8oj.swift:59:9: note: if this name is unavoidable, use backticks to escape it
    var as = 0
        ^~
        `as`
/tmp/tmpr2f7u8oj.swift:16:9: warning: initialization of variable 'a' was never used; consider replacing with assignment to '_' or removing it
    var a = 0
    ~~~~^
    _
/tmp/tmpr2f7u8oj.swift:17:9: warning: initialization of variable 'b' was never used; consider replacing with assignment to '_' or removing it
    var b = 0
    ~~~~^
    _
/tmp/tmpr2f7u8oj.swift:18:9: warning: initialization of variable 'c' was never used; consider replacing with assignment to '_' or removing it
    var c = 2
    ~~~~^
    _
/tmp/tmpr2f7u8oj.swift:19:9: warning: initialization of variable 'd' was never used; consider replacing with assignment to '_' or removing it
    var d = 0
    ~~~~^
    _
/tmp/tmpr2f7u8oj.swift:20:9: warning: initialization of variable 'e' was never used; consider replacing with assignment to '_' or removing it
    var e = 0
    ~~~~^
    _
/tmp/tmpr2f7u8oj.swift:21:9: warning: initialization of variable 'f' was never used; consider replacing with assignment to '_' or removing it
    var f = 0
    ~~~~^
    _
/tmp/tmpr2f7u8oj.swift:22:9: warning: initialization of variable 'g' was never used; consider replacing with assignment to '_' or removing it
    var g = 0
    ~~~~^
    _
/tmp/tmpr2f7u8oj.swift:23:9: warning: initialization of variable 'h' was never used; consider replacing with assignment to '_' or removing it
    var h = 0
    ~~~~^
    _
/tmp/tmpr2f7u8oj.swift:24:9: warning: initialization of variable 'i' was never used; consider replacing with assignment to '_' or removing it
    var i = 0
    ~~~~^
    _
/tmp/tmpr2f7u8oj.swift:25:9: warning: initialization of variable 'j' was never used; consider replacing with assignment to '_' or removing it
    var j = 0
    ~~~~^
    _
/tmp/tmpr2f7u8oj.swift:26:9: warning: initialization of variable 'k' was never used; co
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
    var a = 0
    var b = 0
    var c = 2
    var d = 0
    var e = 0
    var f = 0
    var g = 0
    var h = 0
    var i = 0
    var j = 0
    var k = 0
    var l = 0
    var m = 0
    var o = 0
    var p = 0
    var q = 0
    var r = 0
    var s = 0
    var t = 0
    var u = 0
    var v = 0
    var w = 0
    var x = 0
    var y = 0
    var z = 0
    var aa = 0
    var ab = 0
    var ac = 0
    var ad = 0
    var ae = 0
    var af = 0
    var ag = 0
    var ah = 0
    var ai = 0
    var aj = 0
    var ak = 0
    var al = 0
    var am = 0
    var an = 0
    var ao = 0
    var ap = 0
    var aq = 0
    var ar = 0
    var as = 0
    var at = 0
    var au = 0
    var av = 0
    var aw = 0
    var ax = 0
    var ay = 0
    var az = 0
    var ba = 0
    var bb = 0
    var bc = 0
    var bd = 0
    var be = 0
    var bf = 0
    var bg = 0
    var bh = 0
    var bi = 0
    var bj = 0
    var bk = 0
    var bl = 0
    var bm = 0
    var bn = 0
    var bo = 0
    var bp = 0
    var bq = 0
    var br = 0
    var bs = 0
    var bt = 0
    var bu = 0
    var bv = 0
    var bw = 0
    var bx = 0
    var by = 0
    var bz = 0
    var ca = 0
    var cb = 0
    var cc = 0
    var cd = 0
   
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_46_fib4, completion 149 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3h8s25_n.swift:60:9: error: keyword 'as' cannot be used as an identifier here
    var as = 0
        ^
/tmp/tmp3h8s25_n.swift:60:9: note: if this name is unavoidable, use backticks to escape it
    var as = 0
        ^~
        `as`
/tmp/tmp3h8s25_n.swift:16:9: warning: initialization of variable 'a' was never used; consider replacing with assignment to '_' or removing it
    var a = 0
    ~~~~^
    _
/tmp/tmp3h8s25_n.swift:17:9: warning: initialization of variable 'b' was never used; consider replacing with assignment to '_' or removing it
    var b = 0
    ~~~~^
    _
/tmp/tmp3h8s25_n.swift:18:9: warning: initialization of variable 'c' was never used; consider replacing with assignment to '_' or removing it
    var c = 2
    ~~~~^
    _
/tmp/tmp3h8s25_n.swift:19:9: warning: initialization of variable 'd' was never used; consider replacing with assignment to '_' or removing it
    var d = 0
    ~~~~^
    _
/tmp/tmp3h8s25_n.swift:20:9: warning: initialization of variable 'e' was never used; consider replacing with assignment to '_' or removing it
    var e = 0
    ~~~~^
    _
/tmp/tmp3h8s25_n.swift:21:9: warning: initialization of variable 'f' was never used; consider replacing with assignment to '_' or removing it
    var f = 0
    ~~~~^
    _
/tmp/tmp3h8s25_n.swift:22:9: warning: initialization of variable 'g' was never used; consider replacing with assignment to '_' or removing it
    var g = 0
    ~~~~^
    _
/tmp/tmp3h8s25_n.swift:23:9: warning: initialization of variable 'h' was never used; consider replacing with assignment to '_' or removing it
    var h = 0
    ~~~~^
    _
/tmp/tmp3h8s25_n.swift:24:9: warning: initialization of variable 'i' was never used; consider replacing with assignment to '_' or removing it
    var i = 0
    ~~~~^
    _
/tmp/tmp3h8s25_n.swift:25:9: warning: initialization of variable 'j' was never used; consider replacing with assignment to '_' or removing it
    var j = 0
    ~~~~^
    _
/tmp/tmp3h8s25_n.swift:26:9: warning: initialization of variable 'k' was never used; co
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
    var a = 0
    var b = 0
    var c = 2
    var d = 0
    var e = 0
    var f = 0
    var g = 0
    var h = 0
    var i = 0
    var j = 0
    var k = 0
    var l = 0
    var m = 0
    var n = 0
    var o = 0
    var p = 0
    var q = 0
    var r = 0
    var s = 0
    var t = 0
    var u = 0
    var v = 0
    var w = 0
    var x = 0
    var y = 0
    var z = 0
    var aa = 0
    var ab = 0
    var ac = 0
    var ad = 0
    var ae = 0
    var af = 0
    var ag = 0
    var ah = 0
    var ai = 0
    var aj = 0
    var ak = 0
    var al = 0
    var am = 0
    var an = 0
    var ao = 0
    var ap = 0
    var aq = 0
    var ar = 0
    var as = 0
    var at = 0
    var au = 0
    var av = 0
    var aw = 0
    var ax = 0
    var ay = 0
    var az = 0
    var ba = 0
    var bb = 0
    var bc = 0
    var bd = 0
    var be = 0
    var bf = 0
    var bg = 0
    var bh = 0
    var bi = 0
    var bj = 0
    var bk = 0
    var bl = 0
    var bm = 0
    var bn = 0
    var bo = 0
    var bp = 0
    var bq = 0
    var br = 0
    var bs = 0
    var bt = 0
    var bu = 0
    var bv = 0
    var bw = 0
    var bx = 0
    var by = 0
    var bz = 0
    var ca = 0
    var cb = 0
    var cc = 0
   
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_88_sort_array, completion 128 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpdk7s3c68.swift:19:55: error: unary operator cannot be separated from its operand
    let sortedArray = array.sorted(by: sum % 2 == 0 ? > : <)
                                                      ^~
                                                       
/tmp/tmpdk7s3c68.swift:19:57: error: expected expression after '?' in ternary expression
    let sortedArray = array.sorted(by: sum % 2 == 0 ? > : <)
                                                        ^
/tmp/tmpdk7s3c68.swift:18:9: warning: initialization of immutable value 'sum' was never used; consider replacing with assignment to '_' or removing it
    let sum = array[0] + array[array.count - 1]
    ~~~~^~~
    _

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
    guard array.count > 0 else { return array }
    let sum = array[0] + array[array.count - 1]
    let sortedArray = array.sorted(by: sum % 2 == 0 ? > : <)
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



// ----------- problem HumanEval_88_sort_array, completion 10 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpink_5xr1.swift:19:50: error: unary operator cannot be separated from its operand
    let sorted = array.sorted(by: sum % 2 == 0 ? > : <)
                                                 ^~
                                                  
/tmp/tmpink_5xr1.swift:19:52: error: expected expression after '?' in ternary expression
    let sorted = array.sorted(by: sum % 2 == 0 ? > : <)
                                                   ^
/tmp/tmpink_5xr1.swift:18:9: warning: initialization of immutable value 'sum' was never used; consider replacing with assignment to '_' or removing it
    let sum = array[0] + array[array.count - 1]
    ~~~~^~~
    _

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
    guard array.count > 1 else { return array }
    let sum = array[0] + array[array.count - 1]
    let sorted = array.sorted(by: sum % 2 == 0 ? > : <)
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
            
assert(sort_array(array: [] as [Int]) == [] as [Int])
assert(sort_array(array: [5]) == [5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5]) == [0, 1, 2, 3, 4, 5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5, 6]) == [6, 5, 4, 3, 2, 1, 0])
assert(sort_array(array: [2, 1]) == [1, 2])
assert(sort_array(array: [15, 42, 87, 32, 11, 0]) == [0, 11, 15, 32, 42, 87])
assert(sort_array(array: [21, 14, 23, 11]) == [23, 21, 14, 11])



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



// ----------- problem HumanEval_46_fib4, completion 59 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpr2f7u8oj.swift:59:9: error: keyword 'as' cannot be used as an identifier here
    var as = 0
        ^
/tmp/tmpr2f7u8oj.swift:59:9: note: if this name is unavoidable, use backticks to escape it
    var as = 0
        ^~
        `as`
/tmp/tmpr2f7u8oj.swift:16:9: warning: initialization of variable 'a' was never used; consider replacing with assignment to '_' or removing it
    var a = 0
    ~~~~^
    _
/tmp/tmpr2f7u8oj.swift:17:9: warning: initialization of variable 'b' was never used; consider replacing with assignment to '_' or removing it
    var b = 0
    ~~~~^
    _
/tmp/tmpr2f7u8oj.swift:18:9: warning: initialization of variable 'c' was never used; consider replacing with assignment to '_' or removing it
    var c = 2
    ~~~~^
    _
/tmp/tmpr2f7u8oj.swift:19:9: warning: initialization of variable 'd' was never used; consider replacing with assignment to '_' or removing it
    var d = 0
    ~~~~^
    _
/tmp/tmpr2f7u8oj.swift:20:9: warning: initialization of variable 'e' was never used; consider replacing with assignment to '_' or removing it
    var e = 0
    ~~~~^
    _
/tmp/tmpr2f7u8oj.swift:21:9: warning: initialization of variable 'f' was never used; consider replacing with assignment to '_' or removing it
    var f = 0
    ~~~~^
    _
/tmp/tmpr2f7u8oj.swift:22:9: warning: initialization of variable 'g' was never used; consider replacing with assignment to '_' or removing it
    var g = 0
    ~~~~^
    _
/tmp/tmpr2f7u8oj.swift:23:9: warning: initialization of variable 'h' was never used; consider replacing with assignment to '_' or removing it
    var h = 0
    ~~~~^
    _
/tmp/tmpr2f7u8oj.swift:24:9: warning: initialization of variable 'i' was never used; consider replacing with assignment to '_' or removing it
    var i = 0
    ~~~~^
    _
/tmp/tmpr2f7u8oj.swift:25:9: warning: initialization of variable 'j' was never used; consider replacing with assignment to '_' or removing it
    var j = 0
    ~~~~^
    _
/tmp/tmpr2f7u8oj.swift:26:9: warning: initialization of variable 'k' was never used; co
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
    var a = 0
    var b = 0
    var c = 2
    var d = 0
    var e = 0
    var f = 0
    var g = 0
    var h = 0
    var i = 0
    var j = 0
    var k = 0
    var l = 0
    var m = 0
    var o = 0
    var p = 0
    var q = 0
    var r = 0
    var s = 0
    var t = 0
    var u = 0
    var v = 0
    var w = 0
    var x = 0
    var y = 0
    var z = 0
    var aa = 0
    var ab = 0
    var ac = 0
    var ad = 0
    var ae = 0
    var af = 0
    var ag = 0
    var ah = 0
    var ai = 0
    var aj = 0
    var ak = 0
    var al = 0
    var am = 0
    var an = 0
    var ao = 0
    var ap = 0
    var aq = 0
    var ar = 0
    var as = 0
    var at = 0
    var au = 0
    var av = 0
    var aw = 0
    var ax = 0
    var ay = 0
    var az = 0
    var ba = 0
    var bb = 0
    var bc = 0
    var bd = 0
    var be = 0
    var bf = 0
    var bg = 0
    var bh = 0
    var bi = 0
    var bj = 0
    var bk = 0
    var bl = 0
    var bm = 0
    var bn = 0
    var bo = 0
    var bp = 0
    var bq = 0
    var br = 0
    var bs = 0
    var bt = 0
    var bu = 0
    var bv = 0
    var bw = 0
    var bx = 0
    var by = 0
    var bz = 0
    var ca = 0
    var cb = 0
    var cc = 0
    var cd = 0
   
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_77_iscube, completion 157 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1rc8m___.swift:19:1322: error: unary operator cannot be separated from its operand
    return a == 0 || a == 1 || a == -1 || a == 64 || a == -64 || a == 125 || a == -125 || a == 216 || a == -216 || a == 343 || a == -343 || a == 512 || a == -512 || a == 729 || a == -729 || a == 1000 || a == -1000 || a == 1331 || a == -1331 || a == 1728 || a == -1728 || a == 2197 || a == -2197 || a == 2744 || a == -2744 || a == 3375 || a == -3375 || a == 4096 || a == -4096 || a == 4913 || a == -4913 || a == 5832 || a == -5832 || a == 6859 || a == -6859 || a == 8000 || a == -8000 || a == 9261 || a == -9261 || a == 10648 || a == -10648 || a == 12167 || a == -12167 || a == 13824 || a == -13824 || a == 15625 || a == -15625 || a == 17576 || a == -17576 || a == 19683 || a == -19683 || a == 21952 || a == -21952 || a == 24389 || a == -24389 || a == 27000 || a == -27000 || a == 29791 || a == -29791 || a == 32768 || a == -32768 || a == 35937 || a == -35937 || a == 39304 || a == -39304 || a == 42875 || a == -42875 || a == 46656 || a == -46656 || a == 50653 || a == -50653 || a == 54872 || a == -54872 || a == 59319 || a == -59319 || a == 64000 || a == -64000 || a == 68921 || a == -68921 || a == 74088 || a == -74088 || a == 79507 || a == -79507 || a == 85184 || a == -85184 || a == 91125 || a == -91125 || a == 97336 || a == -97336 || a == 103823 || a == -103823 || a == 110592 || a == -110592 || a == 117649 || a == -
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
*/
/* stdout = 

*/


/// Write a function that takes an integer a and returns true 
/// if this ingeger is a cube of some integer number.
/// Note: you may assume the input is always valid.
/// Examples:
/// >>> iscube(a: 1)
/// true
/// >>> iscube(a: 2)
/// false
/// >>> iscube(a: -1)
/// true
/// >>> iscube(a: 64)
/// true
/// >>> iscube(a: 0)
/// true
/// >>> iscube(a: 180)
/// false
func iscube(a: Int) -> Bool {
    return a == 0 || a == 1 || a == -1 || a == 64 || a == -64 || a == 125 || a == -125 || a == 216 || a == -216 || a == 343 || a == -343 || a == 512 || a == -512 || a == 729 || a == -729 || a == 1000 || a == -1000 || a == 1331 || a == -1331 || a == 1728 || a == -1728 || a == 2197 || a == -2197 || a == 2744 || a == -2744 || a == 3375 || a == -3375 || a == 4096 || a == -4096 || a == 4913 || a == -4913 || a == 5832 || a == -5832 || a == 6859 || a == -6859 || a == 8000 || a == -8000 || a == 9261 || a == -9261 || a == 10648 || a == -10648 || a == 12167 || a == -12167 || a == 13824 || a == -13824 || a == 15625 || a == -15625 || a == 17576 || a == -17576 || a == 19683 || a == -19683 || a == 21952 || a == -21952 || a == 24389 || a == -24389 || a == 27000 || a == -27000 || a == 29791 || a == -29791 || a == 32768 || a == -32768 || a == 35937 || a == -35937 || a == 39304 || a == -39304 || a == 42875 || a == -42875 || a == 46656 || a == -46656 || a == 50653 || a == -50653 || a == 54872 || a == -54872 || a == 59319 || a == -59319 || a == 64000 || a == -64000 || a == 68921 || a == -68921 || a == 74088 || a == -74088 || a == 79507 || a == -79507 || a == 85184 || a == -85184 || a == 91125 || a == -91125 || a == 97336 || a == -97336 || a == 103823 || a == -103823 || a == 110592 || a == -110592 || a == 117649 || a == -
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(iscube(a: 1) == true)
assert(iscube(a: 2) == false)
assert(iscube(a: -1) == true)
assert(iscube(a: 64) == true)
assert(iscube(a: 180) == false)
assert(iscube(a: 1000) == true)
assert(iscube(a: 0) == true)
assert(iscube(a: 1729) == false)



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



// ----------- problem HumanEval_88_sort_array, completion 97 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpink_5xr1.swift:19:50: error: unary operator cannot be separated from its operand
    let sorted = array.sorted(by: sum % 2 == 0 ? > : <)
                                                 ^~
                                                  
/tmp/tmpink_5xr1.swift:19:52: error: expected expression after '?' in ternary expression
    let sorted = array.sorted(by: sum % 2 == 0 ? > : <)
                                                   ^
/tmp/tmpink_5xr1.swift:18:9: warning: initialization of immutable value 'sum' was never used; consider replacing with assignment to '_' or removing it
    let sum = array[0] + array[array.count - 1]
    ~~~~^~~
    _

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
    guard array.count > 1 else { return array }
    let sum = array[0] + array[array.count - 1]
    let sorted = array.sorted(by: sum % 2 == 0 ? > : <)
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
            
assert(sort_array(array: [] as [Int]) == [] as [Int])
assert(sort_array(array: [5]) == [5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5]) == [0, 1, 2, 3, 4, 5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5, 6]) == [6, 5, 4, 3, 2, 1, 0])
assert(sort_array(array: [2, 1]) == [1, 2])
assert(sort_array(array: [15, 42, 87, 32, 11, 0]) == [0, 11, 15, 32, 42, 87])
assert(sort_array(array: [21, 14, 23, 11]) == [23, 21, 14, 11])



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



// ----------- problem HumanEval_88_sort_array, completion 153 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpink_5xr1.swift:19:50: error: unary operator cannot be separated from its operand
    let sorted = array.sorted(by: sum % 2 == 0 ? > : <)
                                                 ^~
                                                  
/tmp/tmpink_5xr1.swift:19:52: error: expected expression after '?' in ternary expression
    let sorted = array.sorted(by: sum % 2 == 0 ? > : <)
                                                   ^
/tmp/tmpink_5xr1.swift:18:9: warning: initialization of immutable value 'sum' was never used; consider replacing with assignment to '_' or removing it
    let sum = array[0] + array[array.count - 1]
    ~~~~^~~
    _

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
    guard array.count > 1 else { return array }
    let sum = array[0] + array[array.count - 1]
    let sorted = array.sorted(by: sum % 2 == 0 ? > : <)
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
            
assert(sort_array(array: [] as [Int]) == [] as [Int])
assert(sort_array(array: [5]) == [5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5]) == [0, 1, 2, 3, 4, 5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5, 6]) == [6, 5, 4, 3, 2, 1, 0])
assert(sort_array(array: [2, 1]) == [1, 2])
assert(sort_array(array: [15, 42, 87, 32, 11, 0]) == [0, 11, 15, 32, 42, 87])
assert(sort_array(array: [21, 14, 23, 11]) == [23, 21, 14, 11])



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



// ----------- problem HumanEval_88_sort_array, completion 95 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpink_5xr1.swift:19:50: error: unary operator cannot be separated from its operand
    let sorted = array.sorted(by: sum % 2 == 0 ? > : <)
                                                 ^~
                                                  
/tmp/tmpink_5xr1.swift:19:52: error: expected expression after '?' in ternary expression
    let sorted = array.sorted(by: sum % 2 == 0 ? > : <)
                                                   ^
/tmp/tmpink_5xr1.swift:18:9: warning: initialization of immutable value 'sum' was never used; consider replacing with assignment to '_' or removing it
    let sum = array[0] + array[array.count - 1]
    ~~~~^~~
    _

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
    guard array.count > 1 else { return array }
    let sum = array[0] + array[array.count - 1]
    let sorted = array.sorted(by: sum % 2 == 0 ? > : <)
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
            
assert(sort_array(array: [] as [Int]) == [] as [Int])
assert(sort_array(array: [5]) == [5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5]) == [0, 1, 2, 3, 4, 5])
assert(sort_array(array: [2, 4, 3, 0, 1, 5, 6]) == [6, 5, 4, 3, 2, 1, 0])
assert(sort_array(array: [2, 1]) == [1, 2])
assert(sort_array(array: [15, 42, 87, 32, 11, 0]) == [0, 11, 15, 32, 42, 87])
assert(sort_array(array: [21, 14, 23, 11]) == [23, 21, 14, 11])



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



