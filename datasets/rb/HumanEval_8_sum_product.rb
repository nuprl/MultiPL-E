# For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
# Empty sum should be equal to 0 and empty product should be equal to 1.
# >>> sum_product([])
# (0, 1)
# >>> sum_product([1, 2, 3, 4])
# (10, 24)
def sum_product(numbers)
    if numbers.empty?
        return (0, 1)
    else
        sum = 0
        product = 1
        numbers.each do |num|
            sum += num
            product *= num
        end
        return (sum, product)
    end
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_sum_product
    candidate = method(:sum_product)
    assert_equal([0, 1], candidate.call([]))
    assert_equal([3, 1], candidate.call([1, 1, 1]))
    assert_equal([100, 0], candidate.call([100, 0]))
    assert_equal([15, 105], candidate.call([3, 5, 7]))
    assert_equal([10, 10], candidate.call([10]))
  end
end
