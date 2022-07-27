# Return length of given string
# >>> strlen('')
# 0
# >>> strlen('abc')
# 3
def strlen(string)
  string.length
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_strlen
    candidate = method(:strlen)
    assert_equal(0, candidate.call(""))
    assert_equal(1, candidate.call("x"))
    assert_equal(9, candidate.call("asdasnakj"))
  end
end
