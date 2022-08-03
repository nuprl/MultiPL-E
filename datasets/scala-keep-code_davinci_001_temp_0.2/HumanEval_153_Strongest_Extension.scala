import scala.math._
import scala.collection.mutable._
object Problem {
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
    def StrongestExtension(class_name : String, extensions : List[String]) : String = {
        // your code here
        var max = 0.0
        var max_name = ""
        for (extension <- extensions) {
            var cap = 0
            var sm = 0
            for (c <- extension) {
                if (c.isUpper) {
                    cap += 1
                } else {
                    sm += 1
                }
            }
            var strength = (cap - sm) / (cap + sm)
            if (strength > max) {
                max = strength
                max_name = extension
            }
        }
        return class_name + "." + max_name

    }
    def main(args: Array[String]) = {
    assert(StrongestExtension(("Watashi"), (List[String]("tEN", "niNE", "eIGHt8OKe"))).equals(("Watashi.eIGHt8OKe")));
    assert(StrongestExtension(("Boku123"), (List[String]("nani", "NazeDa", "YEs.WeCaNe", "32145tggg"))).equals(("Boku123.YEs.WeCaNe")));
    assert(StrongestExtension(("__YESIMHERE"), (List[String]("t", "eMptY", "nothing", "zeR00", "NuLl__", "123NoooneB321"))).equals(("__YESIMHERE.NuLl__")));
    assert(StrongestExtension(("K"), (List[String]("Ta", "TAR", "t234An", "cosSo"))).equals(("K.TAR")));
    assert(StrongestExtension(("__HAHA"), (List[String]("Tab", "123", "781345", "-_-"))).equals(("__HAHA.123")));
    assert(StrongestExtension(("YameRore"), (List[String]("HhAas", "okIWILL123", "WorkOut", "Fails", "-_-"))).equals(("YameRore.okIWILL123")));
    assert(StrongestExtension(("finNNalLLly"), (List[String]("Die", "NowW", "Wow", "WoW"))).equals(("finNNalLLly.WoW")));
    assert(StrongestExtension(("_"), (List[String]("Bb", "91245"))).equals(("_.Bb")));
    assert(StrongestExtension(("Sp"), (List[String]("671235", "Bb"))).equals(("Sp.671235")));
    }

}
