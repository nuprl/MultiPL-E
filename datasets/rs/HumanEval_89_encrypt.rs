/// Create a function encrypt that takes a string as an argument and
/// returns a string encrypted with the alphabet being rotated. 
/// The alphabet should be rotated in a manner such that the letters 
/// shift down by two multiplied to two places.
/// For example:
/// encrypt('hi') returns 'lm'
/// encrypt('asdfghjkl') returns 'ewhjklnop'
/// encrypt('gf') returns 'kj'
/// encrypt('et') returns 'ix'
fn encrypt(s: String) -> String {
    let mut result = String::new();
    let mut alphabet = String::from("abcdefghijklmnopqrstuvwxyz");
    let mut alphabet_rotated = String::from("cdefghijklmnopqrstuvwxyzab");
    for c in s.chars() {
        let index = alphabet.find(c).unwrap();
        result.push(alphabet_rotated.chars().nth(index).unwrap());
    }
    result

}

fn main() {
    let candidate = encrypt;
    assert_eq!(candidate(String::from("hi")), String::from("lm"));
    assert_eq!(candidate(String::from("asdfghjkl")), String::from("ewhjklnop"));
    assert_eq!(candidate(String::from("gf")), String::from("kj"));
    assert_eq!(candidate(String::from("et")), String::from("ix"));
    assert_eq!(candidate(String::from("faewfawefaewg")), String::from("jeiajeaijeiak"));
    assert_eq!(candidate(String::from("hellomyfriend")), String::from("lippsqcjvmirh"));
    assert_eq!(candidate(String::from("dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh")), String::from("hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl"));
    assert_eq!(candidate(String::from("a")), String::from("e"));
}
