// ----------- problem HumanEval_66_digitSum, completion 19 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 45 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 98 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 184 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 2 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 71 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 55 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 152 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 26 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 127 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 23 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 42 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 37 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 25 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 182 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 29 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 35 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 179 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 136 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpyszequz4.swift:19:52: error: result values in '? :' expression have mismatching types 'UInt8?' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue : 0) }
                                                ~~~^~~~~~~~~~

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 84 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 39 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 143 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 87 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 186 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 146 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 91 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 164 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 138 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 188 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 67 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 190 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 110 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 28 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 170 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 44 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 158 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 58 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 122 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 56 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 54 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 107 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 32 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 114 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 139 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 121 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 74 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 36 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 175 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 181 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 192 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 193 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 17 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 131 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 0 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_93_encode, completion 2 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp125m_vyf.swift:20:52: error: result values in '? :' expression have mismatching types 'Character' and 'String'
            encoded.append(vowels.contains(char) ? nextChar : nextChar.uppercased())
                                                   ^~~~~~~~

*/
/* stdout = 

*/


/// Write a function that takes a message, and encodes in such a 
/// way that it swaps case of all letters, replaces all vowels in 
/// the message with the letter that appears 2 places ahead of that 
/// vowel in the english alphabet. 
/// Assume only letters. 
/// Examples:
/// >>> encode(message: "test")
/// "TGST"
/// >>> encode(message: "This is a message")
/// "tHKS KS C MGSSCGG"
func encode(message: String) -> String {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    let alphabet: [Character] = Array("abcdefghijklmnopqrstuvwxyz")
    var encoded = ""
    for char in message {
        if let index = alphabet.firstIndex(of: char) {
            let nextIndex = index + 2
            let nextChar = alphabet[nextIndex % alphabet.count]
            encoded.append(vowels.contains(char) ? nextChar : nextChar.uppercased())
        } else {
            encoded.append(char)
        }
    }
    return encoded
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(encode(message: "TEST") == "tgst")
assert(encode(message: "Mudasir") == "mWDCSKR")
assert(encode(message: "YES") == "ygs")
assert(encode(message: "This is a message") == "tHKS KS C MGSSCGG")
assert(encode(message: "I DoNt KnOw WhAt tO WrItE") == "k dQnT kNqW wHcT Tq wRkTg")



// ----------- problem HumanEval_66_digitSum, completion 73 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 103 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 108 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 70 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 51 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 64 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 197 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 118 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 113 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3zst758o.swift:19:73: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + (65...90 ~= $1.asciiValue! ? $1.asciiValue! : 0) }
                                                           ~~~~~~~~~~~~~^
                                                           Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + (65...90 ~= $1.asciiValue! ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 38 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 126 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 102 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 148 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 80 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 150 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 57 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpyszequz4.swift:19:52: error: result values in '? :' expression have mismatching types 'UInt8?' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue : 0) }
                                                ~~~^~~~~~~~~~

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 109 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 50 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 151 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 105 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 140 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 128 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 90 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 198 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 119 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 33 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 40 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 86 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 88 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_161_solve, completion 123 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp2t1h34a9.swift:15:43: error: cannot convert value of type 'String.Element' (aka 'Character') to closure result type 'String'
    return s.reversed().map { $0.isLetter ? $0.isUppercase ? $0.lowercased() : $0.uppercased() : $0 }.joined()
                              ~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp2t1h34a9.swift:15:60: error: result values in '? :' expression have mismatching types 'String' and 'String.Element' (aka 'Character')
    return s.reversed().map { $0.isLetter ? $0.isUppercase ? $0.lowercased() : $0.uppercased() : $0 }.joined()
                                            ~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// You are given a string s.
/// if s[i] is a letter, reverse its case from lower to upper or vise versa, 
/// otherwise keep it as it is.
/// If the string contains no letters, reverse the string.
/// The function should return the resulted string.
/// Examples
/// >>> solve(s: "1234")
/// "4321"
/// >>> solve(s: "ab")
/// "AB"
/// >>> solve(s: "#a@C")
/// "#A@c"
func solve(s: String) -> String {
    return s.reversed().map { $0.isLetter ? $0.isUppercase ? $0.lowercased() : $0.uppercased() : $0 }.joined()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(solve(s: "AsDf") == "aSdF")
assert(solve(s: "1234") == "4321")
assert(solve(s: "ab") == "AB")
assert(solve(s: "#a@C") == "#A@c")
assert(solve(s: "#AsdfW^45") == "#aSDFw^45")
assert(solve(s: "#6@2") == "2@6#")
assert(solve(s: "#$a^D") == "#$A^d")
assert(solve(s: "#ccc") == "#CCC")



// ----------- problem HumanEval_66_digitSum, completion 75 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 76 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 30 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 83 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_161_solve, completion 180 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp_z5dv__4.swift:15:48: error: cannot convert value of type 'String.Element' (aka 'Character') to closure result type 'String'
    return s.isEmpty ? s : s.map { $0.isLetter ? $0.isUppercase ? $0.lowercased() : $0.uppercased() : $0 }.joined()
                                   ~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp_z5dv__4.swift:15:65: error: result values in '? :' expression have mismatching types 'String' and 'String.Element' (aka 'Character')
    return s.isEmpty ? s : s.map { $0.isLetter ? $0.isUppercase ? $0.lowercased() : $0.uppercased() : $0 }.joined()
                                                 ~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// You are given a string s.
/// if s[i] is a letter, reverse its case from lower to upper or vise versa, 
/// otherwise keep it as it is.
/// If the string contains no letters, reverse the string.
/// The function should return the resulted string.
/// Examples
/// >>> solve(s: "1234")
/// "4321"
/// >>> solve(s: "ab")
/// "AB"
/// >>> solve(s: "#a@C")
/// "#A@c"
func solve(s: String) -> String {
    return s.isEmpty ? s : s.map { $0.isLetter ? $0.isUppercase ? $0.lowercased() : $0.uppercased() : $0 }.joined()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(solve(s: "AsDf") == "aSdF")
assert(solve(s: "1234") == "4321")
assert(solve(s: "ab") == "AB")
assert(solve(s: "#a@C") == "#A@c")
assert(solve(s: "#AsdfW^45") == "#aSDFw^45")
assert(solve(s: "#6@2") == "2@6#")
assert(solve(s: "#$a^D") == "#$A^d")
assert(solve(s: "#ccc") == "#CCC")



// ----------- problem HumanEval_66_digitSum, completion 111 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 106 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 77 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 120 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 43 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 27 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 168 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 162 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 46 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 7 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 116 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 5 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 47 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 135 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 34 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 93 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 11 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 62 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 117 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 60 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 63 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 92 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 9 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 52 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 174 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 169 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 187 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 185 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 99 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 79 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 16 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 15 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 124 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 72 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



// ----------- problem HumanEval_66_digitSum, completion 101 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ugujbvr.swift:19:62: error: result values in '? :' expression have mismatching types 'UInt8' and 'Int'
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
                                                ~~~~~~~~~~~~~^
                                                Int(          )

*/
/* stdout = 

*/


/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// >>> digitSum(s: "")
/// 0
/// >>> digitSum(s: "abAB")
/// 131
/// >>> digitSum(s: "abcCd")
/// 67
/// >>> digitSum(s: "helloE")
/// 69
/// >>> digitSum(s: "woArBld")
/// 131
/// >>> digitSum(s: "aAaaaXa")
/// 153
func digitSum(s: String) -> Int {
    return s.reduce(0) { $0 + ($1.isUppercase ? $1.asciiValue! : 0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(digitSum(s: "") == 0)
assert(digitSum(s: "abAB") == 131)
assert(digitSum(s: "abcCd") == 67)
assert(digitSum(s: "helloE") == 69)
assert(digitSum(s: "woArBld") == 131)
assert(digitSum(s: "aAaaaXa") == 153)
assert(digitSum(s: " How are yOu?") == 151)
assert(digitSum(s: "You arE Very Smart") == 327)



