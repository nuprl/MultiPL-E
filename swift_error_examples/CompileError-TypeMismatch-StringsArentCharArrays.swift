// ----------- problem HumanEval_11_string_xor, completion 106 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpmqgnj2ws.swift:7:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let a = a.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmpmqgnj2ws.swift:8:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let b = b.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    let a = a.utf8.map { UInt8(bitPattern: $0) }
    let b = b.utf8.map { UInt8(bitPattern: $0) }
    let xor = zip(a, b).map { $0 ^ $1 }
    return xor.map { String(UnicodeScalar(UInt8(bitPattern: $0))) }.joined()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(string_xor(a: "111000", b: "101010") == "010010")
assert(string_xor(a: "1", b: "1") == "0")
assert(string_xor(a: "0101", b: "0000") == "0101")



// ----------- problem HumanEval_161_solve, completion 90 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpquflvm7v.swift:19:14: error: cannot convert return expression of type '[String.Element]' (aka 'Array<Character>') to return type 'String'
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
           ~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmpquflvm7v.swift:19:37: error: value of type 'String.Element' (aka 'Character') has no member 'toggleCase'
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
                                 ~~ ^~~~~~~~~~

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
    let letters = s.filter { $0.isLetter }
    if letters.isEmpty {
        return String(s.reversed())
    }
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_11_string_xor, completion 58 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp7la11_c1.swift:7:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let a = a.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmp7la11_c1.swift:8:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let b = b.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmp7la11_c1.swift:10:43: error: incorrect argument labels in call (have 'format:_:', expected 'repeating:count:')
    return result.reduce("") { $0 + String(format: "%02x", $1) }
                                          ^~~~~~~
                                           repeating       count: 

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    let a = a.utf8.map { UInt8(bitPattern: $0) }
    let b = b.utf8.map { UInt8(bitPattern: $0) }
    let result = zip(a, b).map { $0 ^ $1 }
    return result.reduce("") { $0 + String(format: "%02x", $1) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(string_xor(a: "111000", b: "101010") == "010010")
assert(string_xor(a: "1", b: "1") == "0")
assert(string_xor(a: "0101", b: "0000") == "0101")



// ----------- problem HumanEval_161_solve, completion 3 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpquflvm7v.swift:19:14: error: cannot convert return expression of type '[String.Element]' (aka 'Array<Character>') to return type 'String'
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
           ~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmpquflvm7v.swift:19:37: error: value of type 'String.Element' (aka 'Character') has no member 'toggleCase'
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
                                 ~~ ^~~~~~~~~~

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
    let letters = s.filter { $0.isLetter }
    if letters.isEmpty {
        return String(s.reversed())
    }
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_89_encrypt, completion 110 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpf_9zjnub.swift:22:56: error: cannot convert return expression of type 'UnicodeScalar' (aka 'Unicode.Scalar') to return type 'String.Element' (aka 'Character')
                    return UnicodeScalar(newValue - 26)!
                           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~^

*/
/* stdout = 

*/


/// Create a function encrypt that takes a string as an argument and
/// returns a string encrypted with the alphabet being rotated. 
/// The alphabet should be rotated in a manner such that the letters 
/// shift down by two multiplied to two places.
/// For example:
/// >>> encrypt(s: "hi")
/// "lm"
/// >>> encrypt(s: "asdfghjkl")
/// "ewhjklnop"
/// >>> encrypt(s: "gf")
/// "kj"
/// >>> encrypt(s: "et")
/// "ix"
func encrypt(s: String) -> String {
    var result = ""
    for char in s {
        result += String(char).unicodeScalars.map {
            if $0.value >= 97 && $0.value <= 122 {
                let newValue = $0.value + (2 * 2)
                if newValue > 122 {
                    return UnicodeScalar(newValue - 26)!
                } else {
                    return UnicodeScalar(newValue)!
                }
            } else {
                return $0
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
            
assert(encrypt(s: "hi") == "lm")
assert(encrypt(s: "asdfghjkl") == "ewhjklnop")
assert(encrypt(s: "gf") == "kj")
assert(encrypt(s: "et") == "ix")
assert(encrypt(s: "faewfawefaewg") == "jeiajeaijeiak")
assert(encrypt(s: "hellomyfriend") == "lippsqcjvmirh")
assert(encrypt(s: "dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh") == "hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl")
assert(encrypt(s: "a") == "e")



// ----------- problem HumanEval_161_solve, completion 84 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpquflvm7v.swift:19:14: error: cannot convert return expression of type '[String.Element]' (aka 'Array<Character>') to return type 'String'
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
           ~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmpquflvm7v.swift:19:37: error: value of type 'String.Element' (aka 'Character') has no member 'toggleCase'
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
                                 ~~ ^~~~~~~~~~

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
    let letters = s.filter { $0.isLetter }
    if letters.isEmpty {
        return String(s.reversed())
    }
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_161_solve, completion 156 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpquflvm7v.swift:19:14: error: cannot convert return expression of type '[String.Element]' (aka 'Array<Character>') to return type 'String'
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
           ~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmpquflvm7v.swift:19:37: error: value of type 'String.Element' (aka 'Character') has no member 'toggleCase'
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
                                 ~~ ^~~~~~~~~~

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
    let letters = s.filter { $0.isLetter }
    if letters.isEmpty {
        return String(s.reversed())
    }
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_161_solve, completion 196 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpylyqlddg.swift:19:14: error: cannot convert return expression of type '[String.Element]' (aka 'Array<Character>') to return type 'String'
    return s.map { $0.isLetter ? $0.isUppercase ? Character($0.lowercased()) : Character($0.uppercased()) : $0 }
           ~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
    let letters = s.filter { $0.isLetter }
    if letters.isEmpty {
        return String(s.reversed())
    }
    return s.map { $0.isLetter ? $0.isUppercase ? Character($0.lowercased()) : Character($0.uppercased()) : $0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_48_is_palindrome, completion 109 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpgmgk25yl.swift:18:26: error: cannot convert value of type '[Character]' to expected argument type 'Substring'
    return first == last.reversed()
                         ^

*/
/* stdout = 

*/


/// Checks if given string is a palindrome
/// >>> is_palindrome(text: "")
/// true
/// >>> is_palindrome(text: "aba")
/// true
/// >>> is_palindrome(text: "aaaaa")
/// true
/// >>> is_palindrome(text: "zbcd")
/// false
func is_palindrome(text: String) -> Bool {
    let length = text.count
    let half = length / 2
    let start = text.index(text.startIndex, offsetBy: 0)
    let end = text.index(text.startIndex, offsetBy: half)
    let first = text[start..<end]
    let last = text[text.index(text.endIndex, offsetBy: -half)..<text.endIndex]
    return first == last.reversed()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_palindrome(text: "") == true)
assert(is_palindrome(text: "aba") == true)
assert(is_palindrome(text: "aaaaa") == true)
assert(is_palindrome(text: "zbcd") == false)
assert(is_palindrome(text: "xywyx") == true)
assert(is_palindrome(text: "xywyz") == false)
assert(is_palindrome(text: "xywzx") == false)



// ----------- problem HumanEval_161_solve, completion 67 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpylyqlddg.swift:19:14: error: cannot convert return expression of type '[String.Element]' (aka 'Array<Character>') to return type 'String'
    return s.map { $0.isLetter ? $0.isUppercase ? Character($0.lowercased()) : Character($0.uppercased()) : $0 }
           ~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
    let letters = s.filter { $0.isLetter }
    if letters.isEmpty {
        return String(s.reversed())
    }
    return s.map { $0.isLetter ? $0.isUppercase ? Character($0.lowercased()) : Character($0.uppercased()) : $0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_11_string_xor, completion 105 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp7la11_c1.swift:7:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let a = a.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmp7la11_c1.swift:8:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let b = b.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmp7la11_c1.swift:10:43: error: incorrect argument labels in call (have 'format:_:', expected 'repeating:count:')
    return result.reduce("") { $0 + String(format: "%02x", $1) }
                                          ^~~~~~~
                                           repeating       count: 

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    let a = a.utf8.map { UInt8(bitPattern: $0) }
    let b = b.utf8.map { UInt8(bitPattern: $0) }
    let result = zip(a, b).map { $0 ^ $1 }
    return result.reduce("") { $0 + String(format: "%02x", $1) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(string_xor(a: "111000", b: "101010") == "010010")
assert(string_xor(a: "1", b: "1") == "0")
assert(string_xor(a: "0101", b: "0000") == "0101")



// ----------- problem HumanEval_161_solve, completion 108 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpylyqlddg.swift:19:14: error: cannot convert return expression of type '[String.Element]' (aka 'Array<Character>') to return type 'String'
    return s.map { $0.isLetter ? $0.isUppercase ? Character($0.lowercased()) : Character($0.uppercased()) : $0 }
           ~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
    let letters = s.filter { $0.isLetter }
    if letters.isEmpty {
        return String(s.reversed())
    }
    return s.map { $0.isLetter ? $0.isUppercase ? Character($0.lowercased()) : Character($0.uppercased()) : $0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_11_string_xor, completion 25 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpmqgnj2ws.swift:7:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let a = a.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmpmqgnj2ws.swift:8:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let b = b.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    let a = a.utf8.map { UInt8(bitPattern: $0) }
    let b = b.utf8.map { UInt8(bitPattern: $0) }
    let xor = zip(a, b).map { $0 ^ $1 }
    return xor.map { String(UnicodeScalar(UInt8(bitPattern: $0))) }.joined()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(string_xor(a: "111000", b: "101010") == "010010")
assert(string_xor(a: "1", b: "1") == "0")
assert(string_xor(a: "0101", b: "0000") == "0101")



// ----------- problem HumanEval_11_string_xor, completion 3 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpmqgnj2ws.swift:7:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let a = a.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmpmqgnj2ws.swift:8:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let b = b.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    let a = a.utf8.map { UInt8(bitPattern: $0) }
    let b = b.utf8.map { UInt8(bitPattern: $0) }
    let xor = zip(a, b).map { $0 ^ $1 }
    return xor.map { String(UnicodeScalar(UInt8(bitPattern: $0))) }.joined()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(string_xor(a: "111000", b: "101010") == "010010")
assert(string_xor(a: "1", b: "1") == "0")
assert(string_xor(a: "0101", b: "0000") == "0101")



// ----------- problem HumanEval_11_string_xor, completion 52 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp7la11_c1.swift:7:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let a = a.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmp7la11_c1.swift:8:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let b = b.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmp7la11_c1.swift:10:43: error: incorrect argument labels in call (have 'format:_:', expected 'repeating:count:')
    return result.reduce("") { $0 + String(format: "%02x", $1) }
                                          ^~~~~~~
                                           repeating       count: 

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    let a = a.utf8.map { UInt8(bitPattern: $0) }
    let b = b.utf8.map { UInt8(bitPattern: $0) }
    let result = zip(a, b).map { $0 ^ $1 }
    return result.reduce("") { $0 + String(format: "%02x", $1) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(string_xor(a: "111000", b: "101010") == "010010")
assert(string_xor(a: "1", b: "1") == "0")
assert(string_xor(a: "0101", b: "0000") == "0101")



// ----------- problem HumanEval_11_string_xor, completion 131 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpzp7rk339.swift:7:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let a = a.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmpzp7rk339.swift:8:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let b = b.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    let a = a.utf8.map { UInt8(bitPattern: $0) }
    let b = b.utf8.map { UInt8(bitPattern: $0) }
    let c = zip(a, b).map { $0 ^ $1 }
    return c.map { String(UnicodeScalar(UInt8(bitPattern: $0))) }.joined()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(string_xor(a: "111000", b: "101010") == "010010")
assert(string_xor(a: "1", b: "1") == "0")
assert(string_xor(a: "0101", b: "0000") == "0101")



// ----------- problem HumanEval_161_solve, completion 188 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpquflvm7v.swift:19:14: error: cannot convert return expression of type '[String.Element]' (aka 'Array<Character>') to return type 'String'
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
           ~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmpquflvm7v.swift:19:37: error: value of type 'String.Element' (aka 'Character') has no member 'toggleCase'
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
                                 ~~ ^~~~~~~~~~

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
    let letters = s.filter { $0.isLetter }
    if letters.isEmpty {
        return String(s.reversed())
    }
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_161_solve, completion 6 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpylyqlddg.swift:19:14: error: cannot convert return expression of type '[String.Element]' (aka 'Array<Character>') to return type 'String'
    return s.map { $0.isLetter ? $0.isUppercase ? Character($0.lowercased()) : Character($0.uppercased()) : $0 }
           ~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
    let letters = s.filter { $0.isLetter }
    if letters.isEmpty {
        return String(s.reversed())
    }
    return s.map { $0.isLetter ? $0.isUppercase ? Character($0.lowercased()) : Character($0.uppercased()) : $0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_11_string_xor, completion 98 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp7la11_c1.swift:7:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let a = a.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmp7la11_c1.swift:8:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let b = b.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmp7la11_c1.swift:10:43: error: incorrect argument labels in call (have 'format:_:', expected 'repeating:count:')
    return result.reduce("") { $0 + String(format: "%02x", $1) }
                                          ^~~~~~~
                                           repeating       count: 

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    let a = a.utf8.map { UInt8(bitPattern: $0) }
    let b = b.utf8.map { UInt8(bitPattern: $0) }
    let result = zip(a, b).map { $0 ^ $1 }
    return result.reduce("") { $0 + String(format: "%02x", $1) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(string_xor(a: "111000", b: "101010") == "010010")
assert(string_xor(a: "1", b: "1") == "0")
assert(string_xor(a: "0101", b: "0000") == "0101")



// ----------- problem HumanEval_161_solve, completion 12 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpye22d95r.swift:19:14: error: cannot convert return expression of type '[String.Element]' (aka 'Array<Character>') to return type 'String'
    return s.map { $0.isLetter ? $0.toggle() : $0 }
           ~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmpye22d95r.swift:19:37: error: value of type 'String.Element' (aka 'Character') has no member 'toggle'
    return s.map { $0.isLetter ? $0.toggle() : $0 }
                                 ~~ ^~~~~~

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
    let letters = s.filter { $0.isLetter }
    if letters.isEmpty {
        return String(s.reversed())
    }
    return s.map { $0.isLetter ? $0.toggle() : $0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_14_all_prefixes, completion 24 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpaow8jwz9.swift:6:44: error: cannot convert value of type 'String.SubSequence' (aka 'Substring') to closure result type 'String'
    return (1...string.count).map { string.prefix($0) }
                                    ~~~~~~~^~~~~~~~~~
                                    String(          )

*/
/* stdout = 

*/


/// Return array of all prefixes from shortest to longest of the input string
/// >>> all_prefixes(string: "abc")
/// ["a", "ab", "abc"]
func all_prefixes(string: String) -> [String] {
    return (1...string.count).map { string.prefix($0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(all_prefixes(string: "") == [] as [String])
assert(all_prefixes(string: "asdfgh") == ["a", "as", "asd", "asdf", "asdfg", "asdfgh"])
assert(all_prefixes(string: "WWW") == ["W", "WW", "WWW"])



// ----------- problem HumanEval_11_string_xor, completion 34 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp7la11_c1.swift:7:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let a = a.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmp7la11_c1.swift:8:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let b = b.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmp7la11_c1.swift:10:43: error: incorrect argument labels in call (have 'format:_:', expected 'repeating:count:')
    return result.reduce("") { $0 + String(format: "%02x", $1) }
                                          ^~~~~~~
                                           repeating       count: 

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    let a = a.utf8.map { UInt8(bitPattern: $0) }
    let b = b.utf8.map { UInt8(bitPattern: $0) }
    let result = zip(a, b).map { $0 ^ $1 }
    return result.reduce("") { $0 + String(format: "%02x", $1) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(string_xor(a: "111000", b: "101010") == "010010")
assert(string_xor(a: "1", b: "1") == "0")
assert(string_xor(a: "0101", b: "0000") == "0101")



// ----------- problem HumanEval_48_is_palindrome, completion 195 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpnbht5xl3.swift:17:16: error: 'subscript(_:)' is unavailable: cannot subscript String with an integer range, use a String.Index range instead.
    let left = text[..<mid]
               ^~~~~~~~~~~~
Swift.String:5:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript<R>(bounds: R) -> String where R : RangeExpression, R.Bound == Int { get }
           ^
/tmp/tmpnbht5xl3.swift:18:17: error: 'subscript(_:)' is unavailable: cannot subscript String with an integer range, use a String.Index range instead.
    let right = text[mid...]
                ^~~~~~~~~~~~
Swift.String:5:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript<R>(bounds: R) -> String where R : RangeExpression, R.Bound == Int { get }
           ^
/tmp/tmpnbht5xl3.swift:19:17: error: binary operator '==' cannot be applied to operands of type 'String' and '[String.Element]' (aka 'Array<Character>')
    return left == right.reversed()
           ~~~~ ^  ~~~~~~~~~~~~~~~~
/tmp/tmpnbht5xl3.swift:19:17: note: overloads for '==' exist with these partially matching parameter lists: (String, String)
    return left == right.reversed()
                ^

*/
/* stdout = 

*/


/// Checks if given string is a palindrome
/// >>> is_palindrome(text: "")
/// true
/// >>> is_palindrome(text: "aba")
/// true
/// >>> is_palindrome(text: "aaaaa")
/// true
/// >>> is_palindrome(text: "zbcd")
/// false
func is_palindrome(text: String) -> Bool {
    let text_len = text.count
    if text_len < 2 {
        return true
    }
    let mid = text_len / 2
    let left = text[..<mid]
    let right = text[mid...]
    return left == right.reversed()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_palindrome(text: "") == true)
assert(is_palindrome(text: "aba") == true)
assert(is_palindrome(text: "aaaaa") == true)
assert(is_palindrome(text: "zbcd") == false)
assert(is_palindrome(text: "xywyx") == true)
assert(is_palindrome(text: "xywyz") == false)
assert(is_palindrome(text: "xywzx") == false)



// ----------- problem HumanEval_161_solve, completion 79 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpylyqlddg.swift:19:14: error: cannot convert return expression of type '[String.Element]' (aka 'Array<Character>') to return type 'String'
    return s.map { $0.isLetter ? $0.isUppercase ? Character($0.lowercased()) : Character($0.uppercased()) : $0 }
           ~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
    let letters = s.filter { $0.isLetter }
    if letters.isEmpty {
        return String(s.reversed())
    }
    return s.map { $0.isLetter ? $0.isUppercase ? Character($0.lowercased()) : Character($0.uppercased()) : $0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_161_solve, completion 199 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpylyqlddg.swift:19:14: error: cannot convert return expression of type '[String.Element]' (aka 'Array<Character>') to return type 'String'
    return s.map { $0.isLetter ? $0.isUppercase ? Character($0.lowercased()) : Character($0.uppercased()) : $0 }
           ~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
    let letters = s.filter { $0.isLetter }
    if letters.isEmpty {
        return String(s.reversed())
    }
    return s.map { $0.isLetter ? $0.isUppercase ? Character($0.lowercased()) : Character($0.uppercased()) : $0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_11_string_xor, completion 32 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp7la11_c1.swift:7:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let a = a.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmp7la11_c1.swift:8:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let b = b.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmp7la11_c1.swift:10:43: error: incorrect argument labels in call (have 'format:_:', expected 'repeating:count:')
    return result.reduce("") { $0 + String(format: "%02x", $1) }
                                          ^~~~~~~
                                           repeating       count: 

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    let a = a.utf8.map { UInt8(bitPattern: $0) }
    let b = b.utf8.map { UInt8(bitPattern: $0) }
    let result = zip(a, b).map { $0 ^ $1 }
    return result.reduce("") { $0 + String(format: "%02x", $1) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(string_xor(a: "111000", b: "101010") == "010010")
assert(string_xor(a: "1", b: "1") == "0")
assert(string_xor(a: "0101", b: "0000") == "0101")



// ----------- problem HumanEval_113_odd_count, completion 155 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp7zp9g8jx.swift:15:22: error: cannot convert value of type 'Character' to expected argument type 'Int'
            if lst[i][j] % 2 != 0 {
                     ^

*/
/* stdout = 

*/


/// Given an array of strings, where each string consists of only digits, return an array.
/// Each element i of the output should be "the number of odd elements in the
/// string i of the input." where all the i's should be replaced by the number
/// of odd digits in the i'th string of the input.
/// >>> odd_count(lst: ["1234567"])
/// ["the number of odd elements 4n the str4ng 4 of the 4nput."]
/// >>> odd_count(lst: ["3", "11111111"])
/// ["the number of odd elements 1n the str1ng 1 of the 1nput.", "the number of odd elements 8n the str8ng 8 of the 8nput."]
func odd_count(lst: [String]) -> [String] {
    var result = [String]()
    for i in 0..<lst.count {
        var oddCount = 0
        for j in 0..<lst[i].count {
            if lst[i][j] % 2 != 0 {
                oddCount += 1
            }
        }
        result.append("the number of odd elements \(oddCount)n the str\(oddCount)ng \(oddCount) of the \(oddCount)nput.")
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(odd_count(lst: ["1234567"]) == ["the number of odd elements 4n the str4ng 4 of the 4nput."])
assert(odd_count(lst: ["3", "11111111"]) == ["the number of odd elements 1n the str1ng 1 of the 1nput.", "the number of odd elements 8n the str8ng 8 of the 8nput."])
assert(odd_count(lst: ["271", "137", "314"]) == ["the number of odd elements 2n the str2ng 2 of the 2nput.", "the number of odd elements 3n the str3ng 3 of the 3nput.", "the number of odd elements 2n the str2ng 2 of the 2nput."])



// ----------- problem HumanEval_11_string_xor, completion 61 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpew43g2r7.swift:7:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let a = a.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmpew43g2r7.swift:8:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let b = b.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmpew43g2r7.swift:10:44: error: no exact matches in call to initializer 
    return result.reduce("") { $0 + String(UnicodeScalar(bitPattern: $1)) }
                                           ^
/tmp/tmpew43g2r7.swift:10:44: note: found candidate with type '(UInt8) -> UnicodeScalar' (aka '(UInt8) -> Unicode.Scalar')
    return result.reduce("") { $0 + String(UnicodeScalar(bitPattern: $1)) }
                                           ^
/tmp/tmpew43g2r7.swift:10:44: note: found candidate with type '(Unicode.Scalar) -> UnicodeScalar' (aka '(Unicode.Scalar) -> Unicode.Scalar')
    return result.reduce("") { $0 + String(UnicodeScalar(bitPattern: $1)) }
                                           ^

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    let a = a.utf8.map { UInt8(bitPattern: $0) }
    let b = b.utf8.map { UInt8(bitPattern: $0) }
    let result = zip(a, b).map { $0 ^ $1 }
    return result.reduce("") { $0 + String(UnicodeScalar(bitPattern: $1)) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(string_xor(a: "111000", b: "101010") == "010010")
assert(string_xor(a: "1", b: "1") == "0")
assert(string_xor(a: "0101", b: "0000") == "0101")



// ----------- problem HumanEval_11_string_xor, completion 20 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpmqgnj2ws.swift:7:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let a = a.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmpmqgnj2ws.swift:8:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let b = b.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    let a = a.utf8.map { UInt8(bitPattern: $0) }
    let b = b.utf8.map { UInt8(bitPattern: $0) }
    let xor = zip(a, b).map { $0 ^ $1 }
    return xor.map { String(UnicodeScalar(UInt8(bitPattern: $0))) }.joined()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(string_xor(a: "111000", b: "101010") == "010010")
assert(string_xor(a: "1", b: "1") == "0")
assert(string_xor(a: "0101", b: "0000") == "0101")



// ----------- problem HumanEval_11_string_xor, completion 143 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp7la11_c1.swift:7:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let a = a.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmp7la11_c1.swift:8:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let b = b.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmp7la11_c1.swift:10:43: error: incorrect argument labels in call (have 'format:_:', expected 'repeating:count:')
    return result.reduce("") { $0 + String(format: "%02x", $1) }
                                          ^~~~~~~
                                           repeating       count: 

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    let a = a.utf8.map { UInt8(bitPattern: $0) }
    let b = b.utf8.map { UInt8(bitPattern: $0) }
    let result = zip(a, b).map { $0 ^ $1 }
    return result.reduce("") { $0 + String(format: "%02x", $1) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(string_xor(a: "111000", b: "101010") == "010010")
assert(string_xor(a: "1", b: "1") == "0")
assert(string_xor(a: "0101", b: "0000") == "0101")



// ----------- problem HumanEval_161_solve, completion 130 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpylyqlddg.swift:19:14: error: cannot convert return expression of type '[String.Element]' (aka 'Array<Character>') to return type 'String'
    return s.map { $0.isLetter ? $0.isUppercase ? Character($0.lowercased()) : Character($0.uppercased()) : $0 }
           ~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
    let letters = s.filter { $0.isLetter }
    if letters.isEmpty {
        return String(s.reversed())
    }
    return s.map { $0.isLetter ? $0.isUppercase ? Character($0.lowercased()) : Character($0.uppercased()) : $0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_48_is_palindrome, completion 197 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpa60t43r1.swift:21:26: error: cannot convert value of type '[Character]' to expected argument type 'Substring'
    return first == last.reversed()
                         ^

*/
/* stdout = 

*/


/// Checks if given string is a palindrome
/// >>> is_palindrome(text: "")
/// true
/// >>> is_palindrome(text: "aba")
/// true
/// >>> is_palindrome(text: "aaaaa")
/// true
/// >>> is_palindrome(text: "zbcd")
/// false
func is_palindrome(text: String) -> Bool {
    let length = text.count
    if length == 0 {
        return true
    }
    let mid = length / 2
    let start = text.index(text.startIndex, offsetBy: 0)
    let end = text.index(text.startIndex, offsetBy: mid)
    let first = text[start..<end]
    let last = text[text.index(text.endIndex, offsetBy: -mid)..<text.endIndex]
    return first == last.reversed()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_palindrome(text: "") == true)
assert(is_palindrome(text: "aba") == true)
assert(is_palindrome(text: "aaaaa") == true)
assert(is_palindrome(text: "zbcd") == false)
assert(is_palindrome(text: "xywyx") == true)
assert(is_palindrome(text: "xywyz") == false)
assert(is_palindrome(text: "xywzx") == false)



// ----------- problem HumanEval_161_solve, completion 127 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpylyqlddg.swift:19:14: error: cannot convert return expression of type '[String.Element]' (aka 'Array<Character>') to return type 'String'
    return s.map { $0.isLetter ? $0.isUppercase ? Character($0.lowercased()) : Character($0.uppercased()) : $0 }
           ~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
    let letters = s.filter { $0.isLetter }
    if letters.isEmpty {
        return String(s.reversed())
    }
    return s.map { $0.isLetter ? $0.isUppercase ? Character($0.lowercased()) : Character($0.uppercased()) : $0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_11_string_xor, completion 7 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpzp7rk339.swift:7:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let a = a.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmpzp7rk339.swift:8:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let b = b.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    let a = a.utf8.map { UInt8(bitPattern: $0) }
    let b = b.utf8.map { UInt8(bitPattern: $0) }
    let c = zip(a, b).map { $0 ^ $1 }
    return c.map { String(UnicodeScalar(UInt8(bitPattern: $0))) }.joined()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(string_xor(a: "111000", b: "101010") == "010010")
assert(string_xor(a: "1", b: "1") == "0")
assert(string_xor(a: "0101", b: "0000") == "0101")



// ----------- problem HumanEval_146_specialFilter, completion 122 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpqsxt1bbk.swift:16:35: error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'Int'
                if numString.first! % 2 != 0 {
                                  ^
/tmp/tmpqsxt1bbk.swift:17:38: error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'Int'
                    if numString.last! % 2 != 0 {
                                     ^

*/
/* stdout = 

*/


/// Write a function that takes an array of numbers as input and returns 
/// the number of elements in the array that are greater than 10 and both 
/// first and last digits of a number are odd (1, 3, 5, 7, 9).
/// For example:
/// >>> specialFilter(nums: [15, -73, 14, -15])
/// 1
/// >>> specialFilter(nums: [33, -2, -3, 45, 21, 109])
/// 2
func specialFilter(nums: [Int]) -> Int {
    var count = 0
    for num in nums {
        if num > 10 {
            if num % 2 != 0 {
                let numString = String(num)
                if numString.first! % 2 != 0 {
                    if numString.last! % 2 != 0 {
                        count += 1
                    }
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
            
assert(specialFilter(nums: [5, -2, 1, -5]) == 0)
assert(specialFilter(nums: [15, -73, 14, -15]) == 1)
assert(specialFilter(nums: [33, -2, -3, 45, 21, 109]) == 2)
assert(specialFilter(nums: [43, -12, 93, 125, 121, 109]) == 4)
assert(specialFilter(nums: [71, -2, -33, 75, 21, 19]) == 3)
assert(specialFilter(nums: [1]) == 0)
assert(specialFilter(nums: [] as [Int]) == 0)



// ----------- problem HumanEval_161_solve, completion 78 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpquflvm7v.swift:19:14: error: cannot convert return expression of type '[String.Element]' (aka 'Array<Character>') to return type 'String'
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
           ~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmpquflvm7v.swift:19:37: error: value of type 'String.Element' (aka 'Character') has no member 'toggleCase'
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
                                 ~~ ^~~~~~~~~~

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
    let letters = s.filter { $0.isLetter }
    if letters.isEmpty {
        return String(s.reversed())
    }
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_161_solve, completion 86 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpquflvm7v.swift:19:14: error: cannot convert return expression of type '[String.Element]' (aka 'Array<Character>') to return type 'String'
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
           ~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmpquflvm7v.swift:19:37: error: value of type 'String.Element' (aka 'Character') has no member 'toggleCase'
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
                                 ~~ ^~~~~~~~~~

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
    let letters = s.filter { $0.isLetter }
    if letters.isEmpty {
        return String(s.reversed())
    }
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_161_solve, completion 129 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpquflvm7v.swift:19:14: error: cannot convert return expression of type '[String.Element]' (aka 'Array<Character>') to return type 'String'
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
           ~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmpquflvm7v.swift:19:37: error: value of type 'String.Element' (aka 'Character') has no member 'toggleCase'
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
                                 ~~ ^~~~~~~~~~

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
    let letters = s.filter { $0.isLetter }
    if letters.isEmpty {
        return String(s.reversed())
    }
    return s.map { $0.isLetter ? $0.toggleCase() : $0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_161_solve, completion 16 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpylyqlddg.swift:19:14: error: cannot convert return expression of type '[String.Element]' (aka 'Array<Character>') to return type 'String'
    return s.map { $0.isLetter ? $0.isUppercase ? Character($0.lowercased()) : Character($0.uppercased()) : $0 }
           ~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
    let letters = s.filter { $0.isLetter }
    if letters.isEmpty {
        return String(s.reversed())
    }
    return s.map { $0.isLetter ? $0.isUppercase ? Character($0.lowercased()) : Character($0.uppercased()) : $0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_161_solve, completion 57 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpye22d95r.swift:19:14: error: cannot convert return expression of type '[String.Element]' (aka 'Array<Character>') to return type 'String'
    return s.map { $0.isLetter ? $0.toggle() : $0 }
           ~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmpye22d95r.swift:19:37: error: value of type 'String.Element' (aka 'Character') has no member 'toggle'
    return s.map { $0.isLetter ? $0.toggle() : $0 }
                                 ~~ ^~~~~~

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
    let letters = s.filter { $0.isLetter }
    if letters.isEmpty {
        return String(s.reversed())
    }
    return s.map { $0.isLetter ? $0.toggle() : $0 }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_11_string_xor, completion 159 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp7la11_c1.swift:7:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let a = a.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmp7la11_c1.swift:8:44: error: cannot convert value of type 'String.UTF8View.Element' (aka 'UInt8') to expected argument type 'Int8'
    let b = b.utf8.map { UInt8(bitPattern: $0) }
                                           ^
                                           Int8( )
/tmp/tmp7la11_c1.swift:10:43: error: incorrect argument labels in call (have 'format:_:', expected 'repeating:count:')
    return result.reduce("") { $0 + String(format: "%02x", $1) }
                                          ^~~~~~~
                                           repeating       count: 

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    let a = a.utf8.map { UInt8(bitPattern: $0) }
    let b = b.utf8.map { UInt8(bitPattern: $0) }
    let result = zip(a, b).map { $0 ^ $1 }
    return result.reduce("") { $0 + String(format: "%02x", $1) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(string_xor(a: "111000", b: "101010") == "010010")
assert(string_xor(a: "1", b: "1") == "0")
assert(string_xor(a: "0101", b: "0000") == "0101")



// ----------- problem HumanEval_14_all_prefixes, completion 152 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpaow8jwz9.swift:6:44: error: cannot convert value of type 'String.SubSequence' (aka 'Substring') to closure result type 'String'
    return (1...string.count).map { string.prefix($0) }
                                    ~~~~~~~^~~~~~~~~~
                                    String(          )

*/
/* stdout = 

*/


/// Return array of all prefixes from shortest to longest of the input string
/// >>> all_prefixes(string: "abc")
/// ["a", "ab", "abc"]
func all_prefixes(string: String) -> [String] {
    return (1...string.count).map { string.prefix($0) }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(all_prefixes(string: "") == [] as [String])
assert(all_prefixes(string: "asdfgh") == ["a", "as", "asd", "asdf", "asdfg", "asdfgh"])
assert(all_prefixes(string: "WWW") == ["W", "WW", "WWW"])



