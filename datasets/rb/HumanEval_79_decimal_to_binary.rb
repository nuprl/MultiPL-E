# You will be given a number in decimal form and your task is to convert it to
# binary format. The function should return a string, with each character representing a binary
# number. Each character in the string will be '0' or '1'.
# There will be an extra couple of characters 'db' at the beginning and at the end of the string.
# The extra characters are there to help with the format.
# Examples:
# decimal_to_binary(15)   # returns "db1111db"
# decimal_to_binary(32)   # returns "db100000db"
def decimal_to_binary(decimal)
  binary = []
  while decimal > 0
    binary.unshift(decimal % 2)
    decimal /= 2
  end
  "db#{binary.join}db"
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_decimal_to_binary
    candidate = method(:decimal_to_binary)
    assert_equal("db0db", candidate.call(0))
    assert_equal("db100000db", candidate.call(32))
    assert_equal("db1100111db", candidate.call(103))
    assert_equal("db1111db", candidate.call(15))
  end
end
