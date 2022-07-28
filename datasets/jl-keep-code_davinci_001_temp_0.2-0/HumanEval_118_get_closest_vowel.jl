"""You are given a word. Your task is to find the closest vowel that stands between 
    two consonants from the right side of the word (case sensitive).
    
    Vowels in the beginning and ending doesn't count. Return empty string if you didn't
    find any vowel met the above condition. 

    You may assume that the given string contains English letter only.

    Example:
    get_closest_vowel("yogurt") ==> "u"
    get_closest_vowel("FULL") ==> "U"
    get_closest_vowel("quick") ==> ""
    get_closest_vowel("ab") ==> ""
    """
function get_closest_vowel(word::String)::String 
    vowels = ["a", "e", "i", "o", "u"]
    # find the index of the first vowel
    for i in 1:length(word)
        if word[i] in vowels
            first_vowel = i
            break
        end
    end
    # find the index of the last consonant
    for i in reverse(1:length(word))
        if word[i] not in vowels
            last_consonant = i
            break
        end
    end
    # find the closest vowel
    if first_vowel < last_consonant
        for i in first_vowel:last_consonant
            if word[i] in vowels
                return word[i]
            end
        end
    end
    return ""
end

using Test

@testset begin

candidate = get_closest_vowel;
	@test(candidate("yogurt") == "u")
	@test(candidate("full") == "u")
	@test(candidate("easy") == "")
	@test(candidate("eAsy") == "")
	@test(candidate("ali") == "")
	@test(candidate("bad") == "a")
	@test(candidate("most") == "o")
	@test(candidate("ab") == "")
	@test(candidate("ba") == "")
	@test(candidate("quick") == "")
	@test(candidate("anime") == "i")
	@test(candidate("Asia") == "")
	@test(candidate("Above") == "o")
end
