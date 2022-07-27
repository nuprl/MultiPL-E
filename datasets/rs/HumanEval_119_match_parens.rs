/// You are given a list of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// match_parens(['()(', ')']) == 'Yes'
/// match_parens([')', ')']) == 'No'
fn match_parens(lst: Vec<String>) -> String {
    let mut stack = Vec::new();
    for c in lst[0].chars() {
        if c == '(' {
            stack.push(c);
        } else {
            if stack.pop().is_none() {
                return "No".to_string();
            }
        }
    }
    if stack.is_empty() {
        "Yes".to_string()
    } else {
        "No".to_string()
    }

}

fn main() {
    let candidate = match_parens;
    assert_eq!(candidate(vec![String::from("()("), String::from(")")]), String::from("Yes"));
    assert_eq!(candidate(vec![String::from(")"), String::from(")")]), String::from("No"));
    assert_eq!(candidate(vec![String::from("(()(())"), String::from("())())")]), String::from("No"));
    assert_eq!(candidate(vec![String::from(")())"), String::from("(()()(")]), String::from("Yes"));
    assert_eq!(candidate(vec![String::from("(())))"), String::from("(()())((")]), String::from("Yes"));
    assert_eq!(candidate(vec![String::from("()"), String::from("())")]), String::from("No"));
    assert_eq!(candidate(vec![String::from("(()("), String::from("()))()")]), String::from("Yes"));
    assert_eq!(candidate(vec![String::from("(((("), String::from("((())")]), String::from("No"));
    assert_eq!(candidate(vec![String::from(")(()"), String::from("(()(")]), String::from("No"));
    assert_eq!(candidate(vec![String::from(")("), String::from(")(")]), String::from("No"));
    assert_eq!(candidate(vec![String::from("("), String::from(")")]), String::from("Yes"));
    assert_eq!(candidate(vec![String::from(")"), String::from("(")]), String::from("Yes"));
}
