
/// Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
/// separate those group into separate strings and return the list of those.
/// Separate groups are balanced (each open brace is properly closed) and not nested within each other
/// Ignore any spaces in the input string.
/// >>> separate_paren_groups('( ) (( )) (( )( ))')
/// ['()', '(())', '(()())']
func separate_paren_groups(paren_string: String) -> [String] {
    var result: [String] = []
    var current_group: String = ""
    var current_group_start_index: Int = 0
    var current_group_end_index: Int = 0
    var current_group_depth: Int = 0
    var current_group_depth_start_index: Int = 0
    var current_group_depth_end_index: Int = 0
    var current_group_depth_start_index_set: Bool = false
    var current_group_depth_end_index_set: Bool = false
    var current_group_depth_start_index_set_to_zero: Bool = false
    var current_group_depth_end_index_set_to_zero: Bool = false
    var current_group_depth_start_index_set_to_zero_set: Bool = false
    var current_group_depth_end_index_set_to_zero_set: Bool = false
    var current_group_depth_start_index_set_to_zero_set_to_zero: Bool = false
    var current_group_depth_end_index_set_to_zero_set_to_zero: Bool = false
    var current_group_depth_start_index_set_to_zero_set_to_zero_set: Bool = false
    var current_group_depth_end_index_set_to_zero_set_to_zero_set: Bool = false
    var current_group_depth_start_index_set_to_zero_set_to_zero_set_to_zero: Bool = false
    var current_group_depth_end_index_set_to_zero_set_to_zero_set_to_zero: Bool = false
    var current_group_depth_start_index_set_to_zero_set_to_zero_set_to_zero_set: Bool = false
    var current_group_depth_end_index_set_to_zero_set_to_zero_set_to_zero_set: Bool = false
    var current_group_depth_start

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
            
assert(separate_paren_groups(paren_string: "(()()) ((())) () ((())()())") == ["(()())", "((()))", "()", "((())()())"])
assert(separate_paren_groups(paren_string: "() (()) ((())) (((())))") == ["()", "(())", "((()))", "(((())))"])
assert(separate_paren_groups(paren_string: "(()(())((())))") == ["(()(())((())))"])
assert(separate_paren_groups(paren_string: "( ) (( )) (( )( ))") == ["()", "(())", "(()())"])