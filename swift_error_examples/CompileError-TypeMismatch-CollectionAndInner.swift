// ----------- problem HumanEval_93_encode, completion 14 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpmtt5qxuy.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                encoded.append(alphabet[alphabet.index(index, offsetBy: 2)])
            } else {
                encoded.append(alphabet[index])
            }
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



// ----------- problem HumanEval_27_flip_case, completion 82 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 194 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1benokn4.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                encodedMessage.append(alphabet[alphabet.index(index, offsetBy: 2)])
            } else {
                encodedMessage.append(alphabet[index])
            }
        } else {
            encodedMessage.append(char)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 69 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplsmk_9pj.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map {
           ~~~~~~~^~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map {
        if $0.isUppercase {
            return $0.lowercased()
        } else {
            return $0.uppercased()
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
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 72 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpo4_7lqjo.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_78_hex_key, completion 72 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpq39j_cyq.swift:25:41: error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'String'
    return num.filter { primes.contains($0) }.count
                                        ^

*/
/* stdout = 

*/


/// You have been tasked to write a function that receives 
/// a hexadecimal number as a string and counts the number of hexadecimal 
/// digits that are primes (prime number, or a prime, is a natural number 
/// greater than 1 that is not a product of two smaller natural numbers).
/// Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
/// Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
/// So you have to determine a number of the following digits: 2, 3, 5, 7, 
/// B (=decimal 11), D (=decimal 13).
/// Note: you may assume the input is always correct or empty string, 
/// and symbols A,B,C,D,E,F are always uppercase.
/// Examples:
/// >>> hex_key(num: "AB")
/// 1
/// >>> hex_key(num: "1077E")
/// 2
/// >>> hex_key(num: "ABED1A33")
/// 4
/// >>> hex_key(num: "123456789ABCDEF0")
/// 6
/// >>> hex_key(num: "2020")
/// 2
func hex_key(num: String) -> Int {
    let primes = ["2", "3", "5", "7", "B", "D"]
    return num.filter { primes.contains($0) }.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(hex_key(num: "AB") == 1)
assert(hex_key(num: "1077E") == 2)
assert(hex_key(num: "ABED1A33") == 4)
assert(hex_key(num: "2020") == 2)
assert(hex_key(num: "123456789ABCDEF0") == 6)
assert(hex_key(num: "112233445566778899AABBCCDDEEFF00") == 12)



// ----------- problem HumanEval_27_flip_case, completion 39 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 49 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 45 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 94 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpltli3v31.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map {
           ~~~~~~~^~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map {
        $0.isUppercase ? $0.lowercased() : $0.uppercased()
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
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_78_hex_key, completion 116 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpq39j_cyq.swift:25:41: error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'String'
    return num.filter { primes.contains($0) }.count
                                        ^

*/
/* stdout = 

*/


/// You have been tasked to write a function that receives 
/// a hexadecimal number as a string and counts the number of hexadecimal 
/// digits that are primes (prime number, or a prime, is a natural number 
/// greater than 1 that is not a product of two smaller natural numbers).
/// Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
/// Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
/// So you have to determine a number of the following digits: 2, 3, 5, 7, 
/// B (=decimal 11), D (=decimal 13).
/// Note: you may assume the input is always correct or empty string, 
/// and symbols A,B,C,D,E,F are always uppercase.
/// Examples:
/// >>> hex_key(num: "AB")
/// 1
/// >>> hex_key(num: "1077E")
/// 2
/// >>> hex_key(num: "ABED1A33")
/// 4
/// >>> hex_key(num: "123456789ABCDEF0")
/// 6
/// >>> hex_key(num: "2020")
/// 2
func hex_key(num: String) -> Int {
    let primes = ["2", "3", "5", "7", "B", "D"]
    return num.filter { primes.contains($0) }.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(hex_key(num: "AB") == 1)
assert(hex_key(num: "1077E") == 2)
assert(hex_key(num: "ABED1A33") == 4)
assert(hex_key(num: "2020") == 2)
assert(hex_key(num: "123456789ABCDEF0") == 6)
assert(hex_key(num: "112233445566778899AABBCCDDEEFF00") == 12)



// ----------- problem HumanEval_27_flip_case, completion 166 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_161_solve, completion 159 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpt1jbl1om.swift:20:86: error: operator function '+' requires the types 'String.Element' (aka 'Character') and 'String' be equivalent
    return String(letters.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() } + nonLetters.reversed())
                                                                                     ^
Swift.RangeReplaceableCollection:3:35: note: where 'Self.Element' = 'String.Element' (aka 'Character'), 'Other.Element' = 'String'
    @inlinable public static func + <Other>(lhs: Other, rhs: Self) -> Self where Other : Sequence, Self.Element == Other.Element
                                  ^

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
    let nonLetters = s.filter { !$0.isLetter }
    if letters.isEmpty {
        return String(nonLetters.reversed())
    }
    return String(letters.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() } + nonLetters.reversed())
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 164 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 11 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp73_mzivg.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            let newIndex = (index + 2) % alphabet.count
            let newChar = alphabet[newIndex]
            if vowels.contains(char.lowercased()) {
                encodedMessage.append(newChar.uppercased())
            } else {
                encodedMessage.append(newChar)
            }
        } else {
            encodedMessage.append(char)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_140_fix_spaces, completion 67 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpttumpz2g.swift:31:21: error: cannot assign value of type 'Character' to type 'String'
        prev_char = char
                    ^~~~

*/
/* stdout = 

*/


/// Given a string text, replace all spaces in it with underscores, 
/// and if a string has more than 2 consecutive spaces, 
/// then replace all consecutive spaces with - 
/// >>> fix_spaces(text: " Example")
/// "Example"
/// >>> fix_spaces(text: " Example 1")
/// "Example_1"
/// >>> fix_spaces(text: " Example 2")
/// "_Example_2"
/// >>> fix_spaces(text: " Example 3")
/// "_Example-3"
func fix_spaces(text: String) -> String {
    var result = ""
    var prev_char = ""
    var space_count = 0
    for char in text {
        if char == " " {
            space_count += 1
            if space_count > 2 {
                continue
            }
        } else {
            space_count = 0
        }
        if prev_char == " " && char == " " {
            result.append("-")
        } else {
            result.append(char)
        }
        prev_char = char
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fix_spaces(text: "Example") == "Example")
assert(fix_spaces(text: "Mudasir Hanif ") == "Mudasir_Hanif_")
assert(fix_spaces(text: "Yellow Yellow  Dirty  Fellow") == "Yellow_Yellow__Dirty__Fellow")
assert(fix_spaces(text: "Exa   mple") == "Exa-mple")
assert(fix_spaces(text: "   Exa 1 2 2 mple") == "-Exa_1_2_2_mple")



// ----------- problem HumanEval_78_hex_key, completion 45 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6f0psfkj.swift:25:44: error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'String'
    return num.filter { hexPrimes.contains($0) }.count
                                           ^

*/
/* stdout = 

*/


/// You have been tasked to write a function that receives 
/// a hexadecimal number as a string and counts the number of hexadecimal 
/// digits that are primes (prime number, or a prime, is a natural number 
/// greater than 1 that is not a product of two smaller natural numbers).
/// Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
/// Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
/// So you have to determine a number of the following digits: 2, 3, 5, 7, 
/// B (=decimal 11), D (=decimal 13).
/// Note: you may assume the input is always correct or empty string, 
/// and symbols A,B,C,D,E,F are always uppercase.
/// Examples:
/// >>> hex_key(num: "AB")
/// 1
/// >>> hex_key(num: "1077E")
/// 2
/// >>> hex_key(num: "ABED1A33")
/// 4
/// >>> hex_key(num: "123456789ABCDEF0")
/// 6
/// >>> hex_key(num: "2020")
/// 2
func hex_key(num: String) -> Int {
    let hexPrimes = ["2", "3", "5", "7", "B", "D"]
    return num.filter { hexPrimes.contains($0) }.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(hex_key(num: "AB") == 1)
assert(hex_key(num: "1077E") == 2)
assert(hex_key(num: "ABED1A33") == 4)
assert(hex_key(num: "2020") == 2)
assert(hex_key(num: "123456789ABCDEF0") == 6)
assert(hex_key(num: "112233445566778899AABBCCDDEEFF00") == 12)



// ----------- problem HumanEval_27_flip_case, completion 61 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 137 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6c3hu3g6.swift:17:57: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: character.lowercased()) {
                                                        ^
/tmp/tmp6c3hu3g6.swift:18:42: error: value of type 'Character' has no member 'isUppercased'
            let isUppercased = character.isUppercased
                               ~~~~~~~~~ ^~~~~~~~~~~~

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
    let vowels = "aeiou"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for character in message {
        if let index = letters.firstIndex(of: character.lowercased()) {
            let isUppercased = character.isUppercased
            let newIndex = (index + 2) % letters.count
            let newCharacter = letters[newIndex]
            encodedMessage += isUppercased ? newCharacter.uppercased() : newCharacter
        } else {
            encodedMessage += String(character)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 5 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplsmk_9pj.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map {
           ~~~~~~~^~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map {
        if $0.isUppercase {
            return $0.lowercased()
        } else {
            return $0.uppercased()
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
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 51 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 7 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwoei_vio.swift:17:55: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
                                                      ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for letter in message {
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
            if vowels.contains(letter.lowercased()) {
                encodedMessage.append(alphabet[alphabet.index(index, offsetBy: 2)])
            } else {
                encodedMessage.append(alphabet[index])
            }
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_78_hex_key, completion 4 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpq39j_cyq.swift:25:41: error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'String'
    return num.filter { primes.contains($0) }.count
                                        ^

*/
/* stdout = 

*/


/// You have been tasked to write a function that receives 
/// a hexadecimal number as a string and counts the number of hexadecimal 
/// digits that are primes (prime number, or a prime, is a natural number 
/// greater than 1 that is not a product of two smaller natural numbers).
/// Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
/// Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
/// So you have to determine a number of the following digits: 2, 3, 5, 7, 
/// B (=decimal 11), D (=decimal 13).
/// Note: you may assume the input is always correct or empty string, 
/// and symbols A,B,C,D,E,F are always uppercase.
/// Examples:
/// >>> hex_key(num: "AB")
/// 1
/// >>> hex_key(num: "1077E")
/// 2
/// >>> hex_key(num: "ABED1A33")
/// 4
/// >>> hex_key(num: "123456789ABCDEF0")
/// 6
/// >>> hex_key(num: "2020")
/// 2
func hex_key(num: String) -> Int {
    let primes = ["2", "3", "5", "7", "B", "D"]
    return num.filter { primes.contains($0) }.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(hex_key(num: "AB") == 1)
assert(hex_key(num: "1077E") == 2)
assert(hex_key(num: "ABED1A33") == 4)
assert(hex_key(num: "2020") == 2)
assert(hex_key(num: "123456789ABCDEF0") == 6)
assert(hex_key(num: "112233445566778899AABBCCDDEEFF00") == 12)



// ----------- problem HumanEval_93_encode, completion 76 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpexyh3mr0.swift:18:54: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
            let index = alphabet.index(of: character.lowercased())!
                                                     ^

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
    var encoded = ""
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    for character in message {
        if vowels.contains(character.lowercased()) {
            let index = alphabet.index(of: character.lowercased())!
            let newIndex = alphabet.index(index, offsetBy: 2)
            encoded.append(alphabet[newIndex])
        } else {
            encoded.append(character.lowercased())
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



// ----------- problem HumanEval_27_flip_case, completion 56 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplsmk_9pj.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map {
           ~~~~~~~^~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map {
        if $0.isUppercase {
            return $0.lowercased()
        } else {
            return $0.uppercased()
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
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 136 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 158 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_161_solve, completion 132 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpxuvwaqep.swift:15:43: error: cannot convert value of type 'String.Element' (aka 'Character') to closure result type 'String'
    return s.reversed().map { $0.isLetter ? $0.isUppercase ? Character($0.lowercased()) : Character($0.uppercased()) : $0 }.joined()
                              ~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
    return s.reversed().map { $0.isLetter ? $0.isUppercase ? Character($0.lowercased()) : Character($0.uppercased()) : $0 }.joined()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_93_encode, completion 108 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmporg3lqz9.swift:17:55: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
                                                      ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for letter in message {
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
            let isUpper = letter.isUppercase
            let newLetter = alphabet[alphabet.index(index, offsetBy: 2)]
            if isUpper {
                encoded.append(newLetter.uppercased())
            } else {
                encoded.append(newLetter)
            }
        } else {
            encoded.append(letter)
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



// ----------- problem HumanEval_27_flip_case, completion 140 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 71 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6jwuw36t.swift:17:55: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
                                                      ^

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
    let vowels = ["a", "e", "i", "o", "u"]
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for letter in message {
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
            if vowels.contains(letter.lowercased()) {
                encodedMessage.append(alphabet[alphabet.index(index, offsetBy: 2)])
            } else {
                encodedMessage.append(alphabet[index])
            }
        } else {
            encodedMessage.append(letter)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_89_encrypt, completion 158 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpm67jnnin.swift:18:39: error: incorrect argument label in call (have 'char:', expected 's:')
        encryptedString.append(encrypt(char: char))
                                      ^~~~~
                                       s
/tmp/tmpm67jnnin.swift:18:46: error: cannot convert value of type 'Character' to expected argument type 'String'
        encryptedString.append(encrypt(char: char))
                                             ^

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
    var encryptedString = ""
    for char in s {
        encryptedString.append(encrypt(char: char))
    }
    return encryptedString
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 151 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 153 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpo4_7lqjo.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 10 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 116 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpyo1ab66s.swift:16:34: error: incorrect argument label in call (have 'char:', expected 'message:')
            encoded.append(encode(char: char))
                                 ^~~~~
                                  message
/tmp/tmpyo1ab66s.swift:16:41: error: cannot convert value of type 'Character' to expected argument type 'String'
            encoded.append(encode(char: char))
                                        ^

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
    var encoded = ""
    for char in message {
        if char.isLetter {
            encoded.append(encode(char: char))
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



// ----------- problem HumanEval_27_flip_case, completion 191 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 27 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpjaddy4bt.swift:17:63: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: String(letter).lowercased()) {
                                                              ^

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
    var encodedMessage = ""
    let vowels = ["a", "e", "i", "o", "u"]
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    for letter in message {
        if let index = alphabet.firstIndex(of: String(letter).lowercased()) {
            if vowels.contains(String(letter).lowercased()) {
                encodedMessage += String(alphabet[alphabet.index(index, offsetBy: 2)])
            } else {
                encodedMessage += String(alphabet[index]).uppercased()
            }
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 115 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplsmk_9pj.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map {
           ~~~~~~~^~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map {
        if $0.isUppercase {
            return $0.lowercased()
        } else {
            return $0.uppercased()
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
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 134 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1u9zxijy.swift:17:55: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
                                                      ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for letter in message {
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
            if letter.isUppercase {
                encodedMessage.append(alphabet[index].uppercased())
            } else {
                encodedMessage.append(alphabet[index])
            }
        } else {
            encodedMessage.append(letter)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_93_encode, completion 58 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpdghtrdhl.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                let newIndex = alphabet.index(index, offsetBy: 2)
                encoded.append(alphabet[newIndex])
            } else {
                encoded.append(alphabet[index])
            }
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



// ----------- problem HumanEval_27_flip_case, completion 173 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 143 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 167 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplsmk_9pj.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map {
           ~~~~~~~^~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map {
        if $0.isUppercase {
            return $0.lowercased()
        } else {
            return $0.uppercased()
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
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_78_hex_key, completion 166 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpq39j_cyq.swift:25:41: error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'String'
    return num.filter { primes.contains($0) }.count
                                        ^

*/
/* stdout = 

*/


/// You have been tasked to write a function that receives 
/// a hexadecimal number as a string and counts the number of hexadecimal 
/// digits that are primes (prime number, or a prime, is a natural number 
/// greater than 1 that is not a product of two smaller natural numbers).
/// Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
/// Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
/// So you have to determine a number of the following digits: 2, 3, 5, 7, 
/// B (=decimal 11), D (=decimal 13).
/// Note: you may assume the input is always correct or empty string, 
/// and symbols A,B,C,D,E,F are always uppercase.
/// Examples:
/// >>> hex_key(num: "AB")
/// 1
/// >>> hex_key(num: "1077E")
/// 2
/// >>> hex_key(num: "ABED1A33")
/// 4
/// >>> hex_key(num: "123456789ABCDEF0")
/// 6
/// >>> hex_key(num: "2020")
/// 2
func hex_key(num: String) -> Int {
    let primes = ["2", "3", "5", "7", "B", "D"]
    return num.filter { primes.contains($0) }.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(hex_key(num: "AB") == 1)
assert(hex_key(num: "1077E") == 2)
assert(hex_key(num: "ABED1A33") == 4)
assert(hex_key(num: "2020") == 2)
assert(hex_key(num: "123456789ABCDEF0") == 6)
assert(hex_key(num: "112233445566778899AABBCCDDEEFF00") == 12)



// ----------- problem HumanEval_27_flip_case, completion 124 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 10 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp9nl3aw5w.swift:17:52: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: char.lowercased()) {
                                                   ^

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
    let vowels = "aeiou"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if let index = letters.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                encoded.append(letters[letters.index(index, offsetBy: 2)])
            } else {
                encoded.append(letters[index])
            }
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



// ----------- problem HumanEval_140_fix_spaces, completion 147 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpgad_g2bn.swift:21:17: error: binary operator '==' cannot be applied to operands of type 'Character' and 'String'
        if char == space {
           ~~~~ ^  ~~~~~
/tmp/tmpgad_g2bn.swift:21:17: note: overloads for '==' exist with these partially matching parameter lists: (Character, Character), (String, String)
        if char == space {
                ^
/tmp/tmpgad_g2bn.swift:26:33: error: value of type 'String' has no member 'replacingOccurrences'
                result = result.replacingOccurrences(of: space, with: dash)
                         ~~~~~~ ^~~~~~~~~~~~~~~~~~~~
/tmp/tmpgad_g2bn.swift:28:33: error: value of type 'String' has no member 'replacingOccurrences'
                result = result.replacingOccurrences(of: space, with: underscore)
                         ~~~~~~ ^~~~~~~~~~~~~~~~~~~~
/tmp/tmpgad_g2bn.swift:31:21: error: cannot assign value of type 'Character' to type 'String'
        last_char = char
                    ^~~~

*/
/* stdout = 

*/


/// Given a string text, replace all spaces in it with underscores, 
/// and if a string has more than 2 consecutive spaces, 
/// then replace all consecutive spaces with - 
/// >>> fix_spaces(text: " Example")
/// "Example"
/// >>> fix_spaces(text: " Example 1")
/// "Example_1"
/// >>> fix_spaces(text: " Example 2")
/// "_Example_2"
/// >>> fix_spaces(text: " Example 3")
/// "_Example-3"
func fix_spaces(text: String) -> String {
    let space = " "
    let underscore = "_"
    let dash = "-"
    var result = text
    var last_char = space
    var consecutive_spaces = 0
    for char in text {
        if char == space {
            if last_char == space {
                consecutive_spaces += 1
            }
            if consecutive_spaces > 2 {
                result = result.replacingOccurrences(of: space, with: dash)
            } else {
                result = result.replacingOccurrences(of: space, with: underscore)
            }
        }
        last_char = char
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fix_spaces(text: "Example") == "Example")
assert(fix_spaces(text: "Mudasir Hanif ") == "Mudasir_Hanif_")
assert(fix_spaces(text: "Yellow Yellow  Dirty  Fellow") == "Yellow_Yellow__Dirty__Fellow")
assert(fix_spaces(text: "Exa   mple") == "Exa-mple")
assert(fix_spaces(text: "   Exa 1 2 2 mple") == "-Exa_1_2_2_mple")



// ----------- problem HumanEval_78_hex_key, completion 67 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpq39j_cyq.swift:25:41: error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'String'
    return num.filter { primes.contains($0) }.count
                                        ^

*/
/* stdout = 

*/


/// You have been tasked to write a function that receives 
/// a hexadecimal number as a string and counts the number of hexadecimal 
/// digits that are primes (prime number, or a prime, is a natural number 
/// greater than 1 that is not a product of two smaller natural numbers).
/// Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
/// Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
/// So you have to determine a number of the following digits: 2, 3, 5, 7, 
/// B (=decimal 11), D (=decimal 13).
/// Note: you may assume the input is always correct or empty string, 
/// and symbols A,B,C,D,E,F are always uppercase.
/// Examples:
/// >>> hex_key(num: "AB")
/// 1
/// >>> hex_key(num: "1077E")
/// 2
/// >>> hex_key(num: "ABED1A33")
/// 4
/// >>> hex_key(num: "123456789ABCDEF0")
/// 6
/// >>> hex_key(num: "2020")
/// 2
func hex_key(num: String) -> Int {
    let primes = ["2", "3", "5", "7", "B", "D"]
    return num.filter { primes.contains($0) }.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(hex_key(num: "AB") == 1)
assert(hex_key(num: "1077E") == 2)
assert(hex_key(num: "ABED1A33") == 4)
assert(hex_key(num: "2020") == 2)
assert(hex_key(num: "123456789ABCDEF0") == 6)
assert(hex_key(num: "112233445566778899AABBCCDDEEFF00") == 12)



// ----------- problem HumanEval_27_flip_case, completion 188 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 124 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp4n_2vo0r.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            let newIndex = alphabet.index(index, offsetBy: 2)
            if vowels.contains(char.lowercased()) {
                encoded.append(alphabet[newIndex])
            } else {
                encoded.append(alphabet[newIndex].uppercased())
            }
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



// ----------- problem HumanEval_93_encode, completion 51 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpt0gwqcun.swift:17:55: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
                                                      ^
/tmp/tmpt0gwqcun.swift:22:59: error: binary operator '==' cannot be applied to operands of type 'String' and 'Character'
                encodedMessage.append(letter.lowercased() == letter ? alphabet[index].uppercased() : alphabet[index])
                                      ~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~
/tmp/tmpt0gwqcun.swift:22:59: note: overloads for '==' exist with these partially matching parameter lists: (Character, Character), (String, String)
                encodedMessage.append(letter.lowercased() == letter ? alphabet[index].uppercased() : alphabet[index])
                                                          ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for letter in message {
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
            if vowels.contains(letter.lowercased()) {
                let newIndex = alphabet.index(index, offsetBy: 2)
                encodedMessage.append(alphabet[newIndex])
            } else {
                encodedMessage.append(letter.lowercased() == letter ? alphabet[index].uppercased() : alphabet[index])
            }
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_93_encode, completion 82 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpklqm5d31.swift:17:52: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: char.lowercased()) {
                                                   ^
/tmp/tmpklqm5d31.swift:18:60: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
            if let vowelIndex = vowels.firstIndex(of: char.lowercased()) {
                                                           ^

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
    let vowels = "aeiou"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for char in message {
        if let index = letters.firstIndex(of: char.lowercased()) {
            if let vowelIndex = vowels.firstIndex(of: char.lowercased()) {
                encodedMessage.append(vowels[vowels.index(vowelIndex, offsetBy: 2)])
            } else {
                encodedMessage.append(letters[letters.index(index, offsetBy: 1)])
            }
        } else {
            encodedMessage.append(char)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_93_encode, completion 53 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp9nl3aw5w.swift:17:52: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: char.lowercased()) {
                                                   ^

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
    let vowels = "aeiou"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if let index = letters.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                encoded.append(letters[letters.index(index, offsetBy: 2)])
            } else {
                encoded.append(letters[index])
            }
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



// ----------- problem HumanEval_27_flip_case, completion 89 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 95 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp436ps0f3.swift:17:52: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: char.lowercased()) {
                                                   ^

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
    let vowels = "aeiou"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for char in message {
        if let index = letters.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                encodedMessage.append(letters[index.advanced(by: 2)])
            } else {
                encodedMessage.append(letters[index].uppercased())
            }
        } else {
            encodedMessage.append(char)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_93_encode, completion 45 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpa2ixildu.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                let newIndex = alphabet.index(index, offsetBy: 2)
                encoded.append(alphabet[newIndex])
            } else {
                encoded.append(char)
            }
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



// ----------- problem HumanEval_27_flip_case, completion 18 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



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



// ----------- problem HumanEval_27_flip_case, completion 175 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_78_hex_key, completion 124 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpq39j_cyq.swift:25:41: error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'String'
    return num.filter { primes.contains($0) }.count
                                        ^

*/
/* stdout = 

*/


/// You have been tasked to write a function that receives 
/// a hexadecimal number as a string and counts the number of hexadecimal 
/// digits that are primes (prime number, or a prime, is a natural number 
/// greater than 1 that is not a product of two smaller natural numbers).
/// Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
/// Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
/// So you have to determine a number of the following digits: 2, 3, 5, 7, 
/// B (=decimal 11), D (=decimal 13).
/// Note: you may assume the input is always correct or empty string, 
/// and symbols A,B,C,D,E,F are always uppercase.
/// Examples:
/// >>> hex_key(num: "AB")
/// 1
/// >>> hex_key(num: "1077E")
/// 2
/// >>> hex_key(num: "ABED1A33")
/// 4
/// >>> hex_key(num: "123456789ABCDEF0")
/// 6
/// >>> hex_key(num: "2020")
/// 2
func hex_key(num: String) -> Int {
    let primes = ["2", "3", "5", "7", "B", "D"]
    return num.filter { primes.contains($0) }.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(hex_key(num: "AB") == 1)
assert(hex_key(num: "1077E") == 2)
assert(hex_key(num: "ABED1A33") == 4)
assert(hex_key(num: "2020") == 2)
assert(hex_key(num: "123456789ABCDEF0") == 6)
assert(hex_key(num: "112233445566778899AABBCCDDEEFF00") == 12)



// ----------- problem HumanEval_27_flip_case, completion 141 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 34 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpdghtrdhl.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                let newIndex = alphabet.index(index, offsetBy: 2)
                encoded.append(alphabet[newIndex])
            } else {
                encoded.append(alphabet[index])
            }
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



// ----------- problem HumanEval_17_parse_music, completion 134 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp16bfopoh.swift:17:14: error: expression pattern of type 'String' cannot match values of type 'Character'
        case "o|":
             ^~~~
/tmp/tmp16bfopoh.swift:19:14: error: expression pattern of type 'String' cannot match values of type 'Character'
        case ".|":
             ^~~~

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
    var result: [Int] = []
    for char in music_string {
        switch char {
        case "o":
            result.append(4)
        case "o|":
            result.append(2)
        case ".|":
            result.append(1)
        default:
            break
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_93_encode, completion 107 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp8g22rqq_.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    var encodedMessage = ""
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                encodedMessage.append(alphabet[alphabet.index(index, offsetBy: 2)])
            } else {
                encodedMessage.append(alphabet[index])
            }
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_93_encode, completion 6 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp_vrwik0p.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    var encoded = ""
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                let newIndex = alphabet.index(index, offsetBy: 2)
                encoded.append(alphabet[newIndex])
            } else {
                encoded.append(alphabet[index])
            }
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



// ----------- problem HumanEval_93_encode, completion 172 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp36quf7v1.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    var encodedMessage = ""
    let vowels = ["a", "e", "i", "o", "u"]
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                encodedMessage.append(alphabet[alphabet.index(index, offsetBy: 2)])
            } else {
                encodedMessage.append(alphabet[index].uppercased())
            }
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_17_parse_music, completion 153 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpqs3wcyrc.swift:17:14: error: expression pattern of type 'String' cannot match values of type 'Character'
        case "o|":
             ^~~~
/tmp/tmpqs3wcyrc.swift:19:14: error: expression pattern of type 'String' cannot match values of type 'Character'
        case ".|":
             ^~~~

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
    for char in music_string {
        switch char {
        case "o":
            beats.append(4)
        case "o|":
            beats.append(2)
        case ".|":
            beats.append(1)
        default:
            continue
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



// ----------- problem HumanEval_161_solve, completion 137 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpxybj8ym5.swift:15:48: error: cannot convert value of type 'String.Element' (aka 'Character') to closure result type 'String'
    return s.isEmpty ? s : s.map { $0.isLetter ? $0.isUppercase ? Character($0.lowercased()) : Character($0.uppercased()) : $0 }.joined()
                                   ~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
    return s.isEmpty ? s : s.map { $0.isLetter ? $0.isUppercase ? Character($0.lowercased()) : Character($0.uppercased()) : $0 }.joined()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 189 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 101 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwoei_vio.swift:17:55: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
                                                      ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for letter in message {
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
            if vowels.contains(letter.lowercased()) {
                encodedMessage.append(alphabet[alphabet.index(index, offsetBy: 2)])
            } else {
                encodedMessage.append(alphabet[index])
            }
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_93_encode, completion 157 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpw9wuupe9.swift:17:52: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: char.lowercased()) {
                                                   ^

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
    let vowels = "aeiou"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for char in message {
        if let index = letters.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                let newIndex = (index + 2) % letters.count
                encodedMessage.append(letters[newIndex].uppercased())
            } else {
                encodedMessage.append(letters[index].uppercased())
            }
        } else {
            encodedMessage.append(char)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 95 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 29 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpxm5mtxx0.swift:17:52: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: char.lowercased()) {
                                                   ^

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
    let vowels = "aeiou"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for char in message {
        if let index = letters.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                let newIndex = letters.index(index, offsetBy: 2)
                encodedMessage.append(letters[newIndex])
            } else {
                encodedMessage.append(letters[index])
            }
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_78_hex_key, completion 61 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpq39j_cyq.swift:25:41: error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'String'
    return num.filter { primes.contains($0) }.count
                                        ^

*/
/* stdout = 

*/


/// You have been tasked to write a function that receives 
/// a hexadecimal number as a string and counts the number of hexadecimal 
/// digits that are primes (prime number, or a prime, is a natural number 
/// greater than 1 that is not a product of two smaller natural numbers).
/// Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
/// Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
/// So you have to determine a number of the following digits: 2, 3, 5, 7, 
/// B (=decimal 11), D (=decimal 13).
/// Note: you may assume the input is always correct or empty string, 
/// and symbols A,B,C,D,E,F are always uppercase.
/// Examples:
/// >>> hex_key(num: "AB")
/// 1
/// >>> hex_key(num: "1077E")
/// 2
/// >>> hex_key(num: "ABED1A33")
/// 4
/// >>> hex_key(num: "123456789ABCDEF0")
/// 6
/// >>> hex_key(num: "2020")
/// 2
func hex_key(num: String) -> Int {
    let primes = ["2", "3", "5", "7", "B", "D"]
    return num.filter { primes.contains($0) }.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(hex_key(num: "AB") == 1)
assert(hex_key(num: "1077E") == 2)
assert(hex_key(num: "ABED1A33") == 4)
assert(hex_key(num: "2020") == 2)
assert(hex_key(num: "123456789ABCDEF0") == 6)
assert(hex_key(num: "112233445566778899AABBCCDDEEFF00") == 12)



// ----------- problem HumanEval_93_encode, completion 151 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp03xcqq8e.swift:17:55: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
                                                      ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for letter in message {
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
            if vowels.contains(letter.lowercased()) {
                let newIndex = alphabet.index(index, offsetBy: 2)
                encodedMessage.append(alphabet[newIndex])
            } else {
                encodedMessage.append(alphabet[index])
            }
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_93_encode, completion 77 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpdghtrdhl.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                let newIndex = alphabet.index(index, offsetBy: 2)
                encoded.append(alphabet[newIndex])
            } else {
                encoded.append(alphabet[index])
            }
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



// ----------- problem HumanEval_93_encode, completion 183 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1benokn4.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                encodedMessage.append(alphabet[alphabet.index(index, offsetBy: 2)])
            } else {
                encodedMessage.append(alphabet[index])
            }
        } else {
            encodedMessage.append(char)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 192 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 61 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpydwf9ohy.swift:17:58: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: character.lowercased()) {
                                                         ^

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
    let vowels = ["a", "e", "i", "o", "u"]
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for character in message {
        if let index = alphabet.firstIndex(of: character.lowercased()) {
            if vowels.contains(character.lowercased()) {
                let newIndex = alphabet.index(index, offsetBy: 2)
                encodedMessage.append(alphabet[newIndex])
            } else {
                encodedMessage.append(character)
            }
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_93_encode, completion 126 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpt2qkd78g.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    let vowels = ["a", "e", "i", "o", "u"]
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                let newIndex = alphabet.index(index, offsetBy: 2)
                encodedMessage.append(alphabet[newIndex])
            } else {
                encodedMessage.append(alphabet[index])
            }
        } else {
            encodedMessage.append(char)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 0 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 103 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpdghtrdhl.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                let newIndex = alphabet.index(index, offsetBy: 2)
                encoded.append(alphabet[newIndex])
            } else {
                encoded.append(alphabet[index])
            }
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



// ----------- problem HumanEval_93_encode, completion 162 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp8g22rqq_.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    var encodedMessage = ""
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                encodedMessage.append(alphabet[alphabet.index(index, offsetBy: 2)])
            } else {
                encodedMessage.append(alphabet[index])
            }
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 127 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplsmk_9pj.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map {
           ~~~~~~~^~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map {
        if $0.isUppercase {
            return $0.lowercased()
        } else {
            return $0.uppercased()
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
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 123 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplsmk_9pj.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map {
           ~~~~~~~^~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map {
        if $0.isUppercase {
            return $0.lowercased()
        } else {
            return $0.uppercased()
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
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 190 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 181 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpo4_7lqjo.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 196 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpyxi_vrfl.swift:17:52: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: char.lowercased()) {
                                                   ^

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
    let vowels = "aeiou"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if let index = letters.firstIndex(of: char.lowercased()) {
            let newIndex = (index + 2) % letters.count
            encoded.append(letters[newIndex])
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



// ----------- problem HumanEval_78_hex_key, completion 183 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpq39j_cyq.swift:25:41: error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'String'
    return num.filter { primes.contains($0) }.count
                                        ^

*/
/* stdout = 

*/


/// You have been tasked to write a function that receives 
/// a hexadecimal number as a string and counts the number of hexadecimal 
/// digits that are primes (prime number, or a prime, is a natural number 
/// greater than 1 that is not a product of two smaller natural numbers).
/// Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
/// Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
/// So you have to determine a number of the following digits: 2, 3, 5, 7, 
/// B (=decimal 11), D (=decimal 13).
/// Note: you may assume the input is always correct or empty string, 
/// and symbols A,B,C,D,E,F are always uppercase.
/// Examples:
/// >>> hex_key(num: "AB")
/// 1
/// >>> hex_key(num: "1077E")
/// 2
/// >>> hex_key(num: "ABED1A33")
/// 4
/// >>> hex_key(num: "123456789ABCDEF0")
/// 6
/// >>> hex_key(num: "2020")
/// 2
func hex_key(num: String) -> Int {
    let primes = ["2", "3", "5", "7", "B", "D"]
    return num.filter { primes.contains($0) }.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(hex_key(num: "AB") == 1)
assert(hex_key(num: "1077E") == 2)
assert(hex_key(num: "ABED1A33") == 4)
assert(hex_key(num: "2020") == 2)
assert(hex_key(num: "123456789ABCDEF0") == 6)
assert(hex_key(num: "112233445566778899AABBCCDDEEFF00") == 12)



// ----------- problem HumanEval_140_fix_spaces, completion 110 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpyjvm5we6.swift:32:20: error: cannot assign value of type 'Character' to type 'String'
        lastChar = char
                   ^~~~

*/
/* stdout = 

*/


/// Given a string text, replace all spaces in it with underscores, 
/// and if a string has more than 2 consecutive spaces, 
/// then replace all consecutive spaces with - 
/// >>> fix_spaces(text: " Example")
/// "Example"
/// >>> fix_spaces(text: " Example 1")
/// "Example_1"
/// >>> fix_spaces(text: " Example 2")
/// "_Example_2"
/// >>> fix_spaces(text: " Example 3")
/// "_Example-3"
func fix_spaces(text: String) -> String {
    var result = ""
    var lastChar = ""
    var spaceCount = 0
    for char in text {
        if char == " " {
            spaceCount += 1
            if spaceCount > 2 {
                continue
            }
        } else {
            spaceCount = 0
        }
        if char == " " && lastChar == " " {
            result.removeLast()
            result.append("-")
        } else {
            result.append(char)
        }
        lastChar = char
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fix_spaces(text: "Example") == "Example")
assert(fix_spaces(text: "Mudasir Hanif ") == "Mudasir_Hanif_")
assert(fix_spaces(text: "Yellow Yellow  Dirty  Fellow") == "Yellow_Yellow__Dirty__Fellow")
assert(fix_spaces(text: "Exa   mple") == "Exa-mple")
assert(fix_spaces(text: "   Exa 1 2 2 mple") == "-Exa_1_2_2_mple")



// ----------- problem HumanEval_93_encode, completion 48 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp0_iggg13.swift:17:52: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: char.lowercased()) {
                                                   ^

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
    let vowels = "aeiou"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if let index = letters.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                let newIndex = letters.index(index, offsetBy: 2)
                encoded.append(letters[newIndex])
            } else {
                encoded.append(letters[index])
            }
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



// ----------- problem HumanEval_78_hex_key, completion 6 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpq39j_cyq.swift:25:41: error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'String'
    return num.filter { primes.contains($0) }.count
                                        ^

*/
/* stdout = 

*/


/// You have been tasked to write a function that receives 
/// a hexadecimal number as a string and counts the number of hexadecimal 
/// digits that are primes (prime number, or a prime, is a natural number 
/// greater than 1 that is not a product of two smaller natural numbers).
/// Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
/// Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
/// So you have to determine a number of the following digits: 2, 3, 5, 7, 
/// B (=decimal 11), D (=decimal 13).
/// Note: you may assume the input is always correct or empty string, 
/// and symbols A,B,C,D,E,F are always uppercase.
/// Examples:
/// >>> hex_key(num: "AB")
/// 1
/// >>> hex_key(num: "1077E")
/// 2
/// >>> hex_key(num: "ABED1A33")
/// 4
/// >>> hex_key(num: "123456789ABCDEF0")
/// 6
/// >>> hex_key(num: "2020")
/// 2
func hex_key(num: String) -> Int {
    let primes = ["2", "3", "5", "7", "B", "D"]
    return num.filter { primes.contains($0) }.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(hex_key(num: "AB") == 1)
assert(hex_key(num: "1077E") == 2)
assert(hex_key(num: "ABED1A33") == 4)
assert(hex_key(num: "2020") == 2)
assert(hex_key(num: "123456789ABCDEF0") == 6)
assert(hex_key(num: "112233445566778899AABBCCDDEEFF00") == 12)



// ----------- problem HumanEval_27_flip_case, completion 184 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 193 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 128 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp07935uvg.swift:17:52: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: char.lowercased()) {
                                                   ^

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
    let vowels = "aeiou"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var result = ""
    for char in message {
        if let index = letters.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                let newIndex = letters.index(index, offsetBy: 2)
                result.append(letters[newIndex])
            } else {
                result.append(letters[index])
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
            
assert(encode(message: "TEST") == "tgst")
assert(encode(message: "Mudasir") == "mWDCSKR")
assert(encode(message: "YES") == "ygs")
assert(encode(message: "This is a message") == "tHKS KS C MGSSCGG")
assert(encode(message: "I DoNt KnOw WhAt tO WrItE") == "k dQnT kNqW wHcT Tq wRkTg")



// ----------- problem HumanEval_140_fix_spaces, completion 143 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpjftpzs9v.swift:26:24: error: cannot assign value of type 'Character' to type 'String'
            previous = char
                       ^~~~

*/
/* stdout = 

*/


/// Given a string text, replace all spaces in it with underscores, 
/// and if a string has more than 2 consecutive spaces, 
/// then replace all consecutive spaces with - 
/// >>> fix_spaces(text: " Example")
/// "Example"
/// >>> fix_spaces(text: " Example 1")
/// "Example_1"
/// >>> fix_spaces(text: " Example 2")
/// "_Example_2"
/// >>> fix_spaces(text: " Example 3")
/// "_Example-3"
func fix_spaces(text: String) -> String {
    var result = ""
    var previous = ""
    var count = 0
    for char in text {
        if char == " " {
            if previous == " " {
                count += 1
            } else {
                count = 1
            }
            previous = " "
        } else {
            previous = char
            count = 0
        }
        if count == 1 {
            result += "_"
        } else if count == 2 {
            result += "-"
        } else {
            result += String(char)
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fix_spaces(text: "Example") == "Example")
assert(fix_spaces(text: "Mudasir Hanif ") == "Mudasir_Hanif_")
assert(fix_spaces(text: "Yellow Yellow  Dirty  Fellow") == "Yellow_Yellow__Dirty__Fellow")
assert(fix_spaces(text: "Exa   mple") == "Exa-mple")
assert(fix_spaces(text: "   Exa 1 2 2 mple") == "-Exa_1_2_2_mple")



// ----------- problem HumanEval_27_flip_case, completion 112 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpmfspvc39.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map({ $0.isUppercase ? $0.lowercased() : $0.uppercased() })
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map({ $0.isUppercase ? $0.lowercased() : $0.uppercased() })
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 26 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpaxrf5207.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                let newIndex = alphabet.index(index, offsetBy: 2)
                encodedMessage.append(alphabet[newIndex])
            } else {
                encodedMessage.append(alphabet[index])
            }
        } else {
            encodedMessage.append(char)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_130_tri, completion 132 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpeqg34tul.swift:25:52: error: cannot convert return expression of type 'Array<Int>' to return type 'Int'
            return tri(n: $0 - 1) + tri(n: $0 - 2) + tri(n: $0 - 3)
                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    return [Int](0...n).map {
        switch $0 {
        case 0: return 1
        case 1: return 3
        case 2: return 2
        default:
            return tri(n: $0 - 1) + tri(n: $0 - 2) + tri(n: $0 - 3)
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
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_93_encode, completion 24 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp9nl3aw5w.swift:17:52: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: char.lowercased()) {
                                                   ^

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
    let vowels = "aeiou"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if let index = letters.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                encoded.append(letters[letters.index(index, offsetBy: 2)])
            } else {
                encoded.append(letters[index])
            }
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



// ----------- problem HumanEval_93_encode, completion 131 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp9nl3aw5w.swift:17:52: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: char.lowercased()) {
                                                   ^

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
    let vowels = "aeiou"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if let index = letters.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                encoded.append(letters[letters.index(index, offsetBy: 2)])
            } else {
                encoded.append(letters[index])
            }
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



// ----------- problem HumanEval_93_encode, completion 98 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6q_p1086.swift:17:48: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.index(of: char.lowercased()) {
                                               ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for char in message {
        if let index = alphabet.index(of: char.lowercased()) {
            let newIndex = alphabet.index(index, offsetBy: 2)
            let newChar = alphabet[newIndex]
            if vowels.contains(char.lowercased()) {
                encodedMessage.append(newChar)
            } else {
                encodedMessage.append(newChar.uppercased())
            }
        } else {
            encodedMessage.append(char)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 87 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 108 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpo4_7lqjo.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 190 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp2jmkq09a.swift:17:48: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.index(of: char.lowercased()) {
                                               ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for char in message {
        if let index = alphabet.index(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                let newIndex = alphabet.index(index, offsetBy: 2)
                encodedMessage.append(alphabet[newIndex])
            } else {
                encodedMessage.append(alphabet[index])
            }
        } else {
            encodedMessage.append(char)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_93_encode, completion 93 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp0_iggg13.swift:17:52: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: char.lowercased()) {
                                                   ^

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
    let vowels = "aeiou"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if let index = letters.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                let newIndex = letters.index(index, offsetBy: 2)
                encoded.append(letters[newIndex])
            } else {
                encoded.append(letters[index])
            }
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



// ----------- problem HumanEval_27_flip_case, completion 114 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 38 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 174 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_17_parse_music, completion 40 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpqs3wcyrc.swift:17:14: error: expression pattern of type 'String' cannot match values of type 'Character'
        case "o|":
             ^~~~
/tmp/tmpqs3wcyrc.swift:19:14: error: expression pattern of type 'String' cannot match values of type 'Character'
        case ".|":
             ^~~~

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
    for char in music_string {
        switch char {
        case "o":
            beats.append(4)
        case "o|":
            beats.append(2)
        case ".|":
            beats.append(1)
        default:
            continue
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



// ----------- problem HumanEval_27_flip_case, completion 186 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 91 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 199 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 20 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 105 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 134 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 139 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 75 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpdi0a1f2_.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    var encodedMessage = ""
    let vowels = ["a", "e", "i", "o", "u"]
    let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                encodedMessage += alphabet[(index + 2) % alphabet.count].uppercased()
            } else {
                encodedMessage += alphabet[index].uppercased()
            }
        } else {
            encodedMessage += String(char)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_140_fix_spaces, completion 148 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpf1rsqq9s.swift:24:23: error: cannot convert value of type 'Character' to expected argument type 'String'
            result += c
                      ^

*/
/* stdout = 

*/


/// Given a string text, replace all spaces in it with underscores, 
/// and if a string has more than 2 consecutive spaces, 
/// then replace all consecutive spaces with - 
/// >>> fix_spaces(text: " Example")
/// "Example"
/// >>> fix_spaces(text: " Example 1")
/// "Example_1"
/// >>> fix_spaces(text: " Example 2")
/// "_Example_2"
/// >>> fix_spaces(text: " Example 3")
/// "_Example-3"
func fix_spaces(text: String) -> String {
    var result = ""
    var space_count = 0
    for c in text {
        if c == " " {
            space_count += 1
            if space_count >= 2 {
                result += "-"
                space_count = 0
            }
        } else {
            result += c
            space_count = 0
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fix_spaces(text: "Example") == "Example")
assert(fix_spaces(text: "Mudasir Hanif ") == "Mudasir_Hanif_")
assert(fix_spaces(text: "Yellow Yellow  Dirty  Fellow") == "Yellow_Yellow__Dirty__Fellow")
assert(fix_spaces(text: "Exa   mple") == "Exa-mple")
assert(fix_spaces(text: "   Exa 1 2 2 mple") == "-Exa_1_2_2_mple")



// ----------- problem HumanEval_93_encode, completion 133 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpn3pdch7_.swift:13:20: error: cannot convert return expression of type '[String]' to return type 'String'
    return message.map {
           ~~~~~~~~^~~~~

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
    return message.map {
        switch $0 {
        case "a":
            return "c"
        case "e":
            return "g"
        case "i":
            return "k"
        case "o":
            return "q"
        case "u":
            return "y"
        case "A":
            return "C"
        case "E":
            return "G"
        case "I":
            return "K"
        case "O":
            return "Q"
        case "U":
            return "Y"
        default:
            return $0.isUppercase ? $0.lowercased() : $0.uppercased()
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
            
assert(encode(message: "TEST") == "tgst")
assert(encode(message: "Mudasir") == "mWDCSKR")
assert(encode(message: "YES") == "ygs")
assert(encode(message: "This is a message") == "tHKS KS C MGSSCGG")
assert(encode(message: "I DoNt KnOw WhAt tO WrItE") == "k dQnT kNqW wHcT Tq wRkTg")



// ----------- problem HumanEval_93_encode, completion 192 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp21p3b2hl.swift:17:55: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
                                                      ^
/tmp/tmp21p3b2hl.swift:18:39: error: value of type 'Character' has no member 'isUppercased'
            let isUppercased = letter.isUppercased
                               ~~~~~~ ^~~~~~~~~~~~

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for letter in message {
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
            let isUppercased = letter.isUppercased
            let newLetter = alphabet[alphabet.index(index, offsetBy: 2)]
            encodedMessage += isUppercased ? newLetter.uppercased() : newLetter
        } else {
            encodedMessage += String(letter)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_78_hex_key, completion 106 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpcwx58er0.swift:27:44: error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'String'
    return num.filter { hexPrimes.contains($0) }.count
                                           ^

*/
/* stdout = 

*/


/// You have been tasked to write a function that receives 
/// a hexadecimal number as a string and counts the number of hexadecimal 
/// digits that are primes (prime number, or a prime, is a natural number 
/// greater than 1 that is not a product of two smaller natural numbers).
/// Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
/// Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
/// So you have to determine a number of the following digits: 2, 3, 5, 7, 
/// B (=decimal 11), D (=decimal 13).
/// Note: you may assume the input is always correct or empty string, 
/// and symbols A,B,C,D,E,F are always uppercase.
/// Examples:
/// >>> hex_key(num: "AB")
/// 1
/// >>> hex_key(num: "1077E")
/// 2
/// >>> hex_key(num: "ABED1A33")
/// 4
/// >>> hex_key(num: "123456789ABCDEF0")
/// 6
/// >>> hex_key(num: "2020")
/// 2
func hex_key(num: String) -> Int {
    let hex = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"]
    let primes = [2, 3, 5, 7, 11, 13]
    let hexPrimes = Set(primes.map { hex[$0] })
    return num.filter { hexPrimes.contains($0) }.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(hex_key(num: "AB") == 1)
assert(hex_key(num: "1077E") == 2)
assert(hex_key(num: "ABED1A33") == 4)
assert(hex_key(num: "2020") == 2)
assert(hex_key(num: "123456789ABCDEF0") == 6)
assert(hex_key(num: "112233445566778899AABBCCDDEEFF00") == 12)



// ----------- problem HumanEval_93_encode, completion 155 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpmtt5qxuy.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                encoded.append(alphabet[alphabet.index(index, offsetBy: 2)])
            } else {
                encoded.append(alphabet[index])
            }
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



// ----------- problem HumanEval_27_flip_case, completion 62 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpo4_7lqjo.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 161 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpj0g53ty1.swift:16:37: error: incorrect argument label in call (have 'char:', expected 'message:')
            encodedMessage += encode(char: char)
                                    ^~~~~
                                     message
/tmp/tmpj0g53ty1.swift:16:44: error: cannot convert value of type 'Character' to expected argument type 'String'
            encodedMessage += encode(char: char)
                                           ^

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
    var encodedMessage = ""
    for char in message {
        if char.isLetter {
            encodedMessage += encode(char: char)
        } else {
            encodedMessage += String(char)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_93_encode, completion 22 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpuq8nzcw1.swift:17:55: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
                                                      ^

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
    var encoded = ""
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    for letter in message {
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
            if vowels.contains(letter.lowercased()) {
                encoded.append(alphabet[alphabet.index(index, offsetBy: 2)])
            } else {
                encoded.append(alphabet[index])
            }
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



// ----------- problem HumanEval_93_encode, completion 152 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpd5m0hlyn.swift:17:52: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: char.lowercased()) {
                                                   ^

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
    let vowels = "aeiou"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if let index = letters.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                let nextIndex = letters.index(index, offsetBy: 2)
                encoded.append(letters[nextIndex])
            } else {
                encoded.append(letters[index])
            }
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



// ----------- problem HumanEval_93_encode, completion 20 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpimzr0vow.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    var result = ""
    let vowels = ["a", "e", "i", "o", "u"]
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                if let nextIndex = alphabet.index(index, offsetBy: 2, limitedBy: alphabet.endIndex) {
                    result.append(alphabet[nextIndex])
                } else {
                    result.append(alphabet[alphabet.startIndex])
                }
            } else {
                result.append(char)
            }
        } else {
            result.append(char)
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_93_encode, completion 125 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpub33i_0j.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            let newIndex = index + 2
            let newChar = alphabet[newIndex % alphabet.count]
            encoded.append(vowels.contains(char.lowercased()) ? newChar : newChar.uppercased())
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



// ----------- problem HumanEval_27_flip_case, completion 54 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplsmk_9pj.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map {
           ~~~~~~~^~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map {
        if $0.isUppercase {
            return $0.lowercased()
        } else {
            return $0.uppercased()
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
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 3 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_17_parse_music, completion 95 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpf7ewcezh.swift:17:14: error: expression pattern of type 'String' cannot match values of type 'Character'
        case "o|":
             ^~~~
/tmp/tmpf7ewcezh.swift:19:14: error: expression pattern of type 'String' cannot match values of type 'Character'
        case ".|":
             ^~~~

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
    for char in music_string {
        switch char {
        case "o":
            beats.append(4)
        case "o|":
            beats.append(2)
        case ".|":
            beats.append(1)
        default:
            break
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



// ----------- problem HumanEval_27_flip_case, completion 137 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 6 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpo4_7lqjo.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 122 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp9nl3aw5w.swift:17:52: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: char.lowercased()) {
                                                   ^

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
    let vowels = "aeiou"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if let index = letters.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                encoded.append(letters[letters.index(index, offsetBy: 2)])
            } else {
                encoded.append(letters[index])
            }
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



// ----------- problem HumanEval_93_encode, completion 28 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpvpqfqq8f.swift:18:49: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
            let index = alphabet.index(of: char.lowercased())!
                                                ^

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
    var encoded = ""
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    for char in message {
        if vowels.contains(char.lowercased()) {
            let index = alphabet.index(of: char.lowercased())!
            let nextIndex = alphabet.index(index, offsetBy: 2)
            encoded.append(alphabet[nextIndex])
        } else {
            encoded.append(char.lowercased())
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



// ----------- problem HumanEval_78_hex_key, completion 184 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6f0psfkj.swift:25:44: error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'String'
    return num.filter { hexPrimes.contains($0) }.count
                                           ^

*/
/* stdout = 

*/


/// You have been tasked to write a function that receives 
/// a hexadecimal number as a string and counts the number of hexadecimal 
/// digits that are primes (prime number, or a prime, is a natural number 
/// greater than 1 that is not a product of two smaller natural numbers).
/// Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
/// Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
/// So you have to determine a number of the following digits: 2, 3, 5, 7, 
/// B (=decimal 11), D (=decimal 13).
/// Note: you may assume the input is always correct or empty string, 
/// and symbols A,B,C,D,E,F are always uppercase.
/// Examples:
/// >>> hex_key(num: "AB")
/// 1
/// >>> hex_key(num: "1077E")
/// 2
/// >>> hex_key(num: "ABED1A33")
/// 4
/// >>> hex_key(num: "123456789ABCDEF0")
/// 6
/// >>> hex_key(num: "2020")
/// 2
func hex_key(num: String) -> Int {
    let hexPrimes = ["2", "3", "5", "7", "B", "D"]
    return num.filter { hexPrimes.contains($0) }.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(hex_key(num: "AB") == 1)
assert(hex_key(num: "1077E") == 2)
assert(hex_key(num: "ABED1A33") == 4)
assert(hex_key(num: "2020") == 2)
assert(hex_key(num: "123456789ABCDEF0") == 6)
assert(hex_key(num: "112233445566778899AABBCCDDEEFF00") == 12)



// ----------- problem HumanEval_93_encode, completion 8 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpilvf79iz.swift:17:54: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: letter.lowercased()) {
                                                     ^

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
    let vowels = "aeiou"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for letter in message {
        if let index = letters.firstIndex(of: letter.lowercased()) {
            if vowels.contains(letter.lowercased()) {
                let newIndex = letters.index(index, offsetBy: 2)
                encodedMessage.append(letters[newIndex])
            } else {
                encodedMessage.append(letters[index])
            }
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 59 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpo4_7lqjo.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 162 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 16 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp8cybbik6.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            let newIndex = alphabet.index(index, offsetBy: 2)
            if vowels.contains(char.lowercased()) {
                encodedMessage.append(alphabet[newIndex])
            } else {
                encodedMessage.append(alphabet[newIndex].uppercased())
            }
        } else {
            encodedMessage.append(char)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 129 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 177 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 90 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpgyvww1al.swift:17:52: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: char.lowercased()) {
                                                   ^

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
    let vowels = "aeiou"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for char in message {
        if let index = letters.firstIndex(of: char.lowercased()) {
            let newIndex = index + 2
            let newChar = letters[newIndex % letters.count]
            encodedMessage.append(vowels.contains(char.lowercased()) ? newChar : newChar.uppercased())
        } else {
            encodedMessage.append(char)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_93_encode, completion 182 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpmknqi7c5.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                encoded.append(alphabet[alphabet.index(index, offsetBy: 2)])
            } else {
                encoded.append(alphabet[index].uppercased())
            }
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



// ----------- problem HumanEval_27_flip_case, completion 156 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 179 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 163 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 144 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpo4_7lqjo.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 67 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwoei_vio.swift:17:55: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
                                                      ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for letter in message {
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
            if vowels.contains(letter.lowercased()) {
                encodedMessage.append(alphabet[alphabet.index(index, offsetBy: 2)])
            } else {
                encodedMessage.append(alphabet[index])
            }
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 68 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_78_hex_key, completion 68 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpq39j_cyq.swift:25:41: error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'String'
    return num.filter { primes.contains($0) }.count
                                        ^

*/
/* stdout = 

*/


/// You have been tasked to write a function that receives 
/// a hexadecimal number as a string and counts the number of hexadecimal 
/// digits that are primes (prime number, or a prime, is a natural number 
/// greater than 1 that is not a product of two smaller natural numbers).
/// Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
/// Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
/// So you have to determine a number of the following digits: 2, 3, 5, 7, 
/// B (=decimal 11), D (=decimal 13).
/// Note: you may assume the input is always correct or empty string, 
/// and symbols A,B,C,D,E,F are always uppercase.
/// Examples:
/// >>> hex_key(num: "AB")
/// 1
/// >>> hex_key(num: "1077E")
/// 2
/// >>> hex_key(num: "ABED1A33")
/// 4
/// >>> hex_key(num: "123456789ABCDEF0")
/// 6
/// >>> hex_key(num: "2020")
/// 2
func hex_key(num: String) -> Int {
    let primes = ["2", "3", "5", "7", "B", "D"]
    return num.filter { primes.contains($0) }.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(hex_key(num: "AB") == 1)
assert(hex_key(num: "1077E") == 2)
assert(hex_key(num: "ABED1A33") == 4)
assert(hex_key(num: "2020") == 2)
assert(hex_key(num: "123456789ABCDEF0") == 6)
assert(hex_key(num: "112233445566778899AABBCCDDEEFF00") == 12)



// ----------- problem HumanEval_27_flip_case, completion 48 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 35 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpt2qkd78g.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    let vowels = ["a", "e", "i", "o", "u"]
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                let newIndex = alphabet.index(index, offsetBy: 2)
                encodedMessage.append(alphabet[newIndex])
            } else {
                encodedMessage.append(alphabet[index])
            }
        } else {
            encodedMessage.append(char)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_78_hex_key, completion 28 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6f0psfkj.swift:25:44: error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'String'
    return num.filter { hexPrimes.contains($0) }.count
                                           ^

*/
/* stdout = 

*/


/// You have been tasked to write a function that receives 
/// a hexadecimal number as a string and counts the number of hexadecimal 
/// digits that are primes (prime number, or a prime, is a natural number 
/// greater than 1 that is not a product of two smaller natural numbers).
/// Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
/// Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
/// So you have to determine a number of the following digits: 2, 3, 5, 7, 
/// B (=decimal 11), D (=decimal 13).
/// Note: you may assume the input is always correct or empty string, 
/// and symbols A,B,C,D,E,F are always uppercase.
/// Examples:
/// >>> hex_key(num: "AB")
/// 1
/// >>> hex_key(num: "1077E")
/// 2
/// >>> hex_key(num: "ABED1A33")
/// 4
/// >>> hex_key(num: "123456789ABCDEF0")
/// 6
/// >>> hex_key(num: "2020")
/// 2
func hex_key(num: String) -> Int {
    let hexPrimes = ["2", "3", "5", "7", "B", "D"]
    return num.filter { hexPrimes.contains($0) }.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(hex_key(num: "AB") == 1)
assert(hex_key(num: "1077E") == 2)
assert(hex_key(num: "ABED1A33") == 4)
assert(hex_key(num: "2020") == 2)
assert(hex_key(num: "123456789ABCDEF0") == 6)
assert(hex_key(num: "112233445566778899AABBCCDDEEFF00") == 12)



// ----------- problem HumanEval_27_flip_case, completion 178 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpo4_7lqjo.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_78_hex_key, completion 32 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6f0psfkj.swift:25:44: error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'String'
    return num.filter { hexPrimes.contains($0) }.count
                                           ^

*/
/* stdout = 

*/


/// You have been tasked to write a function that receives 
/// a hexadecimal number as a string and counts the number of hexadecimal 
/// digits that are primes (prime number, or a prime, is a natural number 
/// greater than 1 that is not a product of two smaller natural numbers).
/// Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
/// Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
/// So you have to determine a number of the following digits: 2, 3, 5, 7, 
/// B (=decimal 11), D (=decimal 13).
/// Note: you may assume the input is always correct or empty string, 
/// and symbols A,B,C,D,E,F are always uppercase.
/// Examples:
/// >>> hex_key(num: "AB")
/// 1
/// >>> hex_key(num: "1077E")
/// 2
/// >>> hex_key(num: "ABED1A33")
/// 4
/// >>> hex_key(num: "123456789ABCDEF0")
/// 6
/// >>> hex_key(num: "2020")
/// 2
func hex_key(num: String) -> Int {
    let hexPrimes = ["2", "3", "5", "7", "B", "D"]
    return num.filter { hexPrimes.contains($0) }.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(hex_key(num: "AB") == 1)
assert(hex_key(num: "1077E") == 2)
assert(hex_key(num: "ABED1A33") == 4)
assert(hex_key(num: "2020") == 2)
assert(hex_key(num: "123456789ABCDEF0") == 6)
assert(hex_key(num: "112233445566778899AABBCCDDEEFF00") == 12)



// ----------- problem HumanEval_17_parse_music, completion 196 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3804yl3g.swift:18:14: error: expression pattern of type 'String' cannot match values of type 'Character'
        case "o|":
             ^~~~
/tmp/tmp3804yl3g.swift:20:14: error: expression pattern of type 'String' cannot match values of type 'Character'
        case ".|":
             ^~~~

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
    var currentBeat = 0
    for char in music_string {
        switch char {
        case "o":
            beats.append(4)
        case "o|":
            beats.append(2)
        case ".|":
            beats.append(1)
        default:
            break
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



// ----------- problem HumanEval_93_encode, completion 88 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp8cybbik6.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            let newIndex = alphabet.index(index, offsetBy: 2)
            if vowels.contains(char.lowercased()) {
                encodedMessage.append(alphabet[newIndex])
            } else {
                encodedMessage.append(alphabet[newIndex].uppercased())
            }
        } else {
            encodedMessage.append(char)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 111 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 63 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_17_parse_music, completion 36 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpf7ewcezh.swift:17:14: error: expression pattern of type 'String' cannot match values of type 'Character'
        case "o|":
             ^~~~
/tmp/tmpf7ewcezh.swift:19:14: error: expression pattern of type 'String' cannot match values of type 'Character'
        case ".|":
             ^~~~

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
    for char in music_string {
        switch char {
        case "o":
            beats.append(4)
        case "o|":
            beats.append(2)
        case ".|":
            beats.append(1)
        default:
            break
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



// ----------- problem HumanEval_27_flip_case, completion 116 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 100 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpo4_7lqjo.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 56 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp8mkzj9z3.swift:17:55: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
                                                      ^

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
    var encodedMessage = ""
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    for letter in message {
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
            if vowels.contains(letter.lowercased()) {
                let newIndex = alphabet.index(index, offsetBy: 2)
                encodedMessage.append(alphabet[newIndex].uppercased())
            } else {
                encodedMessage.append(alphabet[index].uppercased())
            }
        } else {
            encodedMessage.append(letter)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 195 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 52 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 41 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplsmk_9pj.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map {
           ~~~~~~~^~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map {
        if $0.isUppercase {
            return $0.lowercased()
        } else {
            return $0.uppercased()
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
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 144 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpbo9zxcql.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    var encoded = ""
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                encoded.append(alphabet[alphabet.index(index, offsetBy: 2)])
            } else {
                encoded.append(alphabet[index])
            }
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



// ----------- problem HumanEval_27_flip_case, completion 23 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpo4_7lqjo.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_78_hex_key, completion 82 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpq39j_cyq.swift:25:41: error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'String'
    return num.filter { primes.contains($0) }.count
                                        ^

*/
/* stdout = 

*/


/// You have been tasked to write a function that receives 
/// a hexadecimal number as a string and counts the number of hexadecimal 
/// digits that are primes (prime number, or a prime, is a natural number 
/// greater than 1 that is not a product of two smaller natural numbers).
/// Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
/// Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
/// So you have to determine a number of the following digits: 2, 3, 5, 7, 
/// B (=decimal 11), D (=decimal 13).
/// Note: you may assume the input is always correct or empty string, 
/// and symbols A,B,C,D,E,F are always uppercase.
/// Examples:
/// >>> hex_key(num: "AB")
/// 1
/// >>> hex_key(num: "1077E")
/// 2
/// >>> hex_key(num: "ABED1A33")
/// 4
/// >>> hex_key(num: "123456789ABCDEF0")
/// 6
/// >>> hex_key(num: "2020")
/// 2
func hex_key(num: String) -> Int {
    let primes = ["2", "3", "5", "7", "B", "D"]
    return num.filter { primes.contains($0) }.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(hex_key(num: "AB") == 1)
assert(hex_key(num: "1077E") == 2)
assert(hex_key(num: "ABED1A33") == 4)
assert(hex_key(num: "2020") == 2)
assert(hex_key(num: "123456789ABCDEF0") == 6)
assert(hex_key(num: "112233445566778899AABBCCDDEEFF00") == 12)



// ----------- problem HumanEval_10_make_palindrome, completion 176 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpkgea8pc5.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters.map { String($0) }
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpkgea8pc5.swift:15:72: error: cannot find 'longest_palindromic_suffix' in scope
    let prefix = reversed.prefix(upTo: reversed.endIndex.advanced(by: -longest_palindromic_suffix(string: string).count))
                                                                       ^~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmpkgea8pc5.swift:15:58: error: value of type 'ReversedCollection<[String]>.Index' has no member 'advanced'
    let prefix = reversed.prefix(upTo: reversed.endIndex.advanced(by: -longest_palindromic_suffix(string: string).count))
                                       ~~~~~~~~~~~~~~~~~ ^~~~~~~~
/tmp/tmpkgea8pc5.swift:16:19: error: operator function '+' requires the types 'String.Element' (aka 'Character') and 'String' be equivalent
    return string + prefix.reversed()
                  ^
Swift.RangeReplaceableCollection:3:35: note: where 'Self.Element' = 'String.Element' (aka 'Character'), 'Other.Element' = 'String'
    @inlinable public static func + <Other>(lhs: Other, rhs: Self) -> Self where Other : Sequence, Self.Element == Other.Element
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
    let string = string.characters.map { String($0) }
    let reversed = string.reversed()
    let prefix = reversed.prefix(upTo: reversed.endIndex.advanced(by: -longest_palindromic_suffix(string: string).count))
    return string + prefix.reversed()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_78_hex_key, completion 186 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6f0psfkj.swift:25:44: error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'String'
    return num.filter { hexPrimes.contains($0) }.count
                                           ^

*/
/* stdout = 

*/


/// You have been tasked to write a function that receives 
/// a hexadecimal number as a string and counts the number of hexadecimal 
/// digits that are primes (prime number, or a prime, is a natural number 
/// greater than 1 that is not a product of two smaller natural numbers).
/// Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
/// Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
/// So you have to determine a number of the following digits: 2, 3, 5, 7, 
/// B (=decimal 11), D (=decimal 13).
/// Note: you may assume the input is always correct or empty string, 
/// and symbols A,B,C,D,E,F are always uppercase.
/// Examples:
/// >>> hex_key(num: "AB")
/// 1
/// >>> hex_key(num: "1077E")
/// 2
/// >>> hex_key(num: "ABED1A33")
/// 4
/// >>> hex_key(num: "123456789ABCDEF0")
/// 6
/// >>> hex_key(num: "2020")
/// 2
func hex_key(num: String) -> Int {
    let hexPrimes = ["2", "3", "5", "7", "B", "D"]
    return num.filter { hexPrimes.contains($0) }.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(hex_key(num: "AB") == 1)
assert(hex_key(num: "1077E") == 2)
assert(hex_key(num: "ABED1A33") == 4)
assert(hex_key(num: "2020") == 2)
assert(hex_key(num: "123456789ABCDEF0") == 6)
assert(hex_key(num: "112233445566778899AABBCCDDEEFF00") == 12)



// ----------- problem HumanEval_93_encode, completion 85 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpyxi_vrfl.swift:17:52: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: char.lowercased()) {
                                                   ^

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
    let vowels = "aeiou"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if let index = letters.firstIndex(of: char.lowercased()) {
            let newIndex = (index + 2) % letters.count
            encoded.append(letters[newIndex])
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



// ----------- problem HumanEval_27_flip_case, completion 182 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplsmk_9pj.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map {
           ~~~~~~~^~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map {
        if $0.isUppercase {
            return $0.lowercased()
        } else {
            return $0.uppercased()
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
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 172 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 149 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpyxi_vrfl.swift:17:52: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: char.lowercased()) {
                                                   ^

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
    let vowels = "aeiou"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if let index = letters.firstIndex(of: char.lowercased()) {
            let newIndex = (index + 2) % letters.count
            encoded.append(letters[newIndex])
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



// ----------- problem HumanEval_93_encode, completion 174 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp37bafzzj.swift:17:52: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: char.lowercased()) {
                                                   ^

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
    var encodedMessage = ""
    let vowels = ["a", "e", "i", "o", "u"]
    let letters = "abcdefghijklmnopqrstuvwxyz"
    for char in message {
        if let index = letters.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                encodedMessage.append(letters[letters.index(index, offsetBy: 2)])
            } else {
                encodedMessage.append(letters[index])
            }
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_93_encode, completion 142 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpbdzqrqlf.swift:18:103: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
            let index = alphabet.index(alphabet.startIndex, offsetBy: alphabet.index(of: String(char).lowercased())! + 2)
                                                                                                      ^
/tmp/tmpbdzqrqlf.swift:18:116: error: cannot convert value of type 'String.Index' to expected argument type 'Int'
            let index = alphabet.index(alphabet.startIndex, offsetBy: alphabet.index(of: String(char).lowercased())! + 2)
                                                                                                                   ^

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
    let vowels = ["a", "e", "i", "o", "u"]
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for char in message {
        if vowels.contains(String(char).lowercased()) {
            let index = alphabet.index(alphabet.startIndex, offsetBy: alphabet.index(of: String(char).lowercased())! + 2)
            encodedMessage += String(alphabet[index]).uppercased()
        } else {
            encodedMessage += String(char).uppercased()
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 43 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpo4_7lqjo.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 128 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 158 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1benokn4.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                encodedMessage.append(alphabet[alphabet.index(index, offsetBy: 2)])
            } else {
                encodedMessage.append(alphabet[index])
            }
        } else {
            encodedMessage.append(char)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 31 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 115 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3xe01fm7.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    var encodedMessage = ""
    let vowels = ["a", "e", "i", "o", "u"]
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                let newIndex = alphabet.index(index, offsetBy: 2)
                encodedMessage.append(alphabet[newIndex])
            } else {
                encodedMessage.append(alphabet[index])
            }
        } else {
            encodedMessage.append(char)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_93_encode, completion 179 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmppupwcdjc.swift:17:54: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: letter.lowercased()) {
                                                     ^

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
    let vowels = "aeiou"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for letter in message {
        if let index = letters.firstIndex(of: letter.lowercased()) {
            if vowels.contains(letter.lowercased()) {
                let nextIndex = letters.index(index, offsetBy: 2)
                encodedMessage.append(letters[nextIndex])
            } else {
                encodedMessage.append(letters[index])
            }
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_17_parse_music, completion 4 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpf7ewcezh.swift:17:14: error: expression pattern of type 'String' cannot match values of type 'Character'
        case "o|":
             ^~~~
/tmp/tmpf7ewcezh.swift:19:14: error: expression pattern of type 'String' cannot match values of type 'Character'
        case ".|":
             ^~~~

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
    for char in music_string {
        switch char {
        case "o":
            beats.append(4)
        case "o|":
            beats.append(2)
        case ".|":
            beats.append(1)
        default:
            break
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



// ----------- problem HumanEval_27_flip_case, completion 113 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 117 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 147 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 171 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp20p54_2_.swift:19:55: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
            let index = alphabet.index(of: charString.lowercased())!
                                                      ^

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
    var encodedMessage = ""
    let vowels = ["a", "e", "i", "o", "u"]
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    for char in message {
        let charString = String(char)
        if vowels.contains(charString.lowercased()) {
            let index = alphabet.index(of: charString.lowercased())!
            let newIndex = alphabet.index(index, offsetBy: 2)
            encodedMessage += String(alphabet[newIndex]).uppercased()
        } else {
            encodedMessage += charString.uppercased()
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 55 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_78_hex_key, completion 46 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpq39j_cyq.swift:25:41: error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'String'
    return num.filter { primes.contains($0) }.count
                                        ^

*/
/* stdout = 

*/


/// You have been tasked to write a function that receives 
/// a hexadecimal number as a string and counts the number of hexadecimal 
/// digits that are primes (prime number, or a prime, is a natural number 
/// greater than 1 that is not a product of two smaller natural numbers).
/// Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
/// Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
/// So you have to determine a number of the following digits: 2, 3, 5, 7, 
/// B (=decimal 11), D (=decimal 13).
/// Note: you may assume the input is always correct or empty string, 
/// and symbols A,B,C,D,E,F are always uppercase.
/// Examples:
/// >>> hex_key(num: "AB")
/// 1
/// >>> hex_key(num: "1077E")
/// 2
/// >>> hex_key(num: "ABED1A33")
/// 4
/// >>> hex_key(num: "123456789ABCDEF0")
/// 6
/// >>> hex_key(num: "2020")
/// 2
func hex_key(num: String) -> Int {
    let primes = ["2", "3", "5", "7", "B", "D"]
    return num.filter { primes.contains($0) }.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(hex_key(num: "AB") == 1)
assert(hex_key(num: "1077E") == 2)
assert(hex_key(num: "ABED1A33") == 4)
assert(hex_key(num: "2020") == 2)
assert(hex_key(num: "123456789ABCDEF0") == 6)
assert(hex_key(num: "112233445566778899AABBCCDDEEFF00") == 12)



// ----------- problem HumanEval_27_flip_case, completion 40 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpo4_7lqjo.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 67 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplsmk_9pj.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map {
           ~~~~~~~^~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map {
        if $0.isUppercase {
            return $0.lowercased()
        } else {
            return $0.uppercased()
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
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 2 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 161 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 121 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 101 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 148 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 32 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp923f6r4b.swift:17:52: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: char.lowercased()) {
                                                   ^

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
    let vowels = "aeiou"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for char in message {
        if let index = letters.firstIndex(of: char.lowercased()) {
            let newIndex = index + 2
            if newIndex > letters.count - 1 {
                encodedMessage.append(letters[letters.index(letters.startIndex, offsetBy: newIndex - letters.count)])
            } else {
                encodedMessage.append(letters[letters.index(letters.startIndex, offsetBy: newIndex)])
            }
        } else {
            encodedMessage.append(char)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 150 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 65 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwoei_vio.swift:17:55: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
                                                      ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for letter in message {
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
            if vowels.contains(letter.lowercased()) {
                encodedMessage.append(alphabet[alphabet.index(index, offsetBy: 2)])
            } else {
                encodedMessage.append(alphabet[index])
            }
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_93_encode, completion 70 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp0wqox0so.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            let newIndex = (index + 2) % alphabet.count
            let newChar = alphabet[newIndex]
            encoded.append(vowels.contains(char.lowercased()) ? newChar : newChar.uppercased())
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



// ----------- problem HumanEval_27_flip_case, completion 34 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 127 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmptwa036hk.swift:17:52: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: char.lowercased()) {
                                                   ^

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
    var encoded = ""
    let vowels = "aeiou"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    for char in message {
        if let index = letters.firstIndex(of: char.lowercased()) {
            let newIndex = index + 2
            let newChar = letters[newIndex % letters.count]
            encoded.append(vowels.contains(char.lowercased()) ? newChar : newChar.uppercased())
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



// ----------- problem HumanEval_27_flip_case, completion 1 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 94 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpdxrf4epl.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            let newIndex = index + 2
            if newIndex > alphabet.count - 1 {
                encoded.append(alphabet[newIndex - alphabet.count])
            } else {
                encoded.append(alphabet[newIndex])
            }
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



// ----------- problem HumanEval_27_flip_case, completion 107 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 59 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpd1dl18y7.swift:18:42: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
            let index = vowels.index(of: charLower)!
                                         ^

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
    var encoded = ""
    let vowels = "aeiou"
    for char in message {
        let charLower = char.lowercased()
        if vowels.contains(charLower) {
            let index = vowels.index(of: charLower)!
            let nextIndex = (index + 2) % 5
            encoded.append(vowels[nextIndex].uppercased())
        } else {
            encoded.append(char.uppercased())
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



// ----------- problem HumanEval_93_encode, completion 23 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpf_s5tcnw.swift:17:55: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
                                                      ^

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
    var encodedMessage = ""
    let vowels = ["a", "e", "i", "o", "u"]
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    for letter in message {
        if let index = alphabet.firstIndex(of: letter.lowercased()) {
            if vowels.contains(letter.lowercased()) {
                encodedMessage.append(alphabet[alphabet.index(index, offsetBy: 2)])
            } else {
                encodedMessage.append(alphabet[index].uppercased())
            }
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_93_encode, completion 43 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3a5x451f.swift:17:53: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = alphabet.firstIndex(of: char.lowercased()) {
                                                    ^

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
    var encodedMessage = ""
    let vowels = ["a", "e", "i", "o", "u"]
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    for char in message {
        if let index = alphabet.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                if index + 2 > alphabet.count - 1 {
                    encodedMessage.append(alphabet[alphabet.index(index, offsetBy: 2 - alphabet.count)])
                } else {
                    encodedMessage.append(alphabet[alphabet.index(index, offsetBy: 2)])
                }
            } else {
                encodedMessage.append(alphabet[index].uppercased())
            }
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 168 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpo4_7lqjo.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 21 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpo4_7lqjo.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_78_hex_key, completion 128 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpq39j_cyq.swift:25:41: error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'String'
    return num.filter { primes.contains($0) }.count
                                        ^

*/
/* stdout = 

*/


/// You have been tasked to write a function that receives 
/// a hexadecimal number as a string and counts the number of hexadecimal 
/// digits that are primes (prime number, or a prime, is a natural number 
/// greater than 1 that is not a product of two smaller natural numbers).
/// Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
/// Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
/// So you have to determine a number of the following digits: 2, 3, 5, 7, 
/// B (=decimal 11), D (=decimal 13).
/// Note: you may assume the input is always correct or empty string, 
/// and symbols A,B,C,D,E,F are always uppercase.
/// Examples:
/// >>> hex_key(num: "AB")
/// 1
/// >>> hex_key(num: "1077E")
/// 2
/// >>> hex_key(num: "ABED1A33")
/// 4
/// >>> hex_key(num: "123456789ABCDEF0")
/// 6
/// >>> hex_key(num: "2020")
/// 2
func hex_key(num: String) -> Int {
    let primes = ["2", "3", "5", "7", "B", "D"]
    return num.filter { primes.contains($0) }.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(hex_key(num: "AB") == 1)
assert(hex_key(num: "1077E") == 2)
assert(hex_key(num: "ABED1A33") == 4)
assert(hex_key(num: "2020") == 2)
assert(hex_key(num: "123456789ABCDEF0") == 6)
assert(hex_key(num: "112233445566778899AABBCCDDEEFF00") == 12)



// ----------- problem HumanEval_27_flip_case, completion 9 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 7 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 46 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 60 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmping7nz6r.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map {
           ~~~~~~~^~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map {
        if $0.isLowercase {
            return $0.uppercased()
        } else {
            return $0.lowercased()
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
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 11 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 50 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp5vszpgwa.swift:18:59: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
            if let index = alphabet.firstIndex(of: letter.lowercased()) {
                                                          ^

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
    var encodedMessage = ""
    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    for letter in message {
        if letter.isLetter {
            if let index = alphabet.firstIndex(of: letter.lowercased()) {
                if vowels.contains(letter.lowercased()) {
                    let nextIndex = alphabet.index(index, offsetBy: 2)
                    encodedMessage.append(alphabet[nextIndex].uppercased())
                } else {
                    encodedMessage.append(alphabet[index].uppercased())
                }
            }
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 29 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 93 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



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



// ----------- problem HumanEval_27_flip_case, completion 26 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_78_hex_key, completion 33 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6f0psfkj.swift:25:44: error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'String'
    return num.filter { hexPrimes.contains($0) }.count
                                           ^

*/
/* stdout = 

*/


/// You have been tasked to write a function that receives 
/// a hexadecimal number as a string and counts the number of hexadecimal 
/// digits that are primes (prime number, or a prime, is a natural number 
/// greater than 1 that is not a product of two smaller natural numbers).
/// Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
/// Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
/// So you have to determine a number of the following digits: 2, 3, 5, 7, 
/// B (=decimal 11), D (=decimal 13).
/// Note: you may assume the input is always correct or empty string, 
/// and symbols A,B,C,D,E,F are always uppercase.
/// Examples:
/// >>> hex_key(num: "AB")
/// 1
/// >>> hex_key(num: "1077E")
/// 2
/// >>> hex_key(num: "ABED1A33")
/// 4
/// >>> hex_key(num: "123456789ABCDEF0")
/// 6
/// >>> hex_key(num: "2020")
/// 2
func hex_key(num: String) -> Int {
    let hexPrimes = ["2", "3", "5", "7", "B", "D"]
    return num.filter { hexPrimes.contains($0) }.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(hex_key(num: "AB") == 1)
assert(hex_key(num: "1077E") == 2)
assert(hex_key(num: "ABED1A33") == 4)
assert(hex_key(num: "2020") == 2)
assert(hex_key(num: "123456789ABCDEF0") == 6)
assert(hex_key(num: "112233445566778899AABBCCDDEEFF00") == 12)



// ----------- problem HumanEval_93_encode, completion 141 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpmxv2s6mq.swift:17:52: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
        if let index = letters.firstIndex(of: char.lowercased()) {
                                                   ^

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
    let vowels = "aeiou"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var encodedMessage = ""
    for char in message {
        if let index = letters.firstIndex(of: char.lowercased()) {
            if vowels.contains(char.lowercased()) {
                let newIndex = index + 2
                encodedMessage.append(letters[newIndex % letters.count])
            } else {
                encodedMessage.append(letters[index].uppercased())
            }
        } else {
            encodedMessage.append(char)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 37 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_17_parse_music, completion 25 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpqs3wcyrc.swift:17:14: error: expression pattern of type 'String' cannot match values of type 'Character'
        case "o|":
             ^~~~
/tmp/tmpqs3wcyrc.swift:19:14: error: expression pattern of type 'String' cannot match values of type 'Character'
        case ".|":
             ^~~~

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
    for char in music_string {
        switch char {
        case "o":
            beats.append(4)
        case "o|":
            beats.append(2)
        case ".|":
            beats.append(1)
        default:
            continue
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



// ----------- problem HumanEval_130_tri, completion 44 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpeqg34tul.swift:25:52: error: cannot convert return expression of type 'Array<Int>' to return type 'Int'
            return tri(n: $0 - 1) + tri(n: $0 - 2) + tri(n: $0 - 3)
                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
/// the last couple centuries. However, what people don't know is Tribonacci sequence.
/// Tribonacci sequence is defined by the recurrence:
/// tri(1) = 3
/// tri(n) = 1 + n / 2, if n is even.
/// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
/// For example:
/// tri(2) = 1 + (2 / 2) = 2
/// tri(4) = 3
/// tri(3) = tri(2) + tri(1) + tri(4)
/// = 2 + 3 + 3 = 8 
/// You are given a non-negative integer number n, you have to a return an array of the 
/// first n + 1 numbers of the Tribonacci sequence.
/// Examples:
/// >>> tri(n: 3)
/// [1, 3, 2, 8]
func tri(n: Int) -> [Int] {
    return [Int](0...n).map {
        switch $0 {
        case 0: return 1
        case 1: return 3
        case 2: return 2
        default:
            return tri(n: $0 - 1) + tri(n: $0 - 2) + tri(n: $0 - 3)
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
            
assert(tri(n: 3) == [1, 3, 2, 8])
assert(tri(n: 4) == [1, 3, 2, 8, 3])
assert(tri(n: 5) == [1, 3, 2, 8, 3, 15])
assert(tri(n: 6) == [1, 3, 2, 8, 3, 15, 4])
assert(tri(n: 7) == [1, 3, 2, 8, 3, 15, 4, 24])
assert(tri(n: 8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
assert(tri(n: 9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
assert(tri(n: 20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
assert(tri(n: 0) == [1])
assert(tri(n: 1) == [1, 3])



// ----------- problem HumanEval_17_parse_music, completion 69 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpf7ewcezh.swift:17:14: error: expression pattern of type 'String' cannot match values of type 'Character'
        case "o|":
             ^~~~
/tmp/tmpf7ewcezh.swift:19:14: error: expression pattern of type 'String' cannot match values of type 'Character'
        case ".|":
             ^~~~

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
    for char in music_string {
        switch char {
        case "o":
            beats.append(4)
        case "o|":
            beats.append(2)
        case ".|":
            beats.append(1)
        default:
            break
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



// ----------- problem HumanEval_27_flip_case, completion 170 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 92 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 165 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpj0g53ty1.swift:16:37: error: incorrect argument label in call (have 'char:', expected 'message:')
            encodedMessage += encode(char: char)
                                    ^~~~~
                                     message
/tmp/tmpj0g53ty1.swift:16:44: error: cannot convert value of type 'Character' to expected argument type 'String'
            encodedMessage += encode(char: char)
                                           ^

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
    var encodedMessage = ""
    for char in message {
        if char.isLetter {
            encodedMessage += encode(char: char)
        } else {
            encodedMessage += String(char)
        }
    }
    return encodedMessage
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_27_flip_case, completion 138 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 70 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 53 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 171 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpa879whc8.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { char in
           ~~~~~~~^~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { char in
        if char.isUppercase {
            return char.lowercased()
        } else {
            return char.uppercased()
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
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_27_flip_case, completion 149 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6hcw1kte.swift:6:19: error: cannot convert return expression of type '[String]' to return type 'String'
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    return string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")



// ----------- problem HumanEval_93_encode, completion 187 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp48r5rqlo.swift:18:54: error: cannot convert value of type 'String' to expected argument type 'String.Element' (aka 'Character')
            let index = alphabet.firstIndex(of: char.lowercased())!
                                                     ^

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
    let vowels = "aeiou"
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encoded = ""
    for char in message {
        if char.isLetter {
            let index = alphabet.firstIndex(of: char.lowercased())!
            let newIndex = alphabet.index(index, offsetBy: 2)
            if vowels.contains(char.lowercased()) {
                encoded.append(alphabet[newIndex])
            } else {
                encoded.append(alphabet[index])
            }
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



