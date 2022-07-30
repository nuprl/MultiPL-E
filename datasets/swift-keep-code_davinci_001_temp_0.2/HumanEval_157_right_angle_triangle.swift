
// Given the lengths of the three sides of a triangle. Return True if the three
// sides form a right-angled triangle, False otherwise.
// A right-angled triangle is a triangle in which one angle is right angle or 
// 90 degree.
// Example:
// right_angle_triangle(3, 4, 5) == True
// right_angle_triangle(1, 2, 3) == False
func right_angle_triangle(a: Int, b: Int, c: Int) -> Bool {
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
            
assert(right_angle_triangle(a: 3, b: 4, c: 5) == true)
assert(right_angle_triangle(a: 1, b: 2, c: 3) == false)
assert(right_angle_triangle(a: 10, b: 6, c: 8) == true)
assert(right_angle_triangle(a: 2, b: 2, c: 2) == false)
assert(right_angle_triangle(a: 7, b: 24, c: 25) == true)
assert(right_angle_triangle(a: 10, b: 5, c: 7) == false)
assert(right_angle_triangle(a: 5, b: 12, c: 13) == true)
assert(right_angle_triangle(a: 15, b: 8, c: 17) == true)
assert(right_angle_triangle(a: 48, b: 55, c: 73) == true)
assert(right_angle_triangle(a: 1, b: 1, c: 1) == false)
assert(right_angle_triangle(a: 2, b: 2, c: 10) == false)