# Given a positive integer, obtain its roman numeral equivalent as a string,
# and return it in lowercase.
# Restrictions: 1 <= num <= 1000
# Examples:
# >>> int_to_mini_roman(19) == 'xix'
# >>> int_to_mini_roman(152) == 'clii'
# >>> int_to_mini_roman(426) == 'cdxxvi'
def int_to_mini_roman(number)
  # your code here
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_int_to_mini_roman
    candidate = method(:int_to_mini_roman)
    assert_equal("xix", candidate.call(19))
    assert_equal("clii", candidate.call(152))
    assert_equal("ccli", candidate.call(251))
    assert_equal("cdxxvi", candidate.call(426))
    assert_equal("d", candidate.call(500))
    assert_equal("i", candidate.call(1))
    assert_equal("iv", candidate.call(4))
    assert_equal("xliii", candidate.call(43))
    assert_equal("xc", candidate.call(90))
    assert_equal("xciv", candidate.call(94))
    assert_equal("dxxxii", candidate.call(532))
    assert_equal("cm", candidate.call(900))
    assert_equal("cmxciv", candidate.call(994))
    assert_equal("m", candidate.call(1000))
  end
end
