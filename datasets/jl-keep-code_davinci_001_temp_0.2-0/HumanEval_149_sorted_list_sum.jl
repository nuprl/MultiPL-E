"""Write a function that accepts a list of strings as a parameter,
    deletes the strings that have odd lengths from it,
    and returns the resulted list with a sorted order,
    The list is always a list of strings and never an array of numbers,
    and it may contain duplicates.
    The order of the list should be ascending by length of each word, and you
    should return the list sorted by that rule.
    If two words have the same length, sort the list alphabetically.
    The function should return a list of strings in sorted order.
    You may assume that all words will have the same length.
    For example:
    assert list_sort(["aa", "a", "aaa"]) => ["aa"]
    assert list_sort(["ab", "a", "aaa", "cd"]) => ["ab", "cd"]
    """
function sorted_list_sum(lst::Vector{String})::Vector{String} 
    lst_len = length(lst)
    lst_len_half = lst_len ÷ 2
    lst_len_half_ceil = ceil(lst_len_half)
    lst_len_half_floor = floor(lst_len_half)
    lst_len_half_ceil_plus_one = lst_len_half_ceil + 1
    lst_len_half_floor_plus_one = lst_len_half_floor + 1
    lst_len_half_ceil_plus_one_minus_one = lst_len_half_ceil_plus_one - 1
    lst_len_half_floor_plus_one_minus_one = lst_len_half_floor_plus_one - 1
    lst_len_half_ceil_plus_one_minus_one_plus_one = lst_len_half_ceil_plus_one_minus_one + 1
    lst_len_half_floor_plus_one_minus_one_plus_one = lst_len_half_floor_plus_one_minus_one + 1
    lst_len_half_ceil_plus_one_minus_one_plus_one_minus_one = lst_len_half_ceil_plus_one_minus_one_plus_one - 1
    lst_len_half_floor_plus_one_minus_one_plus_one_minus_one = lst_len_half_floor_plus_one_minus_one_plus_one - 1
    lst_len_half_ceil_plus_one_minus_one_plus_one_minus_one_plus_one = lst_len_half_ceil_plus_one_minus_one_plus_one_minus_one + 1
    lst_len_half_floor_plus_one_minus_one_plus_one_minus_one_plus_one = lst_len_half_floor_plus_one_minus_one_plus_one_minus_one + 1
    lst_len_half_ce

using Test

@testset begin

candidate = sorted_list_sum;
	@test(candidate(["aa", "a", "aaa"]) == ["aa"])
	@test(candidate(["school", "AI", "asdf", "b"]) == ["AI", "asdf", "school"])
	@test(candidate(["d", "b", "c", "a"]) == Vector{String}([]))
	@test(candidate(["d", "dcba", "abcd", "a"]) == ["abcd", "dcba"])
	@test(candidate(["AI", "ai", "au"]) == ["AI", "ai", "au"])
	@test(candidate(["a", "b", "b", "c", "c", "a"]) == Vector{String}([]))
	@test(candidate(["aaaa", "bbbb", "dd", "cc"]) == ["cc", "dd", "aaaa", "bbbb"])
end
