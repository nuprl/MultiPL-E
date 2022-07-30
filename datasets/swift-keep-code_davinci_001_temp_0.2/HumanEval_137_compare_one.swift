
enum Value: Equatable, Hashable {
    case intValue(Int)
    case doubleValue(Double)
    case stringValue(String)
}

            
// Create a function that takes integers, floats, or strings representing
// real numbers, and returns the larger variable in its given variable type.
// Return None if the values are equal.
// Note: If a real number is represented as a string, the floating point might be . or ,
// compare_one(1, 2.5) ➞ 2.5
// compare_one(1, "2,3") ➞ "2,3"
// compare_one("5,1", "6") ➞ "6"
// compare_one("1", 1) ➞ None
func compare_one(a: Value, b: Value) -> Value? {
    switch (a, b) {
    case (.intValue(let a), .intValue(let b)):
        return a > b ? a : b
    case (.doubleValue(let a), .doubleValue(let b)):
        return a > b ? a : b
    case (.stringValue(let a), .stringValue(let b)):
        return a > b ? a : b
    default:
        return nil
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
            
assert(compare_one(a: .intValue(1), b: .intValue(2)) == .intValue(2))
assert(compare_one(a: .intValue(1), b: .doubleValue(2.5)) == .doubleValue(2.5))
assert(compare_one(a: .intValue(2), b: .intValue(3)) == .intValue(3))
assert(compare_one(a: .intValue(5), b: .intValue(6)) == .intValue(6))
assert(compare_one(a: .intValue(1), b: .stringValue("2,3")) == .stringValue("2,3"))
assert(compare_one(a: .stringValue("5,1"), b: .stringValue("6")) == .stringValue("6"))
assert(compare_one(a: .stringValue("1"), b: .stringValue("2")) == .stringValue("2"))
assert(compare_one(a: .stringValue("1"), b: .intValue(1)) == nil)