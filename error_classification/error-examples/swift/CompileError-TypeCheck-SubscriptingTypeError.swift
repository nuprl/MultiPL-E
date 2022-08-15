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



// ----------- problem HumanEval_10_make_palindrome, completion 77 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpqdqvqw5z.swift:24:50: error: subscript 'subscript(_:)' requires the types 'ReversedCollection<[String.Element]>.Index' (aka 'ReversedCollection<Array<Character>>.Index') and 'Int' be equivalent
        let suffix = String(string_array_reversed[0..<prefix_length])
                                                 ^
Swift.Collection:2:23: note: where 'Self.Index' = 'ReversedCollection<[String.Element]>.Index' (aka 'ReversedCollection<Array<Character>>.Index'), 'R.Bound' = 'Int'
    @inlinable public subscript<R>(r: R) -> Self.SubSequence where R : RangeExpression, Self.Index == R.Bound { get }
                      ^
/tmp/tmpqdqvqw5z.swift:33:55: error: subscript 'subscript(_:)' requires the types 'ReversedCollection<[String.Element]>.Index' (aka 'ReversedCollection<Array<Character>>.Index') and 'Int' be equivalent
    let prefix_reversed = String(string_array_reversed[0..<prefix_length])
                                                      ^
Swift.Collection:2:23: note: where 'Self.Index' = 'ReversedCollection<[String.Element]>.Index' (aka 'ReversedCollection<Array<Character>>.Index'), 'R.Bound' = 'Int'
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
    let string_length = string.count
    if string_length == 0 {
        return ""
    }
    let string_array = Array(string)
    let string_array_reversed = string_array.reversed()
    var longest_palindrome_length = 0
    var longest_palindrome_index = 0
    for i in 0..<string_length {
        let prefix_length = string_length - i
        let prefix = String(string_array[0..<prefix_length])
        let suffix = String(string_array_reversed[0..<prefix_length])
        if prefix == suffix {
            longest_palindrome_length = prefix_length
            longest_palindrome_index = i
            break
        }
    }
    let prefix_length = string_length - longest_palindrome_index
    let prefix = String(string_array[0..<prefix_length])
    let prefix_reversed = String(string_array_reversed[0..<prefix_length])
    return string + prefix_reversed
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_10_make_palindrome, completion 46 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpohaw94hp.swift:24:59: error: subscript 'subscript(_:)' requires the types 'ReversedCollection<[String.Element]>.Index' (aka 'ReversedCollection<Array<Character>>.Index') and 'Int' be equivalent
        let prefix_reversed = String(string_array_reversed[0..<prefix_length])
                                                          ^
Swift.Collection:2:23: note: where 'Self.Index' = 'ReversedCollection<[String.Element]>.Index' (aka 'ReversedCollection<Array<Character>>.Index'), 'R.Bound' = 'Int'
    @inlinable public subscript<R>(r: R) -> Self.SubSequence where R : RangeExpression, Self.Index == R.Bound { get }
                      ^
/tmp/tmpohaw94hp.swift:31:55: error: subscript 'subscript(_:)' requires the types 'ReversedCollection<[String.Element]>.Index' (aka 'ReversedCollection<Array<Character>>.Index') and 'Int' be equivalent
    let prefix_reversed = String(string_array_reversed[0..<prefix_length])
                                                      ^
Swift.Collection:2:23: note: where 'Self.Index' = 'ReversedCollection<[String.Element]>.Index' (aka 'ReversedCollection<Array<Character>>.Index'), 'R.Bound' = 'Int'
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
    let string = string.lowercased()
    let string_length = string.count
    if string_length == 0 {
        return ""
    }
    let string_array = Array(string)
    let string_array_reversed = string_array.reversed()
    var longest_palindrome_length = 0
    for i in 0..<string_length {
        let prefix_length = i + 1
        let prefix = String(string_array[0..<prefix_length])
        let prefix_reversed = String(string_array_reversed[0..<prefix_length])
        if prefix == prefix_reversed {
            longest_palindrome_length = prefix_length
        }
    }
    let prefix_length = string_length - longest_palindrome_length
    let prefix = String(string_array[0..<prefix_length])
    let prefix_reversed = String(string_array_reversed[0..<prefix_length])
    return string + prefix_reversed
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_10_make_palindrome, completion 194 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3evsxqrv.swift:23:56: error: subscript 'subscript(_:)' requires the types 'ReversedCollection<[String.Element]>.Index' (aka 'ReversedCollection<Array<Character>>.Index') and 'Int' be equivalent
        let postfix = String(string_characters_reversed[0..<prefix_length])
                                                       ^
Swift.Collection:2:23: note: where 'Self.Index' = 'ReversedCollection<[String.Element]>.Index' (aka 'ReversedCollection<Array<Character>>.Index'), 'R.Bound' = 'Int'
    @inlinable public subscript<R>(r: R) -> Self.SubSequence where R : RangeExpression, Self.Index == R.Bound { get }
                      ^
/tmp/tmp3evsxqrv.swift:31:60: error: subscript 'subscript(_:)' requires the types 'ReversedCollection<[String.Element]>.Index' (aka 'ReversedCollection<Array<Character>>.Index') and 'Int' be equivalent
    let prefix_reversed = String(string_characters_reversed[0..<prefix_length])
                                                           ^
Swift.Collection:2:23: note: where 'Self.Index' = 'ReversedCollection<[String.Element]>.Index' (aka 'ReversedCollection<Array<Character>>.Index'), 'R.Bound' = 'Int'
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
    if string.isEmpty {
        return string
    }
    let string_length = string.count
    let string_characters = Array(string)
    let string_characters_reversed = string_characters.reversed()
    var longest_palindrome_length = 0
    for i in 0..<string_length {
        let prefix_length = string_length - i
        let prefix = String(string_characters[0..<prefix_length])
        let postfix = String(string_characters_reversed[0..<prefix_length])
        if prefix == postfix {
            longest_palindrome_length = prefix_length
            break
        }
    }
    let prefix_length = string_length - longest_palindrome_length
    let prefix = String(string_characters[0..<prefix_length])
    let prefix_reversed = String(string_characters_reversed[0..<prefix_length])
    return string + prefix_reversed
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_10_make_palindrome, completion 9 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpi9x7apuf.swift:23:66: error: subscript 'subscript(_:)' requires the types 'ReversedCollection<[String.Element]>.Index' (aka 'ReversedCollection<Array<Character>>.Index') and 'Int' be equivalent
        let reversed_string_suffix = String(reversed_string_array[i..<string_length])
                                                                 ^
Swift.Collection:2:23: note: where 'Self.Index' = 'ReversedCollection<[String.Element]>.Index' (aka 'ReversedCollection<Array<Character>>.Index'), 'R.Bound' = 'Int'
    @inlinable public subscript<R>(r: R) -> Self.SubSequence where R : RangeExpression, Self.Index == R.Bound { get }
                      ^
/tmp/tmpi9x7apuf.swift:30:62: error: subscript 'subscript(_:)' requires the types 'ReversedCollection<[String.Element]>.Index' (aka 'ReversedCollection<Array<Character>>.Index') and 'Int' be equivalent
    let reversed_string_prefix = String(reversed_string_array[0..<string_length - longest_palindrome_suffix_length])
                                                             ^
Swift.Collection:2:23: note: where 'Self.Index' = 'ReversedCollection<[String.Element]>.Index' (aka 'ReversedCollection<Array<Character>>.Index'), 'R.Bound' = 'Int'
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
    let string = string.lowercased()
    let string_length = string.count
    if string_length == 0 {
        return ""
    }
    let string_array = Array(string)
    let reversed_string_array = string_array.reversed()
    var longest_palindrome_suffix_length = 0
    for i in 0..<string_length {
        let string_suffix = String(string_array[i..<string_length])
        let reversed_string_suffix = String(reversed_string_array[i..<string_length])
        if string_suffix == reversed_string_suffix {
            longest_palindrome_suffix_length = string_length - i
            break
        }
    }
    let string_prefix = String(string_array[0..<string_length - longest_palindrome_suffix_length])
    let reversed_string_prefix = String(reversed_string_array[0..<string_length - longest_palindrome_suffix_length])
    return string + reversed_string_prefix
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_10_make_palindrome, completion 109 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3pk5zdwr.swift:38:35: error: subscript 'subscript(_:)' requires the types 'ReversedCollection<[String.Element]>.Index' (aka 'ReversedCollection<Array<Character>>.Index') and 'Int' be equivalent
    return String(string + reverse[index + 1..<length])
                                  ^
Swift.Collection:2:23: note: where 'Self.Index' = 'ReversedCollection<[String.Element]>.Index' (aka 'ReversedCollection<Array<Character>>.Index'), 'R.Bound' = 'Int'
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
    let string = Array(string)
    let length = string.count
    let reverse = string.reversed()
    var lps = [Int](repeating: 0, count: length)
    var i = 1
    var j = 0
    while i < length {
        if string[i] == string[j] {
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
    var index = length - 1
    while index > 0 {
        if lps[index] == 0 {
            break
        }
        index = lps[index] - 1
    }
    return String(string + reverse[index + 1..<length])
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_10_make_palindrome, completion 57 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6238kjcs.swift:27:48: error: subscript 'subscript(_:)' requires the types 'ReversedCollection<[String.Element]>.Index' (aka 'ReversedCollection<Array<Character>>.Index') and 'Int' be equivalent
        let prefix = string_characters_reversed[prefix_start_index...prefix_end_index]
                                               ^
Swift.Collection:2:23: note: where 'Self.Index' = 'ReversedCollection<[String.Element]>.Index' (aka 'ReversedCollection<Array<Character>>.Index'), 'R.Bound' = 'Int'
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
    let string_length = string.count
    if string_length == 0 {
        return ""
    }
    let string_characters = Array(string)
    let string_characters_reversed = string_characters.reversed()
    var longest_palindrome_suffix_length = 0
    var longest_palindrome_suffix_end_index = 0
    for i in 0..<string_length {
        let suffix_start_index = string_length - i - 1
        let suffix_end_index = string_length - 1
        let prefix_start_index = 0
        let prefix_end_index = i
        let suffix = string_characters[suffix_start_index...suffix_end_index]
        let prefix = string_characters_reversed[prefix_start_index...prefix_end_index]
        if suffix == prefix {
            longest_palindrome_suffix_length = i + 1
            longest_palindrome_suffix_end_index = suffix_end_index
        }
    }
    let prefix_start_index = 0
    let prefix_end_index = string_length - longest_palindrome_suffix_length - 1
    let prefix = string_characters[prefix_start_index...prefix_end_index]
    let prefix_reversed = prefix.reversed()
    let palindrome = string + String(prefix_reversed)
    return palindrome
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



