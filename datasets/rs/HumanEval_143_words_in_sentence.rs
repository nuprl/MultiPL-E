/// You are given a string representing a sentence,
/// the sentence contains some words separated by a space,
/// and you have to return a string that contains the words from the original sentence,
/// whose lengths are prime numbers,
/// the order of the words in the new string should be the same as the original one.
/// Example 1:
/// Input: sentence = "This is a test"
/// Output: "is"
/// Example 2:
/// Input: sentence = "lets go for swimming"
/// Output: "go for"
/// Constraints:
/// * 1 <= len(sentence) <= 100
/// * sentence contains only letters
fn words_in_sentence(sentence: String) -> String {
    let mut words: Vec<String> = sentence.split_whitespace().map(|s| s.to_string()).collect();
    words.sort_by(|a, b| a.len().cmp(&b.len()));
    let mut result = String::new();
    for word in words {
        if is_prime(word.len()) {
            result.push_str(&word);
            result.push(' ');
        }
    }
    result.pop();
    result

}

fn main() {
    let candidate = words_in_sentence;
    assert_eq!(candidate(String::from("This is a test")), String::from("is"));
    assert_eq!(candidate(String::from("lets go for swimming")), String::from("go for"));
    assert_eq!(candidate(String::from("there is no place available here")), String::from("there is no place"));
    assert_eq!(candidate(String::from("Hi I am Hussein")), String::from("Hi am Hussein"));
    assert_eq!(candidate(String::from("go for it")), String::from("go for it"));
    assert_eq!(candidate(String::from("here")), String::from(""));
    assert_eq!(candidate(String::from("here is")), String::from("is"));
}
