// ----------- problem HumanEval_99_closest_integer, completion 29 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.HFcUKu/tmpley71tfi-1.o:tmpley71tfi-1.o:function $s11tmpley71tfi15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.HFcUKu/tmpley71tfi-1.o:tmpley71tfi-1.o:function $s11tmpley71tfi15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.HFcUKu/tmpley71tfi-1.o:tmpley71tfi-1.o:function $s11tmpley71tfi15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.HFcUKu/tmpley71tfi-1.o:tmpley71tfi-1.o:function $s11tmpley71tfi15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.HFcUKu/tmpley71tfi-1.o:tmpley71tfi-1.o:function $s11tmpley71tfi15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.HFcUKu/tmpley71tfi-1.o:tmpley71tfi-1.o:function $s11tmpley71tfi15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.HFcUKu/tmpley71tfi-1.o:tmpley71tfi-1.o:function $s11tmpley71tfi15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.HFcUKu/tmpley71tfi-1.o:tmpley71tfi-1.o:function $s11tmpley71tfi15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.HFcUKu/tmpley71tfi-1.o:tmpley71tfi-1.o:function $s11tmpley71tfi15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.HFcUKu/tmpley71tfi-1.o:tmpley71tfi-1.o:function $s11tmpley71tfi15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.HFcUKu/tmpley71tfi-1.o:tmpley71tfi-1.o:function $s11tmpley71tfi15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.HFcUKu/tmpley71tfi-1.o:tmpley71tfi-1.o:function $s11tmpley71tfi15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.HFcUKu/tmpley71tfi-1.o:tmpley71tfi-1.o:function $s11tmpley71tfi15closest_i
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
    let floor = Int(number.rounded(.down))
    let ceil = Int(number.rounded(.up))
    let diff_floor = abs(number - Double(floor))
    let diff_ceil = abs(number - Double(ceil))
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



// ----------- problem HumanEval_99_closest_integer, completion 71 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.4f88JM/tmpy8q9rexm-1.o:tmpy8q9rexm-1.o:function $s11tmpy8q9rexm15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.4f88JM/tmpy8q9rexm-1.o:tmpy8q9rexm-1.o:function $s11tmpy8q9rexm15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.4f88JM/tmpy8q9rexm-1.o:tmpy8q9rexm-1.o:function $s11tmpy8q9rexm15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.4f88JM/tmpy8q9rexm-1.o:tmpy8q9rexm-1.o:function $s11tmpy8q9rexm15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.4f88JM/tmpy8q9rexm-1.o:tmpy8q9rexm-1.o:function $s11tmpy8q9rexm15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.4f88JM/tmpy8q9rexm-1.o:tmpy8q9rexm-1.o:function $s11tmpy8q9rexm15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.4f88JM/tmpy8q9rexm-1.o:tmpy8q9rexm-1.o:function $s11tmpy8q9rexm15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
clang-13: error: linker command failed with exit code 1 (use -v to see invocation)

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
    return Int(value) ?? Int(Double(value)!.rounded(.awayFromZero))
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_99_closest_integer, completion 39 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_i
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
    let rounded = Int(number.rounded())
    let floor = Int(number.rounded(.down))
    let ceiling = Int(number.rounded(.up))
    if number - Double(floor) == 0.5 {
        return ceiling
    } else if number - Double(floor) == -0.5 {
        return floor
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



// ----------- problem HumanEval_99_closest_integer, completion 31 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpksdwom9o.swift:17:9: warning: initialization of immutable value 'rounded' was never used; consider replacing with assignment to '_' or removing it
    let rounded = number.rounded()
    ~~~~^~~~~~~
    _
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.VTfEUd/tmpksdwom9o-1.o:tmpksdwom9o-1.o:function $s11tmpksdwom9o15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.VTfEUd/tmpksdwom9o-1.o:tmpksdwom9o-1.o:function $s11tmpksdwom9o15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.VTfEUd/tmpksdwom9o-1.o:tmpksdwom9o-1.o:function $s11tmpksdwom9o15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.VTfEUd/tmpksdwom9o-1.o:tmpksdwom9o-1.o:function $s11tmpksdwom9o15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.VTfEUd/tmpksdwom9o-1.o:tmpksdwom9o-1.o:function $s11tmpksdwom9o15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.VTfEUd/tmpksdwom9o-1.o:tmpksdwom9o-1.o:function $s11tmpksdwom9o15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.VTfEUd/tmpksdwom9o-1.o:tmpksdwom9o-1.o:function $s11tmpksdwom9o15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.VTfEUd/tmpksdwom9o-1.o:tmpksdwom9o-1.o:function $s11tmpksdwom9o15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.VTfEUd/tmpksdwom9o-1.o:tmpksdwom9o-1.o:function $s11tmpksdwom9o15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.VTfEUd/tmpksdwom9o-1.o:tmpksdwom9o-1.o:function $s11tmpksdwom9o15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.VTfEUd/tmpksdwom9o-1.o:tmpksdwom9o-1.o:function $s11tmpksdwom9o15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.VTfEUd/tmpksdwom9o-
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
    let rounded = number.rounded()
    let floor = number.rounded(.down)
    let ceil = number.rounded(.up)
    if number - floor < ceil - number {
        return Int(floor)
    } else {
        return Int(ceil)
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



// ----------- problem HumanEval_99_closest_integer, completion 128 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.TZ1nQa/tmp41jdwzwd-1.o:tmp41jdwzwd-1.o:function $s11tmp41jdwzwd15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.TZ1nQa/tmp41jdwzwd-1.o:tmp41jdwzwd-1.o:function $s11tmp41jdwzwd15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.TZ1nQa/tmp41jdwzwd-1.o:tmp41jdwzwd-1.o:function $s11tmp41jdwzwd15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.TZ1nQa/tmp41jdwzwd-1.o:tmp41jdwzwd-1.o:function $s11tmp41jdwzwd15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.TZ1nQa/tmp41jdwzwd-1.o:tmp41jdwzwd-1.o:function $s11tmp41jdwzwd15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.TZ1nQa/tmp41jdwzwd-1.o:tmp41jdwzwd-1.o:function $s11tmp41jdwzwd15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.TZ1nQa/tmp41jdwzwd-1.o:tmp41jdwzwd-1.o:function $s11tmp41jdwzwd15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
clang-13: error: linker command failed with exit code 1 (use -v to see invocation)

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
    return Int(number.rounded(.awayFromZero))
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_99_closest_integer, completion 58 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.UctEzN/tmpt2_q7dan-1.o:tmpt2_q7dan-1.o:function $s11tmpt2_q7dan15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.UctEzN/tmpt2_q7dan-1.o:tmpt2_q7dan-1.o:function $s11tmpt2_q7dan15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.UctEzN/tmpt2_q7dan-1.o:tmpt2_q7dan-1.o:function $s11tmpt2_q7dan15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.UctEzN/tmpt2_q7dan-1.o:tmpt2_q7dan-1.o:function $s11tmpt2_q7dan15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.UctEzN/tmpt2_q7dan-1.o:tmpt2_q7dan-1.o:function $s11tmpt2_q7dan15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.UctEzN/tmpt2_q7dan-1.o:tmpt2_q7dan-1.o:function $s11tmpt2_q7dan15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.UctEzN/tmpt2_q7dan-1.o:tmpt2_q7dan-1.o:function $s11tmpt2_q7dan15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
clang-13: error: linker command failed with exit code 1 (use -v to see invocation)

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
    let rounded = number.rounded()
    if number - rounded > 0.5 {
        return Int(rounded + 1)
    } else if number - rounded < -0.5 {
        return Int(rounded - 1)
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



// ----------- problem HumanEval_99_closest_integer, completion 94 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
clang-13: error: linker command failed with exit code 1 (use -v to see invocation)

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
    return Int(Double(value)!.rounded(.awayFromZero))
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_99_closest_integer, completion 103 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_i
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
    let rounded = Int(number.rounded())
    let floor = Int(number.rounded(.down))
    let ceiling = Int(number.rounded(.up))
    if number - Double(floor) == 0.5 {
        return ceiling
    } else if number - Double(floor) == -0.5 {
        return floor
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



// ----------- problem HumanEval_99_closest_integer, completion 8 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_i
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
    let rounded = Int(number.rounded())
    let floor = Int(number.rounded(.down))
    let ceil = Int(number.rounded(.up))
    if number - Double(floor) == 0.5 {
        return floor
    } else if number - Double(ceil) == -0.5 {
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



// ----------- problem HumanEval_99_closest_integer, completion 7 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.pCicPu/tmptbou0hj5-1.o:tmptbou0hj5-1.o:function $s11tmptbou0hj515closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.pCicPu/tmptbou0hj5-1.o:tmptbou0hj5-1.o:function $s11tmptbou0hj515closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.pCicPu/tmptbou0hj5-1.o:tmptbou0hj5-1.o:function $s11tmptbou0hj515closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.pCicPu/tmptbou0hj5-1.o:tmptbou0hj5-1.o:function $s11tmptbou0hj515closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.pCicPu/tmptbou0hj5-1.o:tmptbou0hj5-1.o:function $s11tmptbou0hj515closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.pCicPu/tmptbou0hj5-1.o:tmptbou0hj5-1.o:function $s11tmptbou0hj515closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.pCicPu/tmptbou0hj5-1.o:tmptbou0hj5-1.o:function $s11tmptbou0hj515closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.pCicPu/tmptbou0hj5-1.o:tmptbou0hj5-1.o:function $s11tmptbou0hj515closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.pCicPu/tmptbou0hj5-1.o:tmptbou0hj5-1.o:function $s11tmptbou0hj515closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.pCicPu/tmptbou0hj5-1.o:tmptbou0hj5-1.o:function $s11tmptbou0hj515closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.pCicPu/tmptbou0hj5-1.o:tmptbou0hj5-1.o:function $s11tmptbou0hj515closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.pCicPu/tmptbou0hj5-1.o:tmptbou0hj5-1.o:function $s11tmptbou0hj515closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.pCicPu/tmptbou0hj5-1.o:tmptbou0hj5-1.o:function $s11tmptbou0hj515closest_i
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
    let rounded = Int(number.rounded())
    let floor = Int(number.rounded(.down))
    let ceil = Int(number.rounded(.up))
    if abs(number - Double(rounded)) < abs(number - Double(floor)) {
        return rounded
    } else if abs(number - Double(rounded)) < abs(number - Double(ceil)) {
        return rounded
    } else if abs(number - Double(floor)) < abs(number - Double(ceil)) {
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



// ----------- problem HumanEval_99_closest_integer, completion 134 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.R6KKue/tmpvhqrv9zz-1.o:tmpvhqrv9zz-1.o:function $s11tmpvhqrv9zz15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.R6KKue/tmpvhqrv9zz-1.o:tmpvhqrv9zz-1.o:function $s11tmpvhqrv9zz15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.R6KKue/tmpvhqrv9zz-1.o:tmpvhqrv9zz-1.o:function $s11tmpvhqrv9zz15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.R6KKue/tmpvhqrv9zz-1.o:tmpvhqrv9zz-1.o:function $s11tmpvhqrv9zz15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.R6KKue/tmpvhqrv9zz-1.o:tmpvhqrv9zz-1.o:function $s11tmpvhqrv9zz15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.R6KKue/tmpvhqrv9zz-1.o:tmpvhqrv9zz-1.o:function $s11tmpvhqrv9zz15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.R6KKue/tmpvhqrv9zz-1.o:tmpvhqrv9zz-1.o:function $s11tmpvhqrv9zz15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.R6KKue/tmpvhqrv9zz-1.o:tmpvhqrv9zz-1.o:function $s11tmpvhqrv9zz15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.R6KKue/tmpvhqrv9zz-1.o:tmpvhqrv9zz-1.o:function $s11tmpvhqrv9zz15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.R6KKue/tmpvhqrv9zz-1.o:tmpvhqrv9zz-1.o:function $s11tmpvhqrv9zz15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.R6KKue/tmpvhqrv9zz-1.o:tmpvhqrv9zz-1.o:function $s11tmpvhqrv9zz15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.R6KKue/tmpvhqrv9zz-1.o:tmpvhqrv9zz-1.o:function $s11tmpvhqrv9zz15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.R6KKue/tmpvhqrv9zz-1.o:tmpvhqrv9zz-1.o:function $s11tmpvhqrv9zz15closest_i
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
    let rounded = Int(number.rounded())
    let floor = Int(number.rounded(.down))
    let ceiling = Int(number.rounded(.up))
    let floorDiff = abs(number - Double(floor))
    let ceilingDiff = abs(number - Double(ceiling))
    if floorDiff == ceilingDiff {
        return rounded
    } else if floorDiff < ceilingDiff {
        return floor
    } else {
        return ceiling
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



// ----------- problem HumanEval_99_closest_integer, completion 36 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.v8uUAd/tmpuhtyuuno-1.o:tmpuhtyuuno-1.o:function $s11tmpuhtyuuno15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.v8uUAd/tmpuhtyuuno-1.o:tmpuhtyuuno-1.o:function $s11tmpuhtyuuno15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.v8uUAd/tmpuhtyuuno-1.o:tmpuhtyuuno-1.o:function $s11tmpuhtyuuno15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.v8uUAd/tmpuhtyuuno-1.o:tmpuhtyuuno-1.o:function $s11tmpuhtyuuno15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.v8uUAd/tmpuhtyuuno-1.o:tmpuhtyuuno-1.o:function $s11tmpuhtyuuno15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.v8uUAd/tmpuhtyuuno-1.o:tmpuhtyuuno-1.o:function $s11tmpuhtyuuno15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.v8uUAd/tmpuhtyuuno-1.o:tmpuhtyuuno-1.o:function $s11tmpuhtyuuno15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.v8uUAd/tmpuhtyuuno-1.o:tmpuhtyuuno-1.o:function $s11tmpuhtyuuno15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.v8uUAd/tmpuhtyuuno-1.o:tmpuhtyuuno-1.o:function $s11tmpuhtyuuno15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.v8uUAd/tmpuhtyuuno-1.o:tmpuhtyuuno-1.o:function $s11tmpuhtyuuno15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.v8uUAd/tmpuhtyuuno-1.o:tmpuhtyuuno-1.o:function $s11tmpuhtyuuno15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.v8uUAd/tmpuhtyuuno-1.o:tmpuhtyuuno-1.o:function $s11tmpuhtyuuno15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.v8uUAd/tmpuhtyuuno-1.o:tmpuhtyuuno-1.o:function $s11tmpuhtyuuno15closest_i
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
    let rounded = number.rounded()
    let ceiled = number.rounded(.up)
    let floored = number.rounded(.down)
    if number - rounded == 0 {
        return Int(rounded)
    } else if number - rounded > 0 {
        if number - ceiled < ceiled - number {
            return Int(ceiled)
        } else {
            return Int(floored)
        }
    } else {
        if number - floored < floored - number {
            return Int(floored)
        } else {
            return Int(ceiled)
        }
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



// ----------- problem HumanEval_99_closest_integer, completion 171 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.Owugwh/tmpvjgxoa3r-1.o:tmpvjgxoa3r-1.o:function $s11tmpvjgxoa3r15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.Owugwh/tmpvjgxoa3r-1.o:tmpvjgxoa3r-1.o:function $s11tmpvjgxoa3r15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.Owugwh/tmpvjgxoa3r-1.o:tmpvjgxoa3r-1.o:function $s11tmpvjgxoa3r15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.Owugwh/tmpvjgxoa3r-1.o:tmpvjgxoa3r-1.o:function $s11tmpvjgxoa3r15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.Owugwh/tmpvjgxoa3r-1.o:tmpvjgxoa3r-1.o:function $s11tmpvjgxoa3r15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.Owugwh/tmpvjgxoa3r-1.o:tmpvjgxoa3r-1.o:function $s11tmpvjgxoa3r15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.Owugwh/tmpvjgxoa3r-1.o:tmpvjgxoa3r-1.o:function $s11tmpvjgxoa3r15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.Owugwh/tmpvjgxoa3r-1.o:tmpvjgxoa3r-1.o:function $s11tmpvjgxoa3r15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.Owugwh/tmpvjgxoa3r-1.o:tmpvjgxoa3r-1.o:function $s11tmpvjgxoa3r15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.Owugwh/tmpvjgxoa3r-1.o:tmpvjgxoa3r-1.o:function $s11tmpvjgxoa3r15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.Owugwh/tmpvjgxoa3r-1.o:tmpvjgxoa3r-1.o:function $s11tmpvjgxoa3r15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.Owugwh/tmpvjgxoa3r-1.o:tmpvjgxoa3r-1.o:function $s11tmpvjgxoa3r15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.Owugwh/tmpvjgxoa3r-1.o:tmpvjgxoa3r-1.o:function $s11tmpvjgxoa3r15closest_i
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
    let rounded = number.rounded()
    let floor = number.rounded(.down)
    let ceil = number.rounded(.up)
    let floorDiff = abs(number - floor)
    let ceilDiff = abs(number - ceil)
    if floorDiff == ceilDiff {
        return rounded > 0 ? Int(ceil) : Int(floor)
    }
    return floorDiff < ceilDiff ? Int(floor) : Int(ceil)
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_99_closest_integer, completion 172 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.R9mito/tmpix731zvk-1.o:tmpix731zvk-1.o:function $s11tmpix731zvk15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.R9mito/tmpix731zvk-1.o:tmpix731zvk-1.o:function $s11tmpix731zvk15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.R9mito/tmpix731zvk-1.o:tmpix731zvk-1.o:function $s11tmpix731zvk15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.R9mito/tmpix731zvk-1.o:tmpix731zvk-1.o:function $s11tmpix731zvk15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.R9mito/tmpix731zvk-1.o:tmpix731zvk-1.o:function $s11tmpix731zvk15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.R9mito/tmpix731zvk-1.o:tmpix731zvk-1.o:function $s11tmpix731zvk15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.R9mito/tmpix731zvk-1.o:tmpix731zvk-1.o:function $s11tmpix731zvk15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.R9mito/tmpix731zvk-1.o:tmpix731zvk-1.o:function $s11tmpix731zvk15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.R9mito/tmpix731zvk-1.o:tmpix731zvk-1.o:function $s11tmpix731zvk15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.R9mito/tmpix731zvk-1.o:tmpix731zvk-1.o:function $s11tmpix731zvk15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.R9mito/tmpix731zvk-1.o:tmpix731zvk-1.o:function $s11tmpix731zvk15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.R9mito/tmpix731zvk-1.o:tmpix731zvk-1.o:function $s11tmpix731zvk15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.R9mito/tmpix731zvk-1.o:tmpix731zvk-1.o:function $s11tmpix731zvk15closest_i
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
    let num = Double(value)!
    let floor = Int(num.rounded(.down))
    let ceil = Int(num.rounded(.up))
    if num - Double(floor) < Double(ceil) - num {
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



// ----------- problem HumanEval_99_closest_integer, completion 74 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.MGwKDM/tmp4vk5nrey-1.o:tmp4vk5nrey-1.o:function $s11tmp4vk5nrey15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.MGwKDM/tmp4vk5nrey-1.o:tmp4vk5nrey-1.o:function $s11tmp4vk5nrey15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.MGwKDM/tmp4vk5nrey-1.o:tmp4vk5nrey-1.o:function $s11tmp4vk5nrey15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.MGwKDM/tmp4vk5nrey-1.o:tmp4vk5nrey-1.o:function $s11tmp4vk5nrey15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.MGwKDM/tmp4vk5nrey-1.o:tmp4vk5nrey-1.o:function $s11tmp4vk5nrey15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.MGwKDM/tmp4vk5nrey-1.o:tmp4vk5nrey-1.o:function $s11tmp4vk5nrey15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.MGwKDM/tmp4vk5nrey-1.o:tmp4vk5nrey-1.o:function $s11tmp4vk5nrey15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.MGwKDM/tmp4vk5nrey-1.o:tmp4vk5nrey-1.o:function $s11tmp4vk5nrey15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.MGwKDM/tmp4vk5nrey-1.o:tmp4vk5nrey-1.o:function $s11tmp4vk5nrey15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.MGwKDM/tmp4vk5nrey-1.o:tmp4vk5nrey-1.o:function $s11tmp4vk5nrey15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.MGwKDM/tmp4vk5nrey-1.o:tmp4vk5nrey-1.o:function $s11tmp4vk5nrey15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.MGwKDM/tmp4vk5nrey-1.o:tmp4vk5nrey-1.o:function $s11tmp4vk5nrey15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.MGwKDM/tmp4vk5nrey-1.o:tmp4vk5nrey-1.o:function $s11tmp4vk5nrey15closest_i
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
    let num = Double(value)!
    let floor = Int(num.rounded(.down))
    let ceil = Int(num.rounded(.up))
    let diff1 = abs(num - Double(floor))
    let diff2 = abs(num - Double(ceil))
    if diff1 < diff2 {
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



// ----------- problem HumanEval_99_closest_integer, completion 168 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.wGLmwg/tmppa6qd9kr-1.o:tmppa6qd9kr-1.o:function $s11tmppa6qd9kr15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.wGLmwg/tmppa6qd9kr-1.o:tmppa6qd9kr-1.o:function $s11tmppa6qd9kr15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.wGLmwg/tmppa6qd9kr-1.o:tmppa6qd9kr-1.o:function $s11tmppa6qd9kr15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.wGLmwg/tmppa6qd9kr-1.o:tmppa6qd9kr-1.o:function $s11tmppa6qd9kr15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.wGLmwg/tmppa6qd9kr-1.o:tmppa6qd9kr-1.o:function $s11tmppa6qd9kr15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.wGLmwg/tmppa6qd9kr-1.o:tmppa6qd9kr-1.o:function $s11tmppa6qd9kr15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.wGLmwg/tmppa6qd9kr-1.o:tmppa6qd9kr-1.o:function $s11tmppa6qd9kr15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.wGLmwg/tmppa6qd9kr-1.o:tmppa6qd9kr-1.o:function $s11tmppa6qd9kr15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.wGLmwg/tmppa6qd9kr-1.o:tmppa6qd9kr-1.o:function $s11tmppa6qd9kr15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.wGLmwg/tmppa6qd9kr-1.o:tmppa6qd9kr-1.o:function $s11tmppa6qd9kr15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.wGLmwg/tmppa6qd9kr-1.o:tmppa6qd9kr-1.o:function $s11tmppa6qd9kr15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.wGLmwg/tmppa6qd9kr-1.o:tmppa6qd9kr-1.o:function $s11tmppa6qd9kr15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.wGLmwg/tmppa6qd9kr-1.o:tmppa6qd9kr-1.o:function $s11tmppa6qd9kr15closest_i
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
    let rounded = Int(number.rounded())
    let ceiled = Int(number.rounded(.up))
    let floored = Int(number.rounded(.down))
    let distanceToRounded = abs(number - Double(rounded))
    let distanceToCeiled = abs(number - Double(ceiled))
    let distanceToFloored = abs(number - Double(floored))
    if distanceToRounded < distanceToCeiled && distanceToRounded < distanceToFloored {
        return rounded
    } else if distanceToCeiled < distanceToFloored {
        return ceiled
    } else {
        return floored
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



// ----------- problem HumanEval_99_closest_integer, completion 59 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp_rfjpuic.swift:17:9: warning: initialization of immutable value 'rounded' was never used; consider replacing with assignment to '_' or removing it
    let rounded = Int(number.rounded())
    ~~~~^~~~~~~
    _
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfjpuic-1.o:tmp_rfjpuic-1.o:function $s11tmp_rfjpuic15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfjpuic-1.o:tmp_rfjpuic-1.o:function $s11tmp_rfjpuic15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfjpuic-1.o:tmp_rfjpuic-1.o:function $s11tmp_rfjpuic15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfjpuic-1.o:tmp_rfjpuic-1.o:function $s11tmp_rfjpuic15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfjpuic-1.o:tmp_rfjpuic-1.o:function $s11tmp_rfjpuic15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfjpuic-1.o:tmp_rfjpuic-1.o:function $s11tmp_rfjpuic15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfjpuic-1.o:tmp_rfjpuic-1.o:function $s11tmp_rfjpuic15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfjpuic-1.o:tmp_rfjpuic-1.o:function $s11tmp_rfjpuic15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfjpuic-1.o:tmp_rfjpuic-1.o:function $s11tmp_rfjpuic15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfjpuic-1.o:tmp_rfjpuic-1.o:function $s11tmp_rfjpuic15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfjpuic-1.o:tmp_rfjpuic-1.o:function $s11tmp_rfjpuic15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfj
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
    let rounded = Int(number.rounded())
    let floor = Int(number.rounded(.down))
    let ceil = Int(number.rounded(.up))
    if number - Double(floor) < Double(ceil) - number {
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



// ----------- problem HumanEval_99_closest_integer, completion 16 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.iFoYPu/tmpj8fef3ij-1.o:tmpj8fef3ij-1.o:function $s11tmpj8fef3ij15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.iFoYPu/tmpj8fef3ij-1.o:tmpj8fef3ij-1.o:function $s11tmpj8fef3ij15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.iFoYPu/tmpj8fef3ij-1.o:tmpj8fef3ij-1.o:function $s11tmpj8fef3ij15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.iFoYPu/tmpj8fef3ij-1.o:tmpj8fef3ij-1.o:function $s11tmpj8fef3ij15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.iFoYPu/tmpj8fef3ij-1.o:tmpj8fef3ij-1.o:function $s11tmpj8fef3ij15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.iFoYPu/tmpj8fef3ij-1.o:tmpj8fef3ij-1.o:function $s11tmpj8fef3ij15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.iFoYPu/tmpj8fef3ij-1.o:tmpj8fef3ij-1.o:function $s11tmpj8fef3ij15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.iFoYPu/tmpj8fef3ij-1.o:tmpj8fef3ij-1.o:function $s11tmpj8fef3ij15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.iFoYPu/tmpj8fef3ij-1.o:tmpj8fef3ij-1.o:function $s11tmpj8fef3ij15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.iFoYPu/tmpj8fef3ij-1.o:tmpj8fef3ij-1.o:function $s11tmpj8fef3ij15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.iFoYPu/tmpj8fef3ij-1.o:tmpj8fef3ij-1.o:function $s11tmpj8fef3ij15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.iFoYPu/tmpj8fef3ij-1.o:tmpj8fef3ij-1.o:function $s11tmpj8fef3ij15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.iFoYPu/tmpj8fef3ij-1.o:tmpj8fef3ij-1.o:function $s11tmpj8fef3ij15closest_i
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
    let rounded = Int(number.rounded())
    let floor = Int(number.rounded(.down))
    let ceil = Int(number.rounded(.up))
    if number - Double(floor) == 0.5 {
        return number > 0 ? ceil : floor
    }
    return rounded
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_99_closest_integer, completion 44 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_i
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
    let rounded = Int(number.rounded())
    let floor = Int(number.rounded(.down))
    let ceil = Int(number.rounded(.up))
    if number - Double(floor) == 0.5 {
        return floor
    } else if number - Double(ceil) == -0.5 {
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



// ----------- problem HumanEval_99_closest_integer, completion 175 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.KhlbcM/tmp_qkybqxu-1.o:tmp_qkybqxu-1.o:function $s11tmp_qkybqxu15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.KhlbcM/tmp_qkybqxu-1.o:tmp_qkybqxu-1.o:function $s11tmp_qkybqxu15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.KhlbcM/tmp_qkybqxu-1.o:tmp_qkybqxu-1.o:function $s11tmp_qkybqxu15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.KhlbcM/tmp_qkybqxu-1.o:tmp_qkybqxu-1.o:function $s11tmp_qkybqxu15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.KhlbcM/tmp_qkybqxu-1.o:tmp_qkybqxu-1.o:function $s11tmp_qkybqxu15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.KhlbcM/tmp_qkybqxu-1.o:tmp_qkybqxu-1.o:function $s11tmp_qkybqxu15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.KhlbcM/tmp_qkybqxu-1.o:tmp_qkybqxu-1.o:function $s11tmp_qkybqxu15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
clang-13: error: linker command failed with exit code 1 (use -v to see invocation)

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
    let rounded = number.rounded()
    let integer = Int(rounded)
    return integer
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_99_closest_integer, completion 156 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.UnN7yg/tmpdzjcdf1g-1.o:tmpdzjcdf1g-1.o:function $s11tmpdzjcdf1g15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.UnN7yg/tmpdzjcdf1g-1.o:tmpdzjcdf1g-1.o:function $s11tmpdzjcdf1g15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.UnN7yg/tmpdzjcdf1g-1.o:tmpdzjcdf1g-1.o:function $s11tmpdzjcdf1g15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.UnN7yg/tmpdzjcdf1g-1.o:tmpdzjcdf1g-1.o:function $s11tmpdzjcdf1g15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.UnN7yg/tmpdzjcdf1g-1.o:tmpdzjcdf1g-1.o:function $s11tmpdzjcdf1g15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.UnN7yg/tmpdzjcdf1g-1.o:tmpdzjcdf1g-1.o:function $s11tmpdzjcdf1g15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.UnN7yg/tmpdzjcdf1g-1.o:tmpdzjcdf1g-1.o:function $s11tmpdzjcdf1g15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
clang-13: error: linker command failed with exit code 1 (use -v to see invocation)

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
    let roundedNumber = Int(number.rounded())
    let decimal = number - Double(roundedNumber)
    if decimal == 0 {
        return roundedNumber
    } else if decimal > 0 {
        return roundedNumber + 1
    } else {
        return roundedNumber - 1
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



// ----------- problem HumanEval_99_closest_integer, completion 184 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpdg88mob7.swift:17:9: warning: initialization of immutable value 'rounded' was never used; consider replacing with assignment to '_' or removing it
    let rounded = Int(number.rounded())
    ~~~~^~~~~~~
    _
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.K1j38u/tmpdg88mob7-1.o:tmpdg88mob7-1.o:function $s11tmpdg88mob715closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.K1j38u/tmpdg88mob7-1.o:tmpdg88mob7-1.o:function $s11tmpdg88mob715closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.K1j38u/tmpdg88mob7-1.o:tmpdg88mob7-1.o:function $s11tmpdg88mob715closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.K1j38u/tmpdg88mob7-1.o:tmpdg88mob7-1.o:function $s11tmpdg88mob715closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.K1j38u/tmpdg88mob7-1.o:tmpdg88mob7-1.o:function $s11tmpdg88mob715closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.K1j38u/tmpdg88mob7-1.o:tmpdg88mob7-1.o:function $s11tmpdg88mob715closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.K1j38u/tmpdg88mob7-1.o:tmpdg88mob7-1.o:function $s11tmpdg88mob715closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.K1j38u/tmpdg88mob7-1.o:tmpdg88mob7-1.o:function $s11tmpdg88mob715closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.K1j38u/tmpdg88mob7-1.o:tmpdg88mob7-1.o:function $s11tmpdg88mob715closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.K1j38u/tmpdg88mob7-1.o:tmpdg88mob7-1.o:function $s11tmpdg88mob715closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.K1j38u/tmpdg88mob7-1.o:tmpdg88mob7-1.o:function $s11tmpdg88mob715closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.K1j38u/tmpdg88
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
    let rounded = Int(number.rounded())
    let floor = Int(number.rounded(.down))
    let ceil = Int(number.rounded(.up))
    let diff_floor = abs(number - Double(floor))
    let diff_ceil = abs(number - Double(ceil))
    if diff_floor == diff_ceil {
        return number < 0 ? floor : ceil
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



// ----------- problem HumanEval_99_closest_integer, completion 196 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
clang-13: error: linker command failed with exit code 1 (use -v to see invocation)

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
    return Int(Double(value)!.rounded(.awayFromZero))
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_99_closest_integer, completion 22 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp_rfjpuic.swift:17:9: warning: initialization of immutable value 'rounded' was never used; consider replacing with assignment to '_' or removing it
    let rounded = Int(number.rounded())
    ~~~~^~~~~~~
    _
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfjpuic-1.o:tmp_rfjpuic-1.o:function $s11tmp_rfjpuic15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfjpuic-1.o:tmp_rfjpuic-1.o:function $s11tmp_rfjpuic15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfjpuic-1.o:tmp_rfjpuic-1.o:function $s11tmp_rfjpuic15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfjpuic-1.o:tmp_rfjpuic-1.o:function $s11tmp_rfjpuic15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfjpuic-1.o:tmp_rfjpuic-1.o:function $s11tmp_rfjpuic15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfjpuic-1.o:tmp_rfjpuic-1.o:function $s11tmp_rfjpuic15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfjpuic-1.o:tmp_rfjpuic-1.o:function $s11tmp_rfjpuic15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfjpuic-1.o:tmp_rfjpuic-1.o:function $s11tmp_rfjpuic15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfjpuic-1.o:tmp_rfjpuic-1.o:function $s11tmp_rfjpuic15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfjpuic-1.o:tmp_rfjpuic-1.o:function $s11tmp_rfjpuic15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfjpuic-1.o:tmp_rfjpuic-1.o:function $s11tmp_rfjpuic15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.Nf1VSu/tmp_rfj
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
    let rounded = Int(number.rounded())
    let floor = Int(number.rounded(.down))
    let ceil = Int(number.rounded(.up))
    if number - Double(floor) < Double(ceil) - number {
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



// ----------- problem HumanEval_99_closest_integer, completion 20 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpi873j6le.swift:17:9: warning: initialization of immutable value 'rounded' was never used; consider replacing with assignment to '_' or removing it
    let rounded = number.rounded()
    ~~~~^~~~~~~
    _
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.0LdwTu/tmpi873j6le-1.o:tmpi873j6le-1.o:function $s11tmpi873j6le15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.0LdwTu/tmpi873j6le-1.o:tmpi873j6le-1.o:function $s11tmpi873j6le15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.0LdwTu/tmpi873j6le-1.o:tmpi873j6le-1.o:function $s11tmpi873j6le15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.0LdwTu/tmpi873j6le-1.o:tmpi873j6le-1.o:function $s11tmpi873j6le15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.0LdwTu/tmpi873j6le-1.o:tmpi873j6le-1.o:function $s11tmpi873j6le15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.0LdwTu/tmpi873j6le-1.o:tmpi873j6le-1.o:function $s11tmpi873j6le15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.0LdwTu/tmpi873j6le-1.o:tmpi873j6le-1.o:function $s11tmpi873j6le15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.0LdwTu/tmpi873j6le-1.o:tmpi873j6le-1.o:function $s11tmpi873j6le15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.0LdwTu/tmpi873j6le-1.o:tmpi873j6le-1.o:function $s11tmpi873j6le15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.0LdwTu/tmpi873j6le-1.o:tmpi873j6le-1.o:function $s11tmpi873j6le15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.0LdwTu/tmpi873j6le-1.o:tmpi873j6le-1.o:function $s11tmpi873j6le15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.0LdwTu/tmpi873j6le-
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
    let rounded = number.rounded()
    let floor = number.rounded(.down)
    let ceil = number.rounded(.up)
    if number - floor > ceil - number {
        return Int(ceil)
    } else {
        return Int(floor)
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



// ----------- problem HumanEval_99_closest_integer, completion 81 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
clang-13: error: linker command failed with exit code 1 (use -v to see invocation)

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
    return Int(Double(value)!.rounded(.awayFromZero))
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_99_closest_integer, completion 19 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_i
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
    let rounded = number.rounded()
    let ceiled = number.rounded(.up)
    let floored = number.rounded(.down)
    let diff1 = abs(number - rounded)
    let diff2 = abs(number - ceiled)
    let diff3 = abs(number - floored)
    if diff1 < diff2 && diff1 < diff3 {
        return Int(rounded)
    } else if diff2 < diff1 && diff2 < diff3 {
        return Int(ceiled)
    } else {
        return Int(floored)
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



// ----------- problem HumanEval_99_closest_integer, completion 21 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.7UYkFu/tmpzrwcnna5-1.o:tmpzrwcnna5-1.o:function $s11tmpzrwcnna515closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.7UYkFu/tmpzrwcnna5-1.o:tmpzrwcnna5-1.o:function $s11tmpzrwcnna515closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.7UYkFu/tmpzrwcnna5-1.o:tmpzrwcnna5-1.o:function $s11tmpzrwcnna515closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.7UYkFu/tmpzrwcnna5-1.o:tmpzrwcnna5-1.o:function $s11tmpzrwcnna515closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.7UYkFu/tmpzrwcnna5-1.o:tmpzrwcnna5-1.o:function $s11tmpzrwcnna515closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.7UYkFu/tmpzrwcnna5-1.o:tmpzrwcnna5-1.o:function $s11tmpzrwcnna515closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.7UYkFu/tmpzrwcnna5-1.o:tmpzrwcnna5-1.o:function $s11tmpzrwcnna515closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
clang-13: error: linker command failed with exit code 1 (use -v to see invocation)

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
    let rounded = number.rounded()
    if rounded > number {
        return Int(rounded) - 1
    }
    return Int(rounded)
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_99_closest_integer, completion 43 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_i
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
    let rounded = Int(number.rounded())
    let floor = Int(number.rounded(.down))
    let ceil = Int(number.rounded(.up))
    if number - Double(floor) == 0.5 {
        return floor
    } else if number - Double(ceil) == -0.5 {
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



// ----------- problem HumanEval_99_closest_integer, completion 117 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.2qeDO8/tmptrmxhwzd-1.o:tmptrmxhwzd-1.o:function $s11tmptrmxhwzd15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.2qeDO8/tmptrmxhwzd-1.o:tmptrmxhwzd-1.o:function $s11tmptrmxhwzd15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.2qeDO8/tmptrmxhwzd-1.o:tmptrmxhwzd-1.o:function $s11tmptrmxhwzd15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.2qeDO8/tmptrmxhwzd-1.o:tmptrmxhwzd-1.o:function $s11tmptrmxhwzd15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.2qeDO8/tmptrmxhwzd-1.o:tmptrmxhwzd-1.o:function $s11tmptrmxhwzd15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.2qeDO8/tmptrmxhwzd-1.o:tmptrmxhwzd-1.o:function $s11tmptrmxhwzd15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.2qeDO8/tmptrmxhwzd-1.o:tmptrmxhwzd-1.o:function $s11tmptrmxhwzd15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
clang-13: error: linker command failed with exit code 1 (use -v to see invocation)

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
    let rounded = number.rounded()
    if number - rounded >= 0.5 {
        return Int(rounded) + 1
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



// ----------- problem HumanEval_99_closest_integer, completion 65 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.uRG6yN/tmpbybu7a2b-1.o:tmpbybu7a2b-1.o:function $s11tmpbybu7a2b15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.uRG6yN/tmpbybu7a2b-1.o:tmpbybu7a2b-1.o:function $s11tmpbybu7a2b15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.uRG6yN/tmpbybu7a2b-1.o:tmpbybu7a2b-1.o:function $s11tmpbybu7a2b15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.uRG6yN/tmpbybu7a2b-1.o:tmpbybu7a2b-1.o:function $s11tmpbybu7a2b15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.uRG6yN/tmpbybu7a2b-1.o:tmpbybu7a2b-1.o:function $s11tmpbybu7a2b15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.uRG6yN/tmpbybu7a2b-1.o:tmpbybu7a2b-1.o:function $s11tmpbybu7a2b15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.uRG6yN/tmpbybu7a2b-1.o:tmpbybu7a2b-1.o:function $s11tmpbybu7a2b15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
clang-13: error: linker command failed with exit code 1 (use -v to see invocation)

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
    let rounded = Int(number.rounded())
    return rounded
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_99_closest_integer, completion 78 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.KhlbcM/tmp_qkybqxu-1.o:tmp_qkybqxu-1.o:function $s11tmp_qkybqxu15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.KhlbcM/tmp_qkybqxu-1.o:tmp_qkybqxu-1.o:function $s11tmp_qkybqxu15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.KhlbcM/tmp_qkybqxu-1.o:tmp_qkybqxu-1.o:function $s11tmp_qkybqxu15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.KhlbcM/tmp_qkybqxu-1.o:tmp_qkybqxu-1.o:function $s11tmp_qkybqxu15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.KhlbcM/tmp_qkybqxu-1.o:tmp_qkybqxu-1.o:function $s11tmp_qkybqxu15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.KhlbcM/tmp_qkybqxu-1.o:tmp_qkybqxu-1.o:function $s11tmp_qkybqxu15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.KhlbcM/tmp_qkybqxu-1.o:tmp_qkybqxu-1.o:function $s11tmp_qkybqxu15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
clang-13: error: linker command failed with exit code 1 (use -v to see invocation)

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
    let rounded = number.rounded()
    let integer = Int(rounded)
    return integer
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_99_closest_integer, completion 52 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.6VwOBx/tmphprw77_r-1.o:tmphprw77_r-1.o:function $s11tmphprw77_r15closest_i
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
    let rounded = Int(number.rounded())
    let floor = Int(number.rounded(.down))
    let ceiling = Int(number.rounded(.up))
    if number - Double(floor) == 0.5 {
        return ceiling
    } else if number - Double(floor) == -0.5 {
        return floor
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



// ----------- problem HumanEval_99_closest_integer, completion 193 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.bYIQ6y/tmpwwwwx8jw-1.o:tmpwwwwx8jw-1.o:function $s11tmpwwwwx8jw15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.bYIQ6y/tmpwwwwx8jw-1.o:tmpwwwwx8jw-1.o:function $s11tmpwwwwx8jw15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.bYIQ6y/tmpwwwwx8jw-1.o:tmpwwwwx8jw-1.o:function $s11tmpwwwwx8jw15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.bYIQ6y/tmpwwwwx8jw-1.o:tmpwwwwx8jw-1.o:function $s11tmpwwwwx8jw15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.bYIQ6y/tmpwwwwx8jw-1.o:tmpwwwwx8jw-1.o:function $s11tmpwwwwx8jw15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.bYIQ6y/tmpwwwwx8jw-1.o:tmpwwwwx8jw-1.o:function $s11tmpwwwwx8jw15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.bYIQ6y/tmpwwwwx8jw-1.o:tmpwwwwx8jw-1.o:function $s11tmpwwwwx8jw15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
clang-13: error: linker command failed with exit code 1 (use -v to see invocation)

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
    let rounded = number.rounded()
    let rounded_int = Int(rounded)
    let rounded_double = Double(rounded_int)
    if number > rounded_double {
        return rounded_int + 1
    } else if number < rounded_double {
        return rounded_int - 1
    } else {
        return rounded_int
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



// ----------- problem HumanEval_99_closest_integer, completion 122 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.w1CUsa/tmpx_xyaffz-1.o:tmpx_xyaffz-1.o:function $s11tmpx_xyaffz15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.w1CUsa/tmpx_xyaffz-1.o:tmpx_xyaffz-1.o:function $s11tmpx_xyaffz15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.w1CUsa/tmpx_xyaffz-1.o:tmpx_xyaffz-1.o:function $s11tmpx_xyaffz15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.w1CUsa/tmpx_xyaffz-1.o:tmpx_xyaffz-1.o:function $s11tmpx_xyaffz15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.w1CUsa/tmpx_xyaffz-1.o:tmpx_xyaffz-1.o:function $s11tmpx_xyaffz15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.w1CUsa/tmpx_xyaffz-1.o:tmpx_xyaffz-1.o:function $s11tmpx_xyaffz15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.w1CUsa/tmpx_xyaffz-1.o:tmpx_xyaffz-1.o:function $s11tmpx_xyaffz15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
clang-13: error: linker command failed with exit code 1 (use -v to see invocation)

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
    guard let doubleValue = Double(value) else {
        return 0
    }
    return Int(doubleValue.rounded(.awayFromZero))
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_99_closest_integer, completion 25 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
clang-13: error: linker command failed with exit code 1 (use -v to see invocation)

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
    return Int(Double(value)!.rounded(.awayFromZero))
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_99_closest_integer, completion 183 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_i
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
    let rounded = Int(number.rounded())
    let floor = Int(number.rounded(.down))
    let ceil = Int(number.rounded(.up))
    if number - Double(floor) == 0.5 {
        return floor
    } else if number - Double(ceil) == -0.5 {
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



// ----------- problem HumanEval_99_closest_integer, completion 96 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.uRG6yN/tmpbybu7a2b-1.o:tmpbybu7a2b-1.o:function $s11tmpbybu7a2b15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.uRG6yN/tmpbybu7a2b-1.o:tmpbybu7a2b-1.o:function $s11tmpbybu7a2b15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.uRG6yN/tmpbybu7a2b-1.o:tmpbybu7a2b-1.o:function $s11tmpbybu7a2b15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.uRG6yN/tmpbybu7a2b-1.o:tmpbybu7a2b-1.o:function $s11tmpbybu7a2b15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.uRG6yN/tmpbybu7a2b-1.o:tmpbybu7a2b-1.o:function $s11tmpbybu7a2b15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.uRG6yN/tmpbybu7a2b-1.o:tmpbybu7a2b-1.o:function $s11tmpbybu7a2b15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.uRG6yN/tmpbybu7a2b-1.o:tmpbybu7a2b-1.o:function $s11tmpbybu7a2b15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
clang-13: error: linker command failed with exit code 1 (use -v to see invocation)

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
    let rounded = Int(number.rounded())
    return rounded
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_99_closest_integer, completion 4 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.Rcn9Uu/tmpipdq2yua-1.o:tmpipdq2yua-1.o:function $s11tmpipdq2yua15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.Rcn9Uu/tmpipdq2yua-1.o:tmpipdq2yua-1.o:function $s11tmpipdq2yua15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.Rcn9Uu/tmpipdq2yua-1.o:tmpipdq2yua-1.o:function $s11tmpipdq2yua15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.Rcn9Uu/tmpipdq2yua-1.o:tmpipdq2yua-1.o:function $s11tmpipdq2yua15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.Rcn9Uu/tmpipdq2yua-1.o:tmpipdq2yua-1.o:function $s11tmpipdq2yua15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.Rcn9Uu/tmpipdq2yua-1.o:tmpipdq2yua-1.o:function $s11tmpipdq2yua15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.Rcn9Uu/tmpipdq2yua-1.o:tmpipdq2yua-1.o:function $s11tmpipdq2yua15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
clang-13: error: linker command failed with exit code 1 (use -v to see invocation)

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
    let rounded = Int(number.rounded())
    if number - Double(rounded) >= 0.5 {
        return rounded + 1
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



// ----------- problem HumanEval_99_closest_integer, completion 53 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_i
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
    let rounded = Int(number.rounded())
    let floor = Int(number.rounded(.down))
    let ceil = Int(number.rounded(.up))
    if abs(number - Double(rounded)) == 0.5 {
        if number > 0 {
            return ceil
        } else {
            return floor
        }
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



// ----------- problem HumanEval_99_closest_integer, completion 108 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.QxQyLu/tmppkcsb9oh-1.o:tmppkcsb9oh-1.o:function $s11tmppkcsb9oh15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
clang-13: error: linker command failed with exit code 1 (use -v to see invocation)

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
    return Int(Double(value)!.rounded(.awayFromZero))
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_99_closest_integer, completion 198 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.Xb8D6y/tmpbfejneo4-1.o:tmpbfejneo4-1.o:function $s11tmpbfejneo415closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.Xb8D6y/tmpbfejneo4-1.o:tmpbfejneo4-1.o:function $s11tmpbfejneo415closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.Xb8D6y/tmpbfejneo4-1.o:tmpbfejneo4-1.o:function $s11tmpbfejneo415closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.Xb8D6y/tmpbfejneo4-1.o:tmpbfejneo4-1.o:function $s11tmpbfejneo415closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.Xb8D6y/tmpbfejneo4-1.o:tmpbfejneo4-1.o:function $s11tmpbfejneo415closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.Xb8D6y/tmpbfejneo4-1.o:tmpbfejneo4-1.o:function $s11tmpbfejneo415closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.Xb8D6y/tmpbfejneo4-1.o:tmpbfejneo4-1.o:function $s11tmpbfejneo415closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
clang-13: error: linker command failed with exit code 1 (use -v to see invocation)

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
    let rounded = Int(number.rounded())
    let decimal = number - Double(rounded)
    if decimal > 0.5 {
        return rounded + 1
    } else if decimal < -0.5 {
        return rounded - 1
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



// ----------- problem HumanEval_99_closest_integer, completion 107 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.aBi6R8/tmpij2a3429-1.o:tmpij2a3429-1.o:function $s11tmpij2a342915closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.aBi6R8/tmpij2a3429-1.o:tmpij2a3429-1.o:function $s11tmpij2a342915closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.aBi6R8/tmpij2a3429-1.o:tmpij2a3429-1.o:function $s11tmpij2a342915closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.aBi6R8/tmpij2a3429-1.o:tmpij2a3429-1.o:function $s11tmpij2a342915closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.aBi6R8/tmpij2a3429-1.o:tmpij2a3429-1.o:function $s11tmpij2a342915closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.aBi6R8/tmpij2a3429-1.o:tmpij2a3429-1.o:function $s11tmpij2a342915closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.aBi6R8/tmpij2a3429-1.o:tmpij2a3429-1.o:function $s11tmpij2a342915closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.aBi6R8/tmpij2a3429-1.o:tmpij2a3429-1.o:function $s11tmpij2a342915closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.aBi6R8/tmpij2a3429-1.o:tmpij2a3429-1.o:function $s11tmpij2a342915closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.aBi6R8/tmpij2a3429-1.o:tmpij2a3429-1.o:function $s11tmpij2a342915closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.aBi6R8/tmpij2a3429-1.o:tmpij2a3429-1.o:function $s11tmpij2a342915closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.aBi6R8/tmpij2a3429-1.o:tmpij2a3429-1.o:function $s11tmpij2a342915closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.aBi6R8/tmpij2a3429-1.o:tmpij2a3429-1.o:function $s11tmpij2a342915closest_i
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
    let rounded = Int(number.rounded())
    let floor = Int(number.rounded(.down))
    let ceiling = Int(number.rounded(.up))
    let diff_from_rounded = abs(number - Double(rounded))
    let diff_from_floor = abs(number - Double(floor))
    let diff_from_ceiling = abs(number - Double(ceiling))
    if diff_from_rounded < diff_from_floor && diff_from_rounded < diff_from_ceiling {
        return rounded
    } else if diff_from_floor < diff_from_ceiling {
        return floor
    } else {
        return ceiling
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



// ----------- problem HumanEval_99_closest_integer, completion 105 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.nIoDf4/tmp5jehhib2-1.o:tmp5jehhib2-1.o:function $s11tmp5jehhib215closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.nIoDf4/tmp5jehhib2-1.o:tmp5jehhib2-1.o:function $s11tmp5jehhib215closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.nIoDf4/tmp5jehhib2-1.o:tmp5jehhib2-1.o:function $s11tmp5jehhib215closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.nIoDf4/tmp5jehhib2-1.o:tmp5jehhib2-1.o:function $s11tmp5jehhib215closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.nIoDf4/tmp5jehhib2-1.o:tmp5jehhib2-1.o:function $s11tmp5jehhib215closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.nIoDf4/tmp5jehhib2-1.o:tmp5jehhib2-1.o:function $s11tmp5jehhib215closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.nIoDf4/tmp5jehhib2-1.o:tmp5jehhib2-1.o:function $s11tmp5jehhib215closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.nIoDf4/tmp5jehhib2-1.o:tmp5jehhib2-1.o:function $s11tmp5jehhib215closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.nIoDf4/tmp5jehhib2-1.o:tmp5jehhib2-1.o:function $s11tmp5jehhib215closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.nIoDf4/tmp5jehhib2-1.o:tmp5jehhib2-1.o:function $s11tmp5jehhib215closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.nIoDf4/tmp5jehhib2-1.o:tmp5jehhib2-1.o:function $s11tmp5jehhib215closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.nIoDf4/tmp5jehhib2-1.o:tmp5jehhib2-1.o:function $s11tmp5jehhib215closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.nIoDf4/tmp5jehhib2-1.o:tmp5jehhib2-1.o:function $s11tmp5jehhib215closest_i
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
    let rounded = Int(number.rounded())
    let floor = Int(number.rounded(.down))
    let ceil = Int(number.rounded(.up))
    let diff = number - Double(rounded)
    if diff == 0 {
        return rounded
    } else if diff < 0 {
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



// ----------- problem HumanEval_99_closest_integer, completion 49 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.hWfLLD/tmp5ajhxofa-1.o:tmp5ajhxofa-1.o:function $s11tmp5ajhxofa15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.hWfLLD/tmp5ajhxofa-1.o:tmp5ajhxofa-1.o:function $s11tmp5ajhxofa15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.hWfLLD/tmp5ajhxofa-1.o:tmp5ajhxofa-1.o:function $s11tmp5ajhxofa15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.hWfLLD/tmp5ajhxofa-1.o:tmp5ajhxofa-1.o:function $s11tmp5ajhxofa15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.hWfLLD/tmp5ajhxofa-1.o:tmp5ajhxofa-1.o:function $s11tmp5ajhxofa15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.hWfLLD/tmp5ajhxofa-1.o:tmp5ajhxofa-1.o:function $s11tmp5ajhxofa15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.hWfLLD/tmp5ajhxofa-1.o:tmp5ajhxofa-1.o:function $s11tmp5ajhxofa15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.hWfLLD/tmp5ajhxofa-1.o:tmp5ajhxofa-1.o:function $s11tmp5ajhxofa15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.hWfLLD/tmp5ajhxofa-1.o:tmp5ajhxofa-1.o:function $s11tmp5ajhxofa15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.hWfLLD/tmp5ajhxofa-1.o:tmp5ajhxofa-1.o:function $s11tmp5ajhxofa15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.hWfLLD/tmp5ajhxofa-1.o:tmp5ajhxofa-1.o:function $s11tmp5ajhxofa15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.hWfLLD/tmp5ajhxofa-1.o:tmp5ajhxofa-1.o:function $s11tmp5ajhxofa15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.hWfLLD/tmp5ajhxofa-1.o:tmp5ajhxofa-1.o:function $s11tmp5ajhxofa15closest_i
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
    let rounded = Int(number.rounded())
    let floor = Int(number.rounded(.down))
    let ceiling = Int(number.rounded(.up))
    let floorDiff = abs(number - Double(floor))
    let ceilingDiff = abs(number - Double(ceiling))
    if floorDiff < ceilingDiff {
        return floor
    } else if floorDiff > ceilingDiff {
        return ceiling
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



// ----------- problem HumanEval_99_closest_integer, completion 104 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpxfdly6de.swift:17:9: warning: initialization of immutable value 'rounded' was never used; consider replacing with assignment to '_' or removing it
    let rounded = Int(number.rounded())
    ~~~~^~~~~~~
    _
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.AGRkf4/tmpxfdly6de-1.o:tmpxfdly6de-1.o:function $s11tmpxfdly6de15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.AGRkf4/tmpxfdly6de-1.o:tmpxfdly6de-1.o:function $s11tmpxfdly6de15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.AGRkf4/tmpxfdly6de-1.o:tmpxfdly6de-1.o:function $s11tmpxfdly6de15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.AGRkf4/tmpxfdly6de-1.o:tmpxfdly6de-1.o:function $s11tmpxfdly6de15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.AGRkf4/tmpxfdly6de-1.o:tmpxfdly6de-1.o:function $s11tmpxfdly6de15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.AGRkf4/tmpxfdly6de-1.o:tmpxfdly6de-1.o:function $s11tmpxfdly6de15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.AGRkf4/tmpxfdly6de-1.o:tmpxfdly6de-1.o:function $s11tmpxfdly6de15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.AGRkf4/tmpxfdly6de-1.o:tmpxfdly6de-1.o:function $s11tmpxfdly6de15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.AGRkf4/tmpxfdly6de-1.o:tmpxfdly6de-1.o:function $s11tmpxfdly6de15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.AGRkf4/tmpxfdly6de-1.o:tmpxfdly6de-1.o:function $s11tmpxfdly6de15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.AGRkf4/tmpxfdly6de-1.o:tmpxfdly6de-1.o:function $s11tmpxfdly6de15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.AGRkf4/tmpxfdl
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
    let rounded = Int(number.rounded())
    let floor = Int(number.rounded(.down))
    let ceil = Int(number.rounded(.up))
    let floorDiff = abs(number - Double(floor))
    let ceilDiff = abs(number - Double(ceil))
    if floorDiff == ceilDiff {
        return number > 0 ? ceil : floor
    }
    return floorDiff < ceilDiff ? floor : ceil
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_99_closest_integer, completion 73 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.0ma5OM/tmpun2am6bj-1.o:tmpun2am6bj-1.o:function $s11tmpun2am6bj15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.0ma5OM/tmpun2am6bj-1.o:tmpun2am6bj-1.o:function $s11tmpun2am6bj15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.0ma5OM/tmpun2am6bj-1.o:tmpun2am6bj-1.o:function $s11tmpun2am6bj15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.0ma5OM/tmpun2am6bj-1.o:tmpun2am6bj-1.o:function $s11tmpun2am6bj15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.0ma5OM/tmpun2am6bj-1.o:tmpun2am6bj-1.o:function $s11tmpun2am6bj15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.0ma5OM/tmpun2am6bj-1.o:tmpun2am6bj-1.o:function $s11tmpun2am6bj15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.0ma5OM/tmpun2am6bj-1.o:tmpun2am6bj-1.o:function $s11tmpun2am6bj15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
clang-13: error: linker command failed with exit code 1 (use -v to see invocation)

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
    let rounded = number.rounded()
    return Int(rounded)
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_99_closest_integer, completion 54 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.gjPbTN/tmp5gaf5wrq-1.o:tmp5gaf5wrq-1.o:function $s11tmp5gaf5wrq15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.gjPbTN/tmp5gaf5wrq-1.o:tmp5gaf5wrq-1.o:function $s11tmp5gaf5wrq15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.gjPbTN/tmp5gaf5wrq-1.o:tmp5gaf5wrq-1.o:function $s11tmp5gaf5wrq15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.gjPbTN/tmp5gaf5wrq-1.o:tmp5gaf5wrq-1.o:function $s11tmp5gaf5wrq15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.gjPbTN/tmp5gaf5wrq-1.o:tmp5gaf5wrq-1.o:function $s11tmp5gaf5wrq15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.gjPbTN/tmp5gaf5wrq-1.o:tmp5gaf5wrq-1.o:function $s11tmp5gaf5wrq15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.gjPbTN/tmp5gaf5wrq-1.o:tmp5gaf5wrq-1.o:function $s11tmp5gaf5wrq15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.gjPbTN/tmp5gaf5wrq-1.o:tmp5gaf5wrq-1.o:function $s11tmp5gaf5wrq15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.gjPbTN/tmp5gaf5wrq-1.o:tmp5gaf5wrq-1.o:function $s11tmp5gaf5wrq15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.gjPbTN/tmp5gaf5wrq-1.o:tmp5gaf5wrq-1.o:function $s11tmp5gaf5wrq15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.gjPbTN/tmp5gaf5wrq-1.o:tmp5gaf5wrq-1.o:function $s11tmp5gaf5wrq15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.gjPbTN/tmp5gaf5wrq-1.o:tmp5gaf5wrq-1.o:function $s11tmp5gaf5wrq15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.gjPbTN/tmp5gaf5wrq-1.o:tmp5gaf5wrq-1.o:function $s11tmp5gaf5wrq15closest_i
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
    let rounded = Int(number.rounded())
    let floor = Int(number.rounded(.down))
    let ceiling = Int(number.rounded(.up))
    let floorDiff = abs(number - Double(floor))
    let ceilingDiff = abs(number - Double(ceiling))
    if floorDiff == ceilingDiff {
        return rounded > 0 ? ceiling : floor
    }
    return floorDiff < ceilingDiff ? floor : ceiling
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_99_closest_integer, completion 141 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.ssgBdd/tmpfz6uw34e-1.o:tmpfz6uw34e-1.o:function $s11tmpfz6uw34e15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.ssgBdd/tmpfz6uw34e-1.o:tmpfz6uw34e-1.o:function $s11tmpfz6uw34e15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.ssgBdd/tmpfz6uw34e-1.o:tmpfz6uw34e-1.o:function $s11tmpfz6uw34e15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.ssgBdd/tmpfz6uw34e-1.o:tmpfz6uw34e-1.o:function $s11tmpfz6uw34e15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.ssgBdd/tmpfz6uw34e-1.o:tmpfz6uw34e-1.o:function $s11tmpfz6uw34e15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.ssgBdd/tmpfz6uw34e-1.o:tmpfz6uw34e-1.o:function $s11tmpfz6uw34e15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.ssgBdd/tmpfz6uw34e-1.o:tmpfz6uw34e-1.o:function $s11tmpfz6uw34e15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.ssgBdd/tmpfz6uw34e-1.o:tmpfz6uw34e-1.o:function $s11tmpfz6uw34e15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.ssgBdd/tmpfz6uw34e-1.o:tmpfz6uw34e-1.o:function $s11tmpfz6uw34e15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.ssgBdd/tmpfz6uw34e-1.o:tmpfz6uw34e-1.o:function $s11tmpfz6uw34e15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.ssgBdd/tmpfz6uw34e-1.o:tmpfz6uw34e-1.o:function $s11tmpfz6uw34e15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.ssgBdd/tmpfz6uw34e-1.o:tmpfz6uw34e-1.o:function $s11tmpfz6uw34e15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.ssgBdd/tmpfz6uw34e-1.o:tmpfz6uw34e-1.o:function $s11tmpfz6uw34e15closest_i
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
    let rounded = Int(number.rounded())
    let floor = Int(number.rounded(.down))
    let ceil = Int(number.rounded(.up))
    let floor_diff = abs(number - Double(floor))
    let ceil_diff = abs(number - Double(ceil))
    if floor_diff < ceil_diff {
        return floor
    } else if ceil_diff < floor_diff {
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



// ----------- problem HumanEval_99_closest_integer, completion 101 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.s5FGTu/tmpr_kzzjx6-1.o:tmpr_kzzjx6-1.o:function $s11tmpr_kzzjx615closest_i
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
    let rounded = Int(number.rounded())
    let floor = Int(number.rounded(.down))
    let ceil = Int(number.rounded(.up))
    if number - Double(floor) == 0.5 {
        return floor
    } else if number - Double(ceil) == -0.5 {
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



// ----------- problem HumanEval_99_closest_integer, completion 70 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.gS7YoN/tmpgwp65m0l-1.o:tmpgwp65m0l-1.o:function $s11tmpgwp65m0l15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.gS7YoN/tmpgwp65m0l-1.o:tmpgwp65m0l-1.o:function $s11tmpgwp65m0l15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.gS7YoN/tmpgwp65m0l-1.o:tmpgwp65m0l-1.o:function $s11tmpgwp65m0l15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.gS7YoN/tmpgwp65m0l-1.o:tmpgwp65m0l-1.o:function $s11tmpgwp65m0l15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.gS7YoN/tmpgwp65m0l-1.o:tmpgwp65m0l-1.o:function $s11tmpgwp65m0l15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.gS7YoN/tmpgwp65m0l-1.o:tmpgwp65m0l-1.o:function $s11tmpgwp65m0l15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.gS7YoN/tmpgwp65m0l-1.o:tmpgwp65m0l-1.o:function $s11tmpgwp65m0l15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
clang-13: error: linker command failed with exit code 1 (use -v to see invocation)

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
    let rounded = Int(number.rounded())
    let decimal = number - Double(rounded)
    if decimal < 0 {
        return rounded - 1
    } else if decimal > 0 {
        return rounded + 1
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



// ----------- problem HumanEval_99_closest_integer, completion 161 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.n6p6Pt/tmpg3obz09_-1.o:tmpg3obz09_-1.o:function $s11tmpg3obz09_15closest_i
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
    let rounded = number.rounded()
    let ceiled = number.rounded(.up)
    let floored = number.rounded(.down)
    let diff1 = abs(number - rounded)
    let diff2 = abs(number - ceiled)
    let diff3 = abs(number - floored)
    if diff1 < diff2 && diff1 < diff3 {
        return Int(rounded)
    } else if diff2 < diff1 && diff2 < diff3 {
        return Int(ceiled)
    } else {
        return Int(floored)
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



// ----------- problem HumanEval_99_closest_integer, completion 30 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpqtvt09ul.swift:17:9: warning: initialization of immutable value 'rounded' was never used; consider replacing with assignment to '_' or removing it
    let rounded = Int(number.rounded())
    ~~~~^~~~~~~
    _
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.gBz4fe/tmpqtvt09ul-1.o:tmpqtvt09ul-1.o:function $s11tmpqtvt09ul15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.gBz4fe/tmpqtvt09ul-1.o:tmpqtvt09ul-1.o:function $s11tmpqtvt09ul15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.gBz4fe/tmpqtvt09ul-1.o:tmpqtvt09ul-1.o:function $s11tmpqtvt09ul15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.gBz4fe/tmpqtvt09ul-1.o:tmpqtvt09ul-1.o:function $s11tmpqtvt09ul15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.gBz4fe/tmpqtvt09ul-1.o:tmpqtvt09ul-1.o:function $s11tmpqtvt09ul15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.gBz4fe/tmpqtvt09ul-1.o:tmpqtvt09ul-1.o:function $s11tmpqtvt09ul15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.gBz4fe/tmpqtvt09ul-1.o:tmpqtvt09ul-1.o:function $s11tmpqtvt09ul15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.gBz4fe/tmpqtvt09ul-1.o:tmpqtvt09ul-1.o:function $s11tmpqtvt09ul15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.gBz4fe/tmpqtvt09ul-1.o:tmpqtvt09ul-1.o:function $s11tmpqtvt09ul15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.gBz4fe/tmpqtvt09ul-1.o:tmpqtvt09ul-1.o:function $s11tmpqtvt09ul15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.gBz4fe/tmpqtvt09ul-1.o:tmpqtvt09ul-1.o:function $s11tmpqtvt09ul15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.gBz4fe/tmpqtvt
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
    let rounded = Int(number.rounded())
    let floor = Int(number.rounded(.down))
    let ceil = Int(number.rounded(.up))
    let floorDiff = abs(number - Double(floor))
    let ceilDiff = abs(number - Double(ceil))
    if floorDiff == ceilDiff {
        return number < 0 ? floor : ceil
    }
    return floorDiff < ceilDiff ? floor : ceil
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_99_closest_integer, completion 191 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.OwhxoK/tmp5c_w1hoj-1.o:tmp5c_w1hoj-1.o:function $s11tmp5c_w1hoj15closest_i
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
    let rounded = Int(number.rounded())
    let floor = Int(number.rounded(.down))
    let ceil = Int(number.rounded(.up))
    if abs(number - Double(rounded)) == 0.5 {
        if number > 0 {
            return ceil
        } else {
            return floor
        }
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



// ----------- problem HumanEval_99_closest_integer, completion 55 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
error: link command failed with exit code 1 (use -v to see invocation)
/tmp/TemporaryDirectory.kJ260N/tmpg1829udu-1.o:tmpg1829udu-1.o:function $s11tmpg1829udu15closest_integer5valueSiSS_tF: error: undefined reference to 'round'
/tmp/TemporaryDirectory.kJ260N/tmpg1829udu-1.o:tmpg1829udu-1.o:function $s11tmpg1829udu15closest_integer5valueSiSS_tF: error: undefined reference to 'rint'
/tmp/TemporaryDirectory.kJ260N/tmpg1829udu-1.o:tmpg1829udu-1.o:function $s11tmpg1829udu15closest_integer5valueSiSS_tF: error: undefined reference to 'trunc'
/tmp/TemporaryDirectory.kJ260N/tmpg1829udu-1.o:tmpg1829udu-1.o:function $s11tmpg1829udu15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
/tmp/TemporaryDirectory.kJ260N/tmpg1829udu-1.o:tmpg1829udu-1.o:function $s11tmpg1829udu15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.kJ260N/tmpg1829udu-1.o:tmpg1829udu-1.o:function $s11tmpg1829udu15closest_integer5valueSiSS_tF: error: undefined reference to 'floor'
/tmp/TemporaryDirectory.kJ260N/tmpg1829udu-1.o:tmpg1829udu-1.o:function $s11tmpg1829udu15closest_integer5valueSiSS_tF: error: undefined reference to 'ceil'
clang-13: error: linker command failed with exit code 1 (use -v to see invocation)

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
    let rounded = number.rounded()
    let roundedInt = Int(rounded)
    let decimal = number - rounded
    if decimal == 0 {
        return roundedInt
    } else if decimal > 0 {
        return roundedInt + 1
    } else {
        return roundedInt - 1
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



