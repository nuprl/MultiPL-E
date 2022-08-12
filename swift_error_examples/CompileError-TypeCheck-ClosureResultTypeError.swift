// ----------- problem HumanEval_125_split_words, completion 121 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpcvjo0n2j.swift:20:137: error: cannot convert value of type 'UInt8' to closure result type 'Int'
        return .failure(txt.lowercased().filter { $0.isLetter }.enumerated().filter { $0.offset % 2 == 1 }.map { $0.element.asciiValue! - 97 }.reduce(0, +))
                                                                                                                 ~~~~~~~~~~~~~~~~~~~~~~~^~~~
                                                                                                                 Int(                       )

*/
/* stdout = 

*/


extension Int: Error {}
        
/// Given a string of words, return an array of words split on whitespace, if no whitespaces exists in the text you
/// should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
/// alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
/// Examples
/// >>> split_words(txt: "Hello world!")
/// .success(["Hello", "world!"])
/// >>> split_words(txt: "Hello,world!")
/// .success(["Hello", "world!"])
/// >>> split_words(txt: "abcdef")
/// .failure(3)
func split_words(txt: String) -> Result<[String], Int> {
    if txt.contains(" ") {
        return .success(txt.split(separator: " ").map(String.init))
    } else if txt.contains(",") {
        return .success(txt.split(separator: ",").map(String.init))
    } else {
        return .failure(txt.lowercased().filter { $0.isLetter }.enumerated().filter { $0.offset % 2 == 1 }.map { $0.element.asciiValue! - 97 }.reduce(0, +))
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
            
assert(split_words(txt: "Hello world!") == .success(["Hello", "world!"]))
assert(split_words(txt: "Hello,world!") == .success(["Hello", "world!"]))
assert(split_words(txt: "Hello world,!") == .success(["Hello", "world,!"]))
assert(split_words(txt: "Hello,Hello,world !") == .success(["Hello,Hello,world", "!"]))
assert(split_words(txt: "abcdef") == .failure(3))
assert(split_words(txt: "aaabb") == .failure(2))
assert(split_words(txt: "aaaBb") == .failure(1))
assert(split_words(txt: "") == .failure(0))



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



// ----------- problem HumanEval_125_split_words, completion 18 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpcvjo0n2j.swift:20:137: error: cannot convert value of type 'UInt8' to closure result type 'Int'
        return .failure(txt.lowercased().filter { $0.isLetter }.enumerated().filter { $0.offset % 2 == 1 }.map { $0.element.asciiValue! - 97 }.reduce(0, +))
                                                                                                                 ~~~~~~~~~~~~~~~~~~~~~~~^~~~
                                                                                                                 Int(                       )

*/
/* stdout = 

*/


extension Int: Error {}
        
/// Given a string of words, return an array of words split on whitespace, if no whitespaces exists in the text you
/// should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
/// alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
/// Examples
/// >>> split_words(txt: "Hello world!")
/// .success(["Hello", "world!"])
/// >>> split_words(txt: "Hello,world!")
/// .success(["Hello", "world!"])
/// >>> split_words(txt: "abcdef")
/// .failure(3)
func split_words(txt: String) -> Result<[String], Int> {
    if txt.contains(" ") {
        return .success(txt.split(separator: " ").map(String.init))
    } else if txt.contains(",") {
        return .success(txt.split(separator: ",").map(String.init))
    } else {
        return .failure(txt.lowercased().filter { $0.isLetter }.enumerated().filter { $0.offset % 2 == 1 }.map { $0.element.asciiValue! - 97 }.reduce(0, +))
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
            
assert(split_words(txt: "Hello world!") == .success(["Hello", "world!"]))
assert(split_words(txt: "Hello,world!") == .success(["Hello", "world!"]))
assert(split_words(txt: "Hello world,!") == .success(["Hello", "world,!"]))
assert(split_words(txt: "Hello,Hello,world !") == .success(["Hello,Hello,world", "!"]))
assert(split_words(txt: "abcdef") == .failure(3))
assert(split_words(txt: "aaabb") == .failure(2))
assert(split_words(txt: "aaaBb") == .failure(1))
assert(split_words(txt: "") == .failure(0))



// ----------- problem HumanEval_125_split_words, completion 195 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwtnuxrey.swift:20:137: error: cannot convert value of type 'UInt8' to closure result type 'Int'
        return .failure(txt.lowercased().filter { $0.isLetter }.enumerated().filter { $0.offset % 2 == 0 }.map { $0.element.asciiValue! - 97 }.reduce(0, +))
                                                                                                                 ~~~~~~~~~~~~~~~~~~~~~~~^~~~
                                                                                                                 Int(                       )

*/
/* stdout = 

*/


extension Int: Error {}
        
/// Given a string of words, return an array of words split on whitespace, if no whitespaces exists in the text you
/// should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
/// alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
/// Examples
/// >>> split_words(txt: "Hello world!")
/// .success(["Hello", "world!"])
/// >>> split_words(txt: "Hello,world!")
/// .success(["Hello", "world!"])
/// >>> split_words(txt: "abcdef")
/// .failure(3)
func split_words(txt: String) -> Result<[String], Int> {
    if txt.contains(" ") {
        return .success(txt.split(separator: " ").map { String($0) })
    } else if txt.contains(",") {
        return .success(txt.split(separator: ",").map { String($0) })
    } else {
        return .failure(txt.lowercased().filter { $0.isLetter }.enumerated().filter { $0.offset % 2 == 0 }.map { $0.element.asciiValue! - 97 }.reduce(0, +))
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
            
assert(split_words(txt: "Hello world!") == .success(["Hello", "world!"]))
assert(split_words(txt: "Hello,world!") == .success(["Hello", "world!"]))
assert(split_words(txt: "Hello world,!") == .success(["Hello", "world,!"]))
assert(split_words(txt: "Hello,Hello,world !") == .success(["Hello,Hello,world", "!"]))
assert(split_words(txt: "abcdef") == .failure(3))
assert(split_words(txt: "aaabb") == .failure(2))
assert(split_words(txt: "aaaBb") == .failure(1))
assert(split_words(txt: "") == .failure(0))



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



// ----------- problem HumanEval_125_split_words, completion 102 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwtnuxrey.swift:20:137: error: cannot convert value of type 'UInt8' to closure result type 'Int'
        return .failure(txt.lowercased().filter { $0.isLetter }.enumerated().filter { $0.offset % 2 == 0 }.map { $0.element.asciiValue! - 97 }.reduce(0, +))
                                                                                                                 ~~~~~~~~~~~~~~~~~~~~~~~^~~~
                                                                                                                 Int(                       )

*/
/* stdout = 

*/


extension Int: Error {}
        
/// Given a string of words, return an array of words split on whitespace, if no whitespaces exists in the text you
/// should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
/// alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
/// Examples
/// >>> split_words(txt: "Hello world!")
/// .success(["Hello", "world!"])
/// >>> split_words(txt: "Hello,world!")
/// .success(["Hello", "world!"])
/// >>> split_words(txt: "abcdef")
/// .failure(3)
func split_words(txt: String) -> Result<[String], Int> {
    if txt.contains(" ") {
        return .success(txt.split(separator: " ").map { String($0) })
    } else if txt.contains(",") {
        return .success(txt.split(separator: ",").map { String($0) })
    } else {
        return .failure(txt.lowercased().filter { $0.isLetter }.enumerated().filter { $0.offset % 2 == 0 }.map { $0.element.asciiValue! - 97 }.reduce(0, +))
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
            
assert(split_words(txt: "Hello world!") == .success(["Hello", "world!"]))
assert(split_words(txt: "Hello,world!") == .success(["Hello", "world!"]))
assert(split_words(txt: "Hello world,!") == .success(["Hello", "world,!"]))
assert(split_words(txt: "Hello,Hello,world !") == .success(["Hello,Hello,world", "!"]))
assert(split_words(txt: "abcdef") == .failure(3))
assert(split_words(txt: "aaabb") == .failure(2))
assert(split_words(txt: "aaaBb") == .failure(1))
assert(split_words(txt: "") == .failure(0))



// ----------- problem HumanEval_125_split_words, completion 61 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmptmpei409.swift:20:115: error: cannot convert value of type 'UInt8' to closure result type 'Int'
        return .failure(txt.lowercased().enumerated().filter({ $0.offset % 2 == 0 }).map({ $0.element.asciiValue! - 97 }).reduce(0, +))
                                                                                           ~~~~~~~~~~~~~~~~~~~~~~~^~~~
                                                                                           Int(                       )

*/
/* stdout = 

*/


extension Int: Error {}
        
/// Given a string of words, return an array of words split on whitespace, if no whitespaces exists in the text you
/// should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
/// alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
/// Examples
/// >>> split_words(txt: "Hello world!")
/// .success(["Hello", "world!"])
/// >>> split_words(txt: "Hello,world!")
/// .success(["Hello", "world!"])
/// >>> split_words(txt: "abcdef")
/// .failure(3)
func split_words(txt: String) -> Result<[String], Int> {
    if txt.contains(" ") {
        return .success(txt.split(separator: " ").map(String.init))
    } else if txt.contains(",") {
        return .success(txt.split(separator: ",").map(String.init))
    } else {
        return .failure(txt.lowercased().enumerated().filter({ $0.offset % 2 == 0 }).map({ $0.element.asciiValue! - 97 }).reduce(0, +))
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
            
assert(split_words(txt: "Hello world!") == .success(["Hello", "world!"]))
assert(split_words(txt: "Hello,world!") == .success(["Hello", "world!"]))
assert(split_words(txt: "Hello world,!") == .success(["Hello", "world,!"]))
assert(split_words(txt: "Hello,Hello,world !") == .success(["Hello,Hello,world", "!"]))
assert(split_words(txt: "abcdef") == .failure(3))
assert(split_words(txt: "aaabb") == .failure(2))
assert(split_words(txt: "aaaBb") == .failure(1))
assert(split_words(txt: "") == .failure(0))



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



