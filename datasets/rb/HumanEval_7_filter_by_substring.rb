# Filter an input list of strings only for ones that contain given substring
# >>> filter_by_substring([], 'a')
# []
# >>> filter_by_substring(['abc', 'bacd', 'cde', 'array'], 'a')
# ['abc', 'bacd', 'array']
def filter_by_substring(strings, substring)
  strings.select { |string| string.include?(substring) }
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_filter_by_substring
    candidate = method(:filter_by_substring)
    assert_equal([], candidate.call([], "john"))
    assert_equal(["xxx", "xxxAAA", "xxx"], candidate.call(["xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"], "xxx"))
    assert_equal(["xxx", "aaaxxy", "xxxAAA", "xxx"], candidate.call(["xxx", "asd", "aaaxxy", "john doe", "xxxAAA", "xxx"], "xx"))
    assert_equal(["grunt", "prune"], candidate.call(["grunt", "trumpet", "prune", "gruesome"], "run"))
  end
end
