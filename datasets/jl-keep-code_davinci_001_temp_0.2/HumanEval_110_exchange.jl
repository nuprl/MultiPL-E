"""In this problem, you will implement a function that takes two lists of numbers,
    and determines whether it is possible to perform an exchange of elements
    between them to make lst1 a list of only even numbers.
    There is no limit on the number of exchanged elements between lst1 and lst2.
    If it is possible to exchange elements between the lst1 and lst2 to make
    all the elements of lst1 to be even, return "YES".
    Otherwise, return "NO".
    For example:
    exchange([1, 2, 3, 4], [1, 2, 3, 4]) => "YES"
    exchange([1, 2, 3, 4], [1, 5, 3, 4]) => "NO"
    It is assumed that the input lists will be non-empty.
    """
function exchange(lst1::Vector{Int64}, lst2::Vector{Int64})::String 
    for i in lst1
        if i % 2 == 0
            continue
        else
            for j in lst2
                if j % 2 == 0
                    continue
                else
                    return "NO"
                end
            end
        end
    end
    return "YES"
end

using Test

@testset begin

candidate = exchange;
	@test(candidate([1, 2, 3, 4], [1, 2, 3, 4]) == "YES")
	@test(candidate([1, 2, 3, 4], [1, 5, 3, 4]) == "NO")
	@test(candidate([1, 2, 3, 4], [2, 1, 4, 3]) == "YES")
	@test(candidate([5, 7, 3], [2, 6, 4]) == "YES")
	@test(candidate([5, 7, 3], [2, 6, 3]) == "NO")
	@test(candidate([3, 2, 6, 1, 8, 9], [3, 5, 5, 1, 1, 1]) == "NO")
	@test(candidate([100, 200], [200, 200]) == "YES")
end
