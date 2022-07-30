
// Given a list of strings, where each string consists of only digits, return a list.
// Each element i of the output should be "the number of odd elements in the
// string i of the input." where all the i's should be replaced by the number
// of odd digits in the i'th string of the input.
// >>> odd_count(['1234567'])
// ["the number of odd elements 4n the str4ng 4 of the 4nput."]
// >>> odd_count(['3',"11111111"])
// ["the number of odd elements 1n the str1ng 1 of the 1nput.",
// "the number of odd elements 8n the str8ng 8 of the 8nput."]
func odd_count(lst: [String]) -> [String] {
    var result = [String]()
    for i in lst {
        var count = 0
        for j in i {
            if Int(String(j))! % 2 != 0 {
                count += 1
            }
        }
        result.append("the number of odd elements \(count)n the str\(count)ng \(count) of the \(count)nput.")
    }
    return result

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
            
assert(odd_count(lst: ["1234567"]) == ["the number of odd elements 4n the str4ng 4 of the 4nput."])
assert(odd_count(lst: ["3", "11111111"]) == ["the number of odd elements 1n the str1ng 1 of the 1nput.", "the number of odd elements 8n the str8ng 8 of the 8nput."])
assert(odd_count(lst: ["271", "137", "314"]) == ["the number of odd elements 2n the str2ng 2 of the 2nput.", "the number of odd elements 3n the str3ng 3 of the 3nput.", "the number of odd elements 2n the str2ng 2 of the 2nput."])