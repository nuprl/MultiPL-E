use std::collections::HashMap;

/// Given a dictionary, return True if all keys are strings in lower 
/// case or all keys are strings in upper case, else return False.
/// The function should return False is the given dictionary is empty.
/// Examples:
/// check_dict_case({"a":"apple", "b":"banana"}) should return True.
/// check_dict_case({"a":"apple", "A":"banana", "B":"banana"}) should return False.
/// check_dict_case({"a":"apple", 8:"banana", "a":"apple"}) should return False.
/// check_dict_case({"Name":"John", "Age":"36", "City":"Houston"}) should return False.
/// check_dict_case({"STATE":"NC", "ZIP":"12345" }) should return True.
fn check_dict_case(dict: HashMap<String, String>) -> bool {
    let mut lower_case = true;
    let mut upper_case = true;
    for (key, _) in dict.iter() {
        if key.chars().next().unwrap().is_uppercase() {
            lower_case = false;
        } else {
            upper_case = false;
        }
    }
    lower_case || upper_case

}

fn main() {
    let candidate = check_dict_case;
    assert_eq!(candidate(HashMap::from([(String::from("p"), String::from("pineapple")), (String::from("b"), String::from("banana"))])), true);
    assert_eq!(candidate(HashMap::from([(String::from("p"), String::from("pineapple")), (String::from("A"), String::from("banana")), (String::from("B"), String::from("banana"))])), false);
    assert_eq!(candidate(HashMap::from([(String::from("p"), String::from("pineapple")), (5, String::from("banana")), (String::from("a"), String::from("apple"))])), false);
    assert_eq!(candidate(HashMap::from([(String::from("Name"), String::from("John")), (String::from("Age"), String::from("36")), (String::from("City"), String::from("Houston"))])), false);
    assert_eq!(candidate(HashMap::from([(String::from("STATE"), String::from("NC")), (String::from("ZIP"), String::from("12345"))])), true);
    assert_eq!(candidate(HashMap::from([(String::from("fruit"), String::from("Orange")), (String::from("taste"), String::from("Sweet"))])), true);
    assert_eq!(candidate(HashMap::from([])), false);
}
