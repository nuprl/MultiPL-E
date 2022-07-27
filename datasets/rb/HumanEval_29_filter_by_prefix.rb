# Filter an input list of strings only for ones that start with a given prefix.
# >>> filter_by_prefix([], 'a')
# []
# >>> filter_by_prefix(['abc', 'bcd', 'cde', 'array'], 'a')
# ['abc', 'array']
def filter_by_prefix(strings, prefix)
  strings.select { |string| string.start_with?(prefix) }
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_filter_by_prefix
    candidate = method(:filter_by_prefix)
    assert_equal([], candidate.call([], 'john'))
    assert_equal(['xxx', 'xxxAAA', 'xxx'], candidate.call(['xxx', 'asd', 'xxy', 'john doe', 'xxxAAA', 'xxx'], 'xxx'))
  end
end
