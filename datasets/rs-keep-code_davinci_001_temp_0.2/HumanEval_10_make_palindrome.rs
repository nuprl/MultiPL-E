/// Find the shortest palindrome that begins with a supplied string.
/// Algorithm idea is simple:
/// - Find the longest postfix of supplied string that is a palindrome.
/// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
/// >>> make_palindrome('')
/// ''
/// >>> make_palindrome('cat')
/// 'catac'
/// >>> make_palindrome('cata')
/// 'catac'
fn make_palindrome(string: String) -> String {
    let mut result = String::new();
    let mut chars = string.chars().rev();
    let mut prefix = String::new();
    let mut postfix = String::new();

    for c in string.chars() {
        prefix.push(c);
        postfix.push(chars.next().unwrap());
        if is_palindrome(&prefix) {
            result.push_str(&prefix);
            break;
        }
    }

    result.push_str(&postfix);
    result.chars().rev().collect()

}

fn main() {
    let candidate = make_palindrome;
    assert_eq!(candidate(String::from("")), String::from(""));
    assert_eq!(candidate(String::from("x")), String::from("x"));
    assert_eq!(candidate(String::from("xyz")), String::from("xyzyx"));
    assert_eq!(candidate(String::from("xyx")), String::from("xyx"));
    assert_eq!(candidate(String::from("jerry")), String::from("jerryrrej"));
}
