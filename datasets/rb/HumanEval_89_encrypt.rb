# Create a function encrypt that takes a string as an argument and
# returns a string encrypted with the alphabet being rotated. 
# The alphabet should be rotated in a manner such that the letters 
# shift down by two multiplied to two places.
# For example:
# encrypt('hi') returns 'lm'
# encrypt('asdfghjkl') returns 'ewhjklnop'
# encrypt('gf') returns 'kj'
# encrypt('et') returns 'ix'
def encrypt(s)
  s.gsub(/[a-z]/) { |c| (c.ord + 2).chr }
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_encrypt
    candidate = method(:encrypt)
    assert_equal('lm', candidate.call('hi'))
    assert_equal('ewhjklnop', candidate.call('asdfghjkl'))
    assert_equal('kj', candidate.call('gf'))
    assert_equal('ix', candidate.call('et'))
    assert_equal('jeiajeaijeiak', candidate.call('faewfawefaewg'))
    assert_equal('lippsqcjvmirh', candidate.call('hellomyfriend'))
    assert_equal('hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl', candidate.call('dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh'))
    assert_equal('e', candidate.call('a'))
  end
end
