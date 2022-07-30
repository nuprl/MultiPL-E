
// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
// >>> flip_case('Hello')
// 'hELLO'
func flip_case(string: String) -> String {
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
            
assert(flip_case(string: "") == "")
assert(flip_case(string: "Hello!") == "hELLO!")
assert(flip_case(string: "These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")