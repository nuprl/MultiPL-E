"""
    Write a function that takes a message, and encodes in such a 
    way that it swaps case of all letters, replaces all vowels in 
    the message with the letter that appears 2 places ahead of that 
    vowel in the english alphabet. 
    Assume only letters. 
    
    Examples:
    >>> encode('test')
    'TGST'
    >>> encode('This is a message')
    'tHKS KS C MGSSCGG'
    """
function encode(message::String)::String 
    # Your code here
end

using Test

@testset begin

candidate = encode;
	@test(candidate("TEST") == "tgst")
	@test(candidate("Mudasir") == "mWDCSKR")
	@test(candidate("YES") == "ygs")
	@test(candidate("This is a message") == "tHKS KS C MGSSCGG")
	@test(candidate("I DoNt KnOw WhAt tO WrItE") == "k dQnT kNqW wHcT Tq wRkTg")
end
