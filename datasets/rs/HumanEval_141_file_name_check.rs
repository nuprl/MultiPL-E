/// Create a function which takes a string representing a file's name, and returns
/// 'Yes' if the the file's name is valid, and returns 'No' otherwise.
/// A file's name is considered to be valid if and only if all the following conditions 
/// are met:
/// - There should not be more than three digits ('0'-'9') in the file's name.
/// - The file's name contains exactly one dot '.'
/// - The substring before the dot should not be empty, and it starts with a letter from 
/// the latin alphapet ('a'-'z' and 'A'-'Z').
/// - The substring after the dot should be one of these: ['txt', 'exe', 'dll']
/// Examples:
/// file_name_check("example.txt") # => 'Yes'
/// file_name_check("1example.dll") # => 'No' (the name should start with a latin alphapet letter)
fn file_name_check(file_name: String) -> String {
    let mut chars = file_name.chars();
    let mut count = 0;
    let mut dot_found = false;
    let mut dot_index = 0;
    let mut dot_index_found = false;
    let mut dot_index_found_count = 0;
    let mut dot_index_found_count_max = 0;
    let mut dot_index_found_count_max_index = 0;
    let mut dot_index_found_count_max_index_found = false;
    let mut dot_index_found_count_max_index_found_count = 0;
    let mut dot_index_found_count_max_index_found_count_max = 0;
    let mut dot_index_found_count_max_index_found_count_max_index = 0;
    let mut dot_index_found_count_max_index_found_count_max_index_found = false;
    let mut dot_index_found_count_max_index_found_count_max_index_found_count = 0;
    let mut dot_index_found_count_max_index_found_count_max_index_found_count_max = 0;
    let mut dot_index_found_count_max_index_found_count_max_index_found_count_max_index = 0;
    let mut dot_index_found_count_max_index_found_count_max_index_found_count_max_index_found = false;
    let mut dot_index_found_count_max_index_found_count_max_index_found_count_max_index_found_count = 0;
    let mut dot_index_found_count_max_index_found_count_max_index_found_count_max_index_found_count_max = 0;
    let mut dot_index_found_count_max_index_found_count_max_index_found_count_max_index_found_count_max_index = 0;
    let mut dot_index_found_count_max_index_found_count_max_index_found_count

}

fn main() {
    let candidate = file_name_check;
    assert_eq!(candidate(String::from("example.txt")), String::from("Yes"));
    assert_eq!(candidate(String::from("1example.dll")), String::from("No"));
    assert_eq!(candidate(String::from("s1sdf3.asd")), String::from("No"));
    assert_eq!(candidate(String::from("K.dll")), String::from("Yes"));
    assert_eq!(candidate(String::from("MY16FILE3.exe")), String::from("Yes"));
    assert_eq!(candidate(String::from("His12FILE94.exe")), String::from("No"));
    assert_eq!(candidate(String::from("_Y.txt")), String::from("No"));
    assert_eq!(candidate(String::from("?aREYA.exe")), String::from("No"));
    assert_eq!(candidate(String::from("/this_is_valid.dll")), String::from("No"));
    assert_eq!(candidate(String::from("this_is_valid.wow")), String::from("No"));
    assert_eq!(candidate(String::from("this_is_valid.txt")), String::from("Yes"));
    assert_eq!(candidate(String::from("this_is_valid.txtexe")), String::from("No"));
    assert_eq!(candidate(String::from("#this2_i4s_5valid.ten")), String::from("No"));
    assert_eq!(candidate(String::from("@this1_is6_valid.exe")), String::from("No"));
    assert_eq!(candidate(String::from("this_is_12valid.6exe4.txt")), String::from("No"));
    assert_eq!(candidate(String::from("all.exe.txt")), String::from("No"));
    assert_eq!(candidate(String::from("I563_No.exe")), String::from("Yes"));
    assert_eq!(candidate(String::from("Is3youfault.txt")), String::from("Yes"));
    assert_eq!(candidate(String::from("no_one#knows.dll")), String::from("Yes"));
    assert_eq!(candidate(String::from("1I563_Yes3.exe")), String::from("No"));
    assert_eq!(candidate(String::from("I563_Yes3.txtt")), String::from("No"));
    assert_eq!(candidate(String::from("final..txt")), String::from("No"));
    assert_eq!(candidate(String::from("final132")), String::from("No"));
    assert_eq!(candidate(String::from("_f4indsartal132.")), String::from("No"));
    assert_eq!(candidate(String::from(".txt")), String::from("No"));
    assert_eq!(candidate(String::from("s.")), String::from("No"));
}
