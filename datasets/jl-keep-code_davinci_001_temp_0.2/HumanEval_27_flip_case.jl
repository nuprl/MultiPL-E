""" For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
    >>> flip_case('Hello')
    'hELLO'
    """
function flip_case(string::String)::String 
    new_string = ""
    for i in string
        if i in lowercase
            new_string = new_string * string(i)
        elseif i in uppercase
            new_string = new_string * string(i)
        end
    end
    return new_string
end
flip_case("Hello")
flip_case("HELLO")
flip_case("HeLlO")

using Test

@testset begin

candidate = flip_case;
	@test(candidate("") == "")
	@test(candidate("Hello!") == "hELLO!")
	@test(candidate("These violent delights have violent ends") == "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")
end
