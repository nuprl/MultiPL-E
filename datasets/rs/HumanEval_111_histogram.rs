use std::collections::HashMap;

/// Given a string representing a space separated lowercase letters, return a dictionary
/// of the letter with the most repetition and containing the corresponding count.
/// If several letters have the same occurrence, return all of them.
/// Example:
/// histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
/// histogram('a b b a') == {'a': 2, 'b': 2}
/// histogram('a b c a b') == {'a': 2, 'b': 2}
/// histogram('b b b b a') == {'b': 4}
/// histogram('') == {}
fn histogram(test: String) -> HashMap<String, isize> {
    let mut map = HashMap::new();
    for word in test.split_whitespace() {
        let count = map.entry(word).or_insert(0);
        *count += 1;
    }
    map

}

fn main() {
    let candidate = histogram;
    assert_eq!(candidate(String::from("a b b a")), HashMap::from([(String::from("a"), 2), (String::from("b"), 2)]));
    assert_eq!(candidate(String::from("a b c a b")), HashMap::from([(String::from("a"), 2), (String::from("b"), 2)]));
    assert_eq!(candidate(String::from("a b c d g")), HashMap::from([(String::from("a"), 1), (String::from("b"), 1), (String::from("c"), 1), (String::from("d"), 1), (String::from("g"), 1)]));
    assert_eq!(candidate(String::from("r t g")), HashMap::from([(String::from("r"), 1), (String::from("t"), 1), (String::from("g"), 1)]));
    assert_eq!(candidate(String::from("b b b b a")), HashMap::from([(String::from("b"), 4)]));
    assert_eq!(candidate(String::from("r t g")), HashMap::from([(String::from("r"), 1), (String::from("t"), 1), (String::from("g"), 1)]));
    assert_eq!(candidate(String::from("")), HashMap::from([]));
    assert_eq!(candidate(String::from("a")), HashMap::from([(String::from("a"), 1)]));
}
