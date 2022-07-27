/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
/// Examples:
/// digitSum("") => 0
/// digitSum("abAB") => 131
/// digitSum("abcCd") => 67
/// digitSum("helloE") => 69
/// digitSum("woArBld") => 131
/// digitSum("aAaaaXa") => 153
fn digitSum(s: String) -> isize {
    let mut sum = 0;
    for c in s.chars() {
        if c.is_uppercase() {
            sum += c as isize;
        }
    }
    sum

}

fn main() {
    let candidate = digitSum;
    assert_eq!(candidate(String::from("")), 0);
    assert_eq!(candidate(String::from("abAB")), 131);
    assert_eq!(candidate(String::from("abcCd")), 67);
    assert_eq!(candidate(String::from("helloE")), 69);
    assert_eq!(candidate(String::from("woArBld")), 131);
    assert_eq!(candidate(String::from("aAaaaXa")), 153);
    assert_eq!(candidate(String::from(" How are yOu?")), 151);
    assert_eq!(candidate(String::from("You arE Very Smart")), 327);
}
