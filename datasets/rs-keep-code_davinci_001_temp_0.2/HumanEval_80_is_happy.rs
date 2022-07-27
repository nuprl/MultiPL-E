/// You are given a string s.
/// Your task is to check if the string is happy or not.
/// A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
/// For example:
/// is_happy(a) => False
/// is_happy(aa) => False
/// is_happy(abcd) => True
/// is_happy(aabb) => False
/// is_happy(adb) => True
/// is_happy(xyy) => False
fn is_happy(s: String) -> bool {
    let mut chars = s.chars();
    let mut prev = chars.next().unwrap();
    let mut curr = chars.next().unwrap();
    let mut next = chars.next().unwrap();
    loop {
        if curr == next && curr == prev {
            return false;
        }
        prev = curr;
        curr = next;
        next = chars.next().unwrap_or('\0');
        if next == '\0' {
            break;
        }
    }
    true

}

fn main() {
    let candidate = is_happy;
    assert_eq!(candidate(String::from("a")), false);
    assert_eq!(candidate(String::from("aa")), false);
    assert_eq!(candidate(String::from("abcd")), true);
    assert_eq!(candidate(String::from("aabb")), false);
    assert_eq!(candidate(String::from("adb")), true);
    assert_eq!(candidate(String::from("xyy")), false);
    assert_eq!(candidate(String::from("iopaxpoi")), true);
    assert_eq!(candidate(String::from("iopaxioi")), false);
}
