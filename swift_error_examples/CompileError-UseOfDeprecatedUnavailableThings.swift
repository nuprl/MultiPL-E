// ----------- problem HumanEval_12_longest, completion 48 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmptfqh6bcv.swift:13:37: error: 'characters' is unavailable: Please use String directly
        if longest == nil || string.characters.count > longest!.characters.count {
                                    ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmptfqh6bcv.swift:13:65: error: 'characters' is unavailable: Please use String directly
        if longest == nil || string.characters.count > longest!.characters.count {
                                                                ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Out of array of strings, return the longest one. Return the first one in case of multiple
/// strings of the same length. Return nil in case the input array is empty.
/// >>> longest(strings: [] as [String])
/// nil
/// >>> longest(strings: ["a", "b", "c"])
/// "a"
/// >>> longest(strings: ["a", "bb", "ccc"])
/// "ccc"
func longest(strings: [String]) -> String? {
    var longest: String? = nil
    for string in strings {
        if longest == nil || string.characters.count > longest!.characters.count {
            longest = string
        }
    }
    return longest
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(longest(strings: [] as [String]) == nil)
assert(longest(strings: ["x", "y", "z"]) == "x")
assert(longest(strings: ["x", "yyy", "zzzz", "www", "kkkk", "abc"]) == "zzzz")



// ----------- problem HumanEval_12_longest, completion 90 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpjcf92fzs.swift:14:19: error: 'characters' is unavailable: Please use String directly
        if string.characters.count > longestLength {
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpjcf92fzs.swift:16:36: error: 'characters' is unavailable: Please use String directly
            longestLength = string.characters.count
                                   ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Out of array of strings, return the longest one. Return the first one in case of multiple
/// strings of the same length. Return nil in case the input array is empty.
/// >>> longest(strings: [] as [String])
/// nil
/// >>> longest(strings: ["a", "b", "c"])
/// "a"
/// >>> longest(strings: ["a", "bb", "ccc"])
/// "ccc"
func longest(strings: [String]) -> String? {
    var longest: String? = nil
    var longestLength = 0
    for string in strings {
        if string.characters.count > longestLength {
            longest = string
            longestLength = string.characters.count
        }
    }
    return longest
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(longest(strings: [] as [String]) == nil)
assert(longest(strings: ["x", "y", "z"]) == "x")
assert(longest(strings: ["x", "yyy", "zzzz", "www", "kkkk", "abc"]) == "zzzz")



// ----------- problem HumanEval_12_longest, completion 116 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpj2f793ff.swift:13:43: error: 'characters' is unavailable: Please use String directly
        if longestString == nil || string.characters.count > longestString!.characters.count {
                                          ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpj2f793ff.swift:13:77: error: 'characters' is unavailable: Please use String directly
        if longestString == nil || string.characters.count > longestString!.characters.count {
                                                                            ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Out of array of strings, return the longest one. Return the first one in case of multiple
/// strings of the same length. Return nil in case the input array is empty.
/// >>> longest(strings: [] as [String])
/// nil
/// >>> longest(strings: ["a", "b", "c"])
/// "a"
/// >>> longest(strings: ["a", "bb", "ccc"])
/// "ccc"
func longest(strings: [String]) -> String? {
    var longestString: String?
    for string in strings {
        if longestString == nil || string.characters.count > longestString!.characters.count {
            longestString = string
        }
    }
    return longestString
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(longest(strings: [] as [String]) == nil)
assert(longest(strings: ["x", "y", "z"]) == "x")
assert(longest(strings: ["x", "yyy", "zzzz", "www", "kkkk", "abc"]) == "zzzz")



// ----------- problem HumanEval_23_strlen, completion 6 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_11_string_xor, completion 50 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp06andbm0.swift:8:28: error: 'characters' is unavailable: Please use String directly
    for (index, char) in a.characters.enumerated() {
                           ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp06andbm0.swift:10:17: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        let b = b[index] == "0" ? false : true
                ^~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    var result = ""
    for (index, char) in a.characters.enumerated() {
        let a = char == "0" ? false : true
        let b = b[index] == "0" ? false : true
        result += a != b ? "1" : "0"
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_10_make_palindrome, completion 37 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3rb1bw1l.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp3rb1bw1l.swift:21:33: error: cannot find 'palindrome_length_at_index' in scope
        let palindrome_length = palindrome_length_at_index(string: string, index: i)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~

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
    for i in 0..<string_length {
        let palindrome_length = palindrome_length_at_index(string: string, index: i)
        if palindrome_length > longest_palindrome_length {
            longest_palindrome_length = palindrome_length
            longest_palindrome_index = i
        }
    }
    let prefix_length = string_length - longest_palindrome_length
    let prefix = string[string.startIndex..<string.index(string.startIndex, offsetBy: prefix_length)]
    let reversed_prefix = String(prefix.reversed())
    return string.map { String($0) }.joined() + reversed_prefix
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_23_strlen, completion 180 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_23_strlen, completion 167 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_23_strlen, completion 41 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_54_same_chars, completion 126 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3s7m4877.swift:16:29: error: 'characters' is unavailable: Please use String directly
    var s0_chars = Array(s0.characters)
                            ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp3s7m4877.swift:17:29: error: 'characters' is unavailable: Please use String directly
    var s1_chars = Array(s1.characters)
                            ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp3s7m4877.swift:18:14: error: value of type '[String.Element]' (aka 'Array<Character>') has no member 'sortInPlace'
    s0_chars.sortInPlace()
    ~~~~~~~~ ^~~~~~~~~~~
/tmp/tmp3s7m4877.swift:19:14: error: value of type '[String.Element]' (aka 'Array<Character>') has no member 'sortInPlace'
    s1_chars.sortInPlace()
    ~~~~~~~~ ^~~~~~~~~~~

*/
/* stdout = 

*/


/// Check if two words have the same characters.
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc")
/// true
/// >>> same_chars(s0: "abcd", s1: "dddddddabc")
/// true
/// >>> same_chars(s0: "dddddddabc", s1: "abcd")
/// true
/// >>> same_chars(s0: "eabcd", s1: "dddddddabc")
/// false
/// >>> same_chars(s0: "abcd", s1: "dddddddabce")
/// false
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc")
/// false
func same_chars(s0: String, s1: String) -> Bool {
    var s0_chars = Array(s0.characters)
    var s1_chars = Array(s1.characters)
    s0_chars.sortInPlace()
    s1_chars.sortInPlace()
    return s0_chars == s1_chars
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc") == true)
assert(same_chars(s0: "abcd", s1: "dddddddabc") == true)
assert(same_chars(s0: "dddddddabc", s1: "abcd") == true)
assert(same_chars(s0: "eabcd", s1: "dddddddabc") == false)
assert(same_chars(s0: "abcd", s1: "dddddddabcf") == false)
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc") == false)
assert(same_chars(s0: "aabb", s1: "aaccc") == false)



// ----------- problem HumanEval_23_strlen, completion 99 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_54_same_chars, completion 138 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp5hmlbelx.swift:16:23: error: 'characters' is unavailable: Please use String directly
    var s0_chars = s0.characters.sorted()
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp5hmlbelx.swift:17:23: error: 'characters' is unavailable: Please use String directly
    var s1_chars = s1.characters.sorted()
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp5hmlbelx.swift:16:9: warning: variable 's0_chars' was never mutated; consider changing to 'let' constant
    var s0_chars = s0.characters.sorted()
    ~~~ ^
    let
/tmp/tmp5hmlbelx.swift:17:9: warning: variable 's1_chars' was never mutated; consider changing to 'let' constant
    var s1_chars = s1.characters.sorted()
    ~~~ ^
    let

*/
/* stdout = 

*/


/// Check if two words have the same characters.
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc")
/// true
/// >>> same_chars(s0: "abcd", s1: "dddddddabc")
/// true
/// >>> same_chars(s0: "dddddddabc", s1: "abcd")
/// true
/// >>> same_chars(s0: "eabcd", s1: "dddddddabc")
/// false
/// >>> same_chars(s0: "abcd", s1: "dddddddabce")
/// false
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc")
/// false
func same_chars(s0: String, s1: String) -> Bool {
    var s0_chars = s0.characters.sorted()
    var s1_chars = s1.characters.sorted()
    return s0_chars == s1_chars
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc") == true)
assert(same_chars(s0: "abcd", s1: "dddddddabc") == true)
assert(same_chars(s0: "dddddddabc", s1: "abcd") == true)
assert(same_chars(s0: "eabcd", s1: "dddddddabc") == false)
assert(same_chars(s0: "abcd", s1: "dddddddabcf") == false)
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc") == false)
assert(same_chars(s0: "aabb", s1: "aaccc") == false)



// ----------- problem HumanEval_10_make_palindrome, completion 119 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6a7eexwy.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters.map { String($0) }
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp6a7eexwy.swift:15:18: error: cannot find 'longest_common_suffix' in scope
    let suffix = longest_common_suffix(string, reversed)
                 ^~~~~~~~~~~~~~~~~~~~~

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
    let suffix = longest_common_suffix(string, reversed)
    let prefix = string.prefix(string.count - suffix.count)
    return string.joined() + prefix.reversed().joined()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_10_make_palindrome, completion 175 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpmd49otdt.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpmd49otdt.swift:21:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if string[left] == string[right] {
           ^~~~~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpmd49otdt.swift:21:28: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if string[left] == string[right] {
                           ^~~~~~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpmd49otdt.swift:31:18: error: 'subscript(_:)' is unavailable: cannot subscript String with an integer range, use a String.Index range instead.
    let prefix = string[0..<palindrome_end]
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~
Swift.String:5:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript<R>(bounds: R) -> String where R : RangeExpression, R.Bound == Int { get }
           ^
/tmp/tmpmd49otdt.swift:33:18: error: 'subscript(_:)' is unavailable: cannot subscript String with an integer range, use a String.Index range instead.
    let suffix = string[palindrome_end..<string_length]
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Swift.String:5:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript<R>(bounds: R) -> String where R : RangeExpression, R.Bound == Int { get }
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
    let string_length_half = string_length / 2
    var longest_palindrome_length = 0
    var longest_palindrome_start = 0
    for i in 0..<string_length_half {
        let left = i
        let right = string_length - 1 - i
        if string[left] == string[right] {
            if right - left + 1 > longest_palindrome_length {
                longest_palindrome_length = right - left + 1
                longest_palindrome_start = left
            }
        } else {
            break
        }
    }
    let palindrome_end = longest_palindrome_start + longest_palindrome_length
    let prefix = string[0..<palindrome_end]
    let reversed_prefix = prefix.reversed()
    let suffix = string[palindrome_end..<string_length]
    return String(prefix + reversed_prefix + suffix)
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_155_even_odd_count, completion 156 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpz6lxxp7u.swift:11:30: error: 'characters' is unavailable: Please use String directly
    for digit in String(num).characters {
                             ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Given an integer. return a tuple that has the number of even and odd digits respectively.
/// Example:
/// >>> even_odd_count(num: -12)
/// (1, 1)
/// >>> even_odd_count(num: 123)
/// (1, 2)
func even_odd_count(num: Int) -> (Int, Int) {
    var even = 0
    var odd = 0
    for digit in String(num).characters {
        if Int(String(digit))! % 2 == 0 {
            even += 1
        } else {
            odd += 1
        }
    }
    return (even, odd)
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(even_odd_count(num: 7) == (0, 1))
assert(even_odd_count(num: -78) == (1, 1))
assert(even_odd_count(num: 3452) == (2, 2))
assert(even_odd_count(num: 346211) == (3, 3))
assert(even_odd_count(num: -345821) == (3, 3))
assert(even_odd_count(num: -2) == (1, 0))
assert(even_odd_count(num: -45347) == (2, 3))
assert(even_odd_count(num: 0) == (1, 0))



// ----------- problem HumanEval_111_histogram, completion 104 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpj_6pedqz.swift:19:22: error: 'characters' is unavailable: Please use String directly
    for char in test.characters {
                     ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Given a string representing a space separated lowercase letters, return a dictionary
/// of the letter with the most repetition and containing the corresponding count.
/// If several letters have the same occurrence, return all of them.
/// Example:
/// >>> histogram(test: "a b c")
/// ["a" : 1, "b" : 1, "c" : 1]
/// >>> histogram(test: "a b b a")
/// ["a" : 2, "b" : 2]
/// >>> histogram(test: "a b c a b")
/// ["a" : 2, "b" : 2]
/// >>> histogram(test: "b b b b a")
/// ["b" : 4]
/// >>> histogram(test: "")
/// [:] as [String : Int]
func histogram(test: String) -> [String : Int] {
    var dict = [String : Int]()
    var max = 0
    for char in test.characters {
        if char != " " {
            if let count = dict[String(char)] {
                dict[String(char)] = count + 1
                if count + 1 > max {
                    max = count + 1
                }
            } else {
                dict[String(char)] = 1
                if 1 > max {
                    max = 1
                }
            }
        }
    }
    var result = [String : Int]()
    for (key, value) in dict {
        if value == max {
            result[key] = value
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(histogram(test: "a b b a") == ["a" : 2, "b" : 2])
assert(histogram(test: "a b c a b") == ["a" : 2, "b" : 2])
assert(histogram(test: "a b c d g") == ["a" : 1, "b" : 1, "c" : 1, "d" : 1, "g" : 1])
assert(histogram(test: "r t g") == ["r" : 1, "t" : 1, "g" : 1])
assert(histogram(test: "b b b b a") == ["b" : 4])
assert(histogram(test: "r t g") == ["r" : 1, "t" : 1, "g" : 1])
assert(histogram(test: "") == [:] as [String : Int])
assert(histogram(test: "a") == ["a" : 1])



// ----------- problem HumanEval_158_find_max, completion 24 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ql4c2f6.swift:16:37: error: 'characters' is unavailable: Please use String directly
        let unique_chars = Set(word.characters)
                                    ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Write a function that accepts an array of strings.
/// The array contains different words. Return the word with maximum number
/// of unique characters. If multiple strings have maximum number of unique
/// characters, return the one which comes first in lexicographical order.
/// >>> find_max(words: ["name", "of", "string"])
/// "string"
/// >>> find_max(words: ["name", "enam", "game"])
/// "enam"
/// >>> find_max(words: ["aaaaaaa", "bb", "cc"])
/// "aaaaaaa"
func find_max(words: [String]) -> String {
    var max_word = ""
    var max_count = 0
    for word in words {
        let unique_chars = Set(word.characters)
        if unique_chars.count > max_count {
            max_count = unique_chars.count
            max_word = word
        }
    }
    return max_word
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(find_max(words: ["name", "of", "string"]) == "string")
assert(find_max(words: ["name", "enam", "game"]) == "enam")
assert(find_max(words: ["aaaaaaa", "bb", "cc"]) == "aaaaaaa")
assert(find_max(words: ["abc", "cba"]) == "abc")
assert(find_max(words: ["play", "this", "game", "of", "footbott"]) == "footbott")
assert(find_max(words: ["we", "are", "gonna", "rock"]) == "gonna")
assert(find_max(words: ["we", "are", "a", "mad", "nation"]) == "nation")
assert(find_max(words: ["this", "is", "a", "prrk"]) == "this")
assert(find_max(words: ["b"]) == "b")
assert(find_max(words: ["play", "play", "play"]) == "play")



// ----------- problem HumanEval_155_even_odd_count, completion 46 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpz6lxxp7u.swift:11:30: error: 'characters' is unavailable: Please use String directly
    for digit in String(num).characters {
                             ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Given an integer. return a tuple that has the number of even and odd digits respectively.
/// Example:
/// >>> even_odd_count(num: -12)
/// (1, 1)
/// >>> even_odd_count(num: 123)
/// (1, 2)
func even_odd_count(num: Int) -> (Int, Int) {
    var even = 0
    var odd = 0
    for digit in String(num).characters {
        if Int(String(digit))! % 2 == 0 {
            even += 1
        } else {
            odd += 1
        }
    }
    return (even, odd)
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(even_odd_count(num: 7) == (0, 1))
assert(even_odd_count(num: -78) == (1, 1))
assert(even_odd_count(num: 3452) == (2, 2))
assert(even_odd_count(num: 346211) == (3, 3))
assert(even_odd_count(num: -345821) == (3, 3))
assert(even_odd_count(num: -2) == (1, 0))
assert(even_odd_count(num: -45347) == (2, 3))
assert(even_odd_count(num: 0) == (1, 0))



// ----------- problem HumanEval_10_make_palindrome, completion 153 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6abcj9zy.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters.map { String($0) }
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp6abcj9zy.swift:17:34: error: cannot convert value of type 'Int' to expected argument type 'ReversedCollection<[String]>.Index'
        if string[i] == reversed[i] {
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
    var prefix = [String]()
    for i in 0..<string.count {
        if string[i] == reversed[i] {
            prefix.append(string[i])
        } else {
            break
        }
    }
    return string.joined() + prefix.reversed().joined()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_23_strlen, completion 143 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_155_even_odd_count, completion 5 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpz6lxxp7u.swift:11:30: error: 'characters' is unavailable: Please use String directly
    for digit in String(num).characters {
                             ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Given an integer. return a tuple that has the number of even and odd digits respectively.
/// Example:
/// >>> even_odd_count(num: -12)
/// (1, 1)
/// >>> even_odd_count(num: 123)
/// (1, 2)
func even_odd_count(num: Int) -> (Int, Int) {
    var even = 0
    var odd = 0
    for digit in String(num).characters {
        if Int(String(digit))! % 2 == 0 {
            even += 1
        } else {
            odd += 1
        }
    }
    return (even, odd)
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(even_odd_count(num: 7) == (0, 1))
assert(even_odd_count(num: -78) == (1, 1))
assert(even_odd_count(num: 3452) == (2, 2))
assert(even_odd_count(num: 346211) == (3, 3))
assert(even_odd_count(num: -345821) == (3, 3))
assert(even_odd_count(num: -2) == (1, 0))
assert(even_odd_count(num: -45347) == (2, 3))
assert(even_odd_count(num: 0) == (1, 0))



// ----------- problem HumanEval_10_make_palindrome, completion 110 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6pfzl31h.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters.map { String($0) }
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp6pfzl31h.swift:21:36: error: cannot convert value of type 'Int' to expected argument type 'ReversedCollection<[String]>.Index'
        if reversed[i] == reversed[j] {
                                   ^
/tmp/tmp6pfzl31h.swift:21:21: error: cannot convert value of type 'Int' to expected argument type 'ReversedCollection<[String]>.Index'
        if reversed[i] == reversed[j] {
                    ^
/tmp/tmp6pfzl31h.swift:35:34: error: cannot convert value of type 'Int' to expected argument type 'ReversedCollection<[String]>.Index'
        if string[i] == reversed[j] {
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
    let string_length = string.count
    let reversed_length = reversed.count
    var lps = [Int](repeating: 0, count: reversed_length)
    var i = 1
    var j = 0
    while i < reversed_length {
        if reversed[i] == reversed[j] {
            lps[i] = j + 1
            i += 1
            j += 1
        } else if j > 0 {
            j = lps[j - 1]
        } else {
            lps[i] = 0
            i += 1
        }
    }
    i = 0
    j = 0
    while i < string_length {
        if string[i] == reversed[j] {
            i += 1
            j += 1
        } else if j > 0 {
            j = lps[j - 1]
        } else {
            i += 1
        }
    }
    return string.joined() + reversed.suffix(reversed_length - j).joined()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_12_longest, completion 118 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwforl_19.swift:11:29: error: 'characters' is unavailable: Please use String directly
    return strings.max { $0.characters.count < $1.characters.count }
                            ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpwforl_19.swift:11:51: error: 'characters' is unavailable: Please use String directly
    return strings.max { $0.characters.count < $1.characters.count }
                                                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Out of array of strings, return the longest one. Return the first one in case of multiple
/// strings of the same length. Return nil in case the input array is empty.
/// >>> longest(strings: [] as [String])
/// nil
/// >>> longest(strings: ["a", "b", "c"])
/// "a"
/// >>> longest(strings: ["a", "bb", "ccc"])
/// "ccc"
func longest(strings: [String]) -> String? {
    return strings.max { $0.characters.count < $1.characters.count }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(longest(strings: [] as [String]) == nil)
assert(longest(strings: ["x", "y", "z"]) == "x")
assert(longest(strings: ["x", "yyy", "zzzz", "www", "kkkk", "abc"]) == "zzzz")



// ----------- problem HumanEval_11_string_xor, completion 180 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp8ad6m02k.swift:8:28: error: 'characters' is unavailable: Please use String directly
    for (index, char) in a.characters.enumerated() {
                           ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    var result = ""
    for (index, char) in a.characters.enumerated() {
        let a = Int(String(char))!
        let b = Int(String(b[b.index(b.startIndex, offsetBy: index)]))!
        result += String(a ^ b)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_16_count_distinct_characters, completion 92 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp2w2er2j9.swift:8:42: error: 'characters' is unavailable: Please use String directly
    let characters = string.lowercased().characters
                                         ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Given a string, find out how many distinct characters (regardless of case) does it consist of
/// >>> count_distinct_characters(string: "xyzXYZ")
/// 3
/// >>> count_distinct_characters(string: "Jerry")
/// 4
func count_distinct_characters(string: String) -> Int {
    let characters = string.lowercased().characters
    var uniqueCharacters = Set<Character>()
    for character in characters {
        uniqueCharacters.insert(character)
    }
    return uniqueCharacters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(count_distinct_characters(string: "") == 0)
assert(count_distinct_characters(string: "abcde") == 5)
assert(count_distinct_characters(string: "abcdecadeCADE") == 5)
assert(count_distinct_characters(string: "aaaaAAAAaaaa") == 1)
assert(count_distinct_characters(string: "Jerry jERRY JeRRRY") == 5)



// ----------- problem HumanEval_118_get_closest_vowel, completion 182 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpxsjfq0ya.swift:25:22: error: 'characters' is unavailable: Please use String directly
    for char in word.characters {
                     ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpxsjfq0ya.swift:26:19: error: value of type 'String' has no member 'containsString'
        if vowels.containsString(String(char)) {
           ~~~~~~ ^~~~~~~~~~~~~~
/tmp/tmpxsjfq0ya.swift:30:23: error: value of type 'String' has no member 'containsString'
        if consonants.containsString(String(char)) {
           ~~~~~~~~~~ ^~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = "aeiouAEIOU"
    let consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    var result = ""
    var index = 0
    var vowel_index = 0
    var consonant_index = 0
    var vowel_found = false
    var consonant_found = false
    for char in word.characters {
        if vowels.containsString(String(char)) {
            vowel_found = true
            vowel_index = index
        }
        if consonants.containsString(String(char)) {
            consonant_found = true
            consonant_index = index
        }
        if vowel_found && consonant_found {
            if vowel_index > consonant_index {
                result = String(char)
            }
            vowel_found = false
            consonant_found = false
        }
        index += 1
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_23_strlen, completion 1 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_23_strlen, completion 193 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_23_strlen, completion 10 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_11_string_xor, completion 70 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp8ad6m02k.swift:8:28: error: 'characters' is unavailable: Please use String directly
    for (index, char) in a.characters.enumerated() {
                           ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    var result = ""
    for (index, char) in a.characters.enumerated() {
        let a = Int(String(char))!
        let b = Int(String(b[b.index(b.startIndex, offsetBy: index)]))!
        result += String(a ^ b)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_11_string_xor, completion 94 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp06andbm0.swift:8:28: error: 'characters' is unavailable: Please use String directly
    for (index, char) in a.characters.enumerated() {
                           ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp06andbm0.swift:10:17: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        let b = b[index] == "0" ? false : true
                ^~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    var result = ""
    for (index, char) in a.characters.enumerated() {
        let a = char == "0" ? false : true
        let b = b[index] == "0" ? false : true
        result += a != b ? "1" : "0"
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_54_same_chars, completion 20 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpchk9q9wc.swift:16:23: error: 'characters' is unavailable: Please use String directly
    var s0_chars = s0.characters.map { String($0) }
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpchk9q9wc.swift:17:23: error: 'characters' is unavailable: Please use String directly
    var s1_chars = s1.characters.map { String($0) }
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpchk9q9wc.swift:19:29: warning: 'index(of:)' is deprecated: renamed to 'firstIndex(of:)'
        if let i = s1_chars.index(of: c) {
                            ^
/tmp/tmpchk9q9wc.swift:19:29: note: use 'firstIndex(of:)' instead
        if let i = s1_chars.index(of: c) {
                            ^~~~~
                            firstIndex
/tmp/tmpchk9q9wc.swift:16:9: warning: variable 's0_chars' was never mutated; consider changing to 'let' constant
    var s0_chars = s0.characters.map { String($0) }
    ~~~ ^
    let

*/
/* stdout = 

*/


/// Check if two words have the same characters.
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc")
/// true
/// >>> same_chars(s0: "abcd", s1: "dddddddabc")
/// true
/// >>> same_chars(s0: "dddddddabc", s1: "abcd")
/// true
/// >>> same_chars(s0: "eabcd", s1: "dddddddabc")
/// false
/// >>> same_chars(s0: "abcd", s1: "dddddddabce")
/// false
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc")
/// false
func same_chars(s0: String, s1: String) -> Bool {
    var s0_chars = s0.characters.map { String($0) }
    var s1_chars = s1.characters.map { String($0) }
    for c in s0_chars {
        if let i = s1_chars.index(of: c) {
            s1_chars.remove(at: i)
        } else {
            return false
        }
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc") == true)
assert(same_chars(s0: "abcd", s1: "dddddddabc") == true)
assert(same_chars(s0: "dddddddabc", s1: "abcd") == true)
assert(same_chars(s0: "eabcd", s1: "dddddddabc") == false)
assert(same_chars(s0: "abcd", s1: "dddddddabcf") == false)
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc") == false)
assert(same_chars(s0: "aabb", s1: "aaccc") == false)



// ----------- problem HumanEval_54_same_chars, completion 174 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpchk9q9wc.swift:16:23: error: 'characters' is unavailable: Please use String directly
    var s0_chars = s0.characters.map { String($0) }
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpchk9q9wc.swift:17:23: error: 'characters' is unavailable: Please use String directly
    var s1_chars = s1.characters.map { String($0) }
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpchk9q9wc.swift:19:29: warning: 'index(of:)' is deprecated: renamed to 'firstIndex(of:)'
        if let i = s1_chars.index(of: c) {
                            ^
/tmp/tmpchk9q9wc.swift:19:29: note: use 'firstIndex(of:)' instead
        if let i = s1_chars.index(of: c) {
                            ^~~~~
                            firstIndex
/tmp/tmpchk9q9wc.swift:16:9: warning: variable 's0_chars' was never mutated; consider changing to 'let' constant
    var s0_chars = s0.characters.map { String($0) }
    ~~~ ^
    let

*/
/* stdout = 

*/


/// Check if two words have the same characters.
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc")
/// true
/// >>> same_chars(s0: "abcd", s1: "dddddddabc")
/// true
/// >>> same_chars(s0: "dddddddabc", s1: "abcd")
/// true
/// >>> same_chars(s0: "eabcd", s1: "dddddddabc")
/// false
/// >>> same_chars(s0: "abcd", s1: "dddddddabce")
/// false
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc")
/// false
func same_chars(s0: String, s1: String) -> Bool {
    var s0_chars = s0.characters.map { String($0) }
    var s1_chars = s1.characters.map { String($0) }
    for c in s0_chars {
        if let i = s1_chars.index(of: c) {
            s1_chars.remove(at: i)
        } else {
            return false
        }
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc") == true)
assert(same_chars(s0: "abcd", s1: "dddddddabc") == true)
assert(same_chars(s0: "dddddddabc", s1: "abcd") == true)
assert(same_chars(s0: "eabcd", s1: "dddddddabc") == false)
assert(same_chars(s0: "abcd", s1: "dddddddabcf") == false)
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc") == false)
assert(same_chars(s0: "aabb", s1: "aaccc") == false)



// ----------- problem HumanEval_16_count_distinct_characters, completion 104 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpismj3cn0.swift:8:32: error: 'characters' is unavailable: Please use String directly
    return string.lowercased().characters.count
                               ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Given a string, find out how many distinct characters (regardless of case) does it consist of
/// >>> count_distinct_characters(string: "xyzXYZ")
/// 3
/// >>> count_distinct_characters(string: "Jerry")
/// 4
func count_distinct_characters(string: String) -> Int {
    return string.lowercased().characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(count_distinct_characters(string: "") == 0)
assert(count_distinct_characters(string: "abcde") == 5)
assert(count_distinct_characters(string: "abcdecadeCADE") == 5)
assert(count_distinct_characters(string: "aaaaAAAAaaaa") == 1)
assert(count_distinct_characters(string: "Jerry jERRY JeRRRY") == 5)



// ----------- problem HumanEval_10_make_palindrome, completion 75 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmprrjbng2m.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters.map { String($0) }
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmprrjbng2m.swift:21:33: error: cannot find 'expand_palindrome' in scope
        let palindrome_length = expand_palindrome(string: string, center: center, right: center)
                                ^~~~~~~~~~~~~~~~~
/tmp/tmprrjbng2m.swift:26:38: error: cannot find 'expand_palindrome' in scope
        let palindrome_length_even = expand_palindrome(string: string, center: center, right: center + 1)
                                     ^~~~~~~~~~~~~~~~~
/tmp/tmprrjbng2m.swift:37:41: error: cannot convert return expression of type 'ArraySlice<String>' to return type 'String'
    return prefix_reversed + palindrome + prefix
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~

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
    let string_length = string.count
    if string_length == 0 {
        return ""
    }
    var longest_palindrome_length = 1
    var longest_palindrome_center = 0
    for center in 0..<string_length {
        let palindrome_length = expand_palindrome(string: string, center: center, right: center)
        if palindrome_length > longest_palindrome_length {
            longest_palindrome_length = palindrome_length
            longest_palindrome_center = center
        }
        let palindrome_length_even = expand_palindrome(string: string, center: center, right: center + 1)
        if palindrome_length_even > longest_palindrome_length {
            longest_palindrome_length = palindrome_length_even
            longest_palindrome_center = center
        }
    }
    let palindrome_start = longest_palindrome_center - (longest_palindrome_length - 1) / 2
    let palindrome_end = longest_palindrome_center + longest_palindrome_length / 2
    let palindrome = string[palindrome_start..<palindrome_end]
    let prefix = string[0..<palindrome_start]
    let prefix_reversed = prefix.reversed()
    return prefix_reversed + palindrome + prefix
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_54_same_chars, completion 195 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpjq_9cbab.swift:16:23: error: 'characters' is unavailable: Please use String directly
    var s0_chars = s0.characters.map { String($0) }
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpjq_9cbab.swift:17:23: error: 'characters' is unavailable: Please use String directly
    var s1_chars = s1.characters.map { String($0) }
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpjq_9cbab.swift:18:14: error: value of type '[String]' has no member 'sortInPlace'
    s0_chars.sortInPlace()
    ~~~~~~~~ ^~~~~~~~~~~
/tmp/tmpjq_9cbab.swift:19:14: error: value of type '[String]' has no member 'sortInPlace'
    s1_chars.sortInPlace()
    ~~~~~~~~ ^~~~~~~~~~~

*/
/* stdout = 

*/


/// Check if two words have the same characters.
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc")
/// true
/// >>> same_chars(s0: "abcd", s1: "dddddddabc")
/// true
/// >>> same_chars(s0: "dddddddabc", s1: "abcd")
/// true
/// >>> same_chars(s0: "eabcd", s1: "dddddddabc")
/// false
/// >>> same_chars(s0: "abcd", s1: "dddddddabce")
/// false
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc")
/// false
func same_chars(s0: String, s1: String) -> Bool {
    var s0_chars = s0.characters.map { String($0) }
    var s1_chars = s1.characters.map { String($0) }
    s0_chars.sortInPlace()
    s1_chars.sortInPlace()
    return s0_chars == s1_chars
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc") == true)
assert(same_chars(s0: "abcd", s1: "dddddddabc") == true)
assert(same_chars(s0: "dddddddabc", s1: "abcd") == true)
assert(same_chars(s0: "eabcd", s1: "dddddddabc") == false)
assert(same_chars(s0: "abcd", s1: "dddddddabcf") == false)
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc") == false)
assert(same_chars(s0: "aabb", s1: "aaccc") == false)



// ----------- problem HumanEval_118_get_closest_vowel, completion 87 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpye3w1zlv.swift:25:24: error: 'characters' is unavailable: Please use String directly
    for letter in word.characters {
                       ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpye3w1zlv.swift:26:19: error: value of type 'String' has no member 'containsString'
        if vowels.containsString(String(letter)) {
           ~~~~~~ ^~~~~~~~~~~~~~
/tmp/tmpye3w1zlv.swift:30:23: error: value of type 'String' has no member 'containsString'
        if consonants.containsString(String(letter)) {
           ~~~~~~~~~~ ^~~~~~~~~~~~~~
/tmp/tmpye3w1zlv.swift:35:56: error: value of type 'String.Index' has no member 'advancedBy'
            closestVowel = String(word[word.startIndex.advancedBy(vowelIndex)])
                                       ~~~~~~~~~~~~~~~ ^~~~~~~~~~

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = "aeiouAEIOU"
    let consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    var closestVowel = ""
    var index = 0
    var vowelIndex = 0
    var consonantIndex = 0
    var consonantCount = 0
    var vowelCount = 0
    for letter in word.characters {
        if vowels.containsString(String(letter)) {
            vowelCount += 1
            vowelIndex = index
        }
        if consonants.containsString(String(letter)) {
            consonantCount += 1
            consonantIndex = index
        }
        if consonantCount == 2 && vowelCount == 1 {
            closestVowel = String(word[word.startIndex.advancedBy(vowelIndex)])
            break
        }
        index += 1
    }
    return closestVowel
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_111_histogram, completion 113 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpn5bv18fj.swift:19:24: error: 'characters' is unavailable: Please use String directly
    for letter in test.characters {
                       ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Given a string representing a space separated lowercase letters, return a dictionary
/// of the letter with the most repetition and containing the corresponding count.
/// If several letters have the same occurrence, return all of them.
/// Example:
/// >>> histogram(test: "a b c")
/// ["a" : 1, "b" : 1, "c" : 1]
/// >>> histogram(test: "a b b a")
/// ["a" : 2, "b" : 2]
/// >>> histogram(test: "a b c a b")
/// ["a" : 2, "b" : 2]
/// >>> histogram(test: "b b b b a")
/// ["b" : 4]
/// >>> histogram(test: "")
/// [:] as [String : Int]
func histogram(test: String) -> [String : Int] {
    var dict = [String : Int]()
    var max = 0
    for letter in test.characters {
        if let value = dict[String(letter)] {
            dict[String(letter)] = value + 1
            if value + 1 > max {
                max = value + 1
            }
        } else {
            dict[String(letter)] = 1
            if 1 > max {
                max = 1
            }
        }
    }
    var result = [String : Int]()
    for (key, value) in dict {
        if value == max {
            result[key] = value
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(histogram(test: "a b b a") == ["a" : 2, "b" : 2])
assert(histogram(test: "a b c a b") == ["a" : 2, "b" : 2])
assert(histogram(test: "a b c d g") == ["a" : 1, "b" : 1, "c" : 1, "d" : 1, "g" : 1])
assert(histogram(test: "r t g") == ["r" : 1, "t" : 1, "g" : 1])
assert(histogram(test: "b b b b a") == ["b" : 4])
assert(histogram(test: "r t g") == ["r" : 1, "t" : 1, "g" : 1])
assert(histogram(test: "") == [:] as [String : Int])
assert(histogram(test: "a") == ["a" : 1])



// ----------- problem HumanEval_118_get_closest_vowel, completion 60 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpquajqpyc.swift:26:22: error: 'characters' is unavailable: Please use String directly
    for char in word.characters {
                     ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpquajqpyc.swift:29:78: error: cannot convert value of type 'Character' to expected argument type 'String.Index'
            vowelIndex = word.characters.distance(from: word.startIndex, to: char)
                                                                             ^
/tmp/tmpquajqpyc.swift:37:82: error: cannot convert value of type 'Character' to expected argument type 'String.Index'
            consonantIndex = word.characters.distance(from: word.startIndex, to: char)
                                                                                 ^

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = ["a", "e", "i", "o", "u"]
    let consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    var closestVowel = ""
    var closestVowelIndex = 0
    var closestConsonantIndex = 0
    var consonantIndex = 0
    var vowelIndex = 0
    var vowelFound = false
    var consonantFound = false
    for char in word.characters {
        if vowels.contains(String(char).lowercased()) {
            vowelFound = true
            vowelIndex = word.characters.distance(from: word.startIndex, to: char)
            if vowelIndex > closestConsonantIndex {
                closestVowel = String(char)
                closestVowelIndex = vowelIndex
            }
        }
        if consonants.contains(String(char).lowercased()) {
            consonantFound = true
            consonantIndex = word.characters.distance(from: word.startIndex, to: char)
            if consonantIndex > closestVowelIndex {
                closestConsonantIndex = consonantIndex
            }
        }
    }
    if vowelFound && consonantFound {
        return closestVowel
    }
    return ""
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_154_cycpattern_check, completion 149 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpy554urx4.swift:16:15: error: 'characters' is unavailable: Please use String directly
    let a = a.characters.map { String($0) }
              ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpy554urx4.swift:17:15: error: 'characters' is unavailable: Please use String directly
    let b = b.characters.map { String($0) }
              ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// You are given 2 words. You need to return true if the second word or any of its rotations is a substring in the first word
/// >>> cycpattern_check(a: "abcd", b: "abd")
/// false
/// >>> cycpattern_check(a: "hello", b: "ell")
/// true
/// >>> cycpattern_check(a: "whassup", b: "psus")
/// false
/// >>> cycpattern_check(a: "abab", b: "baa")
/// true
/// >>> cycpattern_check(a: "efef", b: "eeff")
/// false
/// >>> cycpattern_check(a: "himenss", b: "simen")
/// true
func cycpattern_check(a: String, b: String) -> Bool {
    let a = a.characters.map { String($0) }
    let b = b.characters.map { String($0) }
    let b_len = b.count
    let a_len = a.count
    var i = 0
    while i < a_len {
        if a[i] == b[0] {
            var j = 0
            while j < b_len {
                if a[(i + j) % a_len] != b[j] {
                    break
                }
                j += 1
            }
            if j == b_len {
                return true
            }
        }
        i += 1
    }
    return false
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(cycpattern_check(a: "xyzw", b: "xyw") == false)
assert(cycpattern_check(a: "yello", b: "ell") == true)
assert(cycpattern_check(a: "whattup", b: "ptut") == false)
assert(cycpattern_check(a: "efef", b: "fee") == true)
assert(cycpattern_check(a: "abab", b: "aabb") == false)
assert(cycpattern_check(a: "winemtt", b: "tinem") == true)



// ----------- problem HumanEval_118_get_closest_vowel, completion 136 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpxafrvk_c.swift:22:19: error: 'characters' is unavailable: Please use String directly
    for i in word.characters.reversed() {
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = ["a", "e", "i", "o", "u"]
    let consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    var vowel = ""
    var consonant = ""
    var result = ""
    for i in word.characters.reversed() {
        if vowels.contains(String(i)) {
            vowel = String(i)
        }
        if consonants.contains(String(i)) {
            consonant = String(i)
        }
        if vowel != "" && consonant != "" {
            result = vowel
            break
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_10_make_palindrome, completion 118 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpbstrgllc.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters.map { String($0) }
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpbstrgllc.swift:18:34: error: cannot convert value of type 'Int' to expected argument type 'ReversedCollection<[String]>.Index'
        if string[i] == reversed[i] {
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
    var prefix = [String]()
    var suffix = [String]()
    for i in 0..<string.count {
        if string[i] == reversed[i] {
            prefix.append(string[i])
        } else {
            suffix = Array(string[i..<string.count])
            break
        }
    }
    return prefix.joined() + suffix.joined() + prefix.reversed().joined()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_11_string_xor, completion 67 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp06andbm0.swift:8:28: error: 'characters' is unavailable: Please use String directly
    for (index, char) in a.characters.enumerated() {
                           ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp06andbm0.swift:10:17: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        let b = b[index] == "0" ? false : true
                ^~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    var result = ""
    for (index, char) in a.characters.enumerated() {
        let a = char == "0" ? false : true
        let b = b[index] == "0" ? false : true
        result += a != b ? "1" : "0"
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_23_strlen, completion 55 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_154_cycpattern_check, completion 194 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp26vacmlz.swift:16:15: error: 'characters' is unavailable: Please use String directly
    let a = a.characters
              ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp26vacmlz.swift:17:15: error: 'characters' is unavailable: Please use String directly
    let b = b.characters
              ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp26vacmlz.swift:23:9: warning: initialization of variable 'a_found' was never used; consider replacing with assignment to '_' or removing it
    var a_found = false
    ~~~~^~~~~~~
    _

*/
/* stdout = 

*/


/// You are given 2 words. You need to return true if the second word or any of its rotations is a substring in the first word
/// >>> cycpattern_check(a: "abcd", b: "abd")
/// false
/// >>> cycpattern_check(a: "hello", b: "ell")
/// true
/// >>> cycpattern_check(a: "whassup", b: "psus")
/// false
/// >>> cycpattern_check(a: "abab", b: "baa")
/// true
/// >>> cycpattern_check(a: "efef", b: "eeff")
/// false
/// >>> cycpattern_check(a: "himenss", b: "simen")
/// true
func cycpattern_check(a: String, b: String) -> Bool {
    let a = a.characters
    let b = b.characters
    var b_index = b.startIndex
    var a_index = a.startIndex
    var b_count = 0
    var a_count = 0
    var b_found = false
    var a_found = false
    while a_count < a.count && b_count < b.count {
        if a[a_index] == b[b_index] {
            b_index = b.index(after: b_index)
            b_count += 1
            b_found = true
        } else {
            b_index = b.startIndex
            b_count = 0
            b_found = false
        }
        if b_count == b.count {
            return true
        }
        a_index = a.index(after: a_index)
        a_count += 1
        if a_count == a.count {
            if b_found {
                a_index = a.startIndex
                a_count = 0
            } else {
                return false
            }
        }
    }
    return false
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(cycpattern_check(a: "xyzw", b: "xyw") == false)
assert(cycpattern_check(a: "yello", b: "ell") == true)
assert(cycpattern_check(a: "whattup", b: "ptut") == false)
assert(cycpattern_check(a: "efef", b: "fee") == true)
assert(cycpattern_check(a: "abab", b: "aabb") == false)
assert(cycpattern_check(a: "winemtt", b: "tinem") == true)



// ----------- problem HumanEval_10_make_palindrome, completion 26 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmph9f6t48y.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmph9f6t48y.swift:29:9: error: type annotation missing in pattern
    var palindrome_length_max_index_plus_one_plus_palindrome_length_max_
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
    let string_length_half = string_length / 2
    let string_length_half_plus_one = string_length_half + 1
    var palindrome_length = 0
    var palindrome_length_max = 0
    var palindrome_length_max_index = 0
    var palindrome_length_max_index_plus_one = 0
    var palindrome_length_max_index_plus_one_plus_palindrome_length_max = 0
    var palindrome_length_max_index_plus_one_plus_palindrome_length_max_plus_one = 0
    var palindrome_length_max_index_plus_one_plus_palindrome_length_max_plus_one_minus_one = 0
    var palindrome_length_max_index_plus_one_plus_palindrome_length_max_plus_one_minus_one_minus_palindrome_length_max = 0
    var palindrome_length_max_index_plus_one_plus_palindrome_length_max_plus_one_minus_one_minus_palindrome_length_max_minus_one = 0
    var palindrome_length_max_index_plus_one_plus_palindrome_length_max_plus_one_minus_one_minus_palindrome_length_max_minus_one_minus_one = 0
    var palindrome_length_max_index_plus_one_plus_palindrome_length_max_plus_one_minus_one_minus_palindrome_length_max_minus_one_minus_one_minus_palindrome_length_max = 0
    var palindrome_length_max_index_plus_one_plus_palindrome_length_max_plus_one_minus_one_minus_palindrome_length_max_minus_one_minus_one_minus_palindrome_length_max_minus_one = 0
    var palindrome_length_max_index_plus_one_plus_palindrome_length_max_
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_23_strlen, completion 49 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



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



// ----------- problem HumanEval_10_make_palindrome, completion 14 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp9i1phd_r.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp9i1phd_r.swift:31:9: warning: initialization of immutable value 'suffix' was never used; consider replacing with assignment to '_' or removing it
    let suffix = string[string.index(string.startIndex, offsetBy: j + 1)..<string.index(string.startIndex, offsetBy: length)]
    ~~~~^~~~~~
    _

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
    let length = string.count
    if length == 0 {
        return ""
    }
    var i = 0
    var j = length - 1
    while i < j {
        if string[string.index(string.startIndex, offsetBy: i)] != string[string.index(string.startIndex, offsetBy: j)] {
            break
        }
        i += 1
        j -= 1
    }
    if i >= j {
        return string.map { String($0) }.joined()
    }
    let prefix = string[string.index(string.startIndex, offsetBy: 0)..<string.index(string.startIndex, offsetBy: i)]
    let suffix = string[string.index(string.startIndex, offsetBy: j + 1)..<string.index(string.startIndex, offsetBy: length)]
    let reversed_prefix = String(prefix.reversed())
    return string.map { String($0) }.joined() + reversed_prefix
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_23_strlen, completion 30 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_12_longest, completion 21 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpvz8giihz.swift:16:19: error: 'characters' is unavailable: Please use String directly
        if string.characters.count > longest.characters.count {
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpvz8giihz.swift:16:46: error: 'characters' is unavailable: Please use String directly
        if string.characters.count > longest.characters.count {
                                             ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Out of array of strings, return the longest one. Return the first one in case of multiple
/// strings of the same length. Return nil in case the input array is empty.
/// >>> longest(strings: [] as [String])
/// nil
/// >>> longest(strings: ["a", "b", "c"])
/// "a"
/// >>> longest(strings: ["a", "bb", "ccc"])
/// "ccc"
func longest(strings: [String]) -> String? {
    if strings.isEmpty {
        return nil
    }
    var longest = strings[0]
    for string in strings {
        if string.characters.count > longest.characters.count {
            longest = string
        }
    }
    return longest
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(longest(strings: [] as [String]) == nil)
assert(longest(strings: ["x", "y", "z"]) == "x")
assert(longest(strings: ["x", "yyy", "zzzz", "www", "kkkk", "abc"]) == "zzzz")



// ----------- problem HumanEval_54_same_chars, completion 196 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3a3q8i59.swift:16:23: error: 'characters' is unavailable: Please use String directly
    var s0_chars = s0.characters.map { String($0) }
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp3a3q8i59.swift:17:23: error: 'characters' is unavailable: Please use String directly
    var s1_chars = s1.characters.map { String($0) }
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp3a3q8i59.swift:19:33: warning: 'index(of:)' is deprecated: renamed to 'firstIndex(of:)'
        if let index = s1_chars.index(of: char) {
                                ^
/tmp/tmp3a3q8i59.swift:19:33: note: use 'firstIndex(of:)' instead
        if let index = s1_chars.index(of: char) {
                                ^~~~~
                                firstIndex
/tmp/tmp3a3q8i59.swift:16:9: warning: variable 's0_chars' was never mutated; consider changing to 'let' constant
    var s0_chars = s0.characters.map { String($0) }
    ~~~ ^
    let

*/
/* stdout = 

*/


/// Check if two words have the same characters.
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc")
/// true
/// >>> same_chars(s0: "abcd", s1: "dddddddabc")
/// true
/// >>> same_chars(s0: "dddddddabc", s1: "abcd")
/// true
/// >>> same_chars(s0: "eabcd", s1: "dddddddabc")
/// false
/// >>> same_chars(s0: "abcd", s1: "dddddddabce")
/// false
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc")
/// false
func same_chars(s0: String, s1: String) -> Bool {
    var s0_chars = s0.characters.map { String($0) }
    var s1_chars = s1.characters.map { String($0) }
    for char in s0_chars {
        if let index = s1_chars.index(of: char) {
            s1_chars.remove(at: index)
        } else {
            return false
        }
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc") == true)
assert(same_chars(s0: "abcd", s1: "dddddddabc") == true)
assert(same_chars(s0: "dddddddabc", s1: "abcd") == true)
assert(same_chars(s0: "eabcd", s1: "dddddddabc") == false)
assert(same_chars(s0: "abcd", s1: "dddddddabcf") == false)
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc") == false)
assert(same_chars(s0: "aabb", s1: "aaccc") == false)



// ----------- problem HumanEval_12_longest, completion 78 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpvz8giihz.swift:16:19: error: 'characters' is unavailable: Please use String directly
        if string.characters.count > longest.characters.count {
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpvz8giihz.swift:16:46: error: 'characters' is unavailable: Please use String directly
        if string.characters.count > longest.characters.count {
                                             ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Out of array of strings, return the longest one. Return the first one in case of multiple
/// strings of the same length. Return nil in case the input array is empty.
/// >>> longest(strings: [] as [String])
/// nil
/// >>> longest(strings: ["a", "b", "c"])
/// "a"
/// >>> longest(strings: ["a", "bb", "ccc"])
/// "ccc"
func longest(strings: [String]) -> String? {
    if strings.isEmpty {
        return nil
    }
    var longest = strings[0]
    for string in strings {
        if string.characters.count > longest.characters.count {
            longest = string
        }
    }
    return longest
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(longest(strings: [] as [String]) == nil)
assert(longest(strings: ["x", "y", "z"]) == "x")
assert(longest(strings: ["x", "yyy", "zzzz", "www", "kkkk", "abc"]) == "zzzz")



// ----------- problem HumanEval_118_get_closest_vowel, completion 164 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp7fiab3pl.swift:26:19: error: 'characters' is unavailable: Please use String directly
    for i in word.characters.indices {
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp7fiab3pl.swift:30:31: error: cannot assign value of type 'DefaultIndices<String>.Element' (aka 'String.Index') to type 'Int'
                vowel_index = i
                              ^
/tmp/tmp7fiab3pl.swift:37:35: error: cannot assign value of type 'DefaultIndices<String>.Element' (aka 'String.Index') to type 'Int'
                consonant_index = i
                                  ^
/tmp/tmp7fiab3pl.swift:46:25: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        result = String(word[vowel_index])
                        ^~~~~~~~~~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = ["a", "e", "i", "o", "u"]
    let consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    var result = ""
    var vowel_index = 0
    var consonant_index = 0
    var vowel_count = 0
    var consonant_count = 0
    var vowel_flag = false
    var consonant_flag = false
    for i in word.characters.indices {
        if vowels.contains(String(word[i]).lowercased()) {
            vowel_count += 1
            if vowel_flag == false {
                vowel_index = i
                vowel_flag = true
            }
        }
        if consonants.contains(String(word[i]).lowercased()) {
            consonant_count += 1
            if consonant_flag == false {
                consonant_index = i
                consonant_flag = true
            }
        }
    }
    if vowel_count == 0 || consonant_count == 0 {
        return result
    }
    if vowel_index > consonant_index {
        result = String(word[vowel_index])
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_23_strlen, completion 130 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_118_get_closest_vowel, completion 29 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp_qcee3co.swift:22:22: error: 'characters' is unavailable: Please use String directly
    for char in word.characters {
                     ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp_qcee3co.swift:23:19: error: value of type 'String' has no member 'containsString'
        if vowels.containsString(String(char)) {
           ~~~~~~ ^~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = "aeiouAEIOU"
    var closest_vowel = ""
    var closest_vowel_index = 0
    var closest_vowel_distance = 0
    var index = 0
    for char in word.characters {
        if vowels.containsString(String(char)) {
            if index > closest_vowel_index {
                closest_vowel = String(char)
                closest_vowel_index = index
                closest_vowel_distance = index - closest_vowel_index
            }
        }
        index += 1
    }
    return closest_vowel
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_27_flip_case, completion 102 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpa9ml38k8.swift:6:21: error: cannot find 'CharacterSet' in scope
    let lowercase = CharacterSet.lowercaseLetters
                    ^~~~~~~~~~~~
/tmp/tmpa9ml38k8.swift:7:21: error: cannot find 'CharacterSet' in scope
    let uppercase = CharacterSet.uppercaseLetters
                    ^~~~~~~~~~~~
/tmp/tmpa9ml38k8.swift:9:24: error: 'characters' is unavailable: Please use String directly
    for char in string.characters {
                       ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case(string: "Hello")
/// "hELLO"
func flip_case(string: String) -> String {
    let lowercase = CharacterSet.lowercaseLetters
    let uppercase = CharacterSet.uppercaseLetters
    var newString = ""
    for char in string.characters {
        if lowercase.contains(UnicodeScalar(String(char))!) {
            newString.append(char.uppercased())
        } else if uppercase.contains(UnicodeScalar(String(char))!) {
            newString.append(char.lowercased())
        } else {
            newString.append(char)
        }
    }
    return newString
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_155_even_odd_count, completion 126 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpz6lxxp7u.swift:11:30: error: 'characters' is unavailable: Please use String directly
    for digit in String(num).characters {
                             ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Given an integer. return a tuple that has the number of even and odd digits respectively.
/// Example:
/// >>> even_odd_count(num: -12)
/// (1, 1)
/// >>> even_odd_count(num: 123)
/// (1, 2)
func even_odd_count(num: Int) -> (Int, Int) {
    var even = 0
    var odd = 0
    for digit in String(num).characters {
        if Int(String(digit))! % 2 == 0 {
            even += 1
        } else {
            odd += 1
        }
    }
    return (even, odd)
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(even_odd_count(num: 7) == (0, 1))
assert(even_odd_count(num: -78) == (1, 1))
assert(even_odd_count(num: 3452) == (2, 2))
assert(even_odd_count(num: 346211) == (3, 3))
assert(even_odd_count(num: -345821) == (3, 3))
assert(even_odd_count(num: -2) == (1, 0))
assert(even_odd_count(num: -45347) == (2, 3))
assert(even_odd_count(num: 0) == (1, 0))



// ----------- problem HumanEval_118_get_closest_vowel, completion 33 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpbzumoc81.swift:25:22: error: 'characters' is unavailable: Please use String directly
    for char in word.characters {
                     ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpbzumoc81.swift:26:19: error: value of type 'String' has no member 'containsString'
        if vowels.containsString(String(char)) {
           ~~~~~~ ^~~~~~~~~~~~~~
/tmp/tmpbzumoc81.swift:27:42: error: value of type 'String' has no member 'indexOf'
            vowelIndex = word.characters.indexOf(char)!
                         ~~~~~~~~~~~~~~~ ^~~~~~~
/tmp/tmpbzumoc81.swift:28:34: error: 'characters' is unavailable: Please use String directly
            vowelDistance = word.characters.count - vowelIndex
                                 ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpbzumoc81.swift:29:30: error: 'characters' is unavailable: Please use String directly
            for char in word.characters {
                             ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpbzumoc81.swift:30:31: error: value of type 'String' has no member 'containsString'
                if consonants.containsString(String(char)) {
                   ~~~~~~~~~~ ^~~~~~~~~~~~~~
/tmp/tmpbzumoc81.swift:31:54: error: value of type 'String' has no member 'indexOf'
                    consonantIndex = word.characters.indexOf(char)!
                                     ~~~~~~~~~~~~~~~ ^~~~~~~
/tmp/tmpbzumoc81.swift:32:46: error: 'characters' is unavailable: Please use String directly
                    consonantDistance = word.characters.count - consonantIndex
                                             ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = "aeiouAEIOU"
    let consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    var closestVowel = ""
    var vowelIndex = 0
    var consonantIndex = 0
    var vowelDistance = 0
    var consonantDistance = 0
    var distance = 0
    for char in word.characters {
        if vowels.containsString(String(char)) {
            vowelIndex = word.characters.indexOf(char)!
            vowelDistance = word.characters.count - vowelIndex
            for char in word.characters {
                if consonants.containsString(String(char)) {
                    consonantIndex = word.characters.indexOf(char)!
                    consonantDistance = word.characters.count - consonantIndex
                    distance = vowelDistance - consonantDistance
                    if distance > 0 {
                        closestVowel = String(char)
                    }
                }
            }
        }
    }
    return closestVowel
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_54_same_chars, completion 84 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpjq_9cbab.swift:16:23: error: 'characters' is unavailable: Please use String directly
    var s0_chars = s0.characters.map { String($0) }
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpjq_9cbab.swift:17:23: error: 'characters' is unavailable: Please use String directly
    var s1_chars = s1.characters.map { String($0) }
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpjq_9cbab.swift:18:14: error: value of type '[String]' has no member 'sortInPlace'
    s0_chars.sortInPlace()
    ~~~~~~~~ ^~~~~~~~~~~
/tmp/tmpjq_9cbab.swift:19:14: error: value of type '[String]' has no member 'sortInPlace'
    s1_chars.sortInPlace()
    ~~~~~~~~ ^~~~~~~~~~~

*/
/* stdout = 

*/


/// Check if two words have the same characters.
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc")
/// true
/// >>> same_chars(s0: "abcd", s1: "dddddddabc")
/// true
/// >>> same_chars(s0: "dddddddabc", s1: "abcd")
/// true
/// >>> same_chars(s0: "eabcd", s1: "dddddddabc")
/// false
/// >>> same_chars(s0: "abcd", s1: "dddddddabce")
/// false
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc")
/// false
func same_chars(s0: String, s1: String) -> Bool {
    var s0_chars = s0.characters.map { String($0) }
    var s1_chars = s1.characters.map { String($0) }
    s0_chars.sortInPlace()
    s1_chars.sortInPlace()
    return s0_chars == s1_chars
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc") == true)
assert(same_chars(s0: "abcd", s1: "dddddddabc") == true)
assert(same_chars(s0: "dddddddabc", s1: "abcd") == true)
assert(same_chars(s0: "eabcd", s1: "dddddddabc") == false)
assert(same_chars(s0: "abcd", s1: "dddddddabcf") == false)
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc") == false)
assert(same_chars(s0: "aabb", s1: "aaccc") == false)



// ----------- problem HumanEval_23_strlen, completion 103 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_111_histogram, completion 25 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpj_6pedqz.swift:19:22: error: 'characters' is unavailable: Please use String directly
    for char in test.characters {
                     ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Given a string representing a space separated lowercase letters, return a dictionary
/// of the letter with the most repetition and containing the corresponding count.
/// If several letters have the same occurrence, return all of them.
/// Example:
/// >>> histogram(test: "a b c")
/// ["a" : 1, "b" : 1, "c" : 1]
/// >>> histogram(test: "a b b a")
/// ["a" : 2, "b" : 2]
/// >>> histogram(test: "a b c a b")
/// ["a" : 2, "b" : 2]
/// >>> histogram(test: "b b b b a")
/// ["b" : 4]
/// >>> histogram(test: "")
/// [:] as [String : Int]
func histogram(test: String) -> [String : Int] {
    var dict = [String : Int]()
    var max = 0
    for char in test.characters {
        if char != " " {
            if let count = dict[String(char)] {
                dict[String(char)] = count + 1
                if count + 1 > max {
                    max = count + 1
                }
            } else {
                dict[String(char)] = 1
                if 1 > max {
                    max = 1
                }
            }
        }
    }
    var result = [String : Int]()
    for (key, value) in dict {
        if value == max {
            result[key] = value
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(histogram(test: "a b b a") == ["a" : 2, "b" : 2])
assert(histogram(test: "a b c a b") == ["a" : 2, "b" : 2])
assert(histogram(test: "a b c d g") == ["a" : 1, "b" : 1, "c" : 1, "d" : 1, "g" : 1])
assert(histogram(test: "r t g") == ["r" : 1, "t" : 1, "g" : 1])
assert(histogram(test: "b b b b a") == ["b" : 4])
assert(histogram(test: "r t g") == ["r" : 1, "t" : 1, "g" : 1])
assert(histogram(test: "") == [:] as [String : Int])
assert(histogram(test: "a") == ["a" : 1])



// ----------- problem HumanEval_10_make_palindrome, completion 59 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmprgw6u4ze.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters.map { String($0) }
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmprgw6u4ze.swift:18:34: error: cannot convert value of type 'Int' to expected argument type 'ReversedCollection<[String]>.Index'
        if string[i] == reversed[i] {
                                 ^
/tmp/tmprgw6u4ze.swift:25:26: error: subscript 'subscript(_:)' requires the types 'ReversedCollection<[String]>.Index' and 'Int' be equivalent
    let suffix = reversed[i..<length]
                         ^
Swift.Collection:2:23: note: where 'Self.Index' = 'ReversedCollection<[String]>.Index', 'R.Bound' = 'Int'
    @inlinable public subscript<R>(r: R) -> Self.SubSequence where R : RangeExpression, Self.Index == R.Bound { get }
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
    let length = string.count
    var i = 0
    while i < length {
        if string[i] == reversed[i] {
            i += 1
        } else {
            break
        }
    }
    let prefix = string[0..<i]
    let suffix = reversed[i..<length]
    return string.joined() + suffix.joined()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_23_strlen, completion 128 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_12_longest, completion 24 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwforl_19.swift:11:29: error: 'characters' is unavailable: Please use String directly
    return strings.max { $0.characters.count < $1.characters.count }
                            ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpwforl_19.swift:11:51: error: 'characters' is unavailable: Please use String directly
    return strings.max { $0.characters.count < $1.characters.count }
                                                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Out of array of strings, return the longest one. Return the first one in case of multiple
/// strings of the same length. Return nil in case the input array is empty.
/// >>> longest(strings: [] as [String])
/// nil
/// >>> longest(strings: ["a", "b", "c"])
/// "a"
/// >>> longest(strings: ["a", "bb", "ccc"])
/// "ccc"
func longest(strings: [String]) -> String? {
    return strings.max { $0.characters.count < $1.characters.count }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(longest(strings: [] as [String]) == nil)
assert(longest(strings: ["x", "y", "z"]) == "x")
assert(longest(strings: ["x", "yyy", "zzzz", "www", "kkkk", "abc"]) == "zzzz")



// ----------- problem HumanEval_54_same_chars, completion 85 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3s7m4877.swift:16:29: error: 'characters' is unavailable: Please use String directly
    var s0_chars = Array(s0.characters)
                            ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp3s7m4877.swift:17:29: error: 'characters' is unavailable: Please use String directly
    var s1_chars = Array(s1.characters)
                            ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp3s7m4877.swift:18:14: error: value of type '[String.Element]' (aka 'Array<Character>') has no member 'sortInPlace'
    s0_chars.sortInPlace()
    ~~~~~~~~ ^~~~~~~~~~~
/tmp/tmp3s7m4877.swift:19:14: error: value of type '[String.Element]' (aka 'Array<Character>') has no member 'sortInPlace'
    s1_chars.sortInPlace()
    ~~~~~~~~ ^~~~~~~~~~~

*/
/* stdout = 

*/


/// Check if two words have the same characters.
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc")
/// true
/// >>> same_chars(s0: "abcd", s1: "dddddddabc")
/// true
/// >>> same_chars(s0: "dddddddabc", s1: "abcd")
/// true
/// >>> same_chars(s0: "eabcd", s1: "dddddddabc")
/// false
/// >>> same_chars(s0: "abcd", s1: "dddddddabce")
/// false
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc")
/// false
func same_chars(s0: String, s1: String) -> Bool {
    var s0_chars = Array(s0.characters)
    var s1_chars = Array(s1.characters)
    s0_chars.sortInPlace()
    s1_chars.sortInPlace()
    return s0_chars == s1_chars
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc") == true)
assert(same_chars(s0: "abcd", s1: "dddddddabc") == true)
assert(same_chars(s0: "dddddddabc", s1: "abcd") == true)
assert(same_chars(s0: "eabcd", s1: "dddddddabc") == false)
assert(same_chars(s0: "abcd", s1: "dddddddabcf") == false)
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc") == false)
assert(same_chars(s0: "aabb", s1: "aaccc") == false)



// ----------- problem HumanEval_118_get_closest_vowel, completion 155 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp2lyo76xk.swift:21:31: error: 'characters' is unavailable: Please use String directly
    for (index, char) in word.characters.enumerated() {
                              ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = "aeiouAEIOU"
    var result = ""
    var vowel_index = 0
    var consonant_index = 0
    for (index, char) in word.characters.enumerated() {
        if vowels.contains(char) {
            vowel_index = index
        } else {
            consonant_index = index
        }
        if vowel_index < consonant_index {
            result = String(char)
            break
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_113_odd_count, completion 183 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpcc2g3wlp.swift:12:26: error: 'characters' is unavailable: Please use String directly
        let oddCount = s.characters.reduce(0) { (count: Int, c: Character) -> Int in
                         ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
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
    return lst.map { (s: String) -> String in
        let oddCount = s.characters.reduce(0) { (count: Int, c: Character) -> Int in
            if let n = Int(String(c)) {
                return n % 2 == 1 ? count + 1 : count
            }
            return count
        }
        return "the number of odd elements \(oddCount)n the str\(oddCount)ng \(oddCount) of the \(oddCount)nput."
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
            
assert(odd_count(lst: ["1234567"]) == ["the number of odd elements 4n the str4ng 4 of the 4nput."])
assert(odd_count(lst: ["3", "11111111"]) == ["the number of odd elements 1n the str1ng 1 of the 1nput.", "the number of odd elements 8n the str8ng 8 of the 8nput."])
assert(odd_count(lst: ["271", "137", "314"]) == ["the number of odd elements 2n the str2ng 2 of the 2nput.", "the number of odd elements 3n the str3ng 3 of the 3nput.", "the number of odd elements 2n the str2ng 2 of the 2nput."])



// ----------- problem HumanEval_10_make_palindrome, completion 132 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpayxfojfg.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpayxfojfg.swift:21:22: error: 'subscript(_:)' is unavailable: cannot subscript String with an integer range, use a String.Index range instead.
        let suffix = string[i..<length]
                     ^~~~~~~~~~~~~~~~~~
Swift.String:5:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript<R>(bounds: R) -> String where R : RangeExpression, R.Bound == Int { get }
           ^
/tmp/tmpayxfojfg.swift:22:12: error: cannot find 'is_palindrome' in scope
        if is_palindrome(string: suffix) {
           ^~~~~~~~~~~~~
/tmp/tmpayxfojfg.swift:28:18: error: 'subscript(_:)' is unavailable: cannot subscript String with an integer range, use a String.Index range instead.
    let prefix = string[0..<length - longest_palindrome_suffix_length]
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Swift.String:5:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript<R>(bounds: R) -> String where R : RangeExpression, R.Bound == Int { get }
           ^
/tmp/tmpayxfojfg.swift:30:19: error: no exact matches in call to instance method 'joined'
    return string.joined() + reversed_prefix
                  ^
Swift.Sequence:1:11: note: candidate requires that 'String.Element' (aka 'Character') conform to 'StringProtocol' (requirement specified as 'Self.Element' : 'StringProtocol')
extension Sequence where Self.Element : StringProtocol {
          ^
Swift.BidirectionalCollection:1:11: note: candidate requires that the types 'String.Element' (aka 'Character') and 'String' be equivalent (requirement specified as 'Self.Element' == 'String')
extension BidirectionalCollection where Self.Element == String {
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
    let length = string.count
    if length == 0 {
        return ""
    }
    var longest_palindrome_suffix = 0
    var longest_palindrome_suffix_length = 0
    for i in 0..<length {
        let suffix = string[i..<length]
        if is_palindrome(string: suffix) {
            longest_palindrome_suffix = i
            longest_palindrome_suffix_length = length - i
            break
        }
    }
    let prefix = string[0..<length - longest_palindrome_suffix_length]
    let reversed_prefix = String(prefix.reversed())
    return string.joined() + reversed_prefix
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_11_string_xor, completion 195 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3oy340kk.swift:8:24: error: 'characters' is unavailable: Please use String directly
    for (i, char) in a.characters.enumerated() {
                       ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    var result = ""
    for (i, char) in a.characters.enumerated() {
        let a = char == "1"
        let b = b[b.index(b.startIndex, offsetBy: i)] == "1"
        result += a != b ? "1" : "0"
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_12_longest, completion 70 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwforl_19.swift:11:29: error: 'characters' is unavailable: Please use String directly
    return strings.max { $0.characters.count < $1.characters.count }
                            ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpwforl_19.swift:11:51: error: 'characters' is unavailable: Please use String directly
    return strings.max { $0.characters.count < $1.characters.count }
                                                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Out of array of strings, return the longest one. Return the first one in case of multiple
/// strings of the same length. Return nil in case the input array is empty.
/// >>> longest(strings: [] as [String])
/// nil
/// >>> longest(strings: ["a", "b", "c"])
/// "a"
/// >>> longest(strings: ["a", "bb", "ccc"])
/// "ccc"
func longest(strings: [String]) -> String? {
    return strings.max { $0.characters.count < $1.characters.count }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(longest(strings: [] as [String]) == nil)
assert(longest(strings: ["x", "y", "z"]) == "x")
assert(longest(strings: ["x", "yyy", "zzzz", "www", "kkkk", "abc"]) == "zzzz")



// ----------- problem HumanEval_118_get_closest_vowel, completion 191 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpo0r5xacv.swift:22:22: error: 'characters' is unavailable: Please use String directly
    for char in word.characters {
                     ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpo0r5xacv.swift:23:19: error: value of type 'String' has no member 'containsString'
        if vowels.containsString(String(char)) {
           ~~~~~~ ^~~~~~~~~~~~~~
/tmp/tmpo0r5xacv.swift:24:43: error: value of type 'String' has no member 'indexOf'
            vowel_index = word.characters.indexOf(char)!
                          ~~~~~~~~~~~~~~~ ^~~~~~~
/tmp/tmpo0r5xacv.swift:26:23: error: value of type 'String' has no member 'containsString'
        if consonants.containsString(String(char)) {
           ~~~~~~~~~~ ^~~~~~~~~~~~~~
/tmp/tmpo0r5xacv.swift:27:47: error: value of type 'String' has no member 'indexOf'
            consonant_index = word.characters.indexOf(char)!
                              ~~~~~~~~~~~~~~~ ^~~~~~~

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = "aeiouAEIOU"
    let consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    var vowel_index = 0
    var consonant_index = 0
    var result = ""
    for char in word.characters {
        if vowels.containsString(String(char)) {
            vowel_index = word.characters.indexOf(char)!
        }
        if consonants.containsString(String(char)) {
            consonant_index = word.characters.indexOf(char)!
            if vowel_index > consonant_index {
                result = String(char)
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
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_118_get_closest_vowel, completion 0 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpbtreo41_.swift:24:22: error: 'characters' is unavailable: Please use String directly
    for char in word.characters {
                     ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpbtreo41_.swift:31:26: error: 'characters' is unavailable: Please use String directly
        if index == word.characters.count - 1 {
                         ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = "aeiouAEIOU"
    let consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    var closestVowel = ""
    var index = 0
    var prev = ""
    var curr = ""
    var next = ""
    for char in word.characters {
        if index == 0 {
            prev = " "
        } else {
            prev = String(word[word.index(word.startIndex, offsetBy: index - 1)])
        }
        curr = String(char)
        if index == word.characters.count - 1 {
            next = " "
        } else {
            next = String(word[word.index(word.startIndex, offsetBy: index + 1)])
        }
        if vowels.contains(curr) && consonants.contains(prev) && consonants.contains(next) {
            closestVowel = curr
        }
        index += 1
    }
    return closestVowel
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_23_strlen, completion 157 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_23_strlen, completion 0 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_12_longest, completion 163 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpj2f793ff.swift:13:43: error: 'characters' is unavailable: Please use String directly
        if longestString == nil || string.characters.count > longestString!.characters.count {
                                          ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpj2f793ff.swift:13:77: error: 'characters' is unavailable: Please use String directly
        if longestString == nil || string.characters.count > longestString!.characters.count {
                                                                            ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Out of array of strings, return the longest one. Return the first one in case of multiple
/// strings of the same length. Return nil in case the input array is empty.
/// >>> longest(strings: [] as [String])
/// nil
/// >>> longest(strings: ["a", "b", "c"])
/// "a"
/// >>> longest(strings: ["a", "bb", "ccc"])
/// "ccc"
func longest(strings: [String]) -> String? {
    var longestString: String?
    for string in strings {
        if longestString == nil || string.characters.count > longestString!.characters.count {
            longestString = string
        }
    }
    return longestString
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(longest(strings: [] as [String]) == nil)
assert(longest(strings: ["x", "y", "z"]) == "x")
assert(longest(strings: ["x", "yyy", "zzzz", "www", "kkkk", "abc"]) == "zzzz")



// ----------- problem HumanEval_10_make_palindrome, completion 49 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpt3dap72o.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters.map { String($0) }
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpt3dap72o.swift:18:30: error: subscript 'subscript(_:)' requires the types 'ReversedCollection<[String]>.Index' and 'Int' be equivalent
        let suffix = reversed[0..<i]
                             ^
Swift.Collection:2:23: note: where 'Self.Index' = 'ReversedCollection<[String]>.Index', 'R.Bound' = 'Int'
    @inlinable public subscript<R>(r: R) -> Self.SubSequence where R : RangeExpression, Self.Index == R.Bound { get }
                      ^
/tmp/tmpt3dap72o.swift:23:38: error: subscript 'subscript(_:)' requires the types 'ReversedCollection<[String]>.Index' and 'Int' be equivalent
    return string.joined() + reversed[longest_palindrome.characters.count..<reversed.count].joined()
                                     ^
Swift.Collection:2:23: note: where 'Self.Index' = 'ReversedCollection<[String]>.Index', 'R.Bound' = 'Int'
    @inlinable public subscript<R>(r: R) -> Self.SubSequence where R : RangeExpression, Self.Index == R.Bound { get }
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
    var longest_palindrome = ""
    for i in 0..<string.count {
        let prefix = string[0..<i]
        let suffix = reversed[0..<i]
        if prefix == suffix {
            longest_palindrome = prefix.joined()
        }
    }
    return string.joined() + reversed[longest_palindrome.characters.count..<reversed.count].joined()
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_155_even_odd_count, completion 89 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpy5tc8x_w.swift:11:30: error: 'characters' is unavailable: Please use String directly
    for digit in String(num).characters {
                             ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Given an integer. return a tuple that has the number of even and odd digits respectively.
/// Example:
/// >>> even_odd_count(num: -12)
/// (1, 1)
/// >>> even_odd_count(num: 123)
/// (1, 2)
func even_odd_count(num: Int) -> (Int, Int) {
    var evenCount = 0
    var oddCount = 0
    for digit in String(num).characters {
        if Int(String(digit))! % 2 == 0 {
            evenCount += 1
        } else {
            oddCount += 1
        }
    }
    return (evenCount, oddCount)
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(even_odd_count(num: 7) == (0, 1))
assert(even_odd_count(num: -78) == (1, 1))
assert(even_odd_count(num: 3452) == (2, 2))
assert(even_odd_count(num: 346211) == (3, 3))
assert(even_odd_count(num: -345821) == (3, 3))
assert(even_odd_count(num: -2) == (1, 0))
assert(even_odd_count(num: -45347) == (2, 3))
assert(even_odd_count(num: 0) == (1, 0))



// ----------- problem HumanEval_111_histogram, completion 19 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpcx4fwjg7.swift:18:22: error: 'characters' is unavailable: Please use String directly
    for char in test.characters {
                     ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Given a string representing a space separated lowercase letters, return a dictionary
/// of the letter with the most repetition and containing the corresponding count.
/// If several letters have the same occurrence, return all of them.
/// Example:
/// >>> histogram(test: "a b c")
/// ["a" : 1, "b" : 1, "c" : 1]
/// >>> histogram(test: "a b b a")
/// ["a" : 2, "b" : 2]
/// >>> histogram(test: "a b c a b")
/// ["a" : 2, "b" : 2]
/// >>> histogram(test: "b b b b a")
/// ["b" : 4]
/// >>> histogram(test: "")
/// [:] as [String : Int]
func histogram(test: String) -> [String : Int] {
    var dict = [String : Int]()
    for char in test.characters {
        if let count = dict[String(char)] {
            dict[String(char)] = count + 1
        } else {
            dict[String(char)] = 1
        }
    }
    return dict
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(histogram(test: "a b b a") == ["a" : 2, "b" : 2])
assert(histogram(test: "a b c a b") == ["a" : 2, "b" : 2])
assert(histogram(test: "a b c d g") == ["a" : 1, "b" : 1, "c" : 1, "d" : 1, "g" : 1])
assert(histogram(test: "r t g") == ["r" : 1, "t" : 1, "g" : 1])
assert(histogram(test: "b b b b a") == ["b" : 4])
assert(histogram(test: "r t g") == ["r" : 1, "t" : 1, "g" : 1])
assert(histogram(test: "") == [:] as [String : Int])
assert(histogram(test: "a") == ["a" : 1])



// ----------- problem HumanEval_113_odd_count, completion 163 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpmq4epa3m.swift:13:21: error: 'characters' is unavailable: Please use String directly
        for c in $0.characters {
                    ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
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
    return lst.map {
        var count = 0
        for c in $0.characters {
            if Int(String(c))! % 2 == 1 {
                count += 1
            }
        }
        return "the number of odd elements \(count)n the str\(count)ng \(count) of the \(count)nput."
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
            
assert(odd_count(lst: ["1234567"]) == ["the number of odd elements 4n the str4ng 4 of the 4nput."])
assert(odd_count(lst: ["3", "11111111"]) == ["the number of odd elements 1n the str1ng 1 of the 1nput.", "the number of odd elements 8n the str8ng 8 of the 8nput."])
assert(odd_count(lst: ["271", "137", "314"]) == ["the number of odd elements 2n the str2ng 2 of the 2nput.", "the number of odd elements 3n the str3ng 3 of the 3nput.", "the number of odd elements 2n the str2ng 2 of the 2nput."])



// ----------- problem HumanEval_54_same_chars, completion 115 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmptltzd_up.swift:16:29: error: 'characters' is unavailable: Please use String directly
    var s0_chars = Array(s0.characters)
                            ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmptltzd_up.swift:17:29: error: 'characters' is unavailable: Please use String directly
    var s1_chars = Array(s1.characters)
                            ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Check if two words have the same characters.
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc")
/// true
/// >>> same_chars(s0: "abcd", s1: "dddddddabc")
/// true
/// >>> same_chars(s0: "dddddddabc", s1: "abcd")
/// true
/// >>> same_chars(s0: "eabcd", s1: "dddddddabc")
/// false
/// >>> same_chars(s0: "abcd", s1: "dddddddabce")
/// false
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc")
/// false
func same_chars(s0: String, s1: String) -> Bool {
    var s0_chars = Array(s0.characters)
    var s1_chars = Array(s1.characters)
    s0_chars.sort()
    s1_chars.sort()
    return s0_chars == s1_chars
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc") == true)
assert(same_chars(s0: "abcd", s1: "dddddddabc") == true)
assert(same_chars(s0: "dddddddabc", s1: "abcd") == true)
assert(same_chars(s0: "eabcd", s1: "dddddddabc") == false)
assert(same_chars(s0: "abcd", s1: "dddddddabcf") == false)
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc") == false)
assert(same_chars(s0: "aabb", s1: "aaccc") == false)



// ----------- problem HumanEval_10_make_palindrome, completion 106 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1fcp9ene.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp1fcp9ene.swift:21:33: error: cannot find 'longest_palindrome_length_at_index' in scope
        let palindrome_length = longest_palindrome_length_at_index(string: string, index: i)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
    for i in 0..<string_length {
        let palindrome_length = longest_palindrome_length_at_index(string: string, index: i)
        if palindrome_length > longest_palindrome_length {
            longest_palindrome_length = palindrome_length
            longest_palindrome_index = i
        }
    }
    let prefix_length = string_length - longest_palindrome_length
    let prefix = string[string.startIndex..<string.index(string.startIndex, offsetBy: prefix_length)]
    let suffix = string[string.index(string.startIndex, offsetBy: longest_palindrome_index)..<string.index(string.startIndex, offsetBy: longest_palindrome_index + longest_palindrome_length)]
    return String(string[string.startIndex..<string.index(string.startIndex, offsetBy: longest_palindrome_index + longest_palindrome_length)]) + String(prefix.reversed())
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_158_find_max, completion 166 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1ql4c2f6.swift:16:37: error: 'characters' is unavailable: Please use String directly
        let unique_chars = Set(word.characters)
                                    ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Write a function that accepts an array of strings.
/// The array contains different words. Return the word with maximum number
/// of unique characters. If multiple strings have maximum number of unique
/// characters, return the one which comes first in lexicographical order.
/// >>> find_max(words: ["name", "of", "string"])
/// "string"
/// >>> find_max(words: ["name", "enam", "game"])
/// "enam"
/// >>> find_max(words: ["aaaaaaa", "bb", "cc"])
/// "aaaaaaa"
func find_max(words: [String]) -> String {
    var max_word = ""
    var max_count = 0
    for word in words {
        let unique_chars = Set(word.characters)
        if unique_chars.count > max_count {
            max_count = unique_chars.count
            max_word = word
        }
    }
    return max_word
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(find_max(words: ["name", "of", "string"]) == "string")
assert(find_max(words: ["name", "enam", "game"]) == "enam")
assert(find_max(words: ["aaaaaaa", "bb", "cc"]) == "aaaaaaa")
assert(find_max(words: ["abc", "cba"]) == "abc")
assert(find_max(words: ["play", "this", "game", "of", "footbott"]) == "footbott")
assert(find_max(words: ["we", "are", "gonna", "rock"]) == "gonna")
assert(find_max(words: ["we", "are", "a", "mad", "nation"]) == "nation")
assert(find_max(words: ["this", "is", "a", "prrk"]) == "this")
assert(find_max(words: ["b"]) == "b")
assert(find_max(words: ["play", "play", "play"]) == "play")



// ----------- problem HumanEval_10_make_palindrome, completion 192 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmprxo6v1xi.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmprxo6v1xi.swift:20:12: error: cannot find 'is_palindrome' in scope
        if is_palindrome(string: string, start: 0, end: prefix_length) {
           ^~~~~~~~~~~~~
/tmp/tmprxo6v1xi.swift:27:23: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        result.append(string[length - i - 1])
                      ^~~~~~~~~~~~~~~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
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
    let length = string.count
    if length == 0 {
        return ""
    }
    var prefix_length = length - 1
    while prefix_length >= 0 {
        if is_palindrome(string: string, start: 0, end: prefix_length) {
            break
        }
        prefix_length -= 1
    }
    var result = string
    for i in 0..<length - prefix_length {
        result.append(string[length - i - 1])
    }
    return String(result)
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_23_strlen, completion 172 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_111_histogram, completion 31 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwsb2vwbi.swift:20:22: error: 'characters' is unavailable: Please use String directly
    for char in test.characters {
                     ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Given a string representing a space separated lowercase letters, return a dictionary
/// of the letter with the most repetition and containing the corresponding count.
/// If several letters have the same occurrence, return all of them.
/// Example:
/// >>> histogram(test: "a b c")
/// ["a" : 1, "b" : 1, "c" : 1]
/// >>> histogram(test: "a b b a")
/// ["a" : 2, "b" : 2]
/// >>> histogram(test: "a b c a b")
/// ["a" : 2, "b" : 2]
/// >>> histogram(test: "b b b b a")
/// ["b" : 4]
/// >>> histogram(test: "")
/// [:] as [String : Int]
func histogram(test: String) -> [String : Int] {
    var dict = [String : Int]()
    var max = 0
    var maxKeys = [String]()
    for char in test.characters {
        if char != " " {
            if let count = dict[String(char)] {
                dict[String(char)] = count + 1
                if count + 1 > max {
                    max = count + 1
                    maxKeys = [String(char)]
                } else if count + 1 == max {
                    maxKeys.append(String(char))
                }
            } else {
                dict[String(char)] = 1
                if max == 0 {
                    max = 1
                    maxKeys = [String(char)]
                }
            }
        }
    }
    var result = [String : Int]()
    for key in maxKeys {
        result[key] = max
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(histogram(test: "a b b a") == ["a" : 2, "b" : 2])
assert(histogram(test: "a b c a b") == ["a" : 2, "b" : 2])
assert(histogram(test: "a b c d g") == ["a" : 1, "b" : 1, "c" : 1, "d" : 1, "g" : 1])
assert(histogram(test: "r t g") == ["r" : 1, "t" : 1, "g" : 1])
assert(histogram(test: "b b b b a") == ["b" : 4])
assert(histogram(test: "r t g") == ["r" : 1, "t" : 1, "g" : 1])
assert(histogram(test: "") == [:] as [String : Int])
assert(histogram(test: "a") == ["a" : 1])



// ----------- problem HumanEval_54_same_chars, completion 63 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpjq_9cbab.swift:16:23: error: 'characters' is unavailable: Please use String directly
    var s0_chars = s0.characters.map { String($0) }
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpjq_9cbab.swift:17:23: error: 'characters' is unavailable: Please use String directly
    var s1_chars = s1.characters.map { String($0) }
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpjq_9cbab.swift:18:14: error: value of type '[String]' has no member 'sortInPlace'
    s0_chars.sortInPlace()
    ~~~~~~~~ ^~~~~~~~~~~
/tmp/tmpjq_9cbab.swift:19:14: error: value of type '[String]' has no member 'sortInPlace'
    s1_chars.sortInPlace()
    ~~~~~~~~ ^~~~~~~~~~~

*/
/* stdout = 

*/


/// Check if two words have the same characters.
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc")
/// true
/// >>> same_chars(s0: "abcd", s1: "dddddddabc")
/// true
/// >>> same_chars(s0: "dddddddabc", s1: "abcd")
/// true
/// >>> same_chars(s0: "eabcd", s1: "dddddddabc")
/// false
/// >>> same_chars(s0: "abcd", s1: "dddddddabce")
/// false
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc")
/// false
func same_chars(s0: String, s1: String) -> Bool {
    var s0_chars = s0.characters.map { String($0) }
    var s1_chars = s1.characters.map { String($0) }
    s0_chars.sortInPlace()
    s1_chars.sortInPlace()
    return s0_chars == s1_chars
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc") == true)
assert(same_chars(s0: "abcd", s1: "dddddddabc") == true)
assert(same_chars(s0: "dddddddabc", s1: "abcd") == true)
assert(same_chars(s0: "eabcd", s1: "dddddddabc") == false)
assert(same_chars(s0: "abcd", s1: "dddddddabcf") == false)
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc") == false)
assert(same_chars(s0: "aabb", s1: "aaccc") == false)



// ----------- problem HumanEval_23_strlen, completion 50 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_23_strlen, completion 20 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_54_same_chars, completion 144 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3s7m4877.swift:16:29: error: 'characters' is unavailable: Please use String directly
    var s0_chars = Array(s0.characters)
                            ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp3s7m4877.swift:17:29: error: 'characters' is unavailable: Please use String directly
    var s1_chars = Array(s1.characters)
                            ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp3s7m4877.swift:18:14: error: value of type '[String.Element]' (aka 'Array<Character>') has no member 'sortInPlace'
    s0_chars.sortInPlace()
    ~~~~~~~~ ^~~~~~~~~~~
/tmp/tmp3s7m4877.swift:19:14: error: value of type '[String.Element]' (aka 'Array<Character>') has no member 'sortInPlace'
    s1_chars.sortInPlace()
    ~~~~~~~~ ^~~~~~~~~~~

*/
/* stdout = 

*/


/// Check if two words have the same characters.
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc")
/// true
/// >>> same_chars(s0: "abcd", s1: "dddddddabc")
/// true
/// >>> same_chars(s0: "dddddddabc", s1: "abcd")
/// true
/// >>> same_chars(s0: "eabcd", s1: "dddddddabc")
/// false
/// >>> same_chars(s0: "abcd", s1: "dddddddabce")
/// false
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc")
/// false
func same_chars(s0: String, s1: String) -> Bool {
    var s0_chars = Array(s0.characters)
    var s1_chars = Array(s1.characters)
    s0_chars.sortInPlace()
    s1_chars.sortInPlace()
    return s0_chars == s1_chars
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc") == true)
assert(same_chars(s0: "abcd", s1: "dddddddabc") == true)
assert(same_chars(s0: "dddddddabc", s1: "abcd") == true)
assert(same_chars(s0: "eabcd", s1: "dddddddabc") == false)
assert(same_chars(s0: "abcd", s1: "dddddddabcf") == false)
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc") == false)
assert(same_chars(s0: "aabb", s1: "aaccc") == false)



// ----------- problem HumanEval_23_strlen, completion 9 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_111_histogram, completion 33 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpqzkp2wf4.swift:19:22: error: 'characters' is unavailable: Please use String directly
    for char in test.characters {
                     ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Given a string representing a space separated lowercase letters, return a dictionary
/// of the letter with the most repetition and containing the corresponding count.
/// If several letters have the same occurrence, return all of them.
/// Example:
/// >>> histogram(test: "a b c")
/// ["a" : 1, "b" : 1, "c" : 1]
/// >>> histogram(test: "a b b a")
/// ["a" : 2, "b" : 2]
/// >>> histogram(test: "a b c a b")
/// ["a" : 2, "b" : 2]
/// >>> histogram(test: "b b b b a")
/// ["b" : 4]
/// >>> histogram(test: "")
/// [:] as [String : Int]
func histogram(test: String) -> [String : Int] {
    var dict = [String : Int]()
    var max = 0
    for char in test.characters {
        if char == " " {
            continue
        }
        if dict[String(char)] == nil {
            dict[String(char)] = 1
        } else {
            dict[String(char)]! += 1
        }
        if dict[String(char)]! > max {
            max = dict[String(char)]!
        }
    }
    var result = [String : Int]()
    for (key, value) in dict {
        if value == max {
            result[key] = value
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(histogram(test: "a b b a") == ["a" : 2, "b" : 2])
assert(histogram(test: "a b c a b") == ["a" : 2, "b" : 2])
assert(histogram(test: "a b c d g") == ["a" : 1, "b" : 1, "c" : 1, "d" : 1, "g" : 1])
assert(histogram(test: "r t g") == ["r" : 1, "t" : 1, "g" : 1])
assert(histogram(test: "b b b b a") == ["b" : 4])
assert(histogram(test: "r t g") == ["r" : 1, "t" : 1, "g" : 1])
assert(histogram(test: "") == [:] as [String : Int])
assert(histogram(test: "a") == ["a" : 1])



// ----------- problem HumanEval_12_longest, completion 96 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpvz8giihz.swift:16:19: error: 'characters' is unavailable: Please use String directly
        if string.characters.count > longest.characters.count {
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpvz8giihz.swift:16:46: error: 'characters' is unavailable: Please use String directly
        if string.characters.count > longest.characters.count {
                                             ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Out of array of strings, return the longest one. Return the first one in case of multiple
/// strings of the same length. Return nil in case the input array is empty.
/// >>> longest(strings: [] as [String])
/// nil
/// >>> longest(strings: ["a", "b", "c"])
/// "a"
/// >>> longest(strings: ["a", "bb", "ccc"])
/// "ccc"
func longest(strings: [String]) -> String? {
    if strings.isEmpty {
        return nil
    }
    var longest = strings[0]
    for string in strings {
        if string.characters.count > longest.characters.count {
            longest = string
        }
    }
    return longest
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(longest(strings: [] as [String]) == nil)
assert(longest(strings: ["x", "y", "z"]) == "x")
assert(longest(strings: ["x", "yyy", "zzzz", "www", "kkkk", "abc"]) == "zzzz")



// ----------- problem HumanEval_10_make_palindrome, completion 97 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpnwoxraql.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpnwoxraql.swift:21:33: error: cannot find 'palindrome_length_at_index' in scope
        let palindrome_length = palindrome_length_at_index(string: string, index: i)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~

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
    for i in 0..<string_length {
        let palindrome_length = palindrome_length_at_index(string: string, index: i)
        if palindrome_length > longest_palindrome_length {
            longest_palindrome_length = palindrome_length
            longest_palindrome_index = i
        }
    }
    let palindrome_start = longest_palindrome_index - longest_palindrome_length + 1
    let palindrome_end = longest_palindrome_index + longest_palindrome_length
    let palindrome_prefix = string[string.startIndex..<string.index(string.startIndex, offsetBy: palindrome_start)]
    let palindrome_suffix = string[string.index(string.startIndex, offsetBy: palindrome_end)..<string.endIndex]
    let palindrome_prefix_reversed = String(palindrome_prefix.reversed())
    return palindrome_prefix_reversed + String(string) + palindrome_suffix
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_12_longest, completion 123 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwforl_19.swift:11:29: error: 'characters' is unavailable: Please use String directly
    return strings.max { $0.characters.count < $1.characters.count }
                            ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpwforl_19.swift:11:51: error: 'characters' is unavailable: Please use String directly
    return strings.max { $0.characters.count < $1.characters.count }
                                                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Out of array of strings, return the longest one. Return the first one in case of multiple
/// strings of the same length. Return nil in case the input array is empty.
/// >>> longest(strings: [] as [String])
/// nil
/// >>> longest(strings: ["a", "b", "c"])
/// "a"
/// >>> longest(strings: ["a", "bb", "ccc"])
/// "ccc"
func longest(strings: [String]) -> String? {
    return strings.max { $0.characters.count < $1.characters.count }
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(longest(strings: [] as [String]) == nil)
assert(longest(strings: ["x", "y", "z"]) == "x")
assert(longest(strings: ["x", "yyy", "zzzz", "www", "kkkk", "abc"]) == "zzzz")



// ----------- problem HumanEval_12_longest, completion 188 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpj2f793ff.swift:13:43: error: 'characters' is unavailable: Please use String directly
        if longestString == nil || string.characters.count > longestString!.characters.count {
                                          ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpj2f793ff.swift:13:77: error: 'characters' is unavailable: Please use String directly
        if longestString == nil || string.characters.count > longestString!.characters.count {
                                                                            ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Out of array of strings, return the longest one. Return the first one in case of multiple
/// strings of the same length. Return nil in case the input array is empty.
/// >>> longest(strings: [] as [String])
/// nil
/// >>> longest(strings: ["a", "b", "c"])
/// "a"
/// >>> longest(strings: ["a", "bb", "ccc"])
/// "ccc"
func longest(strings: [String]) -> String? {
    var longestString: String?
    for string in strings {
        if longestString == nil || string.characters.count > longestString!.characters.count {
            longestString = string
        }
    }
    return longestString
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(longest(strings: [] as [String]) == nil)
assert(longest(strings: ["x", "y", "z"]) == "x")
assert(longest(strings: ["x", "yyy", "zzzz", "www", "kkkk", "abc"]) == "zzzz")



// ----------- problem HumanEval_158_find_max, completion 40 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp772hpff3.swift:16:31: error: 'characters' is unavailable: Please use String directly
        let unique = Set(word.characters)
                              ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Write a function that accepts an array of strings.
/// The array contains different words. Return the word with maximum number
/// of unique characters. If multiple strings have maximum number of unique
/// characters, return the one which comes first in lexicographical order.
/// >>> find_max(words: ["name", "of", "string"])
/// "string"
/// >>> find_max(words: ["name", "enam", "game"])
/// "enam"
/// >>> find_max(words: ["aaaaaaa", "bb", "cc"])
/// "aaaaaaa"
func find_max(words: [String]) -> String {
    var max = 0
    var maxWord = ""
    for word in words {
        let unique = Set(word.characters)
        if unique.count > max {
            max = unique.count
            maxWord = word
        }
    }
    return maxWord
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(find_max(words: ["name", "of", "string"]) == "string")
assert(find_max(words: ["name", "enam", "game"]) == "enam")
assert(find_max(words: ["aaaaaaa", "bb", "cc"]) == "aaaaaaa")
assert(find_max(words: ["abc", "cba"]) == "abc")
assert(find_max(words: ["play", "this", "game", "of", "footbott"]) == "footbott")
assert(find_max(words: ["we", "are", "gonna", "rock"]) == "gonna")
assert(find_max(words: ["we", "are", "a", "mad", "nation"]) == "nation")
assert(find_max(words: ["this", "is", "a", "prrk"]) == "this")
assert(find_max(words: ["b"]) == "b")
assert(find_max(words: ["play", "play", "play"]) == "play")



// ----------- problem HumanEval_10_make_palindrome, completion 51 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp27hd40r7.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp27hd40r7.swift:21:26: error: cannot find 'length_of_palindrome_at_index' in scope
        let length_odd = length_of_palindrome_at_index(string: string, index: i, offset: 0)
                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp27hd40r7.swift:22:27: error: cannot find 'length_of_palindrome_at_index' in scope
        let length_even = length_of_palindrome_at_index(string: string, index: i, offset: 1)
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
    var longest_palindrome_start = 0
    for i in 0..<string_length {
        let length_odd = length_of_palindrome_at_index(string: string, index: i, offset: 0)
        let length_even = length_of_palindrome_at_index(string: string, index: i, offset: 1)
        let length = max(length_odd, length_even)
        if length > longest_palindrome_length {
            longest_palindrome_length = length
            longest_palindrome_start = i
        }
    }
    let palindrome_end = longest_palindrome_start + longest_palindrome_length
    let prefix = string[string.startIndex..<string.index(string.startIndex, offsetBy: longest_palindrome_start)]
    let suffix = string[string.index(string.startIndex, offsetBy: palindrome_end)..<string.endIndex]
    let reversed_prefix = String(prefix.reversed())
    return reversed_prefix + String(string) + suffix
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_23_strlen, completion 110 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_23_strlen, completion 13 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_54_same_chars, completion 15 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpop_7vfww.swift:16:23: error: 'characters' is unavailable: Please use String directly
    var s0_chars = s0.characters.map { String($0) }
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpop_7vfww.swift:17:23: error: 'characters' is unavailable: Please use String directly
    var s1_chars = s1.characters.map { String($0) }
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpop_7vfww.swift:19:33: warning: 'index(of:)' is deprecated: renamed to 'firstIndex(of:)'
        if let index = s1_chars.index(of: c) {
                                ^
/tmp/tmpop_7vfww.swift:19:33: note: use 'firstIndex(of:)' instead
        if let index = s1_chars.index(of: c) {
                                ^~~~~
                                firstIndex
/tmp/tmpop_7vfww.swift:16:9: warning: variable 's0_chars' was never mutated; consider changing to 'let' constant
    var s0_chars = s0.characters.map { String($0) }
    ~~~ ^
    let

*/
/* stdout = 

*/


/// Check if two words have the same characters.
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc")
/// true
/// >>> same_chars(s0: "abcd", s1: "dddddddabc")
/// true
/// >>> same_chars(s0: "dddddddabc", s1: "abcd")
/// true
/// >>> same_chars(s0: "eabcd", s1: "dddddddabc")
/// false
/// >>> same_chars(s0: "abcd", s1: "dddddddabce")
/// false
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc")
/// false
func same_chars(s0: String, s1: String) -> Bool {
    var s0_chars = s0.characters.map { String($0) }
    var s1_chars = s1.characters.map { String($0) }
    for c in s0_chars {
        if let index = s1_chars.index(of: c) {
            s1_chars.remove(at: index)
        } else {
            return false
        }
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc") == true)
assert(same_chars(s0: "abcd", s1: "dddddddabc") == true)
assert(same_chars(s0: "dddddddabc", s1: "abcd") == true)
assert(same_chars(s0: "eabcd", s1: "dddddddabc") == false)
assert(same_chars(s0: "abcd", s1: "dddddddabcf") == false)
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc") == false)
assert(same_chars(s0: "aabb", s1: "aaccc") == false)



// ----------- problem HumanEval_54_same_chars, completion 3 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpop_7vfww.swift:16:23: error: 'characters' is unavailable: Please use String directly
    var s0_chars = s0.characters.map { String($0) }
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpop_7vfww.swift:17:23: error: 'characters' is unavailable: Please use String directly
    var s1_chars = s1.characters.map { String($0) }
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpop_7vfww.swift:19:33: warning: 'index(of:)' is deprecated: renamed to 'firstIndex(of:)'
        if let index = s1_chars.index(of: c) {
                                ^
/tmp/tmpop_7vfww.swift:19:33: note: use 'firstIndex(of:)' instead
        if let index = s1_chars.index(of: c) {
                                ^~~~~
                                firstIndex
/tmp/tmpop_7vfww.swift:16:9: warning: variable 's0_chars' was never mutated; consider changing to 'let' constant
    var s0_chars = s0.characters.map { String($0) }
    ~~~ ^
    let

*/
/* stdout = 

*/


/// Check if two words have the same characters.
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc")
/// true
/// >>> same_chars(s0: "abcd", s1: "dddddddabc")
/// true
/// >>> same_chars(s0: "dddddddabc", s1: "abcd")
/// true
/// >>> same_chars(s0: "eabcd", s1: "dddddddabc")
/// false
/// >>> same_chars(s0: "abcd", s1: "dddddddabce")
/// false
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc")
/// false
func same_chars(s0: String, s1: String) -> Bool {
    var s0_chars = s0.characters.map { String($0) }
    var s1_chars = s1.characters.map { String($0) }
    for c in s0_chars {
        if let index = s1_chars.index(of: c) {
            s1_chars.remove(at: index)
        } else {
            return false
        }
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc") == true)
assert(same_chars(s0: "abcd", s1: "dddddddabc") == true)
assert(same_chars(s0: "dddddddabc", s1: "abcd") == true)
assert(same_chars(s0: "eabcd", s1: "dddddddabc") == false)
assert(same_chars(s0: "abcd", s1: "dddddddabcf") == false)
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc") == false)
assert(same_chars(s0: "aabb", s1: "aaccc") == false)



// ----------- problem HumanEval_10_make_palindrome, completion 95 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp7m7d3_hh.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp7m7d3_hh.swift:22:23: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        suffix.append(string[length - i - 1])
                      ^~~~~~~~~~~~~~~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp7m7d3_hh.swift:23:23: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        prefix.append(string[i])
                      ^~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
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
    let length = string.count
    if length == 0 {
        return ""
    }
    var suffix = [Character]()
    var prefix = [Character]()
    var i = 0
    while i < length {
        suffix.append(string[length - i - 1])
        prefix.append(string[i])
        if suffix == prefix {
            break
        }
        i += 1
    }
    return String(string) + String(suffix.dropFirst(i + 1).reversed())
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_23_strlen, completion 108 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_54_same_chars, completion 133 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp0yuh_kfi.swift:16:21: error: 'characters' is unavailable: Please use String directly
    var chars0 = s0.characters.map { String($0) }
                    ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp0yuh_kfi.swift:17:21: error: 'characters' is unavailable: Please use String directly
    var chars1 = s1.characters.map { String($0) }
                    ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp0yuh_kfi.swift:19:31: warning: 'index(of:)' is deprecated: renamed to 'firstIndex(of:)'
        if let index = chars1.index(of: c) {
                              ^
/tmp/tmp0yuh_kfi.swift:19:31: note: use 'firstIndex(of:)' instead
        if let index = chars1.index(of: c) {
                              ^~~~~
                              firstIndex
/tmp/tmp0yuh_kfi.swift:16:9: warning: variable 'chars0' was never mutated; consider changing to 'let' constant
    var chars0 = s0.characters.map { String($0) }
    ~~~ ^
    let

*/
/* stdout = 

*/


/// Check if two words have the same characters.
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc")
/// true
/// >>> same_chars(s0: "abcd", s1: "dddddddabc")
/// true
/// >>> same_chars(s0: "dddddddabc", s1: "abcd")
/// true
/// >>> same_chars(s0: "eabcd", s1: "dddddddabc")
/// false
/// >>> same_chars(s0: "abcd", s1: "dddddddabce")
/// false
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc")
/// false
func same_chars(s0: String, s1: String) -> Bool {
    var chars0 = s0.characters.map { String($0) }
    var chars1 = s1.characters.map { String($0) }
    for c in chars0 {
        if let index = chars1.index(of: c) {
            chars1.remove(at: index)
        } else {
            return false
        }
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc") == true)
assert(same_chars(s0: "abcd", s1: "dddddddabc") == true)
assert(same_chars(s0: "dddddddabc", s1: "abcd") == true)
assert(same_chars(s0: "eabcd", s1: "dddddddabc") == false)
assert(same_chars(s0: "abcd", s1: "dddddddabcf") == false)
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc") == false)
assert(same_chars(s0: "aabb", s1: "aaccc") == false)



// ----------- problem HumanEval_10_make_palindrome, completion 163 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp7wdz6es_.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp7wdz6es_.swift:18:33: error: cannot find 'palindrome_length_at_index' in scope
        let palindrome_length = palindrome_length_at_index(string: string, index: i)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~

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
    var longest_palindrome_length = 0
    var longest_palindrome_start = 0
    for i in 0..<string_length {
        let palindrome_length = palindrome_length_at_index(string: string, index: i)
        if palindrome_length > longest_palindrome_length {
            longest_palindrome_length = palindrome_length
            longest_palindrome_start = i
        }
    }
    let palindrome_end = longest_palindrome_start + longest_palindrome_length
    let prefix = string[string.startIndex..<string.index(string.startIndex, offsetBy: longest_palindrome_start)]
    let suffix = string[string.index(string.startIndex, offsetBy: palindrome_end)..<string.endIndex]
    let reversed_prefix = String(prefix.reversed())
    return reversed_prefix + String(string) + suffix
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_158_find_max, completion 89 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp772hpff3.swift:16:31: error: 'characters' is unavailable: Please use String directly
        let unique = Set(word.characters)
                              ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Write a function that accepts an array of strings.
/// The array contains different words. Return the word with maximum number
/// of unique characters. If multiple strings have maximum number of unique
/// characters, return the one which comes first in lexicographical order.
/// >>> find_max(words: ["name", "of", "string"])
/// "string"
/// >>> find_max(words: ["name", "enam", "game"])
/// "enam"
/// >>> find_max(words: ["aaaaaaa", "bb", "cc"])
/// "aaaaaaa"
func find_max(words: [String]) -> String {
    var max = 0
    var maxWord = ""
    for word in words {
        let unique = Set(word.characters)
        if unique.count > max {
            max = unique.count
            maxWord = word
        }
    }
    return maxWord
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(find_max(words: ["name", "of", "string"]) == "string")
assert(find_max(words: ["name", "enam", "game"]) == "enam")
assert(find_max(words: ["aaaaaaa", "bb", "cc"]) == "aaaaaaa")
assert(find_max(words: ["abc", "cba"]) == "abc")
assert(find_max(words: ["play", "this", "game", "of", "footbott"]) == "footbott")
assert(find_max(words: ["we", "are", "gonna", "rock"]) == "gonna")
assert(find_max(words: ["we", "are", "a", "mad", "nation"]) == "nation")
assert(find_max(words: ["this", "is", "a", "prrk"]) == "this")
assert(find_max(words: ["b"]) == "b")
assert(find_max(words: ["play", "play", "play"]) == "play")



// ----------- problem HumanEval_54_same_chars, completion 154 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpjq_9cbab.swift:16:23: error: 'characters' is unavailable: Please use String directly
    var s0_chars = s0.characters.map { String($0) }
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpjq_9cbab.swift:17:23: error: 'characters' is unavailable: Please use String directly
    var s1_chars = s1.characters.map { String($0) }
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpjq_9cbab.swift:18:14: error: value of type '[String]' has no member 'sortInPlace'
    s0_chars.sortInPlace()
    ~~~~~~~~ ^~~~~~~~~~~
/tmp/tmpjq_9cbab.swift:19:14: error: value of type '[String]' has no member 'sortInPlace'
    s1_chars.sortInPlace()
    ~~~~~~~~ ^~~~~~~~~~~

*/
/* stdout = 

*/


/// Check if two words have the same characters.
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc")
/// true
/// >>> same_chars(s0: "abcd", s1: "dddddddabc")
/// true
/// >>> same_chars(s0: "dddddddabc", s1: "abcd")
/// true
/// >>> same_chars(s0: "eabcd", s1: "dddddddabc")
/// false
/// >>> same_chars(s0: "abcd", s1: "dddddddabce")
/// false
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc")
/// false
func same_chars(s0: String, s1: String) -> Bool {
    var s0_chars = s0.characters.map { String($0) }
    var s1_chars = s1.characters.map { String($0) }
    s0_chars.sortInPlace()
    s1_chars.sortInPlace()
    return s0_chars == s1_chars
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc") == true)
assert(same_chars(s0: "abcd", s1: "dddddddabc") == true)
assert(same_chars(s0: "dddddddabc", s1: "abcd") == true)
assert(same_chars(s0: "eabcd", s1: "dddddddabc") == false)
assert(same_chars(s0: "abcd", s1: "dddddddabcf") == false)
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc") == false)
assert(same_chars(s0: "aabb", s1: "aaccc") == false)



// ----------- problem HumanEval_23_strlen, completion 182 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_23_strlen, completion 140 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_10_make_palindrome, completion 161 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpf28rnypm.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpf28rnypm.swift:21:33: error: cannot find 'longest_palindrome_length_at_index' in scope
        let palindrome_length = longest_palindrome_length_at_index(string: string, index: i)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmpf28rnypm.swift:30:18: error: 'subscript(_:)' is unavailable: cannot subscript String with an integer range, use a String.Index range instead.
    let prefix = string[prefix_start_index..<prefix_end_index]
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Swift.String:5:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript<R>(bounds: R) -> String where R : RangeExpression, R.Bound == Int { get }
           ^
/tmp/tmpf28rnypm.swift:32:22: error: 'subscript(_:)' is unavailable: cannot subscript String with an integer range, use a String.Index range instead.
    let palindrome = string[prefix_end_index..<palindrome_end_index] + prefix_reversed
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Swift.String:5:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript<R>(bounds: R) -> String where R : RangeExpression, R.Bound == Int { get }
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
    for i in 0..<string_length {
        let palindrome_length = longest_palindrome_length_at_index(string: string, index: i)
        if palindrome_length > longest_palindrome_length {
            longest_palindrome_length = palindrome_length
            longest_palindrome_index = i
        }
    }
    let palindrome_end_index = longest_palindrome_index + longest_palindrome_length
    let prefix_start_index = palindrome_end_index - longest_palindrome_length
    let prefix_end_index = longest_palindrome_index
    let prefix = string[prefix_start_index..<prefix_end_index]
    let prefix_reversed = prefix.reversed()
    let palindrome = string[prefix_end_index..<palindrome_end_index] + prefix_reversed
    return String(palindrome)
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_23_strlen, completion 19 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_10_make_palindrome, completion 91 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpj5b0ejqv.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpj5b0ejqv.swift:33:9: error: invalid redeclaration of 'i'
    var i = 0
        ^
/tmp/tmpj5b0ejqv.swift:19:9: note: 'i' previously declared here
    var i = 0
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
    let string_length_half = string_length / 2
    var palindrome_length = 0
    var palindrome_start = 0
    var palindrome_end = 0
    var i = 0
    while i < string_length_half {
        var j = 0
        while (i - j >= 0) && (i + j < string_length) && (string[string.index(string.startIndex, offsetBy: i - j)] == string[string.index(string.startIndex, offsetBy: i + j)]) {
            j += 1
        }
        if j > palindrome_length {
            palindrome_length = j
            palindrome_start = i - j + 1
            palindrome_end = i + j - 1
        }
        i += 1
    }
    var result = string
    var i = 0
    while i < palindrome_start {
        result.append(string[string.index(string.startIndex, offsetBy: palindrome_start - i - 1)])
        i += 1
    }
    return String(result)
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_118_get_closest_vowel, completion 44 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3gz5wdkb.swift:22:31: error: 'characters' is unavailable: Please use String directly
    for (index, char) in word.characters.enumerated() {
                              ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp3gz5wdkb.swift:25:37: error: 'characters' is unavailable: Please use String directly
            for i in index+1..<word.characters.count {
                                    ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = ["a", "e", "i", "o", "u"]
    let consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    var closestVowel = ""
    var closestDistance = 0
    var currentDistance = 0
    for (index, char) in word.characters.enumerated() {
        if vowels.contains(String(char).lowercased()) {
            currentDistance = 0
            for i in index+1..<word.characters.count {
                if consonants.contains(String(word[word.index(word.startIndex, offsetBy: i)]).lowercased()) {
                    currentDistance += 1
                } else {
                    break
                }
            }
            if currentDistance > closestDistance {
                closestDistance = currentDistance
                closestVowel = String(char)
            }
        }
    }
    return closestVowel
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_158_find_max, completion 122 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp772hpff3.swift:16:31: error: 'characters' is unavailable: Please use String directly
        let unique = Set(word.characters)
                              ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Write a function that accepts an array of strings.
/// The array contains different words. Return the word with maximum number
/// of unique characters. If multiple strings have maximum number of unique
/// characters, return the one which comes first in lexicographical order.
/// >>> find_max(words: ["name", "of", "string"])
/// "string"
/// >>> find_max(words: ["name", "enam", "game"])
/// "enam"
/// >>> find_max(words: ["aaaaaaa", "bb", "cc"])
/// "aaaaaaa"
func find_max(words: [String]) -> String {
    var max = 0
    var maxWord = ""
    for word in words {
        let unique = Set(word.characters)
        if unique.count > max {
            max = unique.count
            maxWord = word
        }
    }
    return maxWord
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(find_max(words: ["name", "of", "string"]) == "string")
assert(find_max(words: ["name", "enam", "game"]) == "enam")
assert(find_max(words: ["aaaaaaa", "bb", "cc"]) == "aaaaaaa")
assert(find_max(words: ["abc", "cba"]) == "abc")
assert(find_max(words: ["play", "this", "game", "of", "footbott"]) == "footbott")
assert(find_max(words: ["we", "are", "gonna", "rock"]) == "gonna")
assert(find_max(words: ["we", "are", "a", "mad", "nation"]) == "nation")
assert(find_max(words: ["this", "is", "a", "prrk"]) == "this")
assert(find_max(words: ["b"]) == "b")
assert(find_max(words: ["play", "play", "play"]) == "play")



// ----------- problem HumanEval_10_make_palindrome, completion 27 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpi97oureg.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpi97oureg.swift:21:33: error: cannot find 'longest_palindrome_length_at_index' in scope
        let palindrome_length = longest_palindrome_length_at_index(string: string, index: i)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmpi97oureg.swift:30:30: error: no exact matches in reference to operator function '+'
    return string.reduce("", +) + reversed_prefix
                             ^
Swift.RangeReplaceableCollection:2:35: note: candidate requires that 'String.Element' (aka 'Character') conform to 'Sequence' (requirement specified as 'Other' : 'Sequence')
    @inlinable public static func + <Other>(lhs: Self, rhs: Other) -> Self where Other : Sequence, Self.Element == Other.Element
                                  ^
Swift.RangeReplaceableCollection:5:35: note: candidate requires that 'String.Element' (aka 'Character') conform to 'RangeReplaceableCollection' (requirement specified as 'Other' : 'RangeReplaceableCollection')
    @inlinable public static func + <Other>(lhs: Self, rhs: Other) -> Self where Other : RangeReplaceableCollection, Self.Element == Other.Element
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
    for i in 0..<string_length {
        let palindrome_length = longest_palindrome_length_at_index(string: string, index: i)
        if palindrome_length > longest_palindrome_length {
            longest_palindrome_length = palindrome_length
            longest_palindrome_index = i
        }
    }
    let prefix_length = string_length - longest_palindrome_length
    let prefix = string[string.startIndex..<string.index(string.startIndex, offsetBy: prefix_length)]
    let reversed_prefix = String(prefix.reversed())
    return string.reduce("", +) + reversed_prefix
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_10_make_palindrome, completion 160 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpp8_kbhin.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpp8_kbhin.swift:18:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if string[i] == string[string_length - 1 - i] {
           ^~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpp8_kbhin.swift:18:25: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if string[i] == string[string_length - 1 - i] {
                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpp8_kbhin.swift:25:29: error: 'subscript(_:)' is unavailable: cannot subscript String with an integer range, use a String.Index range instead.
    let palindrome_prefix = string[0..<palindrome_prefix_length]
                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Swift.String:5:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript<R>(bounds: R) -> String where R : RangeExpression, R.Bound == Int { get }
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
    let string_length_half = string_length / 2
    var palindrome_suffix_length = 0
    for i in 0..<string_length_half {
        if string[i] == string[string_length - 1 - i] {
            palindrome_suffix_length += 1
        } else {
            break
        }
    }
    let palindrome_prefix_length = string_length - palindrome_suffix_length
    let palindrome_prefix = string[0..<palindrome_prefix_length]
    let palindrome_prefix_reversed = palindrome_prefix.reversed()
    let result = String(string) + String(palindrome_prefix_reversed)
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_11_string_xor, completion 44 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpcurtiigq.swift:8:28: error: 'characters' is unavailable: Please use String directly
    for (index, char) in a.characters.enumerated() {
                           ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpcurtiigq.swift:10:17: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        let b = b[index] == "0" ? false : true
                ^~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpcurtiigq.swift:11:21: error: binary operator '^' cannot be applied to two 'Bool' operands
        result += a ^ b ? "1" : "0"
                    ^
Swift.BinaryInteger:1:17: note: candidate requires that 'Bool' conform to 'BinaryInteger' (requirement specified as 'Self' : 'BinaryInteger')
public protocol BinaryInteger : CustomStringConvertible, Hashable, Numeric, Strideable where Self.Magnitude : BinaryInteger, Self.Magnitude == Self.Magnitude.Magnitude {
                ^

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    var result = ""
    for (index, char) in a.characters.enumerated() {
        let a = char == "0" ? false : true
        let b = b[index] == "0" ? false : true
        result += a ^ b ? "1" : "0"
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_23_strlen, completion 107 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_154_cycpattern_check, completion 28 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpu45irfyq.swift:16:15: error: 'characters' is unavailable: Please use String directly
    let a = a.characters.map { String($0) }
              ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpu45irfyq.swift:17:15: error: 'characters' is unavailable: Please use String directly
    let b = b.characters.map { String($0) }
              ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpu45irfyq.swift:23:23: warning: 'index(of:)' is deprecated: renamed to 'firstIndex(of:)'
            var i = a.index(of: b_rot[0])!
                      ^
/tmp/tmpu45irfyq.swift:23:23: note: use 'firstIndex(of:)' instead
            var i = a.index(of: b_rot[0])!
                      ^~~~~
                      firstIndex

*/
/* stdout = 

*/


/// You are given 2 words. You need to return true if the second word or any of its rotations is a substring in the first word
/// >>> cycpattern_check(a: "abcd", b: "abd")
/// false
/// >>> cycpattern_check(a: "hello", b: "ell")
/// true
/// >>> cycpattern_check(a: "whassup", b: "psus")
/// false
/// >>> cycpattern_check(a: "abab", b: "baa")
/// true
/// >>> cycpattern_check(a: "efef", b: "eeff")
/// false
/// >>> cycpattern_check(a: "himenss", b: "simen")
/// true
func cycpattern_check(a: String, b: String) -> Bool {
    let a = a.characters.map { String($0) }
    let b = b.characters.map { String($0) }
    let b_len = b.count
    let a_len = a.count
    var b_rot = b
    for _ in 0..<b_len {
        if a.contains(where: { $0 == b_rot[0] }) {
            var i = a.index(of: b_rot[0])!
            var j = 0
            while j < b_len {
                if a[i] != b_rot[j] {
                    break
                }
                i = (i + 1) % a_len
                j += 1
            }
            if j == b_len {
                return true
            }
        }
        b_rot.append(b_rot.removeFirst())
    }
    return false
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(cycpattern_check(a: "xyzw", b: "xyw") == false)
assert(cycpattern_check(a: "yello", b: "ell") == true)
assert(cycpattern_check(a: "whattup", b: "ptut") == false)
assert(cycpattern_check(a: "efef", b: "fee") == true)
assert(cycpattern_check(a: "abab", b: "aabb") == false)
assert(cycpattern_check(a: "winemtt", b: "tinem") == true)



// ----------- problem HumanEval_118_get_closest_vowel, completion 8 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpenz_0emf.swift:25:22: error: 'characters' is unavailable: Please use String directly
    for char in word.characters {
                     ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpenz_0emf.swift:19:9: warning: initialization of variable 'result' was never used; consider replacing with assignment to '_' or removing it
    var result = ""
    ~~~~^~~~~~
    _

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = ["a", "e", "i", "o", "u"]
    let consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    var result = ""
    var index = 0
    var vowelIndex = 0
    var consonantIndex = 0
    var vowelCount = 0
    var consonantCount = 0
    for char in word.characters {
        if vowels.contains(String(char).lowercased()) {
            vowelCount += 1
            vowelIndex = index
        } else if consonants.contains(String(char).lowercased()) {
            consonantCount += 1
            consonantIndex = index
        }
        index += 1
    }
    if vowelCount == 0 || consonantCount == 0 {
        return ""
    }
    if vowelIndex > consonantIndex {
        return ""
    }
    return String(word[word.index(word.startIndex, offsetBy: vowelIndex)])
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_54_same_chars, completion 124 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpchk9q9wc.swift:16:23: error: 'characters' is unavailable: Please use String directly
    var s0_chars = s0.characters.map { String($0) }
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpchk9q9wc.swift:17:23: error: 'characters' is unavailable: Please use String directly
    var s1_chars = s1.characters.map { String($0) }
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpchk9q9wc.swift:19:29: warning: 'index(of:)' is deprecated: renamed to 'firstIndex(of:)'
        if let i = s1_chars.index(of: c) {
                            ^
/tmp/tmpchk9q9wc.swift:19:29: note: use 'firstIndex(of:)' instead
        if let i = s1_chars.index(of: c) {
                            ^~~~~
                            firstIndex
/tmp/tmpchk9q9wc.swift:16:9: warning: variable 's0_chars' was never mutated; consider changing to 'let' constant
    var s0_chars = s0.characters.map { String($0) }
    ~~~ ^
    let

*/
/* stdout = 

*/


/// Check if two words have the same characters.
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc")
/// true
/// >>> same_chars(s0: "abcd", s1: "dddddddabc")
/// true
/// >>> same_chars(s0: "dddddddabc", s1: "abcd")
/// true
/// >>> same_chars(s0: "eabcd", s1: "dddddddabc")
/// false
/// >>> same_chars(s0: "abcd", s1: "dddddddabce")
/// false
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc")
/// false
func same_chars(s0: String, s1: String) -> Bool {
    var s0_chars = s0.characters.map { String($0) }
    var s1_chars = s1.characters.map { String($0) }
    for c in s0_chars {
        if let i = s1_chars.index(of: c) {
            s1_chars.remove(at: i)
        } else {
            return false
        }
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc") == true)
assert(same_chars(s0: "abcd", s1: "dddddddabc") == true)
assert(same_chars(s0: "dddddddabc", s1: "abcd") == true)
assert(same_chars(s0: "eabcd", s1: "dddddddabc") == false)
assert(same_chars(s0: "abcd", s1: "dddddddabcf") == false)
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc") == false)
assert(same_chars(s0: "aabb", s1: "aaccc") == false)



// ----------- problem HumanEval_158_find_max, completion 177 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp772hpff3.swift:16:31: error: 'characters' is unavailable: Please use String directly
        let unique = Set(word.characters)
                              ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Write a function that accepts an array of strings.
/// The array contains different words. Return the word with maximum number
/// of unique characters. If multiple strings have maximum number of unique
/// characters, return the one which comes first in lexicographical order.
/// >>> find_max(words: ["name", "of", "string"])
/// "string"
/// >>> find_max(words: ["name", "enam", "game"])
/// "enam"
/// >>> find_max(words: ["aaaaaaa", "bb", "cc"])
/// "aaaaaaa"
func find_max(words: [String]) -> String {
    var max = 0
    var maxWord = ""
    for word in words {
        let unique = Set(word.characters)
        if unique.count > max {
            max = unique.count
            maxWord = word
        }
    }
    return maxWord
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(find_max(words: ["name", "of", "string"]) == "string")
assert(find_max(words: ["name", "enam", "game"]) == "enam")
assert(find_max(words: ["aaaaaaa", "bb", "cc"]) == "aaaaaaa")
assert(find_max(words: ["abc", "cba"]) == "abc")
assert(find_max(words: ["play", "this", "game", "of", "footbott"]) == "footbott")
assert(find_max(words: ["we", "are", "gonna", "rock"]) == "gonna")
assert(find_max(words: ["we", "are", "a", "mad", "nation"]) == "nation")
assert(find_max(words: ["this", "is", "a", "prrk"]) == "this")
assert(find_max(words: ["b"]) == "b")
assert(find_max(words: ["play", "play", "play"]) == "play")



// ----------- problem HumanEval_23_strlen, completion 137 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



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



// ----------- problem HumanEval_10_make_palindrome, completion 147 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpnqenno1k.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpnqenno1k.swift:21:33: error: cannot find 'palindrome_length_at_index' in scope
        let palindrome_length = palindrome_length_at_index(string: string, index: i)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmpnqenno1k.swift:29:18: error: 'subscript(_:)' is unavailable: cannot subscript String with an integer range, use a String.Index range instead.
    let prefix = string[prefix_start..<prefix_end]
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Swift.String:5:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript<R>(bounds: R) -> String where R : RangeExpression, R.Bound == Int { get }
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
    var longest_palindrome_start = 0
    for i in 0..<string_length {
        let palindrome_length = palindrome_length_at_index(string: string, index: i)
        if palindrome_length > longest_palindrome_length {
            longest_palindrome_length = palindrome_length
            longest_palindrome_start = i
        }
    }
    let prefix_start = longest_palindrome_start - longest_palindrome_length + 1
    let prefix_end = longest_palindrome_start + 1
    let prefix = string[prefix_start..<prefix_end]
    let prefix_reversed = String(prefix.reversed())
    return String(string) + prefix_reversed
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_111_histogram, completion 151 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpj_6pedqz.swift:19:22: error: 'characters' is unavailable: Please use String directly
    for char in test.characters {
                     ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Given a string representing a space separated lowercase letters, return a dictionary
/// of the letter with the most repetition and containing the corresponding count.
/// If several letters have the same occurrence, return all of them.
/// Example:
/// >>> histogram(test: "a b c")
/// ["a" : 1, "b" : 1, "c" : 1]
/// >>> histogram(test: "a b b a")
/// ["a" : 2, "b" : 2]
/// >>> histogram(test: "a b c a b")
/// ["a" : 2, "b" : 2]
/// >>> histogram(test: "b b b b a")
/// ["b" : 4]
/// >>> histogram(test: "")
/// [:] as [String : Int]
func histogram(test: String) -> [String : Int] {
    var dict = [String : Int]()
    var max = 0
    for char in test.characters {
        if char != " " {
            if let count = dict[String(char)] {
                dict[String(char)] = count + 1
                if count + 1 > max {
                    max = count + 1
                }
            } else {
                dict[String(char)] = 1
                if 1 > max {
                    max = 1
                }
            }
        }
    }
    var result = [String : Int]()
    for (key, value) in dict {
        if value == max {
            result[key] = value
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(histogram(test: "a b b a") == ["a" : 2, "b" : 2])
assert(histogram(test: "a b c a b") == ["a" : 2, "b" : 2])
assert(histogram(test: "a b c d g") == ["a" : 1, "b" : 1, "c" : 1, "d" : 1, "g" : 1])
assert(histogram(test: "r t g") == ["r" : 1, "t" : 1, "g" : 1])
assert(histogram(test: "b b b b a") == ["b" : 4])
assert(histogram(test: "r t g") == ["r" : 1, "t" : 1, "g" : 1])
assert(histogram(test: "") == [:] as [String : Int])
assert(histogram(test: "a") == ["a" : 1])



// ----------- problem HumanEval_23_strlen, completion 119 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_23_strlen, completion 155 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_118_get_closest_vowel, completion 113 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpdwry1nu3.swift:22:22: error: 'characters' is unavailable: Please use String directly
    for char in word.characters {
                     ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpdwry1nu3.swift:24:59: error: cannot assign value of type 'String.Index' to type 'Int'
            indexOfVowel = word.characters.index(of: char)!
                           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
/tmp/tmpdwry1nu3.swift:27:63: error: cannot assign value of type 'String.Index' to type 'Int'
            indexOfConsonant = word.characters.index(of: char)!
                               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    var closestVowel = ""
    var indexOfVowel = 0
    var indexOfConsonant = 0
    for char in word.characters {
        if vowels.contains(String(char)) {
            indexOfVowel = word.characters.index(of: char)!
        }
        if consonants.contains(String(char)) {
            indexOfConsonant = word.characters.index(of: char)!
            if indexOfConsonant > indexOfVowel {
                closestVowel = String(char)
            }
        }
    }
    return closestVowel
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_10_make_palindrome, completion 188 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpkua9vjvl.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpkua9vjvl.swift:21:22: error: cannot find 'longest_palindrome_length_at' in scope
        let length = longest_palindrome_length_at(string: string, start: i)
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
    let count = string.count
    if count == 0 {
        return ""
    }
    var longest_palindrome_length = 1
    var longest_palindrome_start = 0
    for i in 0..<count {
        let length = longest_palindrome_length_at(string: string, start: i)
        if length > longest_palindrome_length {
            longest_palindrome_length = length
            longest_palindrome_start = i
        }
    }
    let prefix_start = longest_palindrome_start + longest_palindrome_length
    let prefix_end = count
    let prefix = string[string.startIndex..<string.index(string.startIndex, offsetBy: prefix_start)]
    let reversed_prefix = String(prefix.reversed())
    return string.map { String($0) }.joined() + reversed_prefix
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_54_same_chars, completion 1 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3s7m4877.swift:16:29: error: 'characters' is unavailable: Please use String directly
    var s0_chars = Array(s0.characters)
                            ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp3s7m4877.swift:17:29: error: 'characters' is unavailable: Please use String directly
    var s1_chars = Array(s1.characters)
                            ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp3s7m4877.swift:18:14: error: value of type '[String.Element]' (aka 'Array<Character>') has no member 'sortInPlace'
    s0_chars.sortInPlace()
    ~~~~~~~~ ^~~~~~~~~~~
/tmp/tmp3s7m4877.swift:19:14: error: value of type '[String.Element]' (aka 'Array<Character>') has no member 'sortInPlace'
    s1_chars.sortInPlace()
    ~~~~~~~~ ^~~~~~~~~~~

*/
/* stdout = 

*/


/// Check if two words have the same characters.
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc")
/// true
/// >>> same_chars(s0: "abcd", s1: "dddddddabc")
/// true
/// >>> same_chars(s0: "dddddddabc", s1: "abcd")
/// true
/// >>> same_chars(s0: "eabcd", s1: "dddddddabc")
/// false
/// >>> same_chars(s0: "abcd", s1: "dddddddabce")
/// false
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc")
/// false
func same_chars(s0: String, s1: String) -> Bool {
    var s0_chars = Array(s0.characters)
    var s1_chars = Array(s1.characters)
    s0_chars.sortInPlace()
    s1_chars.sortInPlace()
    return s0_chars == s1_chars
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc") == true)
assert(same_chars(s0: "abcd", s1: "dddddddabc") == true)
assert(same_chars(s0: "dddddddabc", s1: "abcd") == true)
assert(same_chars(s0: "eabcd", s1: "dddddddabc") == false)
assert(same_chars(s0: "abcd", s1: "dddddddabcf") == false)
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc") == false)
assert(same_chars(s0: "aabb", s1: "aaccc") == false)



// ----------- problem HumanEval_12_longest, completion 196 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpvz8giihz.swift:16:19: error: 'characters' is unavailable: Please use String directly
        if string.characters.count > longest.characters.count {
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpvz8giihz.swift:16:46: error: 'characters' is unavailable: Please use String directly
        if string.characters.count > longest.characters.count {
                                             ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Out of array of strings, return the longest one. Return the first one in case of multiple
/// strings of the same length. Return nil in case the input array is empty.
/// >>> longest(strings: [] as [String])
/// nil
/// >>> longest(strings: ["a", "b", "c"])
/// "a"
/// >>> longest(strings: ["a", "bb", "ccc"])
/// "ccc"
func longest(strings: [String]) -> String? {
    if strings.isEmpty {
        return nil
    }
    var longest = strings[0]
    for string in strings {
        if string.characters.count > longest.characters.count {
            longest = string
        }
    }
    return longest
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(longest(strings: [] as [String]) == nil)
assert(longest(strings: ["x", "y", "z"]) == "x")
assert(longest(strings: ["x", "yyy", "zzzz", "www", "kkkk", "abc"]) == "zzzz")



// ----------- problem HumanEval_118_get_closest_vowel, completion 145 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpqye8xyse.swift:26:22: error: 'characters' is unavailable: Please use String directly
    for char in word.characters {
                     ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpqye8xyse.swift:28:58: error: cannot assign value of type 'String.Index' to type 'Int'
            vowel_index = word.characters.index(of: char)!
                          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
/tmp/tmpqye8xyse.swift:34:62: error: cannot assign value of type 'String.Index' to type 'Int'
            consonant_index = word.characters.index(of: char)!
                              ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    var closest_vowel = ""
    var closest_vowel_index = 0
    var closest_consonant_index = 0
    var closest_consonant_index_2 = 0
    var vowel_index = 0
    var consonant_index = 0
    var consonant_index_2 = 0
    for char in word.characters {
        if vowels.contains(String(char)) {
            vowel_index = word.characters.index(of: char)!
            if vowel_index > closest_vowel_index && vowel_index < closest_consonant_index {
                closest_vowel_index = vowel_index
                closest_vowel = String(char)
            }
        } else if consonants.contains(String(char)) {
            consonant_index = word.characters.index(of: char)!
            if consonant_index > closest_consonant_index {
                closest_consonant_index_2 = closest_consonant_index
                closest_consonant_index = consonant_index
            }
        }
    }
    if closest_vowel_index > closest_consonant_index_2 && closest_vowel_index < closest_consonant_index {
        return closest_vowel
    } else {
        return ""
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
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_10_make_palindrome, completion 127 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpyq2elkaq.swift:16:34: error: 'characters' is unavailable: Please use String directly
    let reversed = String(string.characters.reversed())
                                 ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpyq2elkaq.swift:17:33: error: cannot find 'longest_common_substring' in scope
    let longest_common_suffix = longest_common_substring(string: string, other: reversed)
                                ^~~~~~~~~~~~~~~~~~~~~~~~

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
    if string.isEmpty {
        return string
    }
    let reversed = String(string.characters.reversed())
    let longest_common_suffix = longest_common_substring(string: string, other: reversed)
    let prefix = String(string.characters.dropLast(longest_common_suffix.characters.count))
    return prefix + string
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_118_get_closest_vowel, completion 84 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp_w1z9yri.swift:22:19: error: 'characters' is unavailable: Please use String directly
    for c in word.characters {
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp_w1z9yri.swift:23:19: error: value of type 'String' has no member 'containsString'
        if vowels.containsString(String(c)) {
           ~~~~~~ ^~~~~~~~~~~~~~
/tmp/tmp_w1z9yri.swift:24:27: error: value of type 'String' has no member 'containsString'
            if consonants.containsString(prev) && consonants.containsString(next) {
               ~~~~~~~~~~ ^~~~~~~~~~~~~~
/tmp/tmp_w1z9yri.swift:24:62: error: value of type 'String' has no member 'containsString'
            if consonants.containsString(prev) && consonants.containsString(next) {
                                                  ~~~~~~~~~~ ^~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = "aeiouAEIOU"
    let consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    var result = ""
    var prev = ""
    var next = ""
    for c in word.characters {
        if vowels.containsString(String(c)) {
            if consonants.containsString(prev) && consonants.containsString(next) {
                result = String(c)
                break
            }
        }
        prev = String(c)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_118_get_closest_vowel, completion 186 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpmxc9m1em.swift:22:36: error: 'characters' is unavailable: Please use String directly
    for (index, character) in word.characters.enumerated() {
                                   ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpmxc9m1em.swift:25:46: error: 'characters' is unavailable: Please use String directly
            for (index2, character2) in word.characters.enumerated() {
                                             ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    var closestVowel = ""
    var closestVowelIndex = 0
    var closestConsonantIndex = 0
    for (index, character) in word.characters.enumerated() {
        if consonants.contains(String(character)) {
            closestConsonantIndex = index
            for (index2, character2) in word.characters.enumerated() {
                if vowels.contains(String(character2)) {
                    if index2 > closestConsonantIndex && index2 > closestVowelIndex {
                        closestVowel = String(character2)
                        closestVowelIndex = index2
                    }
                }
            }
        }
    }
    return closestVowel
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_54_same_chars, completion 103 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpchk9q9wc.swift:16:23: error: 'characters' is unavailable: Please use String directly
    var s0_chars = s0.characters.map { String($0) }
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpchk9q9wc.swift:17:23: error: 'characters' is unavailable: Please use String directly
    var s1_chars = s1.characters.map { String($0) }
                      ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpchk9q9wc.swift:19:29: warning: 'index(of:)' is deprecated: renamed to 'firstIndex(of:)'
        if let i = s1_chars.index(of: c) {
                            ^
/tmp/tmpchk9q9wc.swift:19:29: note: use 'firstIndex(of:)' instead
        if let i = s1_chars.index(of: c) {
                            ^~~~~
                            firstIndex
/tmp/tmpchk9q9wc.swift:16:9: warning: variable 's0_chars' was never mutated; consider changing to 'let' constant
    var s0_chars = s0.characters.map { String($0) }
    ~~~ ^
    let

*/
/* stdout = 

*/


/// Check if two words have the same characters.
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc")
/// true
/// >>> same_chars(s0: "abcd", s1: "dddddddabc")
/// true
/// >>> same_chars(s0: "dddddddabc", s1: "abcd")
/// true
/// >>> same_chars(s0: "eabcd", s1: "dddddddabc")
/// false
/// >>> same_chars(s0: "abcd", s1: "dddddddabce")
/// false
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc")
/// false
func same_chars(s0: String, s1: String) -> Bool {
    var s0_chars = s0.characters.map { String($0) }
    var s1_chars = s1.characters.map { String($0) }
    for c in s0_chars {
        if let i = s1_chars.index(of: c) {
            s1_chars.remove(at: i)
        } else {
            return false
        }
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc") == true)
assert(same_chars(s0: "abcd", s1: "dddddddabc") == true)
assert(same_chars(s0: "dddddddabc", s1: "abcd") == true)
assert(same_chars(s0: "eabcd", s1: "dddddddabc") == false)
assert(same_chars(s0: "abcd", s1: "dddddddabcf") == false)
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc") == false)
assert(same_chars(s0: "aabb", s1: "aaccc") == false)



// ----------- problem HumanEval_154_cycpattern_check, completion 131 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplkf75sa_.swift:16:15: error: 'characters' is unavailable: Please use String directly
    let a = a.characters.map { String($0) }
              ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmplkf75sa_.swift:17:15: error: 'characters' is unavailable: Please use String directly
    let b = b.characters.map { String($0) }
              ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// You are given 2 words. You need to return true if the second word or any of its rotations is a substring in the first word
/// >>> cycpattern_check(a: "abcd", b: "abd")
/// false
/// >>> cycpattern_check(a: "hello", b: "ell")
/// true
/// >>> cycpattern_check(a: "whassup", b: "psus")
/// false
/// >>> cycpattern_check(a: "abab", b: "baa")
/// true
/// >>> cycpattern_check(a: "efef", b: "eeff")
/// false
/// >>> cycpattern_check(a: "himenss", b: "simen")
/// true
func cycpattern_check(a: String, b: String) -> Bool {
    let a = a.characters.map { String($0) }
    let b = b.characters.map { String($0) }
    let a_len = a.count
    let b_len = b.count
    if a_len < b_len {
        return false
    }
    for i in 0..<a_len {
        var j = 0
        while j < b_len && a[(i + j) % a_len] == b[j] {
            j += 1
        }
        if j == b_len {
            return true
        }
    }
    return false
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(cycpattern_check(a: "xyzw", b: "xyw") == false)
assert(cycpattern_check(a: "yello", b: "ell") == true)
assert(cycpattern_check(a: "whattup", b: "ptut") == false)
assert(cycpattern_check(a: "efef", b: "fee") == true)
assert(cycpattern_check(a: "abab", b: "aabb") == false)
assert(cycpattern_check(a: "winemtt", b: "tinem") == true)



// ----------- problem HumanEval_118_get_closest_vowel, completion 197 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpldb14ypx.swift:23:22: error: 'characters' is unavailable: Please use String directly
    for char in word.characters {
                     ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpldb14ypx.swift:24:19: error: value of type 'String' has no member 'containsString'
        if vowels.containsString(String(char)) {
           ~~~~~~ ^~~~~~~~~~~~~~
/tmp/tmpldb14ypx.swift:27:23: error: value of type 'String' has no member 'containsString'
        if consonants.containsString(String(char)) {
           ~~~~~~~~~~ ^~~~~~~~~~~~~~
/tmp/tmpldb14ypx.swift:31:44: error: value of type 'String' has no member 'distanceOf'
            let distance = word.characters.distanceOf(vowel, from: consonant)
                           ~~~~~~~~~~~~~~~ ^~~~~~~~~~

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = "aeiouAEIOU"
    let consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    var vowel = ""
    var consonant = ""
    var closest_vowel = ""
    var closest_distance = 0
    for char in word.characters {
        if vowels.containsString(String(char)) {
            vowel = String(char)
        }
        if consonants.containsString(String(char)) {
            consonant = String(char)
        }
        if vowel != "" && consonant != "" {
            let distance = word.characters.distanceOf(vowel, from: consonant)
            if distance > closest_distance {
                closest_distance = distance
                closest_vowel = vowel
            }
            vowel = ""
            consonant = ""
        }
    }
    return closest_vowel
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_11_string_xor, completion 89 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpcurtiigq.swift:8:28: error: 'characters' is unavailable: Please use String directly
    for (index, char) in a.characters.enumerated() {
                           ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpcurtiigq.swift:10:17: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        let b = b[index] == "0" ? false : true
                ^~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpcurtiigq.swift:11:21: error: binary operator '^' cannot be applied to two 'Bool' operands
        result += a ^ b ? "1" : "0"
                    ^
Swift.BinaryInteger:1:17: note: candidate requires that 'Bool' conform to 'BinaryInteger' (requirement specified as 'Self' : 'BinaryInteger')
public protocol BinaryInteger : CustomStringConvertible, Hashable, Numeric, Strideable where Self.Magnitude : BinaryInteger, Self.Magnitude == Self.Magnitude.Magnitude {
                ^

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    var result = ""
    for (index, char) in a.characters.enumerated() {
        let a = char == "0" ? false : true
        let b = b[index] == "0" ? false : true
        result += a ^ b ? "1" : "0"
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_23_strlen, completion 151 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_23_strlen, completion 54 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_48_is_palindrome, completion 155 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpkfry4xh_.swift:12:22: error: 'characters' is unavailable: Please use String directly
    let chars = text.characters
                     ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
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
    let chars = text.characters
    let count = chars.count
    if count == 0 {
        return true
    }
    for i in 0..<count/2 {
        if chars[chars.index(chars.startIndex, offsetBy: i)] != chars[chars.index(chars.startIndex, offsetBy: count-i-1)] {
            return false
        }
    }
    return true
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_23_strlen, completion 24 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_23_strlen, completion 56 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_118_get_closest_vowel, completion 166 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpp5zi0ldq.swift:22:22: error: 'characters' is unavailable: Please use String directly
    for char in word.characters {
                     ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpp5zi0ldq.swift:23:19: error: value of type 'String' has no member 'containsString'
        if vowels.containsString(String(char)) {
           ~~~~~~ ^~~~~~~~~~~~~~
/tmp/tmpp5zi0ldq.swift:26:23: error: value of type 'String' has no member 'containsString'
        if consonants.containsString(String(char)) {
           ~~~~~~~~~~ ^~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = "aeiouAEIOU"
    let consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    var vowel = ""
    var consonant = ""
    var result = ""
    for char in word.characters {
        if vowels.containsString(String(char)) {
            vowel = String(char)
        }
        if consonants.containsString(String(char)) {
            consonant = String(char)
        }
        if vowel != "" && consonant != "" {
            result = vowel
            break
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_54_same_chars, completion 90 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpdhh1b2il.swift:16:33: error: 'characters' is unavailable: Please use String directly
    var chars0 = [Character](s0.characters)
                                ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpdhh1b2il.swift:17:33: error: 'characters' is unavailable: Please use String directly
    var chars1 = [Character](s1.characters)
                                ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpdhh1b2il.swift:18:12: error: value of type '[Character]' has no member 'sortInPlace'
    chars0.sortInPlace()
    ~~~~~~ ^~~~~~~~~~~
/tmp/tmpdhh1b2il.swift:19:12: error: value of type '[Character]' has no member 'sortInPlace'
    chars1.sortInPlace()
    ~~~~~~ ^~~~~~~~~~~

*/
/* stdout = 

*/


/// Check if two words have the same characters.
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc")
/// true
/// >>> same_chars(s0: "abcd", s1: "dddddddabc")
/// true
/// >>> same_chars(s0: "dddddddabc", s1: "abcd")
/// true
/// >>> same_chars(s0: "eabcd", s1: "dddddddabc")
/// false
/// >>> same_chars(s0: "abcd", s1: "dddddddabce")
/// false
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc")
/// false
func same_chars(s0: String, s1: String) -> Bool {
    var chars0 = [Character](s0.characters)
    var chars1 = [Character](s1.characters)
    chars0.sortInPlace()
    chars1.sortInPlace()
    return chars0 == chars1
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc") == true)
assert(same_chars(s0: "abcd", s1: "dddddddabc") == true)
assert(same_chars(s0: "dddddddabc", s1: "abcd") == true)
assert(same_chars(s0: "eabcd", s1: "dddddddabc") == false)
assert(same_chars(s0: "abcd", s1: "dddddddabcf") == false)
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc") == false)
assert(same_chars(s0: "aabb", s1: "aaccc") == false)



// ----------- problem HumanEval_154_cycpattern_check, completion 159 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpnsnpbg39.swift:16:15: error: 'characters' is unavailable: Please use String directly
    let a = a.characters
              ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpnsnpbg39.swift:17:15: error: 'characters' is unavailable: Please use String directly
    let b = b.characters
              ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// You are given 2 words. You need to return true if the second word or any of its rotations is a substring in the first word
/// >>> cycpattern_check(a: "abcd", b: "abd")
/// false
/// >>> cycpattern_check(a: "hello", b: "ell")
/// true
/// >>> cycpattern_check(a: "whassup", b: "psus")
/// false
/// >>> cycpattern_check(a: "abab", b: "baa")
/// true
/// >>> cycpattern_check(a: "efef", b: "eeff")
/// false
/// >>> cycpattern_check(a: "himenss", b: "simen")
/// true
func cycpattern_check(a: String, b: String) -> Bool {
    let a = a.characters
    let b = b.characters
    var b_rotated = b
    for _ in 0..<b.count {
        b_rotated.append(b_rotated.removeFirst())
        if a.contains(b_rotated) {
            return true
        }
    }
    return false
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(cycpattern_check(a: "xyzw", b: "xyw") == false)
assert(cycpattern_check(a: "yello", b: "ell") == true)
assert(cycpattern_check(a: "whattup", b: "ptut") == false)
assert(cycpattern_check(a: "efef", b: "fee") == true)
assert(cycpattern_check(a: "abab", b: "aabb") == false)
assert(cycpattern_check(a: "winemtt", b: "tinem") == true)



// ----------- problem HumanEval_11_string_xor, completion 144 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpuyzc1ccw.swift:8:28: error: 'characters' is unavailable: Please use String directly
    for (index, char) in a.characters.enumerated() {
                           ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    var result = ""
    for (index, char) in a.characters.enumerated() {
        let a_bit = char == "1" ? 1 : 0
        let b_bit = b[b.index(b.startIndex, offsetBy: index)] == "1" ? 1 : 0
        result += String(a_bit ^ b_bit)
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_11_string_xor, completion 37 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp06andbm0.swift:8:28: error: 'characters' is unavailable: Please use String directly
    for (index, char) in a.characters.enumerated() {
                           ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmp06andbm0.swift:10:17: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        let b = b[index] == "0" ? false : true
                ^~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^

*/
/* stdout = 

*/


/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor(a: "010", b: "110")
/// "100"
func string_xor(a: String, b: String) -> String {
    var result = ""
    for (index, char) in a.characters.enumerated() {
        let a = char == "0" ? false : true
        let b = b[index] == "0" ? false : true
        result += a != b ? "1" : "0"
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_10_make_palindrome, completion 186 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpgy8i4awd.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpgy8i4awd.swift:22:28: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        let current_char = string[i]
                           ^~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpgy8i4awd.swift:24:25: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        while j >= 0 && string[j] == current_char {
                        ^~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpgy8i4awd.swift:39:27: error: 'subscript(_:)' is unavailable: cannot subscript String with an integer range, use a String.Index range instead.
    let prefix_reversed = string[prefix_start_index..<prefix_end_index].reversed()
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Swift.String:5:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript<R>(bounds: R) -> String where R : RangeExpression, R.Bound == Int { get }
           ^
/tmp/tmpgy8i4awd.swift:40:25: error: 'subscript(_:)' is unavailable: cannot subscript String with an integer range, use a String.Index range instead.
    let result = String(string[palindrome_start_index..<palindrome_end_index]) + String(prefix_reversed)
                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Swift.String:5:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript<R>(bounds: R) -> String where R : RangeExpression, R.Bound == Int { get }
           ^
/tmp/tmpg
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
    var longest_palindrome_length_at_index = [Int](repeating: 0, count: string_length)
    for i in 0..<string_length {
        let current_char = string[i]
        var j = i
        while j >= 0 && string[j] == current_char {
            longest_palindrome_length_at_index[i] += 1
            j -= 1
        }
        if longest_palindrome_length_at_index[i] > longest_palindrome_length {
            longest_palindrome_length = longest_palindrome_length_at_index[i]
            longest_palindrome_index = i
        }
    }
    let palindrome_start_index = longest_palindrome_index - longest_palindrome_length + 1
    let palindrome_end_index = longest_palindrome_index + 1
    let palindrome_length = palindrome_end_index - palindrome_start_index
    let prefix_start_index = palindrome_start_index - palindrome_length
    let prefix_end_index = palindrome_start_index
    let prefix_length = prefix_end_index - prefix_start_index
    let prefix_reversed = string[prefix_start_index..<prefix_end_index].reversed()
    let result = String(string[palindrome_start_index..<palindrome_end_index]) + String(prefix_reversed)
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_158_find_max, completion 129 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp9chzrzlt.swift:16:37: error: 'characters' is unavailable: Please use String directly
        let unique_chars = Set(word.characters)
                                    ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Write a function that accepts an array of strings.
/// The array contains different words. Return the word with maximum number
/// of unique characters. If multiple strings have maximum number of unique
/// characters, return the one which comes first in lexicographical order.
/// >>> find_max(words: ["name", "of", "string"])
/// "string"
/// >>> find_max(words: ["name", "enam", "game"])
/// "enam"
/// >>> find_max(words: ["aaaaaaa", "bb", "cc"])
/// "aaaaaaa"
func find_max(words: [String]) -> String {
    var max_word = ""
    var max_unique_chars = 0
    for word in words {
        let unique_chars = Set(word.characters)
        if unique_chars.count > max_unique_chars {
            max_unique_chars = unique_chars.count
            max_word = word
        }
    }
    return max_word
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(find_max(words: ["name", "of", "string"]) == "string")
assert(find_max(words: ["name", "enam", "game"]) == "enam")
assert(find_max(words: ["aaaaaaa", "bb", "cc"]) == "aaaaaaa")
assert(find_max(words: ["abc", "cba"]) == "abc")
assert(find_max(words: ["play", "this", "game", "of", "footbott"]) == "footbott")
assert(find_max(words: ["we", "are", "gonna", "rock"]) == "gonna")
assert(find_max(words: ["we", "are", "a", "mad", "nation"]) == "nation")
assert(find_max(words: ["this", "is", "a", "prrk"]) == "this")
assert(find_max(words: ["b"]) == "b")
assert(find_max(words: ["play", "play", "play"]) == "play")



// ----------- problem HumanEval_154_cycpattern_check, completion 56 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpq78nk1rb.swift:16:15: error: 'characters' is unavailable: Please use String directly
    let a = a.characters.map { String($0) }
              ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpq78nk1rb.swift:17:15: error: 'characters' is unavailable: Please use String directly
    let b = b.characters.map { String($0) }
              ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// You are given 2 words. You need to return true if the second word or any of its rotations is a substring in the first word
/// >>> cycpattern_check(a: "abcd", b: "abd")
/// false
/// >>> cycpattern_check(a: "hello", b: "ell")
/// true
/// >>> cycpattern_check(a: "whassup", b: "psus")
/// false
/// >>> cycpattern_check(a: "abab", b: "baa")
/// true
/// >>> cycpattern_check(a: "efef", b: "eeff")
/// false
/// >>> cycpattern_check(a: "himenss", b: "simen")
/// true
func cycpattern_check(a: String, b: String) -> Bool {
    let a = a.characters.map { String($0) }
    let b = b.characters.map { String($0) }
    let b_len = b.count
    let a_len = a.count
    if b_len > a_len {
        return false
    }
    var i = 0
    while i < a_len {
        var j = 0
        while j < b_len {
            if a[(i + j) % a_len] != b[j] {
                break
            }
            j += 1
        }
        if j == b_len {
            return true
        }
        i += 1
    }
    return false
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(cycpattern_check(a: "xyzw", b: "xyw") == false)
assert(cycpattern_check(a: "yello", b: "ell") == true)
assert(cycpattern_check(a: "whattup", b: "ptut") == false)
assert(cycpattern_check(a: "efef", b: "fee") == true)
assert(cycpattern_check(a: "abab", b: "aabb") == false)
assert(cycpattern_check(a: "winemtt", b: "tinem") == true)



// ----------- problem HumanEval_12_longest, completion 113 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpvz8giihz.swift:16:19: error: 'characters' is unavailable: Please use String directly
        if string.characters.count > longest.characters.count {
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpvz8giihz.swift:16:46: error: 'characters' is unavailable: Please use String directly
        if string.characters.count > longest.characters.count {
                                             ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Out of array of strings, return the longest one. Return the first one in case of multiple
/// strings of the same length. Return nil in case the input array is empty.
/// >>> longest(strings: [] as [String])
/// nil
/// >>> longest(strings: ["a", "b", "c"])
/// "a"
/// >>> longest(strings: ["a", "bb", "ccc"])
/// "ccc"
func longest(strings: [String]) -> String? {
    if strings.isEmpty {
        return nil
    }
    var longest = strings[0]
    for string in strings {
        if string.characters.count > longest.characters.count {
            longest = string
        }
    }
    return longest
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(longest(strings: [] as [String]) == nil)
assert(longest(strings: ["x", "y", "z"]) == "x")
assert(longest(strings: ["x", "yyy", "zzzz", "www", "kkkk", "abc"]) == "zzzz")



// ----------- problem HumanEval_54_same_chars, completion 127 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplcc7tu30.swift:16:29: error: 'characters' is unavailable: Please use String directly
    var c0 = [Character](s0.characters)
                            ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmplcc7tu30.swift:17:29: error: 'characters' is unavailable: Please use String directly
    var c1 = [Character](s1.characters)
                            ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Check if two words have the same characters.
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc")
/// true
/// >>> same_chars(s0: "abcd", s1: "dddddddabc")
/// true
/// >>> same_chars(s0: "dddddddabc", s1: "abcd")
/// true
/// >>> same_chars(s0: "eabcd", s1: "dddddddabc")
/// false
/// >>> same_chars(s0: "abcd", s1: "dddddddabce")
/// false
/// >>> same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc")
/// false
func same_chars(s0: String, s1: String) -> Bool {
    var c0 = [Character](s0.characters)
    var c1 = [Character](s1.characters)
    c0.sort()
    c1.sort()
    return c0 == c1
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddeddabc") == true)
assert(same_chars(s0: "abcd", s1: "dddddddabc") == true)
assert(same_chars(s0: "dddddddabc", s1: "abcd") == true)
assert(same_chars(s0: "eabcd", s1: "dddddddabc") == false)
assert(same_chars(s0: "abcd", s1: "dddddddabcf") == false)
assert(same_chars(s0: "eabcdzzzz", s1: "dddzzzzzzzddddabc") == false)
assert(same_chars(s0: "aabb", s1: "aaccc") == false)



// ----------- problem HumanEval_10_make_palindrome, completion 182 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmphdiq3khn.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmphdiq3khn.swift:21:41: error: cannot convert value of type 'Int' to expected argument type 'ReversedCollection<String>.Index'
        if string[i] == reversed_string[0] {
                                        ^
/tmp/tmphdiq3khn.swift:23:77: error: cannot convert value of type 'Int' to expected argument type 'ReversedCollection<String>.Index'
            while j < string_length - i && string[i + j] == reversed_string[j] {
                                                                            ^
/tmp/tmphdiq3khn.swift:31:51: error: subscript 'subscript(_:)' requires the types 'ReversedCollection<String>.Index' and 'Int' be equivalent
    return String(string) + String(reversed_string[longest_palindrome_length..<string_length])
                                                  ^
Swift.Collection:2:23: note: where 'Self.Index' = 'ReversedCollection<String>.Index', 'R.Bound' = 'Int'
    @inlinable public subscript<R>(r: R) -> Self.SubSequence where R : RangeExpression, Self.Index == R.Bound { get }
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
    let reversed_string = string.reversed()
    var longest_palindrome_length = 0
    for i in 0..<string_length {
        if string[i] == reversed_string[0] {
            var j = 1
            while j < string_length - i && string[i + j] == reversed_string[j] {
                j += 1
            }
            if j > longest_palindrome_length {
                longest_palindrome_length = j
            }
        }
    }
    return String(string) + String(reversed_string[longest_palindrome_length..<string_length])
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_10_make_palindrome, completion 54 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpaif1j6n_.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpaif1j6n_.swift:16:30: error: no exact matches in call to initializer 
    var palindrome_lengths = [Int](count: string.count, repeatedValue: 0)
                             ^
/tmp/tmpaif1j6n_.swift:16:30: note: candidate has partially matching parameter list (repeating: Int, count: Int)
    var palindrome_lengths = [Int](count: string.count, repeatedValue: 0)
                             ^
/tmp/tmpaif1j6n_.swift:16:30: note: candidate has partially matching parameter list (repeating: Int, count: Int)
    var palindrome_lengths = [Int](count: string.count, repeatedValue: 0)
                             ^
/tmp/tmpaif1j6n_.swift:24:63: error: value of type 'String.Index' has no member 'advancedBy'
                longest_palindrome_suffix = string.startIndex.advancedBy(i + 1)
                                            ~~~~~~~~~~~~~~~~~ ^~~~~~~~~~
/tmp/tmpaif1j6n_.swift:28:66: error: value of type 'Substring' has no member 'reverse'
    return string[string.startIndex..<longest_palindrome_suffix].reverse() + string
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^~~~~~~

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
    var longest_palindrome_suffix = string.endIndex
    var longest_palindrome_length = 0
    var palindrome_lengths = [Int](count: string.count, repeatedValue: 0)
    for i in 0..<string.count {
        let j = string.count - 1 - i
        let is_palindrome = string[i] == string[j] && (i == 0 || palindrome_lengths[i - 1] > 0)
        if is_palindrome {
            palindrome_lengths[i] = i == 0 ? 1 : palindrome_lengths[i - 1] + 2
            if palindrome_lengths[i] > longest_palindrome_length {
                longest_palindrome_length = palindrome_lengths[i]
                longest_palindrome_suffix = string.startIndex.advancedBy(i + 1)
            }
        }
    }
    return string[string.startIndex..<longest_palindrome_suffix].reverse() + string
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_158_find_max, completion 175 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpqf48efiw.swift:16:37: error: 'characters' is unavailable: Please use String directly
        let unique_chars = Set(word.characters)
                                    ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Write a function that accepts an array of strings.
/// The array contains different words. Return the word with maximum number
/// of unique characters. If multiple strings have maximum number of unique
/// characters, return the one which comes first in lexicographical order.
/// >>> find_max(words: ["name", "of", "string"])
/// "string"
/// >>> find_max(words: ["name", "enam", "game"])
/// "enam"
/// >>> find_max(words: ["aaaaaaa", "bb", "cc"])
/// "aaaaaaa"
func find_max(words: [String]) -> String {
    var max = 0
    var max_word = ""
    for word in words {
        let unique_chars = Set(word.characters)
        if unique_chars.count > max {
            max = unique_chars.count
            max_word = word
        }
    }
    return max_word
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(find_max(words: ["name", "of", "string"]) == "string")
assert(find_max(words: ["name", "enam", "game"]) == "enam")
assert(find_max(words: ["aaaaaaa", "bb", "cc"]) == "aaaaaaa")
assert(find_max(words: ["abc", "cba"]) == "abc")
assert(find_max(words: ["play", "this", "game", "of", "footbott"]) == "footbott")
assert(find_max(words: ["we", "are", "gonna", "rock"]) == "gonna")
assert(find_max(words: ["we", "are", "a", "mad", "nation"]) == "nation")
assert(find_max(words: ["this", "is", "a", "prrk"]) == "this")
assert(find_max(words: ["b"]) == "b")
assert(find_max(words: ["play", "play", "play"]) == "play")



// ----------- problem HumanEval_23_strlen, completion 80 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_118_get_closest_vowel, completion 147 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpbaifu8r1.swift:22:22: error: 'characters' is unavailable: Please use String directly
    for char in word.characters {
                     ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpbaifu8r1.swift:23:19: error: value of type 'String' has no member 'containsString'
        if vowels.containsString(String(char)) {
           ~~~~~~ ^~~~~~~~~~~~~~
/tmp/tmpbaifu8r1.swift:26:23: error: value of type 'String' has no member 'containsString'
        if consonants.containsString(String(char)) {
           ~~~~~~~~~~ ^~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = "aeiouAEIOU"
    let consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    var vowel = ""
    var consonant = ""
    var closest_vowel = ""
    for char in word.characters {
        if vowels.containsString(String(char)) {
            vowel = String(char)
        }
        if consonants.containsString(String(char)) {
            consonant = String(char)
        }
        if vowel != "" && consonant != "" {
            closest_vowel = vowel
            break
        }
    }
    return closest_vowel
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_23_strlen, completion 21 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_23_strlen, completion 170 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_10_make_palindrome, completion 114 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplu3udwfb.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters.map { String($0) }
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmplu3udwfb.swift:16:26: error: cannot find 'longest_palindromic_suffix' in scope
    let longest_suffix = longest_palindromic_suffix(string: string)
                         ^~~~~~~~~~~~~~~~~~~~~~~~~~

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
    let reversed_string = reversed.joined(separator: "")
    let longest_suffix = longest_palindromic_suffix(string: string)
    let longest_suffix_string = longest_suffix.joined(separator: "")
    let prefix = string.prefix(string.count - longest_suffix.count)
    let prefix_string = prefix.joined(separator: "")
    let reversed_prefix = prefix.reversed()
    let reversed_prefix_string = reversed_prefix.joined(separator: "")
    return string.joined(separator: "") + reversed_prefix_string
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_118_get_closest_vowel, completion 17 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpoqsm4zn7.swift:22:22: error: 'characters' is unavailable: Please use String directly
    for char in word.characters {
                     ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpoqsm4zn7.swift:23:19: error: value of type 'String' has no member 'containsString'
        if vowels.containsString(String(char)) {
           ~~~~~~ ^~~~~~~~~~~~~~
/tmp/tmpoqsm4zn7.swift:26:23: error: value of type 'String' has no member 'containsString'
        if consonants.containsString(String(char)) {
           ~~~~~~~~~~ ^~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = "aeiouAEIOU"
    let consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    var vowel = ""
    var consonant = ""
    var result = ""
    for char in word.characters {
        if vowels.containsString(String(char)) {
            vowel = String(char)
        }
        if consonants.containsString(String(char)) {
            consonant = String(char)
        }
        if vowel != "" && consonant != "" {
            result = vowel
            vowel = ""
            consonant = ""
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_23_strlen, completion 48 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_158_find_max, completion 114 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp9chzrzlt.swift:16:37: error: 'characters' is unavailable: Please use String directly
        let unique_chars = Set(word.characters)
                                    ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Write a function that accepts an array of strings.
/// The array contains different words. Return the word with maximum number
/// of unique characters. If multiple strings have maximum number of unique
/// characters, return the one which comes first in lexicographical order.
/// >>> find_max(words: ["name", "of", "string"])
/// "string"
/// >>> find_max(words: ["name", "enam", "game"])
/// "enam"
/// >>> find_max(words: ["aaaaaaa", "bb", "cc"])
/// "aaaaaaa"
func find_max(words: [String]) -> String {
    var max_word = ""
    var max_unique_chars = 0
    for word in words {
        let unique_chars = Set(word.characters)
        if unique_chars.count > max_unique_chars {
            max_unique_chars = unique_chars.count
            max_word = word
        }
    }
    return max_word
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(find_max(words: ["name", "of", "string"]) == "string")
assert(find_max(words: ["name", "enam", "game"]) == "enam")
assert(find_max(words: ["aaaaaaa", "bb", "cc"]) == "aaaaaaa")
assert(find_max(words: ["abc", "cba"]) == "abc")
assert(find_max(words: ["play", "this", "game", "of", "footbott"]) == "footbott")
assert(find_max(words: ["we", "are", "gonna", "rock"]) == "gonna")
assert(find_max(words: ["we", "are", "a", "mad", "nation"]) == "nation")
assert(find_max(words: ["this", "is", "a", "prrk"]) == "this")
assert(find_max(words: ["b"]) == "b")
assert(find_max(words: ["play", "play", "play"]) == "play")



// ----------- problem HumanEval_23_strlen, completion 69 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



// ----------- problem HumanEval_10_make_palindrome, completion 124 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpo1rmw045.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpo1rmw045.swift:18:33: error: cannot find 'longest_palindrome_length_at_index' in scope
        let palindrome_length = longest_palindrome_length_at_index(string: string, index: i)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmpo1rmw045.swift:26:18: error: 'subscript(_:)' is unavailable: cannot subscript String with an integer range, use a String.Index range instead.
    let prefix = string[prefix_start..<prefix_end]
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Swift.String:5:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript<R>(bounds: R) -> String where R : RangeExpression, R.Bound == Int { get }
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
    var longest_palindrome_length = 0
    var longest_palindrome_index = 0
    for i in 0..<string_length {
        let palindrome_length = longest_palindrome_length_at_index(string: string, index: i)
        if palindrome_length > longest_palindrome_length {
            longest_palindrome_length = palindrome_length
            longest_palindrome_index = i
        }
    }
    let prefix_start = longest_palindrome_index - longest_palindrome_length + 1
    let prefix_end = longest_palindrome_index + 1
    let prefix = string[prefix_start..<prefix_end]
    let reversed_prefix = prefix.reversed()
    return String(string) + String(reversed_prefix)
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_118_get_closest_vowel, completion 73 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpdnlyygjq.swift:21:22: error: 'characters' is unavailable: Please use String directly
    for char in word.characters {
                     ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpdnlyygjq.swift:22:19: error: value of type 'String' has no member 'containsString'
        if vowels.containsString(String(char)) {
           ~~~~~~ ^~~~~~~~~~~~~~
/tmp/tmpdnlyygjq.swift:25:23: error: value of type 'String' has no member 'containsString'
        if consonants.containsString(String(char)) {
           ~~~~~~~~~~ ^~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = "aeiouAEIOU"
    let consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    var vowel = ""
    var consonant = ""
    for char in word.characters {
        if vowels.containsString(String(char)) {
            vowel = String(char)
        }
        if consonants.containsString(String(char)) {
            consonant = String(char)
        }
        if vowel != "" && consonant != "" {
            return vowel
        }
    }
    return ""
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_12_longest, completion 43 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpvz8giihz.swift:16:19: error: 'characters' is unavailable: Please use String directly
        if string.characters.count > longest.characters.count {
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpvz8giihz.swift:16:46: error: 'characters' is unavailable: Please use String directly
        if string.characters.count > longest.characters.count {
                                             ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Out of array of strings, return the longest one. Return the first one in case of multiple
/// strings of the same length. Return nil in case the input array is empty.
/// >>> longest(strings: [] as [String])
/// nil
/// >>> longest(strings: ["a", "b", "c"])
/// "a"
/// >>> longest(strings: ["a", "bb", "ccc"])
/// "ccc"
func longest(strings: [String]) -> String? {
    if strings.isEmpty {
        return nil
    }
    var longest = strings[0]
    for string in strings {
        if string.characters.count > longest.characters.count {
            longest = string
        }
    }
    return longest
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(longest(strings: [] as [String]) == nil)
assert(longest(strings: ["x", "y", "z"]) == "x")
assert(longest(strings: ["x", "yyy", "zzzz", "www", "kkkk", "abc"]) == "zzzz")



// ----------- problem HumanEval_10_make_palindrome, completion 145 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpfipp68re.swift:13:25: error: 'characters' is unavailable: Please use String directly
    let string = string.characters
                        ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpfipp68re.swift:19:12: error: cannot find 'is_palindrome' in scope
        if is_palindrome(string: string, start: 0, end: i) {
           ^~~~~~~~~~~~~
/tmp/tmpfipp68re.swift:24:34: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        palindrome_prefix.append(string[string_length - i - 1])
                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
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
    var palindrome_suffix = [Character]()
    var palindrome_prefix = [Character]()
    var palindrome_suffix_length = 0
    for i in 0..<string_length {
        if is_palindrome(string: string, start: 0, end: i) {
            palindrome_suffix_length = i
        }
    }
    for i in 0..<string_length {
        palindrome_prefix.append(string[string_length - i - 1])
    }
    for i in 0..<string_length - palindrome_suffix_length {
        palindrome_suffix.append(palindrome_prefix[i])
    }
    return String(string + palindrome_suffix)
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_118_get_closest_vowel, completion 93 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpoqsm4zn7.swift:22:22: error: 'characters' is unavailable: Please use String directly
    for char in word.characters {
                     ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpoqsm4zn7.swift:23:19: error: value of type 'String' has no member 'containsString'
        if vowels.containsString(String(char)) {
           ~~~~~~ ^~~~~~~~~~~~~~
/tmp/tmpoqsm4zn7.swift:26:23: error: value of type 'String' has no member 'containsString'
        if consonants.containsString(String(char)) {
           ~~~~~~~~~~ ^~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = "aeiouAEIOU"
    let consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    var vowel = ""
    var consonant = ""
    var result = ""
    for char in word.characters {
        if vowels.containsString(String(char)) {
            vowel = String(char)
        }
        if consonants.containsString(String(char)) {
            consonant = String(char)
        }
        if vowel != "" && consonant != "" {
            result = vowel
            vowel = ""
            consonant = ""
        }
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_155_even_odd_count, completion 78 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpy5tc8x_w.swift:11:30: error: 'characters' is unavailable: Please use String directly
    for digit in String(num).characters {
                             ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Given an integer. return a tuple that has the number of even and odd digits respectively.
/// Example:
/// >>> even_odd_count(num: -12)
/// (1, 1)
/// >>> even_odd_count(num: 123)
/// (1, 2)
func even_odd_count(num: Int) -> (Int, Int) {
    var evenCount = 0
    var oddCount = 0
    for digit in String(num).characters {
        if Int(String(digit))! % 2 == 0 {
            evenCount += 1
        } else {
            oddCount += 1
        }
    }
    return (evenCount, oddCount)
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(even_odd_count(num: 7) == (0, 1))
assert(even_odd_count(num: -78) == (1, 1))
assert(even_odd_count(num: 3452) == (2, 2))
assert(even_odd_count(num: 346211) == (3, 3))
assert(even_odd_count(num: -345821) == (3, 3))
assert(even_odd_count(num: -2) == (1, 0))
assert(even_odd_count(num: -45347) == (2, 3))
assert(even_odd_count(num: 0) == (1, 0))



// ----------- problem HumanEval_118_get_closest_vowel, completion 107 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpakofvbuf.swift:22:22: error: 'characters' is unavailable: Please use String directly
    for char in word.characters {
                     ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^
/tmp/tmpakofvbuf.swift:23:19: error: value of type 'String' has no member 'containsString'
        if vowels.containsString(String(char)) {
           ~~~~~~ ^~~~~~~~~~~~~~
/tmp/tmpakofvbuf.swift:26:23: error: value of type 'String' has no member 'containsString'
        if consonants.containsString(String(char)) {
           ~~~~~~~~~~ ^~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = "aeiouAEIOU"
    let consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    var vowel = ""
    var consonant = ""
    var closest_vowel = ""
    for char in word.characters {
        if vowels.containsString(String(char)) {
            vowel = String(char)
        }
        if consonants.containsString(String(char)) {
            consonant = String(char)
        }
        if vowel != "" && consonant != "" {
            closest_vowel = vowel
            vowel = ""
            consonant = ""
        }
    }
    return closest_vowel
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_23_strlen, completion 179 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpykue75u1.swift:8:19: error: 'characters' is unavailable: Please use String directly
    return string.characters.count
                  ^~~~~~~~~~
Swift.String:5:16: note: 'characters' was obsoleted in Swift 5.0
    public var characters: String { get set }
               ^

*/
/* stdout = 

*/


/// Return length of given string
/// >>> strlen(string: "")
/// 0
/// >>> strlen(string: "abc")
/// 3
func strlen(string: String) -> Int {
    return string.characters.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)



