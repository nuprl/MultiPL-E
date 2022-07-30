
// Your task is to implement a function that will simplify the expression
// x * n. The function returns True if x * n evaluates to a whole number and False
// otherwise. Both x and n, are string representation of a fraction, and have the following format,
// <numerator>/<denominator> where both numerator and denominator are positive whole numbers.
// You can assume that x, and n are valid fractions, and do not have zero as denominator.
// simplify("1/5", "5/1") = True
// simplify("1/6", "2/1") = False
// simplify("7/10", "10/2") = False
func simplify(x: String, n: String) -> Bool {
    let xArr = x.components(separatedBy: "/")
    let nArr = n.components(separatedBy: "/")
    let xNum = Int(xArr[0])!
    let xDen = Int(xArr[1])!
    let nNum = Int(nArr[0])!
    let nDen = Int(nArr[1])!
    let xGcd = gcd(xNum, xDen)
    let nGcd = gcd(nNum, nDen)
    let xSimp = xNum / xGcd
    let nSimp = nNum / nGcd
    if xSimp == nSimp {
        return true
    } else {
        return false
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
            
assert(simplify(x: "1/5", n: "5/1") == true)
assert(simplify(x: "1/6", n: "2/1") == false)
assert(simplify(x: "5/1", n: "3/1") == true)
assert(simplify(x: "7/10", n: "10/2") == false)
assert(simplify(x: "2/10", n: "50/10") == true)
assert(simplify(x: "7/2", n: "4/2") == true)
assert(simplify(x: "11/6", n: "6/1") == true)
assert(simplify(x: "2/3", n: "5/2") == false)
assert(simplify(x: "5/2", n: "3/5") == false)
assert(simplify(x: "2/4", n: "8/4") == true)
assert(simplify(x: "2/4", n: "4/2") == true)
assert(simplify(x: "1/5", n: "5/1") == true)
assert(simplify(x: "1/5", n: "1/5") == false)