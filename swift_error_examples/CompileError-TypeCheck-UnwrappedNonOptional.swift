// ----------- problem HumanEval_89_encrypt, completion 124 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpug3rzyt6.swift:20:73: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let encryptedChar = Character(UnicodeScalar(encryptedIndex + 97)!)
                                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                        

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
    var encrypted = ""
    for char in s {
        let charIndex = char.asciiValue! - 97
        let encryptedIndex = (charIndex + 2 * 2) % 26
        let encryptedChar = Character(UnicodeScalar(encryptedIndex + 97)!)
        encrypted.append(encryptedChar)
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



// ----------- problem HumanEval_89_encrypt, completion 89 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpt9ivjsfc.swift:23:56: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        encrypted.append(Character(UnicodeScalar(ascii)!))
                                   ~~~~~~~~~~~~~~~~~~~~^
                                                       

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
    var encrypted = ""
    for char in s {
        var ascii = char.asciiValue!
        ascii += 2*2
        if ascii > 122 {
            ascii -= 26
        }
        encrypted.append(Character(UnicodeScalar(ascii)!))
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



// ----------- problem HumanEval_89_encrypt, completion 27 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpxe0okevf.swift:20:65: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let newChar = Character(UnicodeScalar(newCharIndex + 97)!)
                                ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                

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
        let charIndex = char.asciiValue! - 97
        let newCharIndex = (charIndex + 2 * 2) % 26
        let newChar = Character(UnicodeScalar(newCharIndex + 97)!)
        encryptedString.append(newChar)
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



// ----------- problem HumanEval_93_encode, completion 189 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmphrx8wngb.swift:19:68: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
            encodedMessage.append(Character(UnicodeScalar(newAscii)!))
                                            ~~~~~~~~~~~~~~~~~~~~~~~^
                                                                   

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
            let ascii = char.asciiValue!
            let asciiValue = ascii + (ascii >= 65 && ascii <= 90 ? 32 : -32)
            let newAscii = asciiValue + (asciiValue >= 97 && asciiValue <= 122 ? 2 : -24)
            encodedMessage.append(Character(UnicodeScalar(newAscii)!))
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



// ----------- problem HumanEval_89_encrypt, completion 138 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp9br6rgoj.swift:20:70: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        encryptedString.append(Character(UnicodeScalar(encryptedChar)!))
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
    var encryptedString = ""
    for char in s {
        let charIndex = char.asciiValue!
        let encryptedChar = charIndex + (2 * 2)
        encryptedString.append(Character(UnicodeScalar(encryptedChar)!))
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



// ----------- problem HumanEval_89_encrypt, completion 12 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmppogvysvb.swift:19:71: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let encryptedChar = Character(UnicodeScalar(charIndex + 2 * 2)!)
                                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                      

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
        let charIndex = char.asciiValue!
        let encryptedChar = Character(UnicodeScalar(charIndex + 2 * 2)!)
        encryptedString.append(encryptedChar)
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



// ----------- problem HumanEval_89_encrypt, completion 10 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp4h_gfvl0.swift:24:67: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                encrypted.append(Character(UnicodeScalar(newAscii)!))
                                           ~~~~~~~~~~~~~~~~~~~~~~~^
                                                                  
/tmp/tmp4h_gfvl0.swift:26:67: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                encrypted.append(Character(UnicodeScalar(newAscii)!))
                                           ~~~~~~~~~~~~~~~~~~~~~~~^
                                                                  

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
    var encrypted = ""
    for letter in s {
        let ascii = letter.asciiValue!
        if ascii >= 97 && ascii <= 122 {
            let newAscii = ascii + 2 * 2
            if newAscii > 122 {
                let diff = newAscii - 122
                let newAscii = 96 + diff
                encrypted.append(Character(UnicodeScalar(newAscii)!))
            } else {
                encrypted.append(Character(UnicodeScalar(newAscii)!))
            }
        } else {
            encrypted.append(letter)
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



// ----------- problem HumanEval_93_encode, completion 150 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpyp6tnfr4.swift:18:60: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
            let newChar = Character(UnicodeScalar(newAscii)!)
                                    ~~~~~~~~~~~~~~~~~~~~~~~^
                                                           

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
            let ascii = char.asciiValue!
            let newAscii = ascii + 2
            let newChar = Character(UnicodeScalar(newAscii)!)
            encoded.append(newChar)
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



// ----------- problem HumanEval_93_encode, completion 193 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpdlrtccwk.swift:18:67: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                encoded.append(Character(UnicodeScalar(ascii + 32)!))
                                         ~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                  
/tmp/tmpdlrtccwk.swift:20:67: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                encoded.append(Character(UnicodeScalar(ascii - 32)!))
                                         ~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                  
/tmp/tmpdlrtccwk.swift:27:27: error: value of type 'String' has no member 'replacingOccurrences'
        encoded = encoded.replacingOccurrences(of: vowel, with: String(vowel.unicodeScalars.first!.value + 2))
                  ~~~~~~~ ^~~~~~~~~~~~~~~~~~~~

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
    var encoded = ""
    for letter in message {
        if let ascii = letter.asciiValue {
            if ascii >= 65 && ascii <= 90 {
                encoded.append(Character(UnicodeScalar(ascii + 32)!))
            } else if ascii >= 97 && ascii <= 122 {
                encoded.append(Character(UnicodeScalar(ascii - 32)!))
            } else {
                encoded.append(letter)
            }
        }
    }
    for vowel in vowels {
        encoded = encoded.replacingOccurrences(of: vowel, with: String(vowel.unicodeScalars.first!.value + 2))
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



// ----------- problem HumanEval_89_encrypt, completion 72 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpev_fryjf.swift:20:72: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let encryptedChar = Character(UnicodeScalar(encryptedCharIndex)!)
                                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                       

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
        let charIndex = char.asciiValue!
        let encryptedCharIndex = charIndex + (2 * 2)
        let encryptedChar = Character(UnicodeScalar(encryptedCharIndex)!)
        encryptedString.append(encryptedChar)
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



// ----------- problem HumanEval_93_encode, completion 30 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3jekdhm_.swift:18:74: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                encodedMessage.append(Character(UnicodeScalar(ascii + 32)!))
                                                ~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                         
/tmp/tmp3jekdhm_.swift:20:74: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                encodedMessage.append(Character(UnicodeScalar(ascii - 32)!))
                                                ~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                         

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
            let ascii = char.asciiValue!
            if ascii >= 65 && ascii <= 90 {
                encodedMessage.append(Character(UnicodeScalar(ascii + 32)!))
            } else if ascii >= 97 && ascii <= 122 {
                encodedMessage.append(Character(UnicodeScalar(ascii - 32)!))
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



// ----------- problem HumanEval_89_encrypt, completion 16 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpavm0lw2x.swift:20:61: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let newChar = Character(UnicodeScalar(newIndex + 97)!)
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
    var encryptedString = ""
    for char in s {
        let index = char.asciiValue! - 97
        let newIndex = (index + 4) % 26
        let newChar = Character(UnicodeScalar(newIndex + 97)!)
        encryptedString.append(newChar)
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



// ----------- problem HumanEval_89_encrypt, completion 42 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpxe0okevf.swift:20:65: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let newChar = Character(UnicodeScalar(newCharIndex + 97)!)
                                ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                

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
        let charIndex = char.asciiValue! - 97
        let newCharIndex = (charIndex + 2 * 2) % 26
        let newChar = Character(UnicodeScalar(newCharIndex + 97)!)
        encryptedString.append(newChar)
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



// ----------- problem HumanEval_93_encode, completion 199 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpw7xewz_e.swift:19:80: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                encodedMessage.append(Character(UnicodeScalar(encodedChar - 26)!))
                                                ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                               
/tmp/tmpw7xewz_e.swift:21:75: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                encodedMessage.append(Character(UnicodeScalar(encodedChar)!))
                                                ~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                          

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
            let asciiValue = char.asciiValue!
            let encodedChar = asciiValue + 2
            if encodedChar > 90 {
                encodedMessage.append(Character(UnicodeScalar(encodedChar - 26)!))
            } else {
                encodedMessage.append(Character(UnicodeScalar(encodedChar)!))
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



// ----------- problem HumanEval_93_encode, completion 118 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6aqsoax1.swift:18:79: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                encodedMessage.append(Character(UnicodeScalar(asciiValue + 32)!))
                                                ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                              
/tmp/tmp6aqsoax1.swift:20:79: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                encodedMessage.append(Character(UnicodeScalar(asciiValue - 32)!))
                                                ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                              
/tmp/tmp6aqsoax1.swift:27:41: error: value of type 'String' has no member 'replacingOccurrences'
        encodedMessage = encodedMessage.replacingOccurrences(of: vowel, with: String(vowel.unicodeScalars.first!.value + 2))
                         ~~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~~~~~

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
    var encodedMessage = ""
    for letter in message {
        if let asciiValue = letter.asciiValue {
            if asciiValue >= 65 && asciiValue <= 90 {
                encodedMessage.append(Character(UnicodeScalar(asciiValue + 32)!))
            } else if asciiValue >= 97 && asciiValue <= 122 {
                encodedMessage.append(Character(UnicodeScalar(asciiValue - 32)!))
            } else {
                encodedMessage.append(letter)
            }
        }
    }
    for vowel in vowels {
        encodedMessage = encodedMessage.replacingOccurrences(of: vowel, with: String(vowel.unicodeScalars.first!.value + 2))
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



// ----------- problem HumanEval_93_encode, completion 198 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpukg17ybf.swift:17:74: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
            encodedMessage.append(Character(UnicodeScalar(charAscii + 32)!))
                                            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                         
/tmp/tmpukg17ybf.swift:19:74: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
            encodedMessage.append(Character(UnicodeScalar(charAscii - 32)!))
                                            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                         

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
        let charAscii = char.asciiValue!
        if charAscii >= 65 && charAscii <= 90 {
            encodedMessage.append(Character(UnicodeScalar(charAscii + 32)!))
        } else if charAscii >= 97 && charAscii <= 122 {
            encodedMessage.append(Character(UnicodeScalar(charAscii - 32)!))
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



// ----------- problem HumanEval_89_encrypt, completion 4 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpdatp5bdz.swift:20:56: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let newChar = Character(UnicodeScalar(newAscii)!)
                                ~~~~~~~~~~~~~~~~~~~~~~~^
                                                       

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
    var encrypted = ""
    for char in s {
        let ascii = char.asciiValue!
        let newAscii = ascii + 2 * 2
        let newChar = Character(UnicodeScalar(newAscii)!)
        encrypted.append(newChar)
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



// ----------- problem HumanEval_89_encrypt, completion 129 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp1q82uolc.swift:23:69: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                let newChar = Character(UnicodeScalar(97 + diff - 1)!)
                                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                    
/tmp/tmp1q82uolc.swift:26:64: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                let newChar = Character(UnicodeScalar(newAscii)!)
                                        ~~~~~~~~~~~~~~~~~~~~~~~^
                                                               

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
    var encrypted = ""
    for char in s {
        let ascii = char.asciiValue!
        if ascii >= 97 && ascii <= 122 {
            let newAscii = ascii + 2 * 2
            if newAscii > 122 {
                let diff = newAscii - 122
                let newChar = Character(UnicodeScalar(97 + diff - 1)!)
                encrypted.append(newChar)
            } else {
                let newChar = Character(UnicodeScalar(newAscii)!)
                encrypted.append(newChar)
            }
        } else {
            encrypted.append(char)
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



// ----------- problem HumanEval_89_encrypt, completion 134 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpvl56onxb.swift:20:56: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let newChar = Character(UnicodeScalar(newIndex)!)
                                ~~~~~~~~~~~~~~~~~~~~~~~^
                                                       

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
        let index = char.asciiValue!
        let newIndex = (index - 97 + 2 * 2) % 26 + 97
        let newChar = Character(UnicodeScalar(newIndex)!)
        encryptedString.append(newChar)
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



// ----------- problem HumanEval_89_encrypt, completion 131 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmppynlzjo3.swift:18:82: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        result += String(Character(UnicodeScalar(UInt8(char.asciiValue! + 2 * 2))!))
                                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                                 

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
        result += String(Character(UnicodeScalar(UInt8(char.asciiValue! + 2 * 2))!))
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



// ----------- problem HumanEval_89_encrypt, completion 68 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmprdni2ral.swift:23:72: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                encrypted.append(Character(UnicodeScalar(97 + diff - 1)!))
                                           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                       
/tmp/tmprdni2ral.swift:25:66: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                encrypted.append(Character(UnicodeScalar(newChar)!))
                                           ~~~~~~~~~~~~~~~~~~~~~~^
                                                                 

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
    var encrypted = ""
    for char in s {
        let ascii = char.asciiValue!
        if ascii >= 97 && ascii <= 122 {
            let newChar = ascii + (2 * 2)
            if newChar > 122 {
                let diff = newChar - 122
                encrypted.append(Character(UnicodeScalar(97 + diff - 1)!))
            } else {
                encrypted.append(Character(UnicodeScalar(newChar)!))
            }
        } else {
            encrypted.append(char)
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



// ----------- problem HumanEval_89_encrypt, completion 52 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmphgzeclvi.swift:21:40: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        encrypted.append(Character(char!))
                                   ~~~~^
                                       

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
    var encrypted = ""
    for char in s {
        let unicode = char.unicodeScalars.first!.value
        let shifted = unicode + (2 * 2)
        let char = UnicodeScalar(UInt8(shifted))
        encrypted.append(Character(char!))
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



// ----------- problem HumanEval_89_encrypt, completion 7 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp9581rygp.swift:20:61: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let newChar = Character(UnicodeScalar(newAsciiValue)!)
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
    var encryptedString = ""
    for char in s {
        let asciiValue = char.asciiValue!
        let newAsciiValue = asciiValue + 2 * 2
        let newChar = Character(UnicodeScalar(newAsciiValue)!)
        encryptedString.append(newChar)
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



// ----------- problem HumanEval_89_encrypt, completion 41 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpev_fryjf.swift:20:72: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let encryptedChar = Character(UnicodeScalar(encryptedCharIndex)!)
                                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                       

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
        let charIndex = char.asciiValue!
        let encryptedCharIndex = charIndex + (2 * 2)
        let encryptedChar = Character(UnicodeScalar(encryptedCharIndex)!)
        encryptedString.append(encryptedChar)
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



// ----------- problem HumanEval_89_encrypt, completion 34 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmphg9d16db.swift:18:82: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        result += String(Character(UnicodeScalar(UInt8(char.asciiValue!) + 2 * 2)!))
                                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                                 

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
        result += String(Character(UnicodeScalar(UInt8(char.asciiValue!) + 2 * 2)!))
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



// ----------- problem HumanEval_89_encrypt, completion 101 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp8y3o4kte.swift:20:56: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        result.append(Character(UnicodeScalar(newAscii)!))
                                ~~~~~~~~~~~~~~~~~~~~~~~^
                                                       

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
        let ascii = char.asciiValue!
        let newAscii = ascii + (2 * 2)
        result.append(Character(UnicodeScalar(newAscii)!))
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



// ----------- problem HumanEval_89_encrypt, completion 28 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpwcu69l4x.swift:20:73: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let encryptedChar = Character(UnicodeScalar(encryptedIndex + 97)!)
                                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                        

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
        let charIndex = char.asciiValue! - 97
        let encryptedIndex = (charIndex + 2 * 2) % 26
        let encryptedChar = Character(UnicodeScalar(encryptedIndex + 97)!)
        encryptedString.append(encryptedChar)
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



// ----------- problem HumanEval_89_encrypt, completion 6 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpewx4hyy4.swift:20:60: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let newChar = Character(UnicodeScalar(newCharIndex)!)
                                ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                           

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
        let charIndex = char.asciiValue!
        let newCharIndex = charIndex + (2 * 2)
        let newChar = Character(UnicodeScalar(newCharIndex)!)
        encryptedString.append(newChar)
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



// ----------- problem HumanEval_89_encrypt, completion 100 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpws0_pdzc.swift:18:91: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        encryptedString += String(Character(UnicodeScalar(UInt8(char.asciiValue! + 2 * 2))!))
                                            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                                          

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
        encryptedString += String(Character(UnicodeScalar(UInt8(char.asciiValue! + 2 * 2))!))
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



// ----------- problem HumanEval_93_encode, completion 173 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp6wx2a152.swift:18:56: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
            let char2 = Character(UnicodeScalar(ascii2)!)
                                  ~~~~~~~~~~~~~~~~~~~~~^
                                                       

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
            let ascii = char.asciiValue!
            let ascii2 = ascii + 2
            let char2 = Character(UnicodeScalar(ascii2)!)
            encoded.append(char2)
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



// ----------- problem HumanEval_89_encrypt, completion 126 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpna4477qm.swift:23:69: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                let newChar = Character(UnicodeScalar(97 + diff - 1)!)
                                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                    
/tmp/tmpna4477qm.swift:26:64: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                let newChar = Character(UnicodeScalar(newAscii)!)
                                        ~~~~~~~~~~~~~~~~~~~~~~~^
                                                               

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
    var encrypted = ""
    for char in s {
        let ascii = char.asciiValue!
        if ascii >= 97 && ascii <= 122 {
            let newAscii = ascii + (2 * 2)
            if newAscii > 122 {
                let diff = newAscii - 122
                let newChar = Character(UnicodeScalar(97 + diff - 1)!)
                encrypted.append(newChar)
            } else {
                let newChar = Character(UnicodeScalar(newAscii)!)
                encrypted.append(newChar)
            }
        } else {
            encrypted.append(char)
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



// ----------- problem HumanEval_89_encrypt, completion 182 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpdg4xifhw.swift:20:67: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        encryptedString.append(Character(UnicodeScalar(asciiValue)!))
                                         ~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                  

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
        var asciiValue = char.asciiValue!
        asciiValue += 2 * 2
        encryptedString.append(Character(UnicodeScalar(asciiValue)!))
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



// ----------- problem HumanEval_89_encrypt, completion 87 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpa9c6apol.swift:20:61: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let newChar = Character(UnicodeScalar(newIndex + 97)!)
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
    var encryptedString = ""
    for char in s {
        let index = char.asciiValue! - 97
        let newIndex = (index + 2 * 2) % 26
        let newChar = Character(UnicodeScalar(newIndex + 97)!)
        encryptedString.append(newChar)
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



// ----------- problem HumanEval_93_encode, completion 186 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3jekdhm_.swift:18:74: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                encodedMessage.append(Character(UnicodeScalar(ascii + 32)!))
                                                ~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                         
/tmp/tmp3jekdhm_.swift:20:74: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                encodedMessage.append(Character(UnicodeScalar(ascii - 32)!))
                                                ~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                         

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
            let ascii = char.asciiValue!
            if ascii >= 65 && ascii <= 90 {
                encodedMessage.append(Character(UnicodeScalar(ascii + 32)!))
            } else if ascii >= 97 && ascii <= 122 {
                encodedMessage.append(Character(UnicodeScalar(ascii - 32)!))
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



// ----------- problem HumanEval_89_encrypt, completion 23 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp0y3v2kr6.swift:19:68: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let encryptedChar = String(UnicodeScalar(charIndex + 2 * 2)!)
                                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                   

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
        let charIndex = char.asciiValue!
        let encryptedChar = String(UnicodeScalar(charIndex + 2 * 2)!)
        encryptedString += encryptedChar
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



// ----------- problem HumanEval_89_encrypt, completion 83 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp8s8j0f9r.swift:23:69: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                let newChar = Character(UnicodeScalar(97 + diff - 1)!)
                                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                    
/tmp/tmp8s8j0f9r.swift:26:64: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                let newChar = Character(UnicodeScalar(newAscii)!)
                                        ~~~~~~~~~~~~~~~~~~~~~~~^
                                                               

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
        let ascii = char.asciiValue!
        if ascii >= 97 && ascii <= 122 {
            let newAscii = ascii + 2 * 2
            if newAscii > 122 {
                let diff = newAscii - 122
                let newChar = Character(UnicodeScalar(97 + diff - 1)!)
                encryptedString.append(newChar)
            } else {
                let newChar = Character(UnicodeScalar(newAscii)!)
                encryptedString.append(newChar)
            }
        } else {
            encryptedString.append(char)
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



// ----------- problem HumanEval_89_encrypt, completion 79 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpe2_8vbgj.swift:20:81: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let encryptedLetter = Character(UnicodeScalar(encryptedLetterIndex + 97)!)
                                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                                

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
    for letter in s {
        let letterIndex = letter.asciiValue! - 97
        let encryptedLetterIndex = (letterIndex + 2) % 26
        let encryptedLetter = Character(UnicodeScalar(encryptedLetterIndex + 97)!)
        encryptedString.append(encryptedLetter)
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



// ----------- problem HumanEval_89_encrypt, completion 21 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpa84j8z7y.swift:20:77: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let encryptedChar = Character(UnicodeScalar(encryptedCharIndex + 97)!)
                                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                            

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
        let charIndex = char.asciiValue! - 97
        let encryptedCharIndex = (charIndex + 2 * 2) % 26
        let encryptedChar = Character(UnicodeScalar(encryptedCharIndex + 97)!)
        encryptedString.append(encryptedChar)
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



// ----------- problem HumanEval_89_encrypt, completion 112 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpbpqp7y_y.swift:20:56: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let newChar = Character(UnicodeScalar(newAscii)!)
                                ~~~~~~~~~~~~~~~~~~~~~~~^
                                                       

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
        let ascii = char.asciiValue!
        let newAscii = ascii + 2 * 2
        let newChar = Character(UnicodeScalar(newAscii)!)
        encryptedString.append(newChar)
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



// ----------- problem HumanEval_89_encrypt, completion 73 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3npi1k4x.swift:20:61: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let newChar = Character(UnicodeScalar(newAsciiValue)!)
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
    var encryptedString = ""
    for char in s {
        let asciiValue = char.asciiValue!
        let newAsciiValue = asciiValue + (2 * 2)
        let newChar = Character(UnicodeScalar(newAsciiValue)!)
        encryptedString.append(newChar)
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



// ----------- problem HumanEval_89_encrypt, completion 81 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpr108hfn5.swift:22:69: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                let newChar = Character(UnicodeScalar(97 + diff - 1)!)
                                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                    
/tmp/tmpr108hfn5.swift:25:69: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                let newChar = Character(UnicodeScalar(newAsciiValue)!)
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
    var encryptedString = ""
    for char in s {
        if let asciiValue = char.asciiValue {
            let newAsciiValue = asciiValue + 2 * 2
            if newAsciiValue > 122 {
                let diff = newAsciiValue - 122
                let newChar = Character(UnicodeScalar(97 + diff - 1)!)
                encryptedString.append(newChar)
            } else {
                let newChar = Character(UnicodeScalar(newAsciiValue)!)
                encryptedString.append(newChar)
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



// ----------- problem HumanEval_89_encrypt, completion 199 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmptz7v6yt1.swift:20:64: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
            encrypted.append(Character(UnicodeScalar(ascii + 2)!))
                                       ~~~~~~~~~~~~~~~~~~~~~~~~^
                                                               
/tmp/tmptz7v6yt1.swift:22:64: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
            encrypted.append(Character(UnicodeScalar(ascii + 2)!))
                                       ~~~~~~~~~~~~~~~~~~~~~~~~^
                                                               

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
    var encrypted = ""
    for char in s {
        let ascii = char.asciiValue!
        if ascii >= 97 && ascii <= 122 {
            encrypted.append(Character(UnicodeScalar(ascii + 2)!))
        } else if ascii >= 65 && ascii <= 90 {
            encrypted.append(Character(UnicodeScalar(ascii + 2)!))
        } else {
            encrypted.append(char)
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



// ----------- problem HumanEval_93_encode, completion 140 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp0nvpniq5.swift:20:151: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                encodedMessage += String(char).lowercased().unicodeScalars.map { UnicodeScalar(Int($0.value) + 2)! }.map { Character(UnicodeScalar($0)!) }
                                                                                                                                     ~~~~~~~~~~~~~~~~~^
                                                                                                                                                      
/tmp/tmp0nvpniq5.swift:23:148: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
            encodedMessage += String(char).lowercased().unicodeScalars.map { UnicodeScalar(Int($0.value) - 32)! }.map { Character(UnicodeScalar($0)!) }
                                                                                                                                  ~~~~~~~~~~~~~~~~~^
                                                                                                                                                   

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
    for char in message {
        if vowels.contains(String(char).lowercased()) {
            if String(char).lowercased() == "u" {
                encodedMessage += "a"
            } else {
                encodedMessage += String(char).lowercased().unicodeScalars.map { UnicodeScalar(Int($0.value) + 2)! }.map { Character(UnicodeScalar($0)!) }
            }
        } else {
            encodedMessage += String(char).lowercased().unicodeScalars.map { UnicodeScalar(Int($0.value) - 32)! }.map { Character(UnicodeScalar($0)!) }
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



// ----------- problem HumanEval_89_encrypt, completion 191 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmppogvysvb.swift:19:71: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let encryptedChar = Character(UnicodeScalar(charIndex + 2 * 2)!)
                                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                      

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
        let charIndex = char.asciiValue!
        let encryptedChar = Character(UnicodeScalar(charIndex + 2 * 2)!)
        encryptedString.append(encryptedChar)
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



// ----------- problem HumanEval_89_encrypt, completion 78 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpxe0okevf.swift:20:65: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let newChar = Character(UnicodeScalar(newCharIndex + 97)!)
                                ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                

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
        let charIndex = char.asciiValue! - 97
        let newCharIndex = (charIndex + 2 * 2) % 26
        let newChar = Character(UnicodeScalar(newCharIndex + 97)!)
        encryptedString.append(newChar)
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



// ----------- problem HumanEval_89_encrypt, completion 26 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpg2734pjb.swift:21:44: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        result.append(Character(shiftedChar!))
                                ~~~~~~~~~~~^
                                           

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
        let unicode = char.unicodeScalars.first!.value
        let shifted = unicode + (2 * 2)
        let shiftedChar = UnicodeScalar(UInt8(shifted))
        result.append(Character(shiftedChar!))
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



// ----------- problem HumanEval_89_encrypt, completion 69 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpgwmfrseh.swift:21:52: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        encrypted.append(Character(shiftedCharacter!))
                                   ~~~~~~~~~~~~~~~~^
                                                   

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
    var encrypted = ""
    for character in s {
        let unicode = character.unicodeScalars.first!.value
        let newUnicode = unicode + (2 * 2)
        let shiftedCharacter = UnicodeScalar(UInt8(newUnicode))
        encrypted.append(Character(shiftedCharacter!))
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



// ----------- problem HumanEval_93_encode, completion 69 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmppvayyxm9.swift:18:60: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
            let newChar = Character(UnicodeScalar(newAscii)!)
                                    ~~~~~~~~~~~~~~~~~~~~~~~^
                                                           

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
            let ascii = char.asciiValue!
            let newAscii = ascii + 2
            let newChar = Character(UnicodeScalar(newAscii)!)
            encodedMessage.append(newChar)
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



// ----------- problem HumanEval_89_encrypt, completion 67 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmppws61o25.swift:18:79: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        result += String(Character(UnicodeScalar(UInt8(c.asciiValue!) + 2 * 2)!))
                                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                              

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
    for c in s {
        result += String(Character(UnicodeScalar(UInt8(c.asciiValue!) + 2 * 2)!))
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



// ----------- problem HumanEval_89_encrypt, completion 177 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpa9c6apol.swift:20:61: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let newChar = Character(UnicodeScalar(newIndex + 97)!)
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
    var encryptedString = ""
    for char in s {
        let index = char.asciiValue! - 97
        let newIndex = (index + 2 * 2) % 26
        let newChar = Character(UnicodeScalar(newIndex + 97)!)
        encryptedString.append(newChar)
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



// ----------- problem HumanEval_93_encode, completion 153 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpp8ekid3o.swift:18:68: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
            let encodedChar = Character(UnicodeScalar(encodedAscii)!)
                                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                   

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
            let ascii = char.asciiValue!
            let encodedAscii = ascii + 2
            let encodedChar = Character(UnicodeScalar(encodedAscii)!)
            encodedMessage.append(encodedChar)
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



// ----------- problem HumanEval_89_encrypt, completion 66 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp99qj20uz.swift:20:56: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let newChar = Character(UnicodeScalar(newAscii)!)
                                ~~~~~~~~~~~~~~~~~~~~~~~^
                                                       

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
    var encrypted = ""
    for char in s {
        let ascii = char.asciiValue!
        let newAscii = ascii + (2 * 2)
        let newChar = Character(UnicodeScalar(newAscii)!)
        encrypted.append(newChar)
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



// ----------- problem HumanEval_89_encrypt, completion 176 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpt2507arx.swift:23:69: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                let newChar = Character(UnicodeScalar(97 + diff - 1)!)
                                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                    
/tmp/tmpt2507arx.swift:26:69: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                let newChar = Character(UnicodeScalar(newAsciiValue)!)
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
    var encryptedString = ""
    for char in s {
        let asciiValue = char.asciiValue!
        if asciiValue >= 97 && asciiValue <= 122 {
            let newAsciiValue = asciiValue + (2 * 2)
            if newAsciiValue > 122 {
                let diff = newAsciiValue - 122
                let newChar = Character(UnicodeScalar(97 + diff - 1)!)
                encryptedString.append(newChar)
            } else {
                let newChar = Character(UnicodeScalar(newAsciiValue)!)
                encryptedString.append(newChar)
            }
        } else {
            encryptedString.append(char)
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



// ----------- problem HumanEval_89_encrypt, completion 115 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpyopnng0d.swift:20:72: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let encryptedChar = Character(UnicodeScalar(encryptedCharIndex)!)
                                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                       

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
        let charIndex = char.asciiValue!
        let encryptedCharIndex = charIndex + 2 * 2
        let encryptedChar = Character(UnicodeScalar(encryptedCharIndex)!)
        encryptedString.append(encryptedChar)
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



// ----------- problem HumanEval_89_encrypt, completion 185 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpt1210ewd.swift:23:73: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                encryptedString.append(Character(UnicodeScalar(newAscii)!))
                                                 ~~~~~~~~~~~~~~~~~~~~~~~^
                                                                        
/tmp/tmpt1210ewd.swift:25:73: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                encryptedString.append(Character(UnicodeScalar(newAscii)!))
                                                 ~~~~~~~~~~~~~~~~~~~~~~~^
                                                                        

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
        if let ascii = char.asciiValue {
            let newAscii = ascii + (2 * 2)
            if newAscii > 122 {
                let diff = newAscii - 122
                let newAscii = 96 + diff
                encryptedString.append(Character(UnicodeScalar(newAscii)!))
            } else {
                encryptedString.append(Character(UnicodeScalar(newAscii)!))
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



// ----------- problem HumanEval_89_encrypt, completion 64 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpev_fryjf.swift:20:72: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let encryptedChar = Character(UnicodeScalar(encryptedCharIndex)!)
                                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                       

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
        let charIndex = char.asciiValue!
        let encryptedCharIndex = charIndex + (2 * 2)
        let encryptedChar = Character(UnicodeScalar(encryptedCharIndex)!)
        encryptedString.append(encryptedChar)
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



// ----------- problem HumanEval_89_encrypt, completion 167 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmphg9d16db.swift:18:82: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        result += String(Character(UnicodeScalar(UInt8(char.asciiValue!) + 2 * 2)!))
                                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                                 

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
        result += String(Character(UnicodeScalar(UInt8(char.asciiValue!) + 2 * 2)!))
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



// ----------- problem HumanEval_93_encode, completion 191 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpvjlgnsm9.swift:18:60: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
            let newChar = Character(UnicodeScalar(newAscii)!)
                                    ~~~~~~~~~~~~~~~~~~~~~~~^
                                                           

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
            let ascii = char.asciiValue!
            let newAscii = ascii + (ascii < 97 ? 2 : -2)
            let newChar = Character(UnicodeScalar(newAscii)!)
            encodedMessage.append(newChar)
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



// ----------- problem HumanEval_89_encrypt, completion 165 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpbpqp7y_y.swift:20:56: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let newChar = Character(UnicodeScalar(newAscii)!)
                                ~~~~~~~~~~~~~~~~~~~~~~~^
                                                       

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
        let ascii = char.asciiValue!
        let newAscii = ascii + 2 * 2
        let newChar = Character(UnicodeScalar(newAscii)!)
        encryptedString.append(newChar)
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



// ----------- problem HumanEval_93_encode, completion 102 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpq49j_a0e.swift:18:67: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                encoded.append(Character(UnicodeScalar(ascii + 32)!))
                                         ~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                  
/tmp/tmpq49j_a0e.swift:20:67: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
                encoded.append(Character(UnicodeScalar(ascii - 32)!))
                                         ~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                  
/tmp/tmpq49j_a0e.swift:27:27: error: value of type 'String' has no member 'replacingOccurrences'
        encoded = encoded.replacingOccurrences(of: vowel, with: String(vowel.asciiValue! + 2))
                  ~~~~~~~ ^~~~~~~~~~~~~~~~~~~~
/tmp/tmpq49j_a0e.swift:27:78: error: value of type 'String' has no member 'asciiValue'
        encoded = encoded.replacingOccurrences(of: vowel, with: String(vowel.asciiValue! + 2))
                                                                       ~~~~~ ^~~~~~~~~~

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
    var encoded = ""
    for letter in message {
        if let ascii = letter.asciiValue {
            if ascii >= 65 && ascii <= 90 {
                encoded.append(Character(UnicodeScalar(ascii + 32)!))
            } else if ascii >= 97 && ascii <= 122 {
                encoded.append(Character(UnicodeScalar(ascii - 32)!))
            } else {
                encoded.append(letter)
            }
        }
    }
    for vowel in vowels {
        encoded = encoded.replacingOccurrences(of: vowel, with: String(vowel.asciiValue! + 2))
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



// ----------- problem HumanEval_89_encrypt, completion 8 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpg2734pjb.swift:21:44: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        result.append(Character(shiftedChar!))
                                ~~~~~~~~~~~^
                                           

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
        let unicode = char.unicodeScalars.first!.value
        let shifted = unicode + (2 * 2)
        let shiftedChar = UnicodeScalar(UInt8(shifted))
        result.append(Character(shiftedChar!))
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



// ----------- problem HumanEval_89_encrypt, completion 103 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpbpqp7y_y.swift:20:56: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let newChar = Character(UnicodeScalar(newAscii)!)
                                ~~~~~~~~~~~~~~~~~~~~~~~^
                                                       

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
        let ascii = char.asciiValue!
        let newAscii = ascii + 2 * 2
        let newChar = Character(UnicodeScalar(newAscii)!)
        encryptedString.append(newChar)
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



// ----------- problem HumanEval_93_encode, completion 63 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpyp6tnfr4.swift:18:60: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
            let newChar = Character(UnicodeScalar(newAscii)!)
                                    ~~~~~~~~~~~~~~~~~~~~~~~^
                                                           

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
            let ascii = char.asciiValue!
            let newAscii = ascii + 2
            let newChar = Character(UnicodeScalar(newAscii)!)
            encoded.append(newChar)
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



// ----------- problem HumanEval_89_encrypt, completion 76 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp7z54flqw.swift:20:81: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let encryptedLetter = Character(UnicodeScalar(encryptedLetterIndex + 97)!)
                                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                                

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
    for letter in s {
        let letterIndex = letter.asciiValue! - 97
        let encryptedLetterIndex = (letterIndex + 4) % 26
        let encryptedLetter = Character(UnicodeScalar(encryptedLetterIndex + 97)!)
        encryptedString.append(encryptedLetter)
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



// ----------- problem HumanEval_89_encrypt, completion 58 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpz5h8ldzx.swift:20:61: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let newChar = Character(UnicodeScalar(newIndex + 97)!)
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
        let index = char.asciiValue! - 97
        let newIndex = (index + 2 * 2) % 26
        let newChar = Character(UnicodeScalar(newIndex + 97)!)
        result.append(newChar)
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



// ----------- problem HumanEval_89_encrypt, completion 163 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpa84j8z7y.swift:20:77: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
        let encryptedChar = Character(UnicodeScalar(encryptedCharIndex + 97)!)
                                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                                            

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
        let charIndex = char.asciiValue! - 97
        let encryptedCharIndex = (charIndex + 2 * 2) % 26
        let encryptedChar = Character(UnicodeScalar(encryptedCharIndex + 97)!)
        encryptedString.append(encryptedChar)
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



// ----------- problem HumanEval_93_encode, completion 40 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpuf8huu5e.swift:17:63: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
            encoded.append(Character(UnicodeScalar(ascii + 32)!))
                                     ~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                              
/tmp/tmpuf8huu5e.swift:19:63: error: cannot force unwrap value of non-optional type 'UnicodeScalar' (aka 'Unicode.Scalar')
            encoded.append(Character(UnicodeScalar(ascii - 32)!))
                                     ~~~~~~~~~~~~~~~~~~~~~~~~~^
                                                              

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
        let ascii = char.asciiValue!
        if ascii >= 65 && ascii <= 90 {
            encoded.append(Character(UnicodeScalar(ascii + 32)!))
        } else if ascii >= 97 && ascii <= 122 {
            encoded.append(Character(UnicodeScalar(ascii - 32)!))
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



