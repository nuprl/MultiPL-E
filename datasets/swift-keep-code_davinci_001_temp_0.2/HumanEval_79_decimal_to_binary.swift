
// You will be given a number in decimal form and your task is to convert it to
// binary format. The function should return a string, with each character representing a binary
// number. Each character in the string will be '0' or '1'.
// There will be an extra couple of characters 'db' at the beginning and at the end of the string.
// The extra characters are there to help with the format.
// Examples:
// decimal_to_binary(15)   # returns "db1111db"
// decimal_to_binary(32)   # returns "db100000db"
func decimal_to_binary(decimal: Int) -> String {
    var binary = ""
    var decimal = decimal
    while decimal > 0 {
        binary = String(decimal % 2) + binary
        decimal /= 2
    }
    return "db" + binary + "db"

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
            
assert(decimal_to_binary(decimal: 0) == "db0db")
assert(decimal_to_binary(decimal: 32) == "db100000db")
assert(decimal_to_binary(decimal: 103) == "db1100111db")
assert(decimal_to_binary(decimal: 15) == "db1111db")