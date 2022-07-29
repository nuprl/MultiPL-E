import std.typecons;
import std.math;
/*
You will be given the name of a class (a string) and a list of extensions.
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
    
*/
const(char)[] Strongest_Extension(const(char)[] class_name, const(char)[][] extensions) 
{
    int[] strengths = new int[extensions.length];
    for(int i = 0; i < extensions.length; i++)
    {
        strengths[i] = std.math.abs(std.math.count_uppercase(extensions[i]) - std.math.count_lowercase(extensions[i]));
    }
    int max_strength = 0;
    int max_strength_index = 0;
    for(int i = 0; i < strengths.length; i++)
    {
        if(strengths[i] > max_strength)
        {
            max_strength = strengths[i];
            max_strength_index = i;
        }
    }
    return class_name + "." + extensions[max_strength_index];
}

unittest
{
    alias candidate = Strongest_Extension;

    assert(candidate("Watashi", ["tEN", "niNE", "eIGHt8OKe"]) == "Watashi.eIGHt8OKe");
    assert(candidate("Boku123", ["nani", "NazeDa", "YEs.WeCaNe", "32145tggg"]) == "Boku123.YEs.WeCaNe");
    assert(candidate("__YESIMHERE", ["t", "eMptY", "nothing", "zeR00", "NuLl__", "123NoooneB321"]) == "__YESIMHERE.NuLl__");
    assert(candidate("K", ["Ta", "TAR", "t234An", "cosSo"]) == "K.TAR");
    assert(candidate("__HAHA", ["Tab", "123", "781345", "-_-"]) == "__HAHA.123");
    assert(candidate("YameRore", ["HhAas", "okIWILL123", "WorkOut", "Fails", "-_-"]) == "YameRore.okIWILL123");
    assert(candidate("finNNalLLly", ["Die", "NowW", "Wow", "WoW"]) == "finNNalLLly.WoW");
    assert(candidate("_", ["Bb", "91245"]) == "_.Bb");
    assert(candidate("Sp", ["671235", "Bb"]) == "Sp.671235");
}
void main(){}