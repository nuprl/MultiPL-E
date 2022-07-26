=begin
 Implement the function f that takes n as a parameter,
 and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even
 or the sum of numbers from 1 to i otherwise.
 i starts from 1.
 the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
 Example:
 f(5) == [1, 2, 6, 24, 15]
=end
def f(n)
  result = []
  (1..n).each do |i|
    result << (i.even? ? (1..i).inject(:*) : (1..i).inject(:+))
  end
  result
end
# Unit tests below

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_f
     assert_equal(f(5), [1, 2, 6, 24, 15])
     assert_equal(f(7), [1, 2, 6, 24, 15, 720, 28])
     assert_equal(f(1), [1])
     assert_equal(f(3), [1, 2, 6])
  end
end
