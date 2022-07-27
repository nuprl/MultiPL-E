/// Create a function that returns True if the last character
/// of a given string is an alphabetical character and is not
/// a part of a word, and False otherwise.
/// Note: "word" is a group of characters separated by space.
/// Examples:
/// check_if_last_char_is_a_letter("apple pie") ➞ False
/// check_if_last_char_is_a_letter("apple pi e") ➞ True
/// check_if_last_char_is_a_letter("apple pi e ") ➞ False
/// check_if_last_char_is_a_letter("") ➞ False
fn check_if_last_char_is_a_letter(txt: String) -> bool {
    let last_char = txt.chars().last().unwrap();
    let is_letter = last_char.is_alphabetic();
    let is_not_part_of_word = !txt.split_whitespace().any(|word| word.ends_with(last_char));
    is_letter && is_not_part_of_word

}

fn main() {
    let candidate = check_if_last_char_is_a_letter;
    assert_eq!(candidate(String::from("apple")), false);
    assert_eq!(candidate(String::from("apple pi e")), true);
    assert_eq!(candidate(String::from("eeeee")), false);
    assert_eq!(candidate(String::from("A")), true);
    assert_eq!(candidate(String::from("Pumpkin pie ")), false);
    assert_eq!(candidate(String::from("Pumpkin pie 1")), false);
    assert_eq!(candidate(String::from("")), false);
    assert_eq!(candidate(String::from("eeeee e ")), false);
    assert_eq!(candidate(String::from("apple pie")), false);
    assert_eq!(candidate(String::from("apple pi e ")), false);
}
