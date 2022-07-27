/// Given a positive integer, obtain its roman numeral equivalent as a string,
/// and return it in lowercase.
/// Restrictions: 1 <= num <= 1000
/// Examples:
/// >>> int_to_mini_roman(19) == 'xix'
/// >>> int_to_mini_roman(152) == 'clii'
/// >>> int_to_mini_roman(426) == 'cdxxvi'
fn int_to_mini_roman(number: isize) -> String {
    let mut result = String::new();
    let mut number = number;
    let mut i = 0;
    while number > 0 {
        let digit = number % 10;
        let roman = match digit {
            1 => "i",
            2 => "ii",
            3 => "iii",
            4 => "iv",
            5 => "v",
            6 => "vi",
            7 => "vii",
            8 => "viii",
            9 => "ix",
            _ => "",
        };
        result = format!("{}{}", roman, result);
        number /= 10;
        i += 1;
    }
    result

}

fn main() {
    let candidate = int_to_mini_roman;
    assert_eq!(candidate(19), String::from("xix"));
    assert_eq!(candidate(152), String::from("clii"));
    assert_eq!(candidate(251), String::from("ccli"));
    assert_eq!(candidate(426), String::from("cdxxvi"));
    assert_eq!(candidate(500), String::from("d"));
    assert_eq!(candidate(1), String::from("i"));
    assert_eq!(candidate(4), String::from("iv"));
    assert_eq!(candidate(43), String::from("xliii"));
    assert_eq!(candidate(90), String::from("xc"));
    assert_eq!(candidate(94), String::from("xciv"));
    assert_eq!(candidate(532), String::from("dxxxii"));
    assert_eq!(candidate(900), String::from("cm"));
    assert_eq!(candidate(994), String::from("cmxciv"));
    assert_eq!(candidate(1000), String::from("m"));
}
