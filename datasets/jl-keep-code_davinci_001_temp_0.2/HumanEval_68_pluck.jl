"""
    "Given an array representing a branch of a tree that has non-negative integer nodes
    your task is to pluck one of the nodes and return it.
    The plucked node should be the node with the smallest even value.
    If multiple nodes with the same smallest even value are found return the node that has smallest index.

    The plucked node should be returned in a list, [ smalest_value, its index ],
    If there are no even values or the given array is empty, return [].

    Example 1:
        Input: [4,2,3]
        Output: [2, 1]
        Explanation: 2 has the smallest even value, and 2 has the smallest index.

    Example 2:
        Input: [1,2,3]
        Output: [2, 1]
        Explanation: 2 has the smallest even value, and 2 has the smallest index. 

    Example 3:
        Input: []
        Output: []
    
    Example 4:
        Input: [5, 0, 3, 0, 4, 2]
        Output: [0, 1]
        Explanation: 0 is the smallest value, but  there are two zeros,
                     so we will choose the first zero, which has the smallest index.

    Constraints:
        * 1 <= nodes.length <= 10000
        * 0 <= node.value
    """
function pluck(arr::Vector{Int64})::Vector{Int64} 
    if length(arr) == 0
        return []
    end
    even_nodes = filter(x -> x % 2 == 0, arr)
    if length(even_nodes) == 0
        return []
    end
    min_even_node = minimum(even_nodes)
    min_even_node_index = findfirst(arr, min_even_node)
    return [min_even_node, min_even_node_index]
end

using Test

@testset begin

candidate = pluck;
	@test(candidate([4, 2, 3]) == [2, 1])
	@test(candidate([1, 2, 3]) == [2, 1])
	@test(candidate(Vector{Int64}([])) == Vector{Int64}([]))
	@test(candidate([5, 0, 3, 0, 4, 2]) == [0, 1])
	@test(candidate([1, 2, 3, 0, 5, 3]) == [0, 3])
	@test(candidate([5, 4, 8, 4, 8]) == [4, 1])
	@test(candidate([7, 6, 7, 1]) == [6, 1])
	@test(candidate([7, 9, 7, 1]) == Vector{Int64}([]))
end
