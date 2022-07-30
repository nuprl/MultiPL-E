
// You are given a string s.
// Your task is to check if the string is happy or not.
// A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
// For example:
// is_happy(a) => False
// is_happy(aa) => False
// is_happy(abcd) => True
// is_happy(aabb) => False
// is_happy(adb) => True
// is_happy(xyy) => False
func is_happy(s: String) -> Bool {
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
            
assert(is_happy(s: "a") == false)
assert(is_happy(s: "aa") == false)
assert(is_happy(s: "abcd") == true)
assert(is_happy(s: "aabb") == false)
assert(is_happy(s: "adb") == true)
assert(is_happy(s: "xyy") == false)
assert(is_happy(s: "iopaxpoi") == true)
assert(is_happy(s: "iopaxioi") == false)