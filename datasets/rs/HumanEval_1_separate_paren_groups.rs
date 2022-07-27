/// Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
/// separate those group into separate strings and return the list of those.
/// Separate groups are balanced (each open brace is properly closed) and not nested within each other
/// Ignore any spaces in the input string.
/// >>> separate_paren_groups('( ) (( )) (( )( ))')
/// ['()', '(())', '(()())']
fn separate_paren_groups(paren_string: String) -> Vec<String> {
    let mut result = Vec::new();
    let mut paren_string = paren_string;
    while paren_string.len() > 0 {
        let mut paren_string_clone = paren_string.clone();
        let mut paren_string_clone = paren_string_clone.replace(" ", "");
        let mut paren_string_clone = paren_string_clone.replace("\t", "");
        let mut paren_string_clone = paren_string_clone.replace("\n", "");
        let mut paren_string_clone = paren_string_clone.replace("\r", "");
        let mut paren_string_clone = paren_string_clone.replace("\u{feff}", "");
        let mut paren_string_clone = paren_string_clone.replace("\u{200b}", "");
        let mut paren_string_clone = paren_string_clone.replace("\u{200c}", "");
        let mut paren_string_clone = paren_string_clone.replace("\u{200d}", "");
        let mut paren_string_clone = paren_string_clone.replace("\u{200e}", "");
        let mut paren_string_clone = paren_string_clone.replace("\u{200f}", "");
        let mut paren_string_clone = paren_string_clone.replace("\u{202a}", "");
        let mut paren_string_clone = paren_string_clone.replace("\u{202b}", "");
        let mut paren_string_clone = paren_string_clone.replace("\u{202c}", "");
        let mut paren_string_clone = paren_string_clone.replace("\u{202d}", "");
        let mut paren_string_clone = paren_string_clone.replace("\u{202e}", "");
        let mut paren_string_clone = paren_string_clone.replace("\u{202f}", ""

}

fn main() {
    let candidate = separate_paren_groups;
    assert_eq!(candidate(String::from("(()()) ((())) () ((())()())")), vec![String::from("(()())"), String::from("((()))"), String::from("()"), String::from("((())()())")]);
    assert_eq!(candidate(String::from("() (()) ((())) (((())))")), vec![String::from("()"), String::from("(())"), String::from("((()))"), String::from("(((())))")]);
    assert_eq!(candidate(String::from("(()(())((())))")), vec![String::from("(()(())((())))")]);
    assert_eq!(candidate(String::from("( ) (( )) (( )( ))")), vec![String::from("()"), String::from("(())"), String::from("(()())")]);
}
