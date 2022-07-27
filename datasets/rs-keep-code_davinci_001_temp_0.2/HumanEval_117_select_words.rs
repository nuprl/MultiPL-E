/// Given a string s and a natural number n, you have been tasked to implement 
/// a function that returns a list of all words from string s that contain exactly 
/// n consonants, in order these words appear in the string s.
/// If the string s is empty then the function should return an empty list.
/// Note: you may assume the input string contains only letters and spaces.
/// Examples:
/// select_words("Mary had a little lamb", 4) ==> ["little"]
/// select_words("Mary had a little lamb", 3) ==> ["Mary", "lamb"]
/// select_words("simple white space", 2) ==> []
/// select_words("Hello world", 4) ==> ["world"]
/// select_words("Uncle sam", 3) ==> ["Uncle"]
fn select_words(s: String, n: isize) -> Vec<String> {
    let mut result: Vec<String> = Vec::new();
    let mut word: String = String::new();
    let mut consonants: isize = 0;
    let mut is_word: bool = false;
    for c in s.chars() {
        if c == ' ' {
            if is_word {
                if consonants == n {
                    result.push(word.clone());
                }
                word = String::new();
                consonants = 0;
                is_word = false;
            }
        } else if c.is_alphabetic() {
            if !is_word {
                is_word = true;
            }
            if !c.is_ascii_vowel() {
                consonants += 1;
            }
        }
        word.push(c);
    }
    if is_word && consonants == n {
        result.push(word);
    }
    result

}

fn main() {
    let candidate = select_words;
    assert_eq!(candidate(String::from("Mary had a little lamb"), 4), vec![String::from("little")]);
    assert_eq!(candidate(String::from("Mary had a little lamb"), 3), vec![String::from("Mary"), String::from("lamb")]);
    assert_eq!(candidate(String::from("simple white space"), 2), Vec::<String>::new());
    assert_eq!(candidate(String::from("Hello world"), 4), vec![String::from("world")]);
    assert_eq!(candidate(String::from("Uncle sam"), 3), vec![String::from("Uncle")]);
    assert_eq!(candidate(String::from(""), 4), Vec::<String>::new());
    assert_eq!(candidate(String::from("a b c d e f"), 1), vec![String::from("b"), String::from("c"), String::from("d"), String::from("f")]);
}
