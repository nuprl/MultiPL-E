// ----------- problem HumanEval_76_is_simple_power, completion 34 ------------
// status = Exception
// exit_code = -4
/* stderr = 

*/
/* stdout = 

*/


/// Your task is to write a function that returns true if a number x is a simple
/// power of n and false in other cases.
/// x is a simple power of n if n**int=x
/// For example:
/// >>> is_simple_power(x: 1, n: 4)
/// true
/// >>> is_simple_power(x: 2, n: 2)
/// true
/// >>> is_simple_power(x: 8, n: 2)
/// true
/// >>> is_simple_power(x: 3, n: 2)
/// false
/// >>> is_simple_power(x: 3, n: 1)
/// false
/// >>> is_simple_power(x: 5, n: 3)
/// false
func is_simple_power(x: Int, n: Int) -> Bool {
    if x == 1 {
        return true
    }
    if n == 1 {
        return false
    }
    var result = 1
    for _ in 1...x {
        result *= n
        if result == x {
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
            
assert(is_simple_power(x: 16, n: 2) == true)
assert(is_simple_power(x: 143214, n: 16) == false)
assert(is_simple_power(x: 4, n: 2) == true)
assert(is_simple_power(x: 9, n: 3) == true)
assert(is_simple_power(x: 16, n: 4) == true)
assert(is_simple_power(x: 24, n: 2) == false)
assert(is_simple_power(x: 128, n: 4) == false)
assert(is_simple_power(x: 12, n: 6) == false)
assert(is_simple_power(x: 1, n: 1) == true)
assert(is_simple_power(x: 1, n: 12) == true)



// ----------- problem HumanEval_76_is_simple_power, completion 183 ------------
// status = Exception
// exit_code = -4
/* stderr = 

*/
/* stdout = 

*/


/// Your task is to write a function that returns true if a number x is a simple
/// power of n and false in other cases.
/// x is a simple power of n if n**int=x
/// For example:
/// >>> is_simple_power(x: 1, n: 4)
/// true
/// >>> is_simple_power(x: 2, n: 2)
/// true
/// >>> is_simple_power(x: 8, n: 2)
/// true
/// >>> is_simple_power(x: 3, n: 2)
/// false
/// >>> is_simple_power(x: 3, n: 1)
/// false
/// >>> is_simple_power(x: 5, n: 3)
/// false
func is_simple_power(x: Int, n: Int) -> Bool {
    if n == 1 {
        return x == 1
    }
    var result = 1
    for _ in 1...x {
        result *= n
        if result == x {
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
            
assert(is_simple_power(x: 16, n: 2) == true)
assert(is_simple_power(x: 143214, n: 16) == false)
assert(is_simple_power(x: 4, n: 2) == true)
assert(is_simple_power(x: 9, n: 3) == true)
assert(is_simple_power(x: 16, n: 4) == true)
assert(is_simple_power(x: 24, n: 2) == false)
assert(is_simple_power(x: 128, n: 4) == false)
assert(is_simple_power(x: 12, n: 6) == false)
assert(is_simple_power(x: 1, n: 1) == true)
assert(is_simple_power(x: 1, n: 12) == true)



// ----------- problem HumanEval_76_is_simple_power, completion 92 ------------
// status = Exception
// exit_code = -4
/* stderr = 

*/
/* stdout = 

*/


/// Your task is to write a function that returns true if a number x is a simple
/// power of n and false in other cases.
/// x is a simple power of n if n**int=x
/// For example:
/// >>> is_simple_power(x: 1, n: 4)
/// true
/// >>> is_simple_power(x: 2, n: 2)
/// true
/// >>> is_simple_power(x: 8, n: 2)
/// true
/// >>> is_simple_power(x: 3, n: 2)
/// false
/// >>> is_simple_power(x: 3, n: 1)
/// false
/// >>> is_simple_power(x: 5, n: 3)
/// false
func is_simple_power(x: Int, n: Int) -> Bool {
    if x == 1 {
        return true
    }
    var result = 1
    for _ in 1...x {
        result *= n
        if result == x {
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
            
assert(is_simple_power(x: 16, n: 2) == true)
assert(is_simple_power(x: 143214, n: 16) == false)
assert(is_simple_power(x: 4, n: 2) == true)
assert(is_simple_power(x: 9, n: 3) == true)
assert(is_simple_power(x: 16, n: 4) == true)
assert(is_simple_power(x: 24, n: 2) == false)
assert(is_simple_power(x: 128, n: 4) == false)
assert(is_simple_power(x: 12, n: 6) == false)
assert(is_simple_power(x: 1, n: 1) == true)
assert(is_simple_power(x: 1, n: 12) == true)



// ----------- problem HumanEval_76_is_simple_power, completion 40 ------------
// status = Exception
// exit_code = -4
/* stderr = 

*/
/* stdout = 

*/


/// Your task is to write a function that returns true if a number x is a simple
/// power of n and false in other cases.
/// x is a simple power of n if n**int=x
/// For example:
/// >>> is_simple_power(x: 1, n: 4)
/// true
/// >>> is_simple_power(x: 2, n: 2)
/// true
/// >>> is_simple_power(x: 8, n: 2)
/// true
/// >>> is_simple_power(x: 3, n: 2)
/// false
/// >>> is_simple_power(x: 3, n: 1)
/// false
/// >>> is_simple_power(x: 5, n: 3)
/// false
func is_simple_power(x: Int, n: Int) -> Bool {
    if x == 1 {
        return true
    }
    var result = 1
    for _ in 1...x {
        result *= n
        if result == x {
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
            
assert(is_simple_power(x: 16, n: 2) == true)
assert(is_simple_power(x: 143214, n: 16) == false)
assert(is_simple_power(x: 4, n: 2) == true)
assert(is_simple_power(x: 9, n: 3) == true)
assert(is_simple_power(x: 16, n: 4) == true)
assert(is_simple_power(x: 24, n: 2) == false)
assert(is_simple_power(x: 128, n: 4) == false)
assert(is_simple_power(x: 12, n: 6) == false)
assert(is_simple_power(x: 1, n: 1) == true)
assert(is_simple_power(x: 1, n: 12) == true)



// ----------- problem HumanEval_76_is_simple_power, completion 53 ------------
// status = Exception
// exit_code = -4
/* stderr = 

*/
/* stdout = 

*/


/// Your task is to write a function that returns true if a number x is a simple
/// power of n and false in other cases.
/// x is a simple power of n if n**int=x
/// For example:
/// >>> is_simple_power(x: 1, n: 4)
/// true
/// >>> is_simple_power(x: 2, n: 2)
/// true
/// >>> is_simple_power(x: 8, n: 2)
/// true
/// >>> is_simple_power(x: 3, n: 2)
/// false
/// >>> is_simple_power(x: 3, n: 1)
/// false
/// >>> is_simple_power(x: 5, n: 3)
/// false
func is_simple_power(x: Int, n: Int) -> Bool {
    if x == 1 {
        return true
    }
    var result = 1
    for _ in 1...x {
        result *= n
        if result == x {
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
            
assert(is_simple_power(x: 16, n: 2) == true)
assert(is_simple_power(x: 143214, n: 16) == false)
assert(is_simple_power(x: 4, n: 2) == true)
assert(is_simple_power(x: 9, n: 3) == true)
assert(is_simple_power(x: 16, n: 4) == true)
assert(is_simple_power(x: 24, n: 2) == false)
assert(is_simple_power(x: 128, n: 4) == false)
assert(is_simple_power(x: 12, n: 6) == false)
assert(is_simple_power(x: 1, n: 1) == true)
assert(is_simple_power(x: 1, n: 12) == true)



// ----------- problem HumanEval_76_is_simple_power, completion 167 ------------
// status = Exception
// exit_code = -4
/* stderr = 

*/
/* stdout = 

*/


/// Your task is to write a function that returns true if a number x is a simple
/// power of n and false in other cases.
/// x is a simple power of n if n**int=x
/// For example:
/// >>> is_simple_power(x: 1, n: 4)
/// true
/// >>> is_simple_power(x: 2, n: 2)
/// true
/// >>> is_simple_power(x: 8, n: 2)
/// true
/// >>> is_simple_power(x: 3, n: 2)
/// false
/// >>> is_simple_power(x: 3, n: 1)
/// false
/// >>> is_simple_power(x: 5, n: 3)
/// false
func is_simple_power(x: Int, n: Int) -> Bool {
    if x == 1 {
        return true
    }
    if n == 1 {
        return false
    }
    var result = 1
    for _ in 1...x {
        result *= n
        if result == x {
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
            
assert(is_simple_power(x: 16, n: 2) == true)
assert(is_simple_power(x: 143214, n: 16) == false)
assert(is_simple_power(x: 4, n: 2) == true)
assert(is_simple_power(x: 9, n: 3) == true)
assert(is_simple_power(x: 16, n: 4) == true)
assert(is_simple_power(x: 24, n: 2) == false)
assert(is_simple_power(x: 128, n: 4) == false)
assert(is_simple_power(x: 12, n: 6) == false)
assert(is_simple_power(x: 1, n: 1) == true)
assert(is_simple_power(x: 1, n: 12) == true)



// ----------- problem HumanEval_76_is_simple_power, completion 33 ------------
// status = Exception
// exit_code = -4
/* stderr = 

*/
/* stdout = 

*/


/// Your task is to write a function that returns true if a number x is a simple
/// power of n and false in other cases.
/// x is a simple power of n if n**int=x
/// For example:
/// >>> is_simple_power(x: 1, n: 4)
/// true
/// >>> is_simple_power(x: 2, n: 2)
/// true
/// >>> is_simple_power(x: 8, n: 2)
/// true
/// >>> is_simple_power(x: 3, n: 2)
/// false
/// >>> is_simple_power(x: 3, n: 1)
/// false
/// >>> is_simple_power(x: 5, n: 3)
/// false
func is_simple_power(x: Int, n: Int) -> Bool {
    if n == 1 {
        return false
    }
    var result = 1
    for _ in 1...x {
        result *= n
        if result == x {
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
            
assert(is_simple_power(x: 16, n: 2) == true)
assert(is_simple_power(x: 143214, n: 16) == false)
assert(is_simple_power(x: 4, n: 2) == true)
assert(is_simple_power(x: 9, n: 3) == true)
assert(is_simple_power(x: 16, n: 4) == true)
assert(is_simple_power(x: 24, n: 2) == false)
assert(is_simple_power(x: 128, n: 4) == false)
assert(is_simple_power(x: 12, n: 6) == false)
assert(is_simple_power(x: 1, n: 1) == true)
assert(is_simple_power(x: 1, n: 12) == true)



// ----------- problem HumanEval_125_split_words, completion 100 ------------
// status = Exception
// exit_code = -4
/* stderr = 

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
        var count = 0
        for char in txt {
            if (char.asciiValue! - 97) % 2 == 1 {
                count += 1
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



// ----------- problem HumanEval_76_is_simple_power, completion 180 ------------
// status = Exception
// exit_code = -4
/* stderr = 

*/
/* stdout = 

*/


/// Your task is to write a function that returns true if a number x is a simple
/// power of n and false in other cases.
/// x is a simple power of n if n**int=x
/// For example:
/// >>> is_simple_power(x: 1, n: 4)
/// true
/// >>> is_simple_power(x: 2, n: 2)
/// true
/// >>> is_simple_power(x: 8, n: 2)
/// true
/// >>> is_simple_power(x: 3, n: 2)
/// false
/// >>> is_simple_power(x: 3, n: 1)
/// false
/// >>> is_simple_power(x: 5, n: 3)
/// false
func is_simple_power(x: Int, n: Int) -> Bool {
    if x == 1 {
        return true
    }
    var result = 1
    for _ in 1...x {
        result *= n
        if result == x {
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
            
assert(is_simple_power(x: 16, n: 2) == true)
assert(is_simple_power(x: 143214, n: 16) == false)
assert(is_simple_power(x: 4, n: 2) == true)
assert(is_simple_power(x: 9, n: 3) == true)
assert(is_simple_power(x: 16, n: 4) == true)
assert(is_simple_power(x: 24, n: 2) == false)
assert(is_simple_power(x: 128, n: 4) == false)
assert(is_simple_power(x: 12, n: 6) == false)
assert(is_simple_power(x: 1, n: 1) == true)
assert(is_simple_power(x: 1, n: 12) == true)



