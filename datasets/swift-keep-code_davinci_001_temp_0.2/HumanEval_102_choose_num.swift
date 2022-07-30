
// This function takes two positive numbers x and y and returns the
// biggest even integer number that is in the range [x, y] inclusive. If 
// there's no such number, then the function should return -1.
// For example:
// choose_num(12, 15) = 14
// choose_num(13, 12) = -1
func choose_num(x: Int, y: Int) -> Int {
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)