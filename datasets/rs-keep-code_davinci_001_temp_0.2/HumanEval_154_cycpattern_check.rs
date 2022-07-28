/// You are given 2 words. You need to return True if the second word or any of its rotations is a substring in the first word
/// cycpattern_check("abcd","abd") => False
/// cycpattern_check("hello","ell") => True
/// cycpattern_check("whassup","psus") => False
/// cycpattern_check("abab","baa") => True
/// cycpattern_check("efef","eeff") => False
/// cycpattern_check("himenss","simen") => True
fn cycpattern_check(a: String, b: String) -> bool {
    let mut a_chars = a.chars().collect::<Vec<char>>();
    let mut b_chars = b.chars().collect::<Vec<char>>();
    let mut found = false;
    let mut i = 0;
    while i < a_chars.len() {
        if a_chars[i] == b_chars[0] {
            found = true;
            let mut j = i;
            while j < a_chars.len() {
                if a_chars[j] != b_chars[j - i] {
                    found = false;
                    break;
                }
                j += 1;
            }
            if found {
                break;
            }
        }
        i += 1;
    }
    found

}

fn main() {
    let candidate = cycpattern_check;
    assert_eq!(candidate(String::from("xyzw"), String::from("xyw")), false);
    assert_eq!(candidate(String::from("yello"), String::from("ell")), true);
    assert_eq!(candidate(String::from("whattup"), String::from("ptut")), false);
    assert_eq!(candidate(String::from("efef"), String::from("fee")), true);
    assert_eq!(candidate(String::from("abab"), String::from("aabb")), false);
    assert_eq!(candidate(String::from("winemtt"), String::from("tinem")), true);
}
