# remove_vowels is a function that takes string and returns string without vowels.
# >>> remove_vowels('')
# ''
# >>> remove_vowels('abcdef')
# 'bcdf'
# >>> remove_vowels('aaaaa')
# ''
# >>> remove_vowels('aaBAA')
# 'B'
# >>> remove_vowels('zbcd')
# 'zbcd'
def remove_vowels(text)
  vowels = ['a', 'e', 'i', 'o', 'u']
  text.split('').map { |letter| vowels.include?(letter) ? '' : letter }.join('')
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_remove_vowels
    candidate = method(:remove_vowels)
    assert_equal('', candidate.call(''))
    assert_equal('bcdf\nghjklm', candidate.call('abcdef\nghijklm'))
    assert_equal('fdcb', candidate.call('fedcba'))
    assert_equal('', candidate.call('eeeee'))
    assert_equal('cB', candidate.call('acBAA'))
    assert_equal('cB', candidate.call('EcBOO'))
    assert_equal('ybcd', candidate.call('ybcd'))
  end
end
