
/// Given a string text, replace all spaces in it with underscores, 
/// and if a string has more than 2 consecutive spaces, 
/// then replace all consecutive spaces with - 
/// fix_spaces("Example") == "Example"
/// fix_spaces("Example 1") == "Example_1"
/// fix_spaces(" Example 2") == "_Example_2"
/// fix_spaces(" Example   3") == "_Example-3"
func fix_spaces(text: String) -> String {
    var result = ""
    var lastChar = ""
    for char in text {
        if char == " " {
            if lastChar == " " {
                result += "-"
            } else {
                result += "_"
            }
        } else {
            result += String(char)
        }
        lastChar = String(char)
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
            
assert(fix_spaces(text: "Example") == "Example")
assert(fix_spaces(text: "Mudasir Hanif ") == "Mudasir_Hanif_")
assert(fix_spaces(text: "Yellow Yellow  Dirty  Fellow") == "Yellow_Yellow__Dirty__Fellow")
assert(fix_spaces(text: "Exa   mple") == "Exa-mple")
assert(fix_spaces(text: "   Exa 1 2 2 mple") == "-Exa_1_2_2_mple")