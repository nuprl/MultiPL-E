// ----------- problem HumanEval_151_double_the_difference, completion 184 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6h0y0yk_.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(num * num)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 120 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpfb5ez46v.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^
/tmp/tmpfb5ez46v.swift:18:28: error: cannot find 'pow' in scope
                sum += Int(pow(num, 2))
                           ^~~

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(pow(num, 2))
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 41 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpzdcasvf9.swift:17:18: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if i % 2 == 1 {
                 ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 {
            if i % 2 == 1 {
                sum += Int(i * i)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 51 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6h0y0yk_.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(num * num)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 89 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6h0y0yk_.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(num * num)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 110 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6h0y0yk_.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(num * num)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 67 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6h0y0yk_.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(num * num)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 138 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6h0y0yk_.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(num * num)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 173 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6h0y0yk_.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(num * num)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 14 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp922wmada.swift:16:68: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
                                                                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
            sum += Int(i * i)
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 168 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6h0y0yk_.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(num * num)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 181 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6h0y0yk_.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(num * num)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 17 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpfb5ez46v.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^
/tmp/tmpfb5ez46v.swift:18:28: error: cannot find 'pow' in scope
                sum += Int(pow(num, 2))
                           ^~~

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(pow(num, 2))
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 140 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp922wmada.swift:16:68: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
                                                                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
            sum += Int(i * i)
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 69 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpzdcasvf9.swift:17:18: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if i % 2 == 1 {
                 ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 {
            if i % 2 == 1 {
                sum += Int(i * i)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 194 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpc45cu18h.swift:16:74: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 && num % 2 != 0 {
                                                                         ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^
/tmp/tmpc45cu18h.swift:17:24: error: cannot find 'pow' in scope
            sum += Int(pow(num, 2))
                       ^~~

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 && num % 2 != 0 {
            sum += Int(pow(num, 2))
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 94 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp922wmada.swift:16:68: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
                                                                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
            sum += Int(i * i)
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 151 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3rlu5biv.swift:16:77: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
        if item > 0 && item.truncatingRemainder(dividingBy: 1) == 0 && item % 2 != 0 {
                                                                            ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for item in lst {
        if item > 0 && item.truncatingRemainder(dividingBy: 1) == 0 && item % 2 != 0 {
            sum += Int(item * item)
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 163 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6h0y0yk_.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(num * num)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 5 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpzdcasvf9.swift:17:18: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if i % 2 == 1 {
                 ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 {
            if i % 2 == 1 {
                sum += Int(i * i)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 192 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpfb5ez46v.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^
/tmp/tmpfb5ez46v.swift:18:28: error: cannot find 'pow' in scope
                sum += Int(pow(num, 2))
                           ^~~

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(pow(num, 2))
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 129 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpzdcasvf9.swift:17:18: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if i % 2 == 1 {
                 ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 {
            if i % 2 == 1 {
                sum += Int(i * i)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 150 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpc45cu18h.swift:16:74: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 && num % 2 != 0 {
                                                                         ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^
/tmp/tmpc45cu18h.swift:17:24: error: cannot find 'pow' in scope
            sum += Int(pow(num, 2))
                       ^~~

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 && num % 2 != 0 {
            sum += Int(pow(num, 2))
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 125 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp922wmada.swift:16:68: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
                                                                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
            sum += Int(i * i)
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 105 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpfb5ez46v.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^
/tmp/tmpfb5ez46v.swift:18:28: error: cannot find 'pow' in scope
                sum += Int(pow(num, 2))
                           ^~~

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(pow(num, 2))
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 45 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpc45cu18h.swift:16:74: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 && num % 2 != 0 {
                                                                         ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^
/tmp/tmpc45cu18h.swift:17:24: error: cannot find 'pow' in scope
            sum += Int(pow(num, 2))
                       ^~~

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 && num % 2 != 0 {
            sum += Int(pow(num, 2))
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 0 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpc45cu18h.swift:16:74: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 && num % 2 != 0 {
                                                                         ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^
/tmp/tmpc45cu18h.swift:17:24: error: cannot find 'pow' in scope
            sum += Int(pow(num, 2))
                       ^~~

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 && num % 2 != 0 {
            sum += Int(pow(num, 2))
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 134 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6h0y0yk_.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(num * num)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 61 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpc45cu18h.swift:16:74: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 && num % 2 != 0 {
                                                                         ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^
/tmp/tmpc45cu18h.swift:17:24: error: cannot find 'pow' in scope
            sum += Int(pow(num, 2))
                       ^~~

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 && num % 2 != 0 {
            sum += Int(pow(num, 2))
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 23 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6h0y0yk_.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(num * num)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 59 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6h0y0yk_.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(num * num)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 95 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpzdcasvf9.swift:17:18: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if i % 2 == 1 {
                 ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 {
            if i % 2 == 1 {
                sum += Int(i * i)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 37 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp922wmada.swift:16:68: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
                                                                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
            sum += Int(i * i)
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 115 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpfb5ez46v.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^
/tmp/tmpfb5ez46v.swift:18:28: error: cannot find 'pow' in scope
                sum += Int(pow(num, 2))
                           ^~~

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(pow(num, 2))
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 56 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6h0y0yk_.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(num * num)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 92 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpzdcasvf9.swift:17:18: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if i % 2 == 1 {
                 ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 {
            if i % 2 == 1 {
                sum += Int(i * i)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 93 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp922wmada.swift:16:68: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
                                                                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
            sum += Int(i * i)
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 76 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpzdcasvf9.swift:17:18: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if i % 2 == 1 {
                 ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 {
            if i % 2 == 1 {
                sum += Int(i * i)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 190 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp922wmada.swift:16:68: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
                                                                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
            sum += Int(i * i)
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 160 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6h0y0yk_.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(num * num)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 2 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpzdcasvf9.swift:17:18: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if i % 2 == 1 {
                 ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 {
            if i % 2 == 1 {
                sum += Int(i * i)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 116 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpfb5ez46v.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^
/tmp/tmpfb5ez46v.swift:18:28: error: cannot find 'pow' in scope
                sum += Int(pow(num, 2))
                           ^~~

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(pow(num, 2))
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 36 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp922wmada.swift:16:68: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
                                                                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
            sum += Int(i * i)
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 27 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpzdcasvf9.swift:17:18: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if i % 2 == 1 {
                 ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 {
            if i % 2 == 1 {
                sum += Int(i * i)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 166 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6h0y0yk_.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(num * num)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 87 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6h0y0yk_.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(num * num)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 63 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp922wmada.swift:16:68: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
                                                                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
            sum += Int(i * i)
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 128 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpzdcasvf9.swift:17:18: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if i % 2 == 1 {
                 ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 {
            if i % 2 == 1 {
                sum += Int(i * i)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 154 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6h0y0yk_.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(num * num)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 158 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpzdcasvf9.swift:17:18: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if i % 2 == 1 {
                 ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 {
            if i % 2 == 1 {
                sum += Int(i * i)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 34 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpc45cu18h.swift:16:74: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 && num % 2 != 0 {
                                                                         ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^
/tmp/tmpc45cu18h.swift:17:24: error: cannot find 'pow' in scope
            sum += Int(pow(num, 2))
                       ^~~

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 && num % 2 != 0 {
            sum += Int(pow(num, 2))
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 55 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6h0y0yk_.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(num * num)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 75 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpc45cu18h.swift:16:74: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 && num % 2 != 0 {
                                                                         ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^
/tmp/tmpc45cu18h.swift:17:24: error: cannot find 'pow' in scope
            sum += Int(pow(num, 2))
                       ^~~

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 && num % 2 != 0 {
            sum += Int(pow(num, 2))
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 19 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp922wmada.swift:16:68: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
                                                                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
            sum += Int(i * i)
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 157 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp922wmada.swift:16:68: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
                                                                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
            sum += Int(i * i)
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 12 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpfb5ez46v.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^
/tmp/tmpfb5ez46v.swift:18:28: error: cannot find 'pow' in scope
                sum += Int(pow(num, 2))
                           ^~~

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(pow(num, 2))
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 172 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp922wmada.swift:16:68: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
                                                                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
            sum += Int(i * i)
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 42 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp57cieyil.swift:16:75: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
        if (num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 && num % 2 != 0) {
                                                                          ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^
/tmp/tmp57cieyil.swift:17:24: error: cannot find 'pow' in scope
            sum += Int(pow(num, 2))
                       ^~~

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if (num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 && num % 2 != 0) {
            sum += Int(pow(num, 2))
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 170 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6h0y0yk_.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(num * num)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 114 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpcfrji_86.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(num) * Int(num)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 127 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp922wmada.swift:16:68: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
                                                                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for i in lst {
        if i > 0 && i.truncatingRemainder(dividingBy: 1) == 0 && i % 2 != 0 {
            sum += Int(i * i)
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 82 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6h0y0yk_.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(num * num)
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



// ----------- problem HumanEval_151_double_the_difference, completion 11 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpfb5ez46v.swift:17:20: error: '%' is unavailable: For floating point numbers use truncatingRemainder instead
            if num % 2 == 1 {
                   ^
Swift.%:2:13: note: '%' has been explicitly marked unavailable here
public func % <T>(lhs: T, rhs: T) -> T where T : BinaryFloatingPoint
            ^
/tmp/tmpfb5ez46v.swift:18:28: error: cannot find 'pow' in scope
                sum += Int(pow(num, 2))
                           ^~~

*/
/* stdout = 

*/


/// Given an array of numbers, return the sum of squares of the numbers
/// in the array that are odd. Ignore numbers that are negative or not integers.
/// >>> double_the_difference(lst: [1, 3, 2, 0])
/// 10
/// >>> double_the_difference(lst: [-1, -2, 0])
/// 0
/// >>> double_the_difference(lst: [9, -2])
/// 81
/// >>> double_the_difference(lst: [0])
/// 0
/// If the input array is empty, return 0.
func double_the_difference(lst: [Double]) -> Int {
    var sum = 0
    for num in lst {
        if num > 0 && num.truncatingRemainder(dividingBy: 1) == 0 {
            if num % 2 == 1 {
                sum += Int(pow(num, 2))
            }
        }
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
            
assert(double_the_difference(lst: [] as [Double]) == 0)
assert(double_the_difference(lst: [5.0, 4.0]) == 25)
assert(double_the_difference(lst: [0.1, 0.2, 0.3]) == 0)
assert(double_the_difference(lst: [-10.0, -20.0, -30.0]) == 0)
assert(double_the_difference(lst: [-1.0, -2.0, 8.0]) == 0)
assert(double_the_difference(lst: [0.2, 3.0, 5.0]) == 34)
assert(double_the_difference(lst: [-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)



