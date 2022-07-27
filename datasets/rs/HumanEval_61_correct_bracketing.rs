/// brackets is a string of "(" and ")".
/// return True if every opening bracket has a corresponding closing bracket.
/// >>> correct_bracketing("(")
/// False
/// >>> correct_bracketing("()")
/// True
/// >>> correct_bracketing("(()())")
/// True
/// >>> correct_bracketing(")(()")
/// False
fn correct_bracketing(brackets: String) -> bool {
    let mut stack: Vec<char> = Vec::new();
    for bracket in brackets.chars() {
        if bracket == '(' {
            stack.push(bracket);
        } else if bracket == ')' {
            if stack.is_empty() {
                return false;
            }
            stack.pop();
        }
    }
    stack.is_empty()

}

fn main() {
    let candidate = correct_bracketing;
    assert_eq!(candidate(String::from("()")), true);
    assert_eq!(candidate(String::from("(()())")), true);
    assert_eq!(candidate(String::from("()()(()())()")), true);
    assert_eq!(candidate(String::from("()()((()()())())(()()(()))")), true);
    assert_eq!(candidate(String::from("((()())))")), false);
    assert_eq!(candidate(String::from(")(()")), false);
    assert_eq!(candidate(String::from("(")), false);
    assert_eq!(candidate(String::from("((((")), false);
    assert_eq!(candidate(String::from(")")), false);
    assert_eq!(candidate(String::from("(()")), false);
    assert_eq!(candidate(String::from("()()(()())())(()")), false);
    assert_eq!(candidate(String::from("()()(()())()))()")), false);
}
