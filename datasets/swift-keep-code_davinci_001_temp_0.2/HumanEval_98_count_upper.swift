
// Given a string s, count the number of uppercase vowels in even indices.
// For example:
// count_upper('aBCdEf') returns 1
// count_upper('abcdefg') returns 0
// count_upper('dBBE') returns 0
func count_upper(s: String) -> Int {
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
            
assert(count_upper(s: "aBCdEf") == 1)
assert(count_upper(s: "abcdefg") == 0)
assert(count_upper(s: "dBBE") == 0)
assert(count_upper(s: "B") == 0)
assert(count_upper(s: "U") == 1)
assert(count_upper(s: "") == 0)
assert(count_upper(s: "EEEE") == 2)