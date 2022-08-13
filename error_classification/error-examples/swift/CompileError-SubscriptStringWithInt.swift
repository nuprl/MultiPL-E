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



// ----------- problem HumanEval_119_match_parens, completion 7 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpqjsyulbz.swift:23:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if str[i] == "(" {
           ^~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpqjsyulbz.swift:16:9: warning: variable 'lst' was never mutated; consider changing to 'let' constant
    var lst = lst
    ~~~ ^
    let

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var str = ""
    for i in 0..<lst.count {
        str += lst[i]
    }
    var count = 0
    for i in 0..<str.count {
        if str[i] == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            return "No"
        }
    }
    if count == 0 {
        return "Yes"
    } else {
        return "No"
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
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_119_match_parens, completion 140 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpt2m95zu3.swift:31:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if str[i] == "(" {
           ^~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var str = ""
    var count = 0
    for i in 0..<lst.count {
        if lst[i].count == 0 {
            lst.remove(at: i)
        }
    }
    if lst.count == 1 {
        return "Yes"
    }
    for i in 0..<lst.count {
        str += lst[i]
    }
    for i in 0..<str.count {
        if str[i] == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            return "No"
        }
    }
    if count == 0 {
        return "Yes"
    }
    return "No"
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_118_get_closest_vowel, completion 42 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpf1kpzyey.swift:24:36: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
                if vowels.contains(word[i]) {
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
    var closestVowel = ""
    var closestDistance = word.count
    for (index, char) in word.enumerated() {
        if vowels.contains(char) {
            var distance = 0
            for i in index..<word.count {
                if vowels.contains(word[i]) {
                    break
                }
                distance += 1
            }
            if distance < closestDistance {
                closestDistance = distance
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



// ----------- problem HumanEval_119_match_parens, completion 9 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpqjsyulbz.swift:23:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if str[i] == "(" {
           ^~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpqjsyulbz.swift:16:9: warning: variable 'lst' was never mutated; consider changing to 'let' constant
    var lst = lst
    ~~~ ^
    let

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var str = ""
    for i in 0..<lst.count {
        str += lst[i]
    }
    var count = 0
    for i in 0..<str.count {
        if str[i] == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            return "No"
        }
    }
    if count == 0 {
        return "Yes"
    } else {
        return "No"
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
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_67_fruit_distribution, completion 98 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp57auewqi.swift:22:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if s[i] == " " {
           ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp57auewqi.swift:24:19: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        } else if s[i] == "a" {
                  ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp57auewqi.swift:26:19: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        } else if s[i] == "o" {
                  ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp57auewqi.swift:28:19: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        } else if s[i] == "n" {
                  ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp57auewqi.swift:30:19: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        } else if s[i] == "d" {
                  ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp57auewqi.swift:33:34: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            num = num * 10 + Int(s[i].asciiValue!) - 48
                                 ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    // Write your code here
    var sum = 0
    var num = 0
    var i = 0
    while i < s.count {
        if s[i] == " " {
            i += 1
        } else if s[i] == "a" {
            i += 6
        } else if s[i] == "o" {
            i += 7
        } else if s[i] == "n" {
            i += 3
        } else if s[i] == "d" {
            i += 1
        } else {
            num = num * 10 + Int(s[i].asciiValue!) - 48
            i += 1
        }
    }
    sum = n - num
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
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_119_match_parens, completion 141 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplkxfsp_6.swift:23:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if str[i] == "(" {
           ^~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmplkxfsp_6.swift:16:9: warning: variable 'lst' was never mutated; consider changing to 'let' constant
    var lst = lst
    ~~~ ^
    let

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var str = ""
    var count = 0
    for i in 0..<lst.count {
        str += lst[i]
    }
    for i in 0..<str.count {
        if str[i] == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            return "No"
        }
    }
    if count == 0 {
        return "Yes"
    } else {
        return "No"
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
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_113_odd_count, completion 69 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpnisx88ub.swift:15:27: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            if Int(String(lst[i][j]))! % 2 != 0 {
                          ^~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
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
        var count = 0
        for j in 0..<lst[i].count {
            if Int(String(lst[i][j]))! % 2 != 0 {
                count += 1
            }
        }
        result.append("the number of odd elements \(count)n the str\(count)ng \(count) of the \(count)nput.")
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



// ----------- problem HumanEval_67_fruit_distribution, completion 154 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpkk25d5m3.swift:23:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if s[i] == " " {
           ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpkk25d5m3.swift:25:31: error: no exact matches in call to subscript 
                apples = Int(s[i+1])!
                              ^
Swift.String:3:12: note: candidate expects value of type 'Range<String.Index>' for parameter #1 (got 'Int')
    public subscript(r: Range<String.Index>) -> Substring { get }
           ^
Swift.Collection:3:23: note: candidate expects value of type '(UnboundedRange_) -> ()' for parameter #1 (got 'Int')
    @inlinable public subscript(x: (UnboundedRange_) -> ()) -> Self.SubSequence { get }
                      ^
/tmp/tmpkk25d5m3.swift:27:32: error: no exact matches in call to subscript 
                oranges = Int(s[i+1])!
                               ^
Swift.String:3:12: note: candidate expects value of type 'Range<String.Index>' for parameter #1 (got 'Int')
    public subscript(r: Range<String.Index>) -> Substring { get }
           ^
Swift.Collection:3:23: note: candidate expects value of type '(UnboundedRange_) -> ()' for parameter #1 (got 'Int')
    @inlinable public subscript(x: (UnboundedRange_) -> ()) -> Self.SubSequence { get }
                      ^
/tmp/tmpkk25d5m3.swift:31:28: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            temp += String(s[i])
                           ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    var apples = 0
    var oranges = 0
    var mangoes = 0
    var temp = ""
    var i = 0
    while i < s.count {
        if s[i] == " " {
            if temp == "apples" {
                apples = Int(s[i+1])!
            } else if temp == "oranges" {
                oranges = Int(s[i+1])!
            }
            temp = ""
        } else {
            temp += String(s[i])
        }
        i += 1
    }
    mangoes = n - apples - oranges
    return mangoes
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_119_match_parens, completion 134 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpu277wgj2.swift:21:16: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            if lst[i][j] == "(" {
               ^~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpu277wgj2.swift:16:9: warning: variable 'lst' was never mutated; consider changing to 'let' constant
    var lst = lst
    ~~~ ^
    let

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var left = 0
    var right = 0
    for i in 0..<lst.count {
        for j in 0..<lst[i].count {
            if lst[i][j] == "(" {
                left += 1
            } else {
                right += 1
            }
        }
    }
    if left == right {
        return "Yes"
    }
    return "No"
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



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



// ----------- problem HumanEval_119_match_parens, completion 176 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpe1dnpuk_.swift:21:25: error: cannot convert value of type 'Int' to expected argument type 'Range<String.Index>'
            s += lst[0][0]
                        ^
/tmp/tmpe1dnpuk_.swift:27:16: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            if s[s.count - 1] == "(" {
               ^~~~~~~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var s = ""
    var c = 0
    while lst.count > 0 {
        if lst[0].count > 0 {
            s += lst[0][0]
            lst[0].remove(at: lst[0].startIndex)
        } else {
            lst.remove(at: 0)
        }
        if s.count > 0 {
            if s[s.count - 1] == "(" {
                c += 1
            } else {
                c -= 1
            }
        }
        if c < 0 {
            return "No"
        }
    }
    if c == 0 {
        return "Yes"
    }
    return "No"
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_67_fruit_distribution, completion 90 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp5t3i1gv1.swift:23:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if s[i] == " " {
           ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp5t3i1gv1.swift:25:30: error: no exact matches in call to subscript 
                apple = Int(s[i+1])!
                             ^
Swift.String:3:12: note: candidate expects value of type 'Range<String.Index>' for parameter #1 (got 'Int')
    public subscript(r: Range<String.Index>) -> Substring { get }
           ^
Swift.Collection:3:23: note: candidate expects value of type '(UnboundedRange_) -> ()' for parameter #1 (got 'Int')
    @inlinable public subscript(x: (UnboundedRange_) -> ()) -> Self.SubSequence { get }
                      ^
/tmp/tmp5t3i1gv1.swift:27:31: error: no exact matches in call to subscript 
                orange = Int(s[i+1])!
                              ^
Swift.String:3:12: note: candidate expects value of type 'Range<String.Index>' for parameter #1 (got 'Int')
    public subscript(r: Range<String.Index>) -> Substring { get }
           ^
Swift.Collection:3:23: note: candidate expects value of type '(UnboundedRange_) -> ()' for parameter #1 (got 'Int')
    @inlinable public subscript(x: (UnboundedRange_) -> ()) -> Self.SubSequence { get }
                      ^
/tmp/tmp5t3i1gv1.swift:31:28: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            temp += String(s[i])
                           ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    var mango = 0
    var apple = 0
    var orange = 0
    var temp = ""
    var i = 0
    while i < s.count {
        if s[i] == " " {
            if temp == "apples" {
                apple = Int(s[i+1])!
            } else if temp == "oranges" {
                orange = Int(s[i+1])!
            }
            temp = ""
        } else {
            temp += String(s[i])
        }
        i += 1
    }
    mango = n - (apple + orange)
    return mango
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_94_skjkasdkd, completion 117 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp5dk75ojh.swift:45:27: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        sum += Int(String(String(maxPrime)[i]))!
                          ^~~~~~~~~~~~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp5dk75ojh.swift:18:9: warning: variable 'lst' was never mutated; consider changing to 'let' constant
    var lst = lst
    ~~~ ^
    let

*/
/* stdout = 

*/


/// You are given an array of integers.
/// You need to find the largest prime value and return the sum of its digits.
/// Examples:
/// >>> skjkasdkd(lst: [0, 3, 2, 1, 3, 5, 7, 4, 5, 5, 5, 2, 181, 32, 4, 32, 3, 2, 32, 324, 4, 3])
/// 10
/// >>> skjkasdkd(lst: [1, 0, 1, 8, 2, 4597, 2, 1, 3, 40, 1, 2, 1, 2, 4, 2, 5, 1])
/// 25
/// >>> skjkasdkd(lst: [1, 3, 1, 32, 5107, 34, 83278, 109, 163, 23, 2323, 32, 30, 1, 9, 3])
/// 13
/// >>> skjkasdkd(lst: [0, 724, 32, 71, 99, 32, 6, 0, 5, 91, 83, 0, 5, 6])
/// 11
/// >>> skjkasdkd(lst: [0, 81, 12, 3, 1, 21])
/// 3
/// >>> skjkasdkd(lst: [0, 8, 1, 2, 1, 7])
/// 7
func skjkasdkd(lst: [Int]) -> Int {
    var lst = lst
    var max = 0
    for i in 0..<lst.count {
        if lst[i] > max {
            max = lst[i]
        }
    }
    var primes = [Int]()
    for i in 2...max {
        var isPrime = true
        for j in 2..<i {
            if i % j == 0 {
                isPrime = false
            }
        }
        if isPrime {
            primes.append(i)
        }
    }
    var maxPrime = 0
    for i in 0..<primes.count {
        if primes[i] > maxPrime {
            maxPrime = primes[i]
        }
    }
    var sum = 0
    for i in 0..<String(maxPrime).count {
        sum += Int(String(String(maxPrime)[i]))!
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
            
assert(skjkasdkd(lst: [0, 3, 2, 1, 3, 5, 7, 4, 5, 5, 5, 2, 181, 32, 4, 32, 3, 2, 32, 324, 4, 3]) == 10)
assert(skjkasdkd(lst: [1, 0, 1, 8, 2, 4597, 2, 1, 3, 40, 1, 2, 1, 2, 4, 2, 5, 1]) == 25)
assert(skjkasdkd(lst: [1, 3, 1, 32, 5107, 34, 83278, 109, 163, 23, 2323, 32, 30, 1, 9, 3]) == 13)
assert(skjkasdkd(lst: [0, 724, 32, 71, 99, 32, 6, 0, 5, 91, 83, 0, 5, 6]) == 11)
assert(skjkasdkd(lst: [0, 81, 12, 3, 1, 21]) == 3)
assert(skjkasdkd(lst: [0, 8, 1, 2, 1, 7]) == 7)
assert(skjkasdkd(lst: [8191]) == 19)
assert(skjkasdkd(lst: [8191, 123456, 127, 7]) == 19)
assert(skjkasdkd(lst: [127, 97, 8192]) == 10)



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



// ----------- problem HumanEval_48_is_palindrome, completion 33 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp4_dp5i9m.swift:14:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if text[i] != text[length-i-1] {
           ^~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp4_dp5i9m.swift:14:23: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if text[i] != text[length-i-1] {
                      ^~~~~~~~~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
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
    for i in 0..<length/2 {
        if text[i] != text[length-i-1] {
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



// ----------- problem HumanEval_119_match_parens, completion 21 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplkxfsp_6.swift:23:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if str[i] == "(" {
           ^~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmplkxfsp_6.swift:16:9: warning: variable 'lst' was never mutated; consider changing to 'let' constant
    var lst = lst
    ~~~ ^
    let

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var str = ""
    var count = 0
    for i in 0..<lst.count {
        str += lst[i]
    }
    for i in 0..<str.count {
        if str[i] == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            return "No"
        }
    }
    if count == 0 {
        return "Yes"
    } else {
        return "No"
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
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_118_get_closest_vowel, completion 86 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp5b4jgqb3.swift:26:32: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            if vowels.contains(word[i]) {
                               ^~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp5b4jgqb3.swift:32:36: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            if consonants.contains(word[i]) {
                                   ^~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp5b4jgqb3.swift:43:36: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            closest_vowel = String(word[vowel_index])
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
    let vowels = "aeiouAEIOU"
    let consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    var closest_vowel = ""
    var vowel_index = 0
    var consonant_index = 0
    var vowel_found = false
    var consonant_found = false
    for i in stride(from: word.count - 1, through: 0, by: -1) {
        if !vowel_found {
            if vowels.contains(word[i]) {
                vowel_index = i
                vowel_found = true
            }
        }
        if !consonant_found {
            if consonants.contains(word[i]) {
                consonant_index = i
                consonant_found = true
            }
        }
        if vowel_found && consonant_found {
            break
        }
    }
    if vowel_found && consonant_found {
        if vowel_index > consonant_index {
            closest_vowel = String(word[vowel_index])
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



// ----------- problem HumanEval_119_match_parens, completion 94 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpf0vjq7p9.swift:30:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if str[i] == "(" {
           ^~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var str = ""
    var count = 0
    for i in 0..<lst.count {
        if lst[i].count == 0 {
            lst.remove(at: i)
        }
    }
    if lst.count == 1 {
        str = lst[0]
    } else {
        str = lst[0] + lst[1]
    }
    for i in 0..<str.count {
        if str[i] == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            return "No"
        }
    }
    if count == 0 {
        return "Yes"
    } else {
        return "No"
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
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_118_get_closest_vowel, completion 153 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp8m0_35l_.swift:21:28: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if vowels.contains(word[index]) {
                           ^~~~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp8m0_35l_.swift:22:29: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            result = String(word[index])
                            ^~~~~~~~~~~
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
    var result = ""
    var index = word.count - 1
    while index >= 0 {
        if vowels.contains(word[index]) {
            result = String(word[index])
            break
        }
        index -= 1
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



// ----------- problem HumanEval_48_is_palindrome, completion 3 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpe1s9tgxf.swift:19:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if text[i] != text[j] {
           ^~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpe1s9tgxf.swift:19:23: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if text[i] != text[j] {
                      ^~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
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
    let half = length / 2
    for i in 0..<half {
        let j = length - i - 1
        if text[i] != text[j] {
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



// ----------- problem HumanEval_118_get_closest_vowel, completion 160 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmphpvqbhfg.swift:24:36: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
                if vowels.contains(word[i]) {
                                   ^~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmphpvqbhfg.swift:27:47: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
                        closestVowel = String(word[i])
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
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    var closestVowel = ""
    var closestIndex = word.count
    for (index, char) in word.enumerated() {
        if consonants.contains(char) {
            for i in index..<word.count {
                if vowels.contains(word[i]) {
                    if i - index < closestIndex {
                        closestIndex = i - index
                        closestVowel = String(word[i])
                    }
                    break
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



// ----------- problem HumanEval_119_match_parens, completion 167 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplkxfsp_6.swift:23:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if str[i] == "(" {
           ^~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmplkxfsp_6.swift:16:9: warning: variable 'lst' was never mutated; consider changing to 'let' constant
    var lst = lst
    ~~~ ^
    let

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var str = ""
    var count = 0
    for i in 0..<lst.count {
        str += lst[i]
    }
    for i in 0..<str.count {
        if str[i] == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            return "No"
        }
    }
    if count == 0 {
        return "Yes"
    } else {
        return "No"
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
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



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



// ----------- problem HumanEval_119_match_parens, completion 78 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpu8fk7hv2.swift:23:16: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            if lst[i][j] == "(" {
               ^~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpu8fk7hv2.swift:16:9: warning: variable 'lst' was never mutated; consider changing to 'let' constant
    var lst = lst
    ~~~ ^
    let

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var open = 0
    var close = 0
    var i = 0
    while i < lst.count {
        var j = 0
        while j < lst[i].count {
            if lst[i][j] == "(" {
                open += 1
            } else {
                close += 1
            }
            j += 1
        }
        i += 1
    }
    if open == close {
        return "Yes"
    }
    return "No"
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_154_cycpattern_check, completion 118 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp65x9foyg.swift:35:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if a[i] == b[0] {
           ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp65x9foyg.swift:35:20: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if a[i] == b[0] {
                   ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp65x9foyg.swift:38:20: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
                if a[(i + j) % a.count] != b[j] {
                   ^~~~~~~~~~~~~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp65x9foyg.swift:38:44: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
                if a[(i + j) % a.count] != b[j] {
                                           ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp65x9foyg.swift:16:9: warning: variable 'a' was never mutated; consider changing to 'let' constant
    var a = a
    ~~~ ^
    let
/tmp/tmp65x9foyg.swift:17:9: warning: variable 'b' was never mutated; consider changing to 'let' constant
    var b = b
    ~~~ ^
    let

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
    var a = a
    var b = b
    if a.count < b.count {
        return false
    }
    if b.count == 0 {
        return true
    }
    if a.count == 0 {
        return false
    }
    if a.count == b.count {
        if a == b {
            return true
        }
        return false
    }
    var i = 0
    while i < a.count {
        if a[i] == b[0] {
            var j = 0
            while j < b.count {
                if a[(i + j) % a.count] != b[j] {
                    break
                }
                j += 1
            }
            if j == b.count {
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



// ----------- problem HumanEval_119_match_parens, completion 70 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpqjsyulbz.swift:23:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if str[i] == "(" {
           ^~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpqjsyulbz.swift:16:9: warning: variable 'lst' was never mutated; consider changing to 'let' constant
    var lst = lst
    ~~~ ^
    let

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var str = ""
    for i in 0..<lst.count {
        str += lst[i]
    }
    var count = 0
    for i in 0..<str.count {
        if str[i] == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            return "No"
        }
    }
    if count == 0 {
        return "Yes"
    } else {
        return "No"
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
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_119_match_parens, completion 66 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplkxfsp_6.swift:23:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if str[i] == "(" {
           ^~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmplkxfsp_6.swift:16:9: warning: variable 'lst' was never mutated; consider changing to 'let' constant
    var lst = lst
    ~~~ ^
    let

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var str = ""
    var count = 0
    for i in 0..<lst.count {
        str += lst[i]
    }
    for i in 0..<str.count {
        if str[i] == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            return "No"
        }
    }
    if count == 0 {
        return "Yes"
    } else {
        return "No"
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
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_67_fruit_distribution, completion 172 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpn409xs52.swift:24:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if s[i] == " " {
           ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpn409xs52.swift:26:19: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        } else if s[i] == "a" {
                  ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpn409xs52.swift:29:19: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            while s[j] != " " {
                  ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpn409xs52.swift:32:26: error: 'subscript(_:)' is unavailable: cannot subscript String with an integer range, use a String.Index range instead.
            apples = Int(s[i..<j])!
                         ^~~~~~~~
Swift.String:5:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript<R>(bounds: R) -> String where R : RangeExpression, R.Bound == Int { get }
           ^
/tmp/tmpn409xs52.swift:34:19: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        } else if s[i] == "o" {
                  ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpn409xs52.swift:37:19: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            while s[j] != " " {
                  ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int
*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    var s = s
    var n = n
    var apples = 0
    var oranges = 0
    var mangoes = 0
    var i = 0
    while i < s.count {
        if s[i] == " " {
            i += 1
        } else if s[i] == "a" {
            i += 7
            var j = i
            while s[j] != " " {
                j += 1
            }
            apples = Int(s[i..<j])!
            i = j
        } else if s[i] == "o" {
            i += 8
            var j = i
            while s[j] != " " {
                j += 1
            }
            oranges = Int(s[i..<j])!
            i = j
        }
    }
    mangoes = n - apples - oranges
    return mangoes
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_119_match_parens, completion 150 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3yirvp8f.swift:23:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if parens[i] == "(" {
           ^~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp3yirvp8f.swift:16:9: warning: variable 'lst' was never mutated; consider changing to 'let' constant
    var lst = lst
    ~~~ ^
    let

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var parens = ""
    for i in 0..<lst.count {
        parens += lst[i]
    }
    var count = 0
    for i in 0..<parens.count {
        if parens[i] == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            return "No"
        }
    }
    if count == 0 {
        return "Yes"
    } else {
        return "No"
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
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



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



// ----------- problem HumanEval_119_match_parens, completion 196 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplkxfsp_6.swift:23:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if str[i] == "(" {
           ^~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmplkxfsp_6.swift:16:9: warning: variable 'lst' was never mutated; consider changing to 'let' constant
    var lst = lst
    ~~~ ^
    let

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var str = ""
    var count = 0
    for i in 0..<lst.count {
        str += lst[i]
    }
    for i in 0..<str.count {
        if str[i] == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            return "No"
        }
    }
    if count == 0 {
        return "Yes"
    } else {
        return "No"
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
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_11_string_xor, completion 168 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp8x7lflaq.swift:9:19: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        result += a[i] == b[i] ? "0" : "1"
                  ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp8x7lflaq.swift:9:27: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        result += a[i] == b[i] ? "0" : "1"
                          ^~~~
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
    for i in 0..<a.count {
        result += a[i] == b[i] ? "0" : "1"
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



// ----------- problem HumanEval_119_match_parens, completion 60 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp14nzgi1j.swift:22:16: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            if lst[i][j] == "(" {
               ^~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp14nzgi1j.swift:16:9: warning: variable 'lst' was never mutated; consider changing to 'let' constant
    var lst = lst
    ~~~ ^
    let

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var open = 0
    var close = 0
    var result = "Yes"
    for i in 0..<lst.count {
        for j in 0..<lst[i].count {
            if lst[i][j] == "(" {
                open += 1
            } else {
                close += 1
            }
        }
    }
    if open != close {
        result = "No"
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
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_67_fruit_distribution, completion 196 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpbygvf9cv.swift:22:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if s[i] == "a" {
           ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpbygvf9cv.swift:23:39: error: no exact matches in call to subscript 
            apple = apple * 10 + Int(s[i + 1])!
                                      ^
Swift.String:3:12: note: candidate expects value of type 'Range<String.Index>' for parameter #1 (got 'Int')
    public subscript(r: Range<String.Index>) -> Substring { get }
           ^
Swift.Collection:3:23: note: candidate expects value of type '(UnboundedRange_) -> ()' for parameter #1 (got 'Int')
    @inlinable public subscript(x: (UnboundedRange_) -> ()) -> Self.SubSequence { get }
                      ^
/tmp/tmpbygvf9cv.swift:24:19: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        } else if s[i] == "o" {
                  ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpbygvf9cv.swift:25:41: error: no exact matches in call to subscript 
            orange = orange * 10 + Int(s[i + 1])!
                                        ^
Swift.String:3:12: note: candidate expects value of type 'Range<String.Index>' for parameter #1 (got 'Int')
    public subscript(r: Range<String.Index>) -> Substring { get }
           ^
Swift.Collection:3:23: note: candidate expects value of type '(UnboundedRange_) -> ()' for parameter #1 (got 'Int')
    @inlinable public subscript(x: (UnboundedRange_) -> ()) -> Self.SubSequence { get }
                      ^

*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    var mango = n
    var apple = 0
    var orange = 0
    var i = 0
    while i < s.count {
        if s[i] == "a" {
            apple = apple * 10 + Int(s[i + 1])!
        } else if s[i] == "o" {
            orange = orange * 10 + Int(s[i + 1])!
        }
        i += 1
    }
    mango -= apple + orange
    return mango
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



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



// ----------- problem HumanEval_119_match_parens, completion 194 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp19ioqnm4.swift:21:16: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            if lst[i][j] == "(" {
               ^~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp19ioqnm4.swift:16:9: warning: variable 'lst' was never mutated; consider changing to 'let' constant
    var lst = lst
    ~~~ ^
    let

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var s = ""
    var count = 0
    for i in 0..<lst.count {
        for j in 0..<lst[i].count {
            if lst[i][j] == "(" {
                count += 1
            } else {
                count -= 1
            }
            if count < 0 {
                return "No"
            }
        }
        s += lst[i]
    }
    if count == 0 {
        return "Yes"
    }
    return "No"
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_67_fruit_distribution, completion 18 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpytnc7nhh.swift:120:72: error: expected '}' at end of brace statement
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)
                                                                       ^
/tmp/tmpytnc7nhh.swift:25:31: note: to match this opening '{'
        } else if s[i] == "a" {
                              ^
/tmp/tmpytnc7nhh.swift:120:72: error: expected '}' at end of brace statement
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)
                                                                       ^
/tmp/tmpytnc7nhh.swift:22:23: note: to match this opening '{'
    while i < s.count {
                      ^
/tmp/tmpytnc7nhh.swift:120:72: error: expected '}' at end of brace statement
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)
                                                                       ^
/tmp/tmpytnc7nhh.swift:16:51: note: to match this opening '{'
func fruit_distribution(s: String, n: Int) -> Int {
                                                  ^
/tmp/tmpytnc7nhh.swift:23:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if s[i] == " " {
           ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpytnc7nhh.swift:25:19: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        } else if s[i] == "a" {
                  ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpytnc7nhh.swift:26:19: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            while s[i] != " " {
                  ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { ge
*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    var count = 0
    var apples = 0
    var oranges = 0
    var mango = 0
    var i = 0
    while i < s.count {
        if s[i] == " " {
            i += 1
        } else if s[i] == "a" {
            while s[i] != " " {
                i += 1
            }
            i += 1
            while s[i] != " " {
                i += 1
            }
            i += 1
            while s[i] != " " {
                i += 1
            }
            i += 1
            while s[i] != " " {
                i += 1
            }
            i += 1
            while s[i] != " " {
                i += 1
            }
            i += 1
            while s[i] != " " {
                i += 1
            }
            i += 1
            while s[i] != " " {
                i += 1
            }
            i += 1
            while s[i] != " " {
                i += 1
            }
            i += 1
            while s[i] != " " {
                i += 1
            }
            i += 1
            while s[i] != " " {
                i += 1
            }
            i += 1
            while s[i] != " " {
                i += 1
            }
            i += 1
            while s[i] != " " {
                i += 1
            }
            i += 1
            while s[i] != " " {
                i += 1
            }
            i += 1
            while s[i] != " " {
                i += 1
            }
            i += 1
            while s[i] != " " {
                i += 1
            }
            i += 1
            while s[i] != " " {
                i += 1
            }
            i += 1
            while s[i] != " " {
                i += 1
            }
            i += 1
            while s[i] != " " {
                i += 1
            }
            i += 1
            while s[i] != " " {
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_119_match_parens, completion 53 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplkxfsp_6.swift:23:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if str[i] == "(" {
           ^~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmplkxfsp_6.swift:16:9: warning: variable 'lst' was never mutated; consider changing to 'let' constant
    var lst = lst
    ~~~ ^
    let

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var str = ""
    var count = 0
    for i in 0..<lst.count {
        str += lst[i]
    }
    for i in 0..<str.count {
        if str[i] == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            return "No"
        }
    }
    if count == 0 {
        return "Yes"
    } else {
        return "No"
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
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



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



// ----------- problem HumanEval_48_is_palindrome, completion 103 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp9kgctsfi.swift:16:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if text[i] != text[j] {
           ^~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp9kgctsfi.swift:16:23: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if text[i] != text[j] {
                      ^~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
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
    for i in 0..<half {
        let j = length - i - 1
        if text[i] != text[j] {
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



// ----------- problem HumanEval_113_odd_count, completion 28 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpnisx88ub.swift:15:27: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            if Int(String(lst[i][j]))! % 2 != 0 {
                          ^~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
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
        var count = 0
        for j in 0..<lst[i].count {
            if Int(String(lst[i][j]))! % 2 != 0 {
                count += 1
            }
        }
        result.append("the number of odd elements \(count)n the str\(count)ng \(count) of the \(count)nput.")
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



// ----------- problem HumanEval_119_match_parens, completion 154 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplkxfsp_6.swift:23:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if str[i] == "(" {
           ^~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmplkxfsp_6.swift:16:9: warning: variable 'lst' was never mutated; consider changing to 'let' constant
    var lst = lst
    ~~~ ^
    let

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var str = ""
    var count = 0
    for i in 0..<lst.count {
        str += lst[i]
    }
    for i in 0..<str.count {
        if str[i] == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            return "No"
        }
    }
    if count == 0 {
        return "Yes"
    } else {
        return "No"
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
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_154_cycpattern_check, completion 1 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpzfvpv5b7.swift:26:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if a[i] == b_first_char {
           ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpzfvpv5b7.swift:29:45: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            while j < a_len && k < b_len && a[j] == b[k] {
                                            ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpzfvpv5b7.swift:29:53: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            while j < a_len && k < b_len && a[j] == b[k] {
                                                    ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpzfvpv5b7.swift:36:16: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            if a[j] == b_last_char {
               ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpzfvpv5b7.swift:39:43: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
                while j >= 0 && k >= 0 && a[j] == b[k] {
                                          ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpzfvpv5b7.swift:39:51: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
                while j >= 0 && k >= 0 && a[j] == b[k] {
            
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
    let a = a.lowercased()
    let b = b.lowercased()
    let b_len = b.count
    let a_len = a.count
    if b_len > a_len {
        return false
    }
    let b_first_char = b.first!
    let b_last_char = b.last!
    for i in 0..<a_len {
        if a[i] == b_first_char {
            var j = i
            var k = 0
            while j < a_len && k < b_len && a[j] == b[k] {
                j += 1
                k += 1
            }
            if k == b_len {
                return true
            }
            if a[j] == b_last_char {
                var j = i - 1
                var k = b_len - 1
                while j >= 0 && k >= 0 && a[j] == b[k] {
                    j -= 1
                    k -= 1
                }
                if k == -1 {
                    return true
                }
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



// ----------- problem HumanEval_11_string_xor, completion 121 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp24t9xf_1.swift:9:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if a[i] == b[i] {
           ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp24t9xf_1.swift:9:20: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if a[i] == b[i] {
                   ^~~~
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
    for i in 0..<a.count {
        if a[i] == b[i] {
            result += "0"
        } else {
            result += "1"
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
            
assert(string_xor(a: "111000", b: "101010") == "010010")
assert(string_xor(a: "1", b: "1") == "0")
assert(string_xor(a: "0101", b: "0000") == "0101")



// ----------- problem HumanEval_11_string_xor, completion 17 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp5_nbdvis.swift:9:22: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        let a_char = a[i]
                     ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp5_nbdvis.swift:10:22: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        let b_char = b[i]
                     ^~~~
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
    for i in 0..<a.count {
        let a_char = a[i]
        let b_char = b[i]
        if a_char == b_char {
            result += "0"
        } else {
            result += "1"
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
            
assert(string_xor(a: "111000", b: "101010") == "010010")
assert(string_xor(a: "1", b: "1") == "0")
assert(string_xor(a: "0101", b: "0000") == "0101")



// ----------- problem HumanEval_67_fruit_distribution, completion 31 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp26enc37o.swift:24:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if s[i] == " " {
           ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp26enc37o.swift:28:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if s[i] == "a" {
           ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp26enc37o.swift:30:22: error: no exact matches in call to subscript 
            a = Int(s[i])!
                     ^
Swift.String:3:12: note: candidate expects value of type 'Range<String.Index>' for parameter #1 (got 'Int')
    public subscript(r: Range<String.Index>) -> Substring { get }
           ^
Swift.Collection:3:23: note: candidate expects value of type '(UnboundedRange_) -> ()' for parameter #1 (got 'Int')
    @inlinable public subscript(x: (UnboundedRange_) -> ()) -> Self.SubSequence { get }
                      ^
/tmp/tmp26enc37o.swift:34:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if s[i] == "o" {
           ^~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp26enc37o.swift:36:22: error: no exact matches in call to subscript 
            o = Int(s[i])!
                     ^
Swift.String:3:12: note: candidate expects value of type 'Range<String.Index>' for parameter #1 (got 'Int')
    public subscript(r: Range<String.Index>) -> Substring { get }
           ^
Swift.Collection:3:23: note: candidate expects value of type '(UnboundedRange_) -> ()' for parameter #1 (got 'Int')
    @inlinable public subscript(x: (UnboundedRange_) -> ()) -> Self.SubSequence { get }
                     
*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    var s = s
    var n = n
    var a = 0
    var o = 0
    var m = 0
    var i = 0
    while i < s.count {
        if s[i] == " " {
            i += 1
            continue
        }
        if s[i] == "a" {
            i += 6
            a = Int(s[i])!
            i += 2
            continue
        }
        if s[i] == "o" {
            i += 7
            o = Int(s[i])!
            i += 2
            continue
        }
        i += 1
    }
    m = n - a - o
    return m
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



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



// ----------- problem HumanEval_119_match_parens, completion 123 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplkxfsp_6.swift:23:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if str[i] == "(" {
           ^~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmplkxfsp_6.swift:16:9: warning: variable 'lst' was never mutated; consider changing to 'let' constant
    var lst = lst
    ~~~ ^
    let

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var str = ""
    var count = 0
    for i in 0..<lst.count {
        str += lst[i]
    }
    for i in 0..<str.count {
        if str[i] == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            return "No"
        }
    }
    if count == 0 {
        return "Yes"
    } else {
        return "No"
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
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_154_cycpattern_check, completion 177 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmprzip3mrr.swift:28:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if a[a_index] == b_first_char {
           ^~~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmprzip3mrr.swift:31:20: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
                if a[a_index] != b[b_index] {
                   ^~~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmprzip3mrr.swift:31:34: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
                if a[a_index] != b[b_index] {
                                 ^~~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmprzip3mrr.swift:24:9: warning: initialization of immutable value 'b_last_char' was never used; consider replacing with assignment to '_' or removing it
    let b_last_char = b.last!
    ~~~~^~~~~~~~~~~
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
    let a = a.lowercased()
    let b = b.lowercased()
    let b_length = b.count
    let a_length = a.count
    if b_length > a_length {
        return false
    }
    let b_first_char = b.first!
    let b_last_char = b.last!
    var b_index = 0
    var a_index = 0
    while a_index < a_length {
        if a[a_index] == b_first_char {
            b_index = 0
            while b_index < b_length {
                if a[a_index] != b[b_index] {
                    break
                }
                a_index += 1
                b_index += 1
                if b_index == b_length {
                    return true
                }
                if a_index == a_length {
                    a_index = 0
                }
            }
        }
        a_index += 1
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



// ----------- problem HumanEval_119_match_parens, completion 84 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpyiy3lpqc.swift:22:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if str[i] == "(" {
           ^~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var str = ""
    var count = 0
    for i in 0..<lst.count {
        str += lst[i]
    }
    for i in 0..<str.count {
        if str[i] == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            return "No"
        }
    }
    if count == 0 {
        return "Yes"
    } else {
        return "No"
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
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_119_match_parens, completion 132 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplkxfsp_6.swift:23:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if str[i] == "(" {
           ^~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmplkxfsp_6.swift:16:9: warning: variable 'lst' was never mutated; consider changing to 'let' constant
    var lst = lst
    ~~~ ^
    let

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var str = ""
    var count = 0
    for i in 0..<lst.count {
        str += lst[i]
    }
    for i in 0..<str.count {
        if str[i] == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            return "No"
        }
    }
    if count == 0 {
        return "Yes"
    } else {
        return "No"
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
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_119_match_parens, completion 111 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmppe1uju50.swift:29:16: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            if lst[i][j] == "(" {
               ^~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmppe1uju50.swift:17:9: warning: initialization of variable 'str' was never used; consider replacing with assignment to '_' or removing it
    var str = ""
    ~~~~^~~
    _

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var str = ""
    var count = 0
    for i in 0..<lst.count {
        if lst[i].count == 0 {
            lst.remove(at: i)
        }
    }
    if lst.count == 0 {
        return "Yes"
    }
    for i in 0..<lst.count {
        for j in 0..<lst[i].count {
            if lst[i][j] == "(" {
                count += 1
            } else {
                count -= 1
            }
            if count < 0 {
                return "No"
            }
        }
    }
    if count == 0 {
        return "Yes"
    }
    return "No"
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_119_match_parens, completion 146 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp5irzsiga.swift:24:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if str[i] == "(" {
           ^~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp5irzsiga.swift:16:9: warning: variable 'lst' was never mutated; consider changing to 'let' constant
    var lst = lst
    ~~~ ^
    let

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var str = ""
    var count = 0
    var flag = false
    for i in 0..<lst.count {
        str += lst[i]
    }
    for i in 0..<str.count {
        if str[i] == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            flag = true
            break
        }
    }
    if flag || count != 0 {
        return "No"
    }
    return "Yes"
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_113_odd_count, completion 142 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpd1977p68.swift:15:27: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            if Int(String(lst[i][j]))! % 2 != 0 {
                          ^~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
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
    var result: [String] = []
    for i in 0..<lst.count {
        var count = 0
        for j in 0..<lst[i].count {
            if Int(String(lst[i][j]))! % 2 != 0 {
                count += 1
            }
        }
        result.append("the number of odd elements \(count)n the str\(count)ng \(count) of the \(count)nput.")
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



// ----------- problem HumanEval_119_match_parens, completion 92 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpbkzsxwms.swift:21:16: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            if lst[i][j] == "(" {
               ^~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpbkzsxwms.swift:16:9: warning: variable 'lst' was never mutated; consider changing to 'let' constant
    var lst = lst
    ~~~ ^
    let

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var str = ""
    var count = 0
    for i in 0...1 {
        for j in 0..<lst[i].count {
            if lst[i][j] == "(" {
                count += 1
            } else {
                count -= 1
            }
            if count < 0 {
                return "No"
            }
        }
        str += lst[i]
    }
    if count == 0 {
        return "Yes"
    }
    return "No"
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_119_match_parens, completion 114 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp9gzeo6d_.swift:25:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if s1[i] == "(" {
           ^~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp9gzeo6d_.swift:32:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if s2[i] == "(" {
           ^~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    let s1 = lst[0]
    let s2 = lst[1]
    let s1_count = s1.count
    let s2_count = s2.count
    var s1_open = 0
    var s2_open = 0
    var s1_close = 0
    var s2_close = 0
    for i in 0..<s1_count {
        if s1[i] == "(" {
            s1_open += 1
        } else {
            s1_close += 1
        }
    }
    for i in 0..<s2_count {
        if s2[i] == "(" {
            s2_open += 1
        } else {
            s2_close += 1
        }
    }
    if s1_open == s1_close && s2_open == s2_close {
        return "Yes"
    }
    if s1_open > s1_close && s2_open > s2_close {
        return "Yes"
    }
    if s1_open < s1_close && s2_open < s2_close {
        return "Yes"
    }
    return "No"
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



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



// ----------- problem HumanEval_119_match_parens, completion 180 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplkxfsp_6.swift:23:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if str[i] == "(" {
           ^~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmplkxfsp_6.swift:16:9: warning: variable 'lst' was never mutated; consider changing to 'let' constant
    var lst = lst
    ~~~ ^
    let

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var str = ""
    var count = 0
    for i in 0..<lst.count {
        str += lst[i]
    }
    for i in 0..<str.count {
        if str[i] == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            return "No"
        }
    }
    if count == 0 {
        return "Yes"
    } else {
        return "No"
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
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_119_match_parens, completion 5 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmplkxfsp_6.swift:23:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if str[i] == "(" {
           ^~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmplkxfsp_6.swift:16:9: warning: variable 'lst' was never mutated; consider changing to 'let' constant
    var lst = lst
    ~~~ ^
    let

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var str = ""
    var count = 0
    for i in 0..<lst.count {
        str += lst[i]
    }
    for i in 0..<str.count {
        if str[i] == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            return "No"
        }
    }
    if count == 0 {
        return "Yes"
    } else {
        return "No"
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
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_48_is_palindrome, completion 159 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp4_dp5i9m.swift:14:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if text[i] != text[length-i-1] {
           ^~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmp4_dp5i9m.swift:14:23: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if text[i] != text[length-i-1] {
                      ^~~~~~~~~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
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
    for i in 0..<length/2 {
        if text[i] != text[length-i-1] {
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



// ----------- problem HumanEval_119_match_parens, completion 90 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpiyt303fp.swift:20:16: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
            if lst[i][j] == "(" {
               ^~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpiyt303fp.swift:16:9: warning: variable 'lst' was never mutated; consider changing to 'let' constant
    var lst = lst
    ~~~ ^
    let

*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var lst = lst
    var cnt = 0
    for i in 0..<lst.count {
        for j in 0..<lst[i].count {
            if lst[i][j] == "(" {
                cnt += 1
            } else {
                cnt -= 1
            }
            if cnt < 0 {
                return "No"
            }
        }
    }
    if cnt == 0 {
        return "Yes"
    }
    return "No"
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_48_is_palindrome, completion 80 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpkn48rsn8.swift:17:12: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if text[i] != text[length-i-1] {
           ^~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
           ^
/tmp/tmpkn48rsn8.swift:17:23: error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
        if text[i] != text[length-i-1] {
                      ^~~~~~~~~~~~~~~~
Swift.String:3:12: note: 'subscript(_:)' has been explicitly marked unavailable here
    public subscript(i: Int) -> Character { get }
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
    for i in 0..<length/2 {
        if text[i] != text[length-i-1] {
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



