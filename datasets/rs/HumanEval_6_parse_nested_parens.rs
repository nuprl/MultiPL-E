/// Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
/// For each of the group, output the deepest level of nesting of parentheses.
/// E.g. (()()) has maximum two levels of nesting while ((())) has three.
/// >>> parse_nested_parens('(()()) ((())) () ((())()())')
/// [2, 3, 1, 3]
fn parse_nested_parens(paren_string: String) -> Vec<isize> {
    let mut result: Vec<isize> = Vec::new();
    let mut stack: Vec<isize> = Vec::new();
    let mut level: isize = 0;

    for c in paren_string.chars() {
        match c {
            '(' => {
                stack.push(level);
                level += 1;
            }
            ')' => {
                level -= 1;
                result.push(level);
                stack.pop();
            }
            _ => {}
        }
    }

    result

}

fn main() {
    let candidate = parse_nested_parens;
    assert_eq!(candidate(String::from("(()()) ((())) () ((())()())")), vec![2, 3, 1, 3]);
    assert_eq!(candidate(String::from("() (()) ((())) (((())))")), vec![1, 2, 3, 4]);
    assert_eq!(candidate(String::from("(()(())((())))")), vec![4]);
}
