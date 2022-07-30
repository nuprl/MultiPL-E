
// Write a function that takes an integer a and returns True 
// if this ingeger is a cube of some integer number.
// Note: you may assume the input is always valid.
// Examples:
// iscube(1) ==> True
// iscube(2) ==> False
// iscube(-1) ==> True
// iscube(64) ==> True
// iscube(0) ==> True
// iscube(180) ==> False
func iscube(a: Int) -> Bool {
    return false

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
            
assert(iscube(a: 1) == true)
assert(iscube(a: 2) == false)
assert(iscube(a: -1) == true)
assert(iscube(a: 64) == true)
assert(iscube(a: 180) == false)
assert(iscube(a: 1000) == true)
assert(iscube(a: 0) == true)
assert(iscube(a: 1729) == false)