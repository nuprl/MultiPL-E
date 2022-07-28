"""Given a string representing a space separated lowercase letters, return a dictionary
    of the letter with the most repetition and containing the corresponding count.
    If several letters have the same occurrence, return all of them.
    
    Example:
    histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
    histogram('a b b a') == {'a': 2, 'b': 2}
    histogram('a b c a b') == {'a': 2, 'b': 2}
    histogram('b b b b a') == {'b': 4}
    histogram('') == {}

    """
function histogram(test::String)::Dict{String, Int64}> 
    hist = Dict{String, Int64}()
    for word in test
        if haskey(hist, word)
            hist[word] += 1
        else
            hist[word] = 1
        end
    end
    return hist
end

using Test

@testset begin

candidate = histogram;
	@test(candidate("a b b a") == Dict("a" => 2, "b" => 2))
	@test(candidate("a b c a b") == Dict("a" => 2, "b" => 2))
	@test(candidate("a b c d g") == Dict("a" => 1, "b" => 1, "c" => 1, "d" => 1, "g" => 1))
	@test(candidate("r t g") == Dict("r" => 1, "t" => 1, "g" => 1))
	@test(candidate("b b b b a") == Dict("b" => 4))
	@test(candidate("r t g") == Dict("r" => 1, "t" => 1, "g" => 1))
	@test(candidate("") == Dict())
	@test(candidate("a") == Dict("a" => 1))
end
