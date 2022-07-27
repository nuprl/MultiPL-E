/// Return a string containing space-delimited numbers starting from 0 upto n inclusive.
/// >>> string_sequence(0)
/// '0'
/// >>> string_sequence(5)
/// '0 1 2 3 4 5'
fn string_sequence(n: isize) -> String {
    let mut result = String::new();
    for i in 0..n+1 {
        result.push_str(&i.to_string());
        result.push(' ');
    }
    result.pop();
    result

}

fn main() {
    let candidate = string_sequence;
    assert_eq!(candidate(0), String::from("0"));
    assert_eq!(candidate(3), String::from("0 1 2 3"));
    assert_eq!(candidate(10), String::from("0 1 2 3 4 5 6 7 8 9 10"));
}
