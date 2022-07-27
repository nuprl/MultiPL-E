# Write a function that takes a string and returns True if the string
# length is a prime number or False otherwise
# Examples
# prime_length('Hello') == True
# prime_length('abcdcba') == True
# prime_length('kittens') == True
# prime_length('orange') == False
def prime_length(string)
    return false if string.length < 2
    (2...string.length).each do |i|
        return false if string.length % i == 0
    end
    true
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_prime_length
    candidate = method(:prime_length)
    assert_equal(true, candidate.call('Hello'))
    assert_equal(true, candidate.call('abcdcba'))
    assert_equal(true, candidate.call('kittens'))
    assert_equal(false, candidate.call('orange'))
    assert_equal(true, candidate.call('wow'))
    assert_equal(true, candidate.call('world'))
    assert_equal(true, candidate.call('MadaM'))
    assert_equal(true, candidate.call('Wow'))
    assert_equal(false, candidate.call(''))
    assert_equal(true, candidate.call('HI'))
    assert_equal(true, candidate.call('go'))
    assert_equal(false, candidate.call('gogo'))
    assert_equal(false, candidate.call('aaaaaaaaaaaaaaa'))
    assert_equal(true, candidate.call('Madam'))
    assert_equal(false, candidate.call('M'))
    assert_equal(false, candidate.call('0'))
  end
end
