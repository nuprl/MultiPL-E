
/// Return length of given string
/// >>> strlen('')
/// 0
/// >>> strlen('abc')
/// 3
func strlen(string: String) -> Int {
    return string.characters.count

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
            
assert(strlen(string: "") == 0)
assert(strlen(string: "x") == 1)
assert(strlen(string: "asdasnakj") == 9)