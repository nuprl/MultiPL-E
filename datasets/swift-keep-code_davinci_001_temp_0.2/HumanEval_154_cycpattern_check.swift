
// You are given 2 words. You need to return True if the second word or any of its rotations is a substring in the first word
// cycpattern_check("abcd","abd") => False
// cycpattern_check("hello","ell") => True
// cycpattern_check("whassup","psus") => False
// cycpattern_check("abab","baa") => True
// cycpattern_check("efef","eeff") => False
// cycpattern_check("himenss","simen") => True
func cycpattern_check(a: String, b: String) -> Bool {
    let a_array = Array(a)
    let b_array = Array(b)
    var b_array_rotated = b_array
    var b_array_rotated_index = 0
    var b_array_rotated_length = b_array.count
    var b_array_rotated_char = b_array_rotated[b_array_rotated_index]
    var b_array_rotated_char_index = 0
    var b_array_rotated_char_length = b_array_rotated.count
    var b_array_rotated_char_char = b_array_rotated_char
    var b_array_rotated_char_char_index = 0
    var b_array_rotated_char_char_length = b_array_rotated_char.count
    var a_array_index = 0
    var a_array_length = a_array.count
    var a_array_char = a_array[a_array_index]
    var a_array_char_index = 0
    var a_array_char_length = a_array_char.count
    var a_array_char_char = a_array_char
    var a_array_char_char_index = 0
    var a_array_char_char_length = a_array_char_char.count
    while a_array_index < a_array_length {
        while b_array_rotated_index < b_array_rotated_length {
            while b_array_rotated_char_index < b_array_rotated_char_length {
                while a_array_char_index < a_array_char_length {
                    while a_array_char_char_index < a_array_char_char_length {
                        if a_array_char == b_array_rotated_char {
                            if a_array_char_char == b_array_rotated_char_char {
                                return true
                            }
                        }
                        a_array_char_char_index += 1
                        a_array_char_char_length

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
            
assert(cycpattern_check(a: "xyzw", b: "xyw") == false)
assert(cycpattern_check(a: "yello", b: "ell") == true)
assert(cycpattern_check(a: "whattup", b: "ptut") == false)
assert(cycpattern_check(a: "efef", b: "fee") == true)
assert(cycpattern_check(a: "abab", b: "aabb") == false)
assert(cycpattern_check(a: "winemtt", b: "tinem") == true)