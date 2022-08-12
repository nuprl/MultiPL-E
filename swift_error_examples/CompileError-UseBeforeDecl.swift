// ----------- problem HumanEval_99_closest_integer, completion 123 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp7yy15cxl.swift:17:21: error: use of local variable 'floor' before its declaration
    let floor = Int(floor(value))
                    ^
/tmp/tmp7yy15cxl.swift:17:9: note: 'floor' declared here
    let floor = Int(floor(value))
        ^
/tmp/tmp7yy15cxl.swift:18:20: error: use of local variable 'ceil' before its declaration
    let ceil = Int(ceil(value))
                   ^
/tmp/tmp7yy15cxl.swift:18:9: note: 'ceil' declared here
    let ceil = Int(ceil(value))
        ^

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
    let value = Double(value)!
    let floor = Int(floor(value))
    let ceil = Int(ceil(value))
    if value - Double(floor) < Double(ceil) - value {
        return floor
    } else {
        return ceil
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
            
assert(closest_integer(value: "10") == 10)
assert(closest_integer(value: "14.5") == 15)
assert(closest_integer(value: "-15.5") == -16)
assert(closest_integer(value: "15.3") == 15)
assert(closest_integer(value: "0") == 0)



// ----------- problem HumanEval_99_closest_integer, completion 102 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplin0g9bp.swift:17:21: error: use of local variable 'floor' before its declaration
    let floor = Int(floor(number))
                    ^
/tmp/tmplin0g9bp.swift:17:9: note: 'floor' declared here
    let floor = Int(floor(number))
        ^
/tmp/tmplin0g9bp.swift:18:20: error: use of local variable 'ceil' before its declaration
    let ceil = Int(ceil(number))
                   ^
/tmp/tmplin0g9bp.swift:18:9: note: 'ceil' declared here
    let ceil = Int(ceil(number))
        ^

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
    let number = Double(value)!
    let floor = Int(floor(number))
    let ceil = Int(ceil(number))
    let diffFloor = abs(number - Double(floor))
    let diffCeil = abs(number - Double(ceil))
    if diffFloor < diffCeil {
        return floor
    } else {
        return ceil
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
            
assert(closest_integer(value: "10") == 10)
assert(closest_integer(value: "14.5") == 15)
assert(closest_integer(value: "-15.5") == -16)
assert(closest_integer(value: "15.3") == 15)
assert(closest_integer(value: "0") == 0)



// ----------- problem HumanEval_99_closest_integer, completion 152 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpz5m7rozs.swift:17:21: error: use of local variable 'floor' before its declaration
    let floor = Int(floor(number))
                    ^
/tmp/tmpz5m7rozs.swift:17:9: note: 'floor' declared here
    let floor = Int(floor(number))
        ^
/tmp/tmpz5m7rozs.swift:18:20: error: use of local variable 'ceil' before its declaration
    let ceil = Int(ceil(number))
                   ^
/tmp/tmpz5m7rozs.swift:18:9: note: 'ceil' declared here
    let ceil = Int(ceil(number))
        ^

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
    let number = Double(value)!
    let floor = Int(floor(number))
    let ceil = Int(ceil(number))
    if number - Double(floor) < 0.5 {
        return floor
    } else {
        return ceil
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
            
assert(closest_integer(value: "10") == 10)
assert(closest_integer(value: "14.5") == 15)
assert(closest_integer(value: "-15.5") == -16)
assert(closest_integer(value: "15.3") == 15)
assert(closest_integer(value: "0") == 0)



// ----------- problem HumanEval_99_closest_integer, completion 45 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp7yy15cxl.swift:17:21: error: use of local variable 'floor' before its declaration
    let floor = Int(floor(value))
                    ^
/tmp/tmp7yy15cxl.swift:17:9: note: 'floor' declared here
    let floor = Int(floor(value))
        ^
/tmp/tmp7yy15cxl.swift:18:20: error: use of local variable 'ceil' before its declaration
    let ceil = Int(ceil(value))
                   ^
/tmp/tmp7yy15cxl.swift:18:9: note: 'ceil' declared here
    let ceil = Int(ceil(value))
        ^

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
    let value = Double(value)!
    let floor = Int(floor(value))
    let ceil = Int(ceil(value))
    if value - Double(floor) < Double(ceil) - value {
        return floor
    } else {
        return ceil
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
            
assert(closest_integer(value: "10") == 10)
assert(closest_integer(value: "14.5") == 15)
assert(closest_integer(value: "-15.5") == -16)
assert(closest_integer(value: "15.3") == 15)
assert(closest_integer(value: "0") == 0)



// ----------- problem HumanEval_99_closest_integer, completion 93 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpxmv2ke1k.swift:17:21: error: use of local variable 'floor' before its declaration
    let floor = Int(floor(value))
                    ^
/tmp/tmpxmv2ke1k.swift:17:9: note: 'floor' declared here
    let floor = Int(floor(value))
        ^
/tmp/tmpxmv2ke1k.swift:18:20: error: use of local variable 'ceil' before its declaration
    let ceil = Int(ceil(value))
                   ^
/tmp/tmpxmv2ke1k.swift:18:9: note: 'ceil' declared here
    let ceil = Int(ceil(value))
        ^

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
    let value = Double(value)!
    let floor = Int(floor(value))
    let ceil = Int(ceil(value))
    let diff_floor = abs(value - Double(floor))
    let diff_ceil = abs(value - Double(ceil))
    if diff_floor < diff_ceil {
        return floor
    } else {
        return ceil
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
            
assert(closest_integer(value: "10") == 10)
assert(closest_integer(value: "14.5") == 15)
assert(closest_integer(value: "-15.5") == -16)
assert(closest_integer(value: "15.3") == 15)
assert(closest_integer(value: "0") == 0)



// ----------- problem HumanEval_99_closest_integer, completion 82 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwvjm7epe.swift:17:23: error: cannot find 'round' in scope
    let rounded = Int(round(number))
                      ^~~~~
/tmp/tmpwvjm7epe.swift:18:21: error: use of local variable 'floor' before its declaration
    let floor = Int(floor(number))
                    ^
/tmp/tmpwvjm7epe.swift:18:9: note: 'floor' declared here
    let floor = Int(floor(number))
        ^
/tmp/tmpwvjm7epe.swift:19:20: error: use of local variable 'ceil' before its declaration
    let ceil = Int(ceil(number))
                   ^
/tmp/tmpwvjm7epe.swift:19:9: note: 'ceil' declared here
    let ceil = Int(ceil(number))
        ^

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
    let number = Double(value)!
    let rounded = Int(round(number))
    let floor = Int(floor(number))
    let ceil = Int(ceil(number))
    if number - Double(floor) < 0.5 {
        return floor
    } else if number - Double(floor) > 0.5 {
        return ceil
    } else {
        return rounded
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
            
assert(closest_integer(value: "10") == 10)
assert(closest_integer(value: "14.5") == 15)
assert(closest_integer(value: "-15.5") == -16)
assert(closest_integer(value: "15.3") == 15)
assert(closest_integer(value: "0") == 0)



// ----------- problem HumanEval_99_closest_integer, completion 9 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpo47go2db.swift:17:23: error: cannot find 'round' in scope
    let rounded = Int(round(number))
                      ^~~~~
/tmp/tmpo47go2db.swift:18:21: error: use of local variable 'floor' before its declaration
    let floor = Int(floor(number))
                    ^
/tmp/tmpo47go2db.swift:18:9: note: 'floor' declared here
    let floor = Int(floor(number))
        ^
/tmp/tmpo47go2db.swift:19:20: error: use of local variable 'ceil' before its declaration
    let ceil = Int(ceil(number))
                   ^
/tmp/tmpo47go2db.swift:19:9: note: 'ceil' declared here
    let ceil = Int(ceil(number))
        ^

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
    let number = Double(value)!
    let rounded = Int(round(number))
    let floor = Int(floor(number))
    let ceil = Int(ceil(number))
    if abs(Double(rounded) - number) < abs(Double(floor) - number) {
        return rounded
    } else {
        return floor
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
            
assert(closest_integer(value: "10") == 10)
assert(closest_integer(value: "14.5") == 15)
assert(closest_integer(value: "-15.5") == -16)
assert(closest_integer(value: "15.3") == 15)
assert(closest_integer(value: "0") == 0)



// ----------- problem HumanEval_99_closest_integer, completion 154 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp7yy15cxl.swift:17:21: error: use of local variable 'floor' before its declaration
    let floor = Int(floor(value))
                    ^
/tmp/tmp7yy15cxl.swift:17:9: note: 'floor' declared here
    let floor = Int(floor(value))
        ^
/tmp/tmp7yy15cxl.swift:18:20: error: use of local variable 'ceil' before its declaration
    let ceil = Int(ceil(value))
                   ^
/tmp/tmp7yy15cxl.swift:18:9: note: 'ceil' declared here
    let ceil = Int(ceil(value))
        ^

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
    let value = Double(value)!
    let floor = Int(floor(value))
    let ceil = Int(ceil(value))
    if value - Double(floor) < Double(ceil) - value {
        return floor
    } else {
        return ceil
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
            
assert(closest_integer(value: "10") == 10)
assert(closest_integer(value: "14.5") == 15)
assert(closest_integer(value: "-15.5") == -16)
assert(closest_integer(value: "15.3") == 15)
assert(closest_integer(value: "0") == 0)



// ----------- problem HumanEval_99_closest_integer, completion 76 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp4z0xme00.swift:17:21: error: use of local variable 'floor' before its declaration
    let floor = Int(floor(value))
                    ^
/tmp/tmp4z0xme00.swift:17:9: note: 'floor' declared here
    let floor = Int(floor(value))
        ^
/tmp/tmp4z0xme00.swift:18:20: error: use of local variable 'ceil' before its declaration
    let ceil = Int(ceil(value))
                   ^
/tmp/tmp4z0xme00.swift:18:9: note: 'ceil' declared here
    let ceil = Int(ceil(value))
        ^

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
    let value = Double(value)!
    let floor = Int(floor(value))
    let ceil = Int(ceil(value))
    if value - Double(floor) > Double(ceil) - value {
        return ceil
    } else {
        return floor
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
            
assert(closest_integer(value: "10") == 10)
assert(closest_integer(value: "14.5") == 15)
assert(closest_integer(value: "-15.5") == -16)
assert(closest_integer(value: "15.3") == 15)
assert(closest_integer(value: "0") == 0)



// ----------- problem HumanEval_99_closest_integer, completion 186 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpz5m7rozs.swift:17:21: error: use of local variable 'floor' before its declaration
    let floor = Int(floor(number))
                    ^
/tmp/tmpz5m7rozs.swift:17:9: note: 'floor' declared here
    let floor = Int(floor(number))
        ^
/tmp/tmpz5m7rozs.swift:18:20: error: use of local variable 'ceil' before its declaration
    let ceil = Int(ceil(number))
                   ^
/tmp/tmpz5m7rozs.swift:18:9: note: 'ceil' declared here
    let ceil = Int(ceil(number))
        ^

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
    let number = Double(value)!
    let floor = Int(floor(number))
    let ceil = Int(ceil(number))
    if number - Double(floor) < 0.5 {
        return floor
    } else {
        return ceil
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
            
assert(closest_integer(value: "10") == 10)
assert(closest_integer(value: "14.5") == 15)
assert(closest_integer(value: "-15.5") == -16)
assert(closest_integer(value: "15.3") == 15)
assert(closest_integer(value: "0") == 0)



// ----------- problem HumanEval_99_closest_integer, completion 87 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp7yy15cxl.swift:17:21: error: use of local variable 'floor' before its declaration
    let floor = Int(floor(value))
                    ^
/tmp/tmp7yy15cxl.swift:17:9: note: 'floor' declared here
    let floor = Int(floor(value))
        ^
/tmp/tmp7yy15cxl.swift:18:20: error: use of local variable 'ceil' before its declaration
    let ceil = Int(ceil(value))
                   ^
/tmp/tmp7yy15cxl.swift:18:9: note: 'ceil' declared here
    let ceil = Int(ceil(value))
        ^

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
    let value = Double(value)!
    let floor = Int(floor(value))
    let ceil = Int(ceil(value))
    if value - Double(floor) < Double(ceil) - value {
        return floor
    } else {
        return ceil
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
            
assert(closest_integer(value: "10") == 10)
assert(closest_integer(value: "14.5") == 15)
assert(closest_integer(value: "-15.5") == -16)
assert(closest_integer(value: "15.3") == 15)
assert(closest_integer(value: "0") == 0)



// ----------- problem HumanEval_99_closest_integer, completion 142 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpz5m7rozs.swift:17:21: error: use of local variable 'floor' before its declaration
    let floor = Int(floor(number))
                    ^
/tmp/tmpz5m7rozs.swift:17:9: note: 'floor' declared here
    let floor = Int(floor(number))
        ^
/tmp/tmpz5m7rozs.swift:18:20: error: use of local variable 'ceil' before its declaration
    let ceil = Int(ceil(number))
                   ^
/tmp/tmpz5m7rozs.swift:18:9: note: 'ceil' declared here
    let ceil = Int(ceil(number))
        ^

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
    let number = Double(value)!
    let floor = Int(floor(number))
    let ceil = Int(ceil(number))
    if number - Double(floor) < 0.5 {
        return floor
    } else {
        return ceil
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
            
assert(closest_integer(value: "10") == 10)
assert(closest_integer(value: "14.5") == 15)
assert(closest_integer(value: "-15.5") == -16)
assert(closest_integer(value: "15.3") == 15)
assert(closest_integer(value: "0") == 0)



// ----------- problem HumanEval_99_closest_integer, completion 131 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpfylkqpj5.swift:17:19: error: cannot find 'round' in scope
    let rounded = round(number)
                  ^~~~~
/tmp/tmpfylkqpj5.swift:18:21: error: use of local variable 'floor' before its declaration
    let floor = Int(floor(number))
                    ^
/tmp/tmpfylkqpj5.swift:18:9: note: 'floor' declared here
    let floor = Int(floor(number))
        ^
/tmp/tmpfylkqpj5.swift:19:20: error: use of local variable 'ceil' before its declaration
    let ceil = Int(ceil(number))
                   ^
/tmp/tmpfylkqpj5.swift:19:9: note: 'ceil' declared here
    let ceil = Int(ceil(number))
        ^

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
    let number = Double(value)!
    let rounded = round(number)
    let floor = Int(floor(number))
    let ceil = Int(ceil(number))
    if rounded - Double(floor) == 0.5 {
        return ceil
    } else if rounded - Double(floor) == -0.5 {
        return floor
    } else {
        return Int(rounded)
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
            
assert(closest_integer(value: "10") == 10)
assert(closest_integer(value: "14.5") == 15)
assert(closest_integer(value: "-15.5") == -16)
assert(closest_integer(value: "15.3") == 15)
assert(closest_integer(value: "0") == 0)



// ----------- problem HumanEval_99_closest_integer, completion 68 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpiavb1jz2.swift:17:21: error: use of local variable 'floor' before its declaration
    let floor = Int(floor(number))
                    ^
/tmp/tmpiavb1jz2.swift:17:9: note: 'floor' declared here
    let floor = Int(floor(number))
        ^
/tmp/tmpiavb1jz2.swift:18:20: error: use of local variable 'ceil' before its declaration
    let ceil = Int(ceil(number))
                   ^
/tmp/tmpiavb1jz2.swift:18:9: note: 'ceil' declared here
    let ceil = Int(ceil(number))
        ^

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
    let number = Double(value)!
    let floor = Int(floor(number))
    let ceil = Int(ceil(number))
    let diff1 = abs(number - Double(floor))
    let diff2 = abs(number - Double(ceil))
    if diff1 == diff2 {
        return number > 0 ? ceil : floor
    }
    return diff1 < diff2 ? floor : ceil
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_99_closest_integer, completion 157 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpupb1h3lu.swift:17:21: error: use of local variable 'floor' before its declaration
    let floor = Int(floor(value))
                    ^
/tmp/tmpupb1h3lu.swift:17:9: note: 'floor' declared here
    let floor = Int(floor(value))
        ^
/tmp/tmpupb1h3lu.swift:18:20: error: use of local variable 'ceil' before its declaration
    let ceil = Int(ceil(value))
                   ^
/tmp/tmpupb1h3lu.swift:18:9: note: 'ceil' declared here
    let ceil = Int(ceil(value))
        ^

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
    let value = Double(value)!
    let floor = Int(floor(value))
    let ceil = Int(ceil(value))
    let diff_floor = abs(value - Double(floor))
    let diff_ceil = abs(value - Double(ceil))
    if diff_floor == diff_ceil {
        return value > 0 ? ceil : floor
    }
    return diff_floor < diff_ceil ? floor : ceil
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_99_closest_integer, completion 37 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpz5m7rozs.swift:17:21: error: use of local variable 'floor' before its declaration
    let floor = Int(floor(number))
                    ^
/tmp/tmpz5m7rozs.swift:17:9: note: 'floor' declared here
    let floor = Int(floor(number))
        ^
/tmp/tmpz5m7rozs.swift:18:20: error: use of local variable 'ceil' before its declaration
    let ceil = Int(ceil(number))
                   ^
/tmp/tmpz5m7rozs.swift:18:9: note: 'ceil' declared here
    let ceil = Int(ceil(number))
        ^

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
    let number = Double(value)!
    let floor = Int(floor(number))
    let ceil = Int(ceil(number))
    if number - Double(floor) < 0.5 {
        return floor
    } else {
        return ceil
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
            
assert(closest_integer(value: "10") == 10)
assert(closest_integer(value: "14.5") == 15)
assert(closest_integer(value: "-15.5") == -16)
assert(closest_integer(value: "15.3") == 15)
assert(closest_integer(value: "0") == 0)



// ----------- problem HumanEval_99_closest_integer, completion 61 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpz5m7rozs.swift:17:21: error: use of local variable 'floor' before its declaration
    let floor = Int(floor(number))
                    ^
/tmp/tmpz5m7rozs.swift:17:9: note: 'floor' declared here
    let floor = Int(floor(number))
        ^
/tmp/tmpz5m7rozs.swift:18:20: error: use of local variable 'ceil' before its declaration
    let ceil = Int(ceil(number))
                   ^
/tmp/tmpz5m7rozs.swift:18:9: note: 'ceil' declared here
    let ceil = Int(ceil(number))
        ^

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
    let number = Double(value)!
    let floor = Int(floor(number))
    let ceil = Int(ceil(number))
    if number - Double(floor) < 0.5 {
        return floor
    } else {
        return ceil
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
            
assert(closest_integer(value: "10") == 10)
assert(closest_integer(value: "14.5") == 15)
assert(closest_integer(value: "-15.5") == -16)
assert(closest_integer(value: "15.3") == 15)
assert(closest_integer(value: "0") == 0)



