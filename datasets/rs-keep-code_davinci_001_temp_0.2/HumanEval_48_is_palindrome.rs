/// Checks if given string is a palindrome
/// >>> is_palindrome('')
/// True
/// >>> is_palindrome('aba')
/// True
/// >>> is_palindrome('aaaaa')
/// True
/// >>> is_palindrome('zbcd')
/// False
fn is_palindrome(text: String) -> bool {
    let mut text = text.to_lowercase();
    text.retain(|c| c.is_alphanumeric());
    text.chars().rev().collect::<String>() == text

}

fn main() {
    let candidate = is_palindrome;
    assert_eq!(candidate(String::from("")), true);
    assert_eq!(candidate(String::from("aba")), true);
    assert_eq!(candidate(String::from("aaaaa")), true);
    assert_eq!(candidate(String::from("zbcd")), false);
    assert_eq!(candidate(String::from("xywyx")), true);
    assert_eq!(candidate(String::from("xywyz")), false);
    assert_eq!(candidate(String::from("xywzx")), false);
}
