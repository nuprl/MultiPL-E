# You have to write a function which validates a given date string and
# returns True if the date is valid otherwise False.
# The date is valid if all of the following rules are satisfied:
# 1. The date string is not empty.
# 2. The number of days is not less than 1 or higher than 31 days for months 1,3,5,7,8,10,12. And the number of days is not less than 1 or higher than 30 days for months 4,6,9,11. And, the number of days is not less than 1 or higher than 29 for the month 2.
# 3. The months should not be less than 1 or higher than 12.
# 4. The date should be in the format: mm-dd-yyyy
# for example: 
# valid_date('03-11-2000') => True
# valid_date('15-01-2012') => False
# valid_date('04-0-2040') => False
# valid_date('06-04-2020') => True
# valid_date('06/04/2020') => False
def valid_date(date)
  date = date.split("-")
  if date.length == 3
    if date[0].to_i > 0 && date[0].to_i < 13
      if date[1].to_i > 0 && date[1].to_i < 32
        if date[2].to_i > 0 && date[2].to_i < 2020
          return true
        end
      end
    end
  end
  return false
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_valid_date
    candidate = method(:valid_date)
    assert_equal(true, candidate.call('03-11-2000'))
    assert_equal(false, candidate.call('15-01-2012'))
    assert_equal(false, candidate.call('04-0-2040'))
    assert_equal(true, candidate.call('06-04-2020'))
    assert_equal(true, candidate.call('01-01-2007'))
    assert_equal(false, candidate.call('03-32-2011'))
    assert_equal(false, candidate.call(''))
    assert_equal(false, candidate.call('04-31-3000'))
    assert_equal(true, candidate.call('06-06-2005'))
    assert_equal(false, candidate.call('21-31-2000'))
    assert_equal(true, candidate.call('04-12-2003'))
    assert_equal(false, candidate.call('04122003'))
    assert_equal(false, candidate.call('20030412'))
    assert_equal(false, candidate.call('2003-04'))
    assert_equal(false, candidate.call('2003-04-12'))
    assert_equal(false, candidate.call('04-2003'))
  end
end
