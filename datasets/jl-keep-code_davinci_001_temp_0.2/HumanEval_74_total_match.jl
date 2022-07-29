"""
    Write a function that accepts two lists of strings and returns the list that has 
    total number of chars in the all strings of the list less than the other list.

    if the two lists have the same number of chars, return the first list.

    Examples
    total_match([], []) ➞ []
    total_match(['hi', 'admin'], ['hI', 'Hi']) ➞ ['hI', 'Hi']
    total_match(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']) ➞ ['hi', 'admin']
    total_match(['hi', 'admin'], ['hI', 'hi', 'hi']) ➞ ['hI', 'hi', 'hi']
    total_match(['4'], ['1', '2', '3', '4', '5']) ➞ ['4']
    """
function total_match(lst1::Vector{String}, lst2::Vector{String})::Vector{String} 
    if sum(length.(lst1)) < sum(length.(lst2))
        return lst1
    elseif sum(length.(lst1)) > sum(length.(lst2))
        return lst2
    else
        return lst1
    end
end
total_match(["hi", "admin"], ["hI", "Hi"])
total_match(["hi", "admin"], ["hi", "hi", "admin", "project"])
total_match(["hi", "admin"], ["hI", "hi", "hi"])
total_match(["4"], ["1", "2", "3", "4", "5"])


using Test

@testset begin

candidate = total_match;
	@test(candidate(Vector{String}([]), Vector{String}([])) == Vector{String}([]))
	@test(candidate(["hi", "admin"], ["hi", "hi"]) == ["hi", "hi"])
	@test(candidate(["hi", "admin"], ["hi", "hi", "admin", "project"]) == ["hi", "admin"])
	@test(candidate(["4"], ["1", "2", "3", "4", "5"]) == ["4"])
	@test(candidate(["hi", "admin"], ["hI", "Hi"]) == ["hI", "Hi"])
	@test(candidate(["hi", "admin"], ["hI", "hi", "hi"]) == ["hI", "hi", "hi"])
	@test(candidate(["hi", "admin"], ["hI", "hi", "hii"]) == ["hi", "admin"])
	@test(candidate(Vector{String}([]), ["this"]) == Vector{String}([]))
	@test(candidate(["this"], Vector{String}([])) == Vector{String}([]))
end
