
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
func get_closest_vowel(word: String) -> String {
    var vowels: [Character] = ["a", "e", "i", "o", "u"]
    var consonants: [Character] = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    var closest_vowel: String = ""
    var closest_vowel_distance: Int = 0
    var word_array: [Character] = Array(word.lowercased())
    var word_length: Int = word_array.count
    var i: Int = 0
    var j: Int = 0
    var vowel_found: Bool = false
    var vowel_distance: Int = 0
    var consonant_found: Bool = false
    var consonant_distance: Int = 0
    var consonant_index: Int = 0
    var vowel_index: Int = 0
    var vowel_index_found: Bool = false
    var consonant_index_found: Bool = false
    var vowel_found_index: Int = 0
    var consonant_found_index: Int = 0
    var consonant_found_index_found: Bool = false
    var vowel_found_index_found: Bool = false
    var vowel_found_index_found_2: Bool = false
    var consonant_found_index_found_2: Bool = false
    var vowel_found_index_found_3: Bool = false
    var consonant_found_index_found_3: Bool = false
    var vowel_found_index_found_4: Bool = false
    var consonant_found_index_found_4: Bool = false
    var vowel_found_index_found_5: Bool = false
    var consonant_found_index_found_5: Bool = false
    var vowel_found_index_found_6: Bool = false
    var consonant_found_index_found_6: Bool = false
    var vowel

}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")