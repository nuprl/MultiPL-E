// Rust
/// Create a function encrypt that takes a string as an argument and
/// returns a string encrypted with the alphabet being rotated. 
/// The alphabet should be rotated in a manner such that the letters 
/// shift down by two multiplied to two places.
/// For example:
fn encrypt(s: String) -> String {
    let mut encrypted = String::new();
    for c in s.chars() {
        let mut c = c as u8;
        c = c + 2 * 2;
        if c > 122 {
            c = c - 26;
        }
        encrypted.push(c as char);
    }
    encrypted
}