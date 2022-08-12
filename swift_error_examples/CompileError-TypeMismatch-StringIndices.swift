// ----------- problem HumanEval_125_split_words, completion 132 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpzbnw1q_a.swift:23:20: error: cannot convert value of type 'String.Index' to expected argument type 'Int'
                if index % 2 == 1 {
                   ^

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
        return .success(txt.split(separator: " ").map{String($0)})
    } else if txt.contains(",") {
        return .success(txt.split(separator: ",").map{String($0)})
    } else {
        var count = 0
        for char in txt {
            if let index = "abcdefghijklmnopqrstuvwxyz".firstIndex(of: char) {
                if index % 2 == 1 {
                    count += 1
                }
            }
        }
        return .failure(count)
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



// ----------- problem HumanEval_89_encrypt, completion 84 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpz41oz6xl.swift:20:28: error: cannot convert value of type 'String.Index' to expected argument type 'Int'
            let newIndex = index + 2
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
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encryptedString = ""
    for letter in s {
        if let index = alphabet.firstIndex(of: letter) {
            let newIndex = index + 2
            if newIndex > alphabet.count - 1 {
                let newIndex = newIndex - alphabet.count
                encryptedString.append(alphabet[alphabet.index(alphabet.startIndex, offsetBy: newIndex)])
            } else {
                encryptedString.append(alphabet[alphabet.index(alphabet.startIndex, offsetBy: newIndex)])
            }
        }
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



// ----------- problem HumanEval_93_encode, completion 170 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1e_r5z9l.swift:18:28: error: cannot convert value of type 'String.Index' to expected argument type 'Int'
            let newIndex = index + 2
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
    var vowels = "aeiou"
    for char in message {
        if vowels.contains(char) {
            let index = vowels.firstIndex(of: char)!
            let newIndex = index + 2
            encodedMessage.append(vowels[newIndex])
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



// ----------- problem HumanEval_89_encrypt, completion 198 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpc6s2xxa_.swift:20:28: error: cannot convert value of type 'String.Index' to expected argument type 'Int'
            let newIndex = index + 2 * 2
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
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encrypted = ""
    for letter in s {
        if let index = alphabet.firstIndex(of: letter) {
            let newIndex = index + 2 * 2
            if newIndex > alphabet.count - 1 {
                let newIndex = newIndex - alphabet.count
                encrypted.append(alphabet[alphabet.index(alphabet.startIndex, offsetBy: newIndex)])
            } else {
                encrypted.append(alphabet[alphabet.index(alphabet.startIndex, offsetBy: newIndex)])
            }
        }
    }
    return encrypted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_78_hex_key, completion 164 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmphn8g3uue.swift:26:63: error: cannot convert value of type 'String.Index' to expected argument type 'Int'
    return num.filter { primes.contains(hex.firstIndex(of: $0)! + 1) }.count
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
    let hex = "0123456789ABCDEF"
    let primes = [2, 3, 5, 7, 11, 13]
    return num.filter { primes.contains(hex.firstIndex(of: $0)! + 1) }.count
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_118_get_closest_vowel, completion 20 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpz7kjhcsf.swift:23:62: error: cannot convert value of type 'Int' to expected argument type 'String.Index'
                if word[word.index(before: word.index(after: index))] != char && word[word.index(after: word.index(before: index))] != char {
                                                             ^
/tmp/tmpz7kjhcsf.swift:23:124: error: cannot convert value of type 'Int' to expected argument type 'String.Index'
                if word[word.index(before: word.index(after: index))] != char && word[word.index(after: word.index(before: index))] != char {
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
    var closest_vowel = ""
    var closest_index = word.count
    for (index, char) in word.enumerated() {
        if vowels.contains(char) {
            if index > 0 && index < word.count - 1 {
                if word[word.index(before: word.index(after: index))] != char && word[word.index(after: word.index(before: index))] != char {
                    if index < closest_index {
                        closest_index = index
                        closest_vowel = String(char)
                    }
                }
            }
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



// ----------- problem HumanEval_89_encrypt, completion 94 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpjw1lent1.swift:21:28: error: cannot convert value of type 'String.Index' to expected argument type 'Int'
            let newIndex = index + 2
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
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    let lowercaseS = s.lowercased()
    var encrypted = ""
    for char in lowercaseS {
        if let index = alphabet.firstIndex(of: char) {
            let newIndex = index + 2
            if newIndex > 25 {
                let remainder = newIndex - 26
                encrypted.append(alphabet[remainder])
            } else {
                encrypted.append(alphabet[newIndex])
            }
        }
    }
    return encrypted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_93_encode, completion 136 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp22mm_n00.swift:21:29: error: cannot convert value of type 'String.Index' to expected argument type 'Int'
            let newIndex = (index + 2) % 5
                            ^
/tmp/tmp22mm_n00.swift:25:29: error: cannot convert value of type 'String.Index' to expected argument type 'Int'
            let newIndex = (index + 2) % 5
                            ^
/tmp/tmp22mm_n00.swift:29:29: error: cannot convert value of type 'String.Index' to expected argument type 'Int'
            let newIndex = (index + 2) % 26
                            ^
/tmp/tmp22mm_n00.swift:33:29: error: cannot convert value of type 'String.Index' to expected argument type 'Int'
            let newIndex = (index + 2) % 26
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
    let vowelsUpper = "AEIOU"
    let letters = "abcdefghijklmnopqrstuvwxyz"
    let lettersUpper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    var encoded = ""
    for char in message {
        if vowels.contains(char) {
            let index = vowels.firstIndex(of: char)!
            let newIndex = (index + 2) % 5
            encoded.append(vowels[newIndex])
        } else if vowelsUpper.contains(char) {
            let index = vowelsUpper.firstIndex(of: char)!
            let newIndex = (index + 2) % 5
            encoded.append(vowelsUpper[newIndex])
        } else if letters.contains(char) {
            let index = letters.firstIndex(of: char)!
            let newIndex = (index + 2) % 26
            encoded.append(letters[newIndex])
        } else if lettersUpper.contains(char) {
            let index = lettersUpper.firstIndex(of: char)!
            let newIndex = (index + 2) % 26
            encoded.append(lettersUpper[newIndex])
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



// ----------- problem HumanEval_89_encrypt, completion 142 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpswbsmydo.swift:20:28: error: cannot convert value of type 'String.Index' to expected argument type 'Int'
            let newIndex = index + 2 * 2
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
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var encrypted = ""
    for letter in s {
        if let index = alphabet.firstIndex(of: letter) {
            let newIndex = index + 2 * 2
            if newIndex < alphabet.count {
                encrypted.append(alphabet[newIndex])
            } else {
                encrypted.append(alphabet[newIndex - alphabet.count])
            }
        }
    }
    return encrypted
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



