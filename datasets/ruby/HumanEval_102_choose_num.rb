=begin
 This function takes two positive numbers x and y and returns the
 biggest even integer number that is in the range [x, y] inclusive. If 
 there's no such number, then the function should return -1.
 For example:
 choose_num(12, 15) = 14
 choose_num(13, 12) = -1
=end
def choose_num(x, y)
  if x > y
    return -1
  end
  if x % 2 == 0
    return x
  end
  if y % 2 == 0
    return y
  end
  if x > y
    return -1
  end
  if x % 2 == 0
    return x
  end
  if y % 2 == 0
    return y
  end
  if x > y
    return -1
  end
  if x % 2 == 0
    return x
  end
  if y % 2 == 0
    return y
  end
  if x > y
    return -1
  end
  if x % 2 == 0
    return x
  end
  if y % 2 == 0
    return y
  end
  if x > y
    return -1
  end
  if x % 2 == 0
    return x
  end
  if y % 2 == 0
    return y
  end
  if x > y
    return -1
  end
  if x % 2 == 0
    return x
  end
  if y % 2 == 0
    return y
  end
  if x > y
    return -1
  end
  if x % 2 == 0
    return x
  end
  if y % 2 == 0
    return y
  end
  if x > y
    return -1
  end
  if x % 2 == 0
    return x
  end
  if y % 2 == 0
    return y
  end
  if x > y
    return -1
  end
  if x % 2 == 0
    return x
  end
  if y % 2 == 0
    return y
  end
  if x > y
    return -1
  end
  if x % 2 == 0
    return x
  end
  if y % 2 == 0
    return y
  end
  if x > y
    return -1
  end
  if x % 2 == 0
    return x
  end
  if y % 2 == 0
    return y
  end
  if x > y
    return -1
  end
 
# Unit tests below

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_choose_num
     assert_equal(choose_num(12, 15), 14)
     assert_equal(choose_num(13, 12), -1)
     assert_equal(choose_num(33, 12354), 12354)
     assert_equal(choose_num(5234, 5233), -1)
     assert_equal(choose_num(6, 29), 28)
     assert_equal(choose_num(27, 10), -1)
     assert_equal(choose_num(7, 7), -1)
     assert_equal(choose_num(546, 546), 546)
  end
end
