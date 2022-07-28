"""
    In this task, you will be given a string that represents a number of apples and oranges 
    that are distributed in a basket of fruit this basket contains 
    apples, oranges, and mango fruits. Given the string that represents the total number of 
    the oranges and apples and an integer that represent the total number of the fruits 
    in the basket return the number of the mango fruits in the basket.
    for examble:
    fruit_distribution("5 apples and 6 oranges", 19) ->19 - 5 - 6 = 8
    fruit_distribution("0 apples and 1 oranges",3) -> 3 - 0 - 1 = 2
    fruit_distribution("2 apples and 3 oranges", 100) -> 100 - 2 - 3 = 95
    fruit_distribution("100 apples and 1 oranges",120) -> 120 - 100 - 1 = 19
    """
function fruit_distribution(s::String, n::Int64)::Int64 
    # your code here
    return 0 # your code here
end
fruit_distribution("5 apples and 6 oranges", 19)
fruit_distribution("0 apples and 1 oranges",3)
fruit_distribution("2 apples and 3 oranges", 100)
fruit_distribution("100 apples and 1 oranges",120)

using Test

@testset begin

candidate = fruit_distribution;
	@test(candidate("5 apples and 6 oranges", 19) == 8)
	@test(candidate("5 apples and 6 oranges", 21) == 10)
	@test(candidate("0 apples and 1 oranges", 3) == 2)
	@test(candidate("1 apples and 0 oranges", 3) == 2)
	@test(candidate("2 apples and 3 oranges", 100) == 95)
	@test(candidate("2 apples and 3 oranges", 5) == 0)
	@test(candidate("1 apples and 100 oranges", 120) == 19)
end
