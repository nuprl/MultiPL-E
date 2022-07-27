# Return 2^n modulo p (be aware of numerics).
# >>> modp(3, 5)
# 3
# >>> modp(1101, 101)
# 2
# >>> modp(0, 101)
# 1
# >>> modp(3, 11)
# 8
# >>> modp(100, 101)
# 1
def modp(n, p)
    if n == 0
        return 1
    end
    if n % 2 == 0
        return modp(n / 2, p) ** 2 % p
    else
        return modp(n / 2, p) ** 2 * (n % p) % p
    end
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_modp
    candidate = method(:modp)
    assert_equal(3, candidate.call(3, 5))
    assert_equal(2, candidate.call(1101, 101))
    assert_equal(1, candidate.call(0, 101))
    assert_equal(8, candidate.call(3, 11))
    assert_equal(1, candidate.call(100, 101))
    assert_equal(4, candidate.call(30, 5))
    assert_equal(3, candidate.call(31, 5))
  end
end
