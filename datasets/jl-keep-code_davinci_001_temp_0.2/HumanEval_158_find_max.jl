"""Write a function that accepts a list of strings.
    The list contains different words. Return the word with maximum number
    of unique characters. If multiple strings have maximum number of unique
    characters, return the one which comes first in lexicographical order.

    find_max(["name", "of", "string"]) == "string"
    find_max(["name", "enam", "game"]) == "enam"
    find_max(["aaaaaaa", "bb" ,"cc"]) == ""aaaaaaa"
    """
function find_max(words::Vector{String})::String 
    """
    function that accepts a list of strings.
    The list contains different words. Return the word with maximum number
    of unique characters. If multiple strings have maximum number of unique
    characters, return the one which comes first in lexicographical order.
    """
    # create a dictionary to store the unique characters
    unique_characters = Dict{Char, Int64}()
    # create a dictionary to store the unique characters and their counts
    unique_characters_count = Dict{Char, Int64}()
    # create a dictionary to store the words and their counts
    words_count = Dict{String, Int64}()
    # create a dictionary to store the words and their counts
    words_count_unique_characters = Dict{String, Int64}()
    # create a dictionary to store the words and their counts
    words_count_unique_characters_lexicographical = Dict{String, Int64}()
    # create a dictionary to store the words and their counts
    words_count_unique_characters_lexicographical_count = Dict{String, Int64}()
    # create a dictionary to store the words and their counts
    words_count_unique_characters_lexicographical_count_unique_characters = Dict{String, Int64}()
    # create a dictionary to store the words and their counts
    words_count_unique_characters_lexicographical_count_unique_characters_count = Dict{String, Int64}()
    # create a dictionary to store the words and their counts
    words_count_unique_characters_lexicographical_count_unique_characters_count_words = Dict{String, Int64}()
    # create a dictionary to store the words and their counts
    words_count_unique_characters_lexicographical_count_unique_characters_count_words_count = Dict{String, Int64}()
    # create a dictionary to store the words and their counts
    words_count_unique_characters_lexicographical_count_unique_characters_count_words_count_words = Dict{String, Int64}()
    # create

using Test

@testset begin

candidate = find_max;
	@test(candidate(["name", "of", "string"]) == "string")
	@test(candidate(["name", "enam", "game"]) == "enam")
	@test(candidate(["aaaaaaa", "bb", "cc"]) == "aaaaaaa")
	@test(candidate(["abc", "cba"]) == "abc")
	@test(candidate(["play", "this", "game", "of", "footbott"]) == "footbott")
	@test(candidate(["we", "are", "gonna", "rock"]) == "gonna")
	@test(candidate(["we", "are", "a", "mad", "nation"]) == "nation")
	@test(candidate(["this", "is", "a", "prrk"]) == "this")
	@test(candidate(["b"]) == "b")
	@test(candidate(["play", "play", "play"]) == "play")
end
