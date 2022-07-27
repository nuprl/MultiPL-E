/// You will be given a string of words separated by commas or spaces. Your task is
/// to split the string into words and return an array of the words.
/// For example:
/// words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
/// words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
fn words_string(s: String) -> Vec<String> {
    let mut words: Vec<String> = Vec::new();
    let mut word = String::new();
    let mut in_word = false;
    for c in s.chars() {
        if c == ' ' || c == ',' {
            if in_word {
                words.push(word);
                word = String::new();
            }
            in_word = false;
        } else {
            in_word = true;
            word.push(c);
        }
    }
    if in_word {
        words.push(word);
    }
    words

}

fn main() {
    let candidate = words_string;
    assert_eq!(candidate(String::from("Hi, my name is John")), vec![String::from("Hi"), String::from("my"), String::from("name"), String::from("is"), String::from("John")]);
    assert_eq!(candidate(String::from("One, two, three, four, five, six")), vec![String::from("One"), String::from("two"), String::from("three"), String::from("four"), String::from("five"), String::from("six")]);
    assert_eq!(candidate(String::from("Hi, my name")), vec![String::from("Hi"), String::from("my"), String::from("name")]);
    assert_eq!(candidate(String::from("One,, two, three, four, five, six,")), vec![String::from("One"), String::from("two"), String::from("three"), String::from("four"), String::from("five"), String::from("six")]);
    assert_eq!(candidate(String::from("")), Vec::<String>::new());
    assert_eq!(candidate(String::from("ahmed     , gamal")), vec![String::from("ahmed"), String::from("gamal")]);
}
