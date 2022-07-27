# Write a function that takes a message, and encodes in such a 
# way that it swaps case of all letters, replaces all vowels in 
# the message with the letter that appears 2 places ahead of that 
# vowel in the english alphabet. 
# Assume only letters. 
# Examples:
# >>> encode('test')
# 'TGST'
# >>> encode('This is a message')
# 'tHKS KS C MGSSCGG'
def encode(message)
  vowels = ['a', 'e', 'i', 'o', 'u']
  encoded_message = ''
  message.each_char do |char|
    if vowels.include?(char)
      encoded_message += vowels[(vowels.index(char) + 2) % 5]
    else
      encoded_message += char
    end
  end
  encoded_message
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_encode
    candidate = method(:encode)
    assert_equal("tgst", candidate.call("TEST"))
    assert_equal("mWDCSKR", candidate.call("Mudasir"))
    assert_equal("ygs", candidate.call("YES"))
    assert_equal("tHKS KS C MGSSCGG", candidate.call("This is a message"))
    assert_equal("k dQnT kNqW wHcT Tq wRkTg", candidate.call("I DoNt KnOw WhAt tO WrItE"))
  end
end
