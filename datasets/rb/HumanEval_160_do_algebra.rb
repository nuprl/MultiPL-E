# Given two lists operator, and operand. The first list has basic algebra operations, and 
# the second list is a list of integers. Use the two given lists to build the algebric 
# expression and return the evaluation of this expression.
# The basic algebra operations:
# Addition ( + ) 
# Subtraction ( - ) 
# Multiplication ( * ) 
# Floor division ( // ) 
# Exponentiation ( ** ) 
# Example:
# operator['+', '*', '-']
# array = [2, 3, 4, 5]
# result = 2 + 3 * 4 - 5
# => result = 9
# Note:
# The length of operator list is equal to the length of operand list minus one.
# Operand is a list of of non-negative integers.
# Operator list has at least one operator, and operand list has at least two operands.
def do_algebra(operator, operand)
  result = operand[0]
  operand.shift
  operator.each do |op|
    if op == '+'
      result += operand[0]
    elsif op == '-'
      result -= operand[0]
    elsif op == '*'
      result *= operand[0]
    elsif op == '/'
      result /= operand[0]
    elsif op == '**'
      result **= operand[0]
    end
    operand.shift
  end
  result
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_do_algebra
    candidate = method(:do_algebra)
    assert_equal(37, candidate.call(['**', '*', '+'], [2, 3, 4, 5]))
    assert_equal(9, candidate.call(['+', '*', '-'], [2, 3, 4, 5]))
    assert_equal(8, candidate.call(['//', '*'], [7, 3, 4]))
  end
end
