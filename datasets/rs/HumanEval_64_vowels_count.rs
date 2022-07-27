/// Write a function vowels_count which takes a string representing
/// a word as input and returns the number of vowels in the string.
/// Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
/// vowel, but only when it is at the end of the given word.
/// Example:
/// >>> vowels_count("abcde")
/// 2
/// >>> vowels_count("ACEDY")
/// 3
fn vowels_count(s: String) -> isize {
    let mut count = 0;
    for c in s.chars() {
        if c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' {
            count += 1;
        }
    }
    count

}

fn main() {
    let candidate = vowels_count;
    assert_eq!(candidate(String::from("abcde")), 2);
    assert_eq!(candidate(String::from("Alone")), 3);
    assert_eq!(candidate(String::from("key")), 2);
    assert_eq!(candidate(String::from("bye")), 1);
    assert_eq!(candidate(String::from("keY")), 2);
    assert_eq!(candidate(String::from("bYe")), 1);
    assert_eq!(candidate(String::from("ACEDY")), 3);
}
