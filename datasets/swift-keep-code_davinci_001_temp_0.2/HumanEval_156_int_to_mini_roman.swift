
/// Given a positive integer, obtain its roman numeral equivalent as a string,
/// and return it in lowercase.
/// Restrictions: 1 <= num <= 1000
/// Examples:
/// >>> int_to_mini_roman(19) == 'xix'
/// >>> int_to_mini_roman(152) == 'clii'
/// >>> int_to_mini_roman(426) == 'cdxxvi'
func int_to_mini_roman(number: Int) -> String {
    var roman = ""
    let digits = number.digits
    for (index, digit) in digits.enumerated() {
        let romanDigit = mini_roman_digit(digit: digit, place: index)
        roman.append(romanDigit)
    }
    return roman

}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(int_to_mini_roman(number: 19) == "xix")
assert(int_to_mini_roman(number: 152) == "clii")
assert(int_to_mini_roman(number: 251) == "ccli")
assert(int_to_mini_roman(number: 426) == "cdxxvi")
assert(int_to_mini_roman(number: 500) == "d")
assert(int_to_mini_roman(number: 1) == "i")
assert(int_to_mini_roman(number: 4) == "iv")
assert(int_to_mini_roman(number: 43) == "xliii")
assert(int_to_mini_roman(number: 90) == "xc")
assert(int_to_mini_roman(number: 94) == "xciv")
assert(int_to_mini_roman(number: 532) == "dxxxii")
assert(int_to_mini_roman(number: 900) == "cm")
assert(int_to_mini_roman(number: 994) == "cmxciv")
assert(int_to_mini_roman(number: 1000) == "m")