# You're given a list of deposit and withdrawal operations on a bank account that starts with
# zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
# at that point function should return True. Otherwise it should return False.
# >>> below_zero([1, 2, 3])
# False
# >>> below_zero([1, 2, -4, 5])
# True
def below_zero(operations)
  balance = 0
  operations.each do |op|
    balance += op
    return true if balance < 0
  end
  false
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_below_zero
    candidate = method(:below_zero)
    assert_equal(false, candidate.call([]))
    assert_equal(false, candidate.call([1, 2, -3, 1, 2, -3]))
    assert_equal(true, candidate.call([1, 2, -4, 5, 6]))
    assert_equal(false, candidate.call([1, -1, 2, -2, 5, -5, 4, -4]))
    assert_equal(true, candidate.call([1, -1, 2, -2, 5, -5, 4, -5]))
    assert_equal(true, candidate.call([1, -2, 2, -2, 5, -5, 4, -4]))
  end
end
