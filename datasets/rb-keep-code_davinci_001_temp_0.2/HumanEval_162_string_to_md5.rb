# Given a string 'text', return its md5 hash equivalent string.
# If 'text' is an empty string, return None.
# >>> string_to_md5('Hello world') == '3e25960a79dbc69b674cd4ec67a72c62'
def string_to_md5(text)
  return nil if text.empty?
  Digest::MD5.hexdigest(text)
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_string_to_md5
    candidate = method(:string_to_md5)
    assert_equal("3e25960a79dbc69b674cd4ec67a72c62", candidate.call("Hello world"))
    assert_equal(nil, candidate.call(""))
    assert_equal("0ef78513b0cb8cef12743f5aeb35f888", candidate.call("A B C"))
    assert_equal("5f4dcc3b5aa765d61d8327deb882cf99", candidate.call("password"))
  end
end
