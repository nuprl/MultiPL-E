# For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
# >>> flip_case('Hello')
# 'hELLO'
def flip_case(string)
  string.swapcase
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_flip_case
    candidate = method(:flip_case)
    assert_equal('', candidate.call(''))
    assert_equal('hELLO!', candidate.call('Hello!'))
    assert_equal('tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS', candidate.call('These violent delights have violent ends'))
  end
end
