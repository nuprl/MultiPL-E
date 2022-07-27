/// You will be given a number in decimal form and your task is to convert it to
/// binary format. The function should return a string, with each character representing a binary
/// number. Each character in the string will be '0' or '1'.
/// There will be an extra couple of characters 'db' at the beginning and at the end of the string.
/// The extra characters are there to help with the format.
/// Examples:
/// decimal_to_binary(15)   # returns "db1111db"
/// decimal_to_binary(32)   # returns "db100000db"
fn decimal_to_binary(decimal: isize) -> String {
    let mut binary = String::new();
    let mut decimal = decimal;
    while decimal > 0 {
        binary.push(match decimal % 2 {
            0 => '0',
            1 => '1',
            _ => panic!("Invalid decimal value"),
        });
        decimal /= 2;
    }
    binary.insert(0, 'd');
    binary.push('b');
    binary

}

fn main() {
    let candidate = decimal_to_binary;
    assert_eq!(candidate(0), String::from("db0db"));
    assert_eq!(candidate(32), String::from("db100000db"));
    assert_eq!(candidate(103), String::from("db1100111db"));
    assert_eq!(candidate(15), String::from("db1111db"));
}
