"""Write a function that takes a string and returns True if the string
    length is a prime number or False otherwise
    Examples
    prime_length('Hello') == True
    prime_length('abcdcba') == True
    prime_length('kittens') == True
    prime_length('orange') == False
    """
function prime_length(string::String)::Bool 
    if length(string) == 2
        return true
    elseif length(string) == 1
        return false
    else
        for i in 2:length(string)-1
            if length(string) % i == 0
                return false
            end
        end
        return true
    end
end

using Test

@testset begin

candidate = prime_length;
	@test(candidate("Hello") == true)
	@test(candidate("abcdcba") == true)
	@test(candidate("kittens") == true)
	@test(candidate("orange") == false)
	@test(candidate("wow") == true)
	@test(candidate("world") == true)
	@test(candidate("MadaM") == true)
	@test(candidate("Wow") == true)
	@test(candidate("") == false)
	@test(candidate("HI") == true)
	@test(candidate("go") == true)
	@test(candidate("gogo") == false)
	@test(candidate("aaaaaaaaaaaaaaa") == false)
	@test(candidate("Madam") == true)
	@test(candidate("M") == false)
	@test(candidate("0") == false)
end
