/// Given a string s, count the number of uppercase vowels in even indices.
/// For example:
/// count_upper('aBCdEf') returns 1
/// count_upper('abcdefg') returns 0
/// count_upper('dBBE') returns 0
fn count_upper(s: String) -> isize {
    let mut count = 0;
    for (i, c) in s.chars().enumerate() {
        if i % 2 == 0 && c.is_uppercase() {
            count += 1;
        }
    }
    count

}

fn main() {
    let candidate = count_upper;
    assert_eq!(candidate(String::from("aBCdEf")), 1);
    assert_eq!(candidate(String::from("abcdefg")), 0);
    assert_eq!(candidate(String::from("dBBE")), 0);
    assert_eq!(candidate(String::from("B")), 0);
    assert_eq!(candidate(String::from("U")), 1);
    assert_eq!(candidate(String::from("")), 0);
    assert_eq!(candidate(String::from("EEEE")), 2);
}
