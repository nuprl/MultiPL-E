/// You have been tasked to write a function that receives 
/// a hexadecimal number as a string and counts the number of hexadecimal 
/// digits that are primes (prime number, or a prime, is a natural number 
/// greater than 1 that is not a product of two smaller natural numbers).
/// Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
/// Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
/// So you have to determine a number of the following digits: 2, 3, 5, 7, 
/// B (=decimal 11), D (=decimal 13).
/// Note: you may assume the input is always correct or empty string, 
/// and symbols A,B,C,D,E,F are always uppercase.
/// Examples:
/// For num = "AB" the output should be 1.
/// For num = "1077E" the output should be 2.
/// For num = "ABED1A33" the output should be 4.
/// For num = "123456789ABCDEF0" the output should be 6.
/// For num = "2020" the output should be 2.
fn hex_key(num: String) -> isize {
    let mut count = 0;
    let mut i = 0;
    while i < num.len() {
        let mut j = i;
        while j < num.len() && num.chars().nth(j).unwrap().is_digit(16) {
            j += 1;
        }
        if j - i > 1 {
            let mut k = i;
            while k < j {
                let mut l = k;
                while l < j && num.chars().nth(l).unwrap().is_digit(16) {
                    l += 1;
                }
                if l - k > 1 {
                    let mut m = k;
                    while m < l {
                        let mut n = m;
                        while n < l && num.chars().nth(n).unwrap().is_digit(16) {
                            n += 1;
                        }
                        if n - m > 1 {
                            count += 1;
                        }
                        m += 1;
                    }
                }
                k += 1;
            }
        }
        i = j;
    }
    count

}

fn main() {
    let candidate = hex_key;
    assert_eq!(candidate(String::from("AB")), 1);
    assert_eq!(candidate(String::from("1077E")), 2);
    assert_eq!(candidate(String::from("ABED1A33")), 4);
    assert_eq!(candidate(String::from("2020")), 2);
    assert_eq!(candidate(String::from("123456789ABCDEF0")), 6);
    assert_eq!(candidate(String::from("112233445566778899AABBCCDDEEFF00")), 12);
    assert_eq!(candidate(String::new()), 0);
}
