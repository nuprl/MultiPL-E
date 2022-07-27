/// Write a function that takes a string and returns an ordered version of it.
/// Ordered version of string, is a string where all words (separated by space)
/// are replaced by a new word where all the characters arranged in
/// ascending order based on ascii value.
/// Note: You should keep the order of words and blank spaces in the sentence.
/// For example:
/// anti_shuffle('Hi') returns 'Hi'
/// anti_shuffle('hello') returns 'ehllo'
/// anti_shuffle('Hello World!!!') returns 'Hello !!!Wdlor'
fn anti_shuffle(s: String) -> String {
    let mut chars: Vec<char> = s.chars().collect();
    chars.sort();
    chars.into_iter().collect()

}

fn main() {
    let candidate = anti_shuffle;
    assert_eq!(candidate(String::from("Hi")), String::from("Hi"));
    assert_eq!(candidate(String::from("hello")), String::from("ehllo"));
    assert_eq!(candidate(String::from("number")), String::from("bemnru"));
    assert_eq!(candidate(String::from("abcd")), String::from("abcd"));
    assert_eq!(candidate(String::from("Hello World!!!")), String::from("Hello !!!Wdlor"));
    assert_eq!(candidate(String::from("")), String::from(""));
    assert_eq!(candidate(String::from("Hi. My name is Mister Robot. How are you?")), String::from(".Hi My aemn is Meirst .Rboot How aer ?ouy"));
}
