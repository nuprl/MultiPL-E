""" Input is a space-delimited string of numberals from 'zero' to 'nine'.
    Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
    Return the string with numbers sorted from smallest to largest
    >>> sort_numbers('three one five')
    'one three five'
    """
function sort_numbers(numbers::String)::String 
    numbers_list = split(numbers)
    numbers_list = sort(numbers_list)
    numbers_list = join(numbers_list, " ")
    return numbers_list
end
sort_numbers("three one five")

using Test

@testset begin

candidate = sort_numbers;
	@test(candidate("") == "")
	@test(candidate("three") == "three")
	@test(candidate("three five nine") == "three five nine")
	@test(candidate("five zero four seven nine eight") == "zero four five seven eight nine")
	@test(candidate("six five four three two one zero") == "zero one two three four five six")
end
