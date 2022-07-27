/// Write a function that takes a string and returns True if the string
/// length is a prime number or False otherwise
/// Examples
/// prime_length('Hello') == True
/// prime_length('abcdcba') == True
/// prime_length('kittens') == True
/// prime_length('orange') == False
fn prime_length(string: String) -> bool {
    let mut prime = true;
    let mut i = 0;
    let mut string_length = string.len();
    while i < string_length {
        if string_length % (i + 1) == 0 {
            prime = false;
        }
        i += 1;
    }
    prime

}

fn main() {
    let candidate = prime_length;
    assert_eq!(candidate(String::from("Hello")), true);
    assert_eq!(candidate(String::from("abcdcba")), true);
    assert_eq!(candidate(String::from("kittens")), true);
    assert_eq!(candidate(String::from("orange")), false);
    assert_eq!(candidate(String::from("wow")), true);
    assert_eq!(candidate(String::from("world")), true);
    assert_eq!(candidate(String::from("MadaM")), true);
    assert_eq!(candidate(String::from("Wow")), true);
    assert_eq!(candidate(String::from("")), false);
    assert_eq!(candidate(String::from("HI")), true);
    assert_eq!(candidate(String::from("go")), true);
    assert_eq!(candidate(String::from("gogo")), false);
    assert_eq!(candidate(String::from("aaaaaaaaaaaaaaa")), false);
    assert_eq!(candidate(String::from("Madam")), true);
    assert_eq!(candidate(String::from("M")), false);
    assert_eq!(candidate(String::from("0")), false);
}
