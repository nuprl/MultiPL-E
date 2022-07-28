# You will be given the name of a class (a string) and a list of extensions.
# The extensions are to be used to load additional classes to the class. The
# strength of the extension is as follows: Let CAP be the number of the uppercase
# letters in the extension's name, and let SM be the number of lowercase letters 
# in the extension's name, the strength is given by the fraction CAP - SM. 
# You should find the strongest extension and return a string in this 
# format: ClassName.StrongestExtensionName.
# If there are two or more extensions with the same strength, you should
# choose the one that comes first in the list.
# For example, if you are given "Slices" as the class and a list of the
# extensions: ['SErviNGSliCes', 'Cheese', 'StuFfed'] then you should
# return 'Slices.SErviNGSliCes' since 'SErviNGSliCes' is the strongest extension 
# (its strength is -1).
# Example:
# for Strongest_Extension('my_class', ['AA', 'Be', 'CC']) == 'my_class.AA'
def Strongest_Extension(class_name, extensions)
  # your code here
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_Strongest_Extension
    candidate = method(:Strongest_Extension)
    assert_equal("Watashi.eIGHt8OKe", candidate.call("Watashi", ["tEN", "niNE", "eIGHt8OKe"]))
    assert_equal("Boku123.YEs.WeCaNe", candidate.call("Boku123", ["nani", "NazeDa", "YEs.WeCaNe", "32145tggg"]))
    assert_equal("__YESIMHERE.NuLl__", candidate.call("__YESIMHERE", ["t", "eMptY", "nothing", "zeR00", "NuLl__", "123NoooneB321"]))
    assert_equal("K.TAR", candidate.call("K", ["Ta", "TAR", "t234An", "cosSo"]))
    assert_equal("__HAHA.123", candidate.call("__HAHA", ["Tab", "123", "781345", "-_-"]))
    assert_equal("YameRore.okIWILL123", candidate.call("YameRore", ["HhAas", "okIWILL123", "WorkOut", "Fails", "-_-"]))
    assert_equal("finNNalLLly.WoW", candidate.call("finNNalLLly", ["Die", "NowW", "Wow", "WoW"]))
    assert_equal("_.Bb", candidate.call("_", ["Bb", "91245"]))
    assert_equal("Sp.671235", candidate.call("Sp", ["671235", "Bb"]))
  end
end
