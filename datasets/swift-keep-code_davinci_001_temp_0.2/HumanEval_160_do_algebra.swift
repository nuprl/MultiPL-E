
// Given two lists operator, and operand. The first list has basic algebra operations, and 
// the second list is a list of integers. Use the two given lists to build the algebric 
// expression and return the evaluation of this expression.
// The basic algebra operations:
// Addition ( + ) 
// Subtraction ( - ) 
// Multiplication ( * ) 
// Floor division ( // ) 
// Exponentiation ( ** ) 
// Example:
// operator['+', '*', '-']
// array = [2, 3, 4, 5]
// result = 2 + 3 * 4 - 5
// => result = 9
// Note:
// The length of operator list is equal to the length of operand list minus one.
// Operand is a list of of non-negative integers.
// Operator list has at least one operator, and operand list has at least two operands.
func do_algebra(operator: [String], operand: [Int]) -> Int {
    var result = operand[0]
    for i in 1..<operand.count {
        switch operator[i - 1] {
        case "+":
            result += operand[i]
        case "-":
            result -= operand[i]
        case "*":
            result *= operand[i]
        case "//":
            result /= operand[i]
        case "**":
            result = Int(pow(Double(result), Double(operand[i])))
        default:
            break
        }
    }
    return result

}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(do_algebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
assert(do_algebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
assert(do_algebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)