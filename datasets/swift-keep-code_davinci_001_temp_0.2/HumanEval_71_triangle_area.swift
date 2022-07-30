
// Given the lengths of the three sides of a triangle. Return the area of
// the triangle rounded to 2 decimal points if the three sides form a valid triangle. 
// Otherwise return -1
// Three sides make a valid triangle when the sum of any two sides is greater 
// than the third side.
// Example:
// triangle_area(3, 4, 5) == 6.00
// triangle_area(1, 2, 10) == -1
func triangle_area(a: Int, b: Int, c: Int) -> Double {
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
            
assert(triangle_area(a: 3, b: 4, c: 5) == 6.0)
assert(triangle_area(a: 1, b: 2, c: 10) == -1)
assert(triangle_area(a: 4, b: 8, c: 5) == 8.18)
assert(triangle_area(a: 2, b: 2, c: 2) == 1.73)
assert(triangle_area(a: 1, b: 2, c: 3) == -1)
assert(triangle_area(a: 10, b: 5, c: 7) == 16.25)
assert(triangle_area(a: 2, b: 6, c: 3) == -1)
assert(triangle_area(a: 1, b: 1, c: 1) == 0.43)
assert(triangle_area(a: 2, b: 2, c: 10) == -1)