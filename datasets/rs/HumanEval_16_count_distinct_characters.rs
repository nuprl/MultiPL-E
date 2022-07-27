/// Given a string, find out how many distinct characters (regardless of case) does it consist of
/// >>> count_distinct_characters('xyzXYZ')
/// 3
/// >>> count_distinct_characters('Jerry')
/// 4
fn count_distinct_characters(string: String) -> isize {
    let mut distinct_characters = HashSet::new();
    for c in string.chars() {
        distinct_characters.insert(c.to_lowercase().to_string());
    }
    distinct_characters.len() as isize

}

fn main() {
    let candidate = count_distinct_characters;
    assert_eq!(candidate(String::from("")), 0);
    assert_eq!(candidate(String::from("abcde")), 5);
    assert_eq!(candidate(String::from("abcdecadeCADE")), 5);
    assert_eq!(candidate(String::from("aaaaAAAAaaaa")), 1);
    assert_eq!(candidate(String::from("Jerry jERRY JeRRRY")), 5);
}
