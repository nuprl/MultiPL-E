/// Input are two strings a and b consisting only of 1s and 0s.
/// Perform binary XOR on these inputs and return result also as a string.
/// >>> string_xor('010', '110')
/// '100'
fn string_xor(a: String, b: String) -> String {
    let mut result = String::new();
    let mut a_iter = a.chars();
    let mut b_iter = b.chars();
    let mut a_char = a_iter.next();
    let mut b_char = b_iter.next();
    while a_char.is_some() || b_char.is_some() {
        let a_bit = a_char.unwrap_or('0');
        let b_bit = b_char.unwrap_or('0');
        if a_bit == b_bit {
            result.push('0');
        } else {
            result.push('1');
        }
        a_char = a_iter.next();
        b_char = b_iter.next();
    }
    result

}

fn main() {
    let candidate = string_xor;
    assert_eq!(candidate(String::from("111000"), String::from("101010")), String::from("010010"));
    assert_eq!(candidate(String::from("1"), String::from("1")), String::from("0"));
    assert_eq!(candidate(String::from("0101"), String::from("0000")), String::from("0101"));
}
