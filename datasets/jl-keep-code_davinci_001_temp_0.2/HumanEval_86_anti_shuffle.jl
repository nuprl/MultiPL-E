"""
    Write a function that takes a string and returns an ordered version of it.
    Ordered version of string, is a string where all words (separated by space)
    are replaced by a new word where all the characters arranged in
    ascending order based on ascii value.
    Note: You should keep the order of words and blank spaces in the sentence.

    For example:
    anti_shuffle('Hi') returns 'Hi'
    anti_shuffle('hello') returns 'ehllo'
    anti_shuffle('Hello World!!!') returns 'Hello !!!Wdlor'
    """
function anti_shuffle(s::String)::String 
    return join(sort(collect(s)))
end
anti_shuffle("Hello World!!!")
anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
anti_shuffle("Hello World!!!") == "Hello !!!

using Test

@testset begin

candidate = anti_shuffle;
	@test(candidate("Hi") == "Hi")
	@test(candidate("hello") == "ehllo")
	@test(candidate("number") == "bemnru")
	@test(candidate("abcd") == "abcd")
	@test(candidate("Hello World!!!") == "Hello !!!Wdlor")
	@test(candidate("") == "")
	@test(candidate("Hi. My name is Mister Robot. How are you?") == ".Hi My aemn is Meirst .Rboot How aer ?ouy")
end
