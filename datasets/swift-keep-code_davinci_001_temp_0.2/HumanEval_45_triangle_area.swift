
// Given length of a side and high return area for a triangle.
// >>> triangle_area(5, 3)
// 7.5
func triangle_area(a: Int, h: Int) -> Double {
    return Double(a * h) / 2

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
            
assert(triangle_area(a: 5, h: 3) == 7.5)
assert(triangle_area(a: 2, h: 2) == 2.0)
assert(triangle_area(a: 10, h: 8) == 40.0)