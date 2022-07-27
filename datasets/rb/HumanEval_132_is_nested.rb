# Create a function that takes a string as input which contains only square brackets.
# The function should return True if and only if there is a valid subsequence of brackets 
# where at least one bracket in the subsequence is nested.
# is_nested('[[]]') ➞ True
# is_nested('[]]]]]]][[[[[]') ➞ False
# is_nested('[][]') ➞ False
# is_nested('[]') ➞ False
# is_nested('[[][]]') ➞ True
# is_nested('[[]][[') ➞ True
def is_nested(string)
    return true if string.include?('[]') || string.include?('[[')
    false
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_is_nested
    candidate = method(:is_nested)
    assert_equal(true, candidate.call('[[]]'))
    assert_equal(false, candidate.call('[]]]]]]][[[[[]'))
    assert_equal(false, candidate.call('[][]'))
    assert_equal(false, candidate.call('[]'))
    assert_equal(true, candidate.call('[[[[]]]]'))
    assert_equal(false, candidate.call('[]]]]]]]]]]'))
    assert_equal(true, candidate.call('[][][[]]'))
    assert_equal(false, candidate.call('[[]'))
    assert_equal(false, candidate.call('[]]'))
    assert_equal(true, candidate.call('[[]][['))
    assert_equal(true, candidate.call('[[][]]'))
    assert_equal(false, candidate.call(''))
    assert_equal(false, candidate.call('[[[[[[[['))
    assert_equal(false, candidate.call(']]]]]]]]'))
  end
end
