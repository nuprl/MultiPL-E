/// Write a function that takes a message, and encodes in such a 
/// way that it swaps case of all letters, replaces all vowels in 
/// the message with the letter that appears 2 places ahead of that 
/// vowel in the english alphabet. 
/// Assume only letters. 
/// Examples:
/// >>> encode('test')
/// 'TGST'
/// >>> encode('This is a message')
/// 'tHKS KS C MGSSCGG'
fn encode(message: String) -> String {
    let mut encoded = String::new();
    for c in message.chars() {
        if c.is_alphabetic() {
            let mut c = c.to_ascii_uppercase();
            let mut next = c;
            if c == 'A' {
                next = 'B';
            } else if c == 'E' {
                next = 'F';
            } else if c == 'I' {
                next = 'J';
            } else if c == 'O' {
                next = 'P';
            } else if c == 'U' {
                next = 'V';
            } else if c == 'Y' {
                next = 'Z';
            } else if c == 'B' {
                next = 'A';
            } else if c == 'F' {
                next = 'E';
            } else if c == 'J' {
                next = 'I';
            } else if c == 'P' {
                next = 'O';
            } else if c == 'V' {
                next = 'U';
            } else if c == 'Z' {
                next = 'Y';
            }
            encoded.push(next);
        } else {
            encoded.push(c);
        }
    }
    encoded

}

fn main() {
    let candidate = encode;
    assert_eq!(candidate(String::from("TEST")), String::from("tgst"));
    assert_eq!(candidate(String::from("Mudasir")), String::from("mWDCSKR"));
    assert_eq!(candidate(String::from("YES")), String::from("ygs"));
    assert_eq!(candidate(String::from("This is a message")), String::from("tHKS KS C MGSSCGG"));
    assert_eq!(candidate(String::from("I DoNt KnOw WhAt tO WrItE")), String::from("k dQnT kNqW wHcT Tq wRkTg"));
}
