"""
    You will be given a string of words separated by commas or spaces. Your task is
    to split the string into words and return an array of the words.
    
    For example:
    words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
    words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
    """
function words_string(s::String)::Vector{String} 
    return split(s, ", ")
end

using Test

@testset begin

candidate = words_string;
	@test(candidate("Hi, my name is John") == ["Hi", "my", "name", "is", "John"])
	@test(candidate("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"])
	@test(candidate("Hi, my name") == ["Hi", "my", "name"])
	@test(candidate("One,, two, three, four, five, six,") == ["One", "two", "three", "four", "five", "six"])
	@test(candidate("") == Vector{String}([]))
	@test(candidate("ahmed     , gamal") == ["ahmed", "gamal"])
end
