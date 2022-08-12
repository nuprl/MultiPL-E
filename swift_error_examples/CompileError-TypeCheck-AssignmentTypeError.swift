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



// ----------- problem HumanEval_118_get_closest_vowel, completion 181 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp_382kzqp.swift:28:33: error: cannot assign value of type 'String.Index?' to type 'Int'
            vowelIndex = vowels.index(of: character)
                         ~~~~~~~^~~~~~~~~~~~~~~~~~~~
/tmp/tmp_382kzqp.swift:29:27: warning: comparing non-optional value of type 'Int' to 'nil' always returns true
            if vowelIndex != nil {
               ~~~~~~~~~~ ^  ~~~
/tmp/tmp_382kzqp.swift:34:41: error: cannot assign value of type 'String.Index?' to type 'Int'
            consonantIndex = consonants.index(of: character)
                             ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~
/tmp/tmp_382kzqp.swift:35:31: warning: comparing non-optional value of type 'Int' to 'nil' always returns true
            if consonantIndex != nil {
               ~~~~~~~~~~~~~~ ^  ~~~

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
    let vowels = "AEIOUaeiou"
    let consonants = "BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz"
    var closestVowel = ""
    var vowelIndex = 0
    var consonantIndex = 0
    var vowelFound = false
    var consonantFound = false
    var index = word.count - 1
    while index >= 0 {
        let character = word[word.index(word.startIndex, offsetBy: index)]
        if !vowelFound {
            vowelIndex = vowels.index(of: character)
            if vowelIndex != nil {
                vowelFound = true
            }
        }
        if !consonantFound {
            consonantIndex = consonants.index(of: character)
            if consonantIndex != nil {
                consonantFound = true
            }
        }
        if vowelFound && consonantFound {
            closestVowel = String(character)
            break
        }
        index -= 1
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



// ----------- problem HumanEval_118_get_closest_vowel, completion 195 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmptwar4nye.swift:23:26: error: cannot assign value of type 'String.Index' to type 'Int'
            index = word.index(after: i)
                    ~~~~~^~~~~~~~~~~~~~~
/tmp/tmptwar4nye.swift:28:28: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if vowels.contains(word[i]) {
                           ^~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmptwar4nye.swift:29:28: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            vowel = String(word[i])
                           ^~~~~~~
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
    let vowels = "aeiouAEIOU"
    let consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    var vowel = ""
    var index = 0
    for i in word.indices.reversed() {
        if consonants.contains(word[i]) {
            index = word.index(after: i)
            break
        }
    }
    for i in index..<word.count {
        if vowels.contains(word[i]) {
            vowel = String(word[i])
            break
        }
    }
    return vowel
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_10_make_palindrome, completion 17 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwybc3p_6.swift:24:19: error: cannot assign value of type '()' to type 'Int'
            l = r = i
                ~~^~~

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
    let reversed = String(string.reversed())
    let string_length = string.count
    let reversed_length = reversed.count
    let max_length = string_length + reversed_length
    let string_array = Array(string)
    let reversed_array = Array(reversed)
    var z = [Int](repeating: 0, count: max_length)
    var l = 0
    var r = 0
    for i in 1..<max_length {
        if i > r {
            l = r = i
            while r < max_length && string_array[r - l] == reversed_array[r] {
                r += 1
            }
            z[i] = r - l
            r -= 1
        } else {
            let k = i - l
            if z[k] < r - i + 1 {
                z[i] = z[k]
            } else {
                l = i
                while r < max_length && string_array[r - l] == reversed_array[r] {
                    r += 1
                }
                z[i] = r - l
                r -= 1
            }
        }
    }
    var max_z = 0
    var max_z_index = 0
    for i in string_length..<max_length {
        if z[i] > max_z {
            max_z = z[i]
            max_z_index = i
        }
    }
    let prefix = String(string_array[0..<(string_length - max_z)])
    let reversed_prefix = String(prefix.reversed())
    return string + reversed_prefix
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



