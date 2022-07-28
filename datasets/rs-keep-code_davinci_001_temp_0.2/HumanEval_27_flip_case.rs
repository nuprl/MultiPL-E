/// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
/// >>> flip_case('Hello')
/// 'hELLO'
fn flip_case(string: String) -> String {
    let mut result = String::new();
    for c in string.chars() {
        if c.is_uppercase() {
            result.push(c.to_lowercase().next().unwrap());
        } else {
            result.push(c.to_uppercase().next().unwrap());
        }
    }
    result

}

fn main() {
    let candidate = flip_case;
    assert_eq!(candidate(String::from("")), String::from(""));
    assert_eq!(candidate(String::from("Hello!")), String::from("hELLO!"));
    assert_eq!(candidate(String::from("These violent delights have violent ends")), String::from("tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS"));
}
