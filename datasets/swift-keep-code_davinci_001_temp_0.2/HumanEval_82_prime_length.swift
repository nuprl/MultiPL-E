
// Write a function that takes a string and returns True if the string
// length is a prime number or False otherwise
// Examples
// prime_length('Hello') == True
// prime_length('abcdcba') == True
// prime_length('kittens') == True
// prime_length('orange') == False
func prime_length(string: String) -> Bool {
    if string.characters.count == 1 {
        return false
    }
    for i in 2..<string.characters.count {
        if string.characters.count % i == 0 {
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)