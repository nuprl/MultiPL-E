
// Return list of all prefixes from shortest to longest of the input string
// >>> all_prefixes('abc')
// ['a', 'ab', 'abc']
func all_prefixes(string: String) -> [String] {
    var prefixes = [String]()
    for i in 0..<string.characters.count {
        let prefix = string.substring(to: string.index(string.startIndex, offsetBy: i))
        prefixes.append(prefix)
    }
    return prefixes

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
            
assert(all_prefixes(string: "") == [] as [String])
assert(all_prefixes(string: "asdfgh") == ["a", "as", "asd", "asdf", "asdfg", "asdfgh"])
assert(all_prefixes(string: "WWW") == ["W", "WW", "WWW"])