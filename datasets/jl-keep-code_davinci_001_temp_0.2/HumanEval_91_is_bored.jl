"""
    You'll be given a string of words, and your task is to count the number
    of boredoms. A boredom is a sentence that starts with the word "I".
    Sentences are delimited by '.', '?' or '!'.
   
    For example:
    >>> is_bored("Hello world")
    0
    >>> is_bored("The sky is blue. The sun is shining. I love this weather")
    1
    """
function is_bored(S::String)::Int64 
    boredoms = 0
    for i in 1:length(S)
        if S[i] == '.' || S[i] == '?' || S[i] == '!'
            if S[i-1] == 'I'
                boredoms += 1
            end
        end
    end
    return boredoms
end
is_bored("The sky is blue. The sun is shining. I love this weather")
is_bored("Hello world")


using Test

@testset begin

candidate = is_bored;
	@test(candidate("Hello world") == 0)
	@test(candidate("Is the sky blue?") == 0)
	@test(candidate("I love It !") == 1)
	@test(candidate("bIt") == 0)
	@test(candidate("I feel good today. I will be productive. will kill It") == 2)
	@test(candidate("You and I are going for a walk") == 0)
end
