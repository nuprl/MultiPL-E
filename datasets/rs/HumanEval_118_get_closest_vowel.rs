/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// get_closest_vowel("yogurt") ==> "u"
/// get_closest_vowel("FULL") ==> "U"
/// get_closest_vowel("quick") ==> ""
/// get_closest_vowel("ab") ==> ""
fn get_closest_vowel(word: String) -> String {
    let mut vowels = vec!['a', 'e', 'i', 'o', 'u'];
    let mut consonants = vec!['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z'];
    let mut result: String = String::new();
    let mut i = 0;
    let mut j = word.len() - 1;
    while i < j {
        if vowels.contains(&word.chars().nth(i).unwrap()) && consonants.contains(&word.chars().nth(j).unwrap()) {
            result = word.chars().nth(i).unwrap().to_string();
            break;
        }
        i += 1;
        j -= 1;
    }
    result

}

fn main() {
    let candidate = get_closest_vowel;
    assert_eq!(candidate(String::from("yogurt")), String::from("u"));
    assert_eq!(candidate(String::from("full")), String::from("u"));
    assert_eq!(candidate(String::from("easy")), String::from(""));
    assert_eq!(candidate(String::from("eAsy")), String::from(""));
    assert_eq!(candidate(String::from("ali")), String::from(""));
    assert_eq!(candidate(String::from("bad")), String::from("a"));
    assert_eq!(candidate(String::from("most")), String::from("o"));
    assert_eq!(candidate(String::from("ab")), String::from(""));
    assert_eq!(candidate(String::from("ba")), String::from(""));
    assert_eq!(candidate(String::from("quick")), String::from(""));
    assert_eq!(candidate(String::from("anime")), String::from("i"));
    assert_eq!(candidate(String::from("Asia")), String::from(""));
    assert_eq!(candidate(String::from("Above")), String::from("o"));
}
