using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // You will be given the name of a class (a string) and a list of extensions.
    // The extensions are to be used to load additional classes to the class. The
    // strength of the extension is as follows: Let CAP be the number of the uppercase
    // letters in the extension's name, and let SM be the number of lowercase letters 
    // in the extension's name, the strength is given by the fraction CAP - SM. 
    // You should find the strongest extension and return a string in this 
    // format: ClassName.StrongestExtensionName.
    // If there are two or more extensions with the same strength, you should
    // choose the one that comes first in the list.
    // For example, if you are given "Slices" as the class and a list of the
    // extensions: ['SErviNGSliCes', 'Cheese', 'StuFfed'] then you should
    // return 'Slices.SErviNGSliCes' since 'SErviNGSliCes' is the strongest extension 
    // (its strength is -1).
    // Example:
    // for Strongest_Extension('my_class', ['AA', 'Be', 'CC']) == 'my_class.AA'
    public static string StrongestExtension(string class_name, List<string> extensions) {
        var strength = extensions.Select(x => {
            var cap = 0;
            var sm = 0;
            foreach (var c in x) {
                if (char.IsUpper(c)) {
                    cap++;
                } else {
                    sm++;
                }
            }
            return new {
                name = x,
                strength = cap - sm
            };
        }).OrderByDescending(x => x.strength).First();
        return class_name + "." + strength.name;

    }
    public static void Main(string[] args) {
    Debug.Assert(StrongestExtension(("Watashi"), (new List<string>(new string[]{(string)"tEN", (string)"niNE", (string)"eIGHt8OKe"}))).Equals(("Watashi.eIGHt8OKe")));
    Debug.Assert(StrongestExtension(("Boku123"), (new List<string>(new string[]{(string)"nani", (string)"NazeDa", (string)"YEs.WeCaNe", (string)"32145tggg"}))).Equals(("Boku123.YEs.WeCaNe")));
    Debug.Assert(StrongestExtension(("__YESIMHERE"), (new List<string>(new string[]{(string)"t", (string)"eMptY", (string)"nothing", (string)"zeR00", (string)"NuLl__", (string)"123NoooneB321"}))).Equals(("__YESIMHERE.NuLl__")));
    Debug.Assert(StrongestExtension(("K"), (new List<string>(new string[]{(string)"Ta", (string)"TAR", (string)"t234An", (string)"cosSo"}))).Equals(("K.TAR")));
    Debug.Assert(StrongestExtension(("__HAHA"), (new List<string>(new string[]{(string)"Tab", (string)"123", (string)"781345", (string)"-_-"}))).Equals(("__HAHA.123")));
    Debug.Assert(StrongestExtension(("YameRore"), (new List<string>(new string[]{(string)"HhAas", (string)"okIWILL123", (string)"WorkOut", (string)"Fails", (string)"-_-"}))).Equals(("YameRore.okIWILL123")));
    Debug.Assert(StrongestExtension(("finNNalLLly"), (new List<string>(new string[]{(string)"Die", (string)"NowW", (string)"Wow", (string)"WoW"}))).Equals(("finNNalLLly.WoW")));
    Debug.Assert(StrongestExtension(("_"), (new List<string>(new string[]{(string)"Bb", (string)"91245"}))).Equals(("_.Bb")));
    Debug.Assert(StrongestExtension(("Sp"), (new List<string>(new string[]{(string)"671235", (string)"Bb"}))).Equals(("Sp.671235")));
    }

}
