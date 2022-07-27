# Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
# >>> fizz_buzz(50)
# 0
# >>> fizz_buzz(78)
# 2
# >>> fizz_buzz(79)
# 3
def fizz_buzz(n)
    count = 0
    (1...n).each do |i|
        count += 1 if i % 11 == 7 || i % 13 == 7
    end
    count
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_fizz_buzz
    candidate = method(:fizz_buzz)
    assert_equal(0, candidate.call(50))
    assert_equal(2, candidate.call(78))
    assert_equal(3, candidate.call(79))
    assert_equal(3, candidate.call(100))
    assert_equal(6, candidate.call(200))
    assert_equal(192, candidate.call(4000))
    assert_equal(639, candidate.call(10000))
    assert_equal(8026, candidate.call(100000))
  end
end
