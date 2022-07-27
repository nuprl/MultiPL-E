/// remove_vowels is a function that takes string and returns string without vowels.
/// >>> remove_vowels('')
/// ''
/// >>> remove_vowels('abcdef')
/// 'bcdf'
/// >>> remove_vowels('aaaaa')
/// ''
/// >>> remove_vowels('aaBAA')
/// 'B'
/// >>> remove_vowels('zbcd')
/// 'zbcd'
fn remove_vowels(text: String) -> String {
    text.chars()
        .filter(|c| !VOWELS.contains(c))
        .collect()

}

fn main() {
    let candidate = remove_vowels;
    assert_eq!(candidate(String::from("")), String::from(""));
    assert_eq!(candidate(String::from("abcdef
ghijklm")), String::from("bcdf
ghjklm"));
    assert_eq!(candidate(String::from("fedcba")), String::from("fdcb"));
    assert_eq!(candidate(String::from("eeeee")), String::from(""));
    assert_eq!(candidate(String::from("acBAA")), String::from("cB"));
    assert_eq!(candidate(String::from("EcBOO")), String::from("cB"));
    assert_eq!(candidate(String::from("ybcd")), String::from("ybcd"));
}
