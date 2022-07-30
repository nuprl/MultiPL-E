
// xs represent coefficients of a polynomial.
// xs[0] + xs[1] * x + xs[2] * x^2 + ....
// Return derivative of this polynomial in the same form.
// >>> derivative([3, 1, 2, 4, 5])
// [1, 4, 12, 20]
// >>> derivative([1, 2, 3])
// [2, 6]
func derivative(xs: [Int]) -> [Int] {
	fatalError("unimplemented")

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
            
assert(derivative(xs: [3, 1, 2, 4, 5]) == [1, 4, 12, 20])
assert(derivative(xs: [1, 2, 3]) == [2, 6])
assert(derivative(xs: [3, 2, 1]) == [2, 2])
assert(derivative(xs: [3, 2, 1, 0, 4]) == [2, 2, 0, 16])
assert(derivative(xs: [1]) == [] as [Int])