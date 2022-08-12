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



// ----------- problem HumanEval_89_encrypt, completion 178 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpyg6b2_yp.swift:20:16: error: initializer for conditional binding must have Optional type, not 'UnicodeScalar' (aka 'Unicode.Scalar')
            if let newChar = UnicodeScalar(newAsciiValue) {
               ^             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
            let newAsciiValue = asciiValue + (2 * 2)
            if let newChar = UnicodeScalar(newAsciiValue) {
                encryptedString.append(Character(newChar))
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



