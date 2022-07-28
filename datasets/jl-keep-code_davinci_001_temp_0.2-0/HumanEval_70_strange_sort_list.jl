"""
    Given list of integers, return list in strange order.
    Strange sorting, is when you start with the minimum value,
    then maximum of the remaining integers, then minimum and so on.

    Examples:
    strange_sort_list([1, 2, 3, 4]) == [1, 4, 2, 3]
    strange_sort_list([5, 5, 5, 5]) == [5, 5, 5, 5]
    strange_sort_list([]) == []
    """
function strange_sort_list(lst::Vector{Int64})::Vector{Int64} 
    if length(lst) == 0
        return []
    end
    if length(lst) == 1
        return lst
    end
    if length(lst) == 2
        return [lst[2], lst[1]]
    end
    lst1 = []
    lst2 = []
    for i in 1:2:length(lst)
        lst1 = vcat(lst1, [lst[i]])
    end
    for i in 2:2:length(lst)
        lst2 = vcat(lst2, [lst[i]])
    end
    lst1 = strange_sort_list(lst1)
    lst2 = strange_sort_list(lst2)
    lst1 = vcat(lst1, lst2)
    return lst1
end
strange_sort_list([1, 2, 3, 4])
strange_sort_list([5, 5, 5, 5])
strange_sort_list([])


using Test

@testset begin

candidate = strange_sort_list;
	@test(candidate([1, 2, 3, 4]) == [1, 4, 2, 3])
	@test(candidate([5, 6, 7, 8, 9]) == [5, 9, 6, 8, 7])
	@test(candidate([1, 2, 3, 4, 5]) == [1, 5, 2, 4, 3])
	@test(candidate([5, 6, 7, 8, 9, 1]) == [1, 9, 5, 8, 6, 7])
	@test(candidate([5, 5, 5, 5]) == [5, 5, 5, 5])
	@test(candidate(Vector{Int64}([])) == Vector{Int64}([]))
	@test(candidate([1, 2, 3, 4, 5, 6, 7, 8]) == [1, 8, 2, 7, 3, 6, 4, 5])
	@test(candidate([0, 2, 2, 2, 5, 5, -5, -5]) == [-5, 5, -5, 5, 0, 2, 2, 2])
	@test(candidate([111111]) == [111111])
end
