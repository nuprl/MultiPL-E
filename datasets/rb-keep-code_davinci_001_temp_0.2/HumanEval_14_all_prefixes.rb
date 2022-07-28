# Return list of all prefixes from shortest to longest of the input string
# >>> all_prefixes('abc')
# ['a', 'ab', 'abc']
def all_prefixes(string)
  prefixes = []
  string.length.times do |i|
    prefixes << string[0..i]
  end
  prefixes
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_all_prefixes
    candidate = method(:all_prefixes)
    assert_equal([], candidate.call(""))
    assert_equal(["a", "as", "asd", "asdf", "asdfg", "asdfgh"], candidate.call("asdfgh"))
    assert_equal(["W", "WW", "WWW"], candidate.call("WWW"))
  end
end
