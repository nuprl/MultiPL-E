"""You will be given the name of a class (a string) and a list of extensions.
    The extensions are to be used to load additional classes to the class. The
    strength of the extension is as follows: Let CAP be the number of the uppercase
    letters in the extension's name, and let SM be the number of lowercase letters 
    in the extension's name, the strength is given by the fraction CAP - SM. 
    You should find the strongest extension and return a string in this 
    format: ClassName.StrongestExtensionName.
    If there are two or more extensions with the same strength, you should
    choose the one that comes first in the list.
    For example, if you are given "Slices" as the class and a list of the
    extensions: ['SErviNGSliCes', 'Cheese', 'StuFfed'] then you should
    return 'Slices.SErviNGSliCes' since 'SErviNGSliCes' is the strongest extension 
    (its strength is -1).
    Example:
    for Strongest_Extension('my_class', ['AA', 'Be', 'CC']) == 'my_class.AA'
    """
function Strongest_Extension(class_name::String, extensions::Vector{String})::String 
    # your code here
end

using Test

@testset begin

candidate = Strongest_Extension;
	@test(candidate("Watashi", ["tEN", "niNE", "eIGHt8OKe"]) == "Watashi.eIGHt8OKe")
	@test(candidate("Boku123", ["nani", "NazeDa", "YEs.WeCaNe", "32145tggg"]) == "Boku123.YEs.WeCaNe")
	@test(candidate("__YESIMHERE", ["t", "eMptY", "nothing", "zeR00", "NuLl__", "123NoooneB321"]) == "__YESIMHERE.NuLl__")
	@test(candidate("K", ["Ta", "TAR", "t234An", "cosSo"]) == "K.TAR")
	@test(candidate("__HAHA", ["Tab", "123", "781345", "-_-"]) == "__HAHA.123")
	@test(candidate("YameRore", ["HhAas", "okIWILL123", "WorkOut", "Fails", "-_-"]) == "YameRore.okIWILL123")
	@test(candidate("finNNalLLly", ["Die", "NowW", "Wow", "WoW"]) == "finNNalLLly.WoW")
	@test(candidate("_", ["Bb", "91245"]) == "_.Bb")
	@test(candidate("Sp", ["671235", "Bb"]) == "Sp.671235")
end
