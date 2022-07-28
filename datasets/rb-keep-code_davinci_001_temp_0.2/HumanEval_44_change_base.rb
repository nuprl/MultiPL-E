# Change numerical base of input number x to base.
# return string representation after the conversion.
# base numbers are less than 10.
# >>> change_base(8, 3)
# '22'
# >>> change_base(8, 2)
# '1000'
# >>> change_base(7, 2)
# '111'
def change_base(x, base)
    if x == 0
        return '0'
    end
    result = ''
    while x > 0
        result = (x % base).to_s + result
        x /= base
    end
    return result
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_change_base
    candidate = method(:change_base)
    assert_equal("22", candidate.call(8, 3))
    assert_equal("100", candidate.call(9, 3))
    assert_equal("11101010", candidate.call(234, 2))
    assert_equal("10000", candidate.call(16, 2))
    assert_equal("1000", candidate.call(8, 2))
    assert_equal("111", candidate.call(7, 2))
    assert_equal("2", candidate.call(2, 3))
    assert_equal("3", candidate.call(3, 4))
    assert_equal("4", candidate.call(4, 5))
    assert_equal("5", candidate.call(5, 6))
    assert_equal("6", candidate.call(6, 7))
    assert_equal("7", candidate.call(7, 8))
  end
end
