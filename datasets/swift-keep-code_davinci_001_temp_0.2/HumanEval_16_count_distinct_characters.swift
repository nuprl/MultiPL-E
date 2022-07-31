
/// Given a string, find out how many distinct characters (regardless of case) does it consist of
/// >>> count_distinct_characters('xyzXYZ')
/// 3
/// >>> count_distinct_characters('Jerry')
/// 4
func count_distinct_characters(string: String) -> Int {
    var distinctCharacters = Set<Character>()
    for character in string {
        distinctCharacters.insert(character)
    }
    return distinctCharacters.count

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
            
assert(count_distinct_characters(string: "") == 0)
assert(count_distinct_characters(string: "abcde") == 5)
assert(count_distinct_characters(string: "abcdecadeCADE") == 5)
assert(count_distinct_characters(string: "aaaaAAAAaaaa") == 1)
assert(count_distinct_characters(string: "Jerry jERRY JeRRRY") == 5)